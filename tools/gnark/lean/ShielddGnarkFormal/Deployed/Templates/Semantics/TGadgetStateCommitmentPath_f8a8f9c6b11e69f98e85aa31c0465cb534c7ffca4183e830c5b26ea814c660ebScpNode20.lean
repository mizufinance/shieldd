import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode20Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode20.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node20_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    templateScpNode20Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (21 : F))
        (rho 7545 + rho 7546) (rho 7547 + rho 7548 + rho 7549)
        (rho 7547 + rho 7551 + rho 7552) (rho 7550 + rho 7553) := by
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p94, p95, p96, p97, p98, p99,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart94 at p94
  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7573, r7574, r7575, r7576, r7577, r7578, r7579, r7580, r7581, r7582, r7583, r7584, r7585, r7586, r7587, r7588, r7589, r7590, r7591, r7592, r7593, r7594, r7595, r7596, r7597, r7598, r7599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart95 at p95
  rcases p95 with ⟨r7600, r7601, r7602, r7603, r7604, r7605, r7606, r7607, r7608, r7609, r7610, r7611, r7612, r7613, r7614, r7615, r7616, r7617, r7618, r7619, r7620, r7621, r7622, r7623, r7624, r7625, r7626, r7627, r7628, r7629, r7630, r7631, r7632, r7633, r7634, r7635, r7636, r7637, r7638, r7639, r7640, r7641, r7642, r7643, r7644, r7645, r7646, r7647, r7648, r7649, r7650, r7651, r7652, r7653, r7654, r7655, r7656, r7657, r7658, r7659, r7660, r7661, r7662, r7663, r7664, r7665, r7666, r7667, r7668, r7669, r7670, r7671, r7672, r7673, r7674, r7675, r7676, r7677, r7678, r7679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart96 at p96
  rcases p96 with ⟨r7680, r7681, r7682, r7683, r7684, r7685, r7686, r7687, r7688, r7689, r7690, r7691, r7692, r7693, r7694, r7695, r7696, r7697, r7698, r7699, r7700, r7701, r7702, r7703, r7704, r7705, r7706, r7707, r7708, r7709, r7710, r7711, r7712, r7713, r7714, r7715, r7716, r7717, r7718, r7719, r7720, r7721, r7722, r7723, r7724, r7725, r7726, r7727, r7728, r7729, r7730, r7731, r7732, r7733, r7734, r7735, r7736, r7737, r7738, r7739, r7740, r7741, r7742, r7743, r7744, r7745, r7746, r7747, r7748, r7749, r7750, r7751, r7752, r7753, r7754, r7755, r7756, r7757, r7758, r7759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart97 at p97
  rcases p97 with ⟨r7760, r7761, r7762, r7763, r7764, r7765, r7766, r7767, r7768, r7769, r7770, r7771, r7772, r7773, r7774, r7775, r7776, r7777, r7778, r7779, r7780, r7781, r7782, r7783, r7784, r7785, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833, r7834, r7835, r7836, r7837, r7838, r7839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart98 at p98
  rcases p98 with ⟨r7840, r7841, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913, r7914, r7915, r7916, r7917, r7918, r7919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart99 at p99
  rcases p99 with ⟨r7920, r7921, r7922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.relation (rho 7545) (rho 7547) (rho 7550) (rho 7546) (rho 7548) (rho 7549) (rho 7551) (rho 7552) (rho 7553)
      (fun o0 o1 o2 o3 o4 => o0 = rho 7883 ∧ o1 = rho 7888 ∧ o2 = rho 7893 ∧ o3 = rho 7898 ∧ o4 = rho 7903) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.relation
    exact template_scp_node20_seg0 rho _ r7573 r7574 r7575 r7576 r7577 (template_scp_node20_seg1 rho _ r7578 r7579 r7580 r7581 r7582 (template_scp_node20_seg2 rho _ r7583 r7584 r7585 r7586 r7587 (template_scp_node20_seg3 rho _ r7588 r7589 r7590 r7591 r7592 (template_scp_node20_seg4 rho _ r7593 r7594 r7595 r7596 r7597 (template_scp_node20_seg5 rho _ r7598 r7599 r7600 r7601 r7602 (template_scp_node20_seg6 rho _ r7603 r7604 r7605 r7606 r7607 (template_scp_node20_seg7 rho _ r7608 r7609 r7610 r7611 r7612 (template_scp_node20_seg8 rho _ r7613 r7614 r7615 r7616 r7617 (template_scp_node20_seg9 rho _ r7618 r7619 r7620 r7621 r7622 (template_scp_node20_seg10 rho _ r7623 r7624 r7625 r7626 r7627 (template_scp_node20_seg11 rho _ r7628 r7629 r7630 r7631 r7632 (template_scp_node20_seg12 rho _ r7633 r7634 r7635 r7636 r7637 (template_scp_node20_template rho _ r7638 r7639 r7640 r7641 r7642 (template_scp_node20_seg14 rho _ r7643 r7644 r7645 r7646 r7647 (template_scp_node20_seg15 rho _ r7648 r7649 r7650 r7651 r7652 (template_scp_node20_seg16 rho _ r7653 r7654 r7655 r7656 r7657 (template_scp_node20_seg17 rho _ r7658 r7659 r7660 r7661 r7662 (template_scp_node20_seg18 rho _ r7663 r7664 r7665 r7666 r7667 (template_scp_node20_seg19 rho _ r7668 r7669 r7670 r7671 r7672 (template_scp_node20_seg20 rho _ r7673 r7674 r7675 r7676 r7677 (template_scp_node20_seg21 rho _ r7678 r7679 r7680 r7681 r7682 (template_scp_node20_seg22 rho _ r7683 r7684 r7685 r7686 r7687 (template_scp_node20_seg23 rho _ r7688 r7689 r7690 r7691 r7692 (template_scp_node20_seg24 rho _ r7693 r7694 r7695 r7696 r7697 (template_scp_node20_seg25 rho _ r7698 r7699 r7700 r7701 r7702 (template_scp_node20_seg26 rho _ r7703 r7704 r7705 r7706 r7707 (template_scp_node20_seg27 rho _ r7708 r7709 r7710 r7711 r7712 (template_scp_node20_seg28 rho _ r7713 r7714 r7715 r7716 r7717 (template_scp_node20_seg29 rho _ r7718 r7719 r7720 r7721 r7722 (template_scp_node20_seg30 rho _ r7723 r7724 r7725 r7726 r7727 (template_scp_node20_seg31 rho _ r7728 r7729 r7730 r7731 r7732 (template_scp_node20_seg32 rho _ r7733 r7734 r7735 r7736 r7737 (template_scp_node20_seg33 rho _ r7738 r7739 r7740 r7741 r7742 (template_scp_node20_seg34 rho _ r7743 r7744 r7745 r7746 r7747 (template_scp_node20_seg35 rho _ r7748 r7749 r7750 r7751 r7752 (template_scp_node20_seg36 rho _ r7753 r7754 r7755 r7756 r7757 (template_scp_node20_seg37 rho _ r7758 r7759 r7760 r7761 r7762 (template_scp_node20_seg38 rho _ r7763 r7764 r7765 r7766 r7767 (template_scp_node20_seg39 rho _ r7768 r7769 r7770 r7771 r7772 (template_scp_node20_seg40 rho _ r7773 r7774 r7775 r7776 r7777 (template_scp_node20_seg41 rho _ r7778 r7779 r7780 r7781 r7782 (template_scp_node20_seg42 rho _ r7783 r7784 r7785 r7786 r7787 (template_scp_node20_seg43 rho _ r7788 r7789 r7790 r7791 r7792 (template_scp_node20_seg44 rho _ r7793 r7794 r7795 r7796 r7797 (template_scp_node20_seg45 rho _ r7798 r7799 r7800 r7801 r7802 (template_scp_node20_seg46 rho _ r7803 r7804 r7805 r7806 r7807 (template_scp_node20_seg47 rho _ r7808 r7809 r7810 r7811 r7812 (template_scp_node20_seg48 rho _ r7813 r7814 r7815 r7816 r7817 (template_scp_node20_seg49 rho _ r7818 r7819 r7820 r7821 r7822 (template_scp_node20_seg50 rho _ r7823 r7824 r7825 r7826 r7827 (template_scp_node20_seg51 rho _ r7828 r7829 r7830 r7831 r7832 (template_scp_node20_seg52 rho _ r7833 r7834 r7835 r7836 r7837 (template_scp_node20_seg53 rho _ r7838 r7839 r7840 r7841 r7842 (template_scp_node20_seg54 rho _ r7843 r7844 r7845 r7846 r7847 (template_scp_node20_seg55 rho _ r7848 r7849 r7850 r7851 r7852 (template_scp_node20_seg56 rho _ r7853 r7854 r7855 r7856 r7857 (template_scp_node20_seg57 rho _ r7858 r7859 r7860 r7861 r7862 (template_scp_node20_seg58 rho _ r7863 r7864 r7865 r7866 r7867 (template_scp_node20_seg59 rho _ r7868 r7869 r7870 r7871 r7872 (template_scp_node20_seg60 rho _ r7873 r7874 r7875 r7876 r7877 (template_scp_node20_seg61 rho _ r7878 r7879 r7880 r7881 r7882 (template_scp_node20_seg62 rho _ r7883 r7884 r7885 r7886 r7887 (template_scp_node20_seg63 rho _ r7888 r7889 r7890 r7891 r7892 (template_scp_node20_seg64 rho _ r7893 r7894 r7895 r7896 r7897 (template_scp_node20_seg65 rho _ r7898 r7899 r7900 r7901 r7902 (template_scp_node20_seg66 rho _ r7903 r7904 r7905 r7906 r7907 (template_scp_node20_seg67 rho _ r7908 r7909 r7910 r7911 r7912 (template_scp_node20_seg68 rho _ r7913 r7914 r7915 r7916 r7917 (template_scp_node20_seg69 rho _ r7918 r7919 r7920 r7921 r7922 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.relation_sound_permSpec (rho 7545) (rho 7547) (rho 7550) (rho 7546) (rho 7548) (rho 7549) (rho 7551) (rho 7552) (rho 7553) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.tctNode21DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.F) + (21 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [templateScpNode20Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

