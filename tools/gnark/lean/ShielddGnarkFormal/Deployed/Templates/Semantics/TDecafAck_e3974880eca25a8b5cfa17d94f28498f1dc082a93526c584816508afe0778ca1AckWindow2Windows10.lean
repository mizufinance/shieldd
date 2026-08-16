import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window60 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc60 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[128]! (scalarBits rho)[127]!
        (base rho) (twice rho) (triple rho) (acc60 rho)
        (acc61 rho) ∧
      EdwardsBridge.onCurve (acc61 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart19 at p19
  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart20 at p20
  rcases p20 with ⟨r1600, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1589 at r1589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1590 at r1590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1591 at r1591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1592 at r1592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1593 at r1593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1594 at r1594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1595 at r1595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1596 at r1596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1597 at r1597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1598 at r1598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1599 at r1599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1600 at r1600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1601 at r1601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1602 at r1602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1603 at r1603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1604 at r1604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1605 at r1605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1606 at r1606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1607 at r1607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1608 at r1608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1609 at r1609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1610 at r1610
  have hshift1 : EdwardsBridge.doubleSpec (acc60 rho) (shiftOnce60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1590) (rho 1591) (rho 1592) (rho 1593) (rho 1594) (rho 1595) (rho 1596)
      (by simpa [acc60] using hacc)
      (by linear_combination r1589)
      (by linear_combination r1590)
      (by linear_combination r1591)
      (by linear_combination r1592)
      (by linear_combination r1593)
    simpa [acc60, shiftOnce60] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc60 rho) (shiftOnce60 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc60 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce60 rho) (shifted60 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1595) (rho 1596) (rho 1597) (rho 1598) (rho 1599) (rho 1600) (rho 1601)
      (by simpa [shiftOnce60] using hshift1On)
      (by linear_combination r1594)
      (by linear_combination r1595)
      (by linear_combination r1596)
      (by linear_combination r1597)
      (by linear_combination r1598)
    simpa [shiftOnce60, shifted60] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted60 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce60 rho) (shifted60 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce60 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 129) (rho 128)
      (base rho) (twice rho) (triple rho) (digit60 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 129) (rho 128)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1603 + rho 1604, (1 : F) + rho 1606 + rho 1607⟩ := by
      constructor
      · refine ⟨(rho 1602 + (rho 258) - (0)), rho 1603, ?_, ?_, ?_⟩
        · linear_combination r1599 - (rho 128) * order_cast_zero
        · linear_combination r1600
        · linear_combination r1601
      · refine ⟨(rho 1605 + (rho 259) - ((1 : F))), rho 1606, ?_, ?_, ?_⟩
        · linear_combination r1602 - (rho 128) * order_cast_zero
        · linear_combination r1603
        · linear_combination r1604
    simpa [base, twice, triple, digit60] using hraw
  have hhigh : rho 129 =
      Bool.toZMod bits[128]! := by
    simpa only using rho_bit_of_map rho bits hbits 128 (by decide +kernel)
  have hlow : rho 128 =
      Bool.toZMod bits[127]! := by
    simpa only using rho_bit_of_map rho bits hbits 127 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[128]! bits[127]! (base rho) (twice rho) (triple rho)
    (digit60 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit60 rho) := by
    rw [hdigit]
    cases bits[128]! <;> cases bits[127]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted60 rho) (digit60 rho) (acc61 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1600) (rho 1601) (rho 1603 + rho 1604) ((1 : F) + rho 1606 + rho 1607)
      (rho 1608) (rho 1609) (rho 1610) (rho 1611) (rho 1612) (rho 1613)
      (by simpa [shifted60] using hshift2On)
      (by simpa [digit60] using hdigitOn)
      (by linear_combination r1605)
      (by linear_combination r1606)
      (by linear_combination r1607)
      (by linear_combination r1608)
      (by linear_combination r1609)
      (by linear_combination r1610)
    simpa [shifted60, digit60, acc61] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc61 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted60 rho) (digit60 rho) (acc61 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted60 rho) (digit60 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 129) (rho 128)
      (base rho) (twice rho) (triple rho) (acc60 rho)
      (acc61 rho) :=
    ⟨shiftOnce60 rho, shifted60 rho, digit60 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window61 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc61 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[126]! (scalarBits rho)[125]!
        (base rho) (twice rho) (triple rho) (acc61 rho)
        (acc62 rho) ∧
      EdwardsBridge.onCurve (acc62 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, r1611, r1612, r1613, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1611 at r1611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1612 at r1612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1613 at r1613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1614 at r1614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1615 at r1615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1616 at r1616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1617 at r1617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1618 at r1618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1619 at r1619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1620 at r1620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1621 at r1621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1622 at r1622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1623 at r1623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1624 at r1624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1625 at r1625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1626 at r1626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1627 at r1627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1628 at r1628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1629 at r1629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1630 at r1630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1631 at r1631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1632 at r1632
  have hshift1 : EdwardsBridge.doubleSpec (acc61 rho) (shiftOnce61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1612) (rho 1613) (rho 1614) (rho 1615) (rho 1616) (rho 1617) (rho 1618)
      (by simpa [acc61] using hacc)
      (by linear_combination r1611)
      (by linear_combination r1612)
      (by linear_combination r1613)
      (by linear_combination r1614)
      (by linear_combination r1615)
    simpa [acc61, shiftOnce61] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc61 rho) (shiftOnce61 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc61 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce61 rho) (shifted61 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1617) (rho 1618) (rho 1619) (rho 1620) (rho 1621) (rho 1622) (rho 1623)
      (by simpa [shiftOnce61] using hshift1On)
      (by linear_combination r1616)
      (by linear_combination r1617)
      (by linear_combination r1618)
      (by linear_combination r1619)
      (by linear_combination r1620)
    simpa [shiftOnce61, shifted61] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted61 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce61 rho) (shifted61 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce61 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 127) (rho 126)
      (base rho) (twice rho) (triple rho) (digit61 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 127) (rho 126)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1625 + rho 1626, (1 : F) + rho 1628 + rho 1629⟩ := by
      constructor
      · refine ⟨(rho 1624 + (rho 258) - (0)), rho 1625, ?_, ?_, ?_⟩
        · linear_combination r1621 - (rho 126) * order_cast_zero
        · linear_combination r1622
        · linear_combination r1623
      · refine ⟨(rho 1627 + (rho 259) - ((1 : F))), rho 1628, ?_, ?_, ?_⟩
        · linear_combination r1624 - (rho 126) * order_cast_zero
        · linear_combination r1625
        · linear_combination r1626
    simpa [base, twice, triple, digit61] using hraw
  have hhigh : rho 127 =
      Bool.toZMod bits[126]! := by
    simpa only using rho_bit_of_map rho bits hbits 126 (by decide +kernel)
  have hlow : rho 126 =
      Bool.toZMod bits[125]! := by
    simpa only using rho_bit_of_map rho bits hbits 125 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[126]! bits[125]! (base rho) (twice rho) (triple rho)
    (digit61 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit61 rho) := by
    rw [hdigit]
    cases bits[126]! <;> cases bits[125]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted61 rho) (digit61 rho) (acc62 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1622) (rho 1623) (rho 1625 + rho 1626) ((1 : F) + rho 1628 + rho 1629)
      (rho 1630) (rho 1631) (rho 1632) (rho 1633) (rho 1634) (rho 1635)
      (by simpa [shifted61] using hshift2On)
      (by simpa [digit61] using hdigitOn)
      (by linear_combination r1627)
      (by linear_combination r1628)
      (by linear_combination r1629)
      (by linear_combination r1630)
      (by linear_combination r1631)
      (by linear_combination r1632)
    simpa [shifted61, digit61, acc62] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc62 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted61 rho) (digit61 rho) (acc62 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted61 rho) (digit61 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 127) (rho 126)
      (base rho) (twice rho) (triple rho) (acc61 rho)
      (acc62 rho) :=
    ⟨shiftOnce61 rho, shifted61 rho, digit61 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window62 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc62 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[124]! (scalarBits rho)[123]!
        (base rho) (twice rho) (triple rho) (acc62 rho)
        (acc63 rho) ∧
      EdwardsBridge.onCurve (acc63 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1633 at r1633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1634 at r1634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1635 at r1635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1636 at r1636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1637 at r1637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1638 at r1638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1639 at r1639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1640 at r1640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1641 at r1641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1642 at r1642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1643 at r1643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1644 at r1644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1645 at r1645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1646 at r1646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1647 at r1647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1648 at r1648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1649 at r1649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1650 at r1650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1651 at r1651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1652 at r1652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1653 at r1653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1654 at r1654
  have hshift1 : EdwardsBridge.doubleSpec (acc62 rho) (shiftOnce62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1634) (rho 1635) (rho 1636) (rho 1637) (rho 1638) (rho 1639) (rho 1640)
      (by simpa [acc62] using hacc)
      (by linear_combination r1633)
      (by linear_combination r1634)
      (by linear_combination r1635)
      (by linear_combination r1636)
      (by linear_combination r1637)
    simpa [acc62, shiftOnce62] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc62 rho) (shiftOnce62 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc62 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce62 rho) (shifted62 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1639) (rho 1640) (rho 1641) (rho 1642) (rho 1643) (rho 1644) (rho 1645)
      (by simpa [shiftOnce62] using hshift1On)
      (by linear_combination r1638)
      (by linear_combination r1639)
      (by linear_combination r1640)
      (by linear_combination r1641)
      (by linear_combination r1642)
    simpa [shiftOnce62, shifted62] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted62 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce62 rho) (shifted62 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce62 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 125) (rho 124)
      (base rho) (twice rho) (triple rho) (digit62 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 125) (rho 124)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1647 + rho 1648, (1 : F) + rho 1650 + rho 1651⟩ := by
      constructor
      · refine ⟨(rho 1646 + (rho 258) - (0)), rho 1647, ?_, ?_, ?_⟩
        · linear_combination r1643 - (rho 124) * order_cast_zero
        · linear_combination r1644
        · linear_combination r1645
      · refine ⟨(rho 1649 + (rho 259) - ((1 : F))), rho 1650, ?_, ?_, ?_⟩
        · linear_combination r1646 - (rho 124) * order_cast_zero
        · linear_combination r1647
        · linear_combination r1648
    simpa [base, twice, triple, digit62] using hraw
  have hhigh : rho 125 =
      Bool.toZMod bits[124]! := by
    simpa only using rho_bit_of_map rho bits hbits 124 (by decide +kernel)
  have hlow : rho 124 =
      Bool.toZMod bits[123]! := by
    simpa only using rho_bit_of_map rho bits hbits 123 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[124]! bits[123]! (base rho) (twice rho) (triple rho)
    (digit62 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit62 rho) := by
    rw [hdigit]
    cases bits[124]! <;> cases bits[123]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted62 rho) (digit62 rho) (acc63 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1644) (rho 1645) (rho 1647 + rho 1648) ((1 : F) + rho 1650 + rho 1651)
      (rho 1652) (rho 1653) (rho 1654) (rho 1655) (rho 1656) (rho 1657)
      (by simpa [shifted62] using hshift2On)
      (by simpa [digit62] using hdigitOn)
      (by linear_combination r1649)
      (by linear_combination r1650)
      (by linear_combination r1651)
      (by linear_combination r1652)
      (by linear_combination r1653)
      (by linear_combination r1654)
    simpa [shifted62, digit62, acc63] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc63 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted62 rho) (digit62 rho) (acc63 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted62 rho) (digit62 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 125) (rho 124)
      (base rho) (twice rho) (triple rho) (acc62 rho)
      (acc63 rho) :=
    ⟨shiftOnce62 rho, shifted62 rho, digit62 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window63 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc63 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[122]! (scalarBits rho)[121]!
        (base rho) (twice rho) (triple rho) (acc63 rho)
        (acc64 rho) ∧
      EdwardsBridge.onCurve (acc64 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1655 at r1655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1656 at r1656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1657 at r1657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1658 at r1658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1659 at r1659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1660 at r1660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1661 at r1661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1662 at r1662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1663 at r1663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1664 at r1664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1665 at r1665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1666 at r1666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1667 at r1667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1668 at r1668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1669 at r1669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1670 at r1670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1671 at r1671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1672 at r1672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1673 at r1673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1674 at r1674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1675 at r1675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1676 at r1676
  have hshift1 : EdwardsBridge.doubleSpec (acc63 rho) (shiftOnce63 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1656) (rho 1657) (rho 1658) (rho 1659) (rho 1660) (rho 1661) (rho 1662)
      (by simpa [acc63] using hacc)
      (by linear_combination r1655)
      (by linear_combination r1656)
      (by linear_combination r1657)
      (by linear_combination r1658)
      (by linear_combination r1659)
    simpa [acc63, shiftOnce63] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce63 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc63 rho) (shiftOnce63 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc63 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce63 rho) (shifted63 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1661) (rho 1662) (rho 1663) (rho 1664) (rho 1665) (rho 1666) (rho 1667)
      (by simpa [shiftOnce63] using hshift1On)
      (by linear_combination r1660)
      (by linear_combination r1661)
      (by linear_combination r1662)
      (by linear_combination r1663)
      (by linear_combination r1664)
    simpa [shiftOnce63, shifted63] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted63 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce63 rho) (shifted63 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce63 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 123) (rho 122)
      (base rho) (twice rho) (triple rho) (digit63 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 123) (rho 122)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1669 + rho 1670, (1 : F) + rho 1672 + rho 1673⟩ := by
      constructor
      · refine ⟨(rho 1668 + (rho 258) - (0)), rho 1669, ?_, ?_, ?_⟩
        · linear_combination r1665 - (rho 122) * order_cast_zero
        · linear_combination r1666
        · linear_combination r1667
      · refine ⟨(rho 1671 + (rho 259) - ((1 : F))), rho 1672, ?_, ?_, ?_⟩
        · linear_combination r1668 - (rho 122) * order_cast_zero
        · linear_combination r1669
        · linear_combination r1670
    simpa [base, twice, triple, digit63] using hraw
  have hhigh : rho 123 =
      Bool.toZMod bits[122]! := by
    simpa only using rho_bit_of_map rho bits hbits 122 (by decide +kernel)
  have hlow : rho 122 =
      Bool.toZMod bits[121]! := by
    simpa only using rho_bit_of_map rho bits hbits 121 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[122]! bits[121]! (base rho) (twice rho) (triple rho)
    (digit63 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit63 rho) := by
    rw [hdigit]
    cases bits[122]! <;> cases bits[121]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted63 rho) (digit63 rho) (acc64 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1666) (rho 1667) (rho 1669 + rho 1670) ((1 : F) + rho 1672 + rho 1673)
      (rho 1674) (rho 1675) (rho 1676) (rho 1677) (rho 1678) (rho 1679)
      (by simpa [shifted63] using hshift2On)
      (by simpa [digit63] using hdigitOn)
      (by linear_combination r1671)
      (by linear_combination r1672)
      (by linear_combination r1673)
      (by linear_combination r1674)
      (by linear_combination r1675)
      (by linear_combination r1676)
    simpa [shifted63, digit63, acc64] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc64 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted63 rho) (digit63 rho) (acc64 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted63 rho) (digit63 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 123) (rho 122)
      (base rho) (twice rho) (triple rho) (acc63 rho)
      (acc64 rho) :=
    ⟨shiftOnce63 rho, shifted63 rho, digit63 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window64 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc64 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[120]! (scalarBits rho)[119]!
        (base rho) (twice rho) (triple rho) (acc64 rho)
        (acc65 rho) ∧
      EdwardsBridge.onCurve (acc65 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p20, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart20 at p20
  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1677, r1678, r1679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart21 at p21
  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, r1695, r1696, r1697, r1698, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1677 at r1677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1678 at r1678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1679 at r1679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1680 at r1680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1681 at r1681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1682 at r1682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1683 at r1683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1684 at r1684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1685 at r1685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1686 at r1686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1687 at r1687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1688 at r1688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1689 at r1689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1690 at r1690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1691 at r1691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1692 at r1692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1693 at r1693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1694 at r1694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1695 at r1695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1696 at r1696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1697 at r1697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1698 at r1698
  have hshift1 : EdwardsBridge.doubleSpec (acc64 rho) (shiftOnce64 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1678) (rho 1679) (rho 1680) (rho 1681) (rho 1682) (rho 1683) (rho 1684)
      (by simpa [acc64] using hacc)
      (by linear_combination r1677)
      (by linear_combination r1678)
      (by linear_combination r1679)
      (by linear_combination r1680)
      (by linear_combination r1681)
    simpa [acc64, shiftOnce64] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce64 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc64 rho) (shiftOnce64 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc64 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce64 rho) (shifted64 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1683) (rho 1684) (rho 1685) (rho 1686) (rho 1687) (rho 1688) (rho 1689)
      (by simpa [shiftOnce64] using hshift1On)
      (by linear_combination r1682)
      (by linear_combination r1683)
      (by linear_combination r1684)
      (by linear_combination r1685)
      (by linear_combination r1686)
    simpa [shiftOnce64, shifted64] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted64 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce64 rho) (shifted64 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce64 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 121) (rho 120)
      (base rho) (twice rho) (triple rho) (digit64 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 121) (rho 120)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1691 + rho 1692, (1 : F) + rho 1694 + rho 1695⟩ := by
      constructor
      · refine ⟨(rho 1690 + (rho 258) - (0)), rho 1691, ?_, ?_, ?_⟩
        · linear_combination r1687 - (rho 120) * order_cast_zero
        · linear_combination r1688
        · linear_combination r1689
      · refine ⟨(rho 1693 + (rho 259) - ((1 : F))), rho 1694, ?_, ?_, ?_⟩
        · linear_combination r1690 - (rho 120) * order_cast_zero
        · linear_combination r1691
        · linear_combination r1692
    simpa [base, twice, triple, digit64] using hraw
  have hhigh : rho 121 =
      Bool.toZMod bits[120]! := by
    simpa only using rho_bit_of_map rho bits hbits 120 (by decide +kernel)
  have hlow : rho 120 =
      Bool.toZMod bits[119]! := by
    simpa only using rho_bit_of_map rho bits hbits 119 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[120]! bits[119]! (base rho) (twice rho) (triple rho)
    (digit64 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit64 rho) := by
    rw [hdigit]
    cases bits[120]! <;> cases bits[119]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted64 rho) (digit64 rho) (acc65 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1688) (rho 1689) (rho 1691 + rho 1692) ((1 : F) + rho 1694 + rho 1695)
      (rho 1696) (rho 1697) (rho 1698) (rho 1699) (rho 1700) (rho 1701)
      (by simpa [shifted64] using hshift2On)
      (by simpa [digit64] using hdigitOn)
      (by linear_combination r1693)
      (by linear_combination r1694)
      (by linear_combination r1695)
      (by linear_combination r1696)
      (by linear_combination r1697)
      (by linear_combination r1698)
    simpa [shifted64, digit64, acc65] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc65 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted64 rho) (digit64 rho) (acc65 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted64 rho) (digit64 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 121) (rho 120)
      (base rho) (twice rho) (triple rho) (acc64 rho)
      (acc65 rho) :=
    ⟨shiftOnce64 rho, shifted64 rho, digit64 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window65 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc65 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[118]! (scalarBits rho)[117]!
        (base rho) (twice rho) (triple rho) (acc65 rho)
        (acc66 rho) ∧
      EdwardsBridge.onCurve (acc66 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p21, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart21 at p21
  rcases p21 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1699 at r1699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1700 at r1700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1701 at r1701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1702 at r1702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1703 at r1703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1704 at r1704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1705 at r1705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1706 at r1706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1707 at r1707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1708 at r1708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1709 at r1709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1710 at r1710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1711 at r1711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1712 at r1712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1713 at r1713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1714 at r1714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1715 at r1715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1716 at r1716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1717 at r1717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1718 at r1718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1719 at r1719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1720 at r1720
  have hshift1 : EdwardsBridge.doubleSpec (acc65 rho) (shiftOnce65 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1700) (rho 1701) (rho 1702) (rho 1703) (rho 1704) (rho 1705) (rho 1706)
      (by simpa [acc65] using hacc)
      (by linear_combination r1699)
      (by linear_combination r1700)
      (by linear_combination r1701)
      (by linear_combination r1702)
      (by linear_combination r1703)
    simpa [acc65, shiftOnce65] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce65 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc65 rho) (shiftOnce65 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc65 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce65 rho) (shifted65 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1705) (rho 1706) (rho 1707) (rho 1708) (rho 1709) (rho 1710) (rho 1711)
      (by simpa [shiftOnce65] using hshift1On)
      (by linear_combination r1704)
      (by linear_combination r1705)
      (by linear_combination r1706)
      (by linear_combination r1707)
      (by linear_combination r1708)
    simpa [shiftOnce65, shifted65] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted65 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce65 rho) (shifted65 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce65 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 119) (rho 118)
      (base rho) (twice rho) (triple rho) (digit65 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 119) (rho 118)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1713 + rho 1714, (1 : F) + rho 1716 + rho 1717⟩ := by
      constructor
      · refine ⟨(rho 1712 + (rho 258) - (0)), rho 1713, ?_, ?_, ?_⟩
        · linear_combination r1709 - (rho 118) * order_cast_zero
        · linear_combination r1710
        · linear_combination r1711
      · refine ⟨(rho 1715 + (rho 259) - ((1 : F))), rho 1716, ?_, ?_, ?_⟩
        · linear_combination r1712 - (rho 118) * order_cast_zero
        · linear_combination r1713
        · linear_combination r1714
    simpa [base, twice, triple, digit65] using hraw
  have hhigh : rho 119 =
      Bool.toZMod bits[118]! := by
    simpa only using rho_bit_of_map rho bits hbits 118 (by decide +kernel)
  have hlow : rho 118 =
      Bool.toZMod bits[117]! := by
    simpa only using rho_bit_of_map rho bits hbits 117 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[118]! bits[117]! (base rho) (twice rho) (triple rho)
    (digit65 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit65 rho) := by
    rw [hdigit]
    cases bits[118]! <;> cases bits[117]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted65 rho) (digit65 rho) (acc66 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1710) (rho 1711) (rho 1713 + rho 1714) ((1 : F) + rho 1716 + rho 1717)
      (rho 1718) (rho 1719) (rho 1720) (rho 1721) (rho 1722) (rho 1723)
      (by simpa [shifted65] using hshift2On)
      (by simpa [digit65] using hdigitOn)
      (by linear_combination r1715)
      (by linear_combination r1716)
      (by linear_combination r1717)
      (by linear_combination r1718)
      (by linear_combination r1719)
      (by linear_combination r1720)
    simpa [shifted65, digit65, acc66] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc66 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted65 rho) (digit65 rho) (acc66 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted65 rho) (digit65 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 119) (rho 118)
      (base rho) (twice rho) (triple rho) (acc65 rho)
      (acc66 rho) :=
    ⟨shiftOnce65 rho, shifted65 rho, digit65 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
