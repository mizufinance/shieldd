import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathNode2Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node2_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation rho) :
    nodeOut2 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 772 + rho 773) (rho 774 + rho 775 + rho 776) (rho 774 + rho 778 + rho 779) (rho 777 + rho 780) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, p9, p10, p11, p12, p13, p14, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r775, r776, r777, r778, r779, r780, r781, r782, r783, r784, r785, r786, r787, r788, r789, r790, r791, r792, r793, r794, r795, r796, r797, r798, r799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, r807, r808, r809, r810, r811, r812, r813, r814, r815, r816, r817, r818, r819, r820, r821, r822, r823, r824, r825, r826, r827, r828, r829, r830, r831, r832, r833, r834, r835, r836, r837, r838, r839, r840, r841, r842, r843, r844, r845, r846, r847, r848, r849, r850, r851, r852, r853, r854, r855, r856, r857, r858, r859, r860, r861, r862, r863, r864, r865, r866, r867, r868, r869, r870, r871, r872, r873, r874, r875, r876, r877, r878, r879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart11 at p11
  rcases p11 with ⟨r880, r881, r882, r883, r884, r885, r886, r887, r888, r889, r890, r891, r892, r893, r894, r895, r896, r897, r898, r899, r900, r901, r902, r903, r904, r905, r906, r907, r908, r909, r910, r911, r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924, r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, r951, r952, r953, r954, r955, r956, r957, r958, r959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002, r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015, r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 772 + rho 773) (rho 774 + rho 775 + rho 776) (rho 774 + rho 778 + rho 779) (rho 777 + rho 780)
      (fun w334 w339 w344 w349 w354 => w334 = rho 1110 ∧ w339 = rho 1115 ∧ w344 = rho 1120 ∧ w349 = rho 1125 ∧ w354 = rho 1130) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node2_seg0 rho _ r775 r776 r777 r778 r779 (node2_seg1 rho _ r780 r781 r782 r783 r784 (node2_seg2 rho _ r785 r786 r787 r788 r789 (node2_seg3 rho _ r790 r791 r792 r793 r794 (node2_seg4 rho _ r795 r796 r797 r798 r799 (node2_seg5 rho _ r800 r801 r802 r803 r804 (node2_seg6 rho _ r805 r806 r807 r808 r809 (node2_seg7 rho _ r810 r811 r812 r813 r814 (node2_seg8 rho _ r815 r816 r817 r818 r819 (node2_seg9 rho _ r820 r821 r822 r823 r824 (node2_seg10 rho _ r825 r826 r827 r828 r829 (node2_seg11 rho _ r830 r831 r832 r833 r834 (node2_seg12 rho _ r835 r836 r837 r838 r839 (node2_seg13 rho _ r840 r841 r842 r843 r844 (node2_seg14 rho _ r845 r846 r847 r848 r849 (node2_seg15 rho _ r850 r851 r852 r853 r854 (node2_seg16 rho _ r855 r856 r857 r858 r859 (node2_seg17 rho _ r860 r861 r862 r863 r864 (node2_seg18 rho _ r865 r866 r867 r868 r869 (node2_seg19 rho _ r870 r871 r872 r873 r874 (node2_seg20 rho _ r875 r876 r877 r878 r879 (node2_seg21 rho _ r880 r881 r882 r883 r884 (node2_seg22 rho _ r885 r886 r887 r888 r889 (node2_seg23 rho _ r890 r891 r892 r893 r894 (node2_seg24 rho _ r895 r896 r897 r898 r899 (node2_seg25 rho _ r900 r901 r902 r903 r904 (node2_seg26 rho _ r905 r906 r907 r908 r909 (node2_seg27 rho _ r910 r911 r912 r913 r914 (node2_seg28 rho _ r915 r916 r917 r918 r919 (node2_seg29 rho _ r920 r921 r922 r923 r924 (node2_seg30 rho _ r925 r926 r927 r928 r929 (node2_seg31 rho _ r930 r931 r932 r933 r934 (node2_seg32 rho _ r935 r936 r937 r938 r939 (node2_seg33 rho _ r940 r941 r942 r943 r944 (node2_seg34 rho _ r945 r946 r947 r948 r949 (node2_seg35 rho _ r950 r951 r952 r953 r954 (node2_seg36 rho _ r955 r956 r957 r958 r959 (node2_seg37 rho _ r960 r961 r962 r963 r964 (node2_seg38 rho _ r965 r966 r967 r968 r969 (node2_seg39 rho _ r970 r971 r972 r973 r974 (node2_seg40 rho _ r975 r976 r977 r978 r979 (node2_seg41 rho _ r980 r981 r982 r983 r984 (node2_seg42 rho _ r985 r986 r987 r988 r989 (node2_seg43 rho _ r990 r991 r992 r993 r994 (node2_seg44 rho _ r995 r996 r997 r998 r999 (node2_seg45 rho _ r1000 r1001 r1002 r1003 r1004 (node2_seg46 rho _ r1005 r1006 r1007 r1008 r1009 (node2_seg47 rho _ r1010 r1011 r1012 r1013 r1014 (node2_seg48 rho _ r1015 r1016 r1017 r1018 r1019 (node2_seg49 rho _ r1020 r1021 r1022 r1023 r1024 (node2_seg50 rho _ r1025 r1026 r1027 r1028 r1029 (node2_seg51 rho _ r1030 r1031 r1032 r1033 r1034 (node2_seg52 rho _ r1035 r1036 r1037 r1038 r1039 (node2_seg53 rho _ r1040 r1041 r1042 r1043 r1044 (node2_seg54 rho _ r1045 r1046 r1047 r1048 r1049 (node2_seg55 rho _ r1050 r1051 r1052 r1053 r1054 (node2_seg56 rho _ r1055 r1056 r1057 r1058 r1059 (node2_seg57 rho _ r1060 r1061 r1062 r1063 r1064 (node2_seg58 rho _ r1065 r1066 r1067 r1068 r1069 (node2_seg59 rho _ r1070 r1071 r1072 r1073 r1074 (node2_seg60 rho _ r1075 r1076 r1077 r1078 r1079 (node2_seg61 rho _ r1080 r1081 r1082 r1083 r1084 (node2_seg62 rho _ r1085 r1086 r1087 r1088 r1089 (node2_seg63 rho _ r1090 r1091 r1092 r1093 r1094 (node2_seg64 rho _ r1095 r1096 r1097 r1098 r1099 (node2_seg65 rho _ r1100 r1101 r1102 r1103 r1104 (node2_seg66 rho _ r1105 r1106 r1107 r1108 r1109 (node2_seg67 rho _ r1110 r1111 r1112 r1113 r1114 (node2_seg68 rho _ r1115 r1116 r1117 r1118 r1119 (node2_seg69 rho _ r1120 r1121 r1122 r1123 r1124 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 772 + rho 773) (rho 774 + rho 775 + rho 776) (rho 774 + rho 778 + rho 779) (rho 777 + rho 780) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut2, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
