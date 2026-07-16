import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node4_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1749 : Seg28.relationRow1749 rho)
    (r1750 : Seg28.relationRow1750 rho)
    (r1751 : Seg28.relationRow1751 rho)
    (r1752 : Seg28.relationRow1752 rho)
    (r1753 : Seg28.relationRow1753 rho)
    (tail : next (rho 173) (rho 174) (rho 21122) (rho 21123) (rho 21124) (rho 21125) (rho 21126) (rho 21131)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg0 (rho 172) (rho 173) (rho 174) (rho 21121) (rho 21122) (rho 21123) (rho 21124) (rho 21125) (rho 21126) next := by
  exact ⟨rho 21127, rho 21128, rho 21129, rho 21130, rho 21131, r1749, r1750, r1751, r1752, r1753, tail⟩

theorem seg28_scp_node4_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1754 : Seg28.relationRow1754 rho)
    (r1755 : Seg28.relationRow1755 rho)
    (r1756 : Seg28.relationRow1756 rho)
    (r1757 : Seg28.relationRow1757 rho)
    (r1758 : Seg28.relationRow1758 rho)
    (tail : next (rho 173) (rho 174) (rho 21124) (rho 21125) (rho 21126) (rho 21131) (rho 21136)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg1 (rho 173) (rho 174) (rho 21122) (rho 21123) (rho 21124) (rho 21125) (rho 21126) (rho 21131) next := by
  exact ⟨rho 21132, rho 21133, rho 21134, rho 21135, rho 21136, r1754, r1755, r1756, r1757, r1758, tail⟩

theorem seg28_scp_node4_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1759 : Seg28.relationRow1759 rho)
    (r1760 : Seg28.relationRow1760 rho)
    (r1761 : Seg28.relationRow1761 rho)
    (r1762 : Seg28.relationRow1762 rho)
    (r1763 : Seg28.relationRow1763 rho)
    (tail : next (rho 174) (rho 21126) (rho 21131) (rho 21136) (rho 21141)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg2 (rho 173) (rho 174) (rho 21124) (rho 21125) (rho 21126) (rho 21131) (rho 21136) next := by
  exact ⟨rho 21137, rho 21138, rho 21139, rho 21140, rho 21141, r1759, r1760, r1761, r1762, r1763, tail⟩

theorem seg28_scp_node4_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1764 : Seg28.relationRow1764 rho)
    (r1765 : Seg28.relationRow1765 rho)
    (r1766 : Seg28.relationRow1766 rho)
    (r1767 : Seg28.relationRow1767 rho)
    (r1768 : Seg28.relationRow1768 rho)
    (tail : next (rho 21131) (rho 21136) (rho 21141) (rho 21146)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg3 (rho 174) (rho 21126) (rho 21131) (rho 21136) (rho 21141) next := by
  exact ⟨rho 21142, rho 21143, rho 21144, rho 21145, rho 21146, r1764, r1765, r1766, r1767, r1768, tail⟩

theorem seg28_scp_node4_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1769 : Seg28.relationRow1769 rho)
    (r1770 : Seg28.relationRow1770 rho)
    (r1771 : Seg28.relationRow1771 rho)
    (r1772 : Seg28.relationRow1772 rho)
    (r1773 : Seg28.relationRow1773 rho)
    (tail : next (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg4 (rho 21131) (rho 21136) (rho 21141) (rho 21146) next := by
  exact ⟨rho 21147, rho 21148, rho 21149, rho 21150, rho 21151, r1769, r1770, r1771, r1772, r1773, tail⟩

theorem seg28_scp_node4_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1774 : Seg28.relationRow1774 rho)
    (r1775 : Seg28.relationRow1775 rho)
    (r1776 : Seg28.relationRow1776 rho)
    (r1777 : Seg28.relationRow1777 rho)
    (r1778 : Seg28.relationRow1778 rho)
    (tail : next (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) (rho 21156)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg5 (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) next := by
  exact ⟨rho 21152, rho 21153, rho 21154, rho 21155, rho 21156, r1774, r1775, r1776, r1777, r1778, tail⟩

theorem seg28_scp_node4_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1779 : Seg28.relationRow1779 rho)
    (r1780 : Seg28.relationRow1780 rho)
    (r1781 : Seg28.relationRow1781 rho)
    (r1782 : Seg28.relationRow1782 rho)
    (r1783 : Seg28.relationRow1783 rho)
    (tail : next (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) (rho 21156) (rho 21161)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg6 (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) (rho 21156) next := by
  exact ⟨rho 21157, rho 21158, rho 21159, rho 21160, rho 21161, r1779, r1780, r1781, r1782, r1783, tail⟩

theorem seg28_scp_node4_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1784 : Seg28.relationRow1784 rho)
    (r1785 : Seg28.relationRow1785 rho)
    (r1786 : Seg28.relationRow1786 rho)
    (r1787 : Seg28.relationRow1787 rho)
    (r1788 : Seg28.relationRow1788 rho)
    (tail : next (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) (rho 21156) (rho 21161) (rho 21166)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg7 (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) (rho 21156) (rho 21161) next := by
  exact ⟨rho 21162, rho 21163, rho 21164, rho 21165, rho 21166, r1784, r1785, r1786, r1787, r1788, tail⟩

theorem seg28_scp_node4_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1789 : Seg28.relationRow1789 rho)
    (r1790 : Seg28.relationRow1790 rho)
    (r1791 : Seg28.relationRow1791 rho)
    (r1792 : Seg28.relationRow1792 rho)
    (r1793 : Seg28.relationRow1793 rho)
    (tail : next (rho 21151) (rho 21156) (rho 21161) (rho 21166) (rho 21171)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg8 (rho 21131) (rho 21136) (rho 21141) (rho 21146) (rho 21151) (rho 21156) (rho 21161) (rho 21166) next := by
  exact ⟨rho 21167, rho 21168, rho 21169, rho 21170, rho 21171, r1789, r1790, r1791, r1792, r1793, tail⟩

theorem seg28_scp_node4_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1794 : Seg28.relationRow1794 rho)
    (r1795 : Seg28.relationRow1795 rho)
    (r1796 : Seg28.relationRow1796 rho)
    (r1797 : Seg28.relationRow1797 rho)
    (r1798 : Seg28.relationRow1798 rho)
    (tail : next (rho 21151) (rho 21156) (rho 21161) (rho 21166) (rho 21171) (rho 21176)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_280afe.seg9 (rho 21151) (rho 21156) (rho 21161) (rho 21166) (rho 21171) next := by
  exact ⟨rho 21172, rho 21173, rho 21174, rho 21175, rho 21176, r1794, r1795, r1796, r1797, r1798, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

