import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1685 rho)
    (r1686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1686 rho)
    (r1687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1687 rho)
    (r1688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1688 rho)
    (r1689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1689 rho)
    (tail : next (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg60 (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) next := by
  exact ⟨rho 1689, rho 1690, rho 1691, rho 1692, rho 1693, r1685, r1686, r1687, r1688, r1689, tail⟩

theorem template_scp_node3_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1690 rho)
    (r1691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1691 rho)
    (r1692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1692 rho)
    (r1693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1693 rho)
    (r1694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1694 rho)
    (tail : next (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) (rho 1698)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg61 (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) next := by
  exact ⟨rho 1694, rho 1695, rho 1696, rho 1697, rho 1698, r1690, r1691, r1692, r1693, r1694, tail⟩

theorem template_scp_node3_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1695 rho)
    (r1696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1696 rho)
    (r1697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1697 rho)
    (r1698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1698 rho)
    (r1699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1699 rho)
    (tail : next (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) (rho 1698) (rho 1703)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg62 (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) (rho 1698) next := by
  exact ⟨rho 1699, rho 1700, rho 1701, rho 1702, rho 1703, r1695, r1696, r1697, r1698, r1699, tail⟩

theorem template_scp_node3_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1700 rho)
    (r1701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1701 rho)
    (r1702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1702 rho)
    (r1703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1703 rho)
    (r1704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1704 rho)
    (tail : next (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) (rho 1698) (rho 1703) (rho 1708)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg63 (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) (rho 1698) (rho 1703) next := by
  exact ⟨rho 1704, rho 1705, rho 1706, rho 1707, rho 1708, r1700, r1701, r1702, r1703, r1704, tail⟩

theorem template_scp_node3_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1705 rho)
    (r1706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1706 rho)
    (r1707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1707 rho)
    (r1708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1708 rho)
    (r1709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1709 rho)
    (tail : next (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg64 (rho 1668) (rho 1673) (rho 1678) (rho 1683) (rho 1688) (rho 1693) (rho 1698) (rho 1703) (rho 1708) next := by
  exact ⟨rho 1709, rho 1710, rho 1711, rho 1712, rho 1713, r1705, r1706, r1707, r1708, r1709, tail⟩

theorem template_scp_node3_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1710 rho)
    (r1711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1711 rho)
    (r1712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1712 rho)
    (r1713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1713 rho)
    (r1714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1714 rho)
    (tail : next (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg65 (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) next := by
  exact ⟨rho 1714, rho 1715, rho 1716, rho 1717, rho 1718, r1710, r1711, r1712, r1713, r1714, tail⟩

theorem template_scp_node3_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1715 rho)
    (r1716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1716 rho)
    (r1717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1717 rho)
    (r1718 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1718 rho)
    (r1719 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1719 rho)
    (tail : next (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) (rho 1723)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg66 (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) next := by
  exact ⟨rho 1719, rho 1720, rho 1721, rho 1722, rho 1723, r1715, r1716, r1717, r1718, r1719, tail⟩

theorem template_scp_node3_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1720 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1720 rho)
    (r1721 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1721 rho)
    (r1722 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1722 rho)
    (r1723 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1723 rho)
    (r1724 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1724 rho)
    (tail : next (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) (rho 1723) (rho 1728)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg67 (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) (rho 1723) next := by
  exact ⟨rho 1724, rho 1725, rho 1726, rho 1727, rho 1728, r1720, r1721, r1722, r1723, r1724, tail⟩

theorem template_scp_node3_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1725 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1725 rho)
    (r1726 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1726 rho)
    (r1727 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1727 rho)
    (r1728 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1728 rho)
    (r1729 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1729 rho)
    (tail : next (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) (rho 1723) (rho 1728) (rho 1733)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg68 (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) (rho 1723) (rho 1728) next := by
  exact ⟨rho 1729, rho 1730, rho 1731, rho 1732, rho 1733, r1725, r1726, r1727, r1728, r1729, tail⟩

theorem template_scp_node3_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1730 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1730 rho)
    (r1731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1731 rho)
    (r1732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1732 rho)
    (r1733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1733 rho)
    (r1734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1734 rho)
    (tail : next (rho 1718) (rho 1723) (rho 1728) (rho 1733) (rho 1738)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.seg69 (rho 1693) (rho 1698) (rho 1703) (rho 1708) (rho 1713) (rho 1718) (rho 1723) (rho 1728) (rho 1733) next := by
  exact ⟨rho 1734, rho 1735, rho 1736, rho 1737, rho 1738, r1730, r1731, r1732, r1733, r1734, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
