import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode17Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode17.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node17_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg13ScpNode17Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (18 : F))
        (rho 6456 + rho 6457) (rho 6458 + rho 6459 + rho 6460)
        (rho 6458 + rho 6462 + rho 6463) (rho 6461 + rho 6464) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p81, p82, p83, p84, p85, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart81 at p81
  rcases p81 with ⟨_, r6481, r6482, r6483, r6484, r6485, r6486, r6487, r6488, r6489, r6490, r6491, r6492, r6493, r6494, r6495, r6496, r6497, r6498, r6499, r6500, r6501, r6502, r6503, r6504, r6505, r6506, r6507, r6508, r6509, r6510, r6511, r6512, r6513, r6514, r6515, r6516, r6517, r6518, r6519, r6520, r6521, r6522, r6523, r6524, r6525, r6526, r6527, r6528, r6529, r6530, r6531, r6532, r6533, r6534, r6535, r6536, r6537, r6538, r6539, r6540, r6541, r6542, r6543, r6544, r6545, r6546, r6547, r6548, r6549, r6550, r6551, r6552, r6553, r6554, r6555, r6556, r6557, r6558, r6559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart82 at p82
  rcases p82 with ⟨r6560, r6561, r6562, r6563, r6564, r6565, r6566, r6567, r6568, r6569, r6570, r6571, r6572, r6573, r6574, r6575, r6576, r6577, r6578, r6579, r6580, r6581, r6582, r6583, r6584, r6585, r6586, r6587, r6588, r6589, r6590, r6591, r6592, r6593, r6594, r6595, r6596, r6597, r6598, r6599, r6600, r6601, r6602, r6603, r6604, r6605, r6606, r6607, r6608, r6609, r6610, r6611, r6612, r6613, r6614, r6615, r6616, r6617, r6618, r6619, r6620, r6621, r6622, r6623, r6624, r6625, r6626, r6627, r6628, r6629, r6630, r6631, r6632, r6633, r6634, r6635, r6636, r6637, r6638, r6639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart83 at p83
  rcases p83 with ⟨r6640, r6641, r6642, r6643, r6644, r6645, r6646, r6647, r6648, r6649, r6650, r6651, r6652, r6653, r6654, r6655, r6656, r6657, r6658, r6659, r6660, r6661, r6662, r6663, r6664, r6665, r6666, r6667, r6668, r6669, r6670, r6671, r6672, r6673, r6674, r6675, r6676, r6677, r6678, r6679, r6680, r6681, r6682, r6683, r6684, r6685, r6686, r6687, r6688, r6689, r6690, r6691, r6692, r6693, r6694, r6695, r6696, r6697, r6698, r6699, r6700, r6701, r6702, r6703, r6704, r6705, r6706, r6707, r6708, r6709, r6710, r6711, r6712, r6713, r6714, r6715, r6716, r6717, r6718, r6719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart84 at p84
  rcases p84 with ⟨r6720, r6721, r6722, r6723, r6724, r6725, r6726, r6727, r6728, r6729, r6730, r6731, r6732, r6733, r6734, r6735, r6736, r6737, r6738, r6739, r6740, r6741, r6742, r6743, r6744, r6745, r6746, r6747, r6748, r6749, r6750, r6751, r6752, r6753, r6754, r6755, r6756, r6757, r6758, r6759, r6760, r6761, r6762, r6763, r6764, r6765, r6766, r6767, r6768, r6769, r6770, r6771, r6772, r6773, r6774, r6775, r6776, r6777, r6778, r6779, r6780, r6781, r6782, r6783, r6784, r6785, r6786, r6787, r6788, r6789, r6790, r6791, r6792, r6793, r6794, r6795, r6796, r6797, r6798, r6799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart85 at p85
  rcases p85 with ⟨r6800, r6801, r6802, r6803, r6804, r6805, r6806, r6807, r6808, r6809, r6810, r6811, r6812, r6813, r6814, r6815, r6816, r6817, r6818, r6819, r6820, r6821, r6822, r6823, r6824, r6825, r6826, r6827, r6828, r6829, r6830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.relation (rho 6456) (rho 6458) (rho 6461) (rho 6457) (rho 6459) (rho 6460) (rho 6462) (rho 6463) (rho 6464)
      (fun o0 o1 o2 o3 o4 => o0 = rho 6794 ∧ o1 = rho 6799 ∧ o2 = rho 6804 ∧ o3 = rho 6809 ∧ o4 = rho 6814) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.relation
    exact template_scp_node17_seg0 rho _ r6481 r6482 r6483 r6484 r6485 (template_scp_node17_seg1 rho _ r6486 r6487 r6488 r6489 r6490 (template_scp_node17_seg2 rho _ r6491 r6492 r6493 r6494 r6495 (template_scp_node17_seg3 rho _ r6496 r6497 r6498 r6499 r6500 (template_scp_node17_seg4 rho _ r6501 r6502 r6503 r6504 r6505 (template_scp_node17_seg5 rho _ r6506 r6507 r6508 r6509 r6510 (template_scp_node17_seg6 rho _ r6511 r6512 r6513 r6514 r6515 (template_scp_node17_seg7 rho _ r6516 r6517 r6518 r6519 r6520 (template_scp_node17_seg8 rho _ r6521 r6522 r6523 r6524 r6525 (template_scp_node17_seg9 rho _ r6526 r6527 r6528 r6529 r6530 (template_scp_node17_seg10 rho _ r6531 r6532 r6533 r6534 r6535 (template_scp_node17_seg11 rho _ r6536 r6537 r6538 r6539 r6540 (template_scp_node17_seg12 rho _ r6541 r6542 r6543 r6544 r6545 (template_scp_node17_template rho _ r6546 r6547 r6548 r6549 r6550 (template_scp_node17_seg14 rho _ r6551 r6552 r6553 r6554 r6555 (template_scp_node17_seg15 rho _ r6556 r6557 r6558 r6559 r6560 (template_scp_node17_seg16 rho _ r6561 r6562 r6563 r6564 r6565 (template_scp_node17_seg17 rho _ r6566 r6567 r6568 r6569 r6570 (template_scp_node17_seg18 rho _ r6571 r6572 r6573 r6574 r6575 (template_scp_node17_seg19 rho _ r6576 r6577 r6578 r6579 r6580 (template_scp_node17_seg20 rho _ r6581 r6582 r6583 r6584 r6585 (template_scp_node17_seg21 rho _ r6586 r6587 r6588 r6589 r6590 (template_scp_node17_seg22 rho _ r6591 r6592 r6593 r6594 r6595 (template_scp_node17_seg23 rho _ r6596 r6597 r6598 r6599 r6600 (template_scp_node17_seg24 rho _ r6601 r6602 r6603 r6604 r6605 (template_scp_node17_seg25 rho _ r6606 r6607 r6608 r6609 r6610 (template_scp_node17_seg26 rho _ r6611 r6612 r6613 r6614 r6615 (template_scp_node17_seg27 rho _ r6616 r6617 r6618 r6619 r6620 (template_scp_node17_seg28 rho _ r6621 r6622 r6623 r6624 r6625 (template_scp_node17_seg29 rho _ r6626 r6627 r6628 r6629 r6630 (template_scp_node17_seg30 rho _ r6631 r6632 r6633 r6634 r6635 (template_scp_node17_seg31 rho _ r6636 r6637 r6638 r6639 r6640 (template_scp_node17_seg32 rho _ r6641 r6642 r6643 r6644 r6645 (template_scp_node17_seg33 rho _ r6646 r6647 r6648 r6649 r6650 (template_scp_node17_seg34 rho _ r6651 r6652 r6653 r6654 r6655 (template_scp_node17_seg35 rho _ r6656 r6657 r6658 r6659 r6660 (template_scp_node17_seg36 rho _ r6661 r6662 r6663 r6664 r6665 (template_scp_node17_seg37 rho _ r6666 r6667 r6668 r6669 r6670 (template_scp_node17_seg38 rho _ r6671 r6672 r6673 r6674 r6675 (template_scp_node17_seg39 rho _ r6676 r6677 r6678 r6679 r6680 (template_scp_node17_seg40 rho _ r6681 r6682 r6683 r6684 r6685 (template_scp_node17_seg41 rho _ r6686 r6687 r6688 r6689 r6690 (template_scp_node17_seg42 rho _ r6691 r6692 r6693 r6694 r6695 (template_scp_node17_seg43 rho _ r6696 r6697 r6698 r6699 r6700 (template_scp_node17_seg44 rho _ r6701 r6702 r6703 r6704 r6705 (template_scp_node17_seg45 rho _ r6706 r6707 r6708 r6709 r6710 (template_scp_node17_seg46 rho _ r6711 r6712 r6713 r6714 r6715 (template_scp_node17_seg47 rho _ r6716 r6717 r6718 r6719 r6720 (template_scp_node17_seg48 rho _ r6721 r6722 r6723 r6724 r6725 (template_scp_node17_seg49 rho _ r6726 r6727 r6728 r6729 r6730 (template_scp_node17_seg50 rho _ r6731 r6732 r6733 r6734 r6735 (template_scp_node17_seg51 rho _ r6736 r6737 r6738 r6739 r6740 (template_scp_node17_seg52 rho _ r6741 r6742 r6743 r6744 r6745 (template_scp_node17_seg53 rho _ r6746 r6747 r6748 r6749 r6750 (template_scp_node17_seg54 rho _ r6751 r6752 r6753 r6754 r6755 (template_scp_node17_seg55 rho _ r6756 r6757 r6758 r6759 r6760 (template_scp_node17_seg56 rho _ r6761 r6762 r6763 r6764 r6765 (template_scp_node17_seg57 rho _ r6766 r6767 r6768 r6769 r6770 (template_scp_node17_seg58 rho _ r6771 r6772 r6773 r6774 r6775 (template_scp_node17_seg59 rho _ r6776 r6777 r6778 r6779 r6780 (template_scp_node17_seg60 rho _ r6781 r6782 r6783 r6784 r6785 (template_scp_node17_seg61 rho _ r6786 r6787 r6788 r6789 r6790 (template_scp_node17_seg62 rho _ r6791 r6792 r6793 r6794 r6795 (template_scp_node17_seg63 rho _ r6796 r6797 r6798 r6799 r6800 (template_scp_node17_seg64 rho _ r6801 r6802 r6803 r6804 r6805 (template_scp_node17_seg65 rho _ r6806 r6807 r6808 r6809 r6810 (template_scp_node17_seg66 rho _ r6811 r6812 r6813 r6814 r6815 (template_scp_node17_seg67 rho _ r6816 r6817 r6818 r6819 r6820 (template_scp_node17_seg68 rho _ r6821 r6822 r6823 r6824 r6825 (template_scp_node17_seg69 rho _ r6826 r6827 r6828 r6829 r6830 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.relation_sound_permSpec (rho 6456) (rho 6458) (rho 6461) (rho 6457) (rho 6459) (rho 6460) (rho 6462) (rho 6463) (rho 6464) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.tctNode18DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.F) + (18 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode17Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

