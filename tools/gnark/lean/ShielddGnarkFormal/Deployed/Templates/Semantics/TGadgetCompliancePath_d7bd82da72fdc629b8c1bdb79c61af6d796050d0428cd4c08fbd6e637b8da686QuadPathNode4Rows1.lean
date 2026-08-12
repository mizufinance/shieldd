import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node4_seg10 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1553 rho)
    (r1554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1554 rho)
    (r1555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1555 rho)
    (r1556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1556 rho)
    (r1557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1557 rho)
    (tail : next (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) (rho 1560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg10 (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) next := by
  exact ⟨rho 1556, rho 1557, rho 1558, rho 1559, rho 1560, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1553 at r1553; linear_combination r1553), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1554 at r1554; linear_combination r1554), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1555 at r1555; linear_combination r1555), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1556 at r1556; linear_combination r1556), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1557 at r1557; linear_combination r1557), tail⟩

theorem node4_seg11 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1558 rho)
    (r1559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1559 rho)
    (r1560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1560 rho)
    (r1561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1561 rho)
    (r1562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1562 rho)
    (tail : next (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) (rho 1560) (rho 1565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg11 (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) (rho 1560) next := by
  exact ⟨rho 1561, rho 1562, rho 1563, rho 1564, rho 1565, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1558 at r1558; linear_combination r1558), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1559 at r1559; linear_combination r1559), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1560 at r1560; linear_combination r1560), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1561 at r1561; linear_combination r1561), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1562 at r1562; linear_combination r1562), tail⟩

theorem node4_seg12 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1563 rho)
    (r1564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1564 rho)
    (r1565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1565 rho)
    (r1566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1566 rho)
    (r1567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1567 rho)
    (tail : next (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) (rho 1560) (rho 1565) (rho 1570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg12 (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) (rho 1560) (rho 1565) next := by
  exact ⟨rho 1566, rho 1567, rho 1568, rho 1569, rho 1570, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1563 at r1563; linear_combination r1563), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1564 at r1564; linear_combination r1564), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1565 at r1565; linear_combination r1565), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1566 at r1566; linear_combination r1566), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1567 at r1567; linear_combination r1567), tail⟩

theorem node4_seg13 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r1568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1568 rho)
    (r1569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1569 rho)
    (r1570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1570 rho)
    (r1571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1571 rho)
    (r1572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1572 rho)
    (tail : next (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg13 (rho 1530) (rho 1535) (rho 1540) (rho 1545) (rho 1550) (rho 1555) (rho 1560) (rho 1565) (rho 1570) next := by
  exact ⟨rho 1571, rho 1572, rho 1573, rho 1574, rho 1575, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1568 at r1568; linear_combination r1568), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1569 at r1569; linear_combination r1569), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1570 at r1570; linear_combination r1570), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1571 at r1571; linear_combination r1571), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1572 at r1572; linear_combination r1572), tail⟩

theorem node4_seg14 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r1573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1573 rho)
    (r1574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1574 rho)
    (r1575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1575 rho)
    (r1576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1576 rho)
    (r1577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1577 rho)
    (tail : next (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg14 (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) next := by
  exact ⟨rho 1576, rho 1577, rho 1578, rho 1579, rho 1580, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1573 at r1573; linear_combination r1573), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1574 at r1574; linear_combination r1574), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1575 at r1575; linear_combination r1575), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1576 at r1576; linear_combination r1576), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1577 at r1577; linear_combination r1577), tail⟩

theorem node4_seg15 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1578 rho)
    (r1579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1579 rho)
    (r1580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1580 rho)
    (r1581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1581 rho)
    (r1582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1582 rho)
    (tail : next (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) (rho 1585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg15 (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) next := by
  exact ⟨rho 1581, rho 1582, rho 1583, rho 1584, rho 1585, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1578 at r1578; linear_combination r1578), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1579 at r1579; linear_combination r1579), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1580 at r1580; linear_combination r1580), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1581 at r1581; linear_combination r1581), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1582 at r1582; linear_combination r1582), tail⟩

theorem node4_seg16 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1583 rho)
    (r1584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1584 rho)
    (r1585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1585 rho)
    (r1586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1586 rho)
    (r1587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1587 rho)
    (tail : next (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) (rho 1585) (rho 1590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg16 (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) (rho 1585) next := by
  exact ⟨rho 1586, rho 1587, rho 1588, rho 1589, rho 1590, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1583 at r1583; linear_combination r1583), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1584 at r1584; linear_combination r1584), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1585 at r1585; linear_combination r1585), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1586 at r1586; linear_combination r1586), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1587 at r1587; linear_combination r1587), tail⟩

theorem node4_seg17 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1588 rho)
    (r1589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1589 rho)
    (r1590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1590 rho)
    (r1591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1591 rho)
    (r1592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1592 rho)
    (tail : next (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) (rho 1585) (rho 1590) (rho 1595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg17 (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) (rho 1585) (rho 1590) next := by
  exact ⟨rho 1591, rho 1592, rho 1593, rho 1594, rho 1595, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1588 at r1588; linear_combination r1588), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1589 at r1589; linear_combination r1589), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1590 at r1590; linear_combination r1590), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1591 at r1591; linear_combination r1591), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1592 at r1592; linear_combination r1592), tail⟩

theorem node4_seg18 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r1593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1593 rho)
    (r1594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1594 rho)
    (r1595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1595 rho)
    (r1596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1596 rho)
    (r1597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1597 rho)
    (tail : next (rho 1580) (rho 1585) (rho 1590) (rho 1595) (rho 1600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg18 (rho 1555) (rho 1560) (rho 1565) (rho 1570) (rho 1575) (rho 1580) (rho 1585) (rho 1590) (rho 1595) next := by
  exact ⟨rho 1596, rho 1597, rho 1598, rho 1599, rho 1600, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1593 at r1593; linear_combination r1593), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1594 at r1594; linear_combination r1594), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1595 at r1595; linear_combination r1595), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1596 at r1596; linear_combination r1596), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1597 at r1597; linear_combination r1597), tail⟩

theorem node4_seg19 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r1598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1598 rho)
    (r1599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1599 rho)
    (r1600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1600 rho)
    (r1601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1601 rho)
    (r1602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1602 rho)
    (tail : next (rho 1580) (rho 1585) (rho 1590) (rho 1595) (rho 1600) (rho 1605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg19 (rho 1580) (rho 1585) (rho 1590) (rho 1595) (rho 1600) next := by
  exact ⟨rho 1601, rho 1602, rho 1603, rho 1604, rho 1605, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1598 at r1598; linear_combination r1598), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1599 at r1599; linear_combination r1599), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1600 at r1600; linear_combination r1600), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1601 at r1601; linear_combination r1601), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow1602 at r1602; linear_combination r1602), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
