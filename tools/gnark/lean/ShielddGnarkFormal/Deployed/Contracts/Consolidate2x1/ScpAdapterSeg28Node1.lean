import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows0
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows1
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Node1Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode1.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node1_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode1Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (2 : Seg28.F))
        (rho 181 + rho 20041) (rho 182 + rho 20042 + rho 20043)
        (rho 182 + rho 20044 + rho 20045) (rho 183 + rho 20046) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, p9,
    p10, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r657, r658, r659, r660, r661, r662, r663, r664, r665, r666, r667, r668, r669, r670, r671, r672, r673, r674, r675, r676, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, r687, r688, r689, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, r705, r706, r707, r708, r709, r710, r711, r712, r713, r714, r715, r716, r717, r718, r719⟩
  unfold Seg28.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, r731, r732, r733, r734, r735, r736, r737, r738, r739, r740, r741, r742, r743, r744, r745, r746, r747, r748, r749, r750, r751, r752, r753, r754, r755, r756, r757, r758, r759, r760, r761, r762, r763, r764, r765, r766, r767, r768, r769, r770, r771, r772, r773, r774, r775, r776, r777, r778, r779, r780, r781, r782, r783, r784, r785, r786, r787, r788, r789, r790, r791, r792, r793, r794, r795, r796, r797, r798, r799⟩
  unfold Seg28.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, r807, r808, r809, r810, r811, r812, r813, r814, r815, r816, r817, r818, r819, r820, r821, r822, r823, r824, r825, r826, r827, r828, r829, r830, r831, r832, r833, r834, r835, r836, r837, r838, r839, r840, r841, r842, r843, r844, r845, r846, r847, r848, r849, r850, r851, r852, r853, r854, r855, r856, r857, r858, r859, r860, r861, r862, r863, r864, r865, r866, r867, r868, r869, r870, r871, r872, r873, r874, r875, r876, r877, r878, r879⟩
  unfold Seg28.relationPart11 at p11
  rcases p11 with ⟨r880, r881, r882, r883, r884, r885, r886, r887, r888, r889, r890, r891, r892, r893, r894, r895, r896, r897, r898, r899, r900, r901, r902, r903, r904, r905, r906, r907, r908, r909, r910, r911, r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924, r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, r951, r952, r953, r954, r955, r956, r957, r958, r959⟩
  unfold Seg28.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002, r1003, r1004, r1005, r1006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.relation (rho 181) (rho 182) (rho 183) (rho 20041) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046)
      (fun o0 o1 o2 o3 o4 => o0 = rho 20376 ∧ o1 = rho 20381 ∧ o2 = rho 20386 ∧ o3 = rho 20391 ∧ o4 = rho 20396) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.relation
    exact seg28_scp_node1_seg0 rho _ r657 r658 r659 r660 r661 (seg28_scp_node1_seg1 rho _ r662 r663 r664 r665 r666 (seg28_scp_node1_seg2 rho _ r667 r668 r669 r670 r671 (seg28_scp_node1_seg3 rho _ r672 r673 r674 r675 r676 (seg28_scp_node1_seg4 rho _ r677 r678 r679 r680 r681 (seg28_scp_node1_seg5 rho _ r682 r683 r684 r685 r686 (seg28_scp_node1_seg6 rho _ r687 r688 r689 r690 r691 (seg28_scp_node1_seg7 rho _ r692 r693 r694 r695 r696 (seg28_scp_node1_seg8 rho _ r697 r698 r699 r700 r701 (seg28_scp_node1_seg9 rho _ r702 r703 r704 r705 r706 (seg28_scp_node1_seg10 rho _ r707 r708 r709 r710 r711 (seg28_scp_node1_seg11 rho _ r712 r713 r714 r715 r716 (seg28_scp_node1_seg12 rho _ r717 r718 r719 r720 r721 (seg28_scp_node1_seg13 rho _ r722 r723 r724 r725 r726 (seg28_scp_node1_seg14 rho _ r727 r728 r729 r730 r731 (seg28_scp_node1_seg15 rho _ r732 r733 r734 r735 r736 (seg28_scp_node1_seg16 rho _ r737 r738 r739 r740 r741 (seg28_scp_node1_seg17 rho _ r742 r743 r744 r745 r746 (seg28_scp_node1_seg18 rho _ r747 r748 r749 r750 r751 (seg28_scp_node1_seg19 rho _ r752 r753 r754 r755 r756 (seg28_scp_node1_seg20 rho _ r757 r758 r759 r760 r761 (seg28_scp_node1_seg21 rho _ r762 r763 r764 r765 r766 (seg28_scp_node1_seg22 rho _ r767 r768 r769 r770 r771 (seg28_scp_node1_seg23 rho _ r772 r773 r774 r775 r776 (seg28_scp_node1_seg24 rho _ r777 r778 r779 r780 r781 (seg28_scp_node1_seg25 rho _ r782 r783 r784 r785 r786 (seg28_scp_node1_seg26 rho _ r787 r788 r789 r790 r791 (seg28_scp_node1_seg27 rho _ r792 r793 r794 r795 r796 (seg28_scp_node1_seg28 rho _ r797 r798 r799 r800 r801 (seg28_scp_node1_seg29 rho _ r802 r803 r804 r805 r806 (seg28_scp_node1_seg30 rho _ r807 r808 r809 r810 r811 (seg28_scp_node1_seg31 rho _ r812 r813 r814 r815 r816 (seg28_scp_node1_seg32 rho _ r817 r818 r819 r820 r821 (seg28_scp_node1_seg33 rho _ r822 r823 r824 r825 r826 (seg28_scp_node1_seg34 rho _ r827 r828 r829 r830 r831 (seg28_scp_node1_seg35 rho _ r832 r833 r834 r835 r836 (seg28_scp_node1_seg36 rho _ r837 r838 r839 r840 r841 (seg28_scp_node1_seg37 rho _ r842 r843 r844 r845 r846 (seg28_scp_node1_seg38 rho _ r847 r848 r849 r850 r851 (seg28_scp_node1_seg39 rho _ r852 r853 r854 r855 r856 (seg28_scp_node1_seg40 rho _ r857 r858 r859 r860 r861 (seg28_scp_node1_seg41 rho _ r862 r863 r864 r865 r866 (seg28_scp_node1_seg42 rho _ r867 r868 r869 r870 r871 (seg28_scp_node1_seg43 rho _ r872 r873 r874 r875 r876 (seg28_scp_node1_seg44 rho _ r877 r878 r879 r880 r881 (seg28_scp_node1_seg45 rho _ r882 r883 r884 r885 r886 (seg28_scp_node1_seg46 rho _ r887 r888 r889 r890 r891 (seg28_scp_node1_seg47 rho _ r892 r893 r894 r895 r896 (seg28_scp_node1_seg48 rho _ r897 r898 r899 r900 r901 (seg28_scp_node1_seg49 rho _ r902 r903 r904 r905 r906 (seg28_scp_node1_seg50 rho _ r907 r908 r909 r910 r911 (seg28_scp_node1_seg51 rho _ r912 r913 r914 r915 r916 (seg28_scp_node1_seg52 rho _ r917 r918 r919 r920 r921 (seg28_scp_node1_seg53 rho _ r922 r923 r924 r925 r926 (seg28_scp_node1_seg54 rho _ r927 r928 r929 r930 r931 (seg28_scp_node1_seg55 rho _ r932 r933 r934 r935 r936 (seg28_scp_node1_seg56 rho _ r937 r938 r939 r940 r941 (seg28_scp_node1_seg57 rho _ r942 r943 r944 r945 r946 (seg28_scp_node1_seg58 rho _ r947 r948 r949 r950 r951 (seg28_scp_node1_seg59 rho _ r952 r953 r954 r955 r956 (seg28_scp_node1_seg60 rho _ r957 r958 r959 r960 r961 (seg28_scp_node1_seg61 rho _ r962 r963 r964 r965 r966 (seg28_scp_node1_seg62 rho _ r967 r968 r969 r970 r971 (seg28_scp_node1_seg63 rho _ r972 r973 r974 r975 r976 (seg28_scp_node1_seg64 rho _ r977 r978 r979 r980 r981 (seg28_scp_node1_seg65 rho _ r982 r983 r984 r985 r986 (seg28_scp_node1_seg66 rho _ r987 r988 r989 r990 r991 (seg28_scp_node1_seg67 rho _ r992 r993 r994 r995 r996 (seg28_scp_node1_seg68 rho _ r997 r998 r999 r1000 r1001 (seg28_scp_node1_seg69 rho _ r1002 r1003 r1004 r1005 r1006 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.relation_sound_permSpec (rho 181) (rho 182) (rho 183) (rho 20041) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.tctNode2DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.F) + (2 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode1Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

