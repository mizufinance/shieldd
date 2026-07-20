import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step230
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step231
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step232
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step233
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step234

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps16 (rho : Nat -> Seg15.F)
    (r230 : Seg15.relationRow230 rho)
    (r1637 : Seg15.relationRow1637 rho)
    (r1638 : Seg15.relationRow1638 rho)
    (r1639 : Seg15.relationRow1639 rho)
    (r1640 : Seg15.relationRow1640 rho)
    (r1641 : Seg15.relationRow1641 rho)
    (r1642 : Seg15.relationRow1642 rho)
    (r1643 : Seg15.relationRow1643 rho)
    (r1644 : Seg15.relationRow1644 rho)
    (r231 : Seg15.relationRow231 rho)
    (r1645 : Seg15.relationRow1645 rho)
    (r1646 : Seg15.relationRow1646 rho)
    (r1647 : Seg15.relationRow1647 rho)
    (r1648 : Seg15.relationRow1648 rho)
    (r1649 : Seg15.relationRow1649 rho)
    (r1650 : Seg15.relationRow1650 rho)
    (r1651 : Seg15.relationRow1651 rho)
    (r1652 : Seg15.relationRow1652 rho)
    (r232 : Seg15.relationRow232 rho)
    (r1653 : Seg15.relationRow1653 rho)
    (r1654 : Seg15.relationRow1654 rho)
    (r1655 : Seg15.relationRow1655 rho)
    (r1656 : Seg15.relationRow1656 rho)
    (r1657 : Seg15.relationRow1657 rho)
    (r1658 : Seg15.relationRow1658 rho)
    (r1659 : Seg15.relationRow1659 rho)
    (r1660 : Seg15.relationRow1660 rho)
    (r233 : Seg15.relationRow233 rho)
    (r1661 : Seg15.relationRow1661 rho)
    (r1662 : Seg15.relationRow1662 rho)
    (r1663 : Seg15.relationRow1663 rho)
    (r1664 : Seg15.relationRow1664 rho)
    (r1665 : Seg15.relationRow1665 rho)
    (r1666 : Seg15.relationRow1666 rho)
    (r1667 : Seg15.relationRow1667 rho)
    (r1668 : Seg15.relationRow1668 rho)
    (r234 : Seg15.relationRow234 rho)
    (r1669 : Seg15.relationRow1669 rho)
    (r1670 : Seg15.relationRow1670 rho)
    (r1671 : Seg15.relationRow1671 rho)
    (r1672 : Seg15.relationRow1672 rho)
    (r1673 : Seg15.relationRow1673 rho)
    (r1674 : Seg15.relationRow1674 rho)
    (r1675 : Seg15.relationRow1675 rho)
    (r1676 : Seg15.relationRow1676 rho)
    : ∀ i, 230 ≤ i → i ≤ 234 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step230 rho r230 r1637 r1638 r1639 r1640 r1641 r1642 r1643 r1644 hacc
  · exact seg15_step231 rho r231 r1645 r1646 r1647 r1648 r1649 r1650 r1651 r1652 hacc
  · exact seg15_step232 rho r232 r1653 r1654 r1655 r1656 r1657 r1658 r1659 r1660 hacc
  · exact seg15_step233 rho r233 r1661 r1662 r1663 r1664 r1665 r1666 r1667 r1668 hacc
  · exact seg15_step234 rho r234 r1669 r1670 r1671 r1672 r1673 r1674 r1675 r1676 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

