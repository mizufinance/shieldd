import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step240
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step241
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step242
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step243
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step244

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps18 (rho : Nat -> Seg30.F)
    (r240 : Seg30.relationRow240 rho)
    (r1717 : Seg30.relationRow1717 rho)
    (r1718 : Seg30.relationRow1718 rho)
    (r1719 : Seg30.relationRow1719 rho)
    (r1720 : Seg30.relationRow1720 rho)
    (r1721 : Seg30.relationRow1721 rho)
    (r1722 : Seg30.relationRow1722 rho)
    (r1723 : Seg30.relationRow1723 rho)
    (r1724 : Seg30.relationRow1724 rho)
    (r241 : Seg30.relationRow241 rho)
    (r1725 : Seg30.relationRow1725 rho)
    (r1726 : Seg30.relationRow1726 rho)
    (r1727 : Seg30.relationRow1727 rho)
    (r1728 : Seg30.relationRow1728 rho)
    (r1729 : Seg30.relationRow1729 rho)
    (r1730 : Seg30.relationRow1730 rho)
    (r1731 : Seg30.relationRow1731 rho)
    (r1732 : Seg30.relationRow1732 rho)
    (r242 : Seg30.relationRow242 rho)
    (r1733 : Seg30.relationRow1733 rho)
    (r1734 : Seg30.relationRow1734 rho)
    (r1735 : Seg30.relationRow1735 rho)
    (r1736 : Seg30.relationRow1736 rho)
    (r1737 : Seg30.relationRow1737 rho)
    (r1738 : Seg30.relationRow1738 rho)
    (r1739 : Seg30.relationRow1739 rho)
    (r1740 : Seg30.relationRow1740 rho)
    (r243 : Seg30.relationRow243 rho)
    (r1741 : Seg30.relationRow1741 rho)
    (r1742 : Seg30.relationRow1742 rho)
    (r1743 : Seg30.relationRow1743 rho)
    (r1744 : Seg30.relationRow1744 rho)
    (r1745 : Seg30.relationRow1745 rho)
    (r1746 : Seg30.relationRow1746 rho)
    (r1747 : Seg30.relationRow1747 rho)
    (r1748 : Seg30.relationRow1748 rho)
    (r244 : Seg30.relationRow244 rho)
    (r1749 : Seg30.relationRow1749 rho)
    (r1750 : Seg30.relationRow1750 rho)
    (r1751 : Seg30.relationRow1751 rho)
    (r1752 : Seg30.relationRow1752 rho)
    (r1753 : Seg30.relationRow1753 rho)
    (r1754 : Seg30.relationRow1754 rho)
    (r1755 : Seg30.relationRow1755 rho)
    (r1756 : Seg30.relationRow1756 rho)
    : ∀ i, 240 ≤ i → i ≤ 244 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step240 rho r240 r1717 r1718 r1719 r1720 r1721 r1722 r1723 r1724 hacc
  · exact seg30_step241 rho r241 r1725 r1726 r1727 r1728 r1729 r1730 r1731 r1732 hacc
  · exact seg30_step242 rho r242 r1733 r1734 r1735 r1736 r1737 r1738 r1739 r1740 hacc
  · exact seg30_step243 rho r243 r1741 r1742 r1743 r1744 r1745 r1746 r1747 r1748 hacc
  · exact seg30_step244 rho r244 r1749 r1750 r1751 r1752 r1753 r1754 r1755 r1756 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

