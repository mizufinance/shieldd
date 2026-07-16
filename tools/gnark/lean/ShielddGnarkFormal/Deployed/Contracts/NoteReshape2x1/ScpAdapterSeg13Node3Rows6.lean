import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node3_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1685 : Seg13.relationRow1685 rho)
    (r1686 : Seg13.relationRow1686 rho)
    (r1687 : Seg13.relationRow1687 rho)
    (r1688 : Seg13.relationRow1688 rho)
    (r1689 : Seg13.relationRow1689 rho)
    (tail : next (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg60 (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) next := by
  exact ⟨rho 8886, rho 8887, rho 8888, rho 8889, rho 8890, r1685, r1686, r1687, r1688, r1689, tail⟩

theorem seg13_scp_node3_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1690 : Seg13.relationRow1690 rho)
    (r1691 : Seg13.relationRow1691 rho)
    (r1692 : Seg13.relationRow1692 rho)
    (r1693 : Seg13.relationRow1693 rho)
    (r1694 : Seg13.relationRow1694 rho)
    (tail : next (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) (rho 8895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg61 (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) next := by
  exact ⟨rho 8891, rho 8892, rho 8893, rho 8894, rho 8895, r1690, r1691, r1692, r1693, r1694, tail⟩

theorem seg13_scp_node3_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1695 : Seg13.relationRow1695 rho)
    (r1696 : Seg13.relationRow1696 rho)
    (r1697 : Seg13.relationRow1697 rho)
    (r1698 : Seg13.relationRow1698 rho)
    (r1699 : Seg13.relationRow1699 rho)
    (tail : next (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) (rho 8895) (rho 8900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg62 (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) (rho 8895) next := by
  exact ⟨rho 8896, rho 8897, rho 8898, rho 8899, rho 8900, r1695, r1696, r1697, r1698, r1699, tail⟩

theorem seg13_scp_node3_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1700 : Seg13.relationRow1700 rho)
    (r1701 : Seg13.relationRow1701 rho)
    (r1702 : Seg13.relationRow1702 rho)
    (r1703 : Seg13.relationRow1703 rho)
    (r1704 : Seg13.relationRow1704 rho)
    (tail : next (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) (rho 8895) (rho 8900) (rho 8905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg63 (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) (rho 8895) (rho 8900) next := by
  exact ⟨rho 8901, rho 8902, rho 8903, rho 8904, rho 8905, r1700, r1701, r1702, r1703, r1704, tail⟩

theorem seg13_scp_node3_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1705 : Seg13.relationRow1705 rho)
    (r1706 : Seg13.relationRow1706 rho)
    (r1707 : Seg13.relationRow1707 rho)
    (r1708 : Seg13.relationRow1708 rho)
    (r1709 : Seg13.relationRow1709 rho)
    (tail : next (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg64 (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885) (rho 8890) (rho 8895) (rho 8900) (rho 8905) next := by
  exact ⟨rho 8906, rho 8907, rho 8908, rho 8909, rho 8910, r1705, r1706, r1707, r1708, r1709, tail⟩

theorem seg13_scp_node3_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1710 : Seg13.relationRow1710 rho)
    (r1711 : Seg13.relationRow1711 rho)
    (r1712 : Seg13.relationRow1712 rho)
    (r1713 : Seg13.relationRow1713 rho)
    (r1714 : Seg13.relationRow1714 rho)
    (tail : next (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg65 (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) next := by
  exact ⟨rho 8911, rho 8912, rho 8913, rho 8914, rho 8915, r1710, r1711, r1712, r1713, r1714, tail⟩

theorem seg13_scp_node3_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1715 : Seg13.relationRow1715 rho)
    (r1716 : Seg13.relationRow1716 rho)
    (r1717 : Seg13.relationRow1717 rho)
    (r1718 : Seg13.relationRow1718 rho)
    (r1719 : Seg13.relationRow1719 rho)
    (tail : next (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) (rho 8920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg66 (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) next := by
  exact ⟨rho 8916, rho 8917, rho 8918, rho 8919, rho 8920, r1715, r1716, r1717, r1718, r1719, tail⟩

theorem seg13_scp_node3_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1720 : Seg13.relationRow1720 rho)
    (r1721 : Seg13.relationRow1721 rho)
    (r1722 : Seg13.relationRow1722 rho)
    (r1723 : Seg13.relationRow1723 rho)
    (r1724 : Seg13.relationRow1724 rho)
    (tail : next (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) (rho 8920) (rho 8925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg67 (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) (rho 8920) next := by
  exact ⟨rho 8921, rho 8922, rho 8923, rho 8924, rho 8925, r1720, r1721, r1722, r1723, r1724, tail⟩

theorem seg13_scp_node3_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1725 : Seg13.relationRow1725 rho)
    (r1726 : Seg13.relationRow1726 rho)
    (r1727 : Seg13.relationRow1727 rho)
    (r1728 : Seg13.relationRow1728 rho)
    (r1729 : Seg13.relationRow1729 rho)
    (tail : next (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) (rho 8920) (rho 8925) (rho 8930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg68 (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) (rho 8920) (rho 8925) next := by
  exact ⟨rho 8926, rho 8927, rho 8928, rho 8929, rho 8930, r1725, r1726, r1727, r1728, r1729, tail⟩

theorem seg13_scp_node3_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1730 : Seg13.relationRow1730 rho)
    (r1731 : Seg13.relationRow1731 rho)
    (r1732 : Seg13.relationRow1732 rho)
    (r1733 : Seg13.relationRow1733 rho)
    (r1734 : Seg13.relationRow1734 rho)
    (tail : next (rho 8915) (rho 8920) (rho 8925) (rho 8930) (rho 8935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg69 (rho 8890) (rho 8895) (rho 8900) (rho 8905) (rho 8910) (rho 8915) (rho 8920) (rho 8925) (rho 8930) next := by
  exact ⟨rho 8931, rho 8932, rho 8933, rho 8934, rho 8935, r1730, r1731, r1732, r1733, r1734, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

