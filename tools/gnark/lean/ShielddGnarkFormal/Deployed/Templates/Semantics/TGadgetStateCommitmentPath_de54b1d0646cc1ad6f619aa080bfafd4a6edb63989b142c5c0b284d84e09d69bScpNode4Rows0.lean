import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node4_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1749 rho)
    (r1750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1750 rho)
    (r1751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1751 rho)
    (r1752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1752 rho)
    (r1753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1753 rho)
    (tail : next (rho 1744) (rho 1747) (rho 1745) (rho 1746) (rho 1748) (rho 1749) (rho 1750) (rho 1755)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg0 (rho 1742) (rho 1744) (rho 1747) (rho 1743) (rho 1745) (rho 1746) (rho 1748) (rho 1749) (rho 1750) next := by
  exact ⟨rho 1751, rho 1752, rho 1753, rho 1754, rho 1755, r1749, r1750, r1751, r1752, r1753, tail⟩

theorem template_scp_node4_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1754 rho)
    (r1755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1755 rho)
    (r1756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1756 rho)
    (r1757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1757 rho)
    (r1758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1758 rho)
    (tail : next (rho 1744) (rho 1747) (rho 1748) (rho 1749) (rho 1750) (rho 1755) (rho 1760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg1 (rho 1744) (rho 1747) (rho 1745) (rho 1746) (rho 1748) (rho 1749) (rho 1750) (rho 1755) next := by
  exact ⟨rho 1756, rho 1757, rho 1758, rho 1759, rho 1760, r1754, r1755, r1756, r1757, r1758, tail⟩

theorem template_scp_node4_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1759 rho)
    (r1760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1760 rho)
    (r1761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1761 rho)
    (r1762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1762 rho)
    (r1763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1763 rho)
    (tail : next (rho 1747) (rho 1750) (rho 1755) (rho 1760) (rho 1765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg2 (rho 1744) (rho 1747) (rho 1748) (rho 1749) (rho 1750) (rho 1755) (rho 1760) next := by
  exact ⟨rho 1761, rho 1762, rho 1763, rho 1764, rho 1765, r1759, r1760, r1761, r1762, r1763, tail⟩

theorem template_scp_node4_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r1764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1764 rho)
    (r1765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1765 rho)
    (r1766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1766 rho)
    (r1767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1767 rho)
    (r1768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1768 rho)
    (tail : next (rho 1755) (rho 1760) (rho 1765) (rho 1770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg3 (rho 1747) (rho 1750) (rho 1755) (rho 1760) (rho 1765) next := by
  exact ⟨rho 1766, rho 1767, rho 1768, rho 1769, rho 1770, r1764, r1765, r1766, r1767, r1768, tail⟩

theorem template_scp_node4_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1769 rho)
    (r1770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1770 rho)
    (r1771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1771 rho)
    (r1772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1772 rho)
    (r1773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1773 rho)
    (tail : next (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg4 (rho 1755) (rho 1760) (rho 1765) (rho 1770) next := by
  exact ⟨rho 1771, rho 1772, rho 1773, rho 1774, rho 1775, r1769, r1770, r1771, r1772, r1773, tail⟩

theorem template_scp_node4_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1774 rho)
    (r1775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1775 rho)
    (r1776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1776 rho)
    (r1777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1777 rho)
    (r1778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1778 rho)
    (tail : next (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) (rho 1780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg5 (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) next := by
  exact ⟨rho 1776, rho 1777, rho 1778, rho 1779, rho 1780, r1774, r1775, r1776, r1777, r1778, tail⟩

theorem template_scp_node4_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1779 rho)
    (r1780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1780 rho)
    (r1781 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1781 rho)
    (r1782 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1782 rho)
    (r1783 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1783 rho)
    (tail : next (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) (rho 1780) (rho 1785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg6 (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) (rho 1780) next := by
  exact ⟨rho 1781, rho 1782, rho 1783, rho 1784, rho 1785, r1779, r1780, r1781, r1782, r1783, tail⟩

theorem template_scp_node4_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1784 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1784 rho)
    (r1785 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1785 rho)
    (r1786 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1786 rho)
    (r1787 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1787 rho)
    (r1788 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1788 rho)
    (tail : next (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) (rho 1780) (rho 1785) (rho 1790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg7 (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) (rho 1780) (rho 1785) next := by
  exact ⟨rho 1786, rho 1787, rho 1788, rho 1789, rho 1790, r1784, r1785, r1786, r1787, r1788, tail⟩

theorem template_scp_node4_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1789 rho)
    (r1790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1790 rho)
    (r1791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1791 rho)
    (r1792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1792 rho)
    (r1793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1793 rho)
    (tail : next (rho 1775) (rho 1780) (rho 1785) (rho 1790) (rho 1795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg8 (rho 1755) (rho 1760) (rho 1765) (rho 1770) (rho 1775) (rho 1780) (rho 1785) (rho 1790) next := by
  exact ⟨rho 1791, rho 1792, rho 1793, rho 1794, rho 1795, r1789, r1790, r1791, r1792, r1793, tail⟩

theorem template_scp_node4_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1794 rho)
    (r1795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1795 rho)
    (r1796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1796 rho)
    (r1797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1797 rho)
    (r1798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1798 rho)
    (tail : next (rho 1775) (rho 1780) (rho 1785) (rho 1790) (rho 1795) (rho 1800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg9 (rho 1775) (rho 1780) (rho 1785) (rho 1790) (rho 1795) next := by
  exact ⟨rho 1796, rho 1797, rho 1798, rho 1799, rho 1800, r1794, r1795, r1796, r1797, r1798, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
