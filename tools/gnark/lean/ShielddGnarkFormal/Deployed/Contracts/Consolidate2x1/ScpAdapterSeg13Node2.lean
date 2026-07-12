import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode2.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node2_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode2Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (3 : Seg13.F))
        (rho 88 + rho 8220) (rho 89 + rho 8221 + rho 8222)
        (rho 89 + rho 8223 + rho 8224) (rho 90 + rho 8225) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩
  unfold Seg13.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Seg13.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Seg13.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Seg13.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Seg13.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.relation (rho 88) (rho 89) (rho 90) (rho 8220) (rho 8221) (rho 8222) (rho 8223) (rho 8224) (rho 8225)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8555 ∧ o1 = rho 8560 ∧ o2 = rho 8565 ∧ o3 = rho 8570 ∧ o4 = rho 8575) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg0
    refine ⟨rho 8226, rho 8227, rho 8228, rho 8229, rho 8230,
      (by unfold Seg13.relationRow1021 at r1021; linear_combination r1021), (by unfold Seg13.relationRow1022 at r1022; linear_combination r1022), (by unfold Seg13.relationRow1023 at r1023; linear_combination r1023), (by unfold Seg13.relationRow1024 at r1024; linear_combination r1024), (by unfold Seg13.relationRow1025 at r1025; linear_combination r1025), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg1
    refine ⟨rho 8231, rho 8232, rho 8233, rho 8234, rho 8235,
      (by unfold Seg13.relationRow1026 at r1026; linear_combination r1026), (by unfold Seg13.relationRow1027 at r1027; linear_combination r1027), (by unfold Seg13.relationRow1028 at r1028; linear_combination r1028), (by unfold Seg13.relationRow1029 at r1029; linear_combination r1029), (by unfold Seg13.relationRow1030 at r1030; linear_combination r1030), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg2
    refine ⟨rho 8236, rho 8237, rho 8238, rho 8239, rho 8240,
      (by unfold Seg13.relationRow1031 at r1031; linear_combination r1031), (by unfold Seg13.relationRow1032 at r1032; linear_combination r1032), (by unfold Seg13.relationRow1033 at r1033; linear_combination r1033), (by unfold Seg13.relationRow1034 at r1034; linear_combination r1034), (by unfold Seg13.relationRow1035 at r1035; linear_combination r1035), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg3
    refine ⟨rho 8241, rho 8242, rho 8243, rho 8244, rho 8245,
      (by unfold Seg13.relationRow1036 at r1036; linear_combination r1036), (by unfold Seg13.relationRow1037 at r1037; linear_combination r1037), (by unfold Seg13.relationRow1038 at r1038; linear_combination r1038), (by unfold Seg13.relationRow1039 at r1039; linear_combination r1039), (by unfold Seg13.relationRow1040 at r1040; linear_combination r1040), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg4
    refine ⟨rho 8246, rho 8247, rho 8248, rho 8249, rho 8250,
      (by unfold Seg13.relationRow1041 at r1041; linear_combination r1041), (by unfold Seg13.relationRow1042 at r1042; linear_combination r1042), (by unfold Seg13.relationRow1043 at r1043; linear_combination r1043), (by unfold Seg13.relationRow1044 at r1044; linear_combination r1044), (by unfold Seg13.relationRow1045 at r1045; linear_combination r1045), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg5
    refine ⟨rho 8251, rho 8252, rho 8253, rho 8254, rho 8255,
      (by unfold Seg13.relationRow1046 at r1046; linear_combination r1046), (by unfold Seg13.relationRow1047 at r1047; linear_combination r1047), (by unfold Seg13.relationRow1048 at r1048; linear_combination r1048), (by unfold Seg13.relationRow1049 at r1049; linear_combination r1049), (by unfold Seg13.relationRow1050 at r1050; linear_combination r1050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg6
    refine ⟨rho 8256, rho 8257, rho 8258, rho 8259, rho 8260,
      (by unfold Seg13.relationRow1051 at r1051; linear_combination r1051), (by unfold Seg13.relationRow1052 at r1052; linear_combination r1052), (by unfold Seg13.relationRow1053 at r1053; linear_combination r1053), (by unfold Seg13.relationRow1054 at r1054; linear_combination r1054), (by unfold Seg13.relationRow1055 at r1055; linear_combination r1055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg7
    refine ⟨rho 8261, rho 8262, rho 8263, rho 8264, rho 8265,
      (by unfold Seg13.relationRow1056 at r1056; linear_combination r1056), (by unfold Seg13.relationRow1057 at r1057; linear_combination r1057), (by unfold Seg13.relationRow1058 at r1058; linear_combination r1058), (by unfold Seg13.relationRow1059 at r1059; linear_combination r1059), (by unfold Seg13.relationRow1060 at r1060; linear_combination r1060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg8
    refine ⟨rho 8266, rho 8267, rho 8268, rho 8269, rho 8270,
      (by unfold Seg13.relationRow1061 at r1061; linear_combination r1061), (by unfold Seg13.relationRow1062 at r1062; linear_combination r1062), (by unfold Seg13.relationRow1063 at r1063; linear_combination r1063), (by unfold Seg13.relationRow1064 at r1064; linear_combination r1064), (by unfold Seg13.relationRow1065 at r1065; linear_combination r1065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg9
    refine ⟨rho 8271, rho 8272, rho 8273, rho 8274, rho 8275,
      (by unfold Seg13.relationRow1066 at r1066; linear_combination r1066), (by unfold Seg13.relationRow1067 at r1067; linear_combination r1067), (by unfold Seg13.relationRow1068 at r1068; linear_combination r1068), (by unfold Seg13.relationRow1069 at r1069; linear_combination r1069), (by unfold Seg13.relationRow1070 at r1070; linear_combination r1070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg10
    refine ⟨rho 8276, rho 8277, rho 8278, rho 8279, rho 8280,
      (by unfold Seg13.relationRow1071 at r1071; linear_combination r1071), (by unfold Seg13.relationRow1072 at r1072; linear_combination r1072), (by unfold Seg13.relationRow1073 at r1073; linear_combination r1073), (by unfold Seg13.relationRow1074 at r1074; linear_combination r1074), (by unfold Seg13.relationRow1075 at r1075; linear_combination r1075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg11
    refine ⟨rho 8281, rho 8282, rho 8283, rho 8284, rho 8285,
      (by unfold Seg13.relationRow1076 at r1076; linear_combination r1076), (by unfold Seg13.relationRow1077 at r1077; linear_combination r1077), (by unfold Seg13.relationRow1078 at r1078; linear_combination r1078), (by unfold Seg13.relationRow1079 at r1079; linear_combination r1079), (by unfold Seg13.relationRow1080 at r1080; linear_combination r1080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg12
    refine ⟨rho 8286, rho 8287, rho 8288, rho 8289, rho 8290,
      (by unfold Seg13.relationRow1081 at r1081; linear_combination r1081), (by unfold Seg13.relationRow1082 at r1082; linear_combination r1082), (by unfold Seg13.relationRow1083 at r1083; linear_combination r1083), (by unfold Seg13.relationRow1084 at r1084; linear_combination r1084), (by unfold Seg13.relationRow1085 at r1085; linear_combination r1085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg13
    refine ⟨rho 8291, rho 8292, rho 8293, rho 8294, rho 8295,
      (by unfold Seg13.relationRow1086 at r1086; linear_combination r1086), (by unfold Seg13.relationRow1087 at r1087; linear_combination r1087), (by unfold Seg13.relationRow1088 at r1088; linear_combination r1088), (by unfold Seg13.relationRow1089 at r1089; linear_combination r1089), (by unfold Seg13.relationRow1090 at r1090; linear_combination r1090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg14
    refine ⟨rho 8296, rho 8297, rho 8298, rho 8299, rho 8300,
      (by unfold Seg13.relationRow1091 at r1091; linear_combination r1091), (by unfold Seg13.relationRow1092 at r1092; linear_combination r1092), (by unfold Seg13.relationRow1093 at r1093; linear_combination r1093), (by unfold Seg13.relationRow1094 at r1094; linear_combination r1094), (by unfold Seg13.relationRow1095 at r1095; linear_combination r1095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg15
    refine ⟨rho 8301, rho 8302, rho 8303, rho 8304, rho 8305,
      (by unfold Seg13.relationRow1096 at r1096; linear_combination r1096), (by unfold Seg13.relationRow1097 at r1097; linear_combination r1097), (by unfold Seg13.relationRow1098 at r1098; linear_combination r1098), (by unfold Seg13.relationRow1099 at r1099; linear_combination r1099), (by unfold Seg13.relationRow1100 at r1100; linear_combination r1100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg16
    refine ⟨rho 8306, rho 8307, rho 8308, rho 8309, rho 8310,
      (by unfold Seg13.relationRow1101 at r1101; linear_combination r1101), (by unfold Seg13.relationRow1102 at r1102; linear_combination r1102), (by unfold Seg13.relationRow1103 at r1103; linear_combination r1103), (by unfold Seg13.relationRow1104 at r1104; linear_combination r1104), (by unfold Seg13.relationRow1105 at r1105; linear_combination r1105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg17
    refine ⟨rho 8311, rho 8312, rho 8313, rho 8314, rho 8315,
      (by unfold Seg13.relationRow1106 at r1106; linear_combination r1106), (by unfold Seg13.relationRow1107 at r1107; linear_combination r1107), (by unfold Seg13.relationRow1108 at r1108; linear_combination r1108), (by unfold Seg13.relationRow1109 at r1109; linear_combination r1109), (by unfold Seg13.relationRow1110 at r1110; linear_combination r1110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg18
    refine ⟨rho 8316, rho 8317, rho 8318, rho 8319, rho 8320,
      (by unfold Seg13.relationRow1111 at r1111; linear_combination r1111), (by unfold Seg13.relationRow1112 at r1112; linear_combination r1112), (by unfold Seg13.relationRow1113 at r1113; linear_combination r1113), (by unfold Seg13.relationRow1114 at r1114; linear_combination r1114), (by unfold Seg13.relationRow1115 at r1115; linear_combination r1115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg19
    refine ⟨rho 8321, rho 8322, rho 8323, rho 8324, rho 8325,
      (by unfold Seg13.relationRow1116 at r1116; linear_combination r1116), (by unfold Seg13.relationRow1117 at r1117; linear_combination r1117), (by unfold Seg13.relationRow1118 at r1118; linear_combination r1118), (by unfold Seg13.relationRow1119 at r1119; linear_combination r1119), (by unfold Seg13.relationRow1120 at r1120; linear_combination r1120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg20
    refine ⟨rho 8326, rho 8327, rho 8328, rho 8329, rho 8330,
      (by unfold Seg13.relationRow1121 at r1121; linear_combination r1121), (by unfold Seg13.relationRow1122 at r1122; linear_combination r1122), (by unfold Seg13.relationRow1123 at r1123; linear_combination r1123), (by unfold Seg13.relationRow1124 at r1124; linear_combination r1124), (by unfold Seg13.relationRow1125 at r1125; linear_combination r1125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg21
    refine ⟨rho 8331, rho 8332, rho 8333, rho 8334, rho 8335,
      (by unfold Seg13.relationRow1126 at r1126; linear_combination r1126), (by unfold Seg13.relationRow1127 at r1127; linear_combination r1127), (by unfold Seg13.relationRow1128 at r1128; linear_combination r1128), (by unfold Seg13.relationRow1129 at r1129; linear_combination r1129), (by unfold Seg13.relationRow1130 at r1130; linear_combination r1130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg22
    refine ⟨rho 8336, rho 8337, rho 8338, rho 8339, rho 8340,
      (by unfold Seg13.relationRow1131 at r1131; linear_combination r1131), (by unfold Seg13.relationRow1132 at r1132; linear_combination r1132), (by unfold Seg13.relationRow1133 at r1133; linear_combination r1133), (by unfold Seg13.relationRow1134 at r1134; linear_combination r1134), (by unfold Seg13.relationRow1135 at r1135; linear_combination r1135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg23
    refine ⟨rho 8341, rho 8342, rho 8343, rho 8344, rho 8345,
      (by unfold Seg13.relationRow1136 at r1136; linear_combination r1136), (by unfold Seg13.relationRow1137 at r1137; linear_combination r1137), (by unfold Seg13.relationRow1138 at r1138; linear_combination r1138), (by unfold Seg13.relationRow1139 at r1139; linear_combination r1139), (by unfold Seg13.relationRow1140 at r1140; linear_combination r1140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg24
    refine ⟨rho 8346, rho 8347, rho 8348, rho 8349, rho 8350,
      (by unfold Seg13.relationRow1141 at r1141; linear_combination r1141), (by unfold Seg13.relationRow1142 at r1142; linear_combination r1142), (by unfold Seg13.relationRow1143 at r1143; linear_combination r1143), (by unfold Seg13.relationRow1144 at r1144; linear_combination r1144), (by unfold Seg13.relationRow1145 at r1145; linear_combination r1145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg25
    refine ⟨rho 8351, rho 8352, rho 8353, rho 8354, rho 8355,
      (by unfold Seg13.relationRow1146 at r1146; linear_combination r1146), (by unfold Seg13.relationRow1147 at r1147; linear_combination r1147), (by unfold Seg13.relationRow1148 at r1148; linear_combination r1148), (by unfold Seg13.relationRow1149 at r1149; linear_combination r1149), (by unfold Seg13.relationRow1150 at r1150; linear_combination r1150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg26
    refine ⟨rho 8356, rho 8357, rho 8358, rho 8359, rho 8360,
      (by unfold Seg13.relationRow1151 at r1151; linear_combination r1151), (by unfold Seg13.relationRow1152 at r1152; linear_combination r1152), (by unfold Seg13.relationRow1153 at r1153; linear_combination r1153), (by unfold Seg13.relationRow1154 at r1154; linear_combination r1154), (by unfold Seg13.relationRow1155 at r1155; linear_combination r1155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg27
    refine ⟨rho 8361, rho 8362, rho 8363, rho 8364, rho 8365,
      (by unfold Seg13.relationRow1156 at r1156; linear_combination r1156), (by unfold Seg13.relationRow1157 at r1157; linear_combination r1157), (by unfold Seg13.relationRow1158 at r1158; linear_combination r1158), (by unfold Seg13.relationRow1159 at r1159; linear_combination r1159), (by unfold Seg13.relationRow1160 at r1160; linear_combination r1160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg28
    refine ⟨rho 8366, rho 8367, rho 8368, rho 8369, rho 8370,
      (by unfold Seg13.relationRow1161 at r1161; linear_combination r1161), (by unfold Seg13.relationRow1162 at r1162; linear_combination r1162), (by unfold Seg13.relationRow1163 at r1163; linear_combination r1163), (by unfold Seg13.relationRow1164 at r1164; linear_combination r1164), (by unfold Seg13.relationRow1165 at r1165; linear_combination r1165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg29
    refine ⟨rho 8371, rho 8372, rho 8373, rho 8374, rho 8375,
      (by unfold Seg13.relationRow1166 at r1166; linear_combination r1166), (by unfold Seg13.relationRow1167 at r1167; linear_combination r1167), (by unfold Seg13.relationRow1168 at r1168; linear_combination r1168), (by unfold Seg13.relationRow1169 at r1169; linear_combination r1169), (by unfold Seg13.relationRow1170 at r1170; linear_combination r1170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg30
    refine ⟨rho 8376, rho 8377, rho 8378, rho 8379, rho 8380,
      (by unfold Seg13.relationRow1171 at r1171; linear_combination r1171), (by unfold Seg13.relationRow1172 at r1172; linear_combination r1172), (by unfold Seg13.relationRow1173 at r1173; linear_combination r1173), (by unfold Seg13.relationRow1174 at r1174; linear_combination r1174), (by unfold Seg13.relationRow1175 at r1175; linear_combination r1175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg31
    refine ⟨rho 8381, rho 8382, rho 8383, rho 8384, rho 8385,
      (by unfold Seg13.relationRow1176 at r1176; linear_combination r1176), (by unfold Seg13.relationRow1177 at r1177; linear_combination r1177), (by unfold Seg13.relationRow1178 at r1178; linear_combination r1178), (by unfold Seg13.relationRow1179 at r1179; linear_combination r1179), (by unfold Seg13.relationRow1180 at r1180; linear_combination r1180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg32
    refine ⟨rho 8386, rho 8387, rho 8388, rho 8389, rho 8390,
      (by unfold Seg13.relationRow1181 at r1181; linear_combination r1181), (by unfold Seg13.relationRow1182 at r1182; linear_combination r1182), (by unfold Seg13.relationRow1183 at r1183; linear_combination r1183), (by unfold Seg13.relationRow1184 at r1184; linear_combination r1184), (by unfold Seg13.relationRow1185 at r1185; linear_combination r1185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg33
    refine ⟨rho 8391, rho 8392, rho 8393, rho 8394, rho 8395,
      (by unfold Seg13.relationRow1186 at r1186; linear_combination r1186), (by unfold Seg13.relationRow1187 at r1187; linear_combination r1187), (by unfold Seg13.relationRow1188 at r1188; linear_combination r1188), (by unfold Seg13.relationRow1189 at r1189; linear_combination r1189), (by unfold Seg13.relationRow1190 at r1190; linear_combination r1190), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg34
    refine ⟨rho 8396, rho 8397, rho 8398, rho 8399, rho 8400,
      (by unfold Seg13.relationRow1191 at r1191; linear_combination r1191), (by unfold Seg13.relationRow1192 at r1192; linear_combination r1192), (by unfold Seg13.relationRow1193 at r1193; linear_combination r1193), (by unfold Seg13.relationRow1194 at r1194; linear_combination r1194), (by unfold Seg13.relationRow1195 at r1195; linear_combination r1195), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg35
    refine ⟨rho 8401, rho 8402, rho 8403, rho 8404, rho 8405,
      (by unfold Seg13.relationRow1196 at r1196; linear_combination r1196), (by unfold Seg13.relationRow1197 at r1197; linear_combination r1197), (by unfold Seg13.relationRow1198 at r1198; linear_combination r1198), (by unfold Seg13.relationRow1199 at r1199; linear_combination r1199), (by unfold Seg13.relationRow1200 at r1200; linear_combination r1200), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg36
    refine ⟨rho 8406, rho 8407, rho 8408, rho 8409, rho 8410,
      (by unfold Seg13.relationRow1201 at r1201; linear_combination r1201), (by unfold Seg13.relationRow1202 at r1202; linear_combination r1202), (by unfold Seg13.relationRow1203 at r1203; linear_combination r1203), (by unfold Seg13.relationRow1204 at r1204; linear_combination r1204), (by unfold Seg13.relationRow1205 at r1205; linear_combination r1205), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg37
    refine ⟨rho 8411, rho 8412, rho 8413, rho 8414, rho 8415,
      (by unfold Seg13.relationRow1206 at r1206; linear_combination r1206), (by unfold Seg13.relationRow1207 at r1207; linear_combination r1207), (by unfold Seg13.relationRow1208 at r1208; linear_combination r1208), (by unfold Seg13.relationRow1209 at r1209; linear_combination r1209), (by unfold Seg13.relationRow1210 at r1210; linear_combination r1210), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg38
    refine ⟨rho 8416, rho 8417, rho 8418, rho 8419, rho 8420,
      (by unfold Seg13.relationRow1211 at r1211; linear_combination r1211), (by unfold Seg13.relationRow1212 at r1212; linear_combination r1212), (by unfold Seg13.relationRow1213 at r1213; linear_combination r1213), (by unfold Seg13.relationRow1214 at r1214; linear_combination r1214), (by unfold Seg13.relationRow1215 at r1215; linear_combination r1215), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg39
    refine ⟨rho 8421, rho 8422, rho 8423, rho 8424, rho 8425,
      (by unfold Seg13.relationRow1216 at r1216; linear_combination r1216), (by unfold Seg13.relationRow1217 at r1217; linear_combination r1217), (by unfold Seg13.relationRow1218 at r1218; linear_combination r1218), (by unfold Seg13.relationRow1219 at r1219; linear_combination r1219), (by unfold Seg13.relationRow1220 at r1220; linear_combination r1220), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg40
    refine ⟨rho 8426, rho 8427, rho 8428, rho 8429, rho 8430,
      (by unfold Seg13.relationRow1221 at r1221; linear_combination r1221), (by unfold Seg13.relationRow1222 at r1222; linear_combination r1222), (by unfold Seg13.relationRow1223 at r1223; linear_combination r1223), (by unfold Seg13.relationRow1224 at r1224; linear_combination r1224), (by unfold Seg13.relationRow1225 at r1225; linear_combination r1225), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg41
    refine ⟨rho 8431, rho 8432, rho 8433, rho 8434, rho 8435,
      (by unfold Seg13.relationRow1226 at r1226; linear_combination r1226), (by unfold Seg13.relationRow1227 at r1227; linear_combination r1227), (by unfold Seg13.relationRow1228 at r1228; linear_combination r1228), (by unfold Seg13.relationRow1229 at r1229; linear_combination r1229), (by unfold Seg13.relationRow1230 at r1230; linear_combination r1230), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg42
    refine ⟨rho 8436, rho 8437, rho 8438, rho 8439, rho 8440,
      (by unfold Seg13.relationRow1231 at r1231; linear_combination r1231), (by unfold Seg13.relationRow1232 at r1232; linear_combination r1232), (by unfold Seg13.relationRow1233 at r1233; linear_combination r1233), (by unfold Seg13.relationRow1234 at r1234; linear_combination r1234), (by unfold Seg13.relationRow1235 at r1235; linear_combination r1235), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg43
    refine ⟨rho 8441, rho 8442, rho 8443, rho 8444, rho 8445,
      (by unfold Seg13.relationRow1236 at r1236; linear_combination r1236), (by unfold Seg13.relationRow1237 at r1237; linear_combination r1237), (by unfold Seg13.relationRow1238 at r1238; linear_combination r1238), (by unfold Seg13.relationRow1239 at r1239; linear_combination r1239), (by unfold Seg13.relationRow1240 at r1240; linear_combination r1240), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg44
    refine ⟨rho 8446, rho 8447, rho 8448, rho 8449, rho 8450,
      (by unfold Seg13.relationRow1241 at r1241; linear_combination r1241), (by unfold Seg13.relationRow1242 at r1242; linear_combination r1242), (by unfold Seg13.relationRow1243 at r1243; linear_combination r1243), (by unfold Seg13.relationRow1244 at r1244; linear_combination r1244), (by unfold Seg13.relationRow1245 at r1245; linear_combination r1245), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg45
    refine ⟨rho 8451, rho 8452, rho 8453, rho 8454, rho 8455,
      (by unfold Seg13.relationRow1246 at r1246; linear_combination r1246), (by unfold Seg13.relationRow1247 at r1247; linear_combination r1247), (by unfold Seg13.relationRow1248 at r1248; linear_combination r1248), (by unfold Seg13.relationRow1249 at r1249; linear_combination r1249), (by unfold Seg13.relationRow1250 at r1250; linear_combination r1250), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg46
    refine ⟨rho 8456, rho 8457, rho 8458, rho 8459, rho 8460,
      (by unfold Seg13.relationRow1251 at r1251; linear_combination r1251), (by unfold Seg13.relationRow1252 at r1252; linear_combination r1252), (by unfold Seg13.relationRow1253 at r1253; linear_combination r1253), (by unfold Seg13.relationRow1254 at r1254; linear_combination r1254), (by unfold Seg13.relationRow1255 at r1255; linear_combination r1255), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg47
    refine ⟨rho 8461, rho 8462, rho 8463, rho 8464, rho 8465,
      (by unfold Seg13.relationRow1256 at r1256; linear_combination r1256), (by unfold Seg13.relationRow1257 at r1257; linear_combination r1257), (by unfold Seg13.relationRow1258 at r1258; linear_combination r1258), (by unfold Seg13.relationRow1259 at r1259; linear_combination r1259), (by unfold Seg13.relationRow1260 at r1260; linear_combination r1260), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg48
    refine ⟨rho 8466, rho 8467, rho 8468, rho 8469, rho 8470,
      (by unfold Seg13.relationRow1261 at r1261; linear_combination r1261), (by unfold Seg13.relationRow1262 at r1262; linear_combination r1262), (by unfold Seg13.relationRow1263 at r1263; linear_combination r1263), (by unfold Seg13.relationRow1264 at r1264; linear_combination r1264), (by unfold Seg13.relationRow1265 at r1265; linear_combination r1265), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg49
    refine ⟨rho 8471, rho 8472, rho 8473, rho 8474, rho 8475,
      (by unfold Seg13.relationRow1266 at r1266; linear_combination r1266), (by unfold Seg13.relationRow1267 at r1267; linear_combination r1267), (by unfold Seg13.relationRow1268 at r1268; linear_combination r1268), (by unfold Seg13.relationRow1269 at r1269; linear_combination r1269), (by unfold Seg13.relationRow1270 at r1270; linear_combination r1270), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg50
    refine ⟨rho 8476, rho 8477, rho 8478, rho 8479, rho 8480,
      (by unfold Seg13.relationRow1271 at r1271; linear_combination r1271), (by unfold Seg13.relationRow1272 at r1272; linear_combination r1272), (by unfold Seg13.relationRow1273 at r1273; linear_combination r1273), (by unfold Seg13.relationRow1274 at r1274; linear_combination r1274), (by unfold Seg13.relationRow1275 at r1275; linear_combination r1275), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg51
    refine ⟨rho 8481, rho 8482, rho 8483, rho 8484, rho 8485,
      (by unfold Seg13.relationRow1276 at r1276; linear_combination r1276), (by unfold Seg13.relationRow1277 at r1277; linear_combination r1277), (by unfold Seg13.relationRow1278 at r1278; linear_combination r1278), (by unfold Seg13.relationRow1279 at r1279; linear_combination r1279), (by unfold Seg13.relationRow1280 at r1280; linear_combination r1280), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg52
    refine ⟨rho 8486, rho 8487, rho 8488, rho 8489, rho 8490,
      (by unfold Seg13.relationRow1281 at r1281; linear_combination r1281), (by unfold Seg13.relationRow1282 at r1282; linear_combination r1282), (by unfold Seg13.relationRow1283 at r1283; linear_combination r1283), (by unfold Seg13.relationRow1284 at r1284; linear_combination r1284), (by unfold Seg13.relationRow1285 at r1285; linear_combination r1285), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg53
    refine ⟨rho 8491, rho 8492, rho 8493, rho 8494, rho 8495,
      (by unfold Seg13.relationRow1286 at r1286; linear_combination r1286), (by unfold Seg13.relationRow1287 at r1287; linear_combination r1287), (by unfold Seg13.relationRow1288 at r1288; linear_combination r1288), (by unfold Seg13.relationRow1289 at r1289; linear_combination r1289), (by unfold Seg13.relationRow1290 at r1290; linear_combination r1290), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg54
    refine ⟨rho 8496, rho 8497, rho 8498, rho 8499, rho 8500,
      (by unfold Seg13.relationRow1291 at r1291; linear_combination r1291), (by unfold Seg13.relationRow1292 at r1292; linear_combination r1292), (by unfold Seg13.relationRow1293 at r1293; linear_combination r1293), (by unfold Seg13.relationRow1294 at r1294; linear_combination r1294), (by unfold Seg13.relationRow1295 at r1295; linear_combination r1295), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg55
    refine ⟨rho 8501, rho 8502, rho 8503, rho 8504, rho 8505,
      (by unfold Seg13.relationRow1296 at r1296; linear_combination r1296), (by unfold Seg13.relationRow1297 at r1297; linear_combination r1297), (by unfold Seg13.relationRow1298 at r1298; linear_combination r1298), (by unfold Seg13.relationRow1299 at r1299; linear_combination r1299), (by unfold Seg13.relationRow1300 at r1300; linear_combination r1300), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg56
    refine ⟨rho 8506, rho 8507, rho 8508, rho 8509, rho 8510,
      (by unfold Seg13.relationRow1301 at r1301; linear_combination r1301), (by unfold Seg13.relationRow1302 at r1302; linear_combination r1302), (by unfold Seg13.relationRow1303 at r1303; linear_combination r1303), (by unfold Seg13.relationRow1304 at r1304; linear_combination r1304), (by unfold Seg13.relationRow1305 at r1305; linear_combination r1305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg57
    refine ⟨rho 8511, rho 8512, rho 8513, rho 8514, rho 8515,
      (by unfold Seg13.relationRow1306 at r1306; linear_combination r1306), (by unfold Seg13.relationRow1307 at r1307; linear_combination r1307), (by unfold Seg13.relationRow1308 at r1308; linear_combination r1308), (by unfold Seg13.relationRow1309 at r1309; linear_combination r1309), (by unfold Seg13.relationRow1310 at r1310; linear_combination r1310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg58
    refine ⟨rho 8516, rho 8517, rho 8518, rho 8519, rho 8520,
      (by unfold Seg13.relationRow1311 at r1311; linear_combination r1311), (by unfold Seg13.relationRow1312 at r1312; linear_combination r1312), (by unfold Seg13.relationRow1313 at r1313; linear_combination r1313), (by unfold Seg13.relationRow1314 at r1314; linear_combination r1314), (by unfold Seg13.relationRow1315 at r1315; linear_combination r1315), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg59
    refine ⟨rho 8521, rho 8522, rho 8523, rho 8524, rho 8525,
      (by unfold Seg13.relationRow1316 at r1316; linear_combination r1316), (by unfold Seg13.relationRow1317 at r1317; linear_combination r1317), (by unfold Seg13.relationRow1318 at r1318; linear_combination r1318), (by unfold Seg13.relationRow1319 at r1319; linear_combination r1319), (by unfold Seg13.relationRow1320 at r1320; linear_combination r1320), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg60
    refine ⟨rho 8526, rho 8527, rho 8528, rho 8529, rho 8530,
      (by unfold Seg13.relationRow1321 at r1321; linear_combination r1321), (by unfold Seg13.relationRow1322 at r1322; linear_combination r1322), (by unfold Seg13.relationRow1323 at r1323; linear_combination r1323), (by unfold Seg13.relationRow1324 at r1324; linear_combination r1324), (by unfold Seg13.relationRow1325 at r1325; linear_combination r1325), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg61
    refine ⟨rho 8531, rho 8532, rho 8533, rho 8534, rho 8535,
      (by unfold Seg13.relationRow1326 at r1326; linear_combination r1326), (by unfold Seg13.relationRow1327 at r1327; linear_combination r1327), (by unfold Seg13.relationRow1328 at r1328; linear_combination r1328), (by unfold Seg13.relationRow1329 at r1329; linear_combination r1329), (by unfold Seg13.relationRow1330 at r1330; linear_combination r1330), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg62
    refine ⟨rho 8536, rho 8537, rho 8538, rho 8539, rho 8540,
      (by unfold Seg13.relationRow1331 at r1331; linear_combination r1331), (by unfold Seg13.relationRow1332 at r1332; linear_combination r1332), (by unfold Seg13.relationRow1333 at r1333; linear_combination r1333), (by unfold Seg13.relationRow1334 at r1334; linear_combination r1334), (by unfold Seg13.relationRow1335 at r1335; linear_combination r1335), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg63
    refine ⟨rho 8541, rho 8542, rho 8543, rho 8544, rho 8545,
      (by unfold Seg13.relationRow1336 at r1336; linear_combination r1336), (by unfold Seg13.relationRow1337 at r1337; linear_combination r1337), (by unfold Seg13.relationRow1338 at r1338; linear_combination r1338), (by unfold Seg13.relationRow1339 at r1339; linear_combination r1339), (by unfold Seg13.relationRow1340 at r1340; linear_combination r1340), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg64
    refine ⟨rho 8546, rho 8547, rho 8548, rho 8549, rho 8550,
      (by unfold Seg13.relationRow1341 at r1341; linear_combination r1341), (by unfold Seg13.relationRow1342 at r1342; linear_combination r1342), (by unfold Seg13.relationRow1343 at r1343; linear_combination r1343), (by unfold Seg13.relationRow1344 at r1344; linear_combination r1344), (by unfold Seg13.relationRow1345 at r1345; linear_combination r1345), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg65
    refine ⟨rho 8551, rho 8552, rho 8553, rho 8554, rho 8555,
      (by unfold Seg13.relationRow1346 at r1346; linear_combination r1346), (by unfold Seg13.relationRow1347 at r1347; linear_combination r1347), (by unfold Seg13.relationRow1348 at r1348; linear_combination r1348), (by unfold Seg13.relationRow1349 at r1349; linear_combination r1349), (by unfold Seg13.relationRow1350 at r1350; linear_combination r1350), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg66
    refine ⟨rho 8556, rho 8557, rho 8558, rho 8559, rho 8560,
      (by unfold Seg13.relationRow1351 at r1351; linear_combination r1351), (by unfold Seg13.relationRow1352 at r1352; linear_combination r1352), (by unfold Seg13.relationRow1353 at r1353; linear_combination r1353), (by unfold Seg13.relationRow1354 at r1354; linear_combination r1354), (by unfold Seg13.relationRow1355 at r1355; linear_combination r1355), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg67
    refine ⟨rho 8561, rho 8562, rho 8563, rho 8564, rho 8565,
      (by unfold Seg13.relationRow1356 at r1356; linear_combination r1356), (by unfold Seg13.relationRow1357 at r1357; linear_combination r1357), (by unfold Seg13.relationRow1358 at r1358; linear_combination r1358), (by unfold Seg13.relationRow1359 at r1359; linear_combination r1359), (by unfold Seg13.relationRow1360 at r1360; linear_combination r1360), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg68
    refine ⟨rho 8566, rho 8567, rho 8568, rho 8569, rho 8570,
      (by unfold Seg13.relationRow1361 at r1361; linear_combination r1361), (by unfold Seg13.relationRow1362 at r1362; linear_combination r1362), (by unfold Seg13.relationRow1363 at r1363; linear_combination r1363), (by unfold Seg13.relationRow1364 at r1364; linear_combination r1364), (by unfold Seg13.relationRow1365 at r1365; linear_combination r1365), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_867941.seg69
    refine ⟨rho 8571, rho 8572, rho 8573, rho 8574, rho 8575,
      (by unfold Seg13.relationRow1366 at r1366; linear_combination r1366), (by unfold Seg13.relationRow1367 at r1367; linear_combination r1367), (by unfold Seg13.relationRow1368 at r1368; linear_combination r1368), (by unfold Seg13.relationRow1369 at r1369; linear_combination r1369), (by unfold Seg13.relationRow1370 at r1370; linear_combination r1370), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.relation_sound_permSpec (rho 88) (rho 89) (rho 90) (rho 8220) (rho 8221) (rho 8222) (rho 8223) (rho 8224) (rho 8225) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.tctNode3DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) + (3 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode2Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

