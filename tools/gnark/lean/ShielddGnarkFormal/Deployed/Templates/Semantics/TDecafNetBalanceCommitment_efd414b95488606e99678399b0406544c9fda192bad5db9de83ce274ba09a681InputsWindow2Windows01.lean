import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window6 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc6 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[114]! (scalarBits rho)[113]!
        (base rho) (twice rho) (triple rho) (acc6 rho)
        (acc7 rho) ∧
      EdwardsBridge.onCurve (acc7 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart19 at p19
  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1571, r1572, r1573, r1574, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1571 at r1571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1572 at r1572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1573 at r1573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1574 at r1574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1575 at r1575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1576 at r1576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1577 at r1577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1578 at r1578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1579 at r1579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1580 at r1580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1581 at r1581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1582 at r1582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1583 at r1583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1584 at r1584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1585 at r1585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1586 at r1586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1587 at r1587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1588 at r1588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1589 at r1589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1590 at r1590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1591 at r1591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1592 at r1592
  have hshift1 : EdwardsBridge.doubleSpec (acc6 rho) (shiftOnce6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1396) (rho 1397) (rho 1398) (rho 1399) (rho 1400) (rho 1401) (rho 1402)
      (by simpa [acc6] using hacc)
      (by linear_combination r1571)
      (by linear_combination r1572)
      (by linear_combination r1573)
      (by linear_combination r1574)
      (by linear_combination r1575)
    simpa [acc6, shiftOnce6] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc6 rho) (shiftOnce6 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc6 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce6 rho) (shifted6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1401) (rho 1402) (rho 1403) (rho 1404) (rho 1405) (rho 1406) (rho 1407)
      (by simpa [shiftOnce6] using hshift1On)
      (by linear_combination r1576)
      (by linear_combination r1577)
      (by linear_combination r1578)
      (by linear_combination r1579)
      (by linear_combination r1580)
    simpa [shiftOnce6, shifted6] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce6 rho) (shifted6 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce6 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1234) (rho 1233)
      (base rho) (twice rho) (triple rho) (digit6 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1234) (rho 1233)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1409 + rho 1410, (1 : F) + rho 1412 + rho 1413⟩ := by
      constructor
      · refine ⟨(rho 1408 + (rho 1252) - (0)), rho 1409, ?_, ?_, ?_⟩
        · linear_combination r1581
        · linear_combination r1582
        · linear_combination r1583
      · refine ⟨(rho 1411 + (rho 1253) - ((1 : F))), rho 1412, ?_, ?_, ?_⟩
        · linear_combination r1584
        · linear_combination r1585
        · linear_combination r1586
    simpa [base, twice, triple, digit6] using hraw
  have hhigh : rho 1234 =
      Bool.toZMod bits[114]! := by
    simpa only using rho_bit_of_map rho bits hbits 114 (by decide +kernel)
  have hlow : rho 1233 =
      Bool.toZMod bits[113]! := by
    simpa only using rho_bit_of_map rho bits hbits 113 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[114]! bits[113]! (base rho) (twice rho) (triple rho)
    (digit6 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit6 rho) := by
    rw [hdigit]
    cases bits[114]! <;> cases bits[113]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted6 rho) (digit6 rho) (acc7 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1406) (rho 1407) (rho 1409 + rho 1410) ((1 : F) + rho 1412 + rho 1413)
      (rho 1414) (rho 1415) (rho 1416) (rho 1417) (rho 1418) (rho 1419)
      (by simpa [shifted6] using hshift2On)
      (by simpa [digit6] using hdigitOn)
      (by linear_combination r1587)
      (by linear_combination r1588)
      (by linear_combination r1589)
      (by linear_combination r1590)
      (by linear_combination r1591)
      (by linear_combination r1592)
    simpa [shifted6, digit6, acc7] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc7 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted6 rho) (digit6 rho) (acc7 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted6 rho) (digit6 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1234) (rho 1233)
      (base rho) (twice rho) (triple rho) (acc6 rho)
      (acc7 rho) :=
    ⟨shiftOnce6 rho, shifted6 rho, digit6 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window7 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc7 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[112]! (scalarBits rho)[111]!
        (base rho) (twice rho) (triple rho) (acc7 rho)
        (acc8 rho) ∧
      EdwardsBridge.onCurve (acc8 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart19 at p19
  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart20 at p20
  rcases p20 with ⟨r1600, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1593 at r1593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1594 at r1594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1595 at r1595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1596 at r1596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1597 at r1597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1598 at r1598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1599 at r1599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1600 at r1600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1601 at r1601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1602 at r1602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1603 at r1603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1604 at r1604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1605 at r1605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1606 at r1606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1607 at r1607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1608 at r1608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1609 at r1609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1610 at r1610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1611 at r1611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1612 at r1612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1613 at r1613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1614 at r1614
  have hshift1 : EdwardsBridge.doubleSpec (acc7 rho) (shiftOnce7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1418) (rho 1419) (rho 1420) (rho 1421) (rho 1422) (rho 1423) (rho 1424)
      (by simpa [acc7] using hacc)
      (by linear_combination r1593)
      (by linear_combination r1594)
      (by linear_combination r1595)
      (by linear_combination r1596)
      (by linear_combination r1597)
    simpa [acc7, shiftOnce7] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc7 rho) (shiftOnce7 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc7 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce7 rho) (shifted7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1423) (rho 1424) (rho 1425) (rho 1426) (rho 1427) (rho 1428) (rho 1429)
      (by simpa [shiftOnce7] using hshift1On)
      (by linear_combination r1598)
      (by linear_combination r1599)
      (by linear_combination r1600)
      (by linear_combination r1601)
      (by linear_combination r1602)
    simpa [shiftOnce7, shifted7] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce7 rho) (shifted7 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce7 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1232) (rho 1231)
      (base rho) (twice rho) (triple rho) (digit7 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1232) (rho 1231)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1431 + rho 1432, (1 : F) + rho 1434 + rho 1435⟩ := by
      constructor
      · refine ⟨(rho 1430 + (rho 1252) - (0)), rho 1431, ?_, ?_, ?_⟩
        · linear_combination r1603
        · linear_combination r1604
        · linear_combination r1605
      · refine ⟨(rho 1433 + (rho 1253) - ((1 : F))), rho 1434, ?_, ?_, ?_⟩
        · linear_combination r1606
        · linear_combination r1607
        · linear_combination r1608
    simpa [base, twice, triple, digit7] using hraw
  have hhigh : rho 1232 =
      Bool.toZMod bits[112]! := by
    simpa only using rho_bit_of_map rho bits hbits 112 (by decide +kernel)
  have hlow : rho 1231 =
      Bool.toZMod bits[111]! := by
    simpa only using rho_bit_of_map rho bits hbits 111 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[112]! bits[111]! (base rho) (twice rho) (triple rho)
    (digit7 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit7 rho) := by
    rw [hdigit]
    cases bits[112]! <;> cases bits[111]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted7 rho) (digit7 rho) (acc8 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1428) (rho 1429) (rho 1431 + rho 1432) ((1 : F) + rho 1434 + rho 1435)
      (rho 1436) (rho 1437) (rho 1438) (rho 1439) (rho 1440) (rho 1441)
      (by simpa [shifted7] using hshift2On)
      (by simpa [digit7] using hdigitOn)
      (by linear_combination r1609)
      (by linear_combination r1610)
      (by linear_combination r1611)
      (by linear_combination r1612)
      (by linear_combination r1613)
      (by linear_combination r1614)
    simpa [shifted7, digit7, acc8] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc8 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted7 rho) (digit7 rho) (acc8 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted7 rho) (digit7 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1232) (rho 1231)
      (base rho) (twice rho) (triple rho) (acc7 rho)
      (acc8 rho) :=
    ⟨shiftOnce7 rho, shifted7 rho, digit7 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window8 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc8 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[110]! (scalarBits rho)[109]!
        (base rho) (twice rho) (triple rho) (acc8 rho)
        (acc9 rho) ∧
      EdwardsBridge.onCurve (acc9 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1615 at r1615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1616 at r1616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1617 at r1617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1618 at r1618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1619 at r1619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1620 at r1620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1621 at r1621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1622 at r1622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1623 at r1623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1624 at r1624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1625 at r1625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1626 at r1626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1627 at r1627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1628 at r1628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1629 at r1629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1630 at r1630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1631 at r1631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1632 at r1632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1633 at r1633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1634 at r1634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1635 at r1635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1636 at r1636
  have hshift1 : EdwardsBridge.doubleSpec (acc8 rho) (shiftOnce8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1440) (rho 1441) (rho 1442) (rho 1443) (rho 1444) (rho 1445) (rho 1446)
      (by simpa [acc8] using hacc)
      (by linear_combination r1615)
      (by linear_combination r1616)
      (by linear_combination r1617)
      (by linear_combination r1618)
      (by linear_combination r1619)
    simpa [acc8, shiftOnce8] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc8 rho) (shiftOnce8 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc8 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce8 rho) (shifted8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1445) (rho 1446) (rho 1447) (rho 1448) (rho 1449) (rho 1450) (rho 1451)
      (by simpa [shiftOnce8] using hshift1On)
      (by linear_combination r1620)
      (by linear_combination r1621)
      (by linear_combination r1622)
      (by linear_combination r1623)
      (by linear_combination r1624)
    simpa [shiftOnce8, shifted8] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce8 rho) (shifted8 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce8 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1230) (rho 1229)
      (base rho) (twice rho) (triple rho) (digit8 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1230) (rho 1229)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1453 + rho 1454, (1 : F) + rho 1456 + rho 1457⟩ := by
      constructor
      · refine ⟨(rho 1452 + (rho 1252) - (0)), rho 1453, ?_, ?_, ?_⟩
        · linear_combination r1625
        · linear_combination r1626
        · linear_combination r1627
      · refine ⟨(rho 1455 + (rho 1253) - ((1 : F))), rho 1456, ?_, ?_, ?_⟩
        · linear_combination r1628
        · linear_combination r1629
        · linear_combination r1630
    simpa [base, twice, triple, digit8] using hraw
  have hhigh : rho 1230 =
      Bool.toZMod bits[110]! := by
    simpa only using rho_bit_of_map rho bits hbits 110 (by decide +kernel)
  have hlow : rho 1229 =
      Bool.toZMod bits[109]! := by
    simpa only using rho_bit_of_map rho bits hbits 109 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[110]! bits[109]! (base rho) (twice rho) (triple rho)
    (digit8 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit8 rho) := by
    rw [hdigit]
    cases bits[110]! <;> cases bits[109]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted8 rho) (digit8 rho) (acc9 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1450) (rho 1451) (rho 1453 + rho 1454) ((1 : F) + rho 1456 + rho 1457)
      (rho 1458) (rho 1459) (rho 1460) (rho 1461) (rho 1462) (rho 1463)
      (by simpa [shifted8] using hshift2On)
      (by simpa [digit8] using hdigitOn)
      (by linear_combination r1631)
      (by linear_combination r1632)
      (by linear_combination r1633)
      (by linear_combination r1634)
      (by linear_combination r1635)
      (by linear_combination r1636)
    simpa [shifted8, digit8, acc9] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc9 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted8 rho) (digit8 rho) (acc9 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted8 rho) (digit8 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1230) (rho 1229)
      (base rho) (twice rho) (triple rho) (acc8 rho)
      (acc9 rho) :=
    ⟨shiftOnce8 rho, shifted8 rho, digit8 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window9 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc9 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[108]! (scalarBits rho)[107]!
        (base rho) (twice rho) (triple rho) (acc9 rho)
        (acc10 rho) ∧
      EdwardsBridge.onCurve (acc10 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1637, r1638, r1639, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655, r1656, r1657, r1658, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1637 at r1637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1638 at r1638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1639 at r1639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1640 at r1640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1641 at r1641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1642 at r1642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1643 at r1643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1644 at r1644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1645 at r1645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1646 at r1646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1647 at r1647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1648 at r1648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1649 at r1649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1650 at r1650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1651 at r1651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1652 at r1652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1653 at r1653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1654 at r1654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1655 at r1655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1656 at r1656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1657 at r1657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1658 at r1658
  have hshift1 : EdwardsBridge.doubleSpec (acc9 rho) (shiftOnce9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1462) (rho 1463) (rho 1464) (rho 1465) (rho 1466) (rho 1467) (rho 1468)
      (by simpa [acc9] using hacc)
      (by linear_combination r1637)
      (by linear_combination r1638)
      (by linear_combination r1639)
      (by linear_combination r1640)
      (by linear_combination r1641)
    simpa [acc9, shiftOnce9] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc9 rho) (shiftOnce9 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc9 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce9 rho) (shifted9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1467) (rho 1468) (rho 1469) (rho 1470) (rho 1471) (rho 1472) (rho 1473)
      (by simpa [shiftOnce9] using hshift1On)
      (by linear_combination r1642)
      (by linear_combination r1643)
      (by linear_combination r1644)
      (by linear_combination r1645)
      (by linear_combination r1646)
    simpa [shiftOnce9, shifted9] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce9 rho) (shifted9 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce9 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1228) (rho 1227)
      (base rho) (twice rho) (triple rho) (digit9 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1228) (rho 1227)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1475 + rho 1476, (1 : F) + rho 1478 + rho 1479⟩ := by
      constructor
      · refine ⟨(rho 1474 + (rho 1252) - (0)), rho 1475, ?_, ?_, ?_⟩
        · linear_combination r1647
        · linear_combination r1648
        · linear_combination r1649
      · refine ⟨(rho 1477 + (rho 1253) - ((1 : F))), rho 1478, ?_, ?_, ?_⟩
        · linear_combination r1650
        · linear_combination r1651
        · linear_combination r1652
    simpa [base, twice, triple, digit9] using hraw
  have hhigh : rho 1228 =
      Bool.toZMod bits[108]! := by
    simpa only using rho_bit_of_map rho bits hbits 108 (by decide +kernel)
  have hlow : rho 1227 =
      Bool.toZMod bits[107]! := by
    simpa only using rho_bit_of_map rho bits hbits 107 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[108]! bits[107]! (base rho) (twice rho) (triple rho)
    (digit9 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit9 rho) := by
    rw [hdigit]
    cases bits[108]! <;> cases bits[107]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted9 rho) (digit9 rho) (acc10 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1472) (rho 1473) (rho 1475 + rho 1476) ((1 : F) + rho 1478 + rho 1479)
      (rho 1480) (rho 1481) (rho 1482) (rho 1483) (rho 1484) (rho 1485)
      (by simpa [shifted9] using hshift2On)
      (by simpa [digit9] using hdigitOn)
      (by linear_combination r1653)
      (by linear_combination r1654)
      (by linear_combination r1655)
      (by linear_combination r1656)
      (by linear_combination r1657)
      (by linear_combination r1658)
    simpa [shifted9, digit9, acc10] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc10 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted9 rho) (digit9 rho) (acc10 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted9 rho) (digit9 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1228) (rho 1227)
      (base rho) (twice rho) (triple rho) (acc9 rho)
      (acc10 rho) :=
    ⟨shiftOnce9 rho, shifted9 rho, digit9 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window10 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc10 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[106]! (scalarBits rho)[105]!
        (base rho) (twice rho) (triple rho) (acc10 rho)
        (acc11 rho) ∧
      EdwardsBridge.onCurve (acc11 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart21 at p21
  rcases p21 with ⟨r1680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1659 at r1659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1660 at r1660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1661 at r1661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1662 at r1662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1663 at r1663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1664 at r1664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1665 at r1665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1666 at r1666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1667 at r1667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1668 at r1668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1669 at r1669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1670 at r1670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1671 at r1671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1672 at r1672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1673 at r1673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1674 at r1674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1675 at r1675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1676 at r1676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1677 at r1677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1678 at r1678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1679 at r1679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1680 at r1680
  have hshift1 : EdwardsBridge.doubleSpec (acc10 rho) (shiftOnce10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1484) (rho 1485) (rho 1486) (rho 1487) (rho 1488) (rho 1489) (rho 1490)
      (by simpa [acc10] using hacc)
      (by linear_combination r1659)
      (by linear_combination r1660)
      (by linear_combination r1661)
      (by linear_combination r1662)
      (by linear_combination r1663)
    simpa [acc10, shiftOnce10] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc10 rho) (shiftOnce10 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc10 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce10 rho) (shifted10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1489) (rho 1490) (rho 1491) (rho 1492) (rho 1493) (rho 1494) (rho 1495)
      (by simpa [shiftOnce10] using hshift1On)
      (by linear_combination r1664)
      (by linear_combination r1665)
      (by linear_combination r1666)
      (by linear_combination r1667)
      (by linear_combination r1668)
    simpa [shiftOnce10, shifted10] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce10 rho) (shifted10 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce10 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1226) (rho 1225)
      (base rho) (twice rho) (triple rho) (digit10 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1226) (rho 1225)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1497 + rho 1498, (1 : F) + rho 1500 + rho 1501⟩ := by
      constructor
      · refine ⟨(rho 1496 + (rho 1252) - (0)), rho 1497, ?_, ?_, ?_⟩
        · linear_combination r1669
        · linear_combination r1670
        · linear_combination r1671
      · refine ⟨(rho 1499 + (rho 1253) - ((1 : F))), rho 1500, ?_, ?_, ?_⟩
        · linear_combination r1672
        · linear_combination r1673
        · linear_combination r1674
    simpa [base, twice, triple, digit10] using hraw
  have hhigh : rho 1226 =
      Bool.toZMod bits[106]! := by
    simpa only using rho_bit_of_map rho bits hbits 106 (by decide +kernel)
  have hlow : rho 1225 =
      Bool.toZMod bits[105]! := by
    simpa only using rho_bit_of_map rho bits hbits 105 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[106]! bits[105]! (base rho) (twice rho) (triple rho)
    (digit10 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit10 rho) := by
    rw [hdigit]
    cases bits[106]! <;> cases bits[105]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted10 rho) (digit10 rho) (acc11 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1494) (rho 1495) (rho 1497 + rho 1498) ((1 : F) + rho 1500 + rho 1501)
      (rho 1502) (rho 1503) (rho 1504) (rho 1505) (rho 1506) (rho 1507)
      (by simpa [shifted10] using hshift2On)
      (by simpa [digit10] using hdigitOn)
      (by linear_combination r1675)
      (by linear_combination r1676)
      (by linear_combination r1677)
      (by linear_combination r1678)
      (by linear_combination r1679)
      (by linear_combination r1680)
    simpa [shifted10, digit10, acc11] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc11 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted10 rho) (digit10 rho) (acc11 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted10 rho) (digit10 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1226) (rho 1225)
      (base rho) (twice rho) (triple rho) (acc10 rho)
      (acc11 rho) :=
    ⟨shiftOnce10 rho, shifted10 rho, digit10 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc11 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[104]! (scalarBits rho)[103]!
        (base rho) (twice rho) (triple rho) (acc11 rho)
        (acc12 rho) ∧
      EdwardsBridge.onCurve (acc12 rho) := by
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
  rcases p21 with ⟨_, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1681 at r1681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1682 at r1682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1683 at r1683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1684 at r1684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1685 at r1685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1686 at r1686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1687 at r1687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1688 at r1688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1689 at r1689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1690 at r1690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1691 at r1691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1692 at r1692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1693 at r1693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1694 at r1694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1695 at r1695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1696 at r1696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1697 at r1697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1698 at r1698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1699 at r1699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1700 at r1700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1701 at r1701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1702 at r1702
  have hshift1 : EdwardsBridge.doubleSpec (acc11 rho) (shiftOnce11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1506) (rho 1507) (rho 1508) (rho 1509) (rho 1510) (rho 1511) (rho 1512)
      (by simpa [acc11] using hacc)
      (by linear_combination r1681)
      (by linear_combination r1682)
      (by linear_combination r1683)
      (by linear_combination r1684)
      (by linear_combination r1685)
    simpa [acc11, shiftOnce11] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc11 rho) (shiftOnce11 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc11 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce11 rho) (shifted11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1511) (rho 1512) (rho 1513) (rho 1514) (rho 1515) (rho 1516) (rho 1517)
      (by simpa [shiftOnce11] using hshift1On)
      (by linear_combination r1686)
      (by linear_combination r1687)
      (by linear_combination r1688)
      (by linear_combination r1689)
      (by linear_combination r1690)
    simpa [shiftOnce11, shifted11] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce11 rho) (shifted11 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce11 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1224) (rho 1223)
      (base rho) (twice rho) (triple rho) (digit11 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1224) (rho 1223)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1519 + rho 1520, (1 : F) + rho 1522 + rho 1523⟩ := by
      constructor
      · refine ⟨(rho 1518 + (rho 1252) - (0)), rho 1519, ?_, ?_, ?_⟩
        · linear_combination r1691
        · linear_combination r1692
        · linear_combination r1693
      · refine ⟨(rho 1521 + (rho 1253) - ((1 : F))), rho 1522, ?_, ?_, ?_⟩
        · linear_combination r1694
        · linear_combination r1695
        · linear_combination r1696
    simpa [base, twice, triple, digit11] using hraw
  have hhigh : rho 1224 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 1223 =
      Bool.toZMod bits[103]! := by
    simpa only using rho_bit_of_map rho bits hbits 103 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[104]! bits[103]! (base rho) (twice rho) (triple rho)
    (digit11 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit11 rho) := by
    rw [hdigit]
    cases bits[104]! <;> cases bits[103]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted11 rho) (digit11 rho) (acc12 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1516) (rho 1517) (rho 1519 + rho 1520) ((1 : F) + rho 1522 + rho 1523)
      (rho 1524) (rho 1525) (rho 1526) (rho 1527) (rho 1528) (rho 1529)
      (by simpa [shifted11] using hshift2On)
      (by simpa [digit11] using hdigitOn)
      (by linear_combination r1697)
      (by linear_combination r1698)
      (by linear_combination r1699)
      (by linear_combination r1700)
      (by linear_combination r1701)
      (by linear_combination r1702)
    simpa [shifted11, digit11, acc12] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc12 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted11 rho) (digit11 rho) (acc12 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted11 rho) (digit11 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1224) (rho 1223)
      (base rho) (twice rho) (triple rho) (acc11 rho)
      (acc12 rho) :=
    ⟨shiftOnce11 rho, shifted11 rho, digit11 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
