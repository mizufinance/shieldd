import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode2.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node2_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode2Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (3 : Seg29.F))
        (rho 178 + rho 21355) (rho 179 + rho 21356 + rho 21357)
        (rho 179 + rho 21358 + rho 21359) (rho 180 + rho 21360) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg29.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Seg29.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Seg29.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Seg29.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Seg29.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.relation (rho 178) (rho 179) (rho 180) (rho 21355) (rho 21356) (rho 21357) (rho 21358) (rho 21359) (rho 21360)
      (fun o0 o1 o2 o3 o4 => o0 = rho 21690 ∧ o1 = rho 21695 ∧ o2 = rho 21700 ∧ o3 = rho 21705 ∧ o4 = rho 21710) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg0
    refine ⟨rho 21361, rho 21362, rho 21363, rho 21364, rho 21365,
      (by unfold Seg29.relationRow1021 at r1021; linear_combination r1021), (by unfold Seg29.relationRow1022 at r1022; linear_combination r1022), (by unfold Seg29.relationRow1023 at r1023; linear_combination r1023), (by unfold Seg29.relationRow1024 at r1024; linear_combination r1024), (by unfold Seg29.relationRow1025 at r1025; linear_combination r1025), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg1
    refine ⟨rho 21366, rho 21367, rho 21368, rho 21369, rho 21370,
      (by unfold Seg29.relationRow1026 at r1026; linear_combination r1026), (by unfold Seg29.relationRow1027 at r1027; linear_combination r1027), (by unfold Seg29.relationRow1028 at r1028; linear_combination r1028), (by unfold Seg29.relationRow1029 at r1029; linear_combination r1029), (by unfold Seg29.relationRow1030 at r1030; linear_combination r1030), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg2
    refine ⟨rho 21371, rho 21372, rho 21373, rho 21374, rho 21375,
      (by unfold Seg29.relationRow1031 at r1031; linear_combination r1031), (by unfold Seg29.relationRow1032 at r1032; linear_combination r1032), (by unfold Seg29.relationRow1033 at r1033; linear_combination r1033), (by unfold Seg29.relationRow1034 at r1034; linear_combination r1034), (by unfold Seg29.relationRow1035 at r1035; linear_combination r1035), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg3
    refine ⟨rho 21376, rho 21377, rho 21378, rho 21379, rho 21380,
      (by unfold Seg29.relationRow1036 at r1036; linear_combination r1036), (by unfold Seg29.relationRow1037 at r1037; linear_combination r1037), (by unfold Seg29.relationRow1038 at r1038; linear_combination r1038), (by unfold Seg29.relationRow1039 at r1039; linear_combination r1039), (by unfold Seg29.relationRow1040 at r1040; linear_combination r1040), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg4
    refine ⟨rho 21381, rho 21382, rho 21383, rho 21384, rho 21385,
      (by unfold Seg29.relationRow1041 at r1041; linear_combination r1041), (by unfold Seg29.relationRow1042 at r1042; linear_combination r1042), (by unfold Seg29.relationRow1043 at r1043; linear_combination r1043), (by unfold Seg29.relationRow1044 at r1044; linear_combination r1044), (by unfold Seg29.relationRow1045 at r1045; linear_combination r1045), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg5
    refine ⟨rho 21386, rho 21387, rho 21388, rho 21389, rho 21390,
      (by unfold Seg29.relationRow1046 at r1046; linear_combination r1046), (by unfold Seg29.relationRow1047 at r1047; linear_combination r1047), (by unfold Seg29.relationRow1048 at r1048; linear_combination r1048), (by unfold Seg29.relationRow1049 at r1049; linear_combination r1049), (by unfold Seg29.relationRow1050 at r1050; linear_combination r1050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg6
    refine ⟨rho 21391, rho 21392, rho 21393, rho 21394, rho 21395,
      (by unfold Seg29.relationRow1051 at r1051; linear_combination r1051), (by unfold Seg29.relationRow1052 at r1052; linear_combination r1052), (by unfold Seg29.relationRow1053 at r1053; linear_combination r1053), (by unfold Seg29.relationRow1054 at r1054; linear_combination r1054), (by unfold Seg29.relationRow1055 at r1055; linear_combination r1055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg7
    refine ⟨rho 21396, rho 21397, rho 21398, rho 21399, rho 21400,
      (by unfold Seg29.relationRow1056 at r1056; linear_combination r1056), (by unfold Seg29.relationRow1057 at r1057; linear_combination r1057), (by unfold Seg29.relationRow1058 at r1058; linear_combination r1058), (by unfold Seg29.relationRow1059 at r1059; linear_combination r1059), (by unfold Seg29.relationRow1060 at r1060; linear_combination r1060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg8
    refine ⟨rho 21401, rho 21402, rho 21403, rho 21404, rho 21405,
      (by unfold Seg29.relationRow1061 at r1061; linear_combination r1061), (by unfold Seg29.relationRow1062 at r1062; linear_combination r1062), (by unfold Seg29.relationRow1063 at r1063; linear_combination r1063), (by unfold Seg29.relationRow1064 at r1064; linear_combination r1064), (by unfold Seg29.relationRow1065 at r1065; linear_combination r1065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg9
    refine ⟨rho 21406, rho 21407, rho 21408, rho 21409, rho 21410,
      (by unfold Seg29.relationRow1066 at r1066; linear_combination r1066), (by unfold Seg29.relationRow1067 at r1067; linear_combination r1067), (by unfold Seg29.relationRow1068 at r1068; linear_combination r1068), (by unfold Seg29.relationRow1069 at r1069; linear_combination r1069), (by unfold Seg29.relationRow1070 at r1070; linear_combination r1070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg10
    refine ⟨rho 21411, rho 21412, rho 21413, rho 21414, rho 21415,
      (by unfold Seg29.relationRow1071 at r1071; linear_combination r1071), (by unfold Seg29.relationRow1072 at r1072; linear_combination r1072), (by unfold Seg29.relationRow1073 at r1073; linear_combination r1073), (by unfold Seg29.relationRow1074 at r1074; linear_combination r1074), (by unfold Seg29.relationRow1075 at r1075; linear_combination r1075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg11
    refine ⟨rho 21416, rho 21417, rho 21418, rho 21419, rho 21420,
      (by unfold Seg29.relationRow1076 at r1076; linear_combination r1076), (by unfold Seg29.relationRow1077 at r1077; linear_combination r1077), (by unfold Seg29.relationRow1078 at r1078; linear_combination r1078), (by unfold Seg29.relationRow1079 at r1079; linear_combination r1079), (by unfold Seg29.relationRow1080 at r1080; linear_combination r1080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg12
    refine ⟨rho 21421, rho 21422, rho 21423, rho 21424, rho 21425,
      (by unfold Seg29.relationRow1081 at r1081; linear_combination r1081), (by unfold Seg29.relationRow1082 at r1082; linear_combination r1082), (by unfold Seg29.relationRow1083 at r1083; linear_combination r1083), (by unfold Seg29.relationRow1084 at r1084; linear_combination r1084), (by unfold Seg29.relationRow1085 at r1085; linear_combination r1085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg13
    refine ⟨rho 21426, rho 21427, rho 21428, rho 21429, rho 21430,
      (by unfold Seg29.relationRow1086 at r1086; linear_combination r1086), (by unfold Seg29.relationRow1087 at r1087; linear_combination r1087), (by unfold Seg29.relationRow1088 at r1088; linear_combination r1088), (by unfold Seg29.relationRow1089 at r1089; linear_combination r1089), (by unfold Seg29.relationRow1090 at r1090; linear_combination r1090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg14
    refine ⟨rho 21431, rho 21432, rho 21433, rho 21434, rho 21435,
      (by unfold Seg29.relationRow1091 at r1091; linear_combination r1091), (by unfold Seg29.relationRow1092 at r1092; linear_combination r1092), (by unfold Seg29.relationRow1093 at r1093; linear_combination r1093), (by unfold Seg29.relationRow1094 at r1094; linear_combination r1094), (by unfold Seg29.relationRow1095 at r1095; linear_combination r1095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg15
    refine ⟨rho 21436, rho 21437, rho 21438, rho 21439, rho 21440,
      (by unfold Seg29.relationRow1096 at r1096; linear_combination r1096), (by unfold Seg29.relationRow1097 at r1097; linear_combination r1097), (by unfold Seg29.relationRow1098 at r1098; linear_combination r1098), (by unfold Seg29.relationRow1099 at r1099; linear_combination r1099), (by unfold Seg29.relationRow1100 at r1100; linear_combination r1100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg16
    refine ⟨rho 21441, rho 21442, rho 21443, rho 21444, rho 21445,
      (by unfold Seg29.relationRow1101 at r1101; linear_combination r1101), (by unfold Seg29.relationRow1102 at r1102; linear_combination r1102), (by unfold Seg29.relationRow1103 at r1103; linear_combination r1103), (by unfold Seg29.relationRow1104 at r1104; linear_combination r1104), (by unfold Seg29.relationRow1105 at r1105; linear_combination r1105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg17
    refine ⟨rho 21446, rho 21447, rho 21448, rho 21449, rho 21450,
      (by unfold Seg29.relationRow1106 at r1106; linear_combination r1106), (by unfold Seg29.relationRow1107 at r1107; linear_combination r1107), (by unfold Seg29.relationRow1108 at r1108; linear_combination r1108), (by unfold Seg29.relationRow1109 at r1109; linear_combination r1109), (by unfold Seg29.relationRow1110 at r1110; linear_combination r1110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg18
    refine ⟨rho 21451, rho 21452, rho 21453, rho 21454, rho 21455,
      (by unfold Seg29.relationRow1111 at r1111; linear_combination r1111), (by unfold Seg29.relationRow1112 at r1112; linear_combination r1112), (by unfold Seg29.relationRow1113 at r1113; linear_combination r1113), (by unfold Seg29.relationRow1114 at r1114; linear_combination r1114), (by unfold Seg29.relationRow1115 at r1115; linear_combination r1115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg19
    refine ⟨rho 21456, rho 21457, rho 21458, rho 21459, rho 21460,
      (by unfold Seg29.relationRow1116 at r1116; linear_combination r1116), (by unfold Seg29.relationRow1117 at r1117; linear_combination r1117), (by unfold Seg29.relationRow1118 at r1118; linear_combination r1118), (by unfold Seg29.relationRow1119 at r1119; linear_combination r1119), (by unfold Seg29.relationRow1120 at r1120; linear_combination r1120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg20
    refine ⟨rho 21461, rho 21462, rho 21463, rho 21464, rho 21465,
      (by unfold Seg29.relationRow1121 at r1121; linear_combination r1121), (by unfold Seg29.relationRow1122 at r1122; linear_combination r1122), (by unfold Seg29.relationRow1123 at r1123; linear_combination r1123), (by unfold Seg29.relationRow1124 at r1124; linear_combination r1124), (by unfold Seg29.relationRow1125 at r1125; linear_combination r1125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg21
    refine ⟨rho 21466, rho 21467, rho 21468, rho 21469, rho 21470,
      (by unfold Seg29.relationRow1126 at r1126; linear_combination r1126), (by unfold Seg29.relationRow1127 at r1127; linear_combination r1127), (by unfold Seg29.relationRow1128 at r1128; linear_combination r1128), (by unfold Seg29.relationRow1129 at r1129; linear_combination r1129), (by unfold Seg29.relationRow1130 at r1130; linear_combination r1130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg22
    refine ⟨rho 21471, rho 21472, rho 21473, rho 21474, rho 21475,
      (by unfold Seg29.relationRow1131 at r1131; linear_combination r1131), (by unfold Seg29.relationRow1132 at r1132; linear_combination r1132), (by unfold Seg29.relationRow1133 at r1133; linear_combination r1133), (by unfold Seg29.relationRow1134 at r1134; linear_combination r1134), (by unfold Seg29.relationRow1135 at r1135; linear_combination r1135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg23
    refine ⟨rho 21476, rho 21477, rho 21478, rho 21479, rho 21480,
      (by unfold Seg29.relationRow1136 at r1136; linear_combination r1136), (by unfold Seg29.relationRow1137 at r1137; linear_combination r1137), (by unfold Seg29.relationRow1138 at r1138; linear_combination r1138), (by unfold Seg29.relationRow1139 at r1139; linear_combination r1139), (by unfold Seg29.relationRow1140 at r1140; linear_combination r1140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg24
    refine ⟨rho 21481, rho 21482, rho 21483, rho 21484, rho 21485,
      (by unfold Seg29.relationRow1141 at r1141; linear_combination r1141), (by unfold Seg29.relationRow1142 at r1142; linear_combination r1142), (by unfold Seg29.relationRow1143 at r1143; linear_combination r1143), (by unfold Seg29.relationRow1144 at r1144; linear_combination r1144), (by unfold Seg29.relationRow1145 at r1145; linear_combination r1145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg25
    refine ⟨rho 21486, rho 21487, rho 21488, rho 21489, rho 21490,
      (by unfold Seg29.relationRow1146 at r1146; linear_combination r1146), (by unfold Seg29.relationRow1147 at r1147; linear_combination r1147), (by unfold Seg29.relationRow1148 at r1148; linear_combination r1148), (by unfold Seg29.relationRow1149 at r1149; linear_combination r1149), (by unfold Seg29.relationRow1150 at r1150; linear_combination r1150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg26
    refine ⟨rho 21491, rho 21492, rho 21493, rho 21494, rho 21495,
      (by unfold Seg29.relationRow1151 at r1151; linear_combination r1151), (by unfold Seg29.relationRow1152 at r1152; linear_combination r1152), (by unfold Seg29.relationRow1153 at r1153; linear_combination r1153), (by unfold Seg29.relationRow1154 at r1154; linear_combination r1154), (by unfold Seg29.relationRow1155 at r1155; linear_combination r1155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg27
    refine ⟨rho 21496, rho 21497, rho 21498, rho 21499, rho 21500,
      (by unfold Seg29.relationRow1156 at r1156; linear_combination r1156), (by unfold Seg29.relationRow1157 at r1157; linear_combination r1157), (by unfold Seg29.relationRow1158 at r1158; linear_combination r1158), (by unfold Seg29.relationRow1159 at r1159; linear_combination r1159), (by unfold Seg29.relationRow1160 at r1160; linear_combination r1160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg28
    refine ⟨rho 21501, rho 21502, rho 21503, rho 21504, rho 21505,
      (by unfold Seg29.relationRow1161 at r1161; linear_combination r1161), (by unfold Seg29.relationRow1162 at r1162; linear_combination r1162), (by unfold Seg29.relationRow1163 at r1163; linear_combination r1163), (by unfold Seg29.relationRow1164 at r1164; linear_combination r1164), (by unfold Seg29.relationRow1165 at r1165; linear_combination r1165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg29
    refine ⟨rho 21506, rho 21507, rho 21508, rho 21509, rho 21510,
      (by unfold Seg29.relationRow1166 at r1166; linear_combination r1166), (by unfold Seg29.relationRow1167 at r1167; linear_combination r1167), (by unfold Seg29.relationRow1168 at r1168; linear_combination r1168), (by unfold Seg29.relationRow1169 at r1169; linear_combination r1169), (by unfold Seg29.relationRow1170 at r1170; linear_combination r1170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg30
    refine ⟨rho 21511, rho 21512, rho 21513, rho 21514, rho 21515,
      (by unfold Seg29.relationRow1171 at r1171; linear_combination r1171), (by unfold Seg29.relationRow1172 at r1172; linear_combination r1172), (by unfold Seg29.relationRow1173 at r1173; linear_combination r1173), (by unfold Seg29.relationRow1174 at r1174; linear_combination r1174), (by unfold Seg29.relationRow1175 at r1175; linear_combination r1175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg31
    refine ⟨rho 21516, rho 21517, rho 21518, rho 21519, rho 21520,
      (by unfold Seg29.relationRow1176 at r1176; linear_combination r1176), (by unfold Seg29.relationRow1177 at r1177; linear_combination r1177), (by unfold Seg29.relationRow1178 at r1178; linear_combination r1178), (by unfold Seg29.relationRow1179 at r1179; linear_combination r1179), (by unfold Seg29.relationRow1180 at r1180; linear_combination r1180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg32
    refine ⟨rho 21521, rho 21522, rho 21523, rho 21524, rho 21525,
      (by unfold Seg29.relationRow1181 at r1181; linear_combination r1181), (by unfold Seg29.relationRow1182 at r1182; linear_combination r1182), (by unfold Seg29.relationRow1183 at r1183; linear_combination r1183), (by unfold Seg29.relationRow1184 at r1184; linear_combination r1184), (by unfold Seg29.relationRow1185 at r1185; linear_combination r1185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg33
    refine ⟨rho 21526, rho 21527, rho 21528, rho 21529, rho 21530,
      (by unfold Seg29.relationRow1186 at r1186; linear_combination r1186), (by unfold Seg29.relationRow1187 at r1187; linear_combination r1187), (by unfold Seg29.relationRow1188 at r1188; linear_combination r1188), (by unfold Seg29.relationRow1189 at r1189; linear_combination r1189), (by unfold Seg29.relationRow1190 at r1190; linear_combination r1190), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg34
    refine ⟨rho 21531, rho 21532, rho 21533, rho 21534, rho 21535,
      (by unfold Seg29.relationRow1191 at r1191; linear_combination r1191), (by unfold Seg29.relationRow1192 at r1192; linear_combination r1192), (by unfold Seg29.relationRow1193 at r1193; linear_combination r1193), (by unfold Seg29.relationRow1194 at r1194; linear_combination r1194), (by unfold Seg29.relationRow1195 at r1195; linear_combination r1195), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg35
    refine ⟨rho 21536, rho 21537, rho 21538, rho 21539, rho 21540,
      (by unfold Seg29.relationRow1196 at r1196; linear_combination r1196), (by unfold Seg29.relationRow1197 at r1197; linear_combination r1197), (by unfold Seg29.relationRow1198 at r1198; linear_combination r1198), (by unfold Seg29.relationRow1199 at r1199; linear_combination r1199), (by unfold Seg29.relationRow1200 at r1200; linear_combination r1200), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg36
    refine ⟨rho 21541, rho 21542, rho 21543, rho 21544, rho 21545,
      (by unfold Seg29.relationRow1201 at r1201; linear_combination r1201), (by unfold Seg29.relationRow1202 at r1202; linear_combination r1202), (by unfold Seg29.relationRow1203 at r1203; linear_combination r1203), (by unfold Seg29.relationRow1204 at r1204; linear_combination r1204), (by unfold Seg29.relationRow1205 at r1205; linear_combination r1205), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg37
    refine ⟨rho 21546, rho 21547, rho 21548, rho 21549, rho 21550,
      (by unfold Seg29.relationRow1206 at r1206; linear_combination r1206), (by unfold Seg29.relationRow1207 at r1207; linear_combination r1207), (by unfold Seg29.relationRow1208 at r1208; linear_combination r1208), (by unfold Seg29.relationRow1209 at r1209; linear_combination r1209), (by unfold Seg29.relationRow1210 at r1210; linear_combination r1210), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg38
    refine ⟨rho 21551, rho 21552, rho 21553, rho 21554, rho 21555,
      (by unfold Seg29.relationRow1211 at r1211; linear_combination r1211), (by unfold Seg29.relationRow1212 at r1212; linear_combination r1212), (by unfold Seg29.relationRow1213 at r1213; linear_combination r1213), (by unfold Seg29.relationRow1214 at r1214; linear_combination r1214), (by unfold Seg29.relationRow1215 at r1215; linear_combination r1215), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg39
    refine ⟨rho 21556, rho 21557, rho 21558, rho 21559, rho 21560,
      (by unfold Seg29.relationRow1216 at r1216; linear_combination r1216), (by unfold Seg29.relationRow1217 at r1217; linear_combination r1217), (by unfold Seg29.relationRow1218 at r1218; linear_combination r1218), (by unfold Seg29.relationRow1219 at r1219; linear_combination r1219), (by unfold Seg29.relationRow1220 at r1220; linear_combination r1220), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg40
    refine ⟨rho 21561, rho 21562, rho 21563, rho 21564, rho 21565,
      (by unfold Seg29.relationRow1221 at r1221; linear_combination r1221), (by unfold Seg29.relationRow1222 at r1222; linear_combination r1222), (by unfold Seg29.relationRow1223 at r1223; linear_combination r1223), (by unfold Seg29.relationRow1224 at r1224; linear_combination r1224), (by unfold Seg29.relationRow1225 at r1225; linear_combination r1225), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg41
    refine ⟨rho 21566, rho 21567, rho 21568, rho 21569, rho 21570,
      (by unfold Seg29.relationRow1226 at r1226; linear_combination r1226), (by unfold Seg29.relationRow1227 at r1227; linear_combination r1227), (by unfold Seg29.relationRow1228 at r1228; linear_combination r1228), (by unfold Seg29.relationRow1229 at r1229; linear_combination r1229), (by unfold Seg29.relationRow1230 at r1230; linear_combination r1230), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg42
    refine ⟨rho 21571, rho 21572, rho 21573, rho 21574, rho 21575,
      (by unfold Seg29.relationRow1231 at r1231; linear_combination r1231), (by unfold Seg29.relationRow1232 at r1232; linear_combination r1232), (by unfold Seg29.relationRow1233 at r1233; linear_combination r1233), (by unfold Seg29.relationRow1234 at r1234; linear_combination r1234), (by unfold Seg29.relationRow1235 at r1235; linear_combination r1235), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg43
    refine ⟨rho 21576, rho 21577, rho 21578, rho 21579, rho 21580,
      (by unfold Seg29.relationRow1236 at r1236; linear_combination r1236), (by unfold Seg29.relationRow1237 at r1237; linear_combination r1237), (by unfold Seg29.relationRow1238 at r1238; linear_combination r1238), (by unfold Seg29.relationRow1239 at r1239; linear_combination r1239), (by unfold Seg29.relationRow1240 at r1240; linear_combination r1240), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg44
    refine ⟨rho 21581, rho 21582, rho 21583, rho 21584, rho 21585,
      (by unfold Seg29.relationRow1241 at r1241; linear_combination r1241), (by unfold Seg29.relationRow1242 at r1242; linear_combination r1242), (by unfold Seg29.relationRow1243 at r1243; linear_combination r1243), (by unfold Seg29.relationRow1244 at r1244; linear_combination r1244), (by unfold Seg29.relationRow1245 at r1245; linear_combination r1245), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg45
    refine ⟨rho 21586, rho 21587, rho 21588, rho 21589, rho 21590,
      (by unfold Seg29.relationRow1246 at r1246; linear_combination r1246), (by unfold Seg29.relationRow1247 at r1247; linear_combination r1247), (by unfold Seg29.relationRow1248 at r1248; linear_combination r1248), (by unfold Seg29.relationRow1249 at r1249; linear_combination r1249), (by unfold Seg29.relationRow1250 at r1250; linear_combination r1250), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg46
    refine ⟨rho 21591, rho 21592, rho 21593, rho 21594, rho 21595,
      (by unfold Seg29.relationRow1251 at r1251; linear_combination r1251), (by unfold Seg29.relationRow1252 at r1252; linear_combination r1252), (by unfold Seg29.relationRow1253 at r1253; linear_combination r1253), (by unfold Seg29.relationRow1254 at r1254; linear_combination r1254), (by unfold Seg29.relationRow1255 at r1255; linear_combination r1255), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg47
    refine ⟨rho 21596, rho 21597, rho 21598, rho 21599, rho 21600,
      (by unfold Seg29.relationRow1256 at r1256; linear_combination r1256), (by unfold Seg29.relationRow1257 at r1257; linear_combination r1257), (by unfold Seg29.relationRow1258 at r1258; linear_combination r1258), (by unfold Seg29.relationRow1259 at r1259; linear_combination r1259), (by unfold Seg29.relationRow1260 at r1260; linear_combination r1260), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg48
    refine ⟨rho 21601, rho 21602, rho 21603, rho 21604, rho 21605,
      (by unfold Seg29.relationRow1261 at r1261; linear_combination r1261), (by unfold Seg29.relationRow1262 at r1262; linear_combination r1262), (by unfold Seg29.relationRow1263 at r1263; linear_combination r1263), (by unfold Seg29.relationRow1264 at r1264; linear_combination r1264), (by unfold Seg29.relationRow1265 at r1265; linear_combination r1265), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg49
    refine ⟨rho 21606, rho 21607, rho 21608, rho 21609, rho 21610,
      (by unfold Seg29.relationRow1266 at r1266; linear_combination r1266), (by unfold Seg29.relationRow1267 at r1267; linear_combination r1267), (by unfold Seg29.relationRow1268 at r1268; linear_combination r1268), (by unfold Seg29.relationRow1269 at r1269; linear_combination r1269), (by unfold Seg29.relationRow1270 at r1270; linear_combination r1270), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg50
    refine ⟨rho 21611, rho 21612, rho 21613, rho 21614, rho 21615,
      (by unfold Seg29.relationRow1271 at r1271; linear_combination r1271), (by unfold Seg29.relationRow1272 at r1272; linear_combination r1272), (by unfold Seg29.relationRow1273 at r1273; linear_combination r1273), (by unfold Seg29.relationRow1274 at r1274; linear_combination r1274), (by unfold Seg29.relationRow1275 at r1275; linear_combination r1275), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg51
    refine ⟨rho 21616, rho 21617, rho 21618, rho 21619, rho 21620,
      (by unfold Seg29.relationRow1276 at r1276; linear_combination r1276), (by unfold Seg29.relationRow1277 at r1277; linear_combination r1277), (by unfold Seg29.relationRow1278 at r1278; linear_combination r1278), (by unfold Seg29.relationRow1279 at r1279; linear_combination r1279), (by unfold Seg29.relationRow1280 at r1280; linear_combination r1280), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg52
    refine ⟨rho 21621, rho 21622, rho 21623, rho 21624, rho 21625,
      (by unfold Seg29.relationRow1281 at r1281; linear_combination r1281), (by unfold Seg29.relationRow1282 at r1282; linear_combination r1282), (by unfold Seg29.relationRow1283 at r1283; linear_combination r1283), (by unfold Seg29.relationRow1284 at r1284; linear_combination r1284), (by unfold Seg29.relationRow1285 at r1285; linear_combination r1285), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg53
    refine ⟨rho 21626, rho 21627, rho 21628, rho 21629, rho 21630,
      (by unfold Seg29.relationRow1286 at r1286; linear_combination r1286), (by unfold Seg29.relationRow1287 at r1287; linear_combination r1287), (by unfold Seg29.relationRow1288 at r1288; linear_combination r1288), (by unfold Seg29.relationRow1289 at r1289; linear_combination r1289), (by unfold Seg29.relationRow1290 at r1290; linear_combination r1290), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg54
    refine ⟨rho 21631, rho 21632, rho 21633, rho 21634, rho 21635,
      (by unfold Seg29.relationRow1291 at r1291; linear_combination r1291), (by unfold Seg29.relationRow1292 at r1292; linear_combination r1292), (by unfold Seg29.relationRow1293 at r1293; linear_combination r1293), (by unfold Seg29.relationRow1294 at r1294; linear_combination r1294), (by unfold Seg29.relationRow1295 at r1295; linear_combination r1295), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg55
    refine ⟨rho 21636, rho 21637, rho 21638, rho 21639, rho 21640,
      (by unfold Seg29.relationRow1296 at r1296; linear_combination r1296), (by unfold Seg29.relationRow1297 at r1297; linear_combination r1297), (by unfold Seg29.relationRow1298 at r1298; linear_combination r1298), (by unfold Seg29.relationRow1299 at r1299; linear_combination r1299), (by unfold Seg29.relationRow1300 at r1300; linear_combination r1300), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg56
    refine ⟨rho 21641, rho 21642, rho 21643, rho 21644, rho 21645,
      (by unfold Seg29.relationRow1301 at r1301; linear_combination r1301), (by unfold Seg29.relationRow1302 at r1302; linear_combination r1302), (by unfold Seg29.relationRow1303 at r1303; linear_combination r1303), (by unfold Seg29.relationRow1304 at r1304; linear_combination r1304), (by unfold Seg29.relationRow1305 at r1305; linear_combination r1305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg57
    refine ⟨rho 21646, rho 21647, rho 21648, rho 21649, rho 21650,
      (by unfold Seg29.relationRow1306 at r1306; linear_combination r1306), (by unfold Seg29.relationRow1307 at r1307; linear_combination r1307), (by unfold Seg29.relationRow1308 at r1308; linear_combination r1308), (by unfold Seg29.relationRow1309 at r1309; linear_combination r1309), (by unfold Seg29.relationRow1310 at r1310; linear_combination r1310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg58
    refine ⟨rho 21651, rho 21652, rho 21653, rho 21654, rho 21655,
      (by unfold Seg29.relationRow1311 at r1311; linear_combination r1311), (by unfold Seg29.relationRow1312 at r1312; linear_combination r1312), (by unfold Seg29.relationRow1313 at r1313; linear_combination r1313), (by unfold Seg29.relationRow1314 at r1314; linear_combination r1314), (by unfold Seg29.relationRow1315 at r1315; linear_combination r1315), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg59
    refine ⟨rho 21656, rho 21657, rho 21658, rho 21659, rho 21660,
      (by unfold Seg29.relationRow1316 at r1316; linear_combination r1316), (by unfold Seg29.relationRow1317 at r1317; linear_combination r1317), (by unfold Seg29.relationRow1318 at r1318; linear_combination r1318), (by unfold Seg29.relationRow1319 at r1319; linear_combination r1319), (by unfold Seg29.relationRow1320 at r1320; linear_combination r1320), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg60
    refine ⟨rho 21661, rho 21662, rho 21663, rho 21664, rho 21665,
      (by unfold Seg29.relationRow1321 at r1321; linear_combination r1321), (by unfold Seg29.relationRow1322 at r1322; linear_combination r1322), (by unfold Seg29.relationRow1323 at r1323; linear_combination r1323), (by unfold Seg29.relationRow1324 at r1324; linear_combination r1324), (by unfold Seg29.relationRow1325 at r1325; linear_combination r1325), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg61
    refine ⟨rho 21666, rho 21667, rho 21668, rho 21669, rho 21670,
      (by unfold Seg29.relationRow1326 at r1326; linear_combination r1326), (by unfold Seg29.relationRow1327 at r1327; linear_combination r1327), (by unfold Seg29.relationRow1328 at r1328; linear_combination r1328), (by unfold Seg29.relationRow1329 at r1329; linear_combination r1329), (by unfold Seg29.relationRow1330 at r1330; linear_combination r1330), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg62
    refine ⟨rho 21671, rho 21672, rho 21673, rho 21674, rho 21675,
      (by unfold Seg29.relationRow1331 at r1331; linear_combination r1331), (by unfold Seg29.relationRow1332 at r1332; linear_combination r1332), (by unfold Seg29.relationRow1333 at r1333; linear_combination r1333), (by unfold Seg29.relationRow1334 at r1334; linear_combination r1334), (by unfold Seg29.relationRow1335 at r1335; linear_combination r1335), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg63
    refine ⟨rho 21676, rho 21677, rho 21678, rho 21679, rho 21680,
      (by unfold Seg29.relationRow1336 at r1336; linear_combination r1336), (by unfold Seg29.relationRow1337 at r1337; linear_combination r1337), (by unfold Seg29.relationRow1338 at r1338; linear_combination r1338), (by unfold Seg29.relationRow1339 at r1339; linear_combination r1339), (by unfold Seg29.relationRow1340 at r1340; linear_combination r1340), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg64
    refine ⟨rho 21681, rho 21682, rho 21683, rho 21684, rho 21685,
      (by unfold Seg29.relationRow1341 at r1341; linear_combination r1341), (by unfold Seg29.relationRow1342 at r1342; linear_combination r1342), (by unfold Seg29.relationRow1343 at r1343; linear_combination r1343), (by unfold Seg29.relationRow1344 at r1344; linear_combination r1344), (by unfold Seg29.relationRow1345 at r1345; linear_combination r1345), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg65
    refine ⟨rho 21686, rho 21687, rho 21688, rho 21689, rho 21690,
      (by unfold Seg29.relationRow1346 at r1346; linear_combination r1346), (by unfold Seg29.relationRow1347 at r1347; linear_combination r1347), (by unfold Seg29.relationRow1348 at r1348; linear_combination r1348), (by unfold Seg29.relationRow1349 at r1349; linear_combination r1349), (by unfold Seg29.relationRow1350 at r1350; linear_combination r1350), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg66
    refine ⟨rho 21691, rho 21692, rho 21693, rho 21694, rho 21695,
      (by unfold Seg29.relationRow1351 at r1351; linear_combination r1351), (by unfold Seg29.relationRow1352 at r1352; linear_combination r1352), (by unfold Seg29.relationRow1353 at r1353; linear_combination r1353), (by unfold Seg29.relationRow1354 at r1354; linear_combination r1354), (by unfold Seg29.relationRow1355 at r1355; linear_combination r1355), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg67
    refine ⟨rho 21696, rho 21697, rho 21698, rho 21699, rho 21700,
      (by unfold Seg29.relationRow1356 at r1356; linear_combination r1356), (by unfold Seg29.relationRow1357 at r1357; linear_combination r1357), (by unfold Seg29.relationRow1358 at r1358; linear_combination r1358), (by unfold Seg29.relationRow1359 at r1359; linear_combination r1359), (by unfold Seg29.relationRow1360 at r1360; linear_combination r1360), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg68
    refine ⟨rho 21701, rho 21702, rho 21703, rho 21704, rho 21705,
      (by unfold Seg29.relationRow1361 at r1361; linear_combination r1361), (by unfold Seg29.relationRow1362 at r1362; linear_combination r1362), (by unfold Seg29.relationRow1363 at r1363; linear_combination r1363), (by unfold Seg29.relationRow1364 at r1364; linear_combination r1364), (by unfold Seg29.relationRow1365 at r1365; linear_combination r1365), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg69
    refine ⟨rho 21706, rho 21707, rho 21708, rho 21709, rho 21710,
      (by unfold Seg29.relationRow1366 at r1366; linear_combination r1366), (by unfold Seg29.relationRow1367 at r1367; linear_combination r1367), (by unfold Seg29.relationRow1368 at r1368; linear_combination r1368), (by unfold Seg29.relationRow1369 at r1369; linear_combination r1369), (by unfold Seg29.relationRow1370 at r1370; linear_combination r1370), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.relation_sound_permSpec (rho 178) (rho 179) (rho 180) (rho 21355) (rho 21356) (rho 21357) (rho 21358) (rho 21359) (rho 21360) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.tctNode3DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) + (3 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode2Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

