import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step225
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step226
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step227
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step228
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps15 (rho : Nat -> Seg30.F)
    (r225 : Seg30.relationRow225 rho)
    (r1597 : Seg30.relationRow1597 rho)
    (r1598 : Seg30.relationRow1598 rho)
    (r1599 : Seg30.relationRow1599 rho)
    (r1600 : Seg30.relationRow1600 rho)
    (r1601 : Seg30.relationRow1601 rho)
    (r1602 : Seg30.relationRow1602 rho)
    (r1603 : Seg30.relationRow1603 rho)
    (r1604 : Seg30.relationRow1604 rho)
    (r226 : Seg30.relationRow226 rho)
    (r1605 : Seg30.relationRow1605 rho)
    (r1606 : Seg30.relationRow1606 rho)
    (r1607 : Seg30.relationRow1607 rho)
    (r1608 : Seg30.relationRow1608 rho)
    (r1609 : Seg30.relationRow1609 rho)
    (r1610 : Seg30.relationRow1610 rho)
    (r1611 : Seg30.relationRow1611 rho)
    (r1612 : Seg30.relationRow1612 rho)
    (r227 : Seg30.relationRow227 rho)
    (r1613 : Seg30.relationRow1613 rho)
    (r1614 : Seg30.relationRow1614 rho)
    (r1615 : Seg30.relationRow1615 rho)
    (r1616 : Seg30.relationRow1616 rho)
    (r1617 : Seg30.relationRow1617 rho)
    (r1618 : Seg30.relationRow1618 rho)
    (r1619 : Seg30.relationRow1619 rho)
    (r1620 : Seg30.relationRow1620 rho)
    (r228 : Seg30.relationRow228 rho)
    (r1621 : Seg30.relationRow1621 rho)
    (r1622 : Seg30.relationRow1622 rho)
    (r1623 : Seg30.relationRow1623 rho)
    (r1624 : Seg30.relationRow1624 rho)
    (r1625 : Seg30.relationRow1625 rho)
    (r1626 : Seg30.relationRow1626 rho)
    (r1627 : Seg30.relationRow1627 rho)
    (r1628 : Seg30.relationRow1628 rho)
    (r229 : Seg30.relationRow229 rho)
    (r1629 : Seg30.relationRow1629 rho)
    (r1630 : Seg30.relationRow1630 rho)
    (r1631 : Seg30.relationRow1631 rho)
    (r1632 : Seg30.relationRow1632 rho)
    (r1633 : Seg30.relationRow1633 rho)
    (r1634 : Seg30.relationRow1634 rho)
    (r1635 : Seg30.relationRow1635 rho)
    (r1636 : Seg30.relationRow1636 rho)
    : ∀ i, 225 ≤ i → i ≤ 229 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28311 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step225 rho r225 r1597 r1598 r1599 r1600 r1601 r1602 r1603 r1604 hacc
  · exact seg30_step226 rho r226 r1605 r1606 r1607 r1608 r1609 r1610 r1611 r1612 hacc
  · exact seg30_step227 rho r227 r1613 r1614 r1615 r1616 r1617 r1618 r1619 r1620 hacc
  · exact seg30_step228 rho r228 r1621 r1622 r1623 r1624 r1625 r1626 r1627 r1628 hacc
  · exact seg30_step229 rho r229 r1629 r1630 r1631 r1632 r1633 r1634 r1635 r1636 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

