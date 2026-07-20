import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step235
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step236
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step237
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step238
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step239

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps17 (rho : Nat -> Seg15.F)
    (r235 : Seg15.relationRow235 rho)
    (r1677 : Seg15.relationRow1677 rho)
    (r1678 : Seg15.relationRow1678 rho)
    (r1679 : Seg15.relationRow1679 rho)
    (r1680 : Seg15.relationRow1680 rho)
    (r1681 : Seg15.relationRow1681 rho)
    (r1682 : Seg15.relationRow1682 rho)
    (r1683 : Seg15.relationRow1683 rho)
    (r1684 : Seg15.relationRow1684 rho)
    (r236 : Seg15.relationRow236 rho)
    (r1685 : Seg15.relationRow1685 rho)
    (r1686 : Seg15.relationRow1686 rho)
    (r1687 : Seg15.relationRow1687 rho)
    (r1688 : Seg15.relationRow1688 rho)
    (r1689 : Seg15.relationRow1689 rho)
    (r1690 : Seg15.relationRow1690 rho)
    (r1691 : Seg15.relationRow1691 rho)
    (r1692 : Seg15.relationRow1692 rho)
    (r237 : Seg15.relationRow237 rho)
    (r1693 : Seg15.relationRow1693 rho)
    (r1694 : Seg15.relationRow1694 rho)
    (r1695 : Seg15.relationRow1695 rho)
    (r1696 : Seg15.relationRow1696 rho)
    (r1697 : Seg15.relationRow1697 rho)
    (r1698 : Seg15.relationRow1698 rho)
    (r1699 : Seg15.relationRow1699 rho)
    (r1700 : Seg15.relationRow1700 rho)
    (r238 : Seg15.relationRow238 rho)
    (r1701 : Seg15.relationRow1701 rho)
    (r1702 : Seg15.relationRow1702 rho)
    (r1703 : Seg15.relationRow1703 rho)
    (r1704 : Seg15.relationRow1704 rho)
    (r1705 : Seg15.relationRow1705 rho)
    (r1706 : Seg15.relationRow1706 rho)
    (r1707 : Seg15.relationRow1707 rho)
    (r1708 : Seg15.relationRow1708 rho)
    (r239 : Seg15.relationRow239 rho)
    (r1709 : Seg15.relationRow1709 rho)
    (r1710 : Seg15.relationRow1710 rho)
    (r1711 : Seg15.relationRow1711 rho)
    (r1712 : Seg15.relationRow1712 rho)
    (r1713 : Seg15.relationRow1713 rho)
    (r1714 : Seg15.relationRow1714 rho)
    (r1715 : Seg15.relationRow1715 rho)
    (r1716 : Seg15.relationRow1716 rho)
    : ∀ i, 235 ≤ i → i ≤ 239 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step235 rho r235 r1677 r1678 r1679 r1680 r1681 r1682 r1683 r1684 hacc
  · exact seg15_step236 rho r236 r1685 r1686 r1687 r1688 r1689 r1690 r1691 r1692 hacc
  · exact seg15_step237 rho r237 r1693 r1694 r1695 r1696 r1697 r1698 r1699 r1700 hacc
  · exact seg15_step238 rho r238 r1701 r1702 r1703 r1704 r1705 r1706 r1707 r1708 hacc
  · exact seg15_step239 rho r239 r1709 r1710 r1711 r1712 r1713 r1714 r1715 r1716 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

