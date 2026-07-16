import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node3_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1635 : Seg28.relationRow1635 rho)
    (r1636 : Seg28.relationRow1636 rho)
    (r1637 : Seg28.relationRow1637 rho)
    (r1638 : Seg28.relationRow1638 rho)
    (r1639 : Seg28.relationRow1639 rho)
    (tail : next (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg50 (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) next := by
  exact ⟨rho 21017, rho 21018, rho 21019, rho 21020, rho 21021, r1635, r1636, r1637, r1638, r1639, tail⟩

theorem seg28_scp_node3_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1640 : Seg28.relationRow1640 rho)
    (r1641 : Seg28.relationRow1641 rho)
    (r1642 : Seg28.relationRow1642 rho)
    (r1643 : Seg28.relationRow1643 rho)
    (r1644 : Seg28.relationRow1644 rho)
    (tail : next (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) (rho 21026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg51 (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) next := by
  exact ⟨rho 21022, rho 21023, rho 21024, rho 21025, rho 21026, r1640, r1641, r1642, r1643, r1644, tail⟩

theorem seg28_scp_node3_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1645 : Seg28.relationRow1645 rho)
    (r1646 : Seg28.relationRow1646 rho)
    (r1647 : Seg28.relationRow1647 rho)
    (r1648 : Seg28.relationRow1648 rho)
    (r1649 : Seg28.relationRow1649 rho)
    (tail : next (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) (rho 21026) (rho 21031)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg52 (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) (rho 21026) next := by
  exact ⟨rho 21027, rho 21028, rho 21029, rho 21030, rho 21031, r1645, r1646, r1647, r1648, r1649, tail⟩

theorem seg28_scp_node3_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1650 : Seg28.relationRow1650 rho)
    (r1651 : Seg28.relationRow1651 rho)
    (r1652 : Seg28.relationRow1652 rho)
    (r1653 : Seg28.relationRow1653 rho)
    (r1654 : Seg28.relationRow1654 rho)
    (tail : next (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) (rho 21026) (rho 21031) (rho 21036)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg53 (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) (rho 21026) (rho 21031) next := by
  exact ⟨rho 21032, rho 21033, rho 21034, rho 21035, rho 21036, r1650, r1651, r1652, r1653, r1654, tail⟩

theorem seg28_scp_node3_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1655 : Seg28.relationRow1655 rho)
    (r1656 : Seg28.relationRow1656 rho)
    (r1657 : Seg28.relationRow1657 rho)
    (r1658 : Seg28.relationRow1658 rho)
    (r1659 : Seg28.relationRow1659 rho)
    (tail : next (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg54 (rho 20841) (rho 20846) (rho 20851) (rho 20856) (rho 20861) (rho 20866) (rho 20871) (rho 20876) (rho 20881) (rho 20886) (rho 20891) (rho 20896) (rho 20901) (rho 20906) (rho 20911) (rho 20916) (rho 20921) (rho 20926) (rho 20931) (rho 20936) (rho 20941) (rho 20946) (rho 20951) (rho 20956) (rho 20961) (rho 20966) (rho 20971) (rho 20976) (rho 20981) (rho 20986) (rho 20991) (rho 20996) (rho 21001) (rho 21006) (rho 21011) (rho 21016) (rho 21021) (rho 21026) (rho 21031) (rho 21036) next := by
  exact ⟨rho 21037, rho 21038, rho 21039, rho 21040, rho 21041, r1655, r1656, r1657, r1658, r1659, tail⟩

theorem seg28_scp_node3_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1660 : Seg28.relationRow1660 rho)
    (r1661 : Seg28.relationRow1661 rho)
    (r1662 : Seg28.relationRow1662 rho)
    (r1663 : Seg28.relationRow1663 rho)
    (r1664 : Seg28.relationRow1664 rho)
    (tail : next (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg55 (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) next := by
  exact ⟨rho 21042, rho 21043, rho 21044, rho 21045, rho 21046, r1660, r1661, r1662, r1663, r1664, tail⟩

theorem seg28_scp_node3_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1665 : Seg28.relationRow1665 rho)
    (r1666 : Seg28.relationRow1666 rho)
    (r1667 : Seg28.relationRow1667 rho)
    (r1668 : Seg28.relationRow1668 rho)
    (r1669 : Seg28.relationRow1669 rho)
    (tail : next (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) (rho 21051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg56 (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) next := by
  exact ⟨rho 21047, rho 21048, rho 21049, rho 21050, rho 21051, r1665, r1666, r1667, r1668, r1669, tail⟩

theorem seg28_scp_node3_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1670 : Seg28.relationRow1670 rho)
    (r1671 : Seg28.relationRow1671 rho)
    (r1672 : Seg28.relationRow1672 rho)
    (r1673 : Seg28.relationRow1673 rho)
    (r1674 : Seg28.relationRow1674 rho)
    (tail : next (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) (rho 21051) (rho 21056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg57 (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) (rho 21051) next := by
  exact ⟨rho 21052, rho 21053, rho 21054, rho 21055, rho 21056, r1670, r1671, r1672, r1673, r1674, tail⟩

theorem seg28_scp_node3_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1675 : Seg28.relationRow1675 rho)
    (r1676 : Seg28.relationRow1676 rho)
    (r1677 : Seg28.relationRow1677 rho)
    (r1678 : Seg28.relationRow1678 rho)
    (r1679 : Seg28.relationRow1679 rho)
    (tail : next (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) (rho 21051) (rho 21056) (rho 21061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg58 (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) (rho 21051) (rho 21056) next := by
  exact ⟨rho 21057, rho 21058, rho 21059, rho 21060, rho 21061, r1675, r1676, r1677, r1678, r1679, tail⟩

theorem seg28_scp_node3_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r1680 : Seg28.relationRow1680 rho)
    (r1681 : Seg28.relationRow1681 rho)
    (r1682 : Seg28.relationRow1682 rho)
    (r1683 : Seg28.relationRow1683 rho)
    (r1684 : Seg28.relationRow1684 rho)
    (tail : next (rho 21046) (rho 21051) (rho 21056) (rho 21061) (rho 21066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg59 (rho 21021) (rho 21026) (rho 21031) (rho 21036) (rho 21041) (rho 21046) (rho 21051) (rho 21056) (rho 21061) next := by
  exact ⟨rho 21062, rho 21063, rho 21064, rho 21065, rho 21066, r1680, r1681, r1682, r1683, r1684, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

