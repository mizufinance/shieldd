import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode15Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node15_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    nodeOut15 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 5491 + rho 5492) (rho 5493 + rho 5494 + rho 5495) (rho 5493 + rho 5497 + rho 5498) (rho 5496 + rho 5499) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, p68, p69, p70, p71,
    p72, p73
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart70 at p70
  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, r5755, r5756, r5757, r5758, r5759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 5491 + rho 5492) (rho 5493 + rho 5494 + rho 5495) (rho 5493 + rho 5497 + rho 5498) (rho 5496 + rho 5499)
      (fun w334 w339 w344 w349 w354 => w334 = rho 5829 ∧ w339 = rho 5834 ∧ w344 = rho 5839 ∧ w349 = rho 5844 ∧ w354 = rho 5849) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node15_seg0 rho _ r5507 r5508 r5509 r5510 r5511 (node15_seg1 rho _ r5512 r5513 r5514 r5515 r5516 (node15_seg2 rho _ r5517 r5518 r5519 r5520 r5521 (node15_seg3 rho _ r5522 r5523 r5524 r5525 r5526 (node15_seg4 rho _ r5527 r5528 r5529 r5530 r5531 (node15_seg5 rho _ r5532 r5533 r5534 r5535 r5536 (node15_seg6 rho _ r5537 r5538 r5539 r5540 r5541 (node15_seg7 rho _ r5542 r5543 r5544 r5545 r5546 (node15_seg8 rho _ r5547 r5548 r5549 r5550 r5551 (node15_seg9 rho _ r5552 r5553 r5554 r5555 r5556 (node15_seg10 rho _ r5557 r5558 r5559 r5560 r5561 (node15_seg11 rho _ r5562 r5563 r5564 r5565 r5566 (node15_seg12 rho _ r5567 r5568 r5569 r5570 r5571 (node15_seg13 rho _ r5572 r5573 r5574 r5575 r5576 (node15_seg14 rho _ r5577 r5578 r5579 r5580 r5581 (node15_seg15 rho _ r5582 r5583 r5584 r5585 r5586 (node15_seg16 rho _ r5587 r5588 r5589 r5590 r5591 (node15_seg17 rho _ r5592 r5593 r5594 r5595 r5596 (node15_seg18 rho _ r5597 r5598 r5599 r5600 r5601 (node15_seg19 rho _ r5602 r5603 r5604 r5605 r5606 (node15_seg20 rho _ r5607 r5608 r5609 r5610 r5611 (node15_seg21 rho _ r5612 r5613 r5614 r5615 r5616 (node15_seg22 rho _ r5617 r5618 r5619 r5620 r5621 (node15_seg23 rho _ r5622 r5623 r5624 r5625 r5626 (node15_seg24 rho _ r5627 r5628 r5629 r5630 r5631 (node15_seg25 rho _ r5632 r5633 r5634 r5635 r5636 (node15_seg26 rho _ r5637 r5638 r5639 r5640 r5641 (node15_seg27 rho _ r5642 r5643 r5644 r5645 r5646 (node15_seg28 rho _ r5647 r5648 r5649 r5650 r5651 (node15_seg29 rho _ r5652 r5653 r5654 r5655 r5656 (node15_seg30 rho _ r5657 r5658 r5659 r5660 r5661 (node15_seg31 rho _ r5662 r5663 r5664 r5665 r5666 (node15_seg32 rho _ r5667 r5668 r5669 r5670 r5671 (node15_seg33 rho _ r5672 r5673 r5674 r5675 r5676 (node15_seg34 rho _ r5677 r5678 r5679 r5680 r5681 (node15_seg35 rho _ r5682 r5683 r5684 r5685 r5686 (node15_seg36 rho _ r5687 r5688 r5689 r5690 r5691 (node15_seg37 rho _ r5692 r5693 r5694 r5695 r5696 (node15_seg38 rho _ r5697 r5698 r5699 r5700 r5701 (node15_seg39 rho _ r5702 r5703 r5704 r5705 r5706 (node15_seg40 rho _ r5707 r5708 r5709 r5710 r5711 (node15_seg41 rho _ r5712 r5713 r5714 r5715 r5716 (node15_seg42 rho _ r5717 r5718 r5719 r5720 r5721 (node15_seg43 rho _ r5722 r5723 r5724 r5725 r5726 (node15_seg44 rho _ r5727 r5728 r5729 r5730 r5731 (node15_seg45 rho _ r5732 r5733 r5734 r5735 r5736 (node15_seg46 rho _ r5737 r5738 r5739 r5740 r5741 (node15_seg47 rho _ r5742 r5743 r5744 r5745 r5746 (node15_seg48 rho _ r5747 r5748 r5749 r5750 r5751 (node15_seg49 rho _ r5752 r5753 r5754 r5755 r5756 (node15_seg50 rho _ r5757 r5758 r5759 r5760 r5761 (node15_seg51 rho _ r5762 r5763 r5764 r5765 r5766 (node15_seg52 rho _ r5767 r5768 r5769 r5770 r5771 (node15_seg53 rho _ r5772 r5773 r5774 r5775 r5776 (node15_seg54 rho _ r5777 r5778 r5779 r5780 r5781 (node15_seg55 rho _ r5782 r5783 r5784 r5785 r5786 (node15_seg56 rho _ r5787 r5788 r5789 r5790 r5791 (node15_seg57 rho _ r5792 r5793 r5794 r5795 r5796 (node15_seg58 rho _ r5797 r5798 r5799 r5800 r5801 (node15_seg59 rho _ r5802 r5803 r5804 r5805 r5806 (node15_seg60 rho _ r5807 r5808 r5809 r5810 r5811 (node15_seg61 rho _ r5812 r5813 r5814 r5815 r5816 (node15_seg62 rho _ r5817 r5818 r5819 r5820 r5821 (node15_seg63 rho _ r5822 r5823 r5824 r5825 r5826 (node15_seg64 rho _ r5827 r5828 r5829 r5830 r5831 (node15_seg65 rho _ r5832 r5833 r5834 r5835 r5836 (node15_seg66 rho _ r5837 r5838 r5839 r5840 r5841 (node15_seg67 rho _ r5842 r5843 r5844 r5845 r5846 (node15_seg68 rho _ r5847 r5848 r5849 r5850 r5851 (node15_seg69 rho _ r5852 r5853 r5854 r5855 r5856 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 5491 + rho 5492) (rho 5493 + rho 5494 + rho 5495) (rho 5493 + rho 5497 + rho 5498) (rho 5496 + rho 5499) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut15, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
