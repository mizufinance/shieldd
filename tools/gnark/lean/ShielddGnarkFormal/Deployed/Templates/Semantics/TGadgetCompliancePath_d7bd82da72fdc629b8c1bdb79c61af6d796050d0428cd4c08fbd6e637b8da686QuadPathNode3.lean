import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathNode3Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node3_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation rho) :
    nodeOut3 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 1134 + rho 1135) (rho 1136 + rho 1137 + rho 1138) (rho 1136 + rho 1140 + rho 1141) (rho 1139 + rho 1142) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p14, p15,
    p16, p17, p18, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart14 at p14
  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379, r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 1134 + rho 1135) (rho 1136 + rho 1137 + rho 1138) (rho 1136 + rho 1140 + rho 1141) (rho 1139 + rho 1142)
      (fun w334 w339 w344 w349 w354 => w334 = rho 1472 ∧ w339 = rho 1477 ∧ w344 = rho 1482 ∧ w349 = rho 1487 ∧ w354 = rho 1492) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node3_seg0 rho _ r1139 r1140 r1141 r1142 r1143 (node3_seg1 rho _ r1144 r1145 r1146 r1147 r1148 (node3_seg2 rho _ r1149 r1150 r1151 r1152 r1153 (node3_seg3 rho _ r1154 r1155 r1156 r1157 r1158 (node3_seg4 rho _ r1159 r1160 r1161 r1162 r1163 (node3_seg5 rho _ r1164 r1165 r1166 r1167 r1168 (node3_seg6 rho _ r1169 r1170 r1171 r1172 r1173 (node3_seg7 rho _ r1174 r1175 r1176 r1177 r1178 (node3_seg8 rho _ r1179 r1180 r1181 r1182 r1183 (node3_seg9 rho _ r1184 r1185 r1186 r1187 r1188 (node3_seg10 rho _ r1189 r1190 r1191 r1192 r1193 (node3_seg11 rho _ r1194 r1195 r1196 r1197 r1198 (node3_seg12 rho _ r1199 r1200 r1201 r1202 r1203 (node3_seg13 rho _ r1204 r1205 r1206 r1207 r1208 (node3_seg14 rho _ r1209 r1210 r1211 r1212 r1213 (node3_seg15 rho _ r1214 r1215 r1216 r1217 r1218 (node3_seg16 rho _ r1219 r1220 r1221 r1222 r1223 (node3_seg17 rho _ r1224 r1225 r1226 r1227 r1228 (node3_seg18 rho _ r1229 r1230 r1231 r1232 r1233 (node3_seg19 rho _ r1234 r1235 r1236 r1237 r1238 (node3_seg20 rho _ r1239 r1240 r1241 r1242 r1243 (node3_seg21 rho _ r1244 r1245 r1246 r1247 r1248 (node3_seg22 rho _ r1249 r1250 r1251 r1252 r1253 (node3_seg23 rho _ r1254 r1255 r1256 r1257 r1258 (node3_seg24 rho _ r1259 r1260 r1261 r1262 r1263 (node3_seg25 rho _ r1264 r1265 r1266 r1267 r1268 (node3_seg26 rho _ r1269 r1270 r1271 r1272 r1273 (node3_seg27 rho _ r1274 r1275 r1276 r1277 r1278 (node3_seg28 rho _ r1279 r1280 r1281 r1282 r1283 (node3_seg29 rho _ r1284 r1285 r1286 r1287 r1288 (node3_seg30 rho _ r1289 r1290 r1291 r1292 r1293 (node3_seg31 rho _ r1294 r1295 r1296 r1297 r1298 (node3_seg32 rho _ r1299 r1300 r1301 r1302 r1303 (node3_seg33 rho _ r1304 r1305 r1306 r1307 r1308 (node3_seg34 rho _ r1309 r1310 r1311 r1312 r1313 (node3_seg35 rho _ r1314 r1315 r1316 r1317 r1318 (node3_seg36 rho _ r1319 r1320 r1321 r1322 r1323 (node3_seg37 rho _ r1324 r1325 r1326 r1327 r1328 (node3_seg38 rho _ r1329 r1330 r1331 r1332 r1333 (node3_seg39 rho _ r1334 r1335 r1336 r1337 r1338 (node3_seg40 rho _ r1339 r1340 r1341 r1342 r1343 (node3_seg41 rho _ r1344 r1345 r1346 r1347 r1348 (node3_seg42 rho _ r1349 r1350 r1351 r1352 r1353 (node3_seg43 rho _ r1354 r1355 r1356 r1357 r1358 (node3_seg44 rho _ r1359 r1360 r1361 r1362 r1363 (node3_seg45 rho _ r1364 r1365 r1366 r1367 r1368 (node3_seg46 rho _ r1369 r1370 r1371 r1372 r1373 (node3_seg47 rho _ r1374 r1375 r1376 r1377 r1378 (node3_seg48 rho _ r1379 r1380 r1381 r1382 r1383 (node3_seg49 rho _ r1384 r1385 r1386 r1387 r1388 (node3_seg50 rho _ r1389 r1390 r1391 r1392 r1393 (node3_seg51 rho _ r1394 r1395 r1396 r1397 r1398 (node3_seg52 rho _ r1399 r1400 r1401 r1402 r1403 (node3_seg53 rho _ r1404 r1405 r1406 r1407 r1408 (node3_seg54 rho _ r1409 r1410 r1411 r1412 r1413 (node3_seg55 rho _ r1414 r1415 r1416 r1417 r1418 (node3_seg56 rho _ r1419 r1420 r1421 r1422 r1423 (node3_seg57 rho _ r1424 r1425 r1426 r1427 r1428 (node3_seg58 rho _ r1429 r1430 r1431 r1432 r1433 (node3_seg59 rho _ r1434 r1435 r1436 r1437 r1438 (node3_seg60 rho _ r1439 r1440 r1441 r1442 r1443 (node3_seg61 rho _ r1444 r1445 r1446 r1447 r1448 (node3_seg62 rho _ r1449 r1450 r1451 r1452 r1453 (node3_seg63 rho _ r1454 r1455 r1456 r1457 r1458 (node3_seg64 rho _ r1459 r1460 r1461 r1462 r1463 (node3_seg65 rho _ r1464 r1465 r1466 r1467 r1468 (node3_seg66 rho _ r1469 r1470 r1471 r1472 r1473 (node3_seg67 rho _ r1474 r1475 r1476 r1477 r1478 (node3_seg68 rho _ r1479 r1480 r1481 r1482 r1483 (node3_seg69 rho _ r1484 r1485 r1486 r1487 r1488 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 1134 + rho 1135) (rho 1136 + rho 1137 + rho 1138) (rho 1136 + rho 1140 + rho 1141) (rho 1139 + rho 1142) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut3, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
