import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node4_seg0 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r1503 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1503 rho)
    (r1504 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1504 rho)
    (r1505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1505 rho)
    (r1506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1506 rho)
    (r1507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1507 rho)
    (tail : next (rho 1500 + rho 1501 + rho 1502) (rho 1500 + rho 1504 + rho 1505) (rho 1503 + rho 1506) (rho 1511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg0 (rho 1498 + rho 1499) (rho 1500 + rho 1501 + rho 1502) (rho 1500 + rho 1504 + rho 1505) (rho 1503 + rho 1506) next := by
  exact ⟨rho 1507, rho 1508, rho 1509, rho 1510, rho 1511, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1503 at r1503; linear_combination r1503), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1504 at r1504; linear_combination r1504), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1505 at r1505; linear_combination r1505), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1506 at r1506; linear_combination r1506), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1507 at r1507; linear_combination r1507), tail⟩

theorem node4_seg1 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r1508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1508 rho)
    (r1509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1509 rho)
    (r1510 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1510 rho)
    (r1511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1511 rho)
    (r1512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1512 rho)
    (tail : next (rho 1500 + rho 1504 + rho 1505) (rho 1503 + rho 1506) (rho 1511) (rho 1516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg1 (rho 1500 + rho 1501 + rho 1502) (rho 1500 + rho 1504 + rho 1505) (rho 1503 + rho 1506) (rho 1511) next := by
  exact ⟨rho 1512, rho 1513, rho 1514, rho 1515, rho 1516, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1508 at r1508; linear_combination r1508), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1509 at r1509; linear_combination r1509), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1510 at r1510; linear_combination r1510), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1511 at r1511; linear_combination r1511), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1512 at r1512; linear_combination r1512), tail⟩

theorem node4_seg2 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r1513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1513 rho)
    (r1514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1514 rho)
    (r1515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1515 rho)
    (r1516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1516 rho)
    (r1517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1517 rho)
    (tail : next (rho 1503 + rho 1506) (rho 1511) (rho 1516) (rho 1521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg2 (rho 1500 + rho 1504 + rho 1505) (rho 1503 + rho 1506) (rho 1511) (rho 1516) next := by
  exact ⟨rho 1517, rho 1518, rho 1519, rho 1520, rho 1521, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1513 at r1513; linear_combination r1513), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1514 at r1514; linear_combination r1514), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1515 at r1515; linear_combination r1515), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1516 at r1516; linear_combination r1516), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1517 at r1517; linear_combination r1517), tail⟩

theorem node4_seg3 (rho : Nat → F)
    (next : F → F → F → F → Prop)
    (r1518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1518 rho)
    (r1519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1519 rho)
    (r1520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1520 rho)
    (r1521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1521 rho)
    (r1522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1522 rho)
    (tail : next (rho 1511) (rho 1516) (rho 1521) (rho 1526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg3 (rho 1503 + rho 1506) (rho 1511) (rho 1516) (rho 1521) next := by
  exact ⟨rho 1522, rho 1523, rho 1524, rho 1525, rho 1526, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1518 at r1518; linear_combination r1518), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1519 at r1519; linear_combination r1519), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1520 at r1520; linear_combination r1520), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1521 at r1521; linear_combination r1521), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1522 at r1522; linear_combination r1522), tail⟩

theorem node4_seg4 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r1523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1523 rho)
    (r1524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1524 rho)
    (r1525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1525 rho)
    (r1526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1526 rho)
    (r1527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1527 rho)
    (tail : next (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg4 (rho 1511) (rho 1516) (rho 1521) (rho 1526) next := by
  exact ⟨rho 1527, rho 1528, rho 1529, rho 1530, rho 1531, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1523 at r1523; linear_combination r1523), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1524 at r1524; linear_combination r1524), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1525 at r1525; linear_combination r1525), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1526 at r1526; linear_combination r1526), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1527 at r1527; linear_combination r1527), tail⟩

theorem node4_seg5 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r1528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1528 rho)
    (r1529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1529 rho)
    (r1530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1530 rho)
    (r1531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1531 rho)
    (r1532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1532 rho)
    (tail : next (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) (rho 1536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg5 (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) next := by
  exact ⟨rho 1532, rho 1533, rho 1534, rho 1535, rho 1536, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1528 at r1528; linear_combination r1528), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1529 at r1529; linear_combination r1529), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1530 at r1530; linear_combination r1530), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1531 at r1531; linear_combination r1531), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1532 at r1532; linear_combination r1532), tail⟩

theorem node4_seg6 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1533 rho)
    (r1534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1534 rho)
    (r1535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1535 rho)
    (r1536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1536 rho)
    (r1537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1537 rho)
    (tail : next (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) (rho 1536) (rho 1541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg6 (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) (rho 1536) next := by
  exact ⟨rho 1537, rho 1538, rho 1539, rho 1540, rho 1541, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1533 at r1533; linear_combination r1533), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1534 at r1534; linear_combination r1534), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1535 at r1535; linear_combination r1535), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1536 at r1536; linear_combination r1536), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1537 at r1537; linear_combination r1537), tail⟩

theorem node4_seg7 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1538 rho)
    (r1539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1539 rho)
    (r1540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1540 rho)
    (r1541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1541 rho)
    (r1542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1542 rho)
    (tail : next (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) (rho 1536) (rho 1541) (rho 1546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg7 (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) (rho 1536) (rho 1541) next := by
  exact ⟨rho 1542, rho 1543, rho 1544, rho 1545, rho 1546, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1538 at r1538; linear_combination r1538), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1539 at r1539; linear_combination r1539), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1540 at r1540; linear_combination r1540), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1541 at r1541; linear_combination r1541), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1542 at r1542; linear_combination r1542), tail⟩

theorem node4_seg8 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r1543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1543 rho)
    (r1544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1544 rho)
    (r1545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1545 rho)
    (r1546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1546 rho)
    (r1547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1547 rho)
    (tail : next (rho 1531) (rho 1536) (rho 1541) (rho 1546) (rho 1551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg8 (rho 1511) (rho 1516) (rho 1521) (rho 1526) (rho 1531) (rho 1536) (rho 1541) (rho 1546) next := by
  exact ⟨rho 1547, rho 1548, rho 1549, rho 1550, rho 1551, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1543 at r1543; linear_combination r1543), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1544 at r1544; linear_combination r1544), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1545 at r1545; linear_combination r1545), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1546 at r1546; linear_combination r1546), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1547 at r1547; linear_combination r1547), tail⟩

theorem node4_seg9 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r1548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1548 rho)
    (r1549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1549 rho)
    (r1550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1550 rho)
    (r1551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1551 rho)
    (r1552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1552 rho)
    (tail : next (rho 1531) (rho 1536) (rho 1541) (rho 1546) (rho 1551) (rho 1556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg9 (rho 1531) (rho 1536) (rho 1541) (rho 1546) (rho 1551) next := by
  exact ⟨rho 1552, rho 1553, rho 1554, rho 1555, rho 1556, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1548 at r1548; linear_combination r1548), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1549 at r1549; linear_combination r1549), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1550 at r1550; linear_combination r1550), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1551 at r1551; linear_combination r1551), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow1552 at r1552; linear_combination r1552), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
