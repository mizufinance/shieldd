import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node3_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1685 : Seg28.relationRow1685 rho)
    (r1686 : Seg28.relationRow1686 rho)
    (r1687 : Seg28.relationRow1687 rho)
    (r1688 : Seg28.relationRow1688 rho)
    (r1689 : Seg28.relationRow1689 rho)
    (tail : next (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg60 (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) next := by
  exact ⟨rho 21067, rho 21068, rho 21069, rho 21070, rho 21071, r1685, r1686, r1687, r1688, r1689, tail⟩

theorem seg28_scp_node3_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1690 : Seg28.relationRow1690 rho)
    (r1691 : Seg28.relationRow1691 rho)
    (r1692 : Seg28.relationRow1692 rho)
    (r1693 : Seg28.relationRow1693 rho)
    (r1694 : Seg28.relationRow1694 rho)
    (tail : next (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) (rho 21076)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg61 (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) next := by
  exact ⟨rho 21072, rho 21073, rho 21074, rho 21075, rho 21076, r1690, r1691, r1692, r1693, r1694, tail⟩

theorem seg28_scp_node3_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1695 : Seg28.relationRow1695 rho)
    (r1696 : Seg28.relationRow1696 rho)
    (r1697 : Seg28.relationRow1697 rho)
    (r1698 : Seg28.relationRow1698 rho)
    (r1699 : Seg28.relationRow1699 rho)
    (tail : next (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) (rho 21076) (rho 21081)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg62 (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) (rho 21076) next := by
  exact ⟨rho 21077, rho 21078, rho 21079, rho 21080, rho 21081, r1695, r1696, r1697, r1698, r1699, tail⟩

theorem seg28_scp_node3_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1700 : Seg28.relationRow1700 rho)
    (r1701 : Seg28.relationRow1701 rho)
    (r1702 : Seg28.relationRow1702 rho)
    (r1703 : Seg28.relationRow1703 rho)
    (r1704 : Seg28.relationRow1704 rho)
    (tail : next (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) (rho 21076) (rho 21081) (rho 21086)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg63 (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) (rho 21076) (rho 21081) next := by
  exact ⟨rho 21082, rho 21083, rho 21084, rho 21085, rho 21086, r1700, r1701, r1702, r1703, r1704, tail⟩

theorem seg28_scp_node3_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1705 : Seg28.relationRow1705 rho)
    (r1706 : Seg28.relationRow1706 rho)
    (r1707 : Seg28.relationRow1707 rho)
    (r1708 : Seg28.relationRow1708 rho)
    (r1709 : Seg28.relationRow1709 rho)
    (tail : next (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg64 (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066) (rho 21071) (rho 21076) (rho 21081) (rho 21086) next := by
  exact ⟨rho 21087, rho 21088, rho 21089, rho 21090, rho 21091, r1705, r1706, r1707, r1708, r1709, tail⟩

theorem seg28_scp_node3_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1710 : Seg28.relationRow1710 rho)
    (r1711 : Seg28.relationRow1711 rho)
    (r1712 : Seg28.relationRow1712 rho)
    (r1713 : Seg28.relationRow1713 rho)
    (r1714 : Seg28.relationRow1714 rho)
    (tail : next (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg65 (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) next := by
  exact ⟨rho 21092, rho 21093, rho 21094, rho 21095, rho 21096, r1710, r1711, r1712, r1713, r1714, tail⟩

theorem seg28_scp_node3_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1715 : Seg28.relationRow1715 rho)
    (r1716 : Seg28.relationRow1716 rho)
    (r1717 : Seg28.relationRow1717 rho)
    (r1718 : Seg28.relationRow1718 rho)
    (r1719 : Seg28.relationRow1719 rho)
    (tail : next (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) (rho 21101)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg66 (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) next := by
  exact ⟨rho 21097, rho 21098, rho 21099, rho 21100, rho 21101, r1715, r1716, r1717, r1718, r1719, tail⟩

theorem seg28_scp_node3_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1720 : Seg28.relationRow1720 rho)
    (r1721 : Seg28.relationRow1721 rho)
    (r1722 : Seg28.relationRow1722 rho)
    (r1723 : Seg28.relationRow1723 rho)
    (r1724 : Seg28.relationRow1724 rho)
    (tail : next (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) (rho 21101) (rho 21106)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg67 (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) (rho 21101) next := by
  exact ⟨rho 21102, rho 21103, rho 21104, rho 21105, rho 21106, r1720, r1721, r1722, r1723, r1724, tail⟩

theorem seg28_scp_node3_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1725 : Seg28.relationRow1725 rho)
    (r1726 : Seg28.relationRow1726 rho)
    (r1727 : Seg28.relationRow1727 rho)
    (r1728 : Seg28.relationRow1728 rho)
    (r1729 : Seg28.relationRow1729 rho)
    (tail : next (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) (rho 21101) (rho 21106) (rho 21111)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg68 (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) (rho 21101) (rho 21106) next := by
  exact ⟨rho 21107, rho 21108, rho 21109, rho 21110, rho 21111, r1725, r1726, r1727, r1728, r1729, tail⟩

theorem seg28_scp_node3_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1730 : Seg28.relationRow1730 rho)
    (r1731 : Seg28.relationRow1731 rho)
    (r1732 : Seg28.relationRow1732 rho)
    (r1733 : Seg28.relationRow1733 rho)
    (r1734 : Seg28.relationRow1734 rho)
    (tail : next (rho 21096) (rho 21101) (rho 21106) (rho 21111) (rho 21116)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg69 (rho 21071) (rho 21076) (rho 21081) (rho 21086) (rho 21091) (rho 21096) (rho 21101) (rho 21106) (rho 21111) next := by
  exact ⟨rho 21112, rho 21113, rho 21114, rho 21115, rho 21116, r1730, r1731, r1732, r1733, r1734, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

