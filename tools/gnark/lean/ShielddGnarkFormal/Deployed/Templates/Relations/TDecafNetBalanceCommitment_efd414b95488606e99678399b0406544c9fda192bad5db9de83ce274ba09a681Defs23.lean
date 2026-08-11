import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs22

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc7Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 1087 + (158456325028528675187087900672 : F) * rho 1088 + (316912650057057350374175801344 : F) * rho 1089 + (633825300114114700748351602688 : F) * rho 1090 + (1267650600228229401496703205376 : F) * rho 1091 + (2535301200456458802993406410752 : F) * rho 1092 + (5070602400912917605986812821504 : F) * rho 1093 + (10141204801825835211973625643008 : F) * rho 1094 + (20282409603651670423947251286016 : F) * rho 1095 + (40564819207303340847894502572032 : F) * rho 1096 + (81129638414606681695789005144064 : F) * rho 1097 + (162259276829213363391578010288128 : F) * rho 1098 + (324518553658426726783156020576256 : F) * rho 1099 + (649037107316853453566312041152512 : F) * rho 1100 + (1298074214633706907132624082305024 : F) * rho 1101 + (2596148429267413814265248164610048 : F) * rho 1102 + (5192296858534827628530496329220096 : F) * rho 1103 + (10384593717069655257060992658440192 : F) * rho 1104 + (20769187434139310514121985316880384 : F) * rho 1105 + (41538374868278621028243970633760768 : F) * rho 1106 + (83076749736557242056487941267521536 : F) * rho 1107 + (166153499473114484112975882535043072 : F) * rho 1108 + (332306998946228968225951765070086144 : F) * rho 1109 + (664613997892457936451903530140172288 : F) * rho 1110 + (1329227995784915872903807060280344576 : F) * rho 1111 + (2658455991569831745807614120560689152 : F) * rho 1112 + (5316911983139663491615228241121378304 : F) * rho 1113 + (10633823966279326983230456482242756608 : F) * rho 1114 + (21267647932558653966460912964485513216 : F) * rho 1115 + (42535295865117307932921825928971026432 : F) * rho 1116 + (85070591730234615865843651857942052864 : F) * rho 1117 + (170141183460469231731687303715884105728 : F) * rho 1118

def relationLc7 (rho : Nat -> F) : F :=
    relationLc7Part0 rho +
    relationLc7Part1 rho +
    relationLc7Part2 rho +
    relationLc7Part3 rho

def relationRow1291 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc7 rho) = ((1 : F) * rho 1119)

def relationRow1292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1120) * ((1 : F) + (-1 : F) * rho 1120) = ((0 : F))

def relationRow1293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1121) * ((1 : F) + (-1 : F) * rho 1121) = ((0 : F))

def relationRow1294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1122) * ((1 : F) + (-1 : F) * rho 1122) = ((0 : F))

def relationRow1295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1123) * ((1 : F) + (-1 : F) * rho 1123) = ((0 : F))

def relationRow1296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1124) * ((1 : F) + (-1 : F) * rho 1124) = ((0 : F))

def relationRow1297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1125) * ((1 : F) + (-1 : F) * rho 1125) = ((0 : F))

def relationRow1298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1126) * ((1 : F) + (-1 : F) * rho 1126) = ((0 : F))

def relationRow1299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1127) * ((1 : F) + (-1 : F) * rho 1127) = ((0 : F))

def relationRow1300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1128) * ((1 : F) + (-1 : F) * rho 1128) = ((0 : F))

def relationRow1301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1129) * ((1 : F) + (-1 : F) * rho 1129) = ((0 : F))

def relationRow1302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1130) * ((1 : F) + (-1 : F) * rho 1130) = ((0 : F))

def relationRow1303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1131) * ((1 : F) + (-1 : F) * rho 1131) = ((0 : F))

def relationRow1304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1132) * ((1 : F) + (-1 : F) * rho 1132) = ((0 : F))

def relationRow1305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1133) * ((1 : F) + (-1 : F) * rho 1133) = ((0 : F))

def relationRow1306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1134) * ((1 : F) + (-1 : F) * rho 1134) = ((0 : F))

def relationRow1307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1135) * ((1 : F) + (-1 : F) * rho 1135) = ((0 : F))

def relationRow1308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1136) * ((1 : F) + (-1 : F) * rho 1136) = ((0 : F))

def relationRow1309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1137) * ((1 : F) + (-1 : F) * rho 1137) = ((0 : F))

def relationRow1310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1138) * ((1 : F) + (-1 : F) * rho 1138) = ((0 : F))

def relationRow1311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * ((1 : F) + (-1 : F) * rho 1139) = ((0 : F))

def relationRow1312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * ((1 : F) + (-1 : F) * rho 1140) = ((0 : F))

def relationRow1313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1141) * ((1 : F) + (-1 : F) * rho 1141) = ((0 : F))

def relationRow1314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1142) * ((1 : F) + (-1 : F) * rho 1142) = ((0 : F))

def relationRow1315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1143) * ((1 : F) + (-1 : F) * rho 1143) = ((0 : F))

def relationRow1316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1144) * ((1 : F) + (-1 : F) * rho 1144) = ((0 : F))

def relationRow1317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((1 : F) + (-1 : F) * rho 1145) = ((0 : F))

def relationRow1318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * ((1 : F) + (-1 : F) * rho 1146) = ((0 : F))

def relationRow1319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * ((1 : F) + (-1 : F) * rho 1147) = ((0 : F))

def relationRow1320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1148) * ((1 : F) + (-1 : F) * rho 1148) = ((0 : F))

def relationRow1321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1149) * ((1 : F) + (-1 : F) * rho 1149) = ((0 : F))

def relationRow1322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1150) * ((1 : F) + (-1 : F) * rho 1150) = ((0 : F))

def relationRow1323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1151) * ((1 : F) + (-1 : F) * rho 1151) = ((0 : F))

def relationRow1324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1152) * ((1 : F) + (-1 : F) * rho 1152) = ((0 : F))

def relationRow1325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1153) * ((1 : F) + (-1 : F) * rho 1153) = ((0 : F))

def relationRow1326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1154) * ((1 : F) + (-1 : F) * rho 1154) = ((0 : F))

def relationRow1327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1155) * ((1 : F) + (-1 : F) * rho 1155) = ((0 : F))

def relationRow1328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1156) * ((1 : F) + (-1 : F) * rho 1156) = ((0 : F))

def relationRow1329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1157) * ((1 : F) + (-1 : F) * rho 1157) = ((0 : F))

def relationRow1330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1158) * ((1 : F) + (-1 : F) * rho 1158) = ((0 : F))

def relationRow1331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1159) * ((1 : F) + (-1 : F) * rho 1159) = ((0 : F))

def relationRow1332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1160) * ((1 : F) + (-1 : F) * rho 1160) = ((0 : F))

def relationRow1333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1161) * ((1 : F) + (-1 : F) * rho 1161) = ((0 : F))

def relationRow1334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1162) * ((1 : F) + (-1 : F) * rho 1162) = ((0 : F))

def relationRow1335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1163) * ((1 : F) + (-1 : F) * rho 1163) = ((0 : F))

def relationRow1336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1164) * ((1 : F) + (-1 : F) * rho 1164) = ((0 : F))

def relationRow1337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1165) * ((1 : F) + (-1 : F) * rho 1165) = ((0 : F))

def relationRow1338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1166) * ((1 : F) + (-1 : F) * rho 1166) = ((0 : F))

def relationRow1339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1167) * ((1 : F) + (-1 : F) * rho 1167) = ((0 : F))

def relationRow1340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1168) * ((1 : F) + (-1 : F) * rho 1168) = ((0 : F))

def relationRow1341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1169) * ((1 : F) + (-1 : F) * rho 1169) = ((0 : F))

def relationRow1342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1170) * ((1 : F) + (-1 : F) * rho 1170) = ((0 : F))

def relationRow1343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * ((1 : F) + (-1 : F) * rho 1171) = ((0 : F))

def relationRow1344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1172) * ((1 : F) + (-1 : F) * rho 1172) = ((0 : F))

def relationRow1345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1173) * ((1 : F) + (-1 : F) * rho 1173) = ((0 : F))

def relationRow1346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1174) * ((1 : F) + (-1 : F) * rho 1174) = ((0 : F))

def relationRow1347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1175) * ((1 : F) + (-1 : F) * rho 1175) = ((0 : F))

def relationRow1348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1176) * ((1 : F) + (-1 : F) * rho 1176) = ((0 : F))

def relationRow1349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1177) * ((1 : F) + (-1 : F) * rho 1177) = ((0 : F))

def relationRow1350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1178) * ((1 : F) + (-1 : F) * rho 1178) = ((0 : F))

def relationRow1351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1179) * ((1 : F) + (-1 : F) * rho 1179) = ((0 : F))

def relationRow1352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1180) * ((1 : F) + (-1 : F) * rho 1180) = ((0 : F))

def relationRow1353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * ((1 : F) + (-1 : F) * rho 1181) = ((0 : F))

def relationRow1354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * ((1 : F) + (-1 : F) * rho 1182) = ((0 : F))

def relationRow1355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1183) * ((1 : F) + (-1 : F) * rho 1183) = ((0 : F))

def relationRow1356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * ((1 : F) + (-1 : F) * rho 1184) = ((0 : F))

def relationRow1357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * ((1 : F) + (-1 : F) * rho 1185) = ((0 : F))

def relationRow1358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * ((1 : F) + (-1 : F) * rho 1186) = ((0 : F))

def relationRow1359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * ((1 : F) + (-1 : F) * rho 1187) = ((0 : F))

def relationRow1360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1188) * ((1 : F) + (-1 : F) * rho 1188) = ((0 : F))

def relationRow1361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * ((1 : F) + (-1 : F) * rho 1189) = ((0 : F))

def relationRow1362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * ((1 : F) + (-1 : F) * rho 1190) = ((0 : F))

def relationRow1363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((1 : F) + (-1 : F) * rho 1191) = ((0 : F))

def relationRow1364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * ((1 : F) + (-1 : F) * rho 1192) = ((0 : F))

def relationRow1365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * ((1 : F) + (-1 : F) * rho 1193) = ((0 : F))

def relationRow1366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * ((1 : F) + (-1 : F) * rho 1194) = ((0 : F))

def relationRow1367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((1 : F) + (-1 : F) * rho 1195) = ((0 : F))

def relationRow1368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * ((1 : F) + (-1 : F) * rho 1196) = ((0 : F))

def relationRow1369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * ((1 : F) + (-1 : F) * rho 1197) = ((0 : F))

def relationRow1370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * ((1 : F) + (-1 : F) * rho 1198) = ((0 : F))

def relationRow1371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * ((1 : F) + (-1 : F) * rho 1199) = ((0 : F))

def relationRow1372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * ((1 : F) + (-1 : F) * rho 1200) = ((0 : F))

def relationRow1373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((1 : F) + (-1 : F) * rho 1201) = ((0 : F))

def relationRow1374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * ((1 : F) + (-1 : F) * rho 1202) = ((0 : F))

def relationRow1375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * ((1 : F) + (-1 : F) * rho 1203) = ((0 : F))

def relationRow1376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * ((1 : F) + (-1 : F) * rho 1204) = ((0 : F))

def relationRow1377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((1 : F) + (-1 : F) * rho 1205) = ((0 : F))

def relationRow1378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * ((1 : F) + (-1 : F) * rho 1206) = ((0 : F))

def relationRow1379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * ((1 : F) + (-1 : F) * rho 1207) = ((0 : F))

def relationRow1380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * ((1 : F) + (-1 : F) * rho 1208) = ((0 : F))

def relationRow1381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((1 : F) + (-1 : F) * rho 1209) = ((0 : F))

def relationRow1382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * ((1 : F) + (-1 : F) * rho 1210) = ((0 : F))

def relationRow1383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * ((1 : F) + (-1 : F) * rho 1211) = ((0 : F))

def relationRow1384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1212) * ((1 : F) + (-1 : F) * rho 1212) = ((0 : F))

def relationRow1385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1213) * ((1 : F) + (-1 : F) * rho 1213) = ((0 : F))

def relationRow1386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * ((1 : F) + (-1 : F) * rho 1214) = ((0 : F))

def relationRow1387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * ((1 : F) + (-1 : F) * rho 1215) = ((0 : F))

def relationRow1388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * ((1 : F) + (-1 : F) * rho 1216) = ((0 : F))

def relationRow1389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1217) * ((1 : F) + (-1 : F) * rho 1217) = ((0 : F))

def relationRow1390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1218) * ((1 : F) + (-1 : F) * rho 1218) = ((0 : F))

def relationRow1391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * ((1 : F) + (-1 : F) * rho 1219) = ((0 : F))

def relationRow1392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * ((1 : F) + (-1 : F) * rho 1220) = ((0 : F))

def relationRow1393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * ((1 : F) + (-1 : F) * rho 1221) = ((0 : F))

def relationRow1394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1222) * ((1 : F) + (-1 : F) * rho 1222) = ((0 : F))

def relationRow1395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1223) * ((1 : F) + (-1 : F) * rho 1223) = ((0 : F))

def relationRow1396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1224) * ((1 : F) + (-1 : F) * rho 1224) = ((0 : F))

def relationRow1397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * ((1 : F) + (-1 : F) * rho 1225) = ((0 : F))

def relationRow1398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1226) * ((1 : F) + (-1 : F) * rho 1226) = ((0 : F))

def relationRow1399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1227) * ((1 : F) + (-1 : F) * rho 1227) = ((0 : F))

def relationRow1400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1228) * ((1 : F) + (-1 : F) * rho 1228) = ((0 : F))

def relationRow1401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * ((1 : F) + (-1 : F) * rho 1229) = ((0 : F))

def relationRow1402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * ((1 : F) + (-1 : F) * rho 1230) = ((0 : F))

def relationRow1403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * ((1 : F) + (-1 : F) * rho 1231) = ((0 : F))

def relationRow1404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1232) * ((1 : F) + (-1 : F) * rho 1232) = ((0 : F))

def relationRow1405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * ((1 : F) + (-1 : F) * rho 1233) = ((0 : F))

def relationRow1406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1234) * ((1 : F) + (-1 : F) * rho 1234) = ((0 : F))

def relationRow1407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * ((1 : F) + (-1 : F) * rho 1235) = ((0 : F))

def relationRow1408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1236) * ((1 : F) + (-1 : F) * rho 1236) = ((0 : F))

def relationRow1409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1237) * ((1 : F) + (-1 : F) * rho 1237) = ((0 : F))

def relationRow1410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1238) * ((1 : F) + (-1 : F) * rho 1238) = ((0 : F))

def relationRow1411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1239) * ((1 : F) + (-1 : F) * rho 1239) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
