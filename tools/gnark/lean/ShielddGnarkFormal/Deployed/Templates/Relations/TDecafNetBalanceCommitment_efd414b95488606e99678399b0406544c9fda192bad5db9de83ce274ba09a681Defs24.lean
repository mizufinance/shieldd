import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs23

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow1412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1240) * ((1 : F) + (-1 : F) * rho 1240) = ((0 : F))

def relationRow1413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1241) * ((1 : F) + (-1 : F) * rho 1241) = ((0 : F))

def relationRow1414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1242) * ((1 : F) + (-1 : F) * rho 1242) = ((0 : F))

def relationRow1415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * ((1 : F) + (-1 : F) * rho 1243) = ((0 : F))

def relationRow1416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * ((1 : F) + (-1 : F) * rho 1244) = ((0 : F))

def relationRow1417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((1 : F) + (-1 : F) * rho 1245) = ((0 : F))

def relationRow1418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * ((1 : F) + (-1 : F) * rho 1246) = ((0 : F))

def relationRow1419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * ((1 : F) + (-1 : F) * rho 1247) = ((0 : F))

def relationRow1420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1248) * ((1 : F) + (-1 : F) * rho 1248) = ((0 : F))

def relationLc8Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1120 + (2 : F) * rho 1121 + (4 : F) * rho 1122 + (8 : F) * rho 1123 + (16 : F) * rho 1124 + (32 : F) * rho 1125 + (64 : F) * rho 1126 + (128 : F) * rho 1127 + (256 : F) * rho 1128 + (512 : F) * rho 1129 + (1024 : F) * rho 1130 + (2048 : F) * rho 1131 + (4096 : F) * rho 1132 + (8192 : F) * rho 1133 + (16384 : F) * rho 1134 + (32768 : F) * rho 1135 + (65536 : F) * rho 1136 + (131072 : F) * rho 1137 + (262144 : F) * rho 1138 + (524288 : F) * rho 1139 + (1048576 : F) * rho 1140 + (2097152 : F) * rho 1141 + (4194304 : F) * rho 1142 + (8388608 : F) * rho 1143 + (16777216 : F) * rho 1144 + (33554432 : F) * rho 1145 + (67108864 : F) * rho 1146 + (134217728 : F) * rho 1147 + (268435456 : F) * rho 1148 + (536870912 : F) * rho 1149 + (1073741824 : F) * rho 1150 + (2147483648 : F) * rho 1151

def relationLc8Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 1152 + (8589934592 : F) * rho 1153 + (17179869184 : F) * rho 1154 + (34359738368 : F) * rho 1155 + (68719476736 : F) * rho 1156 + (137438953472 : F) * rho 1157 + (274877906944 : F) * rho 1158 + (549755813888 : F) * rho 1159 + (1099511627776 : F) * rho 1160 + (2199023255552 : F) * rho 1161 + (4398046511104 : F) * rho 1162 + (8796093022208 : F) * rho 1163 + (17592186044416 : F) * rho 1164 + (35184372088832 : F) * rho 1165 + (70368744177664 : F) * rho 1166 + (140737488355328 : F) * rho 1167 + (281474976710656 : F) * rho 1168 + (562949953421312 : F) * rho 1169 + (1125899906842624 : F) * rho 1170 + (2251799813685248 : F) * rho 1171 + (4503599627370496 : F) * rho 1172 + (9007199254740992 : F) * rho 1173 + (18014398509481984 : F) * rho 1174 + (36028797018963968 : F) * rho 1175 + (72057594037927936 : F) * rho 1176 + (144115188075855872 : F) * rho 1177 + (288230376151711744 : F) * rho 1178 + (576460752303423488 : F) * rho 1179 + (1152921504606846976 : F) * rho 1180 + (2305843009213693952 : F) * rho 1181 + (4611686018427387904 : F) * rho 1182 + (9223372036854775808 : F) * rho 1183

def relationLc8Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 1184 + (36893488147419103232 : F) * rho 1185 + (73786976294838206464 : F) * rho 1186 + (147573952589676412928 : F) * rho 1187 + (295147905179352825856 : F) * rho 1188 + (590295810358705651712 : F) * rho 1189 + (1180591620717411303424 : F) * rho 1190 + (2361183241434822606848 : F) * rho 1191 + (4722366482869645213696 : F) * rho 1192 + (9444732965739290427392 : F) * rho 1193 + (18889465931478580854784 : F) * rho 1194 + (37778931862957161709568 : F) * rho 1195 + (75557863725914323419136 : F) * rho 1196 + (151115727451828646838272 : F) * rho 1197 + (302231454903657293676544 : F) * rho 1198 + (604462909807314587353088 : F) * rho 1199 + (1208925819614629174706176 : F) * rho 1200 + (2417851639229258349412352 : F) * rho 1201 + (4835703278458516698824704 : F) * rho 1202 + (9671406556917033397649408 : F) * rho 1203 + (19342813113834066795298816 : F) * rho 1204 + (38685626227668133590597632 : F) * rho 1205 + (77371252455336267181195264 : F) * rho 1206 + (154742504910672534362390528 : F) * rho 1207 + (309485009821345068724781056 : F) * rho 1208 + (618970019642690137449562112 : F) * rho 1209 + (1237940039285380274899124224 : F) * rho 1210 + (2475880078570760549798248448 : F) * rho 1211 + (4951760157141521099596496896 : F) * rho 1212 + (9903520314283042199192993792 : F) * rho 1213 + (19807040628566084398385987584 : F) * rho 1214 + (39614081257132168796771975168 : F) * rho 1215

def relationLc8Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 1216 + (158456325028528675187087900672 : F) * rho 1217 + (316912650057057350374175801344 : F) * rho 1218 + (633825300114114700748351602688 : F) * rho 1219 + (1267650600228229401496703205376 : F) * rho 1220 + (2535301200456458802993406410752 : F) * rho 1221 + (5070602400912917605986812821504 : F) * rho 1222 + (10141204801825835211973625643008 : F) * rho 1223 + (20282409603651670423947251286016 : F) * rho 1224 + (40564819207303340847894502572032 : F) * rho 1225 + (81129638414606681695789005144064 : F) * rho 1226 + (162259276829213363391578010288128 : F) * rho 1227 + (324518553658426726783156020576256 : F) * rho 1228 + (649037107316853453566312041152512 : F) * rho 1229 + (1298074214633706907132624082305024 : F) * rho 1230 + (2596148429267413814265248164610048 : F) * rho 1231 + (5192296858534827628530496329220096 : F) * rho 1232 + (10384593717069655257060992658440192 : F) * rho 1233 + (20769187434139310514121985316880384 : F) * rho 1234 + (41538374868278621028243970633760768 : F) * rho 1235 + (83076749736557242056487941267521536 : F) * rho 1236 + (166153499473114484112975882535043072 : F) * rho 1237 + (332306998946228968225951765070086144 : F) * rho 1238 + (664613997892457936451903530140172288 : F) * rho 1239 + (1329227995784915872903807060280344576 : F) * rho 1240 + (2658455991569831745807614120560689152 : F) * rho 1241 + (5316911983139663491615228241121378304 : F) * rho 1242 + (10633823966279326983230456482242756608 : F) * rho 1243 + (21267647932558653966460912964485513216 : F) * rho 1244 + (42535295865117307932921825928971026432 : F) * rho 1245 + (85070591730234615865843651857942052864 : F) * rho 1246 + (170141183460469231731687303715884105728 : F) * rho 1247

def relationLc8Part4 (rho : Nat -> F) : F :=
    (340282366920938463463374607431768211456 : F) * rho 1248

def relationLc8 (rho : Nat -> F) : F :=
    relationLc8Part0 rho +
    relationLc8Part1 rho +
    relationLc8Part2 rho +
    relationLc8Part3 rho +
    relationLc8Part4 rho

def relationRow1421 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc8 rho) = ((1 : F) * rho 732 + (1 : F) * rho 861)

def relationRow1422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 600) = ((1 : F) * rho 1249)

def relationRow1423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 598) = ((1 : F) * rho 1250)

def relationRow1424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) * rho 600) = ((1 : F) * rho 1251)

def relationRow1425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252) * ((-1 : F) * rho 1250 + (1 : F) * rho 1251) = ((2 : F) * rho 1249)

def relationRow1426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1253) * ((2 : F) + (1 : F) * rho 1250 + (-1 : F) * rho 1251) = ((1 : F) * rho 1250 + (1 : F) * rho 1251)

def relationRow1427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252 + (1 : F) * rho 1253) * ((1 : F) * rho 598 + (1 : F) * rho 600) = ((1 : F) * rho 1254)

def relationRow1428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 600) * ((1 : F) * rho 1252) = ((1 : F) * rho 1255)

def relationRow1429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1253) = ((1 : F) * rho 1256)

def relationRow1430 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1255) * ((1 : F) * rho 1256) = ((1 : F) * rho 1257)

def relationRow1431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1258) * ((1 : F) + (1 : F) * rho 1257) = ((1 : F) * rho 1255 + (1 : F) * rho 1256)

def relationRow1432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1259) * ((1 : F) + (-1 : F) * rho 1257) = ((1 : F) * rho 1254 + (-1 : F) * rho 1255 + (-1 : F) * rho 1256)

def relationRow1433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1260)

def relationRow1434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1248) * ((1 : F) * rho 1252 + (1 : F) * rho 1260) = ((1 : F) * rho 1261)

def relationRow1435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1247) = ((1 : F) * rho 1262)

def relationRow1436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1263)

def relationRow1437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1248) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1263) = ((1 : F) * rho 1264)

def relationRow1438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1265)

def relationRow1439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1261 + (1 : F) * rho 1262) * ((1 : F) + (1 : F) * rho 1264 + (1 : F) * rho 1265) = ((1 : F) * rho 1266)

def relationRow1440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1261 + (1 : F) * rho 1262) * ((1 : F) * rho 1261 + (1 : F) * rho 1262) = ((1 : F) * rho 1267)

def relationRow1441 (rho : Nat -> F) : Prop :=
    ((1 : F) + (1 : F) * rho 1264 + (1 : F) * rho 1265) * ((1 : F) + (1 : F) * rho 1264 + (1 : F) * rho 1265) = ((1 : F) * rho 1268)

def relationRow1442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1269) * ((-1 : F) * rho 1267 + (1 : F) * rho 1268) = ((2 : F) * rho 1266)

def relationRow1443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1270) * ((2 : F) + (1 : F) * rho 1267 + (-1 : F) * rho 1268) = ((1 : F) * rho 1267 + (1 : F) * rho 1268)

def relationRow1444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1269) * ((1 : F) * rho 1270) = ((1 : F) * rho 1271)

def relationRow1445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1269) * ((1 : F) * rho 1269) = ((1 : F) * rho 1272)

def relationRow1446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1270) * ((1 : F) * rho 1270) = ((1 : F) * rho 1273)

def relationRow1447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1274) * ((-1 : F) * rho 1272 + (1 : F) * rho 1273) = ((2 : F) * rho 1271)

def relationRow1448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * ((2 : F) + (1 : F) * rho 1272 + (-1 : F) * rho 1273) = ((1 : F) * rho 1272 + (1 : F) * rho 1273)

def relationRow1449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1276)

def relationRow1450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * ((1 : F) * rho 1252 + (1 : F) * rho 1276) = ((1 : F) * rho 1277)

def relationRow1451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1245) = ((1 : F) * rho 1278)

def relationRow1452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1279)

def relationRow1453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1279) = ((1 : F) * rho 1280)

def relationRow1454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1281)

def relationRow1455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1274 + (1 : F) * rho 1275) * ((1 : F) + (1 : F) * rho 1277 + (1 : F) * rho 1278 + (1 : F) * rho 1280 + (1 : F) * rho 1281) = ((1 : F) * rho 1282)

def relationRow1456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1274) * ((1 : F) + (1 : F) * rho 1280 + (1 : F) * rho 1281) = ((1 : F) * rho 1283)

def relationRow1457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * ((1 : F) * rho 1277 + (1 : F) * rho 1278) = ((1 : F) * rho 1284)

def relationRow1458 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1283) * ((1 : F) * rho 1284) = ((1 : F) * rho 1285)

def relationRow1459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * ((1 : F) + (1 : F) * rho 1285) = ((1 : F) * rho 1283 + (1 : F) * rho 1284)

def relationRow1460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1287) * ((1 : F) + (-1 : F) * rho 1285) = ((1 : F) * rho 1282 + (-1 : F) * rho 1283 + (-1 : F) * rho 1284)

def relationRow1461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * ((1 : F) * rho 1287) = ((1 : F) * rho 1288)

def relationRow1462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1286) * ((1 : F) * rho 1286) = ((1 : F) * rho 1289)

def relationRow1463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1287) * ((1 : F) * rho 1287) = ((1 : F) * rho 1290)

def relationRow1464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * ((-1 : F) * rho 1289 + (1 : F) * rho 1290) = ((2 : F) * rho 1288)

def relationRow1465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1292) * ((2 : F) + (1 : F) * rho 1289 + (-1 : F) * rho 1290) = ((1 : F) * rho 1289 + (1 : F) * rho 1290)

def relationRow1466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * ((1 : F) * rho 1292) = ((1 : F) * rho 1293)

def relationRow1467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1291) * ((1 : F) * rho 1291) = ((1 : F) * rho 1294)

def relationRow1468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1292) * ((1 : F) * rho 1292) = ((1 : F) * rho 1295)

def relationRow1469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296) * ((-1 : F) * rho 1294 + (1 : F) * rho 1295) = ((2 : F) * rho 1293)

def relationRow1470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1297) * ((2 : F) + (1 : F) * rho 1294 + (-1 : F) * rho 1295) = ((1 : F) * rho 1294 + (1 : F) * rho 1295)

def relationRow1471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 1298)

def relationRow1472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * ((1 : F) * rho 1252 + (1 : F) * rho 1298) = ((1 : F) * rho 1299)

def relationRow1473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1243) = ((1 : F) * rho 1300)

def relationRow1474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 1301)

def relationRow1475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 1301) = ((1 : F) * rho 1302)

def relationRow1476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 1303)

def relationRow1477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296 + (1 : F) * rho 1297) * ((1 : F) + (1 : F) * rho 1299 + (1 : F) * rho 1300 + (1 : F) * rho 1302 + (1 : F) * rho 1303) = ((1 : F) * rho 1304)

def relationRow1478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1296) * ((1 : F) + (1 : F) * rho 1302 + (1 : F) * rho 1303) = ((1 : F) * rho 1305)

def relationRow1479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1297) * ((1 : F) * rho 1299 + (1 : F) * rho 1300) = ((1 : F) * rho 1306)

def relationRow1480 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 1305) * ((1 : F) * rho 1306) = ((1 : F) * rho 1307)

def relationRow1481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1308) * ((1 : F) + (1 : F) * rho 1307) = ((1 : F) * rho 1305 + (1 : F) * rho 1306)

def relationRow1482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1309) * ((1 : F) + (-1 : F) * rho 1307) = ((1 : F) * rho 1304 + (-1 : F) * rho 1305 + (-1 : F) * rho 1306)

def relationRow1483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1308) * ((1 : F) * rho 1309) = ((1 : F) * rho 1310)

def relationRow1484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1308) * ((1 : F) * rho 1308) = ((1 : F) * rho 1311)

def relationRow1485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1309) * ((1 : F) * rho 1309) = ((1 : F) * rho 1312)

def relationRow1486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1313) * ((-1 : F) * rho 1311 + (1 : F) * rho 1312) = ((2 : F) * rho 1310)

def relationRow1487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1314) * ((2 : F) + (1 : F) * rho 1311 + (-1 : F) * rho 1312) = ((1 : F) * rho 1311 + (1 : F) * rho 1312)

def relationRow1488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1313) * ((1 : F) * rho 1314) = ((1 : F) * rho 1315)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
