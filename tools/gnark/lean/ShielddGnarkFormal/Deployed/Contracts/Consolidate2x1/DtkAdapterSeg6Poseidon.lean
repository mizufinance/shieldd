import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Base
import ShielddGnarkFormal.Deployed.DtkIvkPoseidon.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6_poseidon_eq (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    rho 9 + 2111115437357092606062206234695386632838870926408408195193685246394721360383 * rho 10 =
      Shieldd.GnarkFormal.Poseidon2Bridge.permSpec2
        (9361307723838134966014044876631201920149619 : Seg6.F) (rho 8) (rho 1615 - rho 1275) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p13, p14, p15, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, _, _, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Seg6.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Seg6.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Seg6.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.relation (rho 8) (rho 1275) (rho 1615) (fun x y z => x = rho 1875 ∧ y = rho 1880 ∧ z = rho 1885) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg0
    refine ⟨rho 1616, rho 1617, rho 1618, rho 1619, rho 1620, (by simpa [Seg6.relationRow1046] using r1046), (by simpa [Seg6.relationRow1047] using r1047), (by simpa [Seg6.relationRow1048] using r1048), (by simpa [Seg6.relationRow1049] using r1049), (by simpa [Seg6.relationRow1050] using r1050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg1
    refine ⟨rho 1621, rho 1622, rho 1623, rho 1624, rho 1625, (by simpa [Seg6.relationRow1051] using r1051), (by simpa [Seg6.relationRow1052] using r1052), (by simpa [Seg6.relationRow1053] using r1053), (by simpa [Seg6.relationRow1054] using r1054), (by simpa [Seg6.relationRow1055] using r1055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg2
    refine ⟨rho 1626, rho 1627, rho 1628, rho 1629, rho 1630, (by simpa [Seg6.relationRow1056] using r1056), (by simpa [Seg6.relationRow1057] using r1057), (by simpa [Seg6.relationRow1058] using r1058), (by simpa [Seg6.relationRow1059] using r1059), (by simpa [Seg6.relationRow1060] using r1060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg3
    refine ⟨rho 1631, rho 1632, rho 1633, rho 1634, rho 1635, (by simpa [Seg6.relationRow1061] using r1061), (by simpa [Seg6.relationRow1062] using r1062), (by simpa [Seg6.relationRow1063] using r1063), (by simpa [Seg6.relationRow1064] using r1064), (by simpa [Seg6.relationRow1065] using r1065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg4
    refine ⟨rho 1636, rho 1637, rho 1638, rho 1639, rho 1640, (by simpa [Seg6.relationRow1066] using r1066), (by simpa [Seg6.relationRow1067] using r1067), (by simpa [Seg6.relationRow1068] using r1068), (by simpa [Seg6.relationRow1069] using r1069), (by simpa [Seg6.relationRow1070] using r1070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg5
    refine ⟨rho 1641, rho 1642, rho 1643, rho 1644, rho 1645, (by simpa [Seg6.relationRow1071] using r1071), (by simpa [Seg6.relationRow1072] using r1072), (by simpa [Seg6.relationRow1073] using r1073), (by simpa [Seg6.relationRow1074] using r1074), (by simpa [Seg6.relationRow1075] using r1075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg6
    refine ⟨rho 1646, rho 1647, rho 1648, rho 1649, rho 1650, (by simpa [Seg6.relationRow1076] using r1076), (by simpa [Seg6.relationRow1077] using r1077), (by simpa [Seg6.relationRow1078] using r1078), (by simpa [Seg6.relationRow1079] using r1079), (by simpa [Seg6.relationRow1080] using r1080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg7
    refine ⟨rho 1651, rho 1652, rho 1653, rho 1654, rho 1655, (by simpa [Seg6.relationRow1081] using r1081), (by simpa [Seg6.relationRow1082] using r1082), (by simpa [Seg6.relationRow1083] using r1083), (by simpa [Seg6.relationRow1084] using r1084), (by simpa [Seg6.relationRow1085] using r1085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg8
    refine ⟨rho 1656, rho 1657, rho 1658, rho 1659, rho 1660, (by simpa [Seg6.relationRow1086] using r1086), (by simpa [Seg6.relationRow1087] using r1087), (by simpa [Seg6.relationRow1088] using r1088), (by simpa [Seg6.relationRow1089] using r1089), (by simpa [Seg6.relationRow1090] using r1090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg9
    refine ⟨rho 1661, rho 1662, rho 1663, rho 1664, rho 1665, (by simpa [Seg6.relationRow1091] using r1091), (by simpa [Seg6.relationRow1092] using r1092), (by simpa [Seg6.relationRow1093] using r1093), (by simpa [Seg6.relationRow1094] using r1094), (by simpa [Seg6.relationRow1095] using r1095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg10
    refine ⟨rho 1666, rho 1667, rho 1668, rho 1669, rho 1670, (by simpa [Seg6.relationRow1096] using r1096), (by simpa [Seg6.relationRow1097] using r1097), (by simpa [Seg6.relationRow1098] using r1098), (by simpa [Seg6.relationRow1099] using r1099), (by simpa [Seg6.relationRow1100] using r1100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg11
    refine ⟨rho 1671, rho 1672, rho 1673, rho 1674, rho 1675, (by simpa [Seg6.relationRow1101] using r1101), (by simpa [Seg6.relationRow1102] using r1102), (by simpa [Seg6.relationRow1103] using r1103), (by simpa [Seg6.relationRow1104] using r1104), (by simpa [Seg6.relationRow1105] using r1105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg12
    refine ⟨rho 1676, rho 1677, rho 1678, rho 1679, rho 1680, (by simpa [Seg6.relationRow1106] using r1106), (by simpa [Seg6.relationRow1107] using r1107), (by simpa [Seg6.relationRow1108] using r1108), (by simpa [Seg6.relationRow1109] using r1109), (by simpa [Seg6.relationRow1110] using r1110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg13
    refine ⟨rho 1681, rho 1682, rho 1683, rho 1684, rho 1685, (by simpa [Seg6.relationRow1111] using r1111), (by simpa [Seg6.relationRow1112] using r1112), (by simpa [Seg6.relationRow1113] using r1113), (by simpa [Seg6.relationRow1114] using r1114), (by simpa [Seg6.relationRow1115] using r1115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg14
    refine ⟨rho 1686, rho 1687, rho 1688, rho 1689, rho 1690, (by simpa [Seg6.relationRow1116] using r1116), (by simpa [Seg6.relationRow1117] using r1117), (by simpa [Seg6.relationRow1118] using r1118), (by simpa [Seg6.relationRow1119] using r1119), (by simpa [Seg6.relationRow1120] using r1120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg15
    refine ⟨rho 1691, rho 1692, rho 1693, rho 1694, rho 1695, (by simpa [Seg6.relationRow1121] using r1121), (by simpa [Seg6.relationRow1122] using r1122), (by simpa [Seg6.relationRow1123] using r1123), (by simpa [Seg6.relationRow1124] using r1124), (by simpa [Seg6.relationRow1125] using r1125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg16
    refine ⟨rho 1696, rho 1697, rho 1698, rho 1699, rho 1700, (by simpa [Seg6.relationRow1126] using r1126), (by simpa [Seg6.relationRow1127] using r1127), (by simpa [Seg6.relationRow1128] using r1128), (by simpa [Seg6.relationRow1129] using r1129), (by simpa [Seg6.relationRow1130] using r1130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg17
    refine ⟨rho 1701, rho 1702, rho 1703, rho 1704, rho 1705, (by simpa [Seg6.relationRow1131] using r1131), (by simpa [Seg6.relationRow1132] using r1132), (by simpa [Seg6.relationRow1133] using r1133), (by simpa [Seg6.relationRow1134] using r1134), (by simpa [Seg6.relationRow1135] using r1135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg18
    refine ⟨rho 1706, rho 1707, rho 1708, rho 1709, rho 1710, (by simpa [Seg6.relationRow1136] using r1136), (by simpa [Seg6.relationRow1137] using r1137), (by simpa [Seg6.relationRow1138] using r1138), (by simpa [Seg6.relationRow1139] using r1139), (by simpa [Seg6.relationRow1140] using r1140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg19
    refine ⟨rho 1711, rho 1712, rho 1713, rho 1714, rho 1715, (by simpa [Seg6.relationRow1141] using r1141), (by simpa [Seg6.relationRow1142] using r1142), (by simpa [Seg6.relationRow1143] using r1143), (by simpa [Seg6.relationRow1144] using r1144), (by simpa [Seg6.relationRow1145] using r1145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg20
    refine ⟨rho 1716, rho 1717, rho 1718, rho 1719, rho 1720, (by simpa [Seg6.relationRow1146] using r1146), (by simpa [Seg6.relationRow1147] using r1147), (by simpa [Seg6.relationRow1148] using r1148), (by simpa [Seg6.relationRow1149] using r1149), (by simpa [Seg6.relationRow1150] using r1150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg21
    refine ⟨rho 1721, rho 1722, rho 1723, rho 1724, rho 1725, (by simpa [Seg6.relationRow1151] using r1151), (by simpa [Seg6.relationRow1152] using r1152), (by simpa [Seg6.relationRow1153] using r1153), (by simpa [Seg6.relationRow1154] using r1154), (by simpa [Seg6.relationRow1155] using r1155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg22
    refine ⟨rho 1726, rho 1727, rho 1728, rho 1729, rho 1730, (by simpa [Seg6.relationRow1156] using r1156), (by simpa [Seg6.relationRow1157] using r1157), (by simpa [Seg6.relationRow1158] using r1158), (by simpa [Seg6.relationRow1159] using r1159), (by simpa [Seg6.relationRow1160] using r1160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg23
    refine ⟨rho 1731, rho 1732, rho 1733, rho 1734, rho 1735, (by simpa [Seg6.relationRow1161] using r1161), (by simpa [Seg6.relationRow1162] using r1162), (by simpa [Seg6.relationRow1163] using r1163), (by simpa [Seg6.relationRow1164] using r1164), (by simpa [Seg6.relationRow1165] using r1165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg24
    refine ⟨rho 1736, rho 1737, rho 1738, rho 1739, rho 1740, (by simpa [Seg6.relationRow1166] using r1166), (by simpa [Seg6.relationRow1167] using r1167), (by simpa [Seg6.relationRow1168] using r1168), (by simpa [Seg6.relationRow1169] using r1169), (by simpa [Seg6.relationRow1170] using r1170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg25
    refine ⟨rho 1741, rho 1742, rho 1743, rho 1744, rho 1745, (by simpa [Seg6.relationRow1171] using r1171), (by simpa [Seg6.relationRow1172] using r1172), (by simpa [Seg6.relationRow1173] using r1173), (by simpa [Seg6.relationRow1174] using r1174), (by simpa [Seg6.relationRow1175] using r1175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg26
    refine ⟨rho 1746, rho 1747, rho 1748, rho 1749, rho 1750, (by simpa [Seg6.relationRow1176] using r1176), (by simpa [Seg6.relationRow1177] using r1177), (by simpa [Seg6.relationRow1178] using r1178), (by simpa [Seg6.relationRow1179] using r1179), (by simpa [Seg6.relationRow1180] using r1180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg27
    refine ⟨rho 1751, rho 1752, rho 1753, rho 1754, rho 1755, (by simpa [Seg6.relationRow1181] using r1181), (by simpa [Seg6.relationRow1182] using r1182), (by simpa [Seg6.relationRow1183] using r1183), (by simpa [Seg6.relationRow1184] using r1184), (by simpa [Seg6.relationRow1185] using r1185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg28
    refine ⟨rho 1756, rho 1757, rho 1758, rho 1759, rho 1760, (by simpa [Seg6.relationRow1186] using r1186), (by simpa [Seg6.relationRow1187] using r1187), (by simpa [Seg6.relationRow1188] using r1188), (by simpa [Seg6.relationRow1189] using r1189), (by simpa [Seg6.relationRow1190] using r1190), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg29
    refine ⟨rho 1761, rho 1762, rho 1763, rho 1764, rho 1765, (by simpa [Seg6.relationRow1191] using r1191), (by simpa [Seg6.relationRow1192] using r1192), (by simpa [Seg6.relationRow1193] using r1193), (by simpa [Seg6.relationRow1194] using r1194), (by simpa [Seg6.relationRow1195] using r1195), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg30
    refine ⟨rho 1766, rho 1767, rho 1768, rho 1769, rho 1770, (by simpa [Seg6.relationRow1196] using r1196), (by simpa [Seg6.relationRow1197] using r1197), (by simpa [Seg6.relationRow1198] using r1198), (by simpa [Seg6.relationRow1199] using r1199), (by simpa [Seg6.relationRow1200] using r1200), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg31
    refine ⟨rho 1771, rho 1772, rho 1773, rho 1774, rho 1775, (by simpa [Seg6.relationRow1201] using r1201), (by simpa [Seg6.relationRow1202] using r1202), (by simpa [Seg6.relationRow1203] using r1203), (by simpa [Seg6.relationRow1204] using r1204), (by simpa [Seg6.relationRow1205] using r1205), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg32
    refine ⟨rho 1776, rho 1777, rho 1778, rho 1779, rho 1780, (by simpa [Seg6.relationRow1206] using r1206), (by simpa [Seg6.relationRow1207] using r1207), (by simpa [Seg6.relationRow1208] using r1208), (by simpa [Seg6.relationRow1209] using r1209), (by simpa [Seg6.relationRow1210] using r1210), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg33
    refine ⟨rho 1781, rho 1782, rho 1783, rho 1784, rho 1785, (by simpa [Seg6.relationRow1211] using r1211), (by simpa [Seg6.relationRow1212] using r1212), (by simpa [Seg6.relationRow1213] using r1213), (by simpa [Seg6.relationRow1214] using r1214), (by simpa [Seg6.relationRow1215] using r1215), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg34
    refine ⟨rho 1786, rho 1787, rho 1788, rho 1789, rho 1790, (by simpa [Seg6.relationRow1216] using r1216), (by simpa [Seg6.relationRow1217] using r1217), (by simpa [Seg6.relationRow1218] using r1218), (by simpa [Seg6.relationRow1219] using r1219), (by simpa [Seg6.relationRow1220] using r1220), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg35
    refine ⟨rho 1791, rho 1792, rho 1793, rho 1794, rho 1795, (by simpa [Seg6.relationRow1221] using r1221), (by simpa [Seg6.relationRow1222] using r1222), (by simpa [Seg6.relationRow1223] using r1223), (by simpa [Seg6.relationRow1224] using r1224), (by simpa [Seg6.relationRow1225] using r1225), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg36
    refine ⟨rho 1796, rho 1797, rho 1798, rho 1799, rho 1800, (by simpa [Seg6.relationRow1226] using r1226), (by simpa [Seg6.relationRow1227] using r1227), (by simpa [Seg6.relationRow1228] using r1228), (by simpa [Seg6.relationRow1229] using r1229), (by simpa [Seg6.relationRow1230] using r1230), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg37
    refine ⟨rho 1801, rho 1802, rho 1803, rho 1804, rho 1805, (by simpa [Seg6.relationRow1231] using r1231), (by simpa [Seg6.relationRow1232] using r1232), (by simpa [Seg6.relationRow1233] using r1233), (by simpa [Seg6.relationRow1234] using r1234), (by simpa [Seg6.relationRow1235] using r1235), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg38
    refine ⟨rho 1806, rho 1807, rho 1808, rho 1809, rho 1810, (by simpa [Seg6.relationRow1236] using r1236), (by simpa [Seg6.relationRow1237] using r1237), (by simpa [Seg6.relationRow1238] using r1238), (by simpa [Seg6.relationRow1239] using r1239), (by simpa [Seg6.relationRow1240] using r1240), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg39
    refine ⟨rho 1811, rho 1812, rho 1813, rho 1814, rho 1815, (by simpa [Seg6.relationRow1241] using r1241), (by simpa [Seg6.relationRow1242] using r1242), (by simpa [Seg6.relationRow1243] using r1243), (by simpa [Seg6.relationRow1244] using r1244), (by simpa [Seg6.relationRow1245] using r1245), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg40
    refine ⟨rho 1816, rho 1817, rho 1818, rho 1819, rho 1820, (by unfold Seg6.relationRow1246 Seg6.relationLc2 Seg6.relationLc2Part0 Seg6.relationLc2Part1 Seg6.relationLc3 Seg6.relationLc3Part0 Seg6.relationLc3Part1 at r1246; linear_combination r1246), (by simpa [Seg6.relationRow1247] using r1247), (by simpa [Seg6.relationRow1248] using r1248), (by simpa [Seg6.relationRow1249] using r1249), (by unfold Seg6.relationRow1250 Seg6.relationLc4 Seg6.relationLc4Part0 Seg6.relationLc4Part1 at r1250; linear_combination r1250), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg41
    refine ⟨rho 1821, rho 1822, rho 1823, rho 1824, rho 1825, (by unfold Seg6.relationRow1251 Seg6.relationLc5 Seg6.relationLc5Part0 Seg6.relationLc5Part1 Seg6.relationLc6 Seg6.relationLc6Part0 Seg6.relationLc6Part1 at r1251; linear_combination r1251), (by simpa [Seg6.relationRow1252] using r1252), (by simpa [Seg6.relationRow1253] using r1253), (by simpa [Seg6.relationRow1254] using r1254), (by unfold Seg6.relationRow1255 Seg6.relationLc7 Seg6.relationLc7Part0 Seg6.relationLc7Part1 at r1255; linear_combination r1255), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg42
    refine ⟨rho 1826, rho 1827, rho 1828, rho 1829, rho 1830, (by unfold Seg6.relationRow1256 Seg6.relationLc8 Seg6.relationLc8Part0 Seg6.relationLc8Part1 Seg6.relationLc9 Seg6.relationLc9Part0 Seg6.relationLc9Part1 at r1256; linear_combination r1256), (by simpa [Seg6.relationRow1257] using r1257), (by simpa [Seg6.relationRow1258] using r1258), (by simpa [Seg6.relationRow1259] using r1259), (by unfold Seg6.relationRow1260 Seg6.relationLc10 Seg6.relationLc10Part0 Seg6.relationLc10Part1 at r1260; linear_combination r1260), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg43
    refine ⟨rho 1831, rho 1832, rho 1833, rho 1834, rho 1835, (by unfold Seg6.relationRow1261 Seg6.relationLc11 Seg6.relationLc11Part0 Seg6.relationLc11Part1 Seg6.relationLc12 Seg6.relationLc12Part0 Seg6.relationLc12Part1 at r1261; linear_combination r1261), (by simpa [Seg6.relationRow1262] using r1262), (by simpa [Seg6.relationRow1263] using r1263), (by simpa [Seg6.relationRow1264] using r1264), (by unfold Seg6.relationRow1265 Seg6.relationLc13 Seg6.relationLc13Part0 Seg6.relationLc13Part1 at r1265; linear_combination r1265), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg44
    refine ⟨rho 1836, rho 1837, rho 1838, rho 1839, rho 1840, (by unfold Seg6.relationRow1266 Seg6.relationLc14 Seg6.relationLc14Part0 Seg6.relationLc14Part1 Seg6.relationLc15 Seg6.relationLc15Part0 Seg6.relationLc15Part1 at r1266; linear_combination r1266), (by simpa [Seg6.relationRow1267] using r1267), (by simpa [Seg6.relationRow1268] using r1268), (by simpa [Seg6.relationRow1269] using r1269), (by unfold Seg6.relationRow1270 Seg6.relationLc16 Seg6.relationLc16Part0 Seg6.relationLc16Part1 at r1270; linear_combination r1270), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg45
    refine ⟨rho 1841, rho 1842, rho 1843, rho 1844, rho 1845, (by simpa [Seg6.relationRow1271] using r1271), (by simpa [Seg6.relationRow1272] using r1272), (by simpa [Seg6.relationRow1273] using r1273), (by simpa [Seg6.relationRow1274] using r1274), (by simpa [Seg6.relationRow1275] using r1275), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg46
    refine ⟨rho 1846, rho 1847, rho 1848, rho 1849, rho 1850, (by simpa [Seg6.relationRow1276] using r1276), (by simpa [Seg6.relationRow1277] using r1277), (by simpa [Seg6.relationRow1278] using r1278), (by simpa [Seg6.relationRow1279] using r1279), (by simpa [Seg6.relationRow1280] using r1280), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg47
    refine ⟨rho 1851, rho 1852, rho 1853, rho 1854, rho 1855, (by simpa [Seg6.relationRow1281] using r1281), (by simpa [Seg6.relationRow1282] using r1282), (by simpa [Seg6.relationRow1283] using r1283), (by simpa [Seg6.relationRow1284] using r1284), (by simpa [Seg6.relationRow1285] using r1285), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg48
    refine ⟨rho 1856, rho 1857, rho 1858, rho 1859, rho 1860, (by simpa [Seg6.relationRow1286] using r1286), (by simpa [Seg6.relationRow1287] using r1287), (by simpa [Seg6.relationRow1288] using r1288), (by simpa [Seg6.relationRow1289] using r1289), (by simpa [Seg6.relationRow1290] using r1290), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg49
    refine ⟨rho 1861, rho 1862, rho 1863, rho 1864, rho 1865, (by simpa [Seg6.relationRow1291] using r1291), (by simpa [Seg6.relationRow1292] using r1292), (by simpa [Seg6.relationRow1293] using r1293), (by simpa [Seg6.relationRow1294] using r1294), (by simpa [Seg6.relationRow1295] using r1295), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg50
    refine ⟨rho 1866, rho 1867, rho 1868, rho 1869, rho 1870, (by simpa [Seg6.relationRow1296] using r1296), (by simpa [Seg6.relationRow1297] using r1297), (by simpa [Seg6.relationRow1298] using r1298), (by simpa [Seg6.relationRow1299] using r1299), (by simpa [Seg6.relationRow1300] using r1300), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg51
    refine ⟨rho 1871, rho 1872, rho 1873, rho 1874, rho 1875, (by simpa [Seg6.relationRow1301] using r1301), (by simpa [Seg6.relationRow1302] using r1302), (by simpa [Seg6.relationRow1303] using r1303), (by simpa [Seg6.relationRow1304] using r1304), (by simpa [Seg6.relationRow1305] using r1305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg52
    refine ⟨rho 1876, rho 1877, rho 1878, rho 1879, rho 1880, (by simpa [Seg6.relationRow1306] using r1306), (by simpa [Seg6.relationRow1307] using r1307), (by simpa [Seg6.relationRow1308] using r1308), (by simpa [Seg6.relationRow1309] using r1309), (by simpa [Seg6.relationRow1310] using r1310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_bd78d2.seg53
    refine ⟨rho 1881, rho 1882, rho 1883, rho 1884, rho 1885, (by simpa [Seg6.relationRow1311] using r1311), (by simpa [Seg6.relationRow1312] using r1312), (by simpa [Seg6.relationRow1313] using r1313), (by simpa [Seg6.relationRow1314] using r1314), (by simpa [Seg6.relationRow1315] using r1315), ?_⟩
    exact ⟨rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.relation_sound_permSpec (rho 8) (rho 1275) (rho 1615) _ hrel
  rcases hs with ⟨x, y, z, ⟨rfl, rfl, rfl⟩, hs⟩
  unfold Seg6.relationRow1316 at r1316
  unfold Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.s38_1 Shieldd.GnarkFormal.Deployed.Poseidon2Link.row3 Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.ivkDomainLit at hs
  linear_combination -r1316 + hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
