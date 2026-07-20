import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step240
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step241
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step242
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step243
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Step244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps18 (rho : Nat -> Seg15.F)
    (r240 : Seg15.relationRow240 rho)
    (r1717 : Seg15.relationRow1717 rho)
    (r1718 : Seg15.relationRow1718 rho)
    (r1719 : Seg15.relationRow1719 rho)
    (r1720 : Seg15.relationRow1720 rho)
    (r1721 : Seg15.relationRow1721 rho)
    (r1722 : Seg15.relationRow1722 rho)
    (r1723 : Seg15.relationRow1723 rho)
    (r1724 : Seg15.relationRow1724 rho)
    (r241 : Seg15.relationRow241 rho)
    (r1725 : Seg15.relationRow1725 rho)
    (r1726 : Seg15.relationRow1726 rho)
    (r1727 : Seg15.relationRow1727 rho)
    (r1728 : Seg15.relationRow1728 rho)
    (r1729 : Seg15.relationRow1729 rho)
    (r1730 : Seg15.relationRow1730 rho)
    (r1731 : Seg15.relationRow1731 rho)
    (r1732 : Seg15.relationRow1732 rho)
    (r242 : Seg15.relationRow242 rho)
    (r1733 : Seg15.relationRow1733 rho)
    (r1734 : Seg15.relationRow1734 rho)
    (r1735 : Seg15.relationRow1735 rho)
    (r1736 : Seg15.relationRow1736 rho)
    (r1737 : Seg15.relationRow1737 rho)
    (r1738 : Seg15.relationRow1738 rho)
    (r1739 : Seg15.relationRow1739 rho)
    (r1740 : Seg15.relationRow1740 rho)
    (r243 : Seg15.relationRow243 rho)
    (r1741 : Seg15.relationRow1741 rho)
    (r1742 : Seg15.relationRow1742 rho)
    (r1743 : Seg15.relationRow1743 rho)
    (r1744 : Seg15.relationRow1744 rho)
    (r1745 : Seg15.relationRow1745 rho)
    (r1746 : Seg15.relationRow1746 rho)
    (r1747 : Seg15.relationRow1747 rho)
    (r1748 : Seg15.relationRow1748 rho)
    (r244 : Seg15.relationRow244 rho)
    (r1749 : Seg15.relationRow1749 rho)
    (r1750 : Seg15.relationRow1750 rho)
    (r1751 : Seg15.relationRow1751 rho)
    (r1752 : Seg15.relationRow1752 rho)
    (r1753 : Seg15.relationRow1753 rho)
    (r1754 : Seg15.relationRow1754 rho)
    (r1755 : Seg15.relationRow1755 rho)
    (r1756 : Seg15.relationRow1756 rho)
    : ∀ i, 240 ≤ i → i ≤ 244 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step240 rho r240 r1717 r1718 r1719 r1720 r1721 r1722 r1723 r1724 hacc
  · exact seg15_step241 rho r241 r1725 r1726 r1727 r1728 r1729 r1730 r1731 r1732 hacc
  · exact seg15_step242 rho r242 r1733 r1734 r1735 r1736 r1737 r1738 r1739 r1740 hacc
  · exact seg15_step243 rho r243 r1741 r1742 r1743 r1744 r1745 r1746 r1747 r1748 hacc
  · exact seg15_step244 rho r244 r1749 r1750 r1751 r1752 r1753 r1754 r1755 r1756 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

