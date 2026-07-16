import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step225
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step226
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step227
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step228
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps15 (rho : Nat -> Seg15.F)
    (r225 : Seg15.relationRow225 rho)
    (r1597 : Seg15.relationRow1597 rho)
    (r1598 : Seg15.relationRow1598 rho)
    (r1599 : Seg15.relationRow1599 rho)
    (r1600 : Seg15.relationRow1600 rho)
    (r1601 : Seg15.relationRow1601 rho)
    (r1602 : Seg15.relationRow1602 rho)
    (r1603 : Seg15.relationRow1603 rho)
    (r1604 : Seg15.relationRow1604 rho)
    (r226 : Seg15.relationRow226 rho)
    (r1605 : Seg15.relationRow1605 rho)
    (r1606 : Seg15.relationRow1606 rho)
    (r1607 : Seg15.relationRow1607 rho)
    (r1608 : Seg15.relationRow1608 rho)
    (r1609 : Seg15.relationRow1609 rho)
    (r1610 : Seg15.relationRow1610 rho)
    (r1611 : Seg15.relationRow1611 rho)
    (r1612 : Seg15.relationRow1612 rho)
    (r227 : Seg15.relationRow227 rho)
    (r1613 : Seg15.relationRow1613 rho)
    (r1614 : Seg15.relationRow1614 rho)
    (r1615 : Seg15.relationRow1615 rho)
    (r1616 : Seg15.relationRow1616 rho)
    (r1617 : Seg15.relationRow1617 rho)
    (r1618 : Seg15.relationRow1618 rho)
    (r1619 : Seg15.relationRow1619 rho)
    (r1620 : Seg15.relationRow1620 rho)
    (r228 : Seg15.relationRow228 rho)
    (r1621 : Seg15.relationRow1621 rho)
    (r1622 : Seg15.relationRow1622 rho)
    (r1623 : Seg15.relationRow1623 rho)
    (r1624 : Seg15.relationRow1624 rho)
    (r1625 : Seg15.relationRow1625 rho)
    (r1626 : Seg15.relationRow1626 rho)
    (r1627 : Seg15.relationRow1627 rho)
    (r1628 : Seg15.relationRow1628 rho)
    (r229 : Seg15.relationRow229 rho)
    (r1629 : Seg15.relationRow1629 rho)
    (r1630 : Seg15.relationRow1630 rho)
    (r1631 : Seg15.relationRow1631 rho)
    (r1632 : Seg15.relationRow1632 rho)
    (r1633 : Seg15.relationRow1633 rho)
    (r1634 : Seg15.relationRow1634 rho)
    (r1635 : Seg15.relationRow1635 rho)
    (r1636 : Seg15.relationRow1636 rho)
    : ∀ i, 225 ≤ i → i ≤ 229 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step225 rho r225 r1597 r1598 r1599 r1600 r1601 r1602 r1603 r1604 hacc
  · exact seg15_step226 rho r226 r1605 r1606 r1607 r1608 r1609 r1610 r1611 r1612 hacc
  · exact seg15_step227 rho r227 r1613 r1614 r1615 r1616 r1617 r1618 r1619 r1620 hacc
  · exact seg15_step228 rho r228 r1621 r1622 r1623 r1624 r1625 r1626 r1627 r1628 hacc
  · exact seg15_step229 rho r229 r1629 r1630 r1631 r1632 r1633 r1634 r1635 r1636 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

