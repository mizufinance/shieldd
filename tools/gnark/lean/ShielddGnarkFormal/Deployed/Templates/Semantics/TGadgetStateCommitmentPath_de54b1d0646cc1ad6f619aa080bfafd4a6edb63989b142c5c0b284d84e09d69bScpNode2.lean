import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode2Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode2.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    seg33ScpNode2Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (3 : F))
        (rho 1016 + rho 1017) (rho 1018 + rho 1019 + rho 1020)
        (rho 1018 + rho 1022 + rho 1023) (rho 1021 + rho 1024) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart13 at p13
  rcases p13 with ⟨r1040, r1041, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.relation (rho 1016) (rho 1018) (rho 1021) (rho 1017) (rho 1019) (rho 1020) (rho 1022) (rho 1023) (rho 1024)
      (fun o0 o1 o2 o3 o4 => o0 = rho 1354 ∧ o1 = rho 1359 ∧ o2 = rho 1364 ∧ o3 = rho 1369 ∧ o4 = rho 1374) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.relation
    exact template_scp_node2_seg0 rho _ r1021 r1022 r1023 r1024 r1025 (template_scp_node2_seg1 rho _ r1026 r1027 r1028 r1029 r1030 (template_scp_node2_seg2 rho _ r1031 r1032 r1033 r1034 r1035 (template_scp_node2_seg3 rho _ r1036 r1037 r1038 r1039 r1040 (template_scp_node2_seg4 rho _ r1041 r1042 r1043 r1044 r1045 (template_scp_node2_seg5 rho _ r1046 r1047 r1048 r1049 r1050 (template_scp_node2_seg6 rho _ r1051 r1052 r1053 r1054 r1055 (template_scp_node2_seg7 rho _ r1056 r1057 r1058 r1059 r1060 (template_scp_node2_seg8 rho _ r1061 r1062 r1063 r1064 r1065 (template_scp_node2_seg9 rho _ r1066 r1067 r1068 r1069 r1070 (template_scp_node2_seg10 rho _ r1071 r1072 r1073 r1074 r1075 (template_scp_node2_seg11 rho _ r1076 r1077 r1078 r1079 r1080 (template_scp_node2_seg12 rho _ r1081 r1082 r1083 r1084 r1085 (template_scp_node2_seg13 rho _ r1086 r1087 r1088 r1089 r1090 (template_scp_node2_seg14 rho _ r1091 r1092 r1093 r1094 r1095 (template_scp_node2_seg15 rho _ r1096 r1097 r1098 r1099 r1100 (template_scp_node2_seg16 rho _ r1101 r1102 r1103 r1104 r1105 (template_scp_node2_seg17 rho _ r1106 r1107 r1108 r1109 r1110 (template_scp_node2_seg18 rho _ r1111 r1112 r1113 r1114 r1115 (template_scp_node2_seg19 rho _ r1116 r1117 r1118 r1119 r1120 (template_scp_node2_seg20 rho _ r1121 r1122 r1123 r1124 r1125 (template_scp_node2_seg21 rho _ r1126 r1127 r1128 r1129 r1130 (template_scp_node2_seg22 rho _ r1131 r1132 r1133 r1134 r1135 (template_scp_node2_seg23 rho _ r1136 r1137 r1138 r1139 r1140 (template_scp_node2_seg24 rho _ r1141 r1142 r1143 r1144 r1145 (template_scp_node2_seg25 rho _ r1146 r1147 r1148 r1149 r1150 (template_scp_node2_seg26 rho _ r1151 r1152 r1153 r1154 r1155 (template_scp_node2_seg27 rho _ r1156 r1157 r1158 r1159 r1160 (template_scp_node2_seg28 rho _ r1161 r1162 r1163 r1164 r1165 (template_scp_node2_seg29 rho _ r1166 r1167 r1168 r1169 r1170 (template_scp_node2_seg30 rho _ r1171 r1172 r1173 r1174 r1175 (template_scp_node2_seg31 rho _ r1176 r1177 r1178 r1179 r1180 (template_scp_node2_seg32 rho _ r1181 r1182 r1183 r1184 r1185 (template_scp_node2_template rho _ r1186 r1187 r1188 r1189 r1190 (template_scp_node2_seg34 rho _ r1191 r1192 r1193 r1194 r1195 (template_scp_node2_seg35 rho _ r1196 r1197 r1198 r1199 r1200 (template_scp_node2_seg36 rho _ r1201 r1202 r1203 r1204 r1205 (template_scp_node2_seg37 rho _ r1206 r1207 r1208 r1209 r1210 (template_scp_node2_seg38 rho _ r1211 r1212 r1213 r1214 r1215 (template_scp_node2_seg39 rho _ r1216 r1217 r1218 r1219 r1220 (template_scp_node2_seg40 rho _ r1221 r1222 r1223 r1224 r1225 (template_scp_node2_seg41 rho _ r1226 r1227 r1228 r1229 r1230 (template_scp_node2_seg42 rho _ r1231 r1232 r1233 r1234 r1235 (template_scp_node2_seg43 rho _ r1236 r1237 r1238 r1239 r1240 (template_scp_node2_seg44 rho _ r1241 r1242 r1243 r1244 r1245 (template_scp_node2_seg45 rho _ r1246 r1247 r1248 r1249 r1250 (template_scp_node2_seg46 rho _ r1251 r1252 r1253 r1254 r1255 (template_scp_node2_seg47 rho _ r1256 r1257 r1258 r1259 r1260 (template_scp_node2_seg48 rho _ r1261 r1262 r1263 r1264 r1265 (template_scp_node2_seg49 rho _ r1266 r1267 r1268 r1269 r1270 (template_scp_node2_seg50 rho _ r1271 r1272 r1273 r1274 r1275 (template_scp_node2_seg51 rho _ r1276 r1277 r1278 r1279 r1280 (template_scp_node2_seg52 rho _ r1281 r1282 r1283 r1284 r1285 (template_scp_node2_seg53 rho _ r1286 r1287 r1288 r1289 r1290 (template_scp_node2_seg54 rho _ r1291 r1292 r1293 r1294 r1295 (template_scp_node2_seg55 rho _ r1296 r1297 r1298 r1299 r1300 (template_scp_node2_seg56 rho _ r1301 r1302 r1303 r1304 r1305 (template_scp_node2_seg57 rho _ r1306 r1307 r1308 r1309 r1310 (template_scp_node2_seg58 rho _ r1311 r1312 r1313 r1314 r1315 (template_scp_node2_seg59 rho _ r1316 r1317 r1318 r1319 r1320 (template_scp_node2_seg60 rho _ r1321 r1322 r1323 r1324 r1325 (template_scp_node2_seg61 rho _ r1326 r1327 r1328 r1329 r1330 (template_scp_node2_seg62 rho _ r1331 r1332 r1333 r1334 r1335 (template_scp_node2_seg63 rho _ r1336 r1337 r1338 r1339 r1340 (template_scp_node2_seg64 rho _ r1341 r1342 r1343 r1344 r1345 (template_scp_node2_seg65 rho _ r1346 r1347 r1348 r1349 r1350 (template_scp_node2_seg66 rho _ r1351 r1352 r1353 r1354 r1355 (template_scp_node2_seg67 rho _ r1356 r1357 r1358 r1359 r1360 (template_scp_node2_seg68 rho _ r1361 r1362 r1363 r1364 r1365 (template_scp_node2_seg69 rho _ r1366 r1367 r1368 r1369 r1370 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.relation_sound_permSpec (rho 1016) (rho 1018) (rho 1021) (rho 1017) (rho 1019) (rho 1020) (rho 1022) (rho 1023) (rho 1024) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.tctNode3DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) + (3 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg33ScpNode2Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode2.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
