import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node4_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1749 : Seg13.relationRow1749 rho)
    (r1750 : Seg13.relationRow1750 rho)
    (r1751 : Seg13.relationRow1751 rho)
    (r1752 : Seg13.relationRow1752 rho)
    (r1753 : Seg13.relationRow1753 rho)
    (tail : next (rho 83) (rho 84) (rho 8935) (rho 8936) (rho 8937) (rho 8938) (rho 8939) (rho 8944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg0 (rho 82) (rho 83) (rho 84) (rho 8934) (rho 8935) (rho 8936) (rho 8937) (rho 8938) (rho 8939) next := by
  exact ⟨rho 8940, rho 8941, rho 8942, rho 8943, rho 8944, r1749, r1750, r1751, r1752, r1753, tail⟩

theorem seg13_scp_node4_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1754 : Seg13.relationRow1754 rho)
    (r1755 : Seg13.relationRow1755 rho)
    (r1756 : Seg13.relationRow1756 rho)
    (r1757 : Seg13.relationRow1757 rho)
    (r1758 : Seg13.relationRow1758 rho)
    (tail : next (rho 83) (rho 84) (rho 8937) (rho 8938) (rho 8939) (rho 8944) (rho 8949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg1 (rho 83) (rho 84) (rho 8935) (rho 8936) (rho 8937) (rho 8938) (rho 8939) (rho 8944) next := by
  exact ⟨rho 8945, rho 8946, rho 8947, rho 8948, rho 8949, r1754, r1755, r1756, r1757, r1758, tail⟩

theorem seg13_scp_node4_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1759 : Seg13.relationRow1759 rho)
    (r1760 : Seg13.relationRow1760 rho)
    (r1761 : Seg13.relationRow1761 rho)
    (r1762 : Seg13.relationRow1762 rho)
    (r1763 : Seg13.relationRow1763 rho)
    (tail : next (rho 84) (rho 8939) (rho 8944) (rho 8949) (rho 8954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg2 (rho 83) (rho 84) (rho 8937) (rho 8938) (rho 8939) (rho 8944) (rho 8949) next := by
  exact ⟨rho 8950, rho 8951, rho 8952, rho 8953, rho 8954, r1759, r1760, r1761, r1762, r1763, tail⟩

theorem seg13_scp_node4_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1764 : Seg13.relationRow1764 rho)
    (r1765 : Seg13.relationRow1765 rho)
    (r1766 : Seg13.relationRow1766 rho)
    (r1767 : Seg13.relationRow1767 rho)
    (r1768 : Seg13.relationRow1768 rho)
    (tail : next (rho 8944) (rho 8949) (rho 8954) (rho 8959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg3 (rho 84) (rho 8939) (rho 8944) (rho 8949) (rho 8954) next := by
  exact ⟨rho 8955, rho 8956, rho 8957, rho 8958, rho 8959, r1764, r1765, r1766, r1767, r1768, tail⟩

theorem seg13_scp_node4_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1769 : Seg13.relationRow1769 rho)
    (r1770 : Seg13.relationRow1770 rho)
    (r1771 : Seg13.relationRow1771 rho)
    (r1772 : Seg13.relationRow1772 rho)
    (r1773 : Seg13.relationRow1773 rho)
    (tail : next (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg4 (rho 8944) (rho 8949) (rho 8954) (rho 8959) next := by
  exact ⟨rho 8960, rho 8961, rho 8962, rho 8963, rho 8964, r1769, r1770, r1771, r1772, r1773, tail⟩

theorem seg13_scp_node4_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1774 : Seg13.relationRow1774 rho)
    (r1775 : Seg13.relationRow1775 rho)
    (r1776 : Seg13.relationRow1776 rho)
    (r1777 : Seg13.relationRow1777 rho)
    (r1778 : Seg13.relationRow1778 rho)
    (tail : next (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) (rho 8969)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg5 (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) next := by
  exact ⟨rho 8965, rho 8966, rho 8967, rho 8968, rho 8969, r1774, r1775, r1776, r1777, r1778, tail⟩

theorem seg13_scp_node4_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1779 : Seg13.relationRow1779 rho)
    (r1780 : Seg13.relationRow1780 rho)
    (r1781 : Seg13.relationRow1781 rho)
    (r1782 : Seg13.relationRow1782 rho)
    (r1783 : Seg13.relationRow1783 rho)
    (tail : next (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) (rho 8969) (rho 8974)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg6 (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) (rho 8969) next := by
  exact ⟨rho 8970, rho 8971, rho 8972, rho 8973, rho 8974, r1779, r1780, r1781, r1782, r1783, tail⟩

theorem seg13_scp_node4_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1784 : Seg13.relationRow1784 rho)
    (r1785 : Seg13.relationRow1785 rho)
    (r1786 : Seg13.relationRow1786 rho)
    (r1787 : Seg13.relationRow1787 rho)
    (r1788 : Seg13.relationRow1788 rho)
    (tail : next (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) (rho 8969) (rho 8974) (rho 8979)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg7 (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) (rho 8969) (rho 8974) next := by
  exact ⟨rho 8975, rho 8976, rho 8977, rho 8978, rho 8979, r1784, r1785, r1786, r1787, r1788, tail⟩

theorem seg13_scp_node4_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1789 : Seg13.relationRow1789 rho)
    (r1790 : Seg13.relationRow1790 rho)
    (r1791 : Seg13.relationRow1791 rho)
    (r1792 : Seg13.relationRow1792 rho)
    (r1793 : Seg13.relationRow1793 rho)
    (tail : next (rho 8964) (rho 8969) (rho 8974) (rho 8979) (rho 8984)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg8 (rho 8944) (rho 8949) (rho 8954) (rho 8959) (rho 8964) (rho 8969) (rho 8974) (rho 8979) next := by
  exact ⟨rho 8980, rho 8981, rho 8982, rho 8983, rho 8984, r1789, r1790, r1791, r1792, r1793, tail⟩

theorem seg13_scp_node4_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1794 : Seg13.relationRow1794 rho)
    (r1795 : Seg13.relationRow1795 rho)
    (r1796 : Seg13.relationRow1796 rho)
    (r1797 : Seg13.relationRow1797 rho)
    (r1798 : Seg13.relationRow1798 rho)
    (tail : next (rho 8964) (rho 8969) (rho 8974) (rho 8979) (rho 8984) (rho 8989)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode4350_b95b10.seg9 (rho 8964) (rho 8969) (rho 8974) (rho 8979) (rho 8984) next := by
  exact ⟨rho 8985, rho 8986, rho 8987, rho 8988, rho 8989, r1794, r1795, r1796, r1797, r1798, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

