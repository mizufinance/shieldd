import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node3_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1635 : Seg13.relationRow1635 rho)
    (r1636 : Seg13.relationRow1636 rho)
    (r1637 : Seg13.relationRow1637 rho)
    (r1638 : Seg13.relationRow1638 rho)
    (r1639 : Seg13.relationRow1639 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg50 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) next := by
  exact ⟨rho 8836, rho 8837, rho 8838, rho 8839, rho 8840, r1635, r1636, r1637, r1638, r1639, tail⟩

theorem seg13_scp_node3_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1640 : Seg13.relationRow1640 rho)
    (r1641 : Seg13.relationRow1641 rho)
    (r1642 : Seg13.relationRow1642 rho)
    (r1643 : Seg13.relationRow1643 rho)
    (r1644 : Seg13.relationRow1644 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) (rho 8845)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg51 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) next := by
  exact ⟨rho 8841, rho 8842, rho 8843, rho 8844, rho 8845, r1640, r1641, r1642, r1643, r1644, tail⟩

theorem seg13_scp_node3_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1645 : Seg13.relationRow1645 rho)
    (r1646 : Seg13.relationRow1646 rho)
    (r1647 : Seg13.relationRow1647 rho)
    (r1648 : Seg13.relationRow1648 rho)
    (r1649 : Seg13.relationRow1649 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) (rho 8845) (rho 8850)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg52 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) (rho 8845) next := by
  exact ⟨rho 8846, rho 8847, rho 8848, rho 8849, rho 8850, r1645, r1646, r1647, r1648, r1649, tail⟩

theorem seg13_scp_node3_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1650 : Seg13.relationRow1650 rho)
    (r1651 : Seg13.relationRow1651 rho)
    (r1652 : Seg13.relationRow1652 rho)
    (r1653 : Seg13.relationRow1653 rho)
    (r1654 : Seg13.relationRow1654 rho)
    (tail : next (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) (rho 8845) (rho 8850) (rho 8855)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg53 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) (rho 8845) (rho 8850) next := by
  exact ⟨rho 8851, rho 8852, rho 8853, rho 8854, rho 8855, r1650, r1651, r1652, r1653, r1654, tail⟩

theorem seg13_scp_node3_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1655 : Seg13.relationRow1655 rho)
    (r1656 : Seg13.relationRow1656 rho)
    (r1657 : Seg13.relationRow1657 rho)
    (r1658 : Seg13.relationRow1658 rho)
    (r1659 : Seg13.relationRow1659 rho)
    (tail : next (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg54 (rho 8660) (rho 8665) (rho 8670) (rho 8675) (rho 8680) (rho 8685) (rho 8690) (rho 8695) (rho 8700) (rho 8705) (rho 8710) (rho 8715) (rho 8720) (rho 8725) (rho 8730) (rho 8735) (rho 8740) (rho 8745) (rho 8750) (rho 8755) (rho 8760) (rho 8765) (rho 8770) (rho 8775) (rho 8780) (rho 8785) (rho 8790) (rho 8795) (rho 8800) (rho 8805) (rho 8810) (rho 8815) (rho 8820) (rho 8825) (rho 8830) (rho 8835) (rho 8840) (rho 8845) (rho 8850) (rho 8855) next := by
  exact ⟨rho 8856, rho 8857, rho 8858, rho 8859, rho 8860, r1655, r1656, r1657, r1658, r1659, tail⟩

theorem seg13_scp_node3_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1660 : Seg13.relationRow1660 rho)
    (r1661 : Seg13.relationRow1661 rho)
    (r1662 : Seg13.relationRow1662 rho)
    (r1663 : Seg13.relationRow1663 rho)
    (r1664 : Seg13.relationRow1664 rho)
    (tail : next (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg55 (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) next := by
  exact ⟨rho 8861, rho 8862, rho 8863, rho 8864, rho 8865, r1660, r1661, r1662, r1663, r1664, tail⟩

theorem seg13_scp_node3_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1665 : Seg13.relationRow1665 rho)
    (r1666 : Seg13.relationRow1666 rho)
    (r1667 : Seg13.relationRow1667 rho)
    (r1668 : Seg13.relationRow1668 rho)
    (r1669 : Seg13.relationRow1669 rho)
    (tail : next (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) (rho 8870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg56 (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) next := by
  exact ⟨rho 8866, rho 8867, rho 8868, rho 8869, rho 8870, r1665, r1666, r1667, r1668, r1669, tail⟩

theorem seg13_scp_node3_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1670 : Seg13.relationRow1670 rho)
    (r1671 : Seg13.relationRow1671 rho)
    (r1672 : Seg13.relationRow1672 rho)
    (r1673 : Seg13.relationRow1673 rho)
    (r1674 : Seg13.relationRow1674 rho)
    (tail : next (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) (rho 8870) (rho 8875)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg57 (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) (rho 8870) next := by
  exact ⟨rho 8871, rho 8872, rho 8873, rho 8874, rho 8875, r1670, r1671, r1672, r1673, r1674, tail⟩

theorem seg13_scp_node3_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1675 : Seg13.relationRow1675 rho)
    (r1676 : Seg13.relationRow1676 rho)
    (r1677 : Seg13.relationRow1677 rho)
    (r1678 : Seg13.relationRow1678 rho)
    (r1679 : Seg13.relationRow1679 rho)
    (tail : next (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) (rho 8870) (rho 8875) (rho 8880)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg58 (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) (rho 8870) (rho 8875) next := by
  exact ⟨rho 8876, rho 8877, rho 8878, rho 8879, rho 8880, r1675, r1676, r1677, r1678, r1679, tail⟩

theorem seg13_scp_node3_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1680 : Seg13.relationRow1680 rho)
    (r1681 : Seg13.relationRow1681 rho)
    (r1682 : Seg13.relationRow1682 rho)
    (r1683 : Seg13.relationRow1683 rho)
    (r1684 : Seg13.relationRow1684 rho)
    (tail : next (rho 8865) (rho 8870) (rho 8875) (rho 8880) (rho 8885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg59 (rho 8840) (rho 8845) (rho 8850) (rho 8855) (rho 8860) (rho 8865) (rho 8870) (rho 8875) (rho 8880) next := by
  exact ⟨rho 8881, rho 8882, rho 8883, rho 8884, rho 8885, r1680, r1681, r1682, r1683, r1684, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

