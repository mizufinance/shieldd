import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step245
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step246
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step247
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step248
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Step249

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_steps19 (rho : Nat -> Seg15.F)
    (r245 : Seg15.relationRow245 rho)
    (r1757 : Seg15.relationRow1757 rho)
    (r1758 : Seg15.relationRow1758 rho)
    (r1759 : Seg15.relationRow1759 rho)
    (r1760 : Seg15.relationRow1760 rho)
    (r1761 : Seg15.relationRow1761 rho)
    (r1762 : Seg15.relationRow1762 rho)
    (r1763 : Seg15.relationRow1763 rho)
    (r1764 : Seg15.relationRow1764 rho)
    (r246 : Seg15.relationRow246 rho)
    (r1765 : Seg15.relationRow1765 rho)
    (r1766 : Seg15.relationRow1766 rho)
    (r1767 : Seg15.relationRow1767 rho)
    (r1768 : Seg15.relationRow1768 rho)
    (r1769 : Seg15.relationRow1769 rho)
    (r1770 : Seg15.relationRow1770 rho)
    (r1771 : Seg15.relationRow1771 rho)
    (r1772 : Seg15.relationRow1772 rho)
    (r247 : Seg15.relationRow247 rho)
    (r1773 : Seg15.relationRow1773 rho)
    (r1774 : Seg15.relationRow1774 rho)
    (r1775 : Seg15.relationRow1775 rho)
    (r1776 : Seg15.relationRow1776 rho)
    (r1777 : Seg15.relationRow1777 rho)
    (r1778 : Seg15.relationRow1778 rho)
    (r1779 : Seg15.relationRow1779 rho)
    (r1780 : Seg15.relationRow1780 rho)
    (r248 : Seg15.relationRow248 rho)
    (r1781 : Seg15.relationRow1781 rho)
    (r1782 : Seg15.relationRow1782 rho)
    (r1783 : Seg15.relationRow1783 rho)
    (r1784 : Seg15.relationRow1784 rho)
    (r1785 : Seg15.relationRow1785 rho)
    (r1786 : Seg15.relationRow1786 rho)
    (r1787 : Seg15.relationRow1787 rho)
    (r1788 : Seg15.relationRow1788 rho)
    (r249 : Seg15.relationRow249 rho)
    (r1789 : Seg15.relationRow1789 rho)
    (r1790 : Seg15.relationRow1790 rho)
    (r1791 : Seg15.relationRow1791 rho)
    (r1792 : Seg15.relationRow1792 rho)
    (r1793 : Seg15.relationRow1793 rho)
    (r1794 : Seg15.relationRow1794 rho)
    (r1795 : Seg15.relationRow1795 rho)
    (r1796 : Seg15.relationRow1796 rho)
    : ∀ i, 245 ≤ i → i ≤ 249 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16136 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_step245 rho r245 r1757 r1758 r1759 r1760 r1761 r1762 r1763 r1764 hacc
  · exact seg15_step246 rho r246 r1765 r1766 r1767 r1768 r1769 r1770 r1771 r1772 hacc
  · exact seg15_step247 rho r247 r1773 r1774 r1775 r1776 r1777 r1778 r1779 r1780 hacc
  · exact seg15_step248 rho r248 r1781 r1782 r1783 r1784 r1785 r1786 r1787 r1788 hacc
  · exact seg15_step249 rho r249 r1789 r1790 r1791 r1792 r1793 r1794 r1795 r1796 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

