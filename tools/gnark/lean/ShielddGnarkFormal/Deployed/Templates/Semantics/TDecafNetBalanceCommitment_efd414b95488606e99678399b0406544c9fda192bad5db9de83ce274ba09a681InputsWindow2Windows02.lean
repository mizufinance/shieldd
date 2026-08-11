import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window12 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc12 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[102]! (scalarBits rho)[101]!
        (base rho) (twice rho) (triple rho) (acc12 rho)
        (acc13 rho) ∧
      EdwardsBridge.onCurve (acc13 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1703, r1704, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, r1721, r1722, r1723, r1724, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1703 at r1703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1704 at r1704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1705 at r1705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1706 at r1706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1707 at r1707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1708 at r1708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1709 at r1709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1710 at r1710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1711 at r1711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1712 at r1712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1713 at r1713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1714 at r1714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1715 at r1715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1716 at r1716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1717 at r1717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1718 at r1718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1719 at r1719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1720 at r1720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1721 at r1721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1722 at r1722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1723 at r1723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1724 at r1724
  have hshift1 : EdwardsBridge.doubleSpec (acc12 rho) (shiftOnce12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1528) (rho 1529) (rho 1530) (rho 1531) (rho 1532) (rho 1533) (rho 1534)
      (by simpa [acc12] using hacc)
      (by linear_combination r1703)
      (by linear_combination r1704)
      (by linear_combination r1705)
      (by linear_combination r1706)
      (by linear_combination r1707)
    simpa [acc12, shiftOnce12] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc12 rho) (shiftOnce12 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc12 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce12 rho) (shifted12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1533) (rho 1534) (rho 1535) (rho 1536) (rho 1537) (rho 1538) (rho 1539)
      (by simpa [shiftOnce12] using hshift1On)
      (by linear_combination r1708)
      (by linear_combination r1709)
      (by linear_combination r1710)
      (by linear_combination r1711)
      (by linear_combination r1712)
    simpa [shiftOnce12, shifted12] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce12 rho) (shifted12 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce12 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1222) (rho 1221)
      (base rho) (twice rho) (triple rho) (digit12 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1222) (rho 1221)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1541 + rho 1542, (1 : F) + rho 1544 + rho 1545⟩ := by
      constructor
      · refine ⟨(rho 1540 + (rho 1252) - (0)), rho 1541, ?_, ?_, ?_⟩
        · linear_combination r1713
        · linear_combination r1714
        · linear_combination r1715
      · refine ⟨(rho 1543 + (rho 1253) - ((1 : F))), rho 1544, ?_, ?_, ?_⟩
        · linear_combination r1716
        · linear_combination r1717
        · linear_combination r1718
    simpa [base, twice, triple, digit12] using hraw
  have hhigh : rho 1222 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 1221 =
      Bool.toZMod bits[101]! := by
    simpa only using rho_bit_of_map rho bits hbits 101 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[102]! bits[101]! (base rho) (twice rho) (triple rho)
    (digit12 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit12 rho) := by
    rw [hdigit]
    cases bits[102]! <;> cases bits[101]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted12 rho) (digit12 rho) (acc13 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1538) (rho 1539) (rho 1541 + rho 1542) ((1 : F) + rho 1544 + rho 1545)
      (rho 1546) (rho 1547) (rho 1548) (rho 1549) (rho 1550) (rho 1551)
      (by simpa [shifted12] using hshift2On)
      (by simpa [digit12] using hdigitOn)
      (by linear_combination r1719)
      (by linear_combination r1720)
      (by linear_combination r1721)
      (by linear_combination r1722)
      (by linear_combination r1723)
      (by linear_combination r1724)
    simpa [shifted12, digit12, acc13] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc13 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted12 rho) (digit12 rho) (acc13 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted12 rho) (digit12 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1222) (rho 1221)
      (base rho) (twice rho) (triple rho) (acc12 rho)
      (acc13 rho) :=
    ⟨shiftOnce12 rho, shifted12 rho, digit12 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window13 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc13 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[100]! (scalarBits rho)[99]!
        (base rho) (twice rho) (triple rho) (acc13 rho)
        (acc14 rho) ∧
      EdwardsBridge.onCurve (acc14 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, r1734, r1735, r1736, r1737, r1738, r1739, r1740, r1741, r1742, r1743, r1744, r1745, r1746, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1725 at r1725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1726 at r1726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1727 at r1727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1728 at r1728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1729 at r1729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1730 at r1730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1731 at r1731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1732 at r1732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1733 at r1733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1734 at r1734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1735 at r1735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1736 at r1736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1737 at r1737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1738 at r1738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1739 at r1739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1740 at r1740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1741 at r1741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1742 at r1742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1743 at r1743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1744 at r1744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1745 at r1745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1746 at r1746
  have hshift1 : EdwardsBridge.doubleSpec (acc13 rho) (shiftOnce13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1550) (rho 1551) (rho 1552) (rho 1553) (rho 1554) (rho 1555) (rho 1556)
      (by simpa [acc13] using hacc)
      (by linear_combination r1725)
      (by linear_combination r1726)
      (by linear_combination r1727)
      (by linear_combination r1728)
      (by linear_combination r1729)
    simpa [acc13, shiftOnce13] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc13 rho) (shiftOnce13 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc13 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce13 rho) (shifted13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1555) (rho 1556) (rho 1557) (rho 1558) (rho 1559) (rho 1560) (rho 1561)
      (by simpa [shiftOnce13] using hshift1On)
      (by linear_combination r1730)
      (by linear_combination r1731)
      (by linear_combination r1732)
      (by linear_combination r1733)
      (by linear_combination r1734)
    simpa [shiftOnce13, shifted13] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce13 rho) (shifted13 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce13 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1220) (rho 1219)
      (base rho) (twice rho) (triple rho) (digit13 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1220) (rho 1219)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1563 + rho 1564, (1 : F) + rho 1566 + rho 1567⟩ := by
      constructor
      · refine ⟨(rho 1562 + (rho 1252) - (0)), rho 1563, ?_, ?_, ?_⟩
        · linear_combination r1735
        · linear_combination r1736
        · linear_combination r1737
      · refine ⟨(rho 1565 + (rho 1253) - ((1 : F))), rho 1566, ?_, ?_, ?_⟩
        · linear_combination r1738
        · linear_combination r1739
        · linear_combination r1740
    simpa [base, twice, triple, digit13] using hraw
  have hhigh : rho 1220 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 1219 =
      Bool.toZMod bits[99]! := by
    simpa only using rho_bit_of_map rho bits hbits 99 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[100]! bits[99]! (base rho) (twice rho) (triple rho)
    (digit13 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit13 rho) := by
    rw [hdigit]
    cases bits[100]! <;> cases bits[99]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted13 rho) (digit13 rho) (acc14 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1560) (rho 1561) (rho 1563 + rho 1564) ((1 : F) + rho 1566 + rho 1567)
      (rho 1568) (rho 1569) (rho 1570) (rho 1571) (rho 1572) (rho 1573)
      (by simpa [shifted13] using hshift2On)
      (by simpa [digit13] using hdigitOn)
      (by linear_combination r1741)
      (by linear_combination r1742)
      (by linear_combination r1743)
      (by linear_combination r1744)
      (by linear_combination r1745)
      (by linear_combination r1746)
    simpa [shifted13, digit13, acc14] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc14 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted13 rho) (digit13 rho) (acc14 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted13 rho) (digit13 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1220) (rho 1219)
      (base rho) (twice rho) (triple rho) (acc13 rho)
      (acc14 rho) :=
    ⟨shiftOnce13 rho, shifted13 rho, digit13 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc14 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[98]! (scalarBits rho)[97]!
        (base rho) (twice rho) (triple rho) (acc14 rho)
        (acc15 rho) ∧
      EdwardsBridge.onCurve (acc15 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1747, r1748, r1749, r1750, r1751, r1752, r1753, r1754, r1755, r1756, r1757, r1758, r1759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart22 at p22
  rcases p22 with ⟨r1760, r1761, r1762, r1763, r1764, r1765, r1766, r1767, r1768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1747 at r1747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1748 at r1748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1749 at r1749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1750 at r1750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1751 at r1751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1752 at r1752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1753 at r1753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1754 at r1754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1755 at r1755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1756 at r1756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1757 at r1757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1758 at r1758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1759 at r1759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1760 at r1760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1761 at r1761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1762 at r1762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1763 at r1763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1764 at r1764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1765 at r1765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1766 at r1766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1767 at r1767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1768 at r1768
  have hshift1 : EdwardsBridge.doubleSpec (acc14 rho) (shiftOnce14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1572) (rho 1573) (rho 1574) (rho 1575) (rho 1576) (rho 1577) (rho 1578)
      (by simpa [acc14] using hacc)
      (by linear_combination r1747)
      (by linear_combination r1748)
      (by linear_combination r1749)
      (by linear_combination r1750)
      (by linear_combination r1751)
    simpa [acc14, shiftOnce14] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc14 rho) (shiftOnce14 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc14 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce14 rho) (shifted14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1577) (rho 1578) (rho 1579) (rho 1580) (rho 1581) (rho 1582) (rho 1583)
      (by simpa [shiftOnce14] using hshift1On)
      (by linear_combination r1752)
      (by linear_combination r1753)
      (by linear_combination r1754)
      (by linear_combination r1755)
      (by linear_combination r1756)
    simpa [shiftOnce14, shifted14] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce14 rho) (shifted14 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce14 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1218) (rho 1217)
      (base rho) (twice rho) (triple rho) (digit14 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1218) (rho 1217)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1585 + rho 1586, (1 : F) + rho 1588 + rho 1589⟩ := by
      constructor
      · refine ⟨(rho 1584 + (rho 1252) - (0)), rho 1585, ?_, ?_, ?_⟩
        · linear_combination r1757
        · linear_combination r1758
        · linear_combination r1759
      · refine ⟨(rho 1587 + (rho 1253) - ((1 : F))), rho 1588, ?_, ?_, ?_⟩
        · linear_combination r1760
        · linear_combination r1761
        · linear_combination r1762
    simpa [base, twice, triple, digit14] using hraw
  have hhigh : rho 1218 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 1217 =
      Bool.toZMod bits[97]! := by
    simpa only using rho_bit_of_map rho bits hbits 97 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[98]! bits[97]! (base rho) (twice rho) (triple rho)
    (digit14 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit14 rho) := by
    rw [hdigit]
    cases bits[98]! <;> cases bits[97]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted14 rho) (digit14 rho) (acc15 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1582) (rho 1583) (rho 1585 + rho 1586) ((1 : F) + rho 1588 + rho 1589)
      (rho 1590) (rho 1591) (rho 1592) (rho 1593) (rho 1594) (rho 1595)
      (by simpa [shifted14] using hshift2On)
      (by simpa [digit14] using hdigitOn)
      (by linear_combination r1763)
      (by linear_combination r1764)
      (by linear_combination r1765)
      (by linear_combination r1766)
      (by linear_combination r1767)
      (by linear_combination r1768)
    simpa [shifted14, digit14, acc15] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc15 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted14 rho) (digit14 rho) (acc15 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted14 rho) (digit14 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1218) (rho 1217)
      (base rho) (twice rho) (triple rho) (acc14 rho)
      (acc15 rho) :=
    ⟨shiftOnce14 rho, shifted14 rho, digit14 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window15 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc15 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[96]! (scalarBits rho)[95]!
        (base rho) (twice rho) (triple rho) (acc15 rho)
        (acc16 rho) ∧
      EdwardsBridge.onCurve (acc16 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, r1769, r1770, r1771, r1772, r1773, r1774, r1775, r1776, r1777, r1778, r1779, r1780, r1781, r1782, r1783, r1784, r1785, r1786, r1787, r1788, r1789, r1790, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1769 at r1769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1770 at r1770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1771 at r1771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1772 at r1772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1773 at r1773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1774 at r1774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1775 at r1775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1776 at r1776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1777 at r1777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1778 at r1778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1779 at r1779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1780 at r1780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1781 at r1781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1782 at r1782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1783 at r1783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1784 at r1784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1785 at r1785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1786 at r1786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1787 at r1787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1788 at r1788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1789 at r1789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1790 at r1790
  have hshift1 : EdwardsBridge.doubleSpec (acc15 rho) (shiftOnce15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1594) (rho 1595) (rho 1596) (rho 1597) (rho 1598) (rho 1599) (rho 1600)
      (by simpa [acc15] using hacc)
      (by linear_combination r1769)
      (by linear_combination r1770)
      (by linear_combination r1771)
      (by linear_combination r1772)
      (by linear_combination r1773)
    simpa [acc15, shiftOnce15] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc15 rho) (shiftOnce15 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc15 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce15 rho) (shifted15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1599) (rho 1600) (rho 1601) (rho 1602) (rho 1603) (rho 1604) (rho 1605)
      (by simpa [shiftOnce15] using hshift1On)
      (by linear_combination r1774)
      (by linear_combination r1775)
      (by linear_combination r1776)
      (by linear_combination r1777)
      (by linear_combination r1778)
    simpa [shiftOnce15, shifted15] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce15 rho) (shifted15 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce15 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1216) (rho 1215)
      (base rho) (twice rho) (triple rho) (digit15 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1216) (rho 1215)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1607 + rho 1608, (1 : F) + rho 1610 + rho 1611⟩ := by
      constructor
      · refine ⟨(rho 1606 + (rho 1252) - (0)), rho 1607, ?_, ?_, ?_⟩
        · linear_combination r1779
        · linear_combination r1780
        · linear_combination r1781
      · refine ⟨(rho 1609 + (rho 1253) - ((1 : F))), rho 1610, ?_, ?_, ?_⟩
        · linear_combination r1782
        · linear_combination r1783
        · linear_combination r1784
    simpa [base, twice, triple, digit15] using hraw
  have hhigh : rho 1216 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 1215 =
      Bool.toZMod bits[95]! := by
    simpa only using rho_bit_of_map rho bits hbits 95 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[96]! bits[95]! (base rho) (twice rho) (triple rho)
    (digit15 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit15 rho) := by
    rw [hdigit]
    cases bits[96]! <;> cases bits[95]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted15 rho) (digit15 rho) (acc16 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1604) (rho 1605) (rho 1607 + rho 1608) ((1 : F) + rho 1610 + rho 1611)
      (rho 1612) (rho 1613) (rho 1614) (rho 1615) (rho 1616) (rho 1617)
      (by simpa [shifted15] using hshift2On)
      (by simpa [digit15] using hdigitOn)
      (by linear_combination r1785)
      (by linear_combination r1786)
      (by linear_combination r1787)
      (by linear_combination r1788)
      (by linear_combination r1789)
      (by linear_combination r1790)
    simpa [shifted15, digit15, acc16] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc16 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted15 rho) (digit15 rho) (acc16 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted15 rho) (digit15 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1216) (rho 1215)
      (base rho) (twice rho) (triple rho) (acc15 rho)
      (acc16 rho) :=
    ⟨shiftOnce15 rho, shifted15 rho, digit15 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window16 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc16 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[94]! (scalarBits rho)[93]!
        (base rho) (twice rho) (triple rho) (acc16 rho)
        (acc17 rho) ∧
      EdwardsBridge.onCurve (acc17 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1791, r1792, r1793, r1794, r1795, r1796, r1797, r1798, r1799, r1800, r1801, r1802, r1803, r1804, r1805, r1806, r1807, r1808, r1809, r1810, r1811, r1812, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1791 at r1791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1792 at r1792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1793 at r1793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1794 at r1794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1795 at r1795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1796 at r1796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1797 at r1797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1798 at r1798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1799 at r1799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1800 at r1800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1801 at r1801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1802 at r1802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1803 at r1803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1804 at r1804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1805 at r1805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1806 at r1806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1807 at r1807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1808 at r1808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1809 at r1809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1810 at r1810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1811 at r1811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1812 at r1812
  have hshift1 : EdwardsBridge.doubleSpec (acc16 rho) (shiftOnce16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1616) (rho 1617) (rho 1618) (rho 1619) (rho 1620) (rho 1621) (rho 1622)
      (by simpa [acc16] using hacc)
      (by linear_combination r1791)
      (by linear_combination r1792)
      (by linear_combination r1793)
      (by linear_combination r1794)
      (by linear_combination r1795)
    simpa [acc16, shiftOnce16] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc16 rho) (shiftOnce16 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc16 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce16 rho) (shifted16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1621) (rho 1622) (rho 1623) (rho 1624) (rho 1625) (rho 1626) (rho 1627)
      (by simpa [shiftOnce16] using hshift1On)
      (by linear_combination r1796)
      (by linear_combination r1797)
      (by linear_combination r1798)
      (by linear_combination r1799)
      (by linear_combination r1800)
    simpa [shiftOnce16, shifted16] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce16 rho) (shifted16 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce16 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1214) (rho 1213)
      (base rho) (twice rho) (triple rho) (digit16 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1214) (rho 1213)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1629 + rho 1630, (1 : F) + rho 1632 + rho 1633⟩ := by
      constructor
      · refine ⟨(rho 1628 + (rho 1252) - (0)), rho 1629, ?_, ?_, ?_⟩
        · linear_combination r1801
        · linear_combination r1802
        · linear_combination r1803
      · refine ⟨(rho 1631 + (rho 1253) - ((1 : F))), rho 1632, ?_, ?_, ?_⟩
        · linear_combination r1804
        · linear_combination r1805
        · linear_combination r1806
    simpa [base, twice, triple, digit16] using hraw
  have hhigh : rho 1214 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 1213 =
      Bool.toZMod bits[93]! := by
    simpa only using rho_bit_of_map rho bits hbits 93 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[94]! bits[93]! (base rho) (twice rho) (triple rho)
    (digit16 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit16 rho) := by
    rw [hdigit]
    cases bits[94]! <;> cases bits[93]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted16 rho) (digit16 rho) (acc17 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1626) (rho 1627) (rho 1629 + rho 1630) ((1 : F) + rho 1632 + rho 1633)
      (rho 1634) (rho 1635) (rho 1636) (rho 1637) (rho 1638) (rho 1639)
      (by simpa [shifted16] using hshift2On)
      (by simpa [digit16] using hdigitOn)
      (by linear_combination r1807)
      (by linear_combination r1808)
      (by linear_combination r1809)
      (by linear_combination r1810)
      (by linear_combination r1811)
      (by linear_combination r1812)
    simpa [shifted16, digit16, acc17] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc17 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted16 rho) (digit16 rho) (acc17 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted16 rho) (digit16 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1214) (rho 1213)
      (base rho) (twice rho) (triple rho) (acc16 rho)
      (acc17 rho) :=
    ⟨shiftOnce16 rho, shifted16 rho, digit16 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window17 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc17 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[92]! (scalarBits rho)[91]!
        (base rho) (twice rho) (triple rho) (acc17 rho)
        (acc18 rho) ∧
      EdwardsBridge.onCurve (acc18 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1813, r1814, r1815, r1816, r1817, r1818, r1819, r1820, r1821, r1822, r1823, r1824, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1813 at r1813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1814 at r1814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1815 at r1815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1816 at r1816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1817 at r1817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1818 at r1818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1819 at r1819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1820 at r1820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1821 at r1821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1822 at r1822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1823 at r1823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1824 at r1824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1825 at r1825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1826 at r1826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1827 at r1827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1828 at r1828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1829 at r1829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1830 at r1830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1831 at r1831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1832 at r1832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1833 at r1833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1834 at r1834
  have hshift1 : EdwardsBridge.doubleSpec (acc17 rho) (shiftOnce17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1638) (rho 1639) (rho 1640) (rho 1641) (rho 1642) (rho 1643) (rho 1644)
      (by simpa [acc17] using hacc)
      (by linear_combination r1813)
      (by linear_combination r1814)
      (by linear_combination r1815)
      (by linear_combination r1816)
      (by linear_combination r1817)
    simpa [acc17, shiftOnce17] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc17 rho) (shiftOnce17 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc17 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce17 rho) (shifted17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1643) (rho 1644) (rho 1645) (rho 1646) (rho 1647) (rho 1648) (rho 1649)
      (by simpa [shiftOnce17] using hshift1On)
      (by linear_combination r1818)
      (by linear_combination r1819)
      (by linear_combination r1820)
      (by linear_combination r1821)
      (by linear_combination r1822)
    simpa [shiftOnce17, shifted17] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce17 rho) (shifted17 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce17 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1212) (rho 1211)
      (base rho) (twice rho) (triple rho) (digit17 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1212) (rho 1211)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1651 + rho 1652, (1 : F) + rho 1654 + rho 1655⟩ := by
      constructor
      · refine ⟨(rho 1650 + (rho 1252) - (0)), rho 1651, ?_, ?_, ?_⟩
        · linear_combination r1823
        · linear_combination r1824
        · linear_combination r1825
      · refine ⟨(rho 1653 + (rho 1253) - ((1 : F))), rho 1654, ?_, ?_, ?_⟩
        · linear_combination r1826
        · linear_combination r1827
        · linear_combination r1828
    simpa [base, twice, triple, digit17] using hraw
  have hhigh : rho 1212 =
      Bool.toZMod bits[92]! := by
    simpa only using rho_bit_of_map rho bits hbits 92 (by decide +kernel)
  have hlow : rho 1211 =
      Bool.toZMod bits[91]! := by
    simpa only using rho_bit_of_map rho bits hbits 91 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[92]! bits[91]! (base rho) (twice rho) (triple rho)
    (digit17 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit17 rho) := by
    rw [hdigit]
    cases bits[92]! <;> cases bits[91]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted17 rho) (digit17 rho) (acc18 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1648) (rho 1649) (rho 1651 + rho 1652) ((1 : F) + rho 1654 + rho 1655)
      (rho 1656) (rho 1657) (rho 1658) (rho 1659) (rho 1660) (rho 1661)
      (by simpa [shifted17] using hshift2On)
      (by simpa [digit17] using hdigitOn)
      (by linear_combination r1829)
      (by linear_combination r1830)
      (by linear_combination r1831)
      (by linear_combination r1832)
      (by linear_combination r1833)
      (by linear_combination r1834)
    simpa [shifted17, digit17, acc18] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc18 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted17 rho) (digit17 rho) (acc18 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted17 rho) (digit17 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1212) (rho 1211)
      (base rho) (twice rho) (triple rho) (acc17 rho)
      (acc18 rho) :=
    ⟨shiftOnce17 rho, shifted17 rho, digit17 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
