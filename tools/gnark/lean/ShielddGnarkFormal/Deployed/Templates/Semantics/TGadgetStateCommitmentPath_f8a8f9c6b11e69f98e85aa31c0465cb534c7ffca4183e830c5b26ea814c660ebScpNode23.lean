import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode23Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode23.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node23_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    templateScpNode23Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (24 : F))
        (rho 8634 + rho 8635) (rho 8636 + rho 8637 + rho 8638)
        (rho 8636 + rho 8640 + rho 8641) (rho 8639 + rho 8642) := by
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p108, p109,
    p110, p111, p112
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart108 at p108
  rcases p108 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8665, r8666, r8667, r8668, r8669, r8670, r8671, r8672, r8673, r8674, r8675, r8676, r8677, r8678, r8679, r8680, r8681, r8682, r8683, r8684, r8685, r8686, r8687, r8688, r8689, r8690, r8691, r8692, r8693, r8694, r8695, r8696, r8697, r8698, r8699, r8700, r8701, r8702, r8703, r8704, r8705, r8706, r8707, r8708, r8709, r8710, r8711, r8712, r8713, r8714, r8715, r8716, r8717, r8718, r8719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart109 at p109
  rcases p109 with ⟨r8720, r8721, r8722, r8723, r8724, r8725, r8726, r8727, r8728, r8729, r8730, r8731, r8732, r8733, r8734, r8735, r8736, r8737, r8738, r8739, r8740, r8741, r8742, r8743, r8744, r8745, r8746, r8747, r8748, r8749, r8750, r8751, r8752, r8753, r8754, r8755, r8756, r8757, r8758, r8759, r8760, r8761, r8762, r8763, r8764, r8765, r8766, r8767, r8768, r8769, r8770, r8771, r8772, r8773, r8774, r8775, r8776, r8777, r8778, r8779, r8780, r8781, r8782, r8783, r8784, r8785, r8786, r8787, r8788, r8789, r8790, r8791, r8792, r8793, r8794, r8795, r8796, r8797, r8798, r8799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart110 at p110
  rcases p110 with ⟨r8800, r8801, r8802, r8803, r8804, r8805, r8806, r8807, r8808, r8809, r8810, r8811, r8812, r8813, r8814, r8815, r8816, r8817, r8818, r8819, r8820, r8821, r8822, r8823, r8824, r8825, r8826, r8827, r8828, r8829, r8830, r8831, r8832, r8833, r8834, r8835, r8836, r8837, r8838, r8839, r8840, r8841, r8842, r8843, r8844, r8845, r8846, r8847, r8848, r8849, r8850, r8851, r8852, r8853, r8854, r8855, r8856, r8857, r8858, r8859, r8860, r8861, r8862, r8863, r8864, r8865, r8866, r8867, r8868, r8869, r8870, r8871, r8872, r8873, r8874, r8875, r8876, r8877, r8878, r8879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart111 at p111
  rcases p111 with ⟨r8880, r8881, r8882, r8883, r8884, r8885, r8886, r8887, r8888, r8889, r8890, r8891, r8892, r8893, r8894, r8895, r8896, r8897, r8898, r8899, r8900, r8901, r8902, r8903, r8904, r8905, r8906, r8907, r8908, r8909, r8910, r8911, r8912, r8913, r8914, r8915, r8916, r8917, r8918, r8919, r8920, r8921, r8922, r8923, r8924, r8925, r8926, r8927, r8928, r8929, r8930, r8931, r8932, r8933, r8934, r8935, r8936, r8937, r8938, r8939, r8940, r8941, r8942, r8943, r8944, r8945, r8946, r8947, r8948, r8949, r8950, r8951, r8952, r8953, r8954, r8955, r8956, r8957, r8958, r8959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart112 at p112
  rcases p112 with ⟨r8960, r8961, r8962, r8963, r8964, r8965, r8966, r8967, r8968, r8969, r8970, r8971, r8972, r8973, r8974, r8975, r8976, r8977, r8978, r8979, r8980, r8981, r8982, r8983, r8984, r8985, r8986, r8987, r8988, r8989, r8990, r8991, r8992, r8993, r8994, r8995, r8996, r8997, r8998, r8999, r9000, r9001, r9002, r9003, r9004, r9005, r9006, r9007, r9008, r9009, r9010, r9011, r9012, r9013, r9014⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.relation (rho 8634) (rho 8636) (rho 8639) (rho 8635) (rho 8637) (rho 8638) (rho 8640) (rho 8641) (rho 8642)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8972 ∧ o1 = rho 8977 ∧ o2 = rho 8982 ∧ o3 = rho 8987 ∧ o4 = rho 8992) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.relation
    exact template_scp_node23_seg0 rho _ r8665 r8666 r8667 r8668 r8669 (template_scp_node23_seg1 rho _ r8670 r8671 r8672 r8673 r8674 (template_scp_node23_seg2 rho _ r8675 r8676 r8677 r8678 r8679 (template_scp_node23_seg3 rho _ r8680 r8681 r8682 r8683 r8684 (template_scp_node23_seg4 rho _ r8685 r8686 r8687 r8688 r8689 (template_scp_node23_seg5 rho _ r8690 r8691 r8692 r8693 r8694 (template_scp_node23_seg6 rho _ r8695 r8696 r8697 r8698 r8699 (template_scp_node23_seg7 rho _ r8700 r8701 r8702 r8703 r8704 (template_scp_node23_seg8 rho _ r8705 r8706 r8707 r8708 r8709 (template_scp_node23_seg9 rho _ r8710 r8711 r8712 r8713 r8714 (template_scp_node23_seg10 rho _ r8715 r8716 r8717 r8718 r8719 (template_scp_node23_seg11 rho _ r8720 r8721 r8722 r8723 r8724 (template_scp_node23_seg12 rho _ r8725 r8726 r8727 r8728 r8729 (template_scp_node23_template rho _ r8730 r8731 r8732 r8733 r8734 (template_scp_node23_seg14 rho _ r8735 r8736 r8737 r8738 r8739 (template_scp_node23_seg15 rho _ r8740 r8741 r8742 r8743 r8744 (template_scp_node23_seg16 rho _ r8745 r8746 r8747 r8748 r8749 (template_scp_node23_seg17 rho _ r8750 r8751 r8752 r8753 r8754 (template_scp_node23_seg18 rho _ r8755 r8756 r8757 r8758 r8759 (template_scp_node23_seg19 rho _ r8760 r8761 r8762 r8763 r8764 (template_scp_node23_seg20 rho _ r8765 r8766 r8767 r8768 r8769 (template_scp_node23_seg21 rho _ r8770 r8771 r8772 r8773 r8774 (template_scp_node23_seg22 rho _ r8775 r8776 r8777 r8778 r8779 (template_scp_node23_seg23 rho _ r8780 r8781 r8782 r8783 r8784 (template_scp_node23_seg24 rho _ r8785 r8786 r8787 r8788 r8789 (template_scp_node23_seg25 rho _ r8790 r8791 r8792 r8793 r8794 (template_scp_node23_seg26 rho _ r8795 r8796 r8797 r8798 r8799 (template_scp_node23_seg27 rho _ r8800 r8801 r8802 r8803 r8804 (template_scp_node23_seg28 rho _ r8805 r8806 r8807 r8808 r8809 (template_scp_node23_seg29 rho _ r8810 r8811 r8812 r8813 r8814 (template_scp_node23_seg30 rho _ r8815 r8816 r8817 r8818 r8819 (template_scp_node23_seg31 rho _ r8820 r8821 r8822 r8823 r8824 (template_scp_node23_seg32 rho _ r8825 r8826 r8827 r8828 r8829 (template_scp_node23_seg33 rho _ r8830 r8831 r8832 r8833 r8834 (template_scp_node23_seg34 rho _ r8835 r8836 r8837 r8838 r8839 (template_scp_node23_seg35 rho _ r8840 r8841 r8842 r8843 r8844 (template_scp_node23_seg36 rho _ r8845 r8846 r8847 r8848 r8849 (template_scp_node23_seg37 rho _ r8850 r8851 r8852 r8853 r8854 (template_scp_node23_seg38 rho _ r8855 r8856 r8857 r8858 r8859 (template_scp_node23_seg39 rho _ r8860 r8861 r8862 r8863 r8864 (template_scp_node23_seg40 rho _ r8865 r8866 r8867 r8868 r8869 (template_scp_node23_seg41 rho _ r8870 r8871 r8872 r8873 r8874 (template_scp_node23_seg42 rho _ r8875 r8876 r8877 r8878 r8879 (template_scp_node23_seg43 rho _ r8880 r8881 r8882 r8883 r8884 (template_scp_node23_seg44 rho _ r8885 r8886 r8887 r8888 r8889 (template_scp_node23_seg45 rho _ r8890 r8891 r8892 r8893 r8894 (template_scp_node23_seg46 rho _ r8895 r8896 r8897 r8898 r8899 (template_scp_node23_seg47 rho _ r8900 r8901 r8902 r8903 r8904 (template_scp_node23_seg48 rho _ r8905 r8906 r8907 r8908 r8909 (template_scp_node23_seg49 rho _ r8910 r8911 r8912 r8913 r8914 (template_scp_node23_seg50 rho _ r8915 r8916 r8917 r8918 r8919 (template_scp_node23_seg51 rho _ r8920 r8921 r8922 r8923 r8924 (template_scp_node23_seg52 rho _ r8925 r8926 r8927 r8928 r8929 (template_scp_node23_seg53 rho _ r8930 r8931 r8932 r8933 r8934 (template_scp_node23_seg54 rho _ r8935 r8936 r8937 r8938 r8939 (template_scp_node23_seg55 rho _ r8940 r8941 r8942 r8943 r8944 (template_scp_node23_seg56 rho _ r8945 r8946 r8947 r8948 r8949 (template_scp_node23_seg57 rho _ r8950 r8951 r8952 r8953 r8954 (template_scp_node23_seg58 rho _ r8955 r8956 r8957 r8958 r8959 (template_scp_node23_seg59 rho _ r8960 r8961 r8962 r8963 r8964 (template_scp_node23_seg60 rho _ r8965 r8966 r8967 r8968 r8969 (template_scp_node23_seg61 rho _ r8970 r8971 r8972 r8973 r8974 (template_scp_node23_seg62 rho _ r8975 r8976 r8977 r8978 r8979 (template_scp_node23_seg63 rho _ r8980 r8981 r8982 r8983 r8984 (template_scp_node23_seg64 rho _ r8985 r8986 r8987 r8988 r8989 (template_scp_node23_seg65 rho _ r8990 r8991 r8992 r8993 r8994 (template_scp_node23_seg66 rho _ r8995 r8996 r8997 r8998 r8999 (template_scp_node23_seg67 rho _ r9000 r9001 r9002 r9003 r9004 (template_scp_node23_seg68 rho _ r9005 r9006 r9007 r9008 r9009 (template_scp_node23_seg69 rho _ r9010 r9011 r9012 r9013 r9014 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.relation_sound_permSpec (rho 8634) (rho 8636) (rho 8639) (rho 8635) (rho 8637) (rho 8638) (rho 8640) (rho 8641) (rho 8642) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.tctNode24DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.F) + (24 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [templateScpNode23Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

