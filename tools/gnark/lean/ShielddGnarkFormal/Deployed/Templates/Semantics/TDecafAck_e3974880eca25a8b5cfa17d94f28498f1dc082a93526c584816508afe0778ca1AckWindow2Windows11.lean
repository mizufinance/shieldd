import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window66 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc66 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[116]! (scalarBits rho)[115]!
        (base rho) (twice rho) (triple rho) (acc66 rho)
        (acc67 rho) ∧
      EdwardsBridge.onCurve (acc67 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1721 at r1721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1722 at r1722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1723 at r1723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1724 at r1724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1725 at r1725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1726 at r1726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1727 at r1727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1728 at r1728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1729 at r1729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1730 at r1730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1731 at r1731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1732 at r1732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1733 at r1733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1734 at r1734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1735 at r1735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1736 at r1736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1737 at r1737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1738 at r1738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1739 at r1739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1740 at r1740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1741 at r1741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1742 at r1742
  have hshift1 : EdwardsBridge.doubleSpec (acc66 rho) (shiftOnce66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1722) (rho 1723) (rho 1724) (rho 1725) (rho 1726) (rho 1727) (rho 1728)
      (by simpa [acc66] using hacc)
      (by linear_combination r1721)
      (by linear_combination r1722)
      (by linear_combination r1723)
      (by linear_combination r1724)
      (by linear_combination r1725)
    simpa [acc66, shiftOnce66] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc66 rho) (shiftOnce66 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc66 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce66 rho) (shifted66 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1727) (rho 1728) (rho 1729) (rho 1730) (rho 1731) (rho 1732) (rho 1733)
      (by simpa [shiftOnce66] using hshift1On)
      (by linear_combination r1726)
      (by linear_combination r1727)
      (by linear_combination r1728)
      (by linear_combination r1729)
      (by linear_combination r1730)
    simpa [shiftOnce66, shifted66] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted66 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce66 rho) (shifted66 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce66 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 117) (rho 116)
      (base rho) (twice rho) (triple rho) (digit66 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 117) (rho 116)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1735 + rho 1736, (1 : F) + rho 1738 + rho 1739⟩ := by
      constructor
      · refine ⟨(rho 1734 + (rho 258) - (0)), rho 1735, ?_, ?_, ?_⟩
        · linear_combination r1731 - (rho 116) * order_cast_zero
        · linear_combination r1732
        · linear_combination r1733
      · refine ⟨(rho 1737 + (rho 259) - ((1 : F))), rho 1738, ?_, ?_, ?_⟩
        · linear_combination r1734 - (rho 116) * order_cast_zero
        · linear_combination r1735
        · linear_combination r1736
    simpa [base, twice, triple, digit66] using hraw
  have hhigh : rho 117 =
      Bool.toZMod bits[116]! := by
    simpa only using rho_bit_of_map rho bits hbits 116 (by decide +kernel)
  have hlow : rho 116 =
      Bool.toZMod bits[115]! := by
    simpa only using rho_bit_of_map rho bits hbits 115 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[116]! bits[115]! (base rho) (twice rho) (triple rho)
    (digit66 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit66 rho) := by
    rw [hdigit]
    cases bits[116]! <;> cases bits[115]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted66 rho) (digit66 rho) (acc67 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1732) (rho 1733) (rho 1735 + rho 1736) ((1 : F) + rho 1738 + rho 1739)
      (rho 1740) (rho 1741) (rho 1742) (rho 1743) (rho 1744) (rho 1745)
      (by simpa [shifted66] using hshift2On)
      (by simpa [digit66] using hdigitOn)
      (by linear_combination r1737)
      (by linear_combination r1738)
      (by linear_combination r1739)
      (by linear_combination r1740)
      (by linear_combination r1741)
      (by linear_combination r1742)
    simpa [shifted66, digit66, acc67] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc67 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted66 rho) (digit66 rho) (acc67 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted66 rho) (digit66 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 117) (rho 116)
      (base rho) (twice rho) (triple rho) (acc66 rho)
      (acc67 rho) :=
    ⟨shiftOnce66 rho, shifted66 rho, digit66 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window67 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc67 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[114]! (scalarBits rho)[113]!
        (base rho) (twice rho) (triple rho) (acc67 rho)
        (acc68 rho) ∧
      EdwardsBridge.onCurve (acc68 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1743, r1744, r1745, r1746, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart22 at p22
  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1743 at r1743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1744 at r1744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1745 at r1745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1746 at r1746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1747 at r1747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1748 at r1748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1749 at r1749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1750 at r1750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1751 at r1751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1752 at r1752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1753 at r1753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1754 at r1754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1755 at r1755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1756 at r1756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1757 at r1757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1758 at r1758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1759 at r1759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1760 at r1760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1761 at r1761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1762 at r1762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1763 at r1763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1764 at r1764
  have hshift1 : EdwardsBridge.doubleSpec (acc67 rho) (shiftOnce67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1744) (rho 1745) (rho 1746) (rho 1747) (rho 1748) (rho 1749) (rho 1750)
      (by simpa [acc67] using hacc)
      (by linear_combination r1743)
      (by linear_combination r1744)
      (by linear_combination r1745)
      (by linear_combination r1746)
      (by linear_combination r1747)
    simpa [acc67, shiftOnce67] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc67 rho) (shiftOnce67 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc67 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce67 rho) (shifted67 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1749) (rho 1750) (rho 1751) (rho 1752) (rho 1753) (rho 1754) (rho 1755)
      (by simpa [shiftOnce67] using hshift1On)
      (by linear_combination r1748)
      (by linear_combination r1749)
      (by linear_combination r1750)
      (by linear_combination r1751)
      (by linear_combination r1752)
    simpa [shiftOnce67, shifted67] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted67 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce67 rho) (shifted67 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce67 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 115) (rho 114)
      (base rho) (twice rho) (triple rho) (digit67 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 115) (rho 114)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1757 + rho 1758, (1 : F) + rho 1760 + rho 1761⟩ := by
      constructor
      · refine ⟨(rho 1756 + (rho 258) - (0)), rho 1757, ?_, ?_, ?_⟩
        · linear_combination r1753 - (rho 114) * order_cast_zero
        · linear_combination r1754
        · linear_combination r1755
      · refine ⟨(rho 1759 + (rho 259) - ((1 : F))), rho 1760, ?_, ?_, ?_⟩
        · linear_combination r1756 - (rho 114) * order_cast_zero
        · linear_combination r1757
        · linear_combination r1758
    simpa [base, twice, triple, digit67] using hraw
  have hhigh : rho 115 =
      Bool.toZMod bits[114]! := by
    simpa only using rho_bit_of_map rho bits hbits 114 (by decide +kernel)
  have hlow : rho 114 =
      Bool.toZMod bits[113]! := by
    simpa only using rho_bit_of_map rho bits hbits 113 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[114]! bits[113]! (base rho) (twice rho) (triple rho)
    (digit67 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit67 rho) := by
    rw [hdigit]
    cases bits[114]! <;> cases bits[113]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted67 rho) (digit67 rho) (acc68 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1754) (rho 1755) (rho 1757 + rho 1758) ((1 : F) + rho 1760 + rho 1761)
      (rho 1762) (rho 1763) (rho 1764) (rho 1765) (rho 1766) (rho 1767)
      (by simpa [shifted67] using hshift2On)
      (by simpa [digit67] using hdigitOn)
      (by linear_combination r1759)
      (by linear_combination r1760)
      (by linear_combination r1761)
      (by linear_combination r1762)
      (by linear_combination r1763)
      (by linear_combination r1764)
    simpa [shifted67, digit67, acc68] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc68 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted67 rho) (digit67 rho) (acc68 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted67 rho) (digit67 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 115) (rho 114)
      (base rho) (twice rho) (triple rho) (acc67 rho)
      (acc68 rho) :=
    ⟨shiftOnce67 rho, shifted67 rho, digit67 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window68 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc68 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[112]! (scalarBits rho)[111]!
        (base rho) (twice rho) (triple rho) (acc68 rho)
        (acc69 rho) ∧
      EdwardsBridge.onCurve (acc69 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, r1765, r1766, r1767, r1768, r1769, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785, r1786, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1765 at r1765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1766 at r1766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1767 at r1767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1768 at r1768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1769 at r1769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1770 at r1770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1771 at r1771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1772 at r1772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1773 at r1773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1774 at r1774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1775 at r1775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1776 at r1776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1777 at r1777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1778 at r1778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1779 at r1779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1780 at r1780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1781 at r1781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1782 at r1782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1783 at r1783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1784 at r1784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1785 at r1785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1786 at r1786
  have hshift1 : EdwardsBridge.doubleSpec (acc68 rho) (shiftOnce68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1766) (rho 1767) (rho 1768) (rho 1769) (rho 1770) (rho 1771) (rho 1772)
      (by simpa [acc68] using hacc)
      (by linear_combination r1765)
      (by linear_combination r1766)
      (by linear_combination r1767)
      (by linear_combination r1768)
      (by linear_combination r1769)
    simpa [acc68, shiftOnce68] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc68 rho) (shiftOnce68 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc68 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce68 rho) (shifted68 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1771) (rho 1772) (rho 1773) (rho 1774) (rho 1775) (rho 1776) (rho 1777)
      (by simpa [shiftOnce68] using hshift1On)
      (by linear_combination r1770)
      (by linear_combination r1771)
      (by linear_combination r1772)
      (by linear_combination r1773)
      (by linear_combination r1774)
    simpa [shiftOnce68, shifted68] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted68 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce68 rho) (shifted68 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce68 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 113) (rho 112)
      (base rho) (twice rho) (triple rho) (digit68 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 113) (rho 112)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1779 + rho 1780, (1 : F) + rho 1782 + rho 1783⟩ := by
      constructor
      · refine ⟨(rho 1778 + (rho 258) - (0)), rho 1779, ?_, ?_, ?_⟩
        · linear_combination r1775 - (rho 112) * order_cast_zero
        · linear_combination r1776
        · linear_combination r1777
      · refine ⟨(rho 1781 + (rho 259) - ((1 : F))), rho 1782, ?_, ?_, ?_⟩
        · linear_combination r1778 - (rho 112) * order_cast_zero
        · linear_combination r1779
        · linear_combination r1780
    simpa [base, twice, triple, digit68] using hraw
  have hhigh : rho 113 =
      Bool.toZMod bits[112]! := by
    simpa only using rho_bit_of_map rho bits hbits 112 (by decide +kernel)
  have hlow : rho 112 =
      Bool.toZMod bits[111]! := by
    simpa only using rho_bit_of_map rho bits hbits 111 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[112]! bits[111]! (base rho) (twice rho) (triple rho)
    (digit68 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit68 rho) := by
    rw [hdigit]
    cases bits[112]! <;> cases bits[111]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted68 rho) (digit68 rho) (acc69 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1776) (rho 1777) (rho 1779 + rho 1780) ((1 : F) + rho 1782 + rho 1783)
      (rho 1784) (rho 1785) (rho 1786) (rho 1787) (rho 1788) (rho 1789)
      (by simpa [shifted68] using hshift2On)
      (by simpa [digit68] using hdigitOn)
      (by linear_combination r1781)
      (by linear_combination r1782)
      (by linear_combination r1783)
      (by linear_combination r1784)
      (by linear_combination r1785)
      (by linear_combination r1786)
    simpa [shifted68, digit68, acc69] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc69 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted68 rho) (digit68 rho) (acc69 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted68 rho) (digit68 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 113) (rho 112)
      (base rho) (twice rho) (triple rho) (acc68 rho)
      (acc69 rho) :=
    ⟨shiftOnce68 rho, shifted68 rho, digit68 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window69 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc69 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[110]! (scalarBits rho)[109]!
        (base rho) (twice rho) (triple rho) (acc69 rho)
        (acc70 rho) ∧
      EdwardsBridge.onCurve (acc70 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1787, r1788, r1789, r1790, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1787 at r1787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1788 at r1788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1789 at r1789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1790 at r1790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1791 at r1791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1792 at r1792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1793 at r1793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1794 at r1794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1795 at r1795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1796 at r1796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1797 at r1797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1798 at r1798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1799 at r1799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1800 at r1800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1801 at r1801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1802 at r1802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1803 at r1803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1804 at r1804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1805 at r1805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1806 at r1806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1807 at r1807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1808 at r1808
  have hshift1 : EdwardsBridge.doubleSpec (acc69 rho) (shiftOnce69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1788) (rho 1789) (rho 1790) (rho 1791) (rho 1792) (rho 1793) (rho 1794)
      (by simpa [acc69] using hacc)
      (by linear_combination r1787)
      (by linear_combination r1788)
      (by linear_combination r1789)
      (by linear_combination r1790)
      (by linear_combination r1791)
    simpa [acc69, shiftOnce69] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc69 rho) (shiftOnce69 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc69 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce69 rho) (shifted69 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1793) (rho 1794) (rho 1795) (rho 1796) (rho 1797) (rho 1798) (rho 1799)
      (by simpa [shiftOnce69] using hshift1On)
      (by linear_combination r1792)
      (by linear_combination r1793)
      (by linear_combination r1794)
      (by linear_combination r1795)
      (by linear_combination r1796)
    simpa [shiftOnce69, shifted69] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted69 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce69 rho) (shifted69 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce69 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 111) (rho 110)
      (base rho) (twice rho) (triple rho) (digit69 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 111) (rho 110)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1801 + rho 1802, (1 : F) + rho 1804 + rho 1805⟩ := by
      constructor
      · refine ⟨(rho 1800 + (rho 258) - (0)), rho 1801, ?_, ?_, ?_⟩
        · linear_combination r1797 - (rho 110) * order_cast_zero
        · linear_combination r1798
        · linear_combination r1799
      · refine ⟨(rho 1803 + (rho 259) - ((1 : F))), rho 1804, ?_, ?_, ?_⟩
        · linear_combination r1800 - (rho 110) * order_cast_zero
        · linear_combination r1801
        · linear_combination r1802
    simpa [base, twice, triple, digit69] using hraw
  have hhigh : rho 111 =
      Bool.toZMod bits[110]! := by
    simpa only using rho_bit_of_map rho bits hbits 110 (by decide +kernel)
  have hlow : rho 110 =
      Bool.toZMod bits[109]! := by
    simpa only using rho_bit_of_map rho bits hbits 109 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[110]! bits[109]! (base rho) (twice rho) (triple rho)
    (digit69 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit69 rho) := by
    rw [hdigit]
    cases bits[110]! <;> cases bits[109]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted69 rho) (digit69 rho) (acc70 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1798) (rho 1799) (rho 1801 + rho 1802) ((1 : F) + rho 1804 + rho 1805)
      (rho 1806) (rho 1807) (rho 1808) (rho 1809) (rho 1810) (rho 1811)
      (by simpa [shifted69] using hshift2On)
      (by simpa [digit69] using hdigitOn)
      (by linear_combination r1803)
      (by linear_combination r1804)
      (by linear_combination r1805)
      (by linear_combination r1806)
      (by linear_combination r1807)
      (by linear_combination r1808)
    simpa [shifted69, digit69, acc70] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc70 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted69 rho) (digit69 rho) (acc70 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted69 rho) (digit69 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 111) (rho 110)
      (base rho) (twice rho) (triple rho) (acc69 rho)
      (acc70 rho) :=
    ⟨shiftOnce69 rho, shifted69 rho, digit69 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window70 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc70 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[108]! (scalarBits rho)[107]!
        (base rho) (twice rho) (triple rho) (acc70 rho)
        (acc71 rho) ∧
      EdwardsBridge.onCurve (acc71 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1809, r1810, r1811, r1812, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1809 at r1809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1810 at r1810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1811 at r1811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1812 at r1812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1813 at r1813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1814 at r1814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1815 at r1815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1816 at r1816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1817 at r1817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1818 at r1818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1819 at r1819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1820 at r1820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1821 at r1821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1822 at r1822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1823 at r1823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1824 at r1824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1825 at r1825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1826 at r1826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1827 at r1827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1828 at r1828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1829 at r1829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1830 at r1830
  have hshift1 : EdwardsBridge.doubleSpec (acc70 rho) (shiftOnce70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1810) (rho 1811) (rho 1812) (rho 1813) (rho 1814) (rho 1815) (rho 1816)
      (by simpa [acc70] using hacc)
      (by linear_combination r1809)
      (by linear_combination r1810)
      (by linear_combination r1811)
      (by linear_combination r1812)
      (by linear_combination r1813)
    simpa [acc70, shiftOnce70] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc70 rho) (shiftOnce70 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc70 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce70 rho) (shifted70 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1815) (rho 1816) (rho 1817) (rho 1818) (rho 1819) (rho 1820) (rho 1821)
      (by simpa [shiftOnce70] using hshift1On)
      (by linear_combination r1814)
      (by linear_combination r1815)
      (by linear_combination r1816)
      (by linear_combination r1817)
      (by linear_combination r1818)
    simpa [shiftOnce70, shifted70] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted70 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce70 rho) (shifted70 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce70 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 109) (rho 108)
      (base rho) (twice rho) (triple rho) (digit70 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 109) (rho 108)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1823 + rho 1824, (1 : F) + rho 1826 + rho 1827⟩ := by
      constructor
      · refine ⟨(rho 1822 + (rho 258) - (0)), rho 1823, ?_, ?_, ?_⟩
        · linear_combination r1819 - (rho 108) * order_cast_zero
        · linear_combination r1820
        · linear_combination r1821
      · refine ⟨(rho 1825 + (rho 259) - ((1 : F))), rho 1826, ?_, ?_, ?_⟩
        · linear_combination r1822 - (rho 108) * order_cast_zero
        · linear_combination r1823
        · linear_combination r1824
    simpa [base, twice, triple, digit70] using hraw
  have hhigh : rho 109 =
      Bool.toZMod bits[108]! := by
    simpa only using rho_bit_of_map rho bits hbits 108 (by decide +kernel)
  have hlow : rho 108 =
      Bool.toZMod bits[107]! := by
    simpa only using rho_bit_of_map rho bits hbits 107 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[108]! bits[107]! (base rho) (twice rho) (triple rho)
    (digit70 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit70 rho) := by
    rw [hdigit]
    cases bits[108]! <;> cases bits[107]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted70 rho) (digit70 rho) (acc71 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1820) (rho 1821) (rho 1823 + rho 1824) ((1 : F) + rho 1826 + rho 1827)
      (rho 1828) (rho 1829) (rho 1830) (rho 1831) (rho 1832) (rho 1833)
      (by simpa [shifted70] using hshift2On)
      (by simpa [digit70] using hdigitOn)
      (by linear_combination r1825)
      (by linear_combination r1826)
      (by linear_combination r1827)
      (by linear_combination r1828)
      (by linear_combination r1829)
      (by linear_combination r1830)
    simpa [shifted70, digit70, acc71] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc71 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted70 rho) (digit70 rho) (acc71 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted70 rho) (digit70 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 109) (rho 108)
      (base rho) (twice rho) (triple rho) (acc70 rho)
      (acc71 rho) :=
    ⟨shiftOnce70 rho, shifted70 rho, digit70 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window71 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc71 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[106]! (scalarBits rho)[105]!
        (base rho) (twice rho) (triple rho) (acc71 rho)
        (acc72 rho) ∧
      EdwardsBridge.onCurve (acc72 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1831, r1832, r1833, r1834, r1835, r1836, r1837, r1838, r1839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850, r1851, r1852, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1831 at r1831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1832 at r1832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1833 at r1833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1834 at r1834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1835 at r1835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1836 at r1836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1837 at r1837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1838 at r1838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1839 at r1839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1840 at r1840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1841 at r1841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1842 at r1842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1843 at r1843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1844 at r1844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1845 at r1845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1846 at r1846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1847 at r1847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1848 at r1848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1849 at r1849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1850 at r1850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1851 at r1851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1852 at r1852
  have hshift1 : EdwardsBridge.doubleSpec (acc71 rho) (shiftOnce71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1832) (rho 1833) (rho 1834) (rho 1835) (rho 1836) (rho 1837) (rho 1838)
      (by simpa [acc71] using hacc)
      (by linear_combination r1831)
      (by linear_combination r1832)
      (by linear_combination r1833)
      (by linear_combination r1834)
      (by linear_combination r1835)
    simpa [acc71, shiftOnce71] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc71 rho) (shiftOnce71 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc71 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce71 rho) (shifted71 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1837) (rho 1838) (rho 1839) (rho 1840) (rho 1841) (rho 1842) (rho 1843)
      (by simpa [shiftOnce71] using hshift1On)
      (by linear_combination r1836)
      (by linear_combination r1837)
      (by linear_combination r1838)
      (by linear_combination r1839)
      (by linear_combination r1840)
    simpa [shiftOnce71, shifted71] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted71 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce71 rho) (shifted71 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce71 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 107) (rho 106)
      (base rho) (twice rho) (triple rho) (digit71 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 107) (rho 106)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1845 + rho 1846, (1 : F) + rho 1848 + rho 1849⟩ := by
      constructor
      · refine ⟨(rho 1844 + (rho 258) - (0)), rho 1845, ?_, ?_, ?_⟩
        · linear_combination r1841 - (rho 106) * order_cast_zero
        · linear_combination r1842
        · linear_combination r1843
      · refine ⟨(rho 1847 + (rho 259) - ((1 : F))), rho 1848, ?_, ?_, ?_⟩
        · linear_combination r1844 - (rho 106) * order_cast_zero
        · linear_combination r1845
        · linear_combination r1846
    simpa [base, twice, triple, digit71] using hraw
  have hhigh : rho 107 =
      Bool.toZMod bits[106]! := by
    simpa only using rho_bit_of_map rho bits hbits 106 (by decide +kernel)
  have hlow : rho 106 =
      Bool.toZMod bits[105]! := by
    simpa only using rho_bit_of_map rho bits hbits 105 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[106]! bits[105]! (base rho) (twice rho) (triple rho)
    (digit71 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit71 rho) := by
    rw [hdigit]
    cases bits[106]! <;> cases bits[105]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted71 rho) (digit71 rho) (acc72 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1842) (rho 1843) (rho 1845 + rho 1846) ((1 : F) + rho 1848 + rho 1849)
      (rho 1850) (rho 1851) (rho 1852) (rho 1853) (rho 1854) (rho 1855)
      (by simpa [shifted71] using hshift2On)
      (by simpa [digit71] using hdigitOn)
      (by linear_combination r1847)
      (by linear_combination r1848)
      (by linear_combination r1849)
      (by linear_combination r1850)
      (by linear_combination r1851)
      (by linear_combination r1852)
    simpa [shifted71, digit71, acc72] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc72 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted71 rho) (digit71 rho) (acc72 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted71 rho) (digit71 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 107) (rho 106)
      (base rho) (twice rho) (triple rho) (acc71 rho)
      (acc72 rho) :=
    ⟨shiftOnce71 rho, shifted71 rho, digit71 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
