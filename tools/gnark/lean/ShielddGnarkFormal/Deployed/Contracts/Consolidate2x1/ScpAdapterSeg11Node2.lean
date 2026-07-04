import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode2.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_node2_eq (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode2Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (3 : Seg11.F))
        (rho 88 + rho 2655) (rho 89 + rho 2656 + rho 2657)
        (rho 89 + rho 2658 + rho 2659) (rho 90 + rho 2660) := by
  unfold Seg11.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, p13, p14, p15, p16, p17, _, _,
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
  unfold Seg11.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg11.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Seg11.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Seg11.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Seg11.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Seg11.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.relation (rho 88) (rho 89) (rho 90) (rho 2655) (rho 2656) (rho 2657) (rho 2658) (rho 2659) (rho 2660)
      (fun o0 o1 o2 o3 o4 => o0 = rho 2990 ∧ o1 = rho 2995 ∧ o2 = rho 3000 ∧ o3 = rho 3005 ∧ o4 = rho 3010) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg0
    refine ⟨rho 2661, rho 2662, rho 2663, rho 2664, rho 2665,
      (by unfold Seg11.relationRow1021 at r1021; linear_combination r1021), (by unfold Seg11.relationRow1022 at r1022; linear_combination r1022), (by unfold Seg11.relationRow1023 at r1023; linear_combination r1023), (by unfold Seg11.relationRow1024 at r1024; linear_combination r1024), (by unfold Seg11.relationRow1025 at r1025; linear_combination r1025), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg1
    refine ⟨rho 2666, rho 2667, rho 2668, rho 2669, rho 2670,
      (by unfold Seg11.relationRow1026 at r1026; linear_combination r1026), (by unfold Seg11.relationRow1027 at r1027; linear_combination r1027), (by unfold Seg11.relationRow1028 at r1028; linear_combination r1028), (by unfold Seg11.relationRow1029 at r1029; linear_combination r1029), (by unfold Seg11.relationRow1030 at r1030; linear_combination r1030), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg2
    refine ⟨rho 2671, rho 2672, rho 2673, rho 2674, rho 2675,
      (by unfold Seg11.relationRow1031 at r1031; linear_combination r1031), (by unfold Seg11.relationRow1032 at r1032; linear_combination r1032), (by unfold Seg11.relationRow1033 at r1033; linear_combination r1033), (by unfold Seg11.relationRow1034 at r1034; linear_combination r1034), (by unfold Seg11.relationRow1035 at r1035; linear_combination r1035), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg3
    refine ⟨rho 2676, rho 2677, rho 2678, rho 2679, rho 2680,
      (by unfold Seg11.relationRow1036 at r1036; linear_combination r1036), (by unfold Seg11.relationRow1037 at r1037; linear_combination r1037), (by unfold Seg11.relationRow1038 at r1038; linear_combination r1038), (by unfold Seg11.relationRow1039 at r1039; linear_combination r1039), (by unfold Seg11.relationRow1040 at r1040; linear_combination r1040), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg4
    refine ⟨rho 2681, rho 2682, rho 2683, rho 2684, rho 2685,
      (by unfold Seg11.relationRow1041 at r1041; linear_combination r1041), (by unfold Seg11.relationRow1042 at r1042; linear_combination r1042), (by unfold Seg11.relationRow1043 at r1043; linear_combination r1043), (by unfold Seg11.relationRow1044 at r1044; linear_combination r1044), (by unfold Seg11.relationRow1045 at r1045; linear_combination r1045), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg5
    refine ⟨rho 2686, rho 2687, rho 2688, rho 2689, rho 2690,
      (by unfold Seg11.relationRow1046 at r1046; linear_combination r1046), (by unfold Seg11.relationRow1047 at r1047; linear_combination r1047), (by unfold Seg11.relationRow1048 at r1048; linear_combination r1048), (by unfold Seg11.relationRow1049 at r1049; linear_combination r1049), (by unfold Seg11.relationRow1050 at r1050; linear_combination r1050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg6
    refine ⟨rho 2691, rho 2692, rho 2693, rho 2694, rho 2695,
      (by unfold Seg11.relationRow1051 at r1051; linear_combination r1051), (by unfold Seg11.relationRow1052 at r1052; linear_combination r1052), (by unfold Seg11.relationRow1053 at r1053; linear_combination r1053), (by unfold Seg11.relationRow1054 at r1054; linear_combination r1054), (by unfold Seg11.relationRow1055 at r1055; linear_combination r1055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg7
    refine ⟨rho 2696, rho 2697, rho 2698, rho 2699, rho 2700,
      (by unfold Seg11.relationRow1056 at r1056; linear_combination r1056), (by unfold Seg11.relationRow1057 at r1057; linear_combination r1057), (by unfold Seg11.relationRow1058 at r1058; linear_combination r1058), (by unfold Seg11.relationRow1059 at r1059; linear_combination r1059), (by unfold Seg11.relationRow1060 at r1060; linear_combination r1060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg8
    refine ⟨rho 2701, rho 2702, rho 2703, rho 2704, rho 2705,
      (by unfold Seg11.relationRow1061 at r1061; linear_combination r1061), (by unfold Seg11.relationRow1062 at r1062; linear_combination r1062), (by unfold Seg11.relationRow1063 at r1063; linear_combination r1063), (by unfold Seg11.relationRow1064 at r1064; linear_combination r1064), (by unfold Seg11.relationRow1065 at r1065; linear_combination r1065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg9
    refine ⟨rho 2706, rho 2707, rho 2708, rho 2709, rho 2710,
      (by unfold Seg11.relationRow1066 at r1066; linear_combination r1066), (by unfold Seg11.relationRow1067 at r1067; linear_combination r1067), (by unfold Seg11.relationRow1068 at r1068; linear_combination r1068), (by unfold Seg11.relationRow1069 at r1069; linear_combination r1069), (by unfold Seg11.relationRow1070 at r1070; linear_combination r1070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg10
    refine ⟨rho 2711, rho 2712, rho 2713, rho 2714, rho 2715,
      (by unfold Seg11.relationRow1071 at r1071; linear_combination r1071), (by unfold Seg11.relationRow1072 at r1072; linear_combination r1072), (by unfold Seg11.relationRow1073 at r1073; linear_combination r1073), (by unfold Seg11.relationRow1074 at r1074; linear_combination r1074), (by unfold Seg11.relationRow1075 at r1075; linear_combination r1075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg11
    refine ⟨rho 2716, rho 2717, rho 2718, rho 2719, rho 2720,
      (by unfold Seg11.relationRow1076 at r1076; linear_combination r1076), (by unfold Seg11.relationRow1077 at r1077; linear_combination r1077), (by unfold Seg11.relationRow1078 at r1078; linear_combination r1078), (by unfold Seg11.relationRow1079 at r1079; linear_combination r1079), (by unfold Seg11.relationRow1080 at r1080; linear_combination r1080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg12
    refine ⟨rho 2721, rho 2722, rho 2723, rho 2724, rho 2725,
      (by unfold Seg11.relationRow1081 at r1081; linear_combination r1081), (by unfold Seg11.relationRow1082 at r1082; linear_combination r1082), (by unfold Seg11.relationRow1083 at r1083; linear_combination r1083), (by unfold Seg11.relationRow1084 at r1084; linear_combination r1084), (by unfold Seg11.relationRow1085 at r1085; linear_combination r1085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg13
    refine ⟨rho 2726, rho 2727, rho 2728, rho 2729, rho 2730,
      (by unfold Seg11.relationRow1086 at r1086; linear_combination r1086), (by unfold Seg11.relationRow1087 at r1087; linear_combination r1087), (by unfold Seg11.relationRow1088 at r1088; linear_combination r1088), (by unfold Seg11.relationRow1089 at r1089; linear_combination r1089), (by unfold Seg11.relationRow1090 at r1090; linear_combination r1090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg14
    refine ⟨rho 2731, rho 2732, rho 2733, rho 2734, rho 2735,
      (by unfold Seg11.relationRow1091 at r1091; linear_combination r1091), (by unfold Seg11.relationRow1092 at r1092; linear_combination r1092), (by unfold Seg11.relationRow1093 at r1093; linear_combination r1093), (by unfold Seg11.relationRow1094 at r1094; linear_combination r1094), (by unfold Seg11.relationRow1095 at r1095; linear_combination r1095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg15
    refine ⟨rho 2736, rho 2737, rho 2738, rho 2739, rho 2740,
      (by unfold Seg11.relationRow1096 at r1096; linear_combination r1096), (by unfold Seg11.relationRow1097 at r1097; linear_combination r1097), (by unfold Seg11.relationRow1098 at r1098; linear_combination r1098), (by unfold Seg11.relationRow1099 at r1099; linear_combination r1099), (by unfold Seg11.relationRow1100 at r1100; linear_combination r1100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg16
    refine ⟨rho 2741, rho 2742, rho 2743, rho 2744, rho 2745,
      (by unfold Seg11.relationRow1101 at r1101; linear_combination r1101), (by unfold Seg11.relationRow1102 at r1102; linear_combination r1102), (by unfold Seg11.relationRow1103 at r1103; linear_combination r1103), (by unfold Seg11.relationRow1104 at r1104; linear_combination r1104), (by unfold Seg11.relationRow1105 at r1105; linear_combination r1105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg17
    refine ⟨rho 2746, rho 2747, rho 2748, rho 2749, rho 2750,
      (by unfold Seg11.relationRow1106 at r1106; linear_combination r1106), (by unfold Seg11.relationRow1107 at r1107; linear_combination r1107), (by unfold Seg11.relationRow1108 at r1108; linear_combination r1108), (by unfold Seg11.relationRow1109 at r1109; linear_combination r1109), (by unfold Seg11.relationRow1110 at r1110; linear_combination r1110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg18
    refine ⟨rho 2751, rho 2752, rho 2753, rho 2754, rho 2755,
      (by unfold Seg11.relationRow1111 at r1111; linear_combination r1111), (by unfold Seg11.relationRow1112 at r1112; linear_combination r1112), (by unfold Seg11.relationRow1113 at r1113; linear_combination r1113), (by unfold Seg11.relationRow1114 at r1114; linear_combination r1114), (by unfold Seg11.relationRow1115 at r1115; linear_combination r1115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg19
    refine ⟨rho 2756, rho 2757, rho 2758, rho 2759, rho 2760,
      (by unfold Seg11.relationRow1116 at r1116; linear_combination r1116), (by unfold Seg11.relationRow1117 at r1117; linear_combination r1117), (by unfold Seg11.relationRow1118 at r1118; linear_combination r1118), (by unfold Seg11.relationRow1119 at r1119; linear_combination r1119), (by unfold Seg11.relationRow1120 at r1120; linear_combination r1120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg20
    refine ⟨rho 2761, rho 2762, rho 2763, rho 2764, rho 2765,
      (by unfold Seg11.relationRow1121 at r1121; linear_combination r1121), (by unfold Seg11.relationRow1122 at r1122; linear_combination r1122), (by unfold Seg11.relationRow1123 at r1123; linear_combination r1123), (by unfold Seg11.relationRow1124 at r1124; linear_combination r1124), (by unfold Seg11.relationRow1125 at r1125; linear_combination r1125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg21
    refine ⟨rho 2766, rho 2767, rho 2768, rho 2769, rho 2770,
      (by unfold Seg11.relationRow1126 at r1126; linear_combination r1126), (by unfold Seg11.relationRow1127 at r1127; linear_combination r1127), (by unfold Seg11.relationRow1128 at r1128; linear_combination r1128), (by unfold Seg11.relationRow1129 at r1129; linear_combination r1129), (by unfold Seg11.relationRow1130 at r1130; linear_combination r1130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg22
    refine ⟨rho 2771, rho 2772, rho 2773, rho 2774, rho 2775,
      (by unfold Seg11.relationRow1131 at r1131; linear_combination r1131), (by unfold Seg11.relationRow1132 at r1132; linear_combination r1132), (by unfold Seg11.relationRow1133 at r1133; linear_combination r1133), (by unfold Seg11.relationRow1134 at r1134; linear_combination r1134), (by unfold Seg11.relationRow1135 at r1135; linear_combination r1135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg23
    refine ⟨rho 2776, rho 2777, rho 2778, rho 2779, rho 2780,
      (by unfold Seg11.relationRow1136 at r1136; linear_combination r1136), (by unfold Seg11.relationRow1137 at r1137; linear_combination r1137), (by unfold Seg11.relationRow1138 at r1138; linear_combination r1138), (by unfold Seg11.relationRow1139 at r1139; linear_combination r1139), (by unfold Seg11.relationRow1140 at r1140; linear_combination r1140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg24
    refine ⟨rho 2781, rho 2782, rho 2783, rho 2784, rho 2785,
      (by unfold Seg11.relationRow1141 at r1141; linear_combination r1141), (by unfold Seg11.relationRow1142 at r1142; linear_combination r1142), (by unfold Seg11.relationRow1143 at r1143; linear_combination r1143), (by unfold Seg11.relationRow1144 at r1144; linear_combination r1144), (by unfold Seg11.relationRow1145 at r1145; linear_combination r1145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg25
    refine ⟨rho 2786, rho 2787, rho 2788, rho 2789, rho 2790,
      (by unfold Seg11.relationRow1146 at r1146; linear_combination r1146), (by unfold Seg11.relationRow1147 at r1147; linear_combination r1147), (by unfold Seg11.relationRow1148 at r1148; linear_combination r1148), (by unfold Seg11.relationRow1149 at r1149; linear_combination r1149), (by unfold Seg11.relationRow1150 at r1150; linear_combination r1150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg26
    refine ⟨rho 2791, rho 2792, rho 2793, rho 2794, rho 2795,
      (by unfold Seg11.relationRow1151 at r1151; linear_combination r1151), (by unfold Seg11.relationRow1152 at r1152; linear_combination r1152), (by unfold Seg11.relationRow1153 at r1153; linear_combination r1153), (by unfold Seg11.relationRow1154 at r1154; linear_combination r1154), (by unfold Seg11.relationRow1155 at r1155; linear_combination r1155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg27
    refine ⟨rho 2796, rho 2797, rho 2798, rho 2799, rho 2800,
      (by unfold Seg11.relationRow1156 at r1156; linear_combination r1156), (by unfold Seg11.relationRow1157 at r1157; linear_combination r1157), (by unfold Seg11.relationRow1158 at r1158; linear_combination r1158), (by unfold Seg11.relationRow1159 at r1159; linear_combination r1159), (by unfold Seg11.relationRow1160 at r1160; linear_combination r1160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg28
    refine ⟨rho 2801, rho 2802, rho 2803, rho 2804, rho 2805,
      (by unfold Seg11.relationRow1161 at r1161; linear_combination r1161), (by unfold Seg11.relationRow1162 at r1162; linear_combination r1162), (by unfold Seg11.relationRow1163 at r1163; linear_combination r1163), (by unfold Seg11.relationRow1164 at r1164; linear_combination r1164), (by unfold Seg11.relationRow1165 at r1165; linear_combination r1165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg29
    refine ⟨rho 2806, rho 2807, rho 2808, rho 2809, rho 2810,
      (by unfold Seg11.relationRow1166 at r1166; linear_combination r1166), (by unfold Seg11.relationRow1167 at r1167; linear_combination r1167), (by unfold Seg11.relationRow1168 at r1168; linear_combination r1168), (by unfold Seg11.relationRow1169 at r1169; linear_combination r1169), (by unfold Seg11.relationRow1170 at r1170; linear_combination r1170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg30
    refine ⟨rho 2811, rho 2812, rho 2813, rho 2814, rho 2815,
      (by unfold Seg11.relationRow1171 at r1171; linear_combination r1171), (by unfold Seg11.relationRow1172 at r1172; linear_combination r1172), (by unfold Seg11.relationRow1173 at r1173; linear_combination r1173), (by unfold Seg11.relationRow1174 at r1174; linear_combination r1174), (by unfold Seg11.relationRow1175 at r1175; linear_combination r1175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg31
    refine ⟨rho 2816, rho 2817, rho 2818, rho 2819, rho 2820,
      (by unfold Seg11.relationRow1176 at r1176; linear_combination r1176), (by unfold Seg11.relationRow1177 at r1177; linear_combination r1177), (by unfold Seg11.relationRow1178 at r1178; linear_combination r1178), (by unfold Seg11.relationRow1179 at r1179; linear_combination r1179), (by unfold Seg11.relationRow1180 at r1180; linear_combination r1180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg32
    refine ⟨rho 2821, rho 2822, rho 2823, rho 2824, rho 2825,
      (by unfold Seg11.relationRow1181 at r1181; linear_combination r1181), (by unfold Seg11.relationRow1182 at r1182; linear_combination r1182), (by unfold Seg11.relationRow1183 at r1183; linear_combination r1183), (by unfold Seg11.relationRow1184 at r1184; linear_combination r1184), (by unfold Seg11.relationRow1185 at r1185; linear_combination r1185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg33
    refine ⟨rho 2826, rho 2827, rho 2828, rho 2829, rho 2830,
      (by unfold Seg11.relationRow1186 at r1186; linear_combination r1186), (by unfold Seg11.relationRow1187 at r1187; linear_combination r1187), (by unfold Seg11.relationRow1188 at r1188; linear_combination r1188), (by unfold Seg11.relationRow1189 at r1189; linear_combination r1189), (by unfold Seg11.relationRow1190 at r1190; linear_combination r1190), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg34
    refine ⟨rho 2831, rho 2832, rho 2833, rho 2834, rho 2835,
      (by unfold Seg11.relationRow1191 at r1191; linear_combination r1191), (by unfold Seg11.relationRow1192 at r1192; linear_combination r1192), (by unfold Seg11.relationRow1193 at r1193; linear_combination r1193), (by unfold Seg11.relationRow1194 at r1194; linear_combination r1194), (by unfold Seg11.relationRow1195 at r1195; linear_combination r1195), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg35
    refine ⟨rho 2836, rho 2837, rho 2838, rho 2839, rho 2840,
      (by unfold Seg11.relationRow1196 at r1196; linear_combination r1196), (by unfold Seg11.relationRow1197 at r1197; linear_combination r1197), (by unfold Seg11.relationRow1198 at r1198; linear_combination r1198), (by unfold Seg11.relationRow1199 at r1199; linear_combination r1199), (by unfold Seg11.relationRow1200 at r1200; linear_combination r1200), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg36
    refine ⟨rho 2841, rho 2842, rho 2843, rho 2844, rho 2845,
      (by unfold Seg11.relationRow1201 at r1201; linear_combination r1201), (by unfold Seg11.relationRow1202 at r1202; linear_combination r1202), (by unfold Seg11.relationRow1203 at r1203; linear_combination r1203), (by unfold Seg11.relationRow1204 at r1204; linear_combination r1204), (by unfold Seg11.relationRow1205 at r1205; linear_combination r1205), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg37
    refine ⟨rho 2846, rho 2847, rho 2848, rho 2849, rho 2850,
      (by unfold Seg11.relationRow1206 at r1206; linear_combination r1206), (by unfold Seg11.relationRow1207 at r1207; linear_combination r1207), (by unfold Seg11.relationRow1208 at r1208; linear_combination r1208), (by unfold Seg11.relationRow1209 at r1209; linear_combination r1209), (by unfold Seg11.relationRow1210 at r1210; linear_combination r1210), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg38
    refine ⟨rho 2851, rho 2852, rho 2853, rho 2854, rho 2855,
      (by unfold Seg11.relationRow1211 at r1211; linear_combination r1211), (by unfold Seg11.relationRow1212 at r1212; linear_combination r1212), (by unfold Seg11.relationRow1213 at r1213; linear_combination r1213), (by unfold Seg11.relationRow1214 at r1214; linear_combination r1214), (by unfold Seg11.relationRow1215 at r1215; linear_combination r1215), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg39
    refine ⟨rho 2856, rho 2857, rho 2858, rho 2859, rho 2860,
      (by unfold Seg11.relationRow1216 at r1216; linear_combination r1216), (by unfold Seg11.relationRow1217 at r1217; linear_combination r1217), (by unfold Seg11.relationRow1218 at r1218; linear_combination r1218), (by unfold Seg11.relationRow1219 at r1219; linear_combination r1219), (by unfold Seg11.relationRow1220 at r1220; linear_combination r1220), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg40
    refine ⟨rho 2861, rho 2862, rho 2863, rho 2864, rho 2865,
      (by unfold Seg11.relationRow1221 at r1221; linear_combination r1221), (by unfold Seg11.relationRow1222 at r1222; linear_combination r1222), (by unfold Seg11.relationRow1223 at r1223; linear_combination r1223), (by unfold Seg11.relationRow1224 at r1224; linear_combination r1224), (by unfold Seg11.relationRow1225 at r1225; linear_combination r1225), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg41
    refine ⟨rho 2866, rho 2867, rho 2868, rho 2869, rho 2870,
      (by unfold Seg11.relationRow1226 at r1226; linear_combination r1226), (by unfold Seg11.relationRow1227 at r1227; linear_combination r1227), (by unfold Seg11.relationRow1228 at r1228; linear_combination r1228), (by unfold Seg11.relationRow1229 at r1229; linear_combination r1229), (by unfold Seg11.relationRow1230 at r1230; linear_combination r1230), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg42
    refine ⟨rho 2871, rho 2872, rho 2873, rho 2874, rho 2875,
      (by unfold Seg11.relationRow1231 at r1231; linear_combination r1231), (by unfold Seg11.relationRow1232 at r1232; linear_combination r1232), (by unfold Seg11.relationRow1233 at r1233; linear_combination r1233), (by unfold Seg11.relationRow1234 at r1234; linear_combination r1234), (by unfold Seg11.relationRow1235 at r1235; linear_combination r1235), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg43
    refine ⟨rho 2876, rho 2877, rho 2878, rho 2879, rho 2880,
      (by unfold Seg11.relationRow1236 at r1236; linear_combination r1236), (by unfold Seg11.relationRow1237 at r1237; linear_combination r1237), (by unfold Seg11.relationRow1238 at r1238; linear_combination r1238), (by unfold Seg11.relationRow1239 at r1239; linear_combination r1239), (by unfold Seg11.relationRow1240 at r1240; linear_combination r1240), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg44
    refine ⟨rho 2881, rho 2882, rho 2883, rho 2884, rho 2885,
      (by unfold Seg11.relationRow1241 at r1241; linear_combination r1241), (by unfold Seg11.relationRow1242 at r1242; linear_combination r1242), (by unfold Seg11.relationRow1243 at r1243; linear_combination r1243), (by unfold Seg11.relationRow1244 at r1244; linear_combination r1244), (by unfold Seg11.relationRow1245 at r1245; linear_combination r1245), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg45
    refine ⟨rho 2886, rho 2887, rho 2888, rho 2889, rho 2890,
      (by unfold Seg11.relationRow1246 at r1246; linear_combination r1246), (by unfold Seg11.relationRow1247 at r1247; linear_combination r1247), (by unfold Seg11.relationRow1248 at r1248; linear_combination r1248), (by unfold Seg11.relationRow1249 at r1249; linear_combination r1249), (by unfold Seg11.relationRow1250 at r1250; linear_combination r1250), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg46
    refine ⟨rho 2891, rho 2892, rho 2893, rho 2894, rho 2895,
      (by unfold Seg11.relationRow1251 at r1251; linear_combination r1251), (by unfold Seg11.relationRow1252 at r1252; linear_combination r1252), (by unfold Seg11.relationRow1253 at r1253; linear_combination r1253), (by unfold Seg11.relationRow1254 at r1254; linear_combination r1254), (by unfold Seg11.relationRow1255 at r1255; linear_combination r1255), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg47
    refine ⟨rho 2896, rho 2897, rho 2898, rho 2899, rho 2900,
      (by unfold Seg11.relationRow1256 at r1256; linear_combination r1256), (by unfold Seg11.relationRow1257 at r1257; linear_combination r1257), (by unfold Seg11.relationRow1258 at r1258; linear_combination r1258), (by unfold Seg11.relationRow1259 at r1259; linear_combination r1259), (by unfold Seg11.relationRow1260 at r1260; linear_combination r1260), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg48
    refine ⟨rho 2901, rho 2902, rho 2903, rho 2904, rho 2905,
      (by unfold Seg11.relationRow1261 at r1261; linear_combination r1261), (by unfold Seg11.relationRow1262 at r1262; linear_combination r1262), (by unfold Seg11.relationRow1263 at r1263; linear_combination r1263), (by unfold Seg11.relationRow1264 at r1264; linear_combination r1264), (by unfold Seg11.relationRow1265 at r1265; linear_combination r1265), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg49
    refine ⟨rho 2906, rho 2907, rho 2908, rho 2909, rho 2910,
      (by unfold Seg11.relationRow1266 at r1266; linear_combination r1266), (by unfold Seg11.relationRow1267 at r1267; linear_combination r1267), (by unfold Seg11.relationRow1268 at r1268; linear_combination r1268), (by unfold Seg11.relationRow1269 at r1269; linear_combination r1269), (by unfold Seg11.relationRow1270 at r1270; linear_combination r1270), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg50
    refine ⟨rho 2911, rho 2912, rho 2913, rho 2914, rho 2915,
      (by unfold Seg11.relationRow1271 at r1271; linear_combination r1271), (by unfold Seg11.relationRow1272 at r1272; linear_combination r1272), (by unfold Seg11.relationRow1273 at r1273; linear_combination r1273), (by unfold Seg11.relationRow1274 at r1274; linear_combination r1274), (by unfold Seg11.relationRow1275 at r1275; linear_combination r1275), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg51
    refine ⟨rho 2916, rho 2917, rho 2918, rho 2919, rho 2920,
      (by unfold Seg11.relationRow1276 at r1276; linear_combination r1276), (by unfold Seg11.relationRow1277 at r1277; linear_combination r1277), (by unfold Seg11.relationRow1278 at r1278; linear_combination r1278), (by unfold Seg11.relationRow1279 at r1279; linear_combination r1279), (by unfold Seg11.relationRow1280 at r1280; linear_combination r1280), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg52
    refine ⟨rho 2921, rho 2922, rho 2923, rho 2924, rho 2925,
      (by unfold Seg11.relationRow1281 at r1281; linear_combination r1281), (by unfold Seg11.relationRow1282 at r1282; linear_combination r1282), (by unfold Seg11.relationRow1283 at r1283; linear_combination r1283), (by unfold Seg11.relationRow1284 at r1284; linear_combination r1284), (by unfold Seg11.relationRow1285 at r1285; linear_combination r1285), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg53
    refine ⟨rho 2926, rho 2927, rho 2928, rho 2929, rho 2930,
      (by unfold Seg11.relationRow1286 at r1286; linear_combination r1286), (by unfold Seg11.relationRow1287 at r1287; linear_combination r1287), (by unfold Seg11.relationRow1288 at r1288; linear_combination r1288), (by unfold Seg11.relationRow1289 at r1289; linear_combination r1289), (by unfold Seg11.relationRow1290 at r1290; linear_combination r1290), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg54
    refine ⟨rho 2931, rho 2932, rho 2933, rho 2934, rho 2935,
      (by unfold Seg11.relationRow1291 at r1291; linear_combination r1291), (by unfold Seg11.relationRow1292 at r1292; linear_combination r1292), (by unfold Seg11.relationRow1293 at r1293; linear_combination r1293), (by unfold Seg11.relationRow1294 at r1294; linear_combination r1294), (by unfold Seg11.relationRow1295 at r1295; linear_combination r1295), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg55
    refine ⟨rho 2936, rho 2937, rho 2938, rho 2939, rho 2940,
      (by unfold Seg11.relationRow1296 at r1296; linear_combination r1296), (by unfold Seg11.relationRow1297 at r1297; linear_combination r1297), (by unfold Seg11.relationRow1298 at r1298; linear_combination r1298), (by unfold Seg11.relationRow1299 at r1299; linear_combination r1299), (by unfold Seg11.relationRow1300 at r1300; linear_combination r1300), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg56
    refine ⟨rho 2941, rho 2942, rho 2943, rho 2944, rho 2945,
      (by unfold Seg11.relationRow1301 at r1301; linear_combination r1301), (by unfold Seg11.relationRow1302 at r1302; linear_combination r1302), (by unfold Seg11.relationRow1303 at r1303; linear_combination r1303), (by unfold Seg11.relationRow1304 at r1304; linear_combination r1304), (by unfold Seg11.relationRow1305 at r1305; linear_combination r1305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg57
    refine ⟨rho 2946, rho 2947, rho 2948, rho 2949, rho 2950,
      (by unfold Seg11.relationRow1306 at r1306; linear_combination r1306), (by unfold Seg11.relationRow1307 at r1307; linear_combination r1307), (by unfold Seg11.relationRow1308 at r1308; linear_combination r1308), (by unfold Seg11.relationRow1309 at r1309; linear_combination r1309), (by unfold Seg11.relationRow1310 at r1310; linear_combination r1310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg58
    refine ⟨rho 2951, rho 2952, rho 2953, rho 2954, rho 2955,
      (by unfold Seg11.relationRow1311 at r1311; linear_combination r1311), (by unfold Seg11.relationRow1312 at r1312; linear_combination r1312), (by unfold Seg11.relationRow1313 at r1313; linear_combination r1313), (by unfold Seg11.relationRow1314 at r1314; linear_combination r1314), (by unfold Seg11.relationRow1315 at r1315; linear_combination r1315), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg59
    refine ⟨rho 2956, rho 2957, rho 2958, rho 2959, rho 2960,
      (by unfold Seg11.relationRow1316 at r1316; linear_combination r1316), (by unfold Seg11.relationRow1317 at r1317; linear_combination r1317), (by unfold Seg11.relationRow1318 at r1318; linear_combination r1318), (by unfold Seg11.relationRow1319 at r1319; linear_combination r1319), (by unfold Seg11.relationRow1320 at r1320; linear_combination r1320), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg60
    refine ⟨rho 2961, rho 2962, rho 2963, rho 2964, rho 2965,
      (by unfold Seg11.relationRow1321 at r1321; linear_combination r1321), (by unfold Seg11.relationRow1322 at r1322; linear_combination r1322), (by unfold Seg11.relationRow1323 at r1323; linear_combination r1323), (by unfold Seg11.relationRow1324 at r1324; linear_combination r1324), (by unfold Seg11.relationRow1325 at r1325; linear_combination r1325), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg61
    refine ⟨rho 2966, rho 2967, rho 2968, rho 2969, rho 2970,
      (by unfold Seg11.relationRow1326 at r1326; linear_combination r1326), (by unfold Seg11.relationRow1327 at r1327; linear_combination r1327), (by unfold Seg11.relationRow1328 at r1328; linear_combination r1328), (by unfold Seg11.relationRow1329 at r1329; linear_combination r1329), (by unfold Seg11.relationRow1330 at r1330; linear_combination r1330), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg62
    refine ⟨rho 2971, rho 2972, rho 2973, rho 2974, rho 2975,
      (by unfold Seg11.relationRow1331 at r1331; linear_combination r1331), (by unfold Seg11.relationRow1332 at r1332; linear_combination r1332), (by unfold Seg11.relationRow1333 at r1333; linear_combination r1333), (by unfold Seg11.relationRow1334 at r1334; linear_combination r1334), (by unfold Seg11.relationRow1335 at r1335; linear_combination r1335), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg63
    refine ⟨rho 2976, rho 2977, rho 2978, rho 2979, rho 2980,
      (by unfold Seg11.relationRow1336 at r1336; linear_combination r1336), (by unfold Seg11.relationRow1337 at r1337; linear_combination r1337), (by unfold Seg11.relationRow1338 at r1338; linear_combination r1338), (by unfold Seg11.relationRow1339 at r1339; linear_combination r1339), (by unfold Seg11.relationRow1340 at r1340; linear_combination r1340), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg64
    refine ⟨rho 2981, rho 2982, rho 2983, rho 2984, rho 2985,
      (by unfold Seg11.relationRow1341 at r1341; linear_combination r1341), (by unfold Seg11.relationRow1342 at r1342; linear_combination r1342), (by unfold Seg11.relationRow1343 at r1343; linear_combination r1343), (by unfold Seg11.relationRow1344 at r1344; linear_combination r1344), (by unfold Seg11.relationRow1345 at r1345; linear_combination r1345), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg65
    refine ⟨rho 2986, rho 2987, rho 2988, rho 2989, rho 2990,
      (by unfold Seg11.relationRow1346 at r1346; linear_combination r1346), (by unfold Seg11.relationRow1347 at r1347; linear_combination r1347), (by unfold Seg11.relationRow1348 at r1348; linear_combination r1348), (by unfold Seg11.relationRow1349 at r1349; linear_combination r1349), (by unfold Seg11.relationRow1350 at r1350; linear_combination r1350), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg66
    refine ⟨rho 2991, rho 2992, rho 2993, rho 2994, rho 2995,
      (by unfold Seg11.relationRow1351 at r1351; linear_combination r1351), (by unfold Seg11.relationRow1352 at r1352; linear_combination r1352), (by unfold Seg11.relationRow1353 at r1353; linear_combination r1353), (by unfold Seg11.relationRow1354 at r1354; linear_combination r1354), (by unfold Seg11.relationRow1355 at r1355; linear_combination r1355), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg67
    refine ⟨rho 2996, rho 2997, rho 2998, rho 2999, rho 3000,
      (by unfold Seg11.relationRow1356 at r1356; linear_combination r1356), (by unfold Seg11.relationRow1357 at r1357; linear_combination r1357), (by unfold Seg11.relationRow1358 at r1358; linear_combination r1358), (by unfold Seg11.relationRow1359 at r1359; linear_combination r1359), (by unfold Seg11.relationRow1360 at r1360; linear_combination r1360), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg68
    refine ⟨rho 3001, rho 3002, rho 3003, rho 3004, rho 3005,
      (by unfold Seg11.relationRow1361 at r1361; linear_combination r1361), (by unfold Seg11.relationRow1362 at r1362; linear_combination r1362), (by unfold Seg11.relationRow1363 at r1363; linear_combination r1363), (by unfold Seg11.relationRow1364 at r1364; linear_combination r1364), (by unfold Seg11.relationRow1365 at r1365; linear_combination r1365), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg69
    refine ⟨rho 3006, rho 3007, rho 3008, rho 3009, rho 3010,
      (by unfold Seg11.relationRow1366 at r1366; linear_combination r1366), (by unfold Seg11.relationRow1367 at r1367; linear_combination r1367), (by unfold Seg11.relationRow1368 at r1368; linear_combination r1368), (by unfold Seg11.relationRow1369 at r1369; linear_combination r1369), (by unfold Seg11.relationRow1370 at r1370; linear_combination r1370), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.relation_sound_permSpec (rho 88) (rho 89) (rho 90) (rho 2655) (rho 2656) (rho 2657) (rho 2658) (rho 2659) (rho 2660) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.tctNode3DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) + (3 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg11ScpNode2Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

