import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node4_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1749 rho)
    (r1750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1750 rho)
    (r1751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1751 rho)
    (r1752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1752 rho)
    (r1753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1753 rho)
    (tail : next (rho 1745) (rho 1748) (rho 1746) (rho 1747) (rho 1749) (rho 1750) (rho 1751) (rho 1756)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg0 (rho 1743) (rho 1745) (rho 1748) (rho 1744) (rho 1746) (rho 1747) (rho 1749) (rho 1750) (rho 1751) next := by
  exact ⟨rho 1752, rho 1753, rho 1754, rho 1755, rho 1756, r1749, r1750, r1751, r1752, r1753, tail⟩

theorem template_scp_node4_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1754 rho)
    (r1755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1755 rho)
    (r1756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1756 rho)
    (r1757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1757 rho)
    (r1758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1758 rho)
    (tail : next (rho 1745) (rho 1748) (rho 1749) (rho 1750) (rho 1751) (rho 1756) (rho 1761)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg1 (rho 1745) (rho 1748) (rho 1746) (rho 1747) (rho 1749) (rho 1750) (rho 1751) (rho 1756) next := by
  exact ⟨rho 1757, rho 1758, rho 1759, rho 1760, rho 1761, r1754, r1755, r1756, r1757, r1758, tail⟩

theorem template_scp_node4_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1759 rho)
    (r1760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1760 rho)
    (r1761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1761 rho)
    (r1762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1762 rho)
    (r1763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1763 rho)
    (tail : next (rho 1748) (rho 1751) (rho 1756) (rho 1761) (rho 1766)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg2 (rho 1745) (rho 1748) (rho 1749) (rho 1750) (rho 1751) (rho 1756) (rho 1761) next := by
  exact ⟨rho 1762, rho 1763, rho 1764, rho 1765, rho 1766, r1759, r1760, r1761, r1762, r1763, tail⟩

theorem template_scp_node4_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r1764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1764 rho)
    (r1765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1765 rho)
    (r1766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1766 rho)
    (r1767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1767 rho)
    (r1768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1768 rho)
    (tail : next (rho 1756) (rho 1761) (rho 1766) (rho 1771)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg3 (rho 1748) (rho 1751) (rho 1756) (rho 1761) (rho 1766) next := by
  exact ⟨rho 1767, rho 1768, rho 1769, rho 1770, rho 1771, r1764, r1765, r1766, r1767, r1768, tail⟩

theorem template_scp_node4_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1769 rho)
    (r1770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1770 rho)
    (r1771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1771 rho)
    (r1772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1772 rho)
    (r1773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1773 rho)
    (tail : next (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg4 (rho 1756) (rho 1761) (rho 1766) (rho 1771) next := by
  exact ⟨rho 1772, rho 1773, rho 1774, rho 1775, rho 1776, r1769, r1770, r1771, r1772, r1773, tail⟩

theorem template_scp_node4_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1774 rho)
    (r1775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1775 rho)
    (r1776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1776 rho)
    (r1777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1777 rho)
    (r1778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1778 rho)
    (tail : next (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) (rho 1781)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg5 (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) next := by
  exact ⟨rho 1777, rho 1778, rho 1779, rho 1780, rho 1781, r1774, r1775, r1776, r1777, r1778, tail⟩

theorem template_scp_node4_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1779 rho)
    (r1780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1780 rho)
    (r1781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1781 rho)
    (r1782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1782 rho)
    (r1783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1783 rho)
    (tail : next (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) (rho 1781) (rho 1786)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg6 (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) (rho 1781) next := by
  exact ⟨rho 1782, rho 1783, rho 1784, rho 1785, rho 1786, r1779, r1780, r1781, r1782, r1783, tail⟩

theorem template_scp_node4_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1784 rho)
    (r1785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1785 rho)
    (r1786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1786 rho)
    (r1787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1787 rho)
    (r1788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1788 rho)
    (tail : next (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) (rho 1781) (rho 1786) (rho 1791)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg7 (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) (rho 1781) (rho 1786) next := by
  exact ⟨rho 1787, rho 1788, rho 1789, rho 1790, rho 1791, r1784, r1785, r1786, r1787, r1788, tail⟩

theorem template_scp_node4_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1789 rho)
    (r1790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1790 rho)
    (r1791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1791 rho)
    (r1792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1792 rho)
    (r1793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1793 rho)
    (tail : next (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg8 (rho 1756) (rho 1761) (rho 1766) (rho 1771) (rho 1776) (rho 1781) (rho 1786) (rho 1791) next := by
  exact ⟨rho 1792, rho 1793, rho 1794, rho 1795, rho 1796, r1789, r1790, r1791, r1792, r1793, tail⟩

theorem template_scp_node4_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1794 rho)
    (r1795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1795 rho)
    (r1796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1796 rho)
    (r1797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1797 rho)
    (r1798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1798 rho)
    (tail : next (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) (rho 1801)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg9 (rho 1776) (rho 1781) (rho 1786) (rho 1791) (rho 1796) next := by
  exact ⟨rho 1797, rho 1798, rho 1799, rho 1800, rho 1801, r1794, r1795, r1796, r1797, r1798, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
