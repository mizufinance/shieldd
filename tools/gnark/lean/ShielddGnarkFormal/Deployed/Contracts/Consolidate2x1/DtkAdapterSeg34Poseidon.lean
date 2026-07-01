import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Base
import ShielddGnarkFormal.Deployed.DtkIvkPoseidon.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34_poseidon_eq (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    rho 9 + 2111115437357092606062206234695386632838870926408408195193685246394721360383 * rho 10 =
      Shieldd.GnarkFormal.Poseidon2Bridge.permSpec2
        (9361307723838134966014044876631201920149619 : Seg34.F) (rho 8) (rho 32489 - rho 32149) := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p13, p14, p15, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, _, _, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Seg34.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Seg34.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Seg34.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.relation (rho 8) (rho 32149) (rho 32489) (fun x y z => x = rho 32749 ∧ y = rho 32754 ∧ z = rho 32759) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg0
    refine ⟨rho 32490, rho 32491, rho 32492, rho 32493, rho 32494, (by simpa [Seg34.relationRow1046] using r1046), (by simpa [Seg34.relationRow1047] using r1047), (by simpa [Seg34.relationRow1048] using r1048), (by simpa [Seg34.relationRow1049] using r1049), (by simpa [Seg34.relationRow1050] using r1050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg1
    refine ⟨rho 32495, rho 32496, rho 32497, rho 32498, rho 32499, (by simpa [Seg34.relationRow1051] using r1051), (by simpa [Seg34.relationRow1052] using r1052), (by simpa [Seg34.relationRow1053] using r1053), (by simpa [Seg34.relationRow1054] using r1054), (by simpa [Seg34.relationRow1055] using r1055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg2
    refine ⟨rho 32500, rho 32501, rho 32502, rho 32503, rho 32504, (by simpa [Seg34.relationRow1056] using r1056), (by simpa [Seg34.relationRow1057] using r1057), (by simpa [Seg34.relationRow1058] using r1058), (by simpa [Seg34.relationRow1059] using r1059), (by simpa [Seg34.relationRow1060] using r1060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg3
    refine ⟨rho 32505, rho 32506, rho 32507, rho 32508, rho 32509, (by simpa [Seg34.relationRow1061] using r1061), (by simpa [Seg34.relationRow1062] using r1062), (by simpa [Seg34.relationRow1063] using r1063), (by simpa [Seg34.relationRow1064] using r1064), (by simpa [Seg34.relationRow1065] using r1065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg4
    refine ⟨rho 32510, rho 32511, rho 32512, rho 32513, rho 32514, (by simpa [Seg34.relationRow1066] using r1066), (by simpa [Seg34.relationRow1067] using r1067), (by simpa [Seg34.relationRow1068] using r1068), (by simpa [Seg34.relationRow1069] using r1069), (by simpa [Seg34.relationRow1070] using r1070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg5
    refine ⟨rho 32515, rho 32516, rho 32517, rho 32518, rho 32519, (by simpa [Seg34.relationRow1071] using r1071), (by simpa [Seg34.relationRow1072] using r1072), (by simpa [Seg34.relationRow1073] using r1073), (by simpa [Seg34.relationRow1074] using r1074), (by simpa [Seg34.relationRow1075] using r1075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg6
    refine ⟨rho 32520, rho 32521, rho 32522, rho 32523, rho 32524, (by simpa [Seg34.relationRow1076] using r1076), (by simpa [Seg34.relationRow1077] using r1077), (by simpa [Seg34.relationRow1078] using r1078), (by simpa [Seg34.relationRow1079] using r1079), (by simpa [Seg34.relationRow1080] using r1080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg7
    refine ⟨rho 32525, rho 32526, rho 32527, rho 32528, rho 32529, (by simpa [Seg34.relationRow1081] using r1081), (by simpa [Seg34.relationRow1082] using r1082), (by simpa [Seg34.relationRow1083] using r1083), (by simpa [Seg34.relationRow1084] using r1084), (by simpa [Seg34.relationRow1085] using r1085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg8
    refine ⟨rho 32530, rho 32531, rho 32532, rho 32533, rho 32534, (by simpa [Seg34.relationRow1086] using r1086), (by simpa [Seg34.relationRow1087] using r1087), (by simpa [Seg34.relationRow1088] using r1088), (by simpa [Seg34.relationRow1089] using r1089), (by simpa [Seg34.relationRow1090] using r1090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg9
    refine ⟨rho 32535, rho 32536, rho 32537, rho 32538, rho 32539, (by simpa [Seg34.relationRow1091] using r1091), (by simpa [Seg34.relationRow1092] using r1092), (by simpa [Seg34.relationRow1093] using r1093), (by simpa [Seg34.relationRow1094] using r1094), (by simpa [Seg34.relationRow1095] using r1095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg10
    refine ⟨rho 32540, rho 32541, rho 32542, rho 32543, rho 32544, (by simpa [Seg34.relationRow1096] using r1096), (by simpa [Seg34.relationRow1097] using r1097), (by simpa [Seg34.relationRow1098] using r1098), (by simpa [Seg34.relationRow1099] using r1099), (by simpa [Seg34.relationRow1100] using r1100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg11
    refine ⟨rho 32545, rho 32546, rho 32547, rho 32548, rho 32549, (by simpa [Seg34.relationRow1101] using r1101), (by simpa [Seg34.relationRow1102] using r1102), (by simpa [Seg34.relationRow1103] using r1103), (by simpa [Seg34.relationRow1104] using r1104), (by simpa [Seg34.relationRow1105] using r1105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg12
    refine ⟨rho 32550, rho 32551, rho 32552, rho 32553, rho 32554, (by simpa [Seg34.relationRow1106] using r1106), (by simpa [Seg34.relationRow1107] using r1107), (by simpa [Seg34.relationRow1108] using r1108), (by simpa [Seg34.relationRow1109] using r1109), (by simpa [Seg34.relationRow1110] using r1110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg13
    refine ⟨rho 32555, rho 32556, rho 32557, rho 32558, rho 32559, (by simpa [Seg34.relationRow1111] using r1111), (by simpa [Seg34.relationRow1112] using r1112), (by simpa [Seg34.relationRow1113] using r1113), (by simpa [Seg34.relationRow1114] using r1114), (by simpa [Seg34.relationRow1115] using r1115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg14
    refine ⟨rho 32560, rho 32561, rho 32562, rho 32563, rho 32564, (by simpa [Seg34.relationRow1116] using r1116), (by simpa [Seg34.relationRow1117] using r1117), (by simpa [Seg34.relationRow1118] using r1118), (by simpa [Seg34.relationRow1119] using r1119), (by simpa [Seg34.relationRow1120] using r1120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg15
    refine ⟨rho 32565, rho 32566, rho 32567, rho 32568, rho 32569, (by simpa [Seg34.relationRow1121] using r1121), (by simpa [Seg34.relationRow1122] using r1122), (by simpa [Seg34.relationRow1123] using r1123), (by simpa [Seg34.relationRow1124] using r1124), (by simpa [Seg34.relationRow1125] using r1125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg16
    refine ⟨rho 32570, rho 32571, rho 32572, rho 32573, rho 32574, (by simpa [Seg34.relationRow1126] using r1126), (by simpa [Seg34.relationRow1127] using r1127), (by simpa [Seg34.relationRow1128] using r1128), (by simpa [Seg34.relationRow1129] using r1129), (by simpa [Seg34.relationRow1130] using r1130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg17
    refine ⟨rho 32575, rho 32576, rho 32577, rho 32578, rho 32579, (by simpa [Seg34.relationRow1131] using r1131), (by simpa [Seg34.relationRow1132] using r1132), (by simpa [Seg34.relationRow1133] using r1133), (by simpa [Seg34.relationRow1134] using r1134), (by simpa [Seg34.relationRow1135] using r1135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg18
    refine ⟨rho 32580, rho 32581, rho 32582, rho 32583, rho 32584, (by simpa [Seg34.relationRow1136] using r1136), (by simpa [Seg34.relationRow1137] using r1137), (by simpa [Seg34.relationRow1138] using r1138), (by simpa [Seg34.relationRow1139] using r1139), (by simpa [Seg34.relationRow1140] using r1140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg19
    refine ⟨rho 32585, rho 32586, rho 32587, rho 32588, rho 32589, (by simpa [Seg34.relationRow1141] using r1141), (by simpa [Seg34.relationRow1142] using r1142), (by simpa [Seg34.relationRow1143] using r1143), (by simpa [Seg34.relationRow1144] using r1144), (by simpa [Seg34.relationRow1145] using r1145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg20
    refine ⟨rho 32590, rho 32591, rho 32592, rho 32593, rho 32594, (by simpa [Seg34.relationRow1146] using r1146), (by simpa [Seg34.relationRow1147] using r1147), (by simpa [Seg34.relationRow1148] using r1148), (by simpa [Seg34.relationRow1149] using r1149), (by simpa [Seg34.relationRow1150] using r1150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg21
    refine ⟨rho 32595, rho 32596, rho 32597, rho 32598, rho 32599, (by simpa [Seg34.relationRow1151] using r1151), (by simpa [Seg34.relationRow1152] using r1152), (by simpa [Seg34.relationRow1153] using r1153), (by simpa [Seg34.relationRow1154] using r1154), (by simpa [Seg34.relationRow1155] using r1155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg22
    refine ⟨rho 32600, rho 32601, rho 32602, rho 32603, rho 32604, (by simpa [Seg34.relationRow1156] using r1156), (by simpa [Seg34.relationRow1157] using r1157), (by simpa [Seg34.relationRow1158] using r1158), (by simpa [Seg34.relationRow1159] using r1159), (by simpa [Seg34.relationRow1160] using r1160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg23
    refine ⟨rho 32605, rho 32606, rho 32607, rho 32608, rho 32609, (by simpa [Seg34.relationRow1161] using r1161), (by simpa [Seg34.relationRow1162] using r1162), (by simpa [Seg34.relationRow1163] using r1163), (by simpa [Seg34.relationRow1164] using r1164), (by simpa [Seg34.relationRow1165] using r1165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg24
    refine ⟨rho 32610, rho 32611, rho 32612, rho 32613, rho 32614, (by simpa [Seg34.relationRow1166] using r1166), (by simpa [Seg34.relationRow1167] using r1167), (by simpa [Seg34.relationRow1168] using r1168), (by simpa [Seg34.relationRow1169] using r1169), (by simpa [Seg34.relationRow1170] using r1170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg25
    refine ⟨rho 32615, rho 32616, rho 32617, rho 32618, rho 32619, (by simpa [Seg34.relationRow1171] using r1171), (by simpa [Seg34.relationRow1172] using r1172), (by simpa [Seg34.relationRow1173] using r1173), (by simpa [Seg34.relationRow1174] using r1174), (by simpa [Seg34.relationRow1175] using r1175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg26
    refine ⟨rho 32620, rho 32621, rho 32622, rho 32623, rho 32624, (by simpa [Seg34.relationRow1176] using r1176), (by simpa [Seg34.relationRow1177] using r1177), (by simpa [Seg34.relationRow1178] using r1178), (by simpa [Seg34.relationRow1179] using r1179), (by simpa [Seg34.relationRow1180] using r1180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg27
    refine ⟨rho 32625, rho 32626, rho 32627, rho 32628, rho 32629, (by simpa [Seg34.relationRow1181] using r1181), (by simpa [Seg34.relationRow1182] using r1182), (by simpa [Seg34.relationRow1183] using r1183), (by simpa [Seg34.relationRow1184] using r1184), (by simpa [Seg34.relationRow1185] using r1185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg28
    refine ⟨rho 32630, rho 32631, rho 32632, rho 32633, rho 32634, (by simpa [Seg34.relationRow1186] using r1186), (by simpa [Seg34.relationRow1187] using r1187), (by simpa [Seg34.relationRow1188] using r1188), (by simpa [Seg34.relationRow1189] using r1189), (by simpa [Seg34.relationRow1190] using r1190), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg29
    refine ⟨rho 32635, rho 32636, rho 32637, rho 32638, rho 32639, (by simpa [Seg34.relationRow1191] using r1191), (by simpa [Seg34.relationRow1192] using r1192), (by simpa [Seg34.relationRow1193] using r1193), (by simpa [Seg34.relationRow1194] using r1194), (by simpa [Seg34.relationRow1195] using r1195), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg30
    refine ⟨rho 32640, rho 32641, rho 32642, rho 32643, rho 32644, (by simpa [Seg34.relationRow1196] using r1196), (by simpa [Seg34.relationRow1197] using r1197), (by simpa [Seg34.relationRow1198] using r1198), (by simpa [Seg34.relationRow1199] using r1199), (by simpa [Seg34.relationRow1200] using r1200), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg31
    refine ⟨rho 32645, rho 32646, rho 32647, rho 32648, rho 32649, (by simpa [Seg34.relationRow1201] using r1201), (by simpa [Seg34.relationRow1202] using r1202), (by simpa [Seg34.relationRow1203] using r1203), (by simpa [Seg34.relationRow1204] using r1204), (by simpa [Seg34.relationRow1205] using r1205), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg32
    refine ⟨rho 32650, rho 32651, rho 32652, rho 32653, rho 32654, (by simpa [Seg34.relationRow1206] using r1206), (by simpa [Seg34.relationRow1207] using r1207), (by simpa [Seg34.relationRow1208] using r1208), (by simpa [Seg34.relationRow1209] using r1209), (by simpa [Seg34.relationRow1210] using r1210), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg33
    refine ⟨rho 32655, rho 32656, rho 32657, rho 32658, rho 32659, (by simpa [Seg34.relationRow1211] using r1211), (by simpa [Seg34.relationRow1212] using r1212), (by simpa [Seg34.relationRow1213] using r1213), (by simpa [Seg34.relationRow1214] using r1214), (by simpa [Seg34.relationRow1215] using r1215), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg34
    refine ⟨rho 32660, rho 32661, rho 32662, rho 32663, rho 32664, (by simpa [Seg34.relationRow1216] using r1216), (by simpa [Seg34.relationRow1217] using r1217), (by simpa [Seg34.relationRow1218] using r1218), (by simpa [Seg34.relationRow1219] using r1219), (by simpa [Seg34.relationRow1220] using r1220), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg35
    refine ⟨rho 32665, rho 32666, rho 32667, rho 32668, rho 32669, (by simpa [Seg34.relationRow1221] using r1221), (by simpa [Seg34.relationRow1222] using r1222), (by simpa [Seg34.relationRow1223] using r1223), (by simpa [Seg34.relationRow1224] using r1224), (by simpa [Seg34.relationRow1225] using r1225), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg36
    refine ⟨rho 32670, rho 32671, rho 32672, rho 32673, rho 32674, (by simpa [Seg34.relationRow1226] using r1226), (by simpa [Seg34.relationRow1227] using r1227), (by simpa [Seg34.relationRow1228] using r1228), (by simpa [Seg34.relationRow1229] using r1229), (by simpa [Seg34.relationRow1230] using r1230), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg37
    refine ⟨rho 32675, rho 32676, rho 32677, rho 32678, rho 32679, (by simpa [Seg34.relationRow1231] using r1231), (by simpa [Seg34.relationRow1232] using r1232), (by simpa [Seg34.relationRow1233] using r1233), (by simpa [Seg34.relationRow1234] using r1234), (by simpa [Seg34.relationRow1235] using r1235), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg38
    refine ⟨rho 32680, rho 32681, rho 32682, rho 32683, rho 32684, (by simpa [Seg34.relationRow1236] using r1236), (by simpa [Seg34.relationRow1237] using r1237), (by simpa [Seg34.relationRow1238] using r1238), (by simpa [Seg34.relationRow1239] using r1239), (by simpa [Seg34.relationRow1240] using r1240), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg39
    refine ⟨rho 32685, rho 32686, rho 32687, rho 32688, rho 32689, (by simpa [Seg34.relationRow1241] using r1241), (by simpa [Seg34.relationRow1242] using r1242), (by simpa [Seg34.relationRow1243] using r1243), (by simpa [Seg34.relationRow1244] using r1244), (by simpa [Seg34.relationRow1245] using r1245), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg40
    refine ⟨rho 32690, rho 32691, rho 32692, rho 32693, rho 32694, (by unfold Seg34.relationRow1246 Seg34.relationLc2 Seg34.relationLc2Part0 Seg34.relationLc2Part1 Seg34.relationLc3 Seg34.relationLc3Part0 Seg34.relationLc3Part1 at r1246; linear_combination r1246), (by simpa [Seg34.relationRow1247] using r1247), (by simpa [Seg34.relationRow1248] using r1248), (by simpa [Seg34.relationRow1249] using r1249), (by unfold Seg34.relationRow1250 Seg34.relationLc4 Seg34.relationLc4Part0 Seg34.relationLc4Part1 at r1250; linear_combination r1250), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg41
    refine ⟨rho 32695, rho 32696, rho 32697, rho 32698, rho 32699, (by unfold Seg34.relationRow1251 Seg34.relationLc5 Seg34.relationLc5Part0 Seg34.relationLc5Part1 Seg34.relationLc6 Seg34.relationLc6Part0 Seg34.relationLc6Part1 at r1251; linear_combination r1251), (by simpa [Seg34.relationRow1252] using r1252), (by simpa [Seg34.relationRow1253] using r1253), (by simpa [Seg34.relationRow1254] using r1254), (by unfold Seg34.relationRow1255 Seg34.relationLc7 Seg34.relationLc7Part0 Seg34.relationLc7Part1 at r1255; linear_combination r1255), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg42
    refine ⟨rho 32700, rho 32701, rho 32702, rho 32703, rho 32704, (by unfold Seg34.relationRow1256 Seg34.relationLc8 Seg34.relationLc8Part0 Seg34.relationLc8Part1 Seg34.relationLc9 Seg34.relationLc9Part0 Seg34.relationLc9Part1 at r1256; linear_combination r1256), (by simpa [Seg34.relationRow1257] using r1257), (by simpa [Seg34.relationRow1258] using r1258), (by simpa [Seg34.relationRow1259] using r1259), (by unfold Seg34.relationRow1260 Seg34.relationLc10 Seg34.relationLc10Part0 Seg34.relationLc10Part1 at r1260; linear_combination r1260), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg43
    refine ⟨rho 32705, rho 32706, rho 32707, rho 32708, rho 32709, (by unfold Seg34.relationRow1261 Seg34.relationLc11 Seg34.relationLc11Part0 Seg34.relationLc11Part1 Seg34.relationLc12 Seg34.relationLc12Part0 Seg34.relationLc12Part1 at r1261; linear_combination r1261), (by simpa [Seg34.relationRow1262] using r1262), (by simpa [Seg34.relationRow1263] using r1263), (by simpa [Seg34.relationRow1264] using r1264), (by unfold Seg34.relationRow1265 Seg34.relationLc13 Seg34.relationLc13Part0 Seg34.relationLc13Part1 at r1265; linear_combination r1265), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg44
    refine ⟨rho 32710, rho 32711, rho 32712, rho 32713, rho 32714, (by unfold Seg34.relationRow1266 Seg34.relationLc14 Seg34.relationLc14Part0 Seg34.relationLc14Part1 Seg34.relationLc15 Seg34.relationLc15Part0 Seg34.relationLc15Part1 at r1266; linear_combination r1266), (by simpa [Seg34.relationRow1267] using r1267), (by simpa [Seg34.relationRow1268] using r1268), (by simpa [Seg34.relationRow1269] using r1269), (by unfold Seg34.relationRow1270 Seg34.relationLc16 Seg34.relationLc16Part0 Seg34.relationLc16Part1 at r1270; linear_combination r1270), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg45
    refine ⟨rho 32715, rho 32716, rho 32717, rho 32718, rho 32719, (by simpa [Seg34.relationRow1271] using r1271), (by simpa [Seg34.relationRow1272] using r1272), (by simpa [Seg34.relationRow1273] using r1273), (by simpa [Seg34.relationRow1274] using r1274), (by simpa [Seg34.relationRow1275] using r1275), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg46
    refine ⟨rho 32720, rho 32721, rho 32722, rho 32723, rho 32724, (by simpa [Seg34.relationRow1276] using r1276), (by simpa [Seg34.relationRow1277] using r1277), (by simpa [Seg34.relationRow1278] using r1278), (by simpa [Seg34.relationRow1279] using r1279), (by simpa [Seg34.relationRow1280] using r1280), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg47
    refine ⟨rho 32725, rho 32726, rho 32727, rho 32728, rho 32729, (by simpa [Seg34.relationRow1281] using r1281), (by simpa [Seg34.relationRow1282] using r1282), (by simpa [Seg34.relationRow1283] using r1283), (by simpa [Seg34.relationRow1284] using r1284), (by simpa [Seg34.relationRow1285] using r1285), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg48
    refine ⟨rho 32730, rho 32731, rho 32732, rho 32733, rho 32734, (by simpa [Seg34.relationRow1286] using r1286), (by simpa [Seg34.relationRow1287] using r1287), (by simpa [Seg34.relationRow1288] using r1288), (by simpa [Seg34.relationRow1289] using r1289), (by simpa [Seg34.relationRow1290] using r1290), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg49
    refine ⟨rho 32735, rho 32736, rho 32737, rho 32738, rho 32739, (by simpa [Seg34.relationRow1291] using r1291), (by simpa [Seg34.relationRow1292] using r1292), (by simpa [Seg34.relationRow1293] using r1293), (by simpa [Seg34.relationRow1294] using r1294), (by simpa [Seg34.relationRow1295] using r1295), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg50
    refine ⟨rho 32740, rho 32741, rho 32742, rho 32743, rho 32744, (by simpa [Seg34.relationRow1296] using r1296), (by simpa [Seg34.relationRow1297] using r1297), (by simpa [Seg34.relationRow1298] using r1298), (by simpa [Seg34.relationRow1299] using r1299), (by simpa [Seg34.relationRow1300] using r1300), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg51
    refine ⟨rho 32745, rho 32746, rho 32747, rho 32748, rho 32749, (by simpa [Seg34.relationRow1301] using r1301), (by simpa [Seg34.relationRow1302] using r1302), (by simpa [Seg34.relationRow1303] using r1303), (by simpa [Seg34.relationRow1304] using r1304), (by simpa [Seg34.relationRow1305] using r1305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg52
    refine ⟨rho 32750, rho 32751, rho 32752, rho 32753, rho 32754, (by simpa [Seg34.relationRow1306] using r1306), (by simpa [Seg34.relationRow1307] using r1307), (by simpa [Seg34.relationRow1308] using r1308), (by simpa [Seg34.relationRow1309] using r1309), (by simpa [Seg34.relationRow1310] using r1310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_e8acc1.seg53
    refine ⟨rho 32755, rho 32756, rho 32757, rho 32758, rho 32759, (by simpa [Seg34.relationRow1311] using r1311), (by simpa [Seg34.relationRow1312] using r1312), (by simpa [Seg34.relationRow1313] using r1313), (by simpa [Seg34.relationRow1314] using r1314), (by simpa [Seg34.relationRow1315] using r1315), ?_⟩
    exact ⟨rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.relation_sound_permSpec (rho 8) (rho 32149) (rho 32489) _ hrel
  rcases hs with ⟨x, y, z, ⟨rfl, rfl, rfl⟩, hs⟩
  unfold Seg34.relationRow1316 at r1316
  unfold Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.s38_1 Shieldd.GnarkFormal.Deployed.Poseidon2Link.row3 Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.ivkDomainLit at hs
  linear_combination -r1316 + hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
