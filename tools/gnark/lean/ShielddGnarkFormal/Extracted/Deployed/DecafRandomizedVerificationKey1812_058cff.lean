import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.LinearCombination


set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-! Auto-generated per-rung deployed-slice certificates for `decaf.randomized_verification_key` (size 1812, 517 rows).
Each `step{k}` proves the rematerialized rung follows from the exact deployed row by instantiating every shared accumulator `s{w}` with its full original expansion. Generated from the checked deployed-slice IR. -/

namespace Shieldd.GnarkFormal.Extracted.Deployed.DecafRandomizedVerificationKey1812_058cff

-- 1295 folded ladder rung(s) delegated to the fuel lemma (deployed row indices, NOT flat-proven here): [251, 293, 294, 298, 299, 303, 304, 308, 309, 313, 314, 318, 319, 323, 324, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1001, 1003, 1004, 1005, 1006, 1007, 1009, 1011, 1012, 1013, 1014, 1015, 1017, 1019, 1020, 1021, 1022, 1023, 1025, 1027, 1028, 1029, 1030, 1031, 1033, 1035, 1036, 1037, 1038, 1039, 1041, 1043, 1044, 1045, 1046, 1047, 1049, 1051, 1052, 1053, 1054, 1055, 1057, 1059, 1060, 1061, 1062, 1063, 1065, 1067, 1068, 1069, 1070, 1071, 1073, 1075, 1076, 1077, 1078, 1079, 1081, 1083, 1084, 1085, 1086, 1087, 1089, 1091, 1092, 1093, 1094, 1095, 1097, 1099, 1100, 1101, 1102, 1103, 1105, 1107, 1108, 1109, 1110, 1111, 1113, 1115, 1116, 1117, 1118, 1119, 1121, 1123, 1124, 1125, 1126, 1127, 1129, 1131, 1132, 1133, 1134, 1135, 1137, 1139, 1140, 1141, 1142, 1143, 1145, 1147, 1148, 1149, 1150, 1151, 1153, 1155, 1156, 1157, 1158, 1159, 1161, 1163, 1164, 1165, 1166, 1167, 1169, 1171, 1172, 1173, 1174, 1175, 1177, 1179, 1180, 1181, 1182, 1183, 1185, 1187, 1188, 1189, 1190, 1191, 1193, 1195, 1196, 1197, 1198, 1199, 1201, 1203, 1204, 1205, 1206, 1207, 1209, 1211, 1212, 1213, 1214, 1215, 1217, 1219, 1220, 1221, 1222, 1223, 1225, 1227, 1228, 1229, 1230, 1231, 1233, 1235, 1236, 1237, 1238, 1239, 1241, 1243, 1244, 1245, 1246, 1247, 1249, 1251, 1252, 1253, 1254, 1255, 1257, 1259, 1260, 1261, 1262, 1263, 1265, 1267, 1268, 1269, 1270, 1271, 1273, 1275, 1276, 1277, 1278, 1279, 1281, 1283, 1284, 1285, 1286, 1287, 1289, 1291, 1292, 1293, 1294, 1295, 1297, 1299, 1300, 1301, 1302, 1303, 1305, 1307, 1308, 1309, 1310, 1311, 1313, 1315, 1316, 1317, 1318, 1319, 1321, 1323, 1324, 1325, 1326, 1327, 1329, 1331, 1332, 1333, 1334, 1335, 1337, 1339, 1340, 1341, 1342, 1343, 1345, 1347, 1348, 1349, 1350, 1351, 1353, 1355, 1356, 1357, 1358, 1359, 1361, 1363, 1364, 1365, 1366, 1367, 1369, 1371, 1372, 1373, 1374, 1375, 1377, 1379, 1380, 1381, 1382, 1383, 1385, 1387, 1388, 1389, 1390, 1391, 1393, 1395, 1396, 1397, 1398, 1399, 1401, 1403, 1404, 1405, 1406, 1407, 1409, 1411, 1412, 1413, 1414, 1415, 1417, 1419, 1420, 1421, 1422, 1423, 1425, 1427, 1428, 1429, 1430, 1431, 1433, 1435, 1436, 1437, 1438, 1439, 1441, 1443, 1444, 1445, 1446, 1447, 1449, 1451, 1452, 1453, 1454, 1455, 1457, 1459, 1460, 1461, 1462, 1463, 1465, 1467, 1468, 1469, 1470, 1471, 1473, 1475, 1476, 1477, 1478, 1479, 1481, 1483, 1484, 1485, 1486, 1487, 1489, 1491, 1492, 1493, 1494, 1495, 1497, 1499, 1500, 1501, 1502, 1503, 1505, 1507, 1508, 1509, 1510, 1511, 1513, 1515, 1516, 1517, 1518, 1519, 1521, 1523, 1524, 1525, 1526, 1527, 1529, 1531, 1532, 1533, 1534, 1535, 1537, 1539, 1540, 1541, 1542, 1543, 1545, 1547, 1548, 1549, 1550, 1551, 1553, 1555, 1556, 1557, 1558, 1559, 1561, 1563, 1564, 1565, 1566, 1567, 1569, 1571, 1572, 1573, 1574, 1575, 1577, 1579, 1580, 1581, 1582, 1583, 1585, 1587, 1588, 1589, 1590, 1591, 1593, 1595, 1596, 1597, 1598, 1599, 1601, 1603, 1604, 1605, 1606, 1607, 1609, 1611, 1612, 1613, 1614, 1615, 1617, 1619, 1620, 1621, 1622, 1623, 1625, 1627, 1628, 1629, 1630, 1631, 1633, 1635, 1636, 1637, 1638, 1639, 1641, 1643, 1644, 1645, 1646, 1647, 1649, 1651, 1652, 1653, 1654, 1655, 1657, 1659, 1660, 1661, 1662, 1663, 1665, 1667, 1668, 1669, 1670, 1671, 1673, 1675, 1676, 1677, 1678, 1679, 1681, 1683, 1684, 1685, 1686, 1687, 1689, 1691, 1692, 1693, 1694, 1695, 1697, 1699, 1700, 1701, 1702, 1703, 1705, 1707, 1708, 1709, 1710, 1711, 1713, 1715, 1716, 1717, 1718, 1719, 1721, 1723, 1724, 1725, 1726, 1727, 1729, 1731, 1732, 1733, 1734, 1735, 1737, 1739, 1740, 1741, 1742, 1743, 1745, 1747, 1748, 1749, 1750, 1751, 1753, 1755, 1756, 1757, 1758, 1759, 1761, 1763, 1764, 1765, 1766, 1767, 1769, 1771, 1772, 1773, 1774, 1775, 1777, 1779, 1780, 1781, 1782, 1783, 1785, 1787, 1788, 1789, 1790, 1791, 1793, 1795, 1796, 1797, 1798, 1799, 1801, 1803, 1804, 1805, 1807, 1808]
def Order : ℕ := 8444461749428370424248824938781546531375899335154063827935233455917409239041
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order

def dotLC (rho : Nat → F) : List (F × Nat) → F
  | [] => 0
  | (a,w) :: t => a * rho w + dotLC rho t

theorem step0 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10571)] * dotLC rho [((1 : F),0), ((-1 : F),10571)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10571) * ((1 : F) * rho 0 + (-1 : F) * rho 10571) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10572)] * dotLC rho [((1 : F),0), ((-1 : F),10572)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10572) * ((1 : F) * rho 0 + (-1 : F) * rho 10572) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10573)] * dotLC rho [((1 : F),0), ((-1 : F),10573)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10573) * ((1 : F) * rho 0 + (-1 : F) * rho 10573) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10574)] * dotLC rho [((1 : F),0), ((-1 : F),10574)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10574) * ((1 : F) * rho 0 + (-1 : F) * rho 10574) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step4 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10575)] * dotLC rho [((1 : F),0), ((-1 : F),10575)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10575) * ((1 : F) * rho 0 + (-1 : F) * rho 10575) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step5 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10576)] * dotLC rho [((1 : F),0), ((-1 : F),10576)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10576) * ((1 : F) * rho 0 + (-1 : F) * rho 10576) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step6 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10577)] * dotLC rho [((1 : F),0), ((-1 : F),10577)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10577) * ((1 : F) * rho 0 + (-1 : F) * rho 10577) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step7 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10578)] * dotLC rho [((1 : F),0), ((-1 : F),10578)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10578) * ((1 : F) * rho 0 + (-1 : F) * rho 10578) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step8 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10579)] * dotLC rho [((1 : F),0), ((-1 : F),10579)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10579) * ((1 : F) * rho 0 + (-1 : F) * rho 10579) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step9 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10580)] * dotLC rho [((1 : F),0), ((-1 : F),10580)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10580) * ((1 : F) * rho 0 + (-1 : F) * rho 10580) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step10 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10581)] * dotLC rho [((1 : F),0), ((-1 : F),10581)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10581) * ((1 : F) * rho 0 + (-1 : F) * rho 10581) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step11 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10582)] * dotLC rho [((1 : F),0), ((-1 : F),10582)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10582) * ((1 : F) * rho 0 + (-1 : F) * rho 10582) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step12 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10583)] * dotLC rho [((1 : F),0), ((-1 : F),10583)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10583) * ((1 : F) * rho 0 + (-1 : F) * rho 10583) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step13 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10584)] * dotLC rho [((1 : F),0), ((-1 : F),10584)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10584) * ((1 : F) * rho 0 + (-1 : F) * rho 10584) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step14 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10585)] * dotLC rho [((1 : F),0), ((-1 : F),10585)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10585) * ((1 : F) * rho 0 + (-1 : F) * rho 10585) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step15 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10586)] * dotLC rho [((1 : F),0), ((-1 : F),10586)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10586) * ((1 : F) * rho 0 + (-1 : F) * rho 10586) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step16 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10587)] * dotLC rho [((1 : F),0), ((-1 : F),10587)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10587) * ((1 : F) * rho 0 + (-1 : F) * rho 10587) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step17 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10588)] * dotLC rho [((1 : F),0), ((-1 : F),10588)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10588) * ((1 : F) * rho 0 + (-1 : F) * rho 10588) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step18 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10589)] * dotLC rho [((1 : F),0), ((-1 : F),10589)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10589) * ((1 : F) * rho 0 + (-1 : F) * rho 10589) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step19 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10590)] * dotLC rho [((1 : F),0), ((-1 : F),10590)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10590) * ((1 : F) * rho 0 + (-1 : F) * rho 10590) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step20 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10591)] * dotLC rho [((1 : F),0), ((-1 : F),10591)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10591) * ((1 : F) * rho 0 + (-1 : F) * rho 10591) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step21 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10592)] * dotLC rho [((1 : F),0), ((-1 : F),10592)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10592) * ((1 : F) * rho 0 + (-1 : F) * rho 10592) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step22 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10593)] * dotLC rho [((1 : F),0), ((-1 : F),10593)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10593) * ((1 : F) * rho 0 + (-1 : F) * rho 10593) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step23 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10594)] * dotLC rho [((1 : F),0), ((-1 : F),10594)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10594) * ((1 : F) * rho 0 + (-1 : F) * rho 10594) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step24 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10595)] * dotLC rho [((1 : F),0), ((-1 : F),10595)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10595) * ((1 : F) * rho 0 + (-1 : F) * rho 10595) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step25 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10596)] * dotLC rho [((1 : F),0), ((-1 : F),10596)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10596) * ((1 : F) * rho 0 + (-1 : F) * rho 10596) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step26 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10597)] * dotLC rho [((1 : F),0), ((-1 : F),10597)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10597) * ((1 : F) * rho 0 + (-1 : F) * rho 10597) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step27 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10598)] * dotLC rho [((1 : F),0), ((-1 : F),10598)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10598) * ((1 : F) * rho 0 + (-1 : F) * rho 10598) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step28 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10599)] * dotLC rho [((1 : F),0), ((-1 : F),10599)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10599) * ((1 : F) * rho 0 + (-1 : F) * rho 10599) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step29 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10600)] * dotLC rho [((1 : F),0), ((-1 : F),10600)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10600) * ((1 : F) * rho 0 + (-1 : F) * rho 10600) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step30 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10601)] * dotLC rho [((1 : F),0), ((-1 : F),10601)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10601) * ((1 : F) * rho 0 + (-1 : F) * rho 10601) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step31 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10602)] * dotLC rho [((1 : F),0), ((-1 : F),10602)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10602) * ((1 : F) * rho 0 + (-1 : F) * rho 10602) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step32 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10603)] * dotLC rho [((1 : F),0), ((-1 : F),10603)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10603) * ((1 : F) * rho 0 + (-1 : F) * rho 10603) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step33 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10604)] * dotLC rho [((1 : F),0), ((-1 : F),10604)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10604) * ((1 : F) * rho 0 + (-1 : F) * rho 10604) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step34 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10605)] * dotLC rho [((1 : F),0), ((-1 : F),10605)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10605) * ((1 : F) * rho 0 + (-1 : F) * rho 10605) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step35 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10606)] * dotLC rho [((1 : F),0), ((-1 : F),10606)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10606) * ((1 : F) * rho 0 + (-1 : F) * rho 10606) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step36 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10607)] * dotLC rho [((1 : F),0), ((-1 : F),10607)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10607) * ((1 : F) * rho 0 + (-1 : F) * rho 10607) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step37 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10608)] * dotLC rho [((1 : F),0), ((-1 : F),10608)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10608) * ((1 : F) * rho 0 + (-1 : F) * rho 10608) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step38 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10609)] * dotLC rho [((1 : F),0), ((-1 : F),10609)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10609) * ((1 : F) * rho 0 + (-1 : F) * rho 10609) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step39 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10610)] * dotLC rho [((1 : F),0), ((-1 : F),10610)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10610) * ((1 : F) * rho 0 + (-1 : F) * rho 10610) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step40 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10611)] * dotLC rho [((1 : F),0), ((-1 : F),10611)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10611) * ((1 : F) * rho 0 + (-1 : F) * rho 10611) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step41 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10612)] * dotLC rho [((1 : F),0), ((-1 : F),10612)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10612) * ((1 : F) * rho 0 + (-1 : F) * rho 10612) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step42 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10613)] * dotLC rho [((1 : F),0), ((-1 : F),10613)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10613) * ((1 : F) * rho 0 + (-1 : F) * rho 10613) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step43 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10614)] * dotLC rho [((1 : F),0), ((-1 : F),10614)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10614) * ((1 : F) * rho 0 + (-1 : F) * rho 10614) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step44 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10615)] * dotLC rho [((1 : F),0), ((-1 : F),10615)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10615) * ((1 : F) * rho 0 + (-1 : F) * rho 10615) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step45 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10616)] * dotLC rho [((1 : F),0), ((-1 : F),10616)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10616) * ((1 : F) * rho 0 + (-1 : F) * rho 10616) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step46 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10617)] * dotLC rho [((1 : F),0), ((-1 : F),10617)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10617) * ((1 : F) * rho 0 + (-1 : F) * rho 10617) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step47 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10618)] * dotLC rho [((1 : F),0), ((-1 : F),10618)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10618) * ((1 : F) * rho 0 + (-1 : F) * rho 10618) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step48 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10619)] * dotLC rho [((1 : F),0), ((-1 : F),10619)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10619) * ((1 : F) * rho 0 + (-1 : F) * rho 10619) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step49 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10620)] * dotLC rho [((1 : F),0), ((-1 : F),10620)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10620) * ((1 : F) * rho 0 + (-1 : F) * rho 10620) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step50 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10621)] * dotLC rho [((1 : F),0), ((-1 : F),10621)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10621) * ((1 : F) * rho 0 + (-1 : F) * rho 10621) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step51 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10622)] * dotLC rho [((1 : F),0), ((-1 : F),10622)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10622) * ((1 : F) * rho 0 + (-1 : F) * rho 10622) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step52 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10623)] * dotLC rho [((1 : F),0), ((-1 : F),10623)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10623) * ((1 : F) * rho 0 + (-1 : F) * rho 10623) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step53 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10624)] * dotLC rho [((1 : F),0), ((-1 : F),10624)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10624) * ((1 : F) * rho 0 + (-1 : F) * rho 10624) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step54 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10625)] * dotLC rho [((1 : F),0), ((-1 : F),10625)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10625) * ((1 : F) * rho 0 + (-1 : F) * rho 10625) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step55 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10626)] * dotLC rho [((1 : F),0), ((-1 : F),10626)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10626) * ((1 : F) * rho 0 + (-1 : F) * rho 10626) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step56 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10627)] * dotLC rho [((1 : F),0), ((-1 : F),10627)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10627) * ((1 : F) * rho 0 + (-1 : F) * rho 10627) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step57 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10628)] * dotLC rho [((1 : F),0), ((-1 : F),10628)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10628) * ((1 : F) * rho 0 + (-1 : F) * rho 10628) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step58 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10629)] * dotLC rho [((1 : F),0), ((-1 : F),10629)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10629) * ((1 : F) * rho 0 + (-1 : F) * rho 10629) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step59 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10630)] * dotLC rho [((1 : F),0), ((-1 : F),10630)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10630) * ((1 : F) * rho 0 + (-1 : F) * rho 10630) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step60 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10631)] * dotLC rho [((1 : F),0), ((-1 : F),10631)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10631) * ((1 : F) * rho 0 + (-1 : F) * rho 10631) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step61 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10632)] * dotLC rho [((1 : F),0), ((-1 : F),10632)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10632) * ((1 : F) * rho 0 + (-1 : F) * rho 10632) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step62 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10633)] * dotLC rho [((1 : F),0), ((-1 : F),10633)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10633) * ((1 : F) * rho 0 + (-1 : F) * rho 10633) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step63 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10634)] * dotLC rho [((1 : F),0), ((-1 : F),10634)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10634) * ((1 : F) * rho 0 + (-1 : F) * rho 10634) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step64 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10635)] * dotLC rho [((1 : F),0), ((-1 : F),10635)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10635) * ((1 : F) * rho 0 + (-1 : F) * rho 10635) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step65 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10636)] * dotLC rho [((1 : F),0), ((-1 : F),10636)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10636) * ((1 : F) * rho 0 + (-1 : F) * rho 10636) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step66 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10637)] * dotLC rho [((1 : F),0), ((-1 : F),10637)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10637) * ((1 : F) * rho 0 + (-1 : F) * rho 10637) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step67 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10638)] * dotLC rho [((1 : F),0), ((-1 : F),10638)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10638) * ((1 : F) * rho 0 + (-1 : F) * rho 10638) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step68 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10639)] * dotLC rho [((1 : F),0), ((-1 : F),10639)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10639) * ((1 : F) * rho 0 + (-1 : F) * rho 10639) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step69 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10640)] * dotLC rho [((1 : F),0), ((-1 : F),10640)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10640) * ((1 : F) * rho 0 + (-1 : F) * rho 10640) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step70 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10641)] * dotLC rho [((1 : F),0), ((-1 : F),10641)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10641) * ((1 : F) * rho 0 + (-1 : F) * rho 10641) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step71 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10642)] * dotLC rho [((1 : F),0), ((-1 : F),10642)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10642) * ((1 : F) * rho 0 + (-1 : F) * rho 10642) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step72 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10643)] * dotLC rho [((1 : F),0), ((-1 : F),10643)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10643) * ((1 : F) * rho 0 + (-1 : F) * rho 10643) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step73 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10644)] * dotLC rho [((1 : F),0), ((-1 : F),10644)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10644) * ((1 : F) * rho 0 + (-1 : F) * rho 10644) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step74 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10645)] * dotLC rho [((1 : F),0), ((-1 : F),10645)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10645) * ((1 : F) * rho 0 + (-1 : F) * rho 10645) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step75 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10646)] * dotLC rho [((1 : F),0), ((-1 : F),10646)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10646) * ((1 : F) * rho 0 + (-1 : F) * rho 10646) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step76 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10647)] * dotLC rho [((1 : F),0), ((-1 : F),10647)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10647) * ((1 : F) * rho 0 + (-1 : F) * rho 10647) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step77 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10648)] * dotLC rho [((1 : F),0), ((-1 : F),10648)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10648) * ((1 : F) * rho 0 + (-1 : F) * rho 10648) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step78 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10649)] * dotLC rho [((1 : F),0), ((-1 : F),10649)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10649) * ((1 : F) * rho 0 + (-1 : F) * rho 10649) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step79 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10650)] * dotLC rho [((1 : F),0), ((-1 : F),10650)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10650) * ((1 : F) * rho 0 + (-1 : F) * rho 10650) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step80 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10651)] * dotLC rho [((1 : F),0), ((-1 : F),10651)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10651) * ((1 : F) * rho 0 + (-1 : F) * rho 10651) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step81 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10652)] * dotLC rho [((1 : F),0), ((-1 : F),10652)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10652) * ((1 : F) * rho 0 + (-1 : F) * rho 10652) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step82 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10653)] * dotLC rho [((1 : F),0), ((-1 : F),10653)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10653) * ((1 : F) * rho 0 + (-1 : F) * rho 10653) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step83 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10654)] * dotLC rho [((1 : F),0), ((-1 : F),10654)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10654) * ((1 : F) * rho 0 + (-1 : F) * rho 10654) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step84 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10655)] * dotLC rho [((1 : F),0), ((-1 : F),10655)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10655) * ((1 : F) * rho 0 + (-1 : F) * rho 10655) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step85 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10656)] * dotLC rho [((1 : F),0), ((-1 : F),10656)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10656) * ((1 : F) * rho 0 + (-1 : F) * rho 10656) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step86 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10657)] * dotLC rho [((1 : F),0), ((-1 : F),10657)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10657) * ((1 : F) * rho 0 + (-1 : F) * rho 10657) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step87 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10658)] * dotLC rho [((1 : F),0), ((-1 : F),10658)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10658) * ((1 : F) * rho 0 + (-1 : F) * rho 10658) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step88 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10659)] * dotLC rho [((1 : F),0), ((-1 : F),10659)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10659) * ((1 : F) * rho 0 + (-1 : F) * rho 10659) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step89 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10660)] * dotLC rho [((1 : F),0), ((-1 : F),10660)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10660) * ((1 : F) * rho 0 + (-1 : F) * rho 10660) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step90 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10661)] * dotLC rho [((1 : F),0), ((-1 : F),10661)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10661) * ((1 : F) * rho 0 + (-1 : F) * rho 10661) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step91 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10662)] * dotLC rho [((1 : F),0), ((-1 : F),10662)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10662) * ((1 : F) * rho 0 + (-1 : F) * rho 10662) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step92 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10663)] * dotLC rho [((1 : F),0), ((-1 : F),10663)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10663) * ((1 : F) * rho 0 + (-1 : F) * rho 10663) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step93 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10664)] * dotLC rho [((1 : F),0), ((-1 : F),10664)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10664) * ((1 : F) * rho 0 + (-1 : F) * rho 10664) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step94 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10665)] * dotLC rho [((1 : F),0), ((-1 : F),10665)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10665) * ((1 : F) * rho 0 + (-1 : F) * rho 10665) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step95 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10666)] * dotLC rho [((1 : F),0), ((-1 : F),10666)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10666) * ((1 : F) * rho 0 + (-1 : F) * rho 10666) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step96 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10667)] * dotLC rho [((1 : F),0), ((-1 : F),10667)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10667) * ((1 : F) * rho 0 + (-1 : F) * rho 10667) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step97 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10668)] * dotLC rho [((1 : F),0), ((-1 : F),10668)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10668) * ((1 : F) * rho 0 + (-1 : F) * rho 10668) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step98 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10669)] * dotLC rho [((1 : F),0), ((-1 : F),10669)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10669) * ((1 : F) * rho 0 + (-1 : F) * rho 10669) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step99 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10670)] * dotLC rho [((1 : F),0), ((-1 : F),10670)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10670) * ((1 : F) * rho 0 + (-1 : F) * rho 10670) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step100 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10671)] * dotLC rho [((1 : F),0), ((-1 : F),10671)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10671) * ((1 : F) * rho 0 + (-1 : F) * rho 10671) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step101 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10672)] * dotLC rho [((1 : F),0), ((-1 : F),10672)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10672) * ((1 : F) * rho 0 + (-1 : F) * rho 10672) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step102 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10673)] * dotLC rho [((1 : F),0), ((-1 : F),10673)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10673) * ((1 : F) * rho 0 + (-1 : F) * rho 10673) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step103 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10674)] * dotLC rho [((1 : F),0), ((-1 : F),10674)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10674) * ((1 : F) * rho 0 + (-1 : F) * rho 10674) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step104 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10675)] * dotLC rho [((1 : F),0), ((-1 : F),10675)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10675) * ((1 : F) * rho 0 + (-1 : F) * rho 10675) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step105 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10676)] * dotLC rho [((1 : F),0), ((-1 : F),10676)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10676) * ((1 : F) * rho 0 + (-1 : F) * rho 10676) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step106 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10677)] * dotLC rho [((1 : F),0), ((-1 : F),10677)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10677) * ((1 : F) * rho 0 + (-1 : F) * rho 10677) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step107 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10678)] * dotLC rho [((1 : F),0), ((-1 : F),10678)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10678) * ((1 : F) * rho 0 + (-1 : F) * rho 10678) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step108 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10679)] * dotLC rho [((1 : F),0), ((-1 : F),10679)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10679) * ((1 : F) * rho 0 + (-1 : F) * rho 10679) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step109 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10680)] * dotLC rho [((1 : F),0), ((-1 : F),10680)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10680) * ((1 : F) * rho 0 + (-1 : F) * rho 10680) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step110 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10681)] * dotLC rho [((1 : F),0), ((-1 : F),10681)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10681) * ((1 : F) * rho 0 + (-1 : F) * rho 10681) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step111 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10682)] * dotLC rho [((1 : F),0), ((-1 : F),10682)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10682) * ((1 : F) * rho 0 + (-1 : F) * rho 10682) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step112 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10683)] * dotLC rho [((1 : F),0), ((-1 : F),10683)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10683) * ((1 : F) * rho 0 + (-1 : F) * rho 10683) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step113 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10684)] * dotLC rho [((1 : F),0), ((-1 : F),10684)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10684) * ((1 : F) * rho 0 + (-1 : F) * rho 10684) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step114 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10685)] * dotLC rho [((1 : F),0), ((-1 : F),10685)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10685) * ((1 : F) * rho 0 + (-1 : F) * rho 10685) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step115 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10686)] * dotLC rho [((1 : F),0), ((-1 : F),10686)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10686) * ((1 : F) * rho 0 + (-1 : F) * rho 10686) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step116 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10687)] * dotLC rho [((1 : F),0), ((-1 : F),10687)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10687) * ((1 : F) * rho 0 + (-1 : F) * rho 10687) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step117 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10688)] * dotLC rho [((1 : F),0), ((-1 : F),10688)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10688) * ((1 : F) * rho 0 + (-1 : F) * rho 10688) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step118 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10689)] * dotLC rho [((1 : F),0), ((-1 : F),10689)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10689) * ((1 : F) * rho 0 + (-1 : F) * rho 10689) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step119 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10690)] * dotLC rho [((1 : F),0), ((-1 : F),10690)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10690) * ((1 : F) * rho 0 + (-1 : F) * rho 10690) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step120 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10691)] * dotLC rho [((1 : F),0), ((-1 : F),10691)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10691) * ((1 : F) * rho 0 + (-1 : F) * rho 10691) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step121 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10692)] * dotLC rho [((1 : F),0), ((-1 : F),10692)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10692) * ((1 : F) * rho 0 + (-1 : F) * rho 10692) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step122 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10693)] * dotLC rho [((1 : F),0), ((-1 : F),10693)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10693) * ((1 : F) * rho 0 + (-1 : F) * rho 10693) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step123 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10694)] * dotLC rho [((1 : F),0), ((-1 : F),10694)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10694) * ((1 : F) * rho 0 + (-1 : F) * rho 10694) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step124 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10695)] * dotLC rho [((1 : F),0), ((-1 : F),10695)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10695) * ((1 : F) * rho 0 + (-1 : F) * rho 10695) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step125 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10696)] * dotLC rho [((1 : F),0), ((-1 : F),10696)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10696) * ((1 : F) * rho 0 + (-1 : F) * rho 10696) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step126 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10697)] * dotLC rho [((1 : F),0), ((-1 : F),10697)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10697) * ((1 : F) * rho 0 + (-1 : F) * rho 10697) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step127 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10698)] * dotLC rho [((1 : F),0), ((-1 : F),10698)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10698) * ((1 : F) * rho 0 + (-1 : F) * rho 10698) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step128 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10699)] * dotLC rho [((1 : F),0), ((-1 : F),10699)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10699) * ((1 : F) * rho 0 + (-1 : F) * rho 10699) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step129 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10700)] * dotLC rho [((1 : F),0), ((-1 : F),10700)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10700) * ((1 : F) * rho 0 + (-1 : F) * rho 10700) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step130 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10701)] * dotLC rho [((1 : F),0), ((-1 : F),10701)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10701) * ((1 : F) * rho 0 + (-1 : F) * rho 10701) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step131 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10702)] * dotLC rho [((1 : F),0), ((-1 : F),10702)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10702) * ((1 : F) * rho 0 + (-1 : F) * rho 10702) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step132 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10703)] * dotLC rho [((1 : F),0), ((-1 : F),10703)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10703) * ((1 : F) * rho 0 + (-1 : F) * rho 10703) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step133 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10704)] * dotLC rho [((1 : F),0), ((-1 : F),10704)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10704) * ((1 : F) * rho 0 + (-1 : F) * rho 10704) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step134 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10705)] * dotLC rho [((1 : F),0), ((-1 : F),10705)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10705) * ((1 : F) * rho 0 + (-1 : F) * rho 10705) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step135 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10706)] * dotLC rho [((1 : F),0), ((-1 : F),10706)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10706) * ((1 : F) * rho 0 + (-1 : F) * rho 10706) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step136 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10707)] * dotLC rho [((1 : F),0), ((-1 : F),10707)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10707) * ((1 : F) * rho 0 + (-1 : F) * rho 10707) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step137 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10708)] * dotLC rho [((1 : F),0), ((-1 : F),10708)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10708) * ((1 : F) * rho 0 + (-1 : F) * rho 10708) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step138 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10709)] * dotLC rho [((1 : F),0), ((-1 : F),10709)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10709) * ((1 : F) * rho 0 + (-1 : F) * rho 10709) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step139 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10710)] * dotLC rho [((1 : F),0), ((-1 : F),10710)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10710) * ((1 : F) * rho 0 + (-1 : F) * rho 10710) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step140 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10711)] * dotLC rho [((1 : F),0), ((-1 : F),10711)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10711) * ((1 : F) * rho 0 + (-1 : F) * rho 10711) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step141 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10712)] * dotLC rho [((1 : F),0), ((-1 : F),10712)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10712) * ((1 : F) * rho 0 + (-1 : F) * rho 10712) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step142 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10713)] * dotLC rho [((1 : F),0), ((-1 : F),10713)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10713) * ((1 : F) * rho 0 + (-1 : F) * rho 10713) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step143 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10714)] * dotLC rho [((1 : F),0), ((-1 : F),10714)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10714) * ((1 : F) * rho 0 + (-1 : F) * rho 10714) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step144 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10715)] * dotLC rho [((1 : F),0), ((-1 : F),10715)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10715) * ((1 : F) * rho 0 + (-1 : F) * rho 10715) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step145 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10716)] * dotLC rho [((1 : F),0), ((-1 : F),10716)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10716) * ((1 : F) * rho 0 + (-1 : F) * rho 10716) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step146 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10717)] * dotLC rho [((1 : F),0), ((-1 : F),10717)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10717) * ((1 : F) * rho 0 + (-1 : F) * rho 10717) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step147 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10718)] * dotLC rho [((1 : F),0), ((-1 : F),10718)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10718) * ((1 : F) * rho 0 + (-1 : F) * rho 10718) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step148 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10719)] * dotLC rho [((1 : F),0), ((-1 : F),10719)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10719) * ((1 : F) * rho 0 + (-1 : F) * rho 10719) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step149 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10720)] * dotLC rho [((1 : F),0), ((-1 : F),10720)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10720) * ((1 : F) * rho 0 + (-1 : F) * rho 10720) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step150 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10721)] * dotLC rho [((1 : F),0), ((-1 : F),10721)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10721) * ((1 : F) * rho 0 + (-1 : F) * rho 10721) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step151 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10722)] * dotLC rho [((1 : F),0), ((-1 : F),10722)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10722) * ((1 : F) * rho 0 + (-1 : F) * rho 10722) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step152 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10723)] * dotLC rho [((1 : F),0), ((-1 : F),10723)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10723) * ((1 : F) * rho 0 + (-1 : F) * rho 10723) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step153 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10724)] * dotLC rho [((1 : F),0), ((-1 : F),10724)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10724) * ((1 : F) * rho 0 + (-1 : F) * rho 10724) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step154 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10725)] * dotLC rho [((1 : F),0), ((-1 : F),10725)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10725) * ((1 : F) * rho 0 + (-1 : F) * rho 10725) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step155 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10726)] * dotLC rho [((1 : F),0), ((-1 : F),10726)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10726) * ((1 : F) * rho 0 + (-1 : F) * rho 10726) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step156 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10727)] * dotLC rho [((1 : F),0), ((-1 : F),10727)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10727) * ((1 : F) * rho 0 + (-1 : F) * rho 10727) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step157 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10728)] * dotLC rho [((1 : F),0), ((-1 : F),10728)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10728) * ((1 : F) * rho 0 + (-1 : F) * rho 10728) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step158 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10729)] * dotLC rho [((1 : F),0), ((-1 : F),10729)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10729) * ((1 : F) * rho 0 + (-1 : F) * rho 10729) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step159 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10730)] * dotLC rho [((1 : F),0), ((-1 : F),10730)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10730) * ((1 : F) * rho 0 + (-1 : F) * rho 10730) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step160 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10731)] * dotLC rho [((1 : F),0), ((-1 : F),10731)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10731) * ((1 : F) * rho 0 + (-1 : F) * rho 10731) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step161 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10732)] * dotLC rho [((1 : F),0), ((-1 : F),10732)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10732) * ((1 : F) * rho 0 + (-1 : F) * rho 10732) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step162 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10733)] * dotLC rho [((1 : F),0), ((-1 : F),10733)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10733) * ((1 : F) * rho 0 + (-1 : F) * rho 10733) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step163 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10734)] * dotLC rho [((1 : F),0), ((-1 : F),10734)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10734) * ((1 : F) * rho 0 + (-1 : F) * rho 10734) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step164 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10735)] * dotLC rho [((1 : F),0), ((-1 : F),10735)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10735) * ((1 : F) * rho 0 + (-1 : F) * rho 10735) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step165 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10736)] * dotLC rho [((1 : F),0), ((-1 : F),10736)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10736) * ((1 : F) * rho 0 + (-1 : F) * rho 10736) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step166 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10737)] * dotLC rho [((1 : F),0), ((-1 : F),10737)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10737) * ((1 : F) * rho 0 + (-1 : F) * rho 10737) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step167 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10738)] * dotLC rho [((1 : F),0), ((-1 : F),10738)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10738) * ((1 : F) * rho 0 + (-1 : F) * rho 10738) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step168 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10739)] * dotLC rho [((1 : F),0), ((-1 : F),10739)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10739) * ((1 : F) * rho 0 + (-1 : F) * rho 10739) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step169 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10740)] * dotLC rho [((1 : F),0), ((-1 : F),10740)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10740) * ((1 : F) * rho 0 + (-1 : F) * rho 10740) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step170 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10741)] * dotLC rho [((1 : F),0), ((-1 : F),10741)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10741) * ((1 : F) * rho 0 + (-1 : F) * rho 10741) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step171 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10742)] * dotLC rho [((1 : F),0), ((-1 : F),10742)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10742) * ((1 : F) * rho 0 + (-1 : F) * rho 10742) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step172 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10743)] * dotLC rho [((1 : F),0), ((-1 : F),10743)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10743) * ((1 : F) * rho 0 + (-1 : F) * rho 10743) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step173 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10744)] * dotLC rho [((1 : F),0), ((-1 : F),10744)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10744) * ((1 : F) * rho 0 + (-1 : F) * rho 10744) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step174 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10745)] * dotLC rho [((1 : F),0), ((-1 : F),10745)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10745) * ((1 : F) * rho 0 + (-1 : F) * rho 10745) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step175 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10746)] * dotLC rho [((1 : F),0), ((-1 : F),10746)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10746) * ((1 : F) * rho 0 + (-1 : F) * rho 10746) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step176 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10747)] * dotLC rho [((1 : F),0), ((-1 : F),10747)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10747) * ((1 : F) * rho 0 + (-1 : F) * rho 10747) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step177 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10748)] * dotLC rho [((1 : F),0), ((-1 : F),10748)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10748) * ((1 : F) * rho 0 + (-1 : F) * rho 10748) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step178 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10749)] * dotLC rho [((1 : F),0), ((-1 : F),10749)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10749) * ((1 : F) * rho 0 + (-1 : F) * rho 10749) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step179 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10750)] * dotLC rho [((1 : F),0), ((-1 : F),10750)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10750) * ((1 : F) * rho 0 + (-1 : F) * rho 10750) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step180 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10751)] * dotLC rho [((1 : F),0), ((-1 : F),10751)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10751) * ((1 : F) * rho 0 + (-1 : F) * rho 10751) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step181 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10752)] * dotLC rho [((1 : F),0), ((-1 : F),10752)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10752) * ((1 : F) * rho 0 + (-1 : F) * rho 10752) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step182 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10753)] * dotLC rho [((1 : F),0), ((-1 : F),10753)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10753) * ((1 : F) * rho 0 + (-1 : F) * rho 10753) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step183 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10754)] * dotLC rho [((1 : F),0), ((-1 : F),10754)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10754) * ((1 : F) * rho 0 + (-1 : F) * rho 10754) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step184 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10755)] * dotLC rho [((1 : F),0), ((-1 : F),10755)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10755) * ((1 : F) * rho 0 + (-1 : F) * rho 10755) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step185 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10756)] * dotLC rho [((1 : F),0), ((-1 : F),10756)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10756) * ((1 : F) * rho 0 + (-1 : F) * rho 10756) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step186 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10757)] * dotLC rho [((1 : F),0), ((-1 : F),10757)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10757) * ((1 : F) * rho 0 + (-1 : F) * rho 10757) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step187 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10758)] * dotLC rho [((1 : F),0), ((-1 : F),10758)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10758) * ((1 : F) * rho 0 + (-1 : F) * rho 10758) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step188 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10759)] * dotLC rho [((1 : F),0), ((-1 : F),10759)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10759) * ((1 : F) * rho 0 + (-1 : F) * rho 10759) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step189 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10760)] * dotLC rho [((1 : F),0), ((-1 : F),10760)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10760) * ((1 : F) * rho 0 + (-1 : F) * rho 10760) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step190 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10761)] * dotLC rho [((1 : F),0), ((-1 : F),10761)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10761) * ((1 : F) * rho 0 + (-1 : F) * rho 10761) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step191 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10762)] * dotLC rho [((1 : F),0), ((-1 : F),10762)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10762) * ((1 : F) * rho 0 + (-1 : F) * rho 10762) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step192 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10763)] * dotLC rho [((1 : F),0), ((-1 : F),10763)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10763) * ((1 : F) * rho 0 + (-1 : F) * rho 10763) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step193 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10764)] * dotLC rho [((1 : F),0), ((-1 : F),10764)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10764) * ((1 : F) * rho 0 + (-1 : F) * rho 10764) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step194 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10765)] * dotLC rho [((1 : F),0), ((-1 : F),10765)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10765) * ((1 : F) * rho 0 + (-1 : F) * rho 10765) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step195 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10766)] * dotLC rho [((1 : F),0), ((-1 : F),10766)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10766) * ((1 : F) * rho 0 + (-1 : F) * rho 10766) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step196 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10767)] * dotLC rho [((1 : F),0), ((-1 : F),10767)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10767) * ((1 : F) * rho 0 + (-1 : F) * rho 10767) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step197 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10768)] * dotLC rho [((1 : F),0), ((-1 : F),10768)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10768) * ((1 : F) * rho 0 + (-1 : F) * rho 10768) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step198 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10769)] * dotLC rho [((1 : F),0), ((-1 : F),10769)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10769) * ((1 : F) * rho 0 + (-1 : F) * rho 10769) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step199 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10770)] * dotLC rho [((1 : F),0), ((-1 : F),10770)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10770) * ((1 : F) * rho 0 + (-1 : F) * rho 10770) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step200 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10771)] * dotLC rho [((1 : F),0), ((-1 : F),10771)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10771) * ((1 : F) * rho 0 + (-1 : F) * rho 10771) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step201 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10772)] * dotLC rho [((1 : F),0), ((-1 : F),10772)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10772) * ((1 : F) * rho 0 + (-1 : F) * rho 10772) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step202 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10773)] * dotLC rho [((1 : F),0), ((-1 : F),10773)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10773) * ((1 : F) * rho 0 + (-1 : F) * rho 10773) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step203 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10774)] * dotLC rho [((1 : F),0), ((-1 : F),10774)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10774) * ((1 : F) * rho 0 + (-1 : F) * rho 10774) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step204 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10775)] * dotLC rho [((1 : F),0), ((-1 : F),10775)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10775) * ((1 : F) * rho 0 + (-1 : F) * rho 10775) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step205 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10776)] * dotLC rho [((1 : F),0), ((-1 : F),10776)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10776) * ((1 : F) * rho 0 + (-1 : F) * rho 10776) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step206 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10777)] * dotLC rho [((1 : F),0), ((-1 : F),10777)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10777) * ((1 : F) * rho 0 + (-1 : F) * rho 10777) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step207 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10778)] * dotLC rho [((1 : F),0), ((-1 : F),10778)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10778) * ((1 : F) * rho 0 + (-1 : F) * rho 10778) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step208 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10779)] * dotLC rho [((1 : F),0), ((-1 : F),10779)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10779) * ((1 : F) * rho 0 + (-1 : F) * rho 10779) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step209 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10780)] * dotLC rho [((1 : F),0), ((-1 : F),10780)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10780) * ((1 : F) * rho 0 + (-1 : F) * rho 10780) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step210 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10781)] * dotLC rho [((1 : F),0), ((-1 : F),10781)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10781) * ((1 : F) * rho 0 + (-1 : F) * rho 10781) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step211 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10782)] * dotLC rho [((1 : F),0), ((-1 : F),10782)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10782) * ((1 : F) * rho 0 + (-1 : F) * rho 10782) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step212 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10783)] * dotLC rho [((1 : F),0), ((-1 : F),10783)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10783) * ((1 : F) * rho 0 + (-1 : F) * rho 10783) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step213 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10784)] * dotLC rho [((1 : F),0), ((-1 : F),10784)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10784) * ((1 : F) * rho 0 + (-1 : F) * rho 10784) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step214 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10785)] * dotLC rho [((1 : F),0), ((-1 : F),10785)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10785) * ((1 : F) * rho 0 + (-1 : F) * rho 10785) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step215 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10786)] * dotLC rho [((1 : F),0), ((-1 : F),10786)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10786) * ((1 : F) * rho 0 + (-1 : F) * rho 10786) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step216 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10787)] * dotLC rho [((1 : F),0), ((-1 : F),10787)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10787) * ((1 : F) * rho 0 + (-1 : F) * rho 10787) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step217 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10788)] * dotLC rho [((1 : F),0), ((-1 : F),10788)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10788) * ((1 : F) * rho 0 + (-1 : F) * rho 10788) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step218 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10789)] * dotLC rho [((1 : F),0), ((-1 : F),10789)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10789) * ((1 : F) * rho 0 + (-1 : F) * rho 10789) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step219 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10790)] * dotLC rho [((1 : F),0), ((-1 : F),10790)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10790) * ((1 : F) * rho 0 + (-1 : F) * rho 10790) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step220 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10791)] * dotLC rho [((1 : F),0), ((-1 : F),10791)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10791) * ((1 : F) * rho 0 + (-1 : F) * rho 10791) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step221 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10792)] * dotLC rho [((1 : F),0), ((-1 : F),10792)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10792) * ((1 : F) * rho 0 + (-1 : F) * rho 10792) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step222 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10793)] * dotLC rho [((1 : F),0), ((-1 : F),10793)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10793) * ((1 : F) * rho 0 + (-1 : F) * rho 10793) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step223 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10794)] * dotLC rho [((1 : F),0), ((-1 : F),10794)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10794) * ((1 : F) * rho 0 + (-1 : F) * rho 10794) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step224 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10795)] * dotLC rho [((1 : F),0), ((-1 : F),10795)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10795) * ((1 : F) * rho 0 + (-1 : F) * rho 10795) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step225 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10796)] * dotLC rho [((1 : F),0), ((-1 : F),10796)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10796) * ((1 : F) * rho 0 + (-1 : F) * rho 10796) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step226 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10797)] * dotLC rho [((1 : F),0), ((-1 : F),10797)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10797) * ((1 : F) * rho 0 + (-1 : F) * rho 10797) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step227 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10798)] * dotLC rho [((1 : F),0), ((-1 : F),10798)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10798) * ((1 : F) * rho 0 + (-1 : F) * rho 10798) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step228 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10799)] * dotLC rho [((1 : F),0), ((-1 : F),10799)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10799) * ((1 : F) * rho 0 + (-1 : F) * rho 10799) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step229 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10800)] * dotLC rho [((1 : F),0), ((-1 : F),10800)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10800) * ((1 : F) * rho 0 + (-1 : F) * rho 10800) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step230 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10801)] * dotLC rho [((1 : F),0), ((-1 : F),10801)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10801) * ((1 : F) * rho 0 + (-1 : F) * rho 10801) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step231 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10802)] * dotLC rho [((1 : F),0), ((-1 : F),10802)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10802) * ((1 : F) * rho 0 + (-1 : F) * rho 10802) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step232 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10803)] * dotLC rho [((1 : F),0), ((-1 : F),10803)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10803) * ((1 : F) * rho 0 + (-1 : F) * rho 10803) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step233 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10804)] * dotLC rho [((1 : F),0), ((-1 : F),10804)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10804) * ((1 : F) * rho 0 + (-1 : F) * rho 10804) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step234 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10805)] * dotLC rho [((1 : F),0), ((-1 : F),10805)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10805) * ((1 : F) * rho 0 + (-1 : F) * rho 10805) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step235 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10806)] * dotLC rho [((1 : F),0), ((-1 : F),10806)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10806) * ((1 : F) * rho 0 + (-1 : F) * rho 10806) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step236 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10807)] * dotLC rho [((1 : F),0), ((-1 : F),10807)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10807) * ((1 : F) * rho 0 + (-1 : F) * rho 10807) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step237 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10808)] * dotLC rho [((1 : F),0), ((-1 : F),10808)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10808) * ((1 : F) * rho 0 + (-1 : F) * rho 10808) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step238 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10809)] * dotLC rho [((1 : F),0), ((-1 : F),10809)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10809) * ((1 : F) * rho 0 + (-1 : F) * rho 10809) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step239 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10810)] * dotLC rho [((1 : F),0), ((-1 : F),10810)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10810) * ((1 : F) * rho 0 + (-1 : F) * rho 10810) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step240 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10811)] * dotLC rho [((1 : F),0), ((-1 : F),10811)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10811) * ((1 : F) * rho 0 + (-1 : F) * rho 10811) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step241 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10812)] * dotLC rho [((1 : F),0), ((-1 : F),10812)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10812) * ((1 : F) * rho 0 + (-1 : F) * rho 10812) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step242 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10813)] * dotLC rho [((1 : F),0), ((-1 : F),10813)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10813) * ((1 : F) * rho 0 + (-1 : F) * rho 10813) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step243 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10814)] * dotLC rho [((1 : F),0), ((-1 : F),10814)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10814) * ((1 : F) * rho 0 + (-1 : F) * rho 10814) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step244 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10815)] * dotLC rho [((1 : F),0), ((-1 : F),10815)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10815) * ((1 : F) * rho 0 + (-1 : F) * rho 10815) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step245 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10816)] * dotLC rho [((1 : F),0), ((-1 : F),10816)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10816) * ((1 : F) * rho 0 + (-1 : F) * rho 10816) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step246 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10817)] * dotLC rho [((1 : F),0), ((-1 : F),10817)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10817) * ((1 : F) * rho 0 + (-1 : F) * rho 10817) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step247 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10818)] * dotLC rho [((1 : F),0), ((-1 : F),10818)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10818) * ((1 : F) * rho 0 + (-1 : F) * rho 10818) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step248 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10819)] * dotLC rho [((1 : F),0), ((-1 : F),10819)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10819) * ((1 : F) * rho 0 + (-1 : F) * rho 10819) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step249 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10820)] * dotLC rho [((1 : F),0), ((-1 : F),10820)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10820) * ((1 : F) * rho 0 + (-1 : F) * rho 10820) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step250 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10821)] * dotLC rho [((1 : F),0), ((-1 : F),10821)] = dotLC rho [((0 : F),0)]) :
    ((1 : F) * rho 10821) * ((1 : F) * rho 0 + (-1 : F) * rho 10821) = ((0 : F) * rho 0) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step503 (rho : Nat → F)
    (hraw : dotLC rho [((7666314259614842119075217875095661764022741596306956002104179288686713480750 : F),10571)] * dotLC rho [((2819826005777211937120848652816998614177620600541178042063871942550730439065 : F),0), ((890989236521567965256199269370229413142501078177866273656858537885493191408 : F),10571)] = dotLC rho [((1 : F),10822)]) :
    ((7666314259614842119075217875095661764022741596306956002104179288686713480750 : F) * rho 10571) * ((2819826005777211937120848652816998614177620600541178042063871942550730439065 : F) * rho 0 + (890989236521567965256199269370229413142501078177866273656858537885493191408 : F) * rho 10571) = ((1 : F) * rho 10822) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step504 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10823)] * dotLC rho [((1 : F),0), ((1 : F),10822)] = dotLC rho [((2819826005777211937120848652816998614177620600541178042063871942550730439065 : F),0), ((432310032815488429380005658968422224823070211344329836845468487922671009693 : F),10571)]) :
    ((1 : F) * rho 10823) * ((1 : F) * rho 0 + (1 : F) * rho 10822) = ((2819826005777211937120848652816998614177620600541178042063871942550730439065 : F) * rho 0 + (432310032815488429380005658968422224823070211344329836845468487922671009693 : F) * rho 10571) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step505 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10824)] * dotLC rho [((1 : F),0), ((-1 : F),10822)] = dotLC rho [((3389385942610507627059167016978655778640740163498436687682704594713126572823 : F),0), ((7357496755043946632708945428288702189108099325839934949187639837550109708737 : F),10571)]) :
    ((1 : F) * rho 10824) * ((1 : F) * rho 0 + (-1 : F) * rho 10822) = ((3389385942610507627059167016978655778640740163498436687682704594713126572823 : F) * rho 0 + (7357496755043946632708945428288702189108099325839934949187639837550109708737 : F) * rho 10571) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step506 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10572)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((1 : F),10823)] = dotLC rho [((1 : F),10825)]) :
    ((1 : F) * rho 10572) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10823) = ((1 : F) * rho 10825) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step507 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10572)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((1 : F),10824)] = dotLC rho [((1 : F),10826)]) :
    ((1 : F) * rho 10572) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10824) = ((1 : F) * rho 10826) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step508 (rho : Nat → F)
    (hraw : dotLC rho [((1834793207280290867390005895156704156901269454413112280319152067532631523274 : F),10571), ((4386636651797864042993986078645103862843113109085208159654284735976701080790 : F),10825)] * dotLC rho [((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F),0), ((5769242012146389753850892410357177407739480850431346496641029698576054545035 : F),10571), ((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F),10826)] = dotLC rho [((1 : F),10827)]) :
    ((1834793207280290867390005895156704156901269454413112280319152067532631523274 : F) * rho 10571 + (4386636651797864042993986078645103862843113109085208159654284735976701080790 : F) * rho 10825) * ((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F) * rho 0 + (5769242012146389753850892410357177407739480850431346496641029698576054545035 : F) * rho 10571 + (7330628450423064489432474261624781147472176877826994359016384944611204172009 : F) * rho 10826) = ((1 : F) * rho 10827) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step509 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10828)] * dotLC rho [((1 : F),0), ((1 : F),10827)] = dotLC rho [((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F),0), ((2284167861755824501228947791765508483386999817169941504534138944699365803042 : F),10571), ((1583565702359568197341221086206223250785038774182815403763984250508186140476 : F),10825), ((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F),10826)]) :
    ((1 : F) * rho 10828) * ((1 : F) * rho 0 + (1 : F) * rho 10827) = ((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F) * rho 0 + (2284167861755824501228947791765508483386999817169941504534138944699365803042 : F) * rho 10571 + (1583565702359568197341221086206223250785038774182815403763984250508186140476 : F) * rho 10825 + (7330628450423064489432474261624781147472176877826994359016384944611204172009 : F) * rho 10826) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step510 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10829)] * dotLC rho [((1 : F),0), ((-1 : F),10827)] = dotLC rho [((1583565702359568197341221086206223250785038774182815403763984250508186140476 : F),0), ((129268633123684386295389351182018689176304175765961050375746851796553548133 : F),10571), ((7330628450423064489432474261624781147472176877826994359016384944611204172009 : F),10825), ((1583565702359568197341221086206223250785038774182815403763984250508186140476 : F),10826)]) :
    ((1 : F) * rho 10829) * ((1 : F) * rho 0 + (-1 : F) * rho 10827) = ((1583565702359568197341221086206223250785038774182815403763984250508186140476 : F) * rho 0 + (129268633123684386295389351182018689176304175765961050375746851796553548133 : F) * rho 10571 + (7330628450423064489432474261624781147472176877826994359016384944611204172009 : F) * rho 10825 + (1583565702359568197341221086206223250785038774182815403763984250508186140476 : F) * rho 10826) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step511 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10573)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((1 : F),10828)] = dotLC rho [((1 : F),10830)]) :
    ((1 : F) * rho 10573) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (-1 : F) * rho 10825 + (1 : F) * rho 10828) = ((1 : F) * rho 10830) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step512 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10573)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((1 : F),10829)] = dotLC rho [((1 : F),10831)]) :
    ((1 : F) * rho 10573) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (-1 : F) * rho 10826 + (1 : F) * rho 10829) = ((1 : F) * rho 10831) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step513 (rho : Nat → F)
    (hraw : dotLC rho [((6797058648839150029635289459958510155655927949801724905097229005197893694661 : F),10571), ((4375534271212962697728589713170319096553412496036318551690834160728740146236 : F),10825), ((4375534271212962697728589713170319096553412496036318551690834160728740146236 : F),10830)] * dotLC rho [((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),0), ((2139652619118088308876888028905056787644762439560588932992552696397712646249 : F),10571), ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),10826), ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),10831)] = dotLC rho [((1 : F),10832)]) :
    ((6797058648839150029635289459958510155655927949801724905097229005197893694661 : F) * rho 10571 + (4375534271212962697728589713170319096553412496036318551690834160728740146236 : F) * rho 10825 + (4375534271212962697728589713170319096553412496036318551690834160728740146236 : F) * rho 10830) * ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 0 + (2139652619118088308876888028905056787644762439560588932992552696397712646249 : F) * rho 10571 + (2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 10826 + (2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 10831) = ((1 : F) * rho 10832) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step514 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10833)] * dotLC rho [((1 : F),0), ((1 : F),10832)] = dotLC rho [((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),0), ((2742882124174671821370477122350270628889871438239147505621209572275713599605 : F),10571), ((8180361010625165449867524118036403664317257486645755405193705371127132794962 : F),10825), ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),10826), ((8180361010625165449867524118036403664317257486645755405193705371127132794962 : F),10830), ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),10831)]) :
    ((1 : F) * rho 10833) * ((1 : F) * rho 0 + (1 : F) * rho 10832) = ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 0 + (2742882124174671821370477122350270628889871438239147505621209572275713599605 : F) * rho 10571 + (8180361010625165449867524118036403664317257486645755405193705371127132794962 : F) * rho 10825 + (2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 10826 + (8180361010625165449867524118036403664317257486645755405193705371127132794962 : F) * rho 10830 + (2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 10831) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step515 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10834)] * dotLC rho [((1 : F),0), ((-1 : F),10832)] = dotLC rho [((8180361010625165449867524118036403664317257486645755405193705371127132794962 : F),0), ((2292025789201692440597056769487924739173808473639951666424334558890064428903 : F),10571), ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),10825), ((8180361010625165449867524118036403664317257486645755405193705371127132794962 : F),10826), ((2253669643409009747765366505106279809881109946637309378064786961724414984255 : F),10830), ((8180361010625165449867524118036403664317257486645755405193705371127132794962 : F),10831)]) :
    ((1 : F) * rho 10834) * ((1 : F) * rho 0 + (-1 : F) * rho 10832) = ((8180361010625165449867524118036403664317257486645755405193705371127132794962 : F) * rho 0 + (2292025789201692440597056769487924739173808473639951666424334558890064428903 : F) * rho 10571 + (2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 10825 + (8180361010625165449867524118036403664317257486645755405193705371127132794962 : F) * rho 10826 + (2253669643409009747765366505106279809881109946637309378064786961724414984255 : F) * rho 10830 + (8180361010625165449867524118036403664317257486645755405193705371127132794962 : F) * rho 10831) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step516 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10574)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((1 : F),10833)] = dotLC rho [((1 : F),10835)]) :
    ((1 : F) * rho 10574) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (-1 : F) * rho 10825 + (-1 : F) * rho 10830 + (1 : F) * rho 10833) = ((1 : F) * rho 10835) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step517 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10574)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((1 : F),10834)] = dotLC rho [((1 : F),10836)]) :
    ((1 : F) * rho 10574) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (-1 : F) * rho 10826 + (-1 : F) * rho 10831 + (1 : F) * rho 10834) = ((1 : F) * rho 10836) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step518 (rho : Nat → F)
    (hraw : dotLC rho [((1261785949431481827498481460183358115685594855606775744571946470136263733465 : F),10571), ((7170631588916822789082415100026500558340825550332287258404858866719737330603 : F),10825), ((7170631588916822789082415100026500558340825550332287258404858866719737330603 : F),10830), ((7170631588916822789082415100026500558340825550332287258404858866719737330603 : F),10835)] * dotLC rho [((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),0), ((5016981384010441316957462154064291418831022317125242060445294134084510861601 : F),10571), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10826), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10831), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10836)] = dotLC rho [((1 : F),10837)]) :
    ((1261785949431481827498481460183358115685594855606775744571946470136263733465 : F) * rho 10571 + (7170631588916822789082415100026500558340825550332287258404858866719737330603 : F) * rho 10825 + (7170631588916822789082415100026500558340825550332287258404858866719737330603 : F) * rho 10830 + (7170631588916822789082415100026500558340825550332287258404858866719737330603 : F) * rho 10835) * ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F) * rho 0 + (5016981384010441316957462154064291418831022317125242060445294134084510861601 : F) * rho 10571 + (5985374594098040249084986187295834377767382335536098713014150974058873528425 : F) * rho 10826 + (5985374594098040249084986187295834377767382335536098713014150974058873528425 : F) * rho 10831 + (5985374594098040249084986187295834377767382335536098713014150974058873528425 : F) * rho 10836) = ((1 : F) * rho 10837) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step526 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10838)] * dotLC rho [((1 : F),0), ((1 : F),10837)] = dotLC rho [((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),0), ((1405931137631089080511919837134276602405343288272728425904496491391642118434 : F),10571), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10825), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10826), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10830), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10831), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10835), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10836)]) :
    ((1 : F) * rho 10838) * ((1 : F) * rho 0 + (1 : F) * rho 10837) = ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F) * rho 0 + (1 : F) * (dotLC rho [((1405931137631089080511919837134276602405343288272728425904496491391642118434 : F),10571), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10825), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10826), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10830), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10831), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10835), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10836)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step534 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10839)] * dotLC rho [((1 : F),0), ((-1 : F),10837)] = dotLC rho [((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),0), ((8170297209188697796690838862827888789353937251559697058373780804696792635828 : F),10571), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10825), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10826), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10830), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10831), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10835), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10836)]) :
    ((1 : F) * rho 10839) * ((1 : F) * rho 0 + (-1 : F) * rho 10837) = ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F) * rho 0 + (1 : F) * (dotLC rho [((8170297209188697796690838862827888789353937251559697058373780804696792635828 : F),10571), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10825), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10826), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10830), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10831), ((5985374594098040249084986187295834377767382335536098713014150974058873528425 : F),10835), ((5246269736351055855239946375456540150089218132505579618823205171190923359739 : F),10836)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step535 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10575)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((1 : F),10838)] = dotLC rho [((1 : F),10840)]) :
    ((1 : F) * rho 10575) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (-1 : F) * rho 10825 + (-1 : F) * rho 10830 + (-1 : F) * rho 10835 + (1 : F) * rho 10838) = ((1 : F) * rho 10840) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step536 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10575)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((1 : F),10839)] = dotLC rho [((1 : F),10841)]) :
    ((1 : F) * rho 10575) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (-1 : F) * rho 10826 + (-1 : F) * rho 10831 + (-1 : F) * rho 10836 + (1 : F) * rho 10839) = ((1 : F) * rho 10841) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step537 (rho : Nat → F)
    (hraw : dotLC rho [((7699570986038582385232807756011131487898362553501575443870335965318952687161 : F),10571), ((7155238255561475615749980126549282499380750745333704926223150597190127292548 : F),10825), ((7155238255561475615749980126549282499380750745333704926223150597190127292548 : F),10830), ((7155238255561475615749980126549282499380750745333704926223150597190127292548 : F),10835), ((7155238255561475615749980126549282499380750745333704926223150597190127292548 : F),10840)] * dotLC rho [((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),0), ((6913821187164931269417813934571733244787394412944087334351989272530383956759 : F),10571), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10826), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10831), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10836), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10841)] = dotLC rho [((1 : F),10842)]) :
    ((7699570986038582385232807756011131487898362553501575443870335965318952687161 : F) * rho 10571 + (7155238255561475615749980126549282499380750745333704926223150597190127292548 : F) * rho 10825 + (7155238255561475615749980126549282499380750745333704926223150597190127292548 : F) * rho 10830 + (7155238255561475615749980126549282499380750745333704926223150597190127292548 : F) * rho 10835 + (7155238255561475615749980126549282499380750745333704926223150597190127292548 : F) * rho 10840) * ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F) * rho 0 + (6913821187164931269417813934571733244787394412944087334351989272530383956759 : F) * rho 10571 + (4961969869576409136495175787941625024433608057224025954036172390781624818680 : F) * rho 10826 + (4961969869576409136495175787941625024433608057224025954036172390781624818680 : F) * rho 10831 + (4961969869576409136495175787941625024433608057224025954036172390781624818680 : F) * rho 10836 + (4961969869576409136495175787941625024433608057224025954036172390781624818680 : F) * rho 10841) = ((1 : F) * rho 10842) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step547 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10843)] * dotLC rho [((1 : F),0), ((1 : F),10842)] = dotLC rho [((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),0), ((7444672839474762647295424236188986944197504752863855503475997699916583658469 : F),10571), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10825), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10826), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10830), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10831), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10835), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10836), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10840), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10841)]) :
    ((1 : F) * rho 10843) * ((1 : F) * rho 0 + (1 : F) * rho 10842) = ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F) * rho 0 + (1 : F) * (dotLC rho [((7444672839474762647295424236188986944197504752863855503475997699916583658469 : F),10571), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10825), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10826), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10830), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10831), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10835), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10836), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10840), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10841)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step557 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10844)] * dotLC rho [((1 : F),0), ((-1 : F),10842)] = dotLC rho [((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),0), ((5053514921647297208700836866773830936995669225056783084895674121596237598235 : F),10571), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10825), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10826), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10830), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10831), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10835), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10836), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10840), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10841)]) :
    ((1 : F) * rho 10844) * ((1 : F) * rho 0 + (-1 : F) * rho 10842) = ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F) * rho 0 + (1 : F) * (dotLC rho [((5053514921647297208700836866773830936995669225056783084895674121596237598235 : F),10571), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10825), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10826), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10830), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10831), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10835), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10836), ((4961969869576409136495175787941625024433608057224025954036172390781624818680 : F),10840), ((7409791087136955676886837493511303406370577288614234640501354455073924068438 : F),10841)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step558 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10576)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((1 : F),10843)] = dotLC rho [((1 : F),10845)]) :
    ((1 : F) * rho 10576) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (-1 : F) * rho 10825 + (-1 : F) * rho 10830 + (-1 : F) * rho 10835 + (-1 : F) * rho 10840 + (1 : F) * rho 10843) = ((1 : F) * rho 10845) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step559 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10576)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((1 : F),10844)] = dotLC rho [((1 : F),10846)]) :
    ((1 : F) * rho 10576) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (-1 : F) * rho 10826 + (-1 : F) * rho 10831 + (-1 : F) * rho 10836 + (-1 : F) * rho 10841 + (1 : F) * rho 10844) = ((1 : F) * rho 10846) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step560 (rho : Nat → F)
    (hraw : dotLC rho [((201043605247302400568675958248027321107194357606698870423568244022018247329 : F),10571), ((7125073694427844070494111794506092296305327843630558036396481404085874312743 : F),10825), ((7125073694427844070494111794506092296305327843630558036396481404085874312743 : F),10830), ((7125073694427844070494111794506092296305327843630558036396481404085874312743 : F),10835), ((7125073694427844070494111794506092296305327843630558036396481404085874312743 : F),10840), ((7125073694427844070494111794506092296305327843630558036396481404085874312743 : F),10845)] * dotLC rho [((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),0), ((5599663625781238014932145740178074139478730320408256423279552692005764982371 : F),10571), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10826), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10831), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10836), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10841), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10846)] = dotLC rho [((1 : F),10847)]) :
    ((201043605247302400568675958248027321107194357606698870423568244022018247329 : F) * rho 10571 + (7125073694427844070494111794506092296305327843630558036396481404085874312743 : F) * rho 10825 + (7125073694427844070494111794506092296305327843630558036396481404085874312743 : F) * rho 10830 + (7125073694427844070494111794506092296305327843630558036396481404085874312743 : F) * rho 10835 + (7125073694427844070494111794506092296305327843630558036396481404085874312743 : F) * rho 10840 + (7125073694427844070494111794506092296305327843630558036396481404085874312743 : F) * rho 10845) * ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 0 + (5599663625781238014932145740178074139478730320408256423279552692005764982371 : F) * rho 10571 + (4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 10826 + (4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 10831 + (4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 10836 + (4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 10841 + (4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 10846) = ((1 : F) * rho 10847) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step572 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10848)] * dotLC rho [((1 : F),0), ((1 : F),10847)] = dotLC rho [((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),0), ((4747177763493781650484835932044964684083648525352187979502716334570879911315 : F),10571), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10825), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10826), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10830), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10831), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10835), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10836), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10840), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10841), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10845), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10846)]) :
    ((1 : F) * rho 10848) * ((1 : F) * rho 0 + (1 : F) * rho 10847) = ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F) * rho 0 + (1 : F) * (dotLC rho [((4747177763493781650484835932044964684083648525352187979502716334570879911315 : F),10571), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10825), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10826), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10830), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10831), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10835), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10836), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10840), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10841), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10845), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10846)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step584 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10849)] * dotLC rho [((1 : F),0), ((-1 : F),10847)] = dotLC rho [((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),0), ((3160882127605711333675716848893301498668288124693258619239548879659553127551 : F),10571), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10825), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10826), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10830), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10831), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10835), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10836), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10840), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10841), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10845), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10846)]) :
    ((1 : F) * rho 10849) * ((1 : F) * rho 0 + (-1 : F) * rho 10847) = ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F) * rho 0 + (1 : F) * (dotLC rho [((3160882127605711333675716848893301498668288124693258619239548879659553127551 : F),10571), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10825), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10826), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10830), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10831), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10835), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10836), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10840), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10841), ((4602731389228056481876658628161634812321742452151129397845777728070765470206 : F),10845), ((3356663082756859435011282369524118480618134568033269497371293157399859967283 : F),10846)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step592 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10577)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((1 : F),10848)] = dotLC rho [((1 : F),10850)]) :
    ((1 : F) * rho 10577) * ((1 : F) * (dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((1 : F),10848)])) = ((1 : F) * rho 10850) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step600 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10577)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((1 : F),10849)] = dotLC rho [((1 : F),10851)]) :
    ((1 : F) * rho 10577) * ((-1 : F) * rho 0 + (1 : F) * (dotLC rho [((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((1 : F),10849)])) = ((1 : F) * rho 10851) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step615 (rho : Nat → F)
    (hraw : dotLC rho [((3227302918384576863256780998438690966310203610358279494184436333699483332333 : F),10571), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10825), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10830), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10835), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10840), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10845), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10850)] * dotLC rho [((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),0), ((6137963534276468845396689112456072775006326924927504266065200537251503576410 : F),10571), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10826), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10831), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10836), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10841), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10846), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10851)] = dotLC rho [((1 : F),10852)]) :
    ((1 : F) * (dotLC rho [((3227302918384576863256780998438690966310203610358279494184436333699483332333 : F),10571), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10825), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10830), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10835), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10840), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10845), ((5764754835735288903970729372232287357538353079863789115257105120877617089341 : F),10850)])) * ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F) * rho 0 + (1 : F) * (dotLC rho [((6137963534276468845396689112456072775006326924927504266065200537251503576410 : F),10571), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10826), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10831), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10836), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10841), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10846), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10851)])) = ((1 : F) * rho 10852) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step629 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10853)] * dotLC rho [((1 : F),0), ((1 : F),10852)] = dotLC rho [((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),0), ((2737207941381420110061514279785201064407796872867875865170465456312149865526 : F),10571), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10825), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10826), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10830), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10831), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10835), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10836), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10840), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10841), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10845), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10846), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10850), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10851)]) :
    ((1 : F) * rho 10853) * ((1 : F) * rho 0 + (1 : F) * rho 10852) = ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F) * rho 0 + (1 : F) * (dotLC rho [((2737207941381420110061514279785201064407796872867875865170465456312149865526 : F),10571), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10825), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10826), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10830), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10831), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10835), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10836), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10840), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10841), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10845), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10846), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10850), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10851)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step643 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10854)] * dotLC rho [((1 : F),0), ((-1 : F),10852)] = dotLC rho [((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),0), ((4816825656872654239261236763169618638852247350032693108367889541869012690107 : F),10571), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10825), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10826), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10830), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10831), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10835), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10836), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10840), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10841), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10845), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10846), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10850), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10851)]) :
    ((1 : F) * rho 10854) * ((1 : F) * rho 0 + (-1 : F) * rho 10852) = ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F) * rho 0 + (1 : F) * (dotLC rho [((4816825656872654239261236763169618638852247350032693108367889541869012690107 : F),10571), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10825), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10826), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10830), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10831), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10835), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10836), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10840), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10841), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10845), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10846), ((3138181821979513410261790501863397666618234928341272728068224064253822055845 : F),10850), ((7057128834952976577195632199555397461949787578619238957571594289260648307325 : F),10851)])) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step646 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10578)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((1 : F),10853)] = dotLC rho [((1 : F),10855)]) :
    ((1 : F) * rho 10578) * ((1 : F) * (dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((1 : F),10853)])) = ((1 : F) * rho 10855) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step649 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),10578)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((1 : F),10854)] = dotLC rho [((1 : F),10856)]) :
    ((1 : F) * rho 10578) * ((-1 : F) * rho 0 + (1 : F) * (dotLC rho [((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((1 : F),10854)])) = ((1 : F) * rho 10856) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step662 (rho : Nat → F) (s12750 : F) (s12756 : F) (hs12750 : s12750 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855)]) (hs12756 : s12756 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856)])
    (hraw : dotLC rho [((799978936218574075797650752686907230160277414889474780602467453363530461367 : F),10571), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10825), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10830), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10835), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10840), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10845), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10850), ((1600092672692822940186714189359922705142851054896853954591353221334641505328 : F),10855)] * dotLC rho [((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),0), ((6343420490949144625286344113701139626352279410779777619360573249971778763958 : F),10571), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10826), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10831), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10836), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10841), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10846), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10851), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10856)] = dotLC rho [((1 : F),10857)]) :
    ((799978936218574075797650752686907230160277414889474780602467453363530461367 : F) * rho 10571 + (1600092672692822940186714189359922705142851054896853954591353221334641505328 : F) * s12750) * ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F) * rho 0 + (6343420490949144625286344113701139626352279410779777619360573249971778763958 : F) * rho 10571 + (4459439039332613404838472382329192479308895207930647915181763202044922699287 : F) * s12756) = ((1 : F) * rho 10857) := by
  subst hs12750 hs12756
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step663 (rho : Nat → F) (s12750 : F) (s12756 : F) (hs12750 : s12750 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855)]) (hs12756 : s12756 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856)])
    (hraw : dotLC rho [((1 : F),10858)] * dotLC rho [((1 : F),0), ((1 : F),10857)] = dotLC rho [((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),0), ((3123552911867627195740217440836639561170261616445917289999174218603525896393 : F),10571), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10825), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10826), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10830), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10831), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10835), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10836), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10840), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10841), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10845), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10846), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10850), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10851), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10855), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10856)]) :
    ((1 : F) * rho 10858) * ((1 : F) * rho 0 + (1 : F) * rho 10857) = ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F) * rho 0 + (3123552911867627195740217440836639561170261616445917289999174218603525896393 : F) * rho 10571 + (2650430265187285000042394159600882500645314604694124251187418957110572194676 : F) * s12750 + (4459439039332613404838472382329192479308895207930647915181763202044922699287 : F) * s12756) := by
  subst hs12750 hs12756
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step664 (rho : Nat → F) (s12750 : F) (s12756 : F) (hs12750 : s12750 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855)]) (hs12756 : s12756 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856)])
    (hraw : dotLC rho [((1 : F),10859)] * dotLC rho [((1 : F),0), ((-1 : F),10857)] = dotLC rho [((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),0), ((4261912733523430298230904496075599606809597086799772080236589833225886462164 : F),10571), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10825), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10826), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10830), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10831), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10835), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10836), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10840), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10841), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10845), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10846), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10850), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10851), ((4459439039332613404838472382329192479308895207930647915181763202044922699287 : F),10855), ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F),10856)]) :
    ((1 : F) * rho 10859) * ((1 : F) * rho 0 + (-1 : F) * rho 10857) = ((2650430265187285000042394159600882500645314604694124251187418957110572194676 : F) * rho 0 + (4261912733523430298230904496075599606809597086799772080236589833225886462164 : F) * rho 10571 + (2650430265187285000042394159600882500645314604694124251187418957110572194676 : F) * s12756 + (4459439039332613404838472382329192479308895207930647915181763202044922699287 : F) * s12750) := by
  subst hs12750 hs12756
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step665 (rho : Nat → F) (s12750 : F) (hs12750 : s12750 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855)])
    (hraw : dotLC rho [((1 : F),10579)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((1 : F),10858)] = dotLC rho [((1 : F),10860)]) :
    ((1 : F) * rho 10579) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10858 + (-1 : F) * s12750) = ((1 : F) * rho 10860) := by
  subst hs12750
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step666 (rho : Nat → F) (s12756 : F) (hs12756 : s12756 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856)])
    (hraw : dotLC rho [((1 : F),10579)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((1 : F),10859)] = dotLC rho [((1 : F),10861)]) :
    ((1 : F) * rho 10579) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10859 + (-1 : F) * s12756) = ((1 : F) * rho 10861) := by
  subst hs12756
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step669 (rho : Nat → F) (s12757 : F) (s12758 : F) (hs12757 : s12757 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860)]) (hs12758 : s12758 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861)])
    (hraw : dotLC rho [((2753946190659671014580094235531651781353864369415519594259341189828916299587 : F),10571), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10825), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10830), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10835), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10840), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10845), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10850), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10855), ((4461923795116466774041874149135674199037976590393132285736454703898946316138 : F),10860)] * dotLC rho [((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),0), ((6153028152449110073837341195201421162829720706603372599899126095481199798739 : F),10571), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10826), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10831), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10836), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10841), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10846), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10851), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10856), ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F),10861)] = dotLC rho [((1 : F),10862)]) :
    ((2753946190659671014580094235531651781353864369415519594259341189828916299587 : F) * rho 10571 + (4461923795116466774041874149135674199037976590393132285736454703898946316138 : F) * s12757) * ((3159876063620443670198928135754146488748252819008247076191411442174121929209 : F) * rho 0 + (6153028152449110073837341195201421162829720706603372599899126095481199798739 : F) * rho 10571 + (3159876063620443670198928135754146488748252819008247076191411442174121929209 : F) * s12758) = ((1 : F) * rho 10862) := by
  subst hs12757 hs12758
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step672 (rho : Nat → F) (s12757 : F) (hs12757 : s12757 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860)])
    (hraw : dotLC rho [((1 : F),10580)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((1 : F),10863)] = dotLC rho [((1 : F),10865)]) :
    ((1 : F) * rho 10580) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10863 + (-1 : F) * s12757) = ((1 : F) * rho 10865) := by
  subst hs12757
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step673 (rho : Nat → F) (s12758 : F) (hs12758 : s12758 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861)])
    (hraw : dotLC rho [((1 : F),10580)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((-1 : F),10861), ((1 : F),10864)] = dotLC rho [((1 : F),10866)]) :
    ((1 : F) * rho 10580) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10864 + (-1 : F) * s12758) = ((1 : F) * rho 10866) := by
  subst hs12758
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step676 (rho : Nat → F) (s12759 : F) (s12760 : F) (hs12759 : s12759 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865)]) (hs12760 : s12760 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866)])
    (hraw : dotLC rho [((5439200642052334304012191743150620482544965772614233135127369743773771354525 : F),10571), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10825), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10830), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10835), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10840), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10845), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10850), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10855), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10860), ((5499869298221864405245124503710611418739876401135035481979538274627517241001 : F),10865)] * dotLC rho [((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),0), ((7841829965495238687267195106992882626385908224391198632069153583519828839921 : F),10571), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10826), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10831), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10836), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10841), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10846), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10851), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10856), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10861), ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F),10866)] = dotLC rho [((1 : F),10867)]) :
    ((5439200642052334304012191743150620482544965772614233135127369743773771354525 : F) * rho 10571 + (5499869298221864405245124503710611418739876401135035481979538274627517241001 : F) * s12759) * ((2602027503992865545930429950401484088553187762617027322705140522510099517857 : F) * rho 0 + (7841829965495238687267195106992882626385908224391198632069153583519828839921 : F) * rho 10571 + (2602027503992865545930429950401484088553187762617027322705140522510099517857 : F) * s12760) = ((1 : F) * rho 10867) := by
  subst hs12759 hs12760
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step679 (rho : Nat → F) (s12759 : F) (hs12759 : s12759 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865)])
    (hraw : dotLC rho [((1 : F),10581)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((-1 : F),10865), ((1 : F),10868)] = dotLC rho [((1 : F),10870)]) :
    ((1 : F) * rho 10581) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10868 + (-1 : F) * s12759) = ((1 : F) * rho 10870) := by
  subst hs12759
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step680 (rho : Nat → F) (s12760 : F) (hs12760 : s12760 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866)])
    (hraw : dotLC rho [((1 : F),10581)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((-1 : F),10861), ((-1 : F),10866), ((1 : F),10869)] = dotLC rho [((1 : F),10871)]) :
    ((1 : F) * rho 10581) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10869 + (-1 : F) * s12760) = ((1 : F) * rho 10871) := by
  subst hs12760
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step683 (rho : Nat → F) (s12761 : F) (s12762 : F) (hs12761 : s12761 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870)]) (hs12762 : s12762 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871)])
    (hraw : dotLC rho [((8298331348720756663882355575114982170931079394891959395449028587745364227316 : F),10571), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10825), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10830), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10835), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10840), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10845), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10850), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10855), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10860), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10865), ((7436513624196780151145143382197103725994396724594713063111808851360322240388 : F),10870)] * dotLC rho [((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),0), ((739624094024724903522699602604904924155550084449718938645942504369886836093 : F),10571), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10826), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10831), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10836), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10841), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10846), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10851), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10856), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10861), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10866), ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F),10871)] = dotLC rho [((1 : F),10872)]) :
    ((8298331348720756663882355575114982170931079394891959395449028587745364227316 : F) * rho 10571 + (7436513624196780151145143382197103725994396724594713063111808851360322240388 : F) * s12761) * ((4793656284491333933633189842805096486523828232784622516856254870594131961786 : F) * rho 0 + (739624094024724903522699602604904924155550084449718938645942504369886836093 : F) * rho 10571 + (4793656284491333933633189842805096486523828232784622516856254870594131961786 : F) * s12762) = ((1 : F) * rho 10872) := by
  subst hs12761 hs12762
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step686 (rho : Nat → F) (s12761 : F) (hs12761 : s12761 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870)])
    (hraw : dotLC rho [((1 : F),10582)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((-1 : F),10865), ((-1 : F),10870), ((1 : F),10873)] = dotLC rho [((1 : F),10875)]) :
    ((1 : F) * rho 10582) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10873 + (-1 : F) * s12761) = ((1 : F) * rho 10875) := by
  subst hs12761
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step687 (rho : Nat → F) (s12762 : F) (hs12762 : s12762 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871)])
    (hraw : dotLC rho [((1 : F),10582)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((-1 : F),10861), ((-1 : F),10866), ((-1 : F),10871), ((1 : F),10874)] = dotLC rho [((1 : F),10876)]) :
    ((1 : F) * rho 10582) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10874 + (-1 : F) * s12762) = ((1 : F) * rho 10876) := by
  subst hs12762
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step690 (rho : Nat → F) (s12763 : F) (s12764 : F) (hs12763 : s12763 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875)]) (hs12764 : s12764 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876)])
    (hraw : dotLC rho [((4328607763429889518549586819673284505749414943234360646809969879301408014412 : F),10571), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10825), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10830), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10835), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10840), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10845), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10850), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10855), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10860), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10865), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10870), ((1956145867708643475270858009794921954207452165111348566040018876064876731095 : F),10875)] * dotLC rho [((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),0), ((4082445054664856202533014286782356950822908277969521053589710610935807585161 : F),10571), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10826), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10831), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10836), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10841), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10846), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10851), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10856), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10861), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10866), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10871), ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F),10876)] = dotLC rho [((1 : F),10877)]) :
    ((4328607763429889518549586819673284505749414943234360646809969879301408014412 : F) * rho 10571 + (1956145867708643475270858009794921954207452165111348566040018876064876731095 : F) * s12763) * ((494772453846730246931269190597991306768479400733920168680734403086759869202 : F) * rho 0 + (4082445054664856202533014286782356950822908277969521053589710610935807585161 : F) * rho 10571 + (494772453846730246931269190597991306768479400733920168680734403086759869202 : F) * s12764) = ((1 : F) * rho 10877) := by
  subst hs12763 hs12764
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step693 (rho : Nat → F) (s12763 : F) (hs12763 : s12763 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875)])
    (hraw : dotLC rho [((1 : F),10583)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((-1 : F),10865), ((-1 : F),10870), ((-1 : F),10875), ((1 : F),10878)] = dotLC rho [((1 : F),10880)]) :
    ((1 : F) * rho 10583) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10878 + (-1 : F) * s12763) = ((1 : F) * rho 10880) := by
  subst hs12763
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step694 (rho : Nat → F) (s12764 : F) (hs12764 : s12764 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876)])
    (hraw : dotLC rho [((1 : F),10583)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((-1 : F),10861), ((-1 : F),10866), ((-1 : F),10871), ((-1 : F),10876), ((1 : F),10879)] = dotLC rho [((1 : F),10881)]) :
    ((1 : F) * rho 10583) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10879 + (-1 : F) * s12764) = ((1 : F) * rho 10881) := by
  subst hs12764
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step697 (rho : Nat → F) (s12765 : F) (s12766 : F) (hs12765 : s12765 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875), ((1 : F),10880)]) (hs12766 : s12766 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876), ((1 : F),10881)])
    (hraw : dotLC rho [((6365258573991241174697130941626496417579456953277881746179878783360931147021 : F),10571), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10825), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10830), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10835), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10840), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10845), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10850), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10855), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10860), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10865), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10870), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10875), ((1853516191212418601923176409711849924541567377271919075960283931253075558048 : F),10880)] * dotLC rho [((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),0), ((6308081791843239106558827474230829281890992551262166724382057215427105827277 : F),10571), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10826), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10831), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10836), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10841), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10846), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10851), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10856), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10861), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10866), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10871), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10876), ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F),10881)] = dotLC rho [((1 : F),10882)]) :
    ((6365258573991241174697130941626496417579456953277881746179878783360931147021 : F) * rho 10571 + (1853516191212418601923176409711849924541567377271919075960283931253075558048 : F) * s12765) * ((5238161505909734467545466330312054908335919150190674809026639727377038723562 : F) * rho 0 + (6308081791843239106558827474230829281890992551262166724382057215427105827277 : F) * rho 10571 + (5238161505909734467545466330312054908335919150190674809026639727377038723562 : F) * s12766) = ((1 : F) * rho 10882) := by
  subst hs12765 hs12766
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step700 (rho : Nat → F) (s12765 : F) (hs12765 : s12765 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875), ((1 : F),10880)])
    (hraw : dotLC rho [((1 : F),10584)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((-1 : F),10865), ((-1 : F),10870), ((-1 : F),10875), ((-1 : F),10880), ((1 : F),10883)] = dotLC rho [((1 : F),10885)]) :
    ((1 : F) * rho 10584) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10883 + (-1 : F) * s12765) = ((1 : F) * rho 10885) := by
  subst hs12765
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step701 (rho : Nat → F) (s12766 : F) (hs12766 : s12766 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876), ((1 : F),10881)])
    (hraw : dotLC rho [((1 : F),10584)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((-1 : F),10861), ((-1 : F),10866), ((-1 : F),10871), ((-1 : F),10876), ((-1 : F),10881), ((1 : F),10884)] = dotLC rho [((1 : F),10886)]) :
    ((1 : F) * rho 10584) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10884 + (-1 : F) * s12766) = ((1 : F) * rho 10886) := by
  subst hs12766
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step704 (rho : Nat → F) (s12767 : F) (s12768 : F) (hs12767 : s12767 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875), ((1 : F),10880), ((1 : F),10885)]) (hs12768 : s12768 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876), ((1 : F),10881), ((1 : F),10886)])
    (hraw : dotLC rho [((6392897488810401941497707224445347980247610074382856459069433032993945525945 : F),10571), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10825), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10830), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10835), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10840), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10845), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10850), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10855), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10860), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10865), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10870), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10875), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10880), ((3855803401469065688708113530808008529379689296709597100941472437302433750795 : F),10885)] * dotLC rho [((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),0), ((6325190948235679932022903635625454392268619003506054476754941683181366095871 : F),10571), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10826), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10831), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10836), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10841), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10846), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10851), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10856), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10861), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10866), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10871), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10876), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10881), ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F),10886)] = dotLC rho [((1 : F),10887)]) :
    ((6392897488810401941497707224445347980247610074382856459069433032993945525945 : F) * rho 10571 + (3855803401469065688708113530808008529379689296709597100941472437302433750795 : F) * s12767) * ((1133339956106993676287697933760165738395123288272105264851263043265143770306 : F) * rho 0 + (6325190948235679932022903635625454392268619003506054476754941683181366095871 : F) * rho 10571 + (1133339956106993676287697933760165738395123288272105264851263043265143770306 : F) * s12768) = ((1 : F) * rho 10887) := by
  subst hs12767 hs12768
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step707 (rho : Nat → F) (s12767 : F) (hs12767 : s12767 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875), ((1 : F),10880), ((1 : F),10885)])
    (hraw : dotLC rho [((1 : F),10585)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((-1 : F),10865), ((-1 : F),10870), ((-1 : F),10875), ((-1 : F),10880), ((-1 : F),10885), ((1 : F),10888)] = dotLC rho [((1 : F),10890)]) :
    ((1 : F) * rho 10585) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10888 + (-1 : F) * s12767) = ((1 : F) * rho 10890) := by
  subst hs12767
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step708 (rho : Nat → F) (s12768 : F) (hs12768 : s12768 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876), ((1 : F),10881), ((1 : F),10886)])
    (hraw : dotLC rho [((1 : F),10585)] * dotLC rho [((-1 : F),0), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F),10571), ((-1 : F),10826), ((-1 : F),10831), ((-1 : F),10836), ((-1 : F),10841), ((-1 : F),10846), ((-1 : F),10851), ((-1 : F),10856), ((-1 : F),10861), ((-1 : F),10866), ((-1 : F),10871), ((-1 : F),10876), ((-1 : F),10881), ((-1 : F),10886), ((1 : F),10889)] = dotLC rho [((1 : F),10891)]) :
    ((1 : F) * rho 10585) * ((-1 : F) * rho 0 + (2383989799346518857134133381121756526619364323399900825637692983170344295754 : F) * rho 10571 + (1 : F) * rho 10889 + (-1 : F) * s12768) = ((1 : F) * rho 10891) := by
  subst hs12768
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step711 (rho : Nat → F) (s12769 : F) (s12770 : F) (hs12769 : s12769 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875), ((1 : F),10880), ((1 : F),10885), ((1 : F),10890)]) (hs12770 : s12770 = dotLC rho [((1 : F),10826), ((1 : F),10831), ((1 : F),10836), ((1 : F),10841), ((1 : F),10846), ((1 : F),10851), ((1 : F),10856), ((1 : F),10861), ((1 : F),10866), ((1 : F),10871), ((1 : F),10876), ((1 : F),10881), ((1 : F),10886), ((1 : F),10891)])
    (hraw : dotLC rho [((1154270589750196804295977235212672773267637464955366047864403821541484639623 : F),10571), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10825), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10830), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10835), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10840), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10845), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10850), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10855), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10860), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10865), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10870), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10875), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10880), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10885), ((205069286912058446724553664414720879157620857762407089747478771633946928445 : F),10890)] * dotLC rho [((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),0), ((6541486584943148672220258704046195232837410062746476396592408480617432697871 : F),10571), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10826), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10831), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10836), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10841), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10846), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10851), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10856), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10861), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10866), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10871), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10876), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10881), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10886), ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F),10891)] = dotLC rho [((1 : F),10892)]) :
    ((1154270589750196804295977235212672773267637464955366047864403821541484639623 : F) * rho 10571 + (205069286912058446724553664414720879157620857762407089747478771633946928445 : F) * s12769) * ((5633009114402396467627853566573332566500787514248685719750612346780592270240 : F) * rho 0 + (6541486584943148672220258704046195232837410062746476396592408480617432697871 : F) * rho 10571 + (5633009114402396467627853566573332566500787514248685719750612346780592270240 : F) * s12770) = ((1 : F) * rho 10892) := by
  subst hs12769 hs12770
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step714 (rho : Nat → F) (s12769 : F) (hs12769 : s12769 = dotLC rho [((1 : F),10825), ((1 : F),10830), ((1 : F),10835), ((1 : F),10840), ((1 : F),10845), ((1 : F),10850), ((1 : F),10855), ((1 : F),10860), ((1 : F),10865), ((1 : F),10870), ((1 : F),10875), ((1 : F),10880), ((1 : F),10885), ((1 : F),10890)])
    (hraw : dotLC rho [((1 : F),10586)] * dotLC rho [((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F),10571), ((-1 : F),10825), ((-1 : F),10830), ((-1 : F),10835), ((-1 : F),10840), ((-1 : F),10845), ((-1 : F),10850), ((-1 : F),10855), ((-1 : F),10860), ((-1 : F),10865), ((-1 : F),10870), ((-1 : F),10875), ((-1 : F),10880), ((-1 : F),10885), ((-1 : F),10890), ((1 : F),10893)] = dotLC rho [((1 : F),10895)]) :
    ((1 : F) * rho 10586) * ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F) * rho 10571 + (1 : F) * rho 10893 + (-1 : F) * s12769) = ((1 : F) * rho 10895) := by
  subst hs12769
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1956 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11570)] * dotLC rho [((1 : F),0), ((1 : F),11568)] = dotLC rho [((1 : F),11569)]) :
    ((1 : F) * rho 11570) * ((1 : F) * rho 0 + (1 : F) * rho 11568) = ((1 : F) * rho 11569) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1958 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11572)] * dotLC rho [((1 : F),0), ((-1 : F),11568)] = dotLC rho [((5754422572523754068755447096468385660735147391356000447863493425454865053389 : F),11567), ((1 : F),11571)]) :
    ((1 : F) * rho 11572) * ((1 : F) * rho 0 + (-1 : F) * rho 11568) = ((5754422572523754068755447096468385660735147391356000447863493425454865053389 : F) * rho 11567 + (1 : F) * rho 11571) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1968 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11578)] * dotLC rho [((1 : F),0), ((1 : F),11576)] = dotLC rho [((1 : F),11577)]) :
    ((1 : F) * rho 11578) * ((1 : F) * rho 0 + (1 : F) * rho 11576) = ((1 : F) * rho 11577) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1970 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11580)] * dotLC rho [((1 : F),0), ((-1 : F),11576)] = dotLC rho [((853198205166559421082470338920132093956816522397963514282441805043003013830 : F),11575), ((1 : F),11579)]) :
    ((1 : F) * rho 11580) * ((1 : F) * rho 0 + (-1 : F) * rho 11576) = ((853198205166559421082470338920132093956816522397963514282441805043003013830 : F) * rho 11575 + (1 : F) * rho 11579) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1980 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11586)] * dotLC rho [((1 : F),0), ((1 : F),11584)] = dotLC rho [((1 : F),11585)]) :
    ((1 : F) * rho 11586) * ((1 : F) * rho 0 + (1 : F) * rho 11584) = ((1 : F) * rho 11585) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1982 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11588)] * dotLC rho [((1 : F),0), ((-1 : F),11584)] = dotLC rho [((4909203405202349075832789811710171134519670164033666777528240576052656375737 : F),11583), ((1 : F),11587)]) :
    ((1 : F) * rho 11588) * ((1 : F) * rho 0 + (-1 : F) * rho 11584) = ((4909203405202349075832789811710171134519670164033666777528240576052656375737 : F) * rho 11583 + (1 : F) * rho 11587) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1992 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11594)] * dotLC rho [((1 : F),0), ((1 : F),11592)] = dotLC rho [((1 : F),11593)]) :
    ((1 : F) * rho 11594) * ((1 : F) * rho 0 + (1 : F) * rho 11592) = ((1 : F) * rho 11593) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step1994 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11596)] * dotLC rho [((1 : F),0), ((-1 : F),11592)] = dotLC rho [((5681531126009470669687624608774328725765237824011145718716341813220822843222 : F),11591), ((1 : F),11595)]) :
    ((1 : F) * rho 11596) * ((1 : F) * rho 0 + (-1 : F) * rho 11592) = ((5681531126009470669687624608774328725765237824011145718716341813220822843222 : F) * rho 11591 + (1 : F) * rho 11595) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2004 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11602)] * dotLC rho [((1 : F),0), ((1 : F),11600)] = dotLC rho [((1 : F),11601)]) :
    ((1 : F) * rho 11602) * ((1 : F) * rho 0 + (1 : F) * rho 11600) = ((1 : F) * rho 11601) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2006 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11604)] * dotLC rho [((1 : F),0), ((-1 : F),11600)] = dotLC rho [((8432574499718205425205007202228911004075484946164187913165686728419935237103 : F),11599), ((1 : F),11603)]) :
    ((1 : F) * rho 11604) * ((1 : F) * rho 0 + (-1 : F) * rho 11600) = ((8432574499718205425205007202228911004075484946164187913165686728419935237103 : F) * rho 11599 + (1 : F) * rho 11603) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2016 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11610)] * dotLC rho [((1 : F),0), ((1 : F),11608)] = dotLC rho [((1 : F),11609)]) :
    ((1 : F) * rho 11610) * ((1 : F) * rho 0 + (1 : F) * rho 11608) = ((1 : F) * rho 11609) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2018 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11612)] * dotLC rho [((1 : F),0), ((-1 : F),11608)] = dotLC rho [((2911181024375839423641528490098722070818922368429523866192125319440339401413 : F),11607), ((1 : F),11611)]) :
    ((1 : F) * rho 11612) * ((1 : F) * rho 0 + (-1 : F) * rho 11608) = ((2911181024375839423641528490098722070818922368429523866192125319440339401413 : F) * rho 11607 + (1 : F) * rho 11611) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2028 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11618)] * dotLC rho [((1 : F),0), ((1 : F),11616)] = dotLC rho [((1 : F),11617)]) :
    ((1 : F) * rho 11618) * ((1 : F) * rho 0 + (1 : F) * rho 11616) = ((1 : F) * rho 11617) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2030 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11620)] * dotLC rho [((1 : F),0), ((-1 : F),11616)] = dotLC rho [((7636180221122445994176872473003044740212176886183117024446801527523763652944 : F),11615), ((1 : F),11619)]) :
    ((1 : F) * rho 11620) * ((1 : F) * rho 0 + (-1 : F) * rho 11616) = ((7636180221122445994176872473003044740212176886183117024446801527523763652944 : F) * rho 11615 + (1 : F) * rho 11619) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2040 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11626)] * dotLC rho [((1 : F),0), ((1 : F),11624)] = dotLC rho [((1 : F),11625)]) :
    ((1 : F) * rho 11626) * ((1 : F) * rho 0 + (1 : F) * rho 11624) = ((1 : F) * rho 11625) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2042 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11628)] * dotLC rho [((1 : F),0), ((-1 : F),11624)] = dotLC rho [((1950387821318911698604526610953194736619821519977636756367997438333405028269 : F),11623), ((1 : F),11627)]) :
    ((1 : F) * rho 11628) * ((1 : F) * rho 0 + (-1 : F) * rho 11624) = ((1950387821318911698604526610953194736619821519977636756367997438333405028269 : F) * rho 11623 + (1 : F) * rho 11627) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2052 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11634)] * dotLC rho [((1 : F),0), ((1 : F),11632)] = dotLC rho [((1 : F),11633)]) :
    ((1 : F) * rho 11634) * ((1 : F) * rho 0 + (1 : F) * rho 11632) = ((1 : F) * rho 11633) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2054 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11636)] * dotLC rho [((1 : F),0), ((-1 : F),11632)] = dotLC rho [((2483422053131947166639985651721780145693793553270142697417024000552671412815 : F),11631), ((1 : F),11635)]) :
    ((1 : F) * rho 11636) * ((1 : F) * rho 0 + (-1 : F) * rho 11632) = ((2483422053131947166639985651721780145693793553270142697417024000552671412815 : F) * rho 11631 + (1 : F) * rho 11635) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2064 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11642)] * dotLC rho [((1 : F),0), ((1 : F),11640)] = dotLC rho [((1 : F),11641)]) :
    ((1 : F) * rho 11642) * ((1 : F) * rho 0 + (1 : F) * rho 11640) = ((1 : F) * rho 11641) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2066 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11644)] * dotLC rho [((1 : F),0), ((-1 : F),11640)] = dotLC rho [((6457572164793968078602496880213089357842548428010285340531840515932634111717 : F),11639), ((1 : F),11643)]) :
    ((1 : F) * rho 11644) * ((1 : F) * rho 0 + (-1 : F) * rho 11640) = ((6457572164793968078602496880213089357842548428010285340531840515932634111717 : F) * rho 11639 + (1 : F) * rho 11643) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2076 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11650)] * dotLC rho [((1 : F),0), ((1 : F),11648)] = dotLC rho [((1 : F),11649)]) :
    ((1 : F) * rho 11650) * ((1 : F) * rho 0 + (1 : F) * rho 11648) = ((1 : F) * rho 11649) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2078 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11652)] * dotLC rho [((1 : F),0), ((-1 : F),11648)] = dotLC rho [((7139091380798676929032471942623943387363385133413584892836589142317834676947 : F),11647), ((1 : F),11651)]) :
    ((1 : F) * rho 11652) * ((1 : F) * rho 0 + (-1 : F) * rho 11648) = ((7139091380798676929032471942623943387363385133413584892836589142317834676947 : F) * rho 11647 + (1 : F) * rho 11651) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2088 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11658)] * dotLC rho [((1 : F),0), ((1 : F),11656)] = dotLC rho [((1 : F),11657)]) :
    ((1 : F) * rho 11658) * ((1 : F) * rho 0 + (1 : F) * rho 11656) = ((1 : F) * rho 11657) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2090 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11660)] * dotLC rho [((1 : F),0), ((-1 : F),11656)] = dotLC rho [((8047916311109191027539872523127037920644456530471760295772703425681243691700 : F),11655), ((1 : F),11659)]) :
    ((1 : F) * rho 11660) * ((1 : F) * rho 0 + (-1 : F) * rho 11656) = ((8047916311109191027539872523127037920644456530471760295772703425681243691700 : F) * rho 11655 + (1 : F) * rho 11659) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2100 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11666)] * dotLC rho [((1 : F),0), ((1 : F),11664)] = dotLC rho [((1 : F),11665)]) :
    ((1 : F) * rho 11666) * ((1 : F) * rho 0 + (1 : F) * rho 11664) = ((1 : F) * rho 11665) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2102 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11668)] * dotLC rho [((1 : F),0), ((-1 : F),11664)] = dotLC rho [((4213697880642300758477256848850704789993899817267500031000704055998807915249 : F),11663), ((1 : F),11667)]) :
    ((1 : F) * rho 11668) * ((1 : F) * rho 0 + (-1 : F) * rho 11664) = ((4213697880642300758477256848850704789993899817267500031000704055998807915249 : F) * rho 11663 + (1 : F) * rho 11667) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2112 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11674)] * dotLC rho [((1 : F),0), ((1 : F),11672)] = dotLC rho [((1 : F),11673)]) :
    ((1 : F) * rho 11674) * ((1 : F) * rho 0 + (1 : F) * rho 11672) = ((1 : F) * rho 11673) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2114 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11676)] * dotLC rho [((1 : F),0), ((-1 : F),11672)] = dotLC rho [((3399461260737400376689921375062889333859126396940072904343760059933500264360 : F),11671), ((1 : F),11675)]) :
    ((1 : F) * rho 11676) * ((1 : F) * rho 0 + (-1 : F) * rho 11672) = ((3399461260737400376689921375062889333859126396940072904343760059933500264360 : F) * rho 11671 + (1 : F) * rho 11675) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2124 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11682)] * dotLC rho [((1 : F),0), ((1 : F),11680)] = dotLC rho [((1 : F),11681)]) :
    ((1 : F) * rho 11682) * ((1 : F) * rho 0 + (1 : F) * rho 11680) = ((1 : F) * rho 11681) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2126 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11684)] * dotLC rho [((1 : F),0), ((-1 : F),11680)] = dotLC rho [((7441889386990957144640845077588602425874685482118088383140536194279874759118 : F),11679), ((1 : F),11683)]) :
    ((1 : F) * rho 11684) * ((1 : F) * rho 0 + (-1 : F) * rho 11680) = ((7441889386990957144640845077588602425874685482118088383140536194279874759118 : F) * rho 11679 + (1 : F) * rho 11683) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2136 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11690)] * dotLC rho [((1 : F),0), ((1 : F),11688)] = dotLC rho [((1 : F),11689)]) :
    ((1 : F) * rho 11690) * ((1 : F) * rho 0 + (1 : F) * rho 11688) = ((1 : F) * rho 11689) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2138 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11692)] * dotLC rho [((1 : F),0), ((-1 : F),11688)] = dotLC rho [((2673198906433052441463678561519639476505630939192850707132739224530804284022 : F),11687), ((1 : F),11691)]) :
    ((1 : F) * rho 11692) * ((1 : F) * rho 0 + (-1 : F) * rho 11688) = ((2673198906433052441463678561519639476505630939192850707132739224530804284022 : F) * rho 11687 + (1 : F) * rho 11691) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2148 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11698)] * dotLC rho [((1 : F),0), ((1 : F),11696)] = dotLC rho [((1 : F),11697)]) :
    ((1 : F) * rho 11698) * ((1 : F) * rho 0 + (1 : F) * rho 11696) = ((1 : F) * rho 11697) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2150 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11700)] * dotLC rho [((1 : F),0), ((-1 : F),11696)] = dotLC rho [((3653645923306631696097634713955502804850819342559874746895373679788320064747 : F),11695), ((1 : F),11699)]) :
    ((1 : F) * rho 11700) * ((1 : F) * rho 0 + (-1 : F) * rho 11696) = ((3653645923306631696097634713955502804850819342559874746895373679788320064747 : F) * rho 11695 + (1 : F) * rho 11699) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2160 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11706)] * dotLC rho [((1 : F),0), ((1 : F),11704)] = dotLC rho [((1 : F),11705)]) :
    ((1 : F) * rho 11706) * ((1 : F) * rho 0 + (1 : F) * rho 11704) = ((1 : F) * rho 11705) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2162 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11708)] * dotLC rho [((1 : F),0), ((-1 : F),11704)] = dotLC rho [((4026209545590398508256485464469656323639182035894782201996007164204607449550 : F),11703), ((1 : F),11707)]) :
    ((1 : F) * rho 11708) * ((1 : F) * rho 0 + (-1 : F) * rho 11704) = ((4026209545590398508256485464469656323639182035894782201996007164204607449550 : F) * rho 11703 + (1 : F) * rho 11707) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2172 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11714)] * dotLC rho [((1 : F),0), ((1 : F),11712)] = dotLC rho [((1 : F),11713)]) :
    ((1 : F) * rho 11714) * ((1 : F) * rho 0 + (1 : F) * rho 11712) = ((1 : F) * rho 11713) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2174 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11716)] * dotLC rho [((1 : F),0), ((-1 : F),11712)] = dotLC rho [((2862546174761930795377674340048226799017542035790347613471804298808835690036 : F),11711), ((1 : F),11715)]) :
    ((1 : F) * rho 11716) * ((1 : F) * rho 0 + (-1 : F) * rho 11712) = ((2862546174761930795377674340048226799017542035790347613471804298808835690036 : F) * rho 11711 + (1 : F) * rho 11715) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2184 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11722)] * dotLC rho [((1 : F),0), ((1 : F),11720)] = dotLC rho [((1 : F),11721)]) :
    ((1 : F) * rho 11722) * ((1 : F) * rho 0 + (1 : F) * rho 11720) = ((1 : F) * rho 11721) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2186 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11724)] * dotLC rho [((1 : F),0), ((-1 : F),11720)] = dotLC rho [((7352544844717896054462059209904498520860756185959483840650872375121938574377 : F),11719), ((1 : F),11723)]) :
    ((1 : F) * rho 11724) * ((1 : F) * rho 0 + (-1 : F) * rho 11720) = ((7352544844717896054462059209904498520860756185959483840650872375121938574377 : F) * rho 11719 + (1 : F) * rho 11723) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2196 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11730)] * dotLC rho [((1 : F),0), ((1 : F),11728)] = dotLC rho [((1 : F),11729)]) :
    ((1 : F) * rho 11730) * ((1 : F) * rho 0 + (1 : F) * rho 11728) = ((1 : F) * rho 11729) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2198 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11732)] * dotLC rho [((1 : F),0), ((-1 : F),11728)] = dotLC rho [((7311571752591464700390676433060464938802245701684759860286856885093942861182 : F),11727), ((1 : F),11731)]) :
    ((1 : F) * rho 11732) * ((1 : F) * rho 0 + (-1 : F) * rho 11728) = ((7311571752591464700390676433060464938802245701684759860286856885093942861182 : F) * rho 11727 + (1 : F) * rho 11731) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2208 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11738)] * dotLC rho [((1 : F),0), ((1 : F),11736)] = dotLC rho [((1 : F),11737)]) :
    ((1 : F) * rho 11738) * ((1 : F) * rho 0 + (1 : F) * rho 11736) = ((1 : F) * rho 11737) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2210 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11740)] * dotLC rho [((1 : F),0), ((-1 : F),11736)] = dotLC rho [((7784255214841140815171698297111262339149563447458024276451721472331040687164 : F),11735), ((1 : F),11739)]) :
    ((1 : F) * rho 11740) * ((1 : F) * rho 0 + (-1 : F) * rho 11736) = ((7784255214841140815171698297111262339149563447458024276451721472331040687164 : F) * rho 11735 + (1 : F) * rho 11739) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2220 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11746)] * dotLC rho [((1 : F),0), ((1 : F),11744)] = dotLC rho [((1 : F),11745)]) :
    ((1 : F) * rho 11746) * ((1 : F) * rho 0 + (1 : F) * rho 11744) = ((1 : F) * rho 11745) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2222 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11748)] * dotLC rho [((1 : F),0), ((-1 : F),11744)] = dotLC rho [((4594205195080447705511820372372338862502313343630213439851626861318216713407 : F),11743), ((1 : F),11747)]) :
    ((1 : F) * rho 11748) * ((1 : F) * rho 0 + (-1 : F) * rho 11744) = ((4594205195080447705511820372372338862502313343630213439851626861318216713407 : F) * rho 11743 + (1 : F) * rho 11747) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2232 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11754)] * dotLC rho [((1 : F),0), ((1 : F),11752)] = dotLC rho [((1 : F),11753)]) :
    ((1 : F) * rho 11754) * ((1 : F) * rho 0 + (1 : F) * rho 11752) = ((1 : F) * rho 11753) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2234 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11756)] * dotLC rho [((1 : F),0), ((-1 : F),11752)] = dotLC rho [((3325312249626796127042323544411997926984030067308394021148104297604347628165 : F),11751), ((1 : F),11755)]) :
    ((1 : F) * rho 11756) * ((1 : F) * rho 0 + (-1 : F) * rho 11752) = ((3325312249626796127042323544411997926984030067308394021148104297604347628165 : F) * rho 11751 + (1 : F) * rho 11755) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2244 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11762)] * dotLC rho [((1 : F),0), ((1 : F),11760)] = dotLC rho [((1 : F),11761)]) :
    ((1 : F) * rho 11762) * ((1 : F) * rho 0 + (1 : F) * rho 11760) = ((1 : F) * rho 11761) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2246 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11764)] * dotLC rho [((1 : F),0), ((-1 : F),11760)] = dotLC rho [((8311857156618422603476101793988572439045133466582184058461415083195137388543 : F),11759), ((1 : F),11763)]) :
    ((1 : F) * rho 11764) * ((1 : F) * rho 0 + (-1 : F) * rho 11760) = ((8311857156618422603476101793988572439045133466582184058461415083195137388543 : F) * rho 11759 + (1 : F) * rho 11763) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2256 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11770)] * dotLC rho [((1 : F),0), ((1 : F),11768)] = dotLC rho [((1 : F),11769)]) :
    ((1 : F) * rho 11770) * ((1 : F) * rho 0 + (1 : F) * rho 11768) = ((1 : F) * rho 11769) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2258 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11772)] * dotLC rho [((1 : F),0), ((-1 : F),11768)] = dotLC rho [((7269358700782360492261537071863365329700491793985040867386055509296718976276 : F),11767), ((1 : F),11771)]) :
    ((1 : F) * rho 11772) * ((1 : F) * rho 0 + (-1 : F) * rho 11768) = ((7269358700782360492261537071863365329700491793985040867386055509296718976276 : F) * rho 11767 + (1 : F) * rho 11771) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2268 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11778)] * dotLC rho [((1 : F),0), ((1 : F),11776)] = dotLC rho [((1 : F),11777)]) :
    ((1 : F) * rho 11778) * ((1 : F) * rho 0 + (1 : F) * rho 11776) = ((1 : F) * rho 11777) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2270 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11780)] * dotLC rho [((1 : F),0), ((-1 : F),11776)] = dotLC rho [((7181022353741481964229286641554957128605174494713976019181142505436493545691 : F),11775), ((1 : F),11779)]) :
    ((1 : F) * rho 11780) * ((1 : F) * rho 0 + (-1 : F) * rho 11776) = ((7181022353741481964229286641554957128605174494713976019181142505436493545691 : F) * rho 11775 + (1 : F) * rho 11779) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2280 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11786)] * dotLC rho [((1 : F),0), ((1 : F),11784)] = dotLC rho [((1 : F),11785)]) :
    ((1 : F) * rho 11786) * ((1 : F) * rho 0 + (1 : F) * rho 11784) = ((1 : F) * rho 11785) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2282 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11788)] * dotLC rho [((1 : F),0), ((-1 : F),11784)] = dotLC rho [((1184508510859299218335321111591703574067419487686531191197103590450845523101 : F),11783), ((1 : F),11787)]) :
    ((1 : F) * rho 11788) * ((1 : F) * rho 0 + (-1 : F) * rho 11784) = ((1184508510859299218335321111591703574067419487686531191197103590450845523101 : F) * rho 11783 + (1 : F) * rho 11787) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2292 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11794)] * dotLC rho [((1 : F),0), ((1 : F),11792)] = dotLC rho [((1 : F),11793)]) :
    ((1 : F) * rho 11794) * ((1 : F) * rho 0 + (1 : F) * rho 11792) = ((1 : F) * rho 11793) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2294 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11796)] * dotLC rho [((1 : F),0), ((-1 : F),11792)] = dotLC rho [((8095985894828901428063008816912857292228771097296076721262201519985153970529 : F),11791), ((1 : F),11795)]) :
    ((1 : F) * rho 11796) * ((1 : F) * rho 0 + (-1 : F) * rho 11792) = ((8095985894828901428063008816912857292228771097296076721262201519985153970529 : F) * rho 11791 + (1 : F) * rho 11795) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2304 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11802)] * dotLC rho [((1 : F),0), ((1 : F),11800)] = dotLC rho [((1 : F),11801)]) :
    ((1 : F) * rho 11802) * ((1 : F) * rho 0 + (1 : F) * rho 11800) = ((1 : F) * rho 11801) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2306 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11804)] * dotLC rho [((1 : F),0), ((-1 : F),11800)] = dotLC rho [((6113054686915106538982263152785802714499854499871899382249582622268452612513 : F),11799), ((1 : F),11803)]) :
    ((1 : F) * rho 11804) * ((1 : F) * rho 0 + (-1 : F) * rho 11800) = ((6113054686915106538982263152785802714499854499871899382249582622268452612513 : F) * rho 11799 + (1 : F) * rho 11803) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2316 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11810)] * dotLC rho [((1 : F),0), ((1 : F),11808)] = dotLC rho [((1 : F),11809)]) :
    ((1 : F) * rho 11810) * ((1 : F) * rho 0 + (1 : F) * rho 11808) = ((1 : F) * rho 11809) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2318 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11812)] * dotLC rho [((1 : F),0), ((-1 : F),11808)] = dotLC rho [((806261159547740988657934439255875821267843092223727961665355260755223609391 : F),11807), ((1 : F),11811)]) :
    ((1 : F) * rho 11812) * ((1 : F) * rho 0 + (-1 : F) * rho 11808) = ((806261159547740988657934439255875821267843092223727961665355260755223609391 : F) * rho 11807 + (1 : F) * rho 11811) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2328 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11818)] * dotLC rho [((1 : F),0), ((1 : F),11816)] = dotLC rho [((1 : F),11817)]) :
    ((1 : F) * rho 11818) * ((1 : F) * rho 0 + (1 : F) * rho 11816) = ((1 : F) * rho 11817) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2330 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11820)] * dotLC rho [((1 : F),0), ((-1 : F),11816)] = dotLC rho [((2015721993890769297996452264560947641786137595732693705922356697476059614693 : F),11815), ((1 : F),11819)]) :
    ((1 : F) * rho 11820) * ((1 : F) * rho 0 + (-1 : F) * rho 11816) = ((2015721993890769297996452264560947641786137595732693705922356697476059614693 : F) * rho 11815 + (1 : F) * rho 11819) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2340 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11826)] * dotLC rho [((1 : F),0), ((1 : F),11824)] = dotLC rho [((1 : F),11825)]) :
    ((1 : F) * rho 11826) * ((1 : F) * rho 0 + (1 : F) * rho 11824) = ((1 : F) * rho 11825) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2342 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11828)] * dotLC rho [((1 : F),0), ((-1 : F),11824)] = dotLC rho [((3702109553262815771862003709242440852882714909722048015247784195639240492968 : F),11823), ((1 : F),11827)]) :
    ((1 : F) * rho 11828) * ((1 : F) * rho 0 + (-1 : F) * rho 11824) = ((3702109553262815771862003709242440852882714909722048015247784195639240492968 : F) * rho 11823 + (1 : F) * rho 11827) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2352 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11834)] * dotLC rho [((1 : F),0), ((1 : F),11832)] = dotLC rho [((1 : F),11833)]) :
    ((1 : F) * rho 11834) * ((1 : F) * rho 0 + (1 : F) * rho 11832) = ((1 : F) * rho 11833) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2354 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11836)] * dotLC rho [((1 : F),0), ((-1 : F),11832)] = dotLC rho [((253461596196888032817850970020627848042044861403189606938410958646338692077 : F),11831), ((1 : F),11835)]) :
    ((1 : F) * rho 11836) * ((1 : F) * rho 0 + (-1 : F) * rho 11832) = ((253461596196888032817850970020627848042044861403189606938410958646338692077 : F) * rho 11831 + (1 : F) * rho 11835) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2364 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11842)] * dotLC rho [((1 : F),0), ((1 : F),11840)] = dotLC rho [((1 : F),11841)]) :
    ((1 : F) * rho 11842) * ((1 : F) * rho 0 + (1 : F) * rho 11840) = ((1 : F) * rho 11841) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2366 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11844)] * dotLC rho [((1 : F),0), ((-1 : F),11840)] = dotLC rho [((6245227541942932704749899499111816405283198002489269082020938846584472314194 : F),11839), ((1 : F),11843)]) :
    ((1 : F) * rho 11844) * ((1 : F) * rho 0 + (-1 : F) * rho 11840) = ((6245227541942932704749899499111816405283198002489269082020938846584472314194 : F) * rho 11839 + (1 : F) * rho 11843) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2376 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11850)] * dotLC rho [((1 : F),0), ((1 : F),11848)] = dotLC rho [((1 : F),11849)]) :
    ((1 : F) * rho 11850) * ((1 : F) * rho 0 + (1 : F) * rho 11848) = ((1 : F) * rho 11849) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2378 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11852)] * dotLC rho [((1 : F),0), ((-1 : F),11848)] = dotLC rho [((8364619418558576694744341958271819228975966424214227361663144626345419748815 : F),11847), ((1 : F),11851)]) :
    ((1 : F) * rho 11852) * ((1 : F) * rho 0 + (-1 : F) * rho 11848) = ((8364619418558576694744341958271819228975966424214227361663144626345419748815 : F) * rho 11847 + (1 : F) * rho 11851) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2388 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11858)] * dotLC rho [((1 : F),0), ((1 : F),11856)] = dotLC rho [((1 : F),11857)]) :
    ((1 : F) * rho 11858) * ((1 : F) * rho 0 + (1 : F) * rho 11856) = ((1 : F) * rho 11857) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2390 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11860)] * dotLC rho [((1 : F),0), ((-1 : F),11856)] = dotLC rho [((1817378687457020624755462264082421691218982664729824883126721352612404255600 : F),11855), ((1 : F),11859)]) :
    ((1 : F) * rho 11860) * ((1 : F) * rho 0 + (-1 : F) * rho 11856) = ((1817378687457020624755462264082421691218982664729824883126721352612404255600 : F) * rho 11855 + (1 : F) * rho 11859) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2400 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11866)] * dotLC rho [((1 : F),0), ((1 : F),11864)] = dotLC rho [((1 : F),11865)]) :
    ((1 : F) * rho 11866) * ((1 : F) * rho 0 + (1 : F) * rho 11864) = ((1 : F) * rho 11865) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2402 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11868)] * dotLC rho [((1 : F),0), ((-1 : F),11864)] = dotLC rho [((403791053054911137895304528771004345777042038720339851114474671493878842365 : F),11863), ((1 : F),11867)]) :
    ((1 : F) * rho 11868) * ((1 : F) * rho 0 + (-1 : F) * rho 11864) = ((403791053054911137895304528771004345777042038720339851114474671493878842365 : F) * rho 11863 + (1 : F) * rho 11867) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2412 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11874)] * dotLC rho [((1 : F),0), ((1 : F),11872)] = dotLC rho [((1 : F),11873)]) :
    ((1 : F) * rho 11874) * ((1 : F) * rho 0 + (1 : F) * rho 11872) = ((1 : F) * rho 11873) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2414 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11876)] * dotLC rho [((1 : F),0), ((-1 : F),11872)] = dotLC rho [((2687720070339739578938483868795789926886578890341288169022532085170458842744 : F),11871), ((1 : F),11875)]) :
    ((1 : F) * rho 11876) * ((1 : F) * rho 0 + (-1 : F) * rho 11872) = ((2687720070339739578938483868795789926886578890341288169022532085170458842744 : F) * rho 11871 + (1 : F) * rho 11875) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2424 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11882)] * dotLC rho [((1 : F),0), ((1 : F),11880)] = dotLC rho [((1 : F),11881)]) :
    ((1 : F) * rho 11882) * ((1 : F) * rho 0 + (1 : F) * rho 11880) = ((1 : F) * rho 11881) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2426 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11884)] * dotLC rho [((1 : F),0), ((-1 : F),11880)] = dotLC rho [((8144140382048316899503661990536716229579168918581621761250919430660187862563 : F),11879), ((1 : F),11883)]) :
    ((1 : F) * rho 11884) * ((1 : F) * rho 0 + (-1 : F) * rho 11880) = ((8144140382048316899503661990536716229579168918581621761250919430660187862563 : F) * rho 11879 + (1 : F) * rho 11883) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2436 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11890)] * dotLC rho [((1 : F),0), ((1 : F),11888)] = dotLC rho [((1 : F),11889)]) :
    ((1 : F) * rho 11890) * ((1 : F) * rho 0 + (1 : F) * rho 11888) = ((1 : F) * rho 11889) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2438 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11892)] * dotLC rho [((1 : F),0), ((-1 : F),11888)] = dotLC rho [((2756370994649371001514822979973237347955275730345829424415665159004582778318 : F),11887), ((1 : F),11891)]) :
    ((1 : F) * rho 11892) * ((1 : F) * rho 0 + (-1 : F) * rho 11888) = ((2756370994649371001514822979973237347955275730345829424415665159004582778318 : F) * rho 11887 + (1 : F) * rho 11891) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2448 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11898)] * dotLC rho [((1 : F),0), ((1 : F),11896)] = dotLC rho [((1 : F),11897)]) :
    ((1 : F) * rho 11898) * ((1 : F) * rho 0 + (1 : F) * rho 11896) = ((1 : F) * rho 11897) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2450 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11900)] * dotLC rho [((1 : F),0), ((-1 : F),11896)] = dotLC rho [((4714461619534455898744240434334874034970220974714038100129528765912535043990 : F),11895), ((1 : F),11899)]) :
    ((1 : F) * rho 11900) * ((1 : F) * rho 0 + (-1 : F) * rho 11896) = ((4714461619534455898744240434334874034970220974714038100129528765912535043990 : F) * rho 11895 + (1 : F) * rho 11899) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2460 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11906)] * dotLC rho [((1 : F),0), ((1 : F),11904)] = dotLC rho [((1 : F),11905)]) :
    ((1 : F) * rho 11906) * ((1 : F) * rho 0 + (1 : F) * rho 11904) = ((1 : F) * rho 11905) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2462 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11908)] * dotLC rho [((1 : F),0), ((-1 : F),11904)] = dotLC rho [((501889869372127488315441909350896654511326575062150612104888737839097441498 : F),11903), ((1 : F),11907)]) :
    ((1 : F) * rho 11908) * ((1 : F) * rho 0 + (-1 : F) * rho 11904) = ((501889869372127488315441909350896654511326575062150612104888737839097441498 : F) * rho 11903 + (1 : F) * rho 11907) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2472 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11914)] * dotLC rho [((1 : F),0), ((1 : F),11912)] = dotLC rho [((1 : F),11913)]) :
    ((1 : F) * rho 11914) * ((1 : F) * rho 0 + (1 : F) * rho 11912) = ((1 : F) * rho 11913) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2474 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11916)] * dotLC rho [((1 : F),0), ((-1 : F),11912)] = dotLC rho [((4959556667043552077209584601103825479322808791775024474845174059752255153602 : F),11911), ((1 : F),11915)]) :
    ((1 : F) * rho 11916) * ((1 : F) * rho 0 + (-1 : F) * rho 11912) = ((4959556667043552077209584601103825479322808791775024474845174059752255153602 : F) * rho 11911 + (1 : F) * rho 11915) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2484 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11922)] * dotLC rho [((1 : F),0), ((1 : F),11920)] = dotLC rho [((1 : F),11921)]) :
    ((1 : F) * rho 11922) * ((1 : F) * rho 0 + (1 : F) * rho 11920) = ((1 : F) * rho 11921) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2486 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11924)] * dotLC rho [((1 : F),0), ((-1 : F),11920)] = dotLC rho [((7746163494556774203151556829671730236305550759537398987064505725802393598435 : F),11919), ((1 : F),11923)]) :
    ((1 : F) * rho 11924) * ((1 : F) * rho 0 + (-1 : F) * rho 11920) = ((7746163494556774203151556829671730236305550759537398987064505725802393598435 : F) * rho 11919 + (1 : F) * rho 11923) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2496 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11930)] * dotLC rho [((1 : F),0), ((1 : F),11928)] = dotLC rho [((1 : F),11929)]) :
    ((1 : F) * rho 11930) * ((1 : F) * rho 0 + (1 : F) * rho 11928) = ((1 : F) * rho 11929) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2498 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11932)] * dotLC rho [((1 : F),0), ((-1 : F),11928)] = dotLC rho [((425272998113274706435570557115542604675582173846616442817200175191030863052 : F),11927), ((1 : F),11931)]) :
    ((1 : F) * rho 11932) * ((1 : F) * rho 0 + (-1 : F) * rho 11928) = ((425272998113274706435570557115542604675582173846616442817200175191030863052 : F) * rho 11927 + (1 : F) * rho 11931) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2508 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11938)] * dotLC rho [((1 : F),0), ((1 : F),11936)] = dotLC rho [((1 : F),11937)]) :
    ((1 : F) * rho 11938) * ((1 : F) * rho 0 + (1 : F) * rho 11936) = ((1 : F) * rho 11937) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2510 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11940)] * dotLC rho [((1 : F),0), ((-1 : F),11936)] = dotLC rho [((5380469110595840356863911053038746614182979399323432332846601031611444676632 : F),11935), ((1 : F),11939)]) :
    ((1 : F) * rho 11940) * ((1 : F) * rho 0 + (-1 : F) * rho 11936) = ((5380469110595840356863911053038746614182979399323432332846601031611444676632 : F) * rho 11935 + (1 : F) * rho 11939) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2520 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11946)] * dotLC rho [((1 : F),0), ((1 : F),11944)] = dotLC rho [((1 : F),11945)]) :
    ((1 : F) * rho 11946) * ((1 : F) * rho 0 + (1 : F) * rho 11944) = ((1 : F) * rho 11945) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2522 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11948)] * dotLC rho [((1 : F),0), ((-1 : F),11944)] = dotLC rho [((2008013706161193147604665284286052423456217706453556425027659321683596995725 : F),11943), ((1 : F),11947)]) :
    ((1 : F) * rho 11948) * ((1 : F) * rho 0 + (-1 : F) * rho 11944) = ((2008013706161193147604665284286052423456217706453556425027659321683596995725 : F) * rho 11943 + (1 : F) * rho 11947) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2532 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11954)] * dotLC rho [((1 : F),0), ((1 : F),11952)] = dotLC rho [((1 : F),11953)]) :
    ((1 : F) * rho 11954) * ((1 : F) * rho 0 + (1 : F) * rho 11952) = ((1 : F) * rho 11953) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2534 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11956)] * dotLC rho [((1 : F),0), ((-1 : F),11952)] = dotLC rho [((3619129681065247411921270517059292706904288018830965660580809584702371436727 : F),11951), ((1 : F),11955)]) :
    ((1 : F) * rho 11956) * ((1 : F) * rho 0 + (-1 : F) * rho 11952) = ((3619129681065247411921270517059292706904288018830965660580809584702371436727 : F) * rho 11951 + (1 : F) * rho 11955) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2544 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11962)] * dotLC rho [((1 : F),0), ((1 : F),11960)] = dotLC rho [((1 : F),11961)]) :
    ((1 : F) * rho 11962) * ((1 : F) * rho 0 + (1 : F) * rho 11960) = ((1 : F) * rho 11961) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2546 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11964)] * dotLC rho [((1 : F),0), ((-1 : F),11960)] = dotLC rho [((4283786838400300066324321623195649828920717400963322924813235817385419816721 : F),11959), ((1 : F),11963)]) :
    ((1 : F) * rho 11964) * ((1 : F) * rho 0 + (-1 : F) * rho 11960) = ((4283786838400300066324321623195649828920717400963322924813235817385419816721 : F) * rho 11959 + (1 : F) * rho 11963) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2556 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11970)] * dotLC rho [((1 : F),0), ((1 : F),11968)] = dotLC rho [((1 : F),11969)]) :
    ((1 : F) * rho 11970) * ((1 : F) * rho 0 + (1 : F) * rho 11968) = ((1 : F) * rho 11969) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2558 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11972)] * dotLC rho [((1 : F),0), ((-1 : F),11968)] = dotLC rho [((2311660380818761677598533666405811358221301884306842696561635551978440670410 : F),11967), ((1 : F),11971)]) :
    ((1 : F) * rho 11972) * ((1 : F) * rho 0 + (-1 : F) * rho 11968) = ((2311660380818761677598533666405811358221301884306842696561635551978440670410 : F) * rho 11967 + (1 : F) * rho 11971) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2568 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11978)] * dotLC rho [((1 : F),0), ((1 : F),11976)] = dotLC rho [((1 : F),11977)]) :
    ((1 : F) * rho 11978) * ((1 : F) * rho 0 + (1 : F) * rho 11976) = ((1 : F) * rho 11977) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2570 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11980)] * dotLC rho [((1 : F),0), ((-1 : F),11976)] = dotLC rho [((5883740307947681023813440313325877272402412810753281940711399470069447571560 : F),11975), ((1 : F),11979)]) :
    ((1 : F) * rho 11980) * ((1 : F) * rho 0 + (-1 : F) * rho 11976) = ((5883740307947681023813440313325877272402412810753281940711399470069447571560 : F) * rho 11975 + (1 : F) * rho 11979) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2580 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11986)] * dotLC rho [((1 : F),0), ((1 : F),11984)] = dotLC rho [((1 : F),11985)]) :
    ((1 : F) * rho 11986) * ((1 : F) * rho 0 + (1 : F) * rho 11984) = ((1 : F) * rho 11985) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2582 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11988)] * dotLC rho [((1 : F),0), ((-1 : F),11984)] = dotLC rho [((5746206530656838928038616120510629820259703190830463551909612314956626586781 : F),11983), ((1 : F),11987)]) :
    ((1 : F) * rho 11988) * ((1 : F) * rho 0 + (-1 : F) * rho 11984) = ((5746206530656838928038616120510629820259703190830463551909612314956626586781 : F) * rho 11983 + (1 : F) * rho 11987) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2592 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11994)] * dotLC rho [((1 : F),0), ((1 : F),11992)] = dotLC rho [((1 : F),11993)]) :
    ((1 : F) * rho 11994) * ((1 : F) * rho 0 + (1 : F) * rho 11992) = ((1 : F) * rho 11993) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2594 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),11996)] * dotLC rho [((1 : F),0), ((-1 : F),11992)] = dotLC rho [((5512695764164745465060022187452574563225082717033286018787053361046220837852 : F),11991), ((1 : F),11995)]) :
    ((1 : F) * rho 11996) * ((1 : F) * rho 0 + (-1 : F) * rho 11992) = ((5512695764164745465060022187452574563225082717033286018787053361046220837852 : F) * rho 11991 + (1 : F) * rho 11995) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2604 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12002)] * dotLC rho [((1 : F),0), ((1 : F),12000)] = dotLC rho [((1 : F),12001)]) :
    ((1 : F) * rho 12002) * ((1 : F) * rho 0 + (1 : F) * rho 12000) = ((1 : F) * rho 12001) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2606 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12004)] * dotLC rho [((1 : F),0), ((-1 : F),12000)] = dotLC rho [((2327043588748197460819864343021492943573068543224764770309424544645759291614 : F),11999), ((1 : F),12003)]) :
    ((1 : F) * rho 12004) * ((1 : F) * rho 0 + (-1 : F) * rho 12000) = ((2327043588748197460819864343021492943573068543224764770309424544645759291614 : F) * rho 11999 + (1 : F) * rho 12003) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2616 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12010)] * dotLC rho [((1 : F),0), ((1 : F),12008)] = dotLC rho [((1 : F),12009)]) :
    ((1 : F) * rho 12010) * ((1 : F) * rho 0 + (1 : F) * rho 12008) = ((1 : F) * rho 12009) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2618 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12012)] * dotLC rho [((1 : F),0), ((-1 : F),12008)] = dotLC rho [((1524687550030232702951513448012918256803716959825717790244003867069865346828 : F),12007), ((1 : F),12011)]) :
    ((1 : F) * rho 12012) * ((1 : F) * rho 0 + (-1 : F) * rho 12008) = ((1524687550030232702951513448012918256803716959825717790244003867069865346828 : F) * rho 12007 + (1 : F) * rho 12011) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2628 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12018)] * dotLC rho [((1 : F),0), ((1 : F),12016)] = dotLC rho [((1 : F),12017)]) :
    ((1 : F) * rho 12018) * ((1 : F) * rho 0 + (1 : F) * rho 12016) = ((1 : F) * rho 12017) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2630 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12020)] * dotLC rho [((1 : F),0), ((-1 : F),12016)] = dotLC rho [((2845136285568219750436394432322052874778007193396585580645200250163022766643 : F),12015), ((1 : F),12019)]) :
    ((1 : F) * rho 12020) * ((1 : F) * rho 0 + (-1 : F) * rho 12016) = ((2845136285568219750436394432322052874778007193396585580645200250163022766643 : F) * rho 12015 + (1 : F) * rho 12019) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2640 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12026)] * dotLC rho [((1 : F),0), ((1 : F),12024)] = dotLC rho [((1 : F),12025)]) :
    ((1 : F) * rho 12026) * ((1 : F) * rho 0 + (1 : F) * rho 12024) = ((1 : F) * rho 12025) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2642 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12028)] * dotLC rho [((1 : F),0), ((-1 : F),12024)] = dotLC rho [((6129891755611320123692407927027283043726525342868007819745138262348822112667 : F),12023), ((1 : F),12027)]) :
    ((1 : F) * rho 12028) * ((1 : F) * rho 0 + (-1 : F) * rho 12024) = ((6129891755611320123692407927027283043726525342868007819745138262348822112667 : F) * rho 12023 + (1 : F) * rho 12027) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2652 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12034)] * dotLC rho [((1 : F),0), ((1 : F),12032)] = dotLC rho [((1 : F),12033)]) :
    ((1 : F) * rho 12034) * ((1 : F) * rho 0 + (1 : F) * rho 12032) = ((1 : F) * rho 12033) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2654 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12036)] * dotLC rho [((1 : F),0), ((-1 : F),12032)] = dotLC rho [((4700198205642434552291941918539472829340343797111298197533091517915061151145 : F),12031), ((1 : F),12035)]) :
    ((1 : F) * rho 12036) * ((1 : F) * rho 0 + (-1 : F) * rho 12032) = ((4700198205642434552291941918539472829340343797111298197533091517915061151145 : F) * rho 12031 + (1 : F) * rho 12035) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2664 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12042)] * dotLC rho [((1 : F),0), ((1 : F),12040)] = dotLC rho [((1 : F),12041)]) :
    ((1 : F) * rho 12042) * ((1 : F) * rho 0 + (1 : F) * rho 12040) = ((1 : F) * rho 12041) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2666 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12044)] * dotLC rho [((1 : F),0), ((-1 : F),12040)] = dotLC rho [((7634166770098917973582642096128082672542221403650084275878050446888933747553 : F),12039), ((1 : F),12043)]) :
    ((1 : F) * rho 12044) * ((1 : F) * rho 0 + (-1 : F) * rho 12040) = ((7634166770098917973582642096128082672542221403650084275878050446888933747553 : F) * rho 12039 + (1 : F) * rho 12043) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2676 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12050)] * dotLC rho [((1 : F),0), ((1 : F),12048)] = dotLC rho [((1 : F),12049)]) :
    ((1 : F) * rho 12050) * ((1 : F) * rho 0 + (1 : F) * rho 12048) = ((1 : F) * rho 12049) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2678 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12052)] * dotLC rho [((1 : F),0), ((-1 : F),12048)] = dotLC rho [((1160985004490977394013976069211356469678005287008798597994534853551341947775 : F),12047), ((1 : F),12051)]) :
    ((1 : F) * rho 12052) * ((1 : F) * rho 0 + (-1 : F) * rho 12048) = ((1160985004490977394013976069211356469678005287008798597994534853551341947775 : F) * rho 12047 + (1 : F) * rho 12051) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2688 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12058)] * dotLC rho [((1 : F),0), ((1 : F),12056)] = dotLC rho [((1 : F),12057)]) :
    ((1 : F) * rho 12058) * ((1 : F) * rho 0 + (1 : F) * rho 12056) = ((1 : F) * rho 12057) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2690 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12060)] * dotLC rho [((1 : F),0), ((-1 : F),12056)] = dotLC rho [((1453118749256212541404758338467303336934370592295516291629506326827137815799 : F),12055), ((1 : F),12059)]) :
    ((1 : F) * rho 12060) * ((1 : F) * rho 0 + (-1 : F) * rho 12056) = ((1453118749256212541404758338467303336934370592295516291629506326827137815799 : F) * rho 12055 + (1 : F) * rho 12059) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2700 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12066)] * dotLC rho [((1 : F),0), ((1 : F),12064)] = dotLC rho [((1 : F),12065)]) :
    ((1 : F) * rho 12066) * ((1 : F) * rho 0 + (1 : F) * rho 12064) = ((1 : F) * rho 12065) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2702 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12068)] * dotLC rho [((1 : F),0), ((-1 : F),12064)] = dotLC rho [((7827853259170804713991893011022796022845057128986710110223706957763402226623 : F),12063), ((1 : F),12067)]) :
    ((1 : F) * rho 12068) * ((1 : F) * rho 0 + (-1 : F) * rho 12064) = ((7827853259170804713991893011022796022845057128986710110223706957763402226623 : F) * rho 12063 + (1 : F) * rho 12067) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2712 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12074)] * dotLC rho [((1 : F),0), ((1 : F),12072)] = dotLC rho [((1 : F),12073)]) :
    ((1 : F) * rho 12074) * ((1 : F) * rho 0 + (1 : F) * rho 12072) = ((1 : F) * rho 12073) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2714 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12076)] * dotLC rho [((1 : F),0), ((-1 : F),12072)] = dotLC rho [((8005889526825905491552433809544164518883062342835599189025861362784295992004 : F),12071), ((1 : F),12075)]) :
    ((1 : F) * rho 12076) * ((1 : F) * rho 0 + (-1 : F) * rho 12072) = ((8005889526825905491552433809544164518883062342835599189025861362784295992004 : F) * rho 12071 + (1 : F) * rho 12075) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2724 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12082)] * dotLC rho [((1 : F),0), ((1 : F),12080)] = dotLC rho [((1 : F),12081)]) :
    ((1 : F) * rho 12082) * ((1 : F) * rho 0 + (1 : F) * rho 12080) = ((1 : F) * rho 12081) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2726 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12084)] * dotLC rho [((1 : F),0), ((-1 : F),12080)] = dotLC rho [((7238630441001205083097574968546547856776126466018673044057816421723505778404 : F),12079), ((1 : F),12083)]) :
    ((1 : F) * rho 12084) * ((1 : F) * rho 0 + (-1 : F) * rho 12080) = ((7238630441001205083097574968546547856776126466018673044057816421723505778404 : F) * rho 12079 + (1 : F) * rho 12083) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2736 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12090)] * dotLC rho [((1 : F),0), ((1 : F),12088)] = dotLC rho [((1 : F),12089)]) :
    ((1 : F) * rho 12090) * ((1 : F) * rho 0 + (1 : F) * rho 12088) = ((1 : F) * rho 12089) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2738 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12092)] * dotLC rho [((1 : F),0), ((-1 : F),12088)] = dotLC rho [((4326140114106720923528589862196558523836549701908261266898820991073477574299 : F),12087), ((1 : F),12091)]) :
    ((1 : F) * rho 12092) * ((1 : F) * rho 0 + (-1 : F) * rho 12088) = ((4326140114106720923528589862196558523836549701908261266898820991073477574299 : F) * rho 12087 + (1 : F) * rho 12091) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2748 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12098)] * dotLC rho [((1 : F),0), ((1 : F),12096)] = dotLC rho [((1 : F),12097)]) :
    ((1 : F) * rho 12098) * ((1 : F) * rho 0 + (1 : F) * rho 12096) = ((1 : F) * rho 12097) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2750 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12100)] * dotLC rho [((1 : F),0), ((-1 : F),12096)] = dotLC rho [((3663393285105251742393720415645452050298330469619403402847976719398758919093 : F),12095), ((1 : F),12099)]) :
    ((1 : F) * rho 12100) * ((1 : F) * rho 0 + (-1 : F) * rho 12096) = ((3663393285105251742393720415645452050298330469619403402847976719398758919093 : F) * rho 12095 + (1 : F) * rho 12099) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2760 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12106)] * dotLC rho [((1 : F),0), ((1 : F),12104)] = dotLC rho [((1 : F),12105)]) :
    ((1 : F) * rho 12106) * ((1 : F) * rho 0 + (1 : F) * rho 12104) = ((1 : F) * rho 12105) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2762 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12108)] * dotLC rho [((1 : F),0), ((-1 : F),12104)] = dotLC rho [((180067094240110371442305313697333734740584193862261945959707554213485383729 : F),12103), ((1 : F),12107)]) :
    ((1 : F) * rho 12108) * ((1 : F) * rho 0 + (-1 : F) * rho 12104) = ((180067094240110371442305313697333734740584193862261945959707554213485383729 : F) * rho 12103 + (1 : F) * rho 12107) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2772 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12114)] * dotLC rho [((1 : F),0), ((1 : F),12112)] = dotLC rho [((1 : F),12113)]) :
    ((1 : F) * rho 12114) * ((1 : F) * rho 0 + (1 : F) * rho 12112) = ((1 : F) * rho 12113) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2774 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12116)] * dotLC rho [((1 : F),0), ((-1 : F),12112)] = dotLC rho [((4575270569328318470486938897336036862863364385698504027425320529974255957201 : F),12111), ((1 : F),12115)]) :
    ((1 : F) * rho 12116) * ((1 : F) * rho 0 + (-1 : F) * rho 12112) = ((4575270569328318470486938897336036862863364385698504027425320529974255957201 : F) * rho 12111 + (1 : F) * rho 12115) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2784 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12122)] * dotLC rho [((1 : F),0), ((1 : F),12120)] = dotLC rho [((1 : F),12121)]) :
    ((1 : F) * rho 12122) * ((1 : F) * rho 0 + (1 : F) * rho 12120) = ((1 : F) * rho 12121) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2786 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12124)] * dotLC rho [((1 : F),0), ((-1 : F),12120)] = dotLC rho [((1486780287543954489823522891297711284396403648289032540050057456190694907788 : F),12119), ((1 : F),12123)]) :
    ((1 : F) * rho 12124) * ((1 : F) * rho 0 + (-1 : F) * rho 12120) = ((1486780287543954489823522891297711284396403648289032540050057456190694907788 : F) * rho 12119 + (1 : F) * rho 12123) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2796 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12130)] * dotLC rho [((1 : F),0), ((1 : F),12128)] = dotLC rho [((1 : F),12129)]) :
    ((1 : F) * rho 12130) * ((1 : F) * rho 0 + (1 : F) * rho 12128) = ((1 : F) * rho 12129) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2798 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12132)] * dotLC rho [((1 : F),0), ((-1 : F),12128)] = dotLC rho [((3350656777303658214493327625478144349501948891314462275421216810846210789315 : F),12127), ((1 : F),12131)]) :
    ((1 : F) * rho 12132) * ((1 : F) * rho 0 + (-1 : F) * rho 12128) = ((3350656777303658214493327625478144349501948891314462275421216810846210789315 : F) * rho 12127 + (1 : F) * rho 12131) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2808 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12138)] * dotLC rho [((1 : F),0), ((1 : F),12136)] = dotLC rho [((1 : F),12137)]) :
    ((1 : F) * rho 12138) * ((1 : F) * rho 0 + (1 : F) * rho 12136) = ((1 : F) * rho 12137) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2810 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12140)] * dotLC rho [((1 : F),0), ((-1 : F),12136)] = dotLC rho [((1996417639840234163697893216845292313371120285295325952405750385857426515284 : F),12135), ((1 : F),12139)]) :
    ((1 : F) * rho 12140) * ((1 : F) * rho 0 + (-1 : F) * rho 12136) = ((1996417639840234163697893216845292313371120285295325952405750385857426515284 : F) * rho 12135 + (1 : F) * rho 12139) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2820 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12146)] * dotLC rho [((1 : F),0), ((1 : F),12144)] = dotLC rho [((1 : F),12145)]) :
    ((1 : F) * rho 12146) * ((1 : F) * rho 0 + (1 : F) * rho 12144) = ((1 : F) * rho 12145) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2822 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12148)] * dotLC rho [((1 : F),0), ((-1 : F),12144)] = dotLC rho [((871002644962677752583000996699517989104902087973009164892814981805484131960 : F),12143), ((1 : F),12147)]) :
    ((1 : F) * rho 12148) * ((1 : F) * rho 0 + (-1 : F) * rho 12144) = ((871002644962677752583000996699517989104902087973009164892814981805484131960 : F) * rho 12143 + (1 : F) * rho 12147) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2832 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12154)] * dotLC rho [((1 : F),0), ((1 : F),12152)] = dotLC rho [((1 : F),12153)]) :
    ((1 : F) * rho 12154) * ((1 : F) * rho 0 + (1 : F) * rho 12152) = ((1 : F) * rho 12153) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2834 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12156)] * dotLC rho [((1 : F),0), ((-1 : F),12152)] = dotLC rho [((6466222737038627722256360619953286660845984252513494155872622031887741910973 : F),12151), ((1 : F),12155)]) :
    ((1 : F) * rho 12156) * ((1 : F) * rho 0 + (-1 : F) * rho 12152) = ((6466222737038627722256360619953286660845984252513494155872622031887741910973 : F) * rho 12151 + (1 : F) * rho 12155) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2844 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12162)] * dotLC rho [((1 : F),0), ((1 : F),12160)] = dotLC rho [((1 : F),12161)]) :
    ((1 : F) * rho 12162) * ((1 : F) * rho 0 + (1 : F) * rho 12160) = ((1 : F) * rho 12161) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2846 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12164)] * dotLC rho [((1 : F),0), ((-1 : F),12160)] = dotLC rho [((7867746918729198030487154315459304130614042901724763917065754161916585302042 : F),12159), ((1 : F),12163)]) :
    ((1 : F) * rho 12164) * ((1 : F) * rho 0 + (-1 : F) * rho 12160) = ((7867746918729198030487154315459304130614042901724763917065754161916585302042 : F) * rho 12159 + (1 : F) * rho 12163) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2856 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12170)] * dotLC rho [((1 : F),0), ((1 : F),12168)] = dotLC rho [((1 : F),12169)]) :
    ((1 : F) * rho 12170) * ((1 : F) * rho 0 + (1 : F) * rho 12168) = ((1 : F) * rho 12169) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2858 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12172)] * dotLC rho [((1 : F),0), ((-1 : F),12168)] = dotLC rho [((4575919188747761618366133796183756067006502983935378379286122397394308721634 : F),12167), ((1 : F),12171)]) :
    ((1 : F) * rho 12172) * ((1 : F) * rho 0 + (-1 : F) * rho 12168) = ((4575919188747761618366133796183756067006502983935378379286122397394308721634 : F) * rho 12167 + (1 : F) * rho 12171) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2868 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12178)] * dotLC rho [((1 : F),0), ((1 : F),12176)] = dotLC rho [((1 : F),12177)]) :
    ((1 : F) * rho 12178) * ((1 : F) * rho 0 + (1 : F) * rho 12176) = ((1 : F) * rho 12177) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2870 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12180)] * dotLC rho [((1 : F),0), ((-1 : F),12176)] = dotLC rho [((6042148642472302528239620945787525082868703602503016932637100780886760030143 : F),12175), ((1 : F),12179)]) :
    ((1 : F) * rho 12180) * ((1 : F) * rho 0 + (-1 : F) * rho 12176) = ((6042148642472302528239620945787525082868703602503016932637100780886760030143 : F) * rho 12175 + (1 : F) * rho 12179) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2880 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12186)] * dotLC rho [((1 : F),0), ((1 : F),12184)] = dotLC rho [((1 : F),12185)]) :
    ((1 : F) * rho 12186) * ((1 : F) * rho 0 + (1 : F) * rho 12184) = ((1 : F) * rho 12185) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2882 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12188)] * dotLC rho [((1 : F),0), ((-1 : F),12184)] = dotLC rho [((4794785970878913067926295119699854505632666953415451106905505398159597823712 : F),12183), ((1 : F),12187)]) :
    ((1 : F) * rho 12188) * ((1 : F) * rho 0 + (-1 : F) * rho 12184) = ((4794785970878913067926295119699854505632666953415451106905505398159597823712 : F) * rho 12183 + (1 : F) * rho 12187) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2892 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12194)] * dotLC rho [((1 : F),0), ((1 : F),12192)] = dotLC rho [((1 : F),12193)]) :
    ((1 : F) * rho 12194) * ((1 : F) * rho 0 + (1 : F) * rho 12192) = ((1 : F) * rho 12193) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2894 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12196)] * dotLC rho [((1 : F),0), ((-1 : F),12192)] = dotLC rho [((1564040926591829245088918706763419623562069806685178060918578148314765329414 : F),12191), ((1 : F),12195)]) :
    ((1 : F) * rho 12196) * ((1 : F) * rho 0 + (-1 : F) * rho 12192) = ((1564040926591829245088918706763419623562069806685178060918578148314765329414 : F) * rho 12191 + (1 : F) * rho 12195) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2904 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12202)] * dotLC rho [((1 : F),0), ((1 : F),12200)] = dotLC rho [((1 : F),12201)]) :
    ((1 : F) * rho 12202) * ((1 : F) * rho 0 + (1 : F) * rho 12200) = ((1 : F) * rho 12201) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2906 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12204)] * dotLC rho [((1 : F),0), ((-1 : F),12200)] = dotLC rho [((6362869165742469346301200850541012078541455956340409671563801911535268523359 : F),12199), ((1 : F),12203)]) :
    ((1 : F) * rho 12204) * ((1 : F) * rho 0 + (-1 : F) * rho 12200) = ((6362869165742469346301200850541012078541455956340409671563801911535268523359 : F) * rho 12199 + (1 : F) * rho 12203) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2916 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12210)] * dotLC rho [((1 : F),0), ((1 : F),12208)] = dotLC rho [((1 : F),12209)]) :
    ((1 : F) * rho 12210) * ((1 : F) * rho 0 + (1 : F) * rho 12208) = ((1 : F) * rho 12209) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2918 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12212)] * dotLC rho [((1 : F),0), ((-1 : F),12208)] = dotLC rho [((3961186223124732871995860449872960067640287897075524944937769804095322938180 : F),12207), ((1 : F),12211)]) :
    ((1 : F) * rho 12212) * ((1 : F) * rho 0 + (-1 : F) * rho 12208) = ((3961186223124732871995860449872960067640287897075524944937769804095322938180 : F) * rho 12207 + (1 : F) * rho 12211) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2928 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12218)] * dotLC rho [((1 : F),0), ((1 : F),12216)] = dotLC rho [((1 : F),12217)]) :
    ((1 : F) * rho 12218) * ((1 : F) * rho 0 + (1 : F) * rho 12216) = ((1 : F) * rho 12217) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2930 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12220)] * dotLC rho [((1 : F),0), ((-1 : F),12216)] = dotLC rho [((249611018464872621319376028350979165207303546512871095732785697349911382853 : F),12215), ((1 : F),12219)]) :
    ((1 : F) * rho 12220) * ((1 : F) * rho 0 + (-1 : F) * rho 12216) = ((249611018464872621319376028350979165207303546512871095732785697349911382853 : F) * rho 12215 + (1 : F) * rho 12219) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2940 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12226)] * dotLC rho [((1 : F),0), ((1 : F),12224)] = dotLC rho [((1 : F),12225)]) :
    ((1 : F) * rho 12226) * ((1 : F) * rho 0 + (1 : F) * rho 12224) = ((1 : F) * rho 12225) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2942 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12228)] * dotLC rho [((1 : F),0), ((-1 : F),12224)] = dotLC rho [((7162084712928536621923541798636941379786998285405238131879906082480347595196 : F),12223), ((1 : F),12227)]) :
    ((1 : F) * rho 12228) * ((1 : F) * rho 0 + (-1 : F) * rho 12224) = ((7162084712928536621923541798636941379786998285405238131879906082480347595196 : F) * rho 12223 + (1 : F) * rho 12227) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2952 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12234)] * dotLC rho [((1 : F),0), ((1 : F),12232)] = dotLC rho [((1 : F),12233)]) :
    ((1 : F) * rho 12234) * ((1 : F) * rho 0 + (1 : F) * rho 12232) = ((1 : F) * rho 12233) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2954 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12236)] * dotLC rho [((1 : F),0), ((-1 : F),12232)] = dotLC rho [((320851582488862637696764994488530574459903534318464725321758909427650428564 : F),12231), ((1 : F),12235)]) :
    ((1 : F) * rho 12236) * ((1 : F) * rho 0 + (-1 : F) * rho 12232) = ((320851582488862637696764994488530574459903534318464725321758909427650428564 : F) * rho 12231 + (1 : F) * rho 12235) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2964 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12242)] * dotLC rho [((1 : F),0), ((1 : F),12240)] = dotLC rho [((1 : F),12241)]) :
    ((1 : F) * rho 12242) * ((1 : F) * rho 0 + (1 : F) * rho 12240) = ((1 : F) * rho 12241) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2966 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12244)] * dotLC rho [((1 : F),0), ((-1 : F),12240)] = dotLC rho [((7541996290701879079768606684482206012531765964164947567251836001571860653368 : F),12239), ((1 : F),12243)]) :
    ((1 : F) * rho 12244) * ((1 : F) * rho 0 + (-1 : F) * rho 12240) = ((7541996290701879079768606684482206012531765964164947567251836001571860653368 : F) * rho 12239 + (1 : F) * rho 12243) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2976 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12250)] * dotLC rho [((1 : F),0), ((1 : F),12248)] = dotLC rho [((1 : F),12249)]) :
    ((1 : F) * rho 12250) * ((1 : F) * rho 0 + (1 : F) * rho 12248) = ((1 : F) * rho 12249) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2978 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12252)] * dotLC rho [((1 : F),0), ((-1 : F),12248)] = dotLC rho [((6591911443875015754951556178520942561670930331123398090309568361407479104624 : F),12247), ((1 : F),12251)]) :
    ((1 : F) * rho 12252) * ((1 : F) * rho 0 + (-1 : F) * rho 12248) = ((6591911443875015754951556178520942561670930331123398090309568361407479104624 : F) * rho 12247 + (1 : F) * rho 12251) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2988 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12258)] * dotLC rho [((1 : F),0), ((1 : F),12256)] = dotLC rho [((1 : F),12257)]) :
    ((1 : F) * rho 12258) * ((1 : F) * rho 0 + (1 : F) * rho 12256) = ((1 : F) * rho 12257) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step2990 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12260)] * dotLC rho [((1 : F),0), ((-1 : F),12256)] = dotLC rho [((7058452650765656646120683549434280436679827276751043285494565195932871261332 : F),12255), ((1 : F),12259)]) :
    ((1 : F) * rho 12260) * ((1 : F) * rho 0 + (-1 : F) * rho 12256) = ((7058452650765656646120683549434280436679827276751043285494565195932871261332 : F) * rho 12255 + (1 : F) * rho 12259) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3000 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12266)] * dotLC rho [((1 : F),0), ((1 : F),12264)] = dotLC rho [((1 : F),12265)]) :
    ((1 : F) * rho 12266) * ((1 : F) * rho 0 + (1 : F) * rho 12264) = ((1 : F) * rho 12265) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3002 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12268)] * dotLC rho [((1 : F),0), ((-1 : F),12264)] = dotLC rho [((6843864767837380143994190780376740979248228599325777620936675789992590838328 : F),12263), ((1 : F),12267)]) :
    ((1 : F) * rho 12268) * ((1 : F) * rho 0 + (-1 : F) * rho 12264) = ((6843864767837380143994190780376740979248228599325777620936675789992590838328 : F) * rho 12263 + (1 : F) * rho 12267) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3012 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12274)] * dotLC rho [((1 : F),0), ((1 : F),12272)] = dotLC rho [((1 : F),12273)]) :
    ((1 : F) * rho 12274) * ((1 : F) * rho 0 + (1 : F) * rho 12272) = ((1 : F) * rho 12273) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3014 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12276)] * dotLC rho [((1 : F),0), ((-1 : F),12272)] = dotLC rho [((4699907538289105773507414360611783141110068059756876015105640673705435319973 : F),12271), ((1 : F),12275)]) :
    ((1 : F) * rho 12276) * ((1 : F) * rho 0 + (-1 : F) * rho 12272) = ((4699907538289105773507414360611783141110068059756876015105640673705435319973 : F) * rho 12271 + (1 : F) * rho 12275) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3024 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12282)] * dotLC rho [((1 : F),0), ((1 : F),12280)] = dotLC rho [((1 : F),12281)]) :
    ((1 : F) * rho 12282) * ((1 : F) * rho 0 + (1 : F) * rho 12280) = ((1 : F) * rho 12281) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3026 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12284)] * dotLC rho [((1 : F),0), ((-1 : F),12280)] = dotLC rho [((7291108800004827570419680442824156180525560817794866472765900477194307816149 : F),12279), ((1 : F),12283)]) :
    ((1 : F) * rho 12284) * ((1 : F) * rho 0 + (-1 : F) * rho 12280) = ((7291108800004827570419680442824156180525560817794866472765900477194307816149 : F) * rho 12279 + (1 : F) * rho 12283) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3036 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12290)] * dotLC rho [((1 : F),0), ((1 : F),12288)] = dotLC rho [((1 : F),12289)]) :
    ((1 : F) * rho 12290) * ((1 : F) * rho 0 + (1 : F) * rho 12288) = ((1 : F) * rho 12289) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3038 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12292)] * dotLC rho [((1 : F),0), ((-1 : F),12288)] = dotLC rho [((4625946540665906587216139684599829161587215191751227507331693251531984881136 : F),12287), ((1 : F),12291)]) :
    ((1 : F) * rho 12292) * ((1 : F) * rho 0 + (-1 : F) * rho 12288) = ((4625946540665906587216139684599829161587215191751227507331693251531984881136 : F) * rho 12287 + (1 : F) * rho 12291) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3048 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12298)] * dotLC rho [((1 : F),0), ((1 : F),12296)] = dotLC rho [((1 : F),12297)]) :
    ((1 : F) * rho 12298) * ((1 : F) * rho 0 + (1 : F) * rho 12296) = ((1 : F) * rho 12297) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3050 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12300)] * dotLC rho [((1 : F),0), ((-1 : F),12296)] = dotLC rho [((2471189939751126546221503288611272815604424601029363803767627969102938975718 : F),12295), ((1 : F),12299)]) :
    ((1 : F) * rho 12300) * ((1 : F) * rho 0 + (-1 : F) * rho 12296) = ((2471189939751126546221503288611272815604424601029363803767627969102938975718 : F) * rho 12295 + (1 : F) * rho 12299) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3060 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12306)] * dotLC rho [((1 : F),0), ((1 : F),12304)] = dotLC rho [((1 : F),12305)]) :
    ((1 : F) * rho 12306) * ((1 : F) * rho 0 + (1 : F) * rho 12304) = ((1 : F) * rho 12305) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3062 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12308)] * dotLC rho [((1 : F),0), ((-1 : F),12304)] = dotLC rho [((7743460472347812386524365784141236735390732947865924734841218999830393427823 : F),12303), ((1 : F),12307)]) :
    ((1 : F) * rho 12308) * ((1 : F) * rho 0 + (-1 : F) * rho 12304) = ((7743460472347812386524365784141236735390732947865924734841218999830393427823 : F) * rho 12303 + (1 : F) * rho 12307) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3072 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12314)] * dotLC rho [((1 : F),0), ((1 : F),12312)] = dotLC rho [((1 : F),12313)]) :
    ((1 : F) * rho 12314) * ((1 : F) * rho 0 + (1 : F) * rho 12312) = ((1 : F) * rho 12313) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3074 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12316)] * dotLC rho [((1 : F),0), ((-1 : F),12312)] = dotLC rho [((7904865820238367628524804862529047779204260023389009840924166825871724827636 : F),12311), ((1 : F),12315)]) :
    ((1 : F) * rho 12316) * ((1 : F) * rho 0 + (-1 : F) * rho 12312) = ((7904865820238367628524804862529047779204260023389009840924166825871724827636 : F) * rho 12311 + (1 : F) * rho 12315) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3084 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12322)] * dotLC rho [((1 : F),0), ((1 : F),12320)] = dotLC rho [((1 : F),12321)]) :
    ((1 : F) * rho 12322) * ((1 : F) * rho 0 + (1 : F) * rho 12320) = ((1 : F) * rho 12321) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3086 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12324)] * dotLC rho [((1 : F),0), ((-1 : F),12320)] = dotLC rho [((3126935970025173485442683276942182233484229136298742774722587061410996340000 : F),12319), ((1 : F),12323)]) :
    ((1 : F) * rho 12324) * ((1 : F) * rho 0 + (-1 : F) * rho 12320) = ((3126935970025173485442683276942182233484229136298742774722587061410996340000 : F) * rho 12319 + (1 : F) * rho 12323) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3096 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12330)] * dotLC rho [((1 : F),0), ((1 : F),12328)] = dotLC rho [((1 : F),12329)]) :
    ((1 : F) * rho 12330) * ((1 : F) * rho 0 + (1 : F) * rho 12328) = ((1 : F) * rho 12329) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3098 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12332)] * dotLC rho [((1 : F),0), ((-1 : F),12328)] = dotLC rho [((7971937089635269643826682613022014807234966806138675218380809519793412680806 : F),12327), ((1 : F),12331)]) :
    ((1 : F) * rho 12332) * ((1 : F) * rho 0 + (-1 : F) * rho 12328) = ((7971937089635269643826682613022014807234966806138675218380809519793412680806 : F) * rho 12327 + (1 : F) * rho 12331) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3108 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12338)] * dotLC rho [((1 : F),0), ((1 : F),12336)] = dotLC rho [((1 : F),12337)]) :
    ((1 : F) * rho 12338) * ((1 : F) * rho 0 + (1 : F) * rho 12336) = ((1 : F) * rho 12337) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3110 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12340)] * dotLC rho [((1 : F),0), ((-1 : F),12336)] = dotLC rho [((447702151280037138555004325958543120301713308464297474924855058393111691630 : F),12335), ((1 : F),12339)]) :
    ((1 : F) * rho 12340) * ((1 : F) * rho 0 + (-1 : F) * rho 12336) = ((447702151280037138555004325958543120301713308464297474924855058393111691630 : F) * rho 12335 + (1 : F) * rho 12339) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3120 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12346)] * dotLC rho [((1 : F),0), ((1 : F),12344)] = dotLC rho [((1 : F),12345)]) :
    ((1 : F) * rho 12346) * ((1 : F) * rho 0 + (1 : F) * rho 12344) = ((1 : F) * rho 12345) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3122 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12348)] * dotLC rho [((1 : F),0), ((-1 : F),12344)] = dotLC rho [((5749943263796992110096260452437930290587832570076690113435011401211386464061 : F),12343), ((1 : F),12347)]) :
    ((1 : F) * rho 12348) * ((1 : F) * rho 0 + (-1 : F) * rho 12344) = ((5749943263796992110096260452437930290587832570076690113435011401211386464061 : F) * rho 12343 + (1 : F) * rho 12347) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3132 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12354)] * dotLC rho [((1 : F),0), ((1 : F),12352)] = dotLC rho [((1 : F),12353)]) :
    ((1 : F) * rho 12354) * ((1 : F) * rho 0 + (1 : F) * rho 12352) = ((1 : F) * rho 12353) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3134 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12356)] * dotLC rho [((1 : F),0), ((-1 : F),12352)] = dotLC rho [((8144086332485187722602291309022346605315194242912403808353482509444959204527 : F),12351), ((1 : F),12355)]) :
    ((1 : F) * rho 12356) * ((1 : F) * rho 0 + (-1 : F) * rho 12352) = ((8144086332485187722602291309022346605315194242912403808353482509444959204527 : F) * rho 12351 + (1 : F) * rho 12355) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3144 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12362)] * dotLC rho [((1 : F),0), ((1 : F),12360)] = dotLC rho [((1 : F),12361)]) :
    ((1 : F) * rho 12362) * ((1 : F) * rho 0 + (1 : F) * rho 12360) = ((1 : F) * rho 12361) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3146 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12364)] * dotLC rho [((1 : F),0), ((-1 : F),12360)] = dotLC rho [((503975134747116611815746438807702703351074896758102593699281993750582432300 : F),12359), ((1 : F),12363)]) :
    ((1 : F) * rho 12364) * ((1 : F) * rho 0 + (-1 : F) * rho 12360) = ((503975134747116611815746438807702703351074896758102593699281993750582432300 : F) * rho 12359 + (1 : F) * rho 12363) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3156 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12370)] * dotLC rho [((1 : F),0), ((1 : F),12368)] = dotLC rho [((1 : F),12369)]) :
    ((1 : F) * rho 12370) * ((1 : F) * rho 0 + (1 : F) * rho 12368) = ((1 : F) * rho 12369) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3158 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12372)] * dotLC rho [((1 : F),0), ((-1 : F),12368)] = dotLC rho [((2807860768572333827312119862616485748384959158390460864410429655462760241485 : F),12367), ((1 : F),12371)]) :
    ((1 : F) * rho 12372) * ((1 : F) * rho 0 + (-1 : F) * rho 12368) = ((2807860768572333827312119862616485748384959158390460864410429655462760241485 : F) * rho 12367 + (1 : F) * rho 12371) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3164 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12375)] * dotLC rho [((1 : F),6), ((1 : F),7)] = dotLC rho [((1 : F),12376)]) :
    ((1 : F) * rho 12375) * ((1 : F) * rho 6 + (1 : F) * rho 7) = ((1 : F) * rho 12376) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3169 (rho : Nat → F)
    (hraw : dotLC rho [((3021 : F),12377)] * dotLC rho [((1 : F),12378)] = dotLC rho [((1 : F),12379)]) :
    ((3021 : F) * rho 12377) * ((1 : F) * rho 12378) = ((1 : F) * rho 12379) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3170 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12380)] * dotLC rho [((1 : F),0), ((1 : F),12379)] = dotLC rho [((1 : F),12377), ((1 : F),12378)]) :
    ((1 : F) * rho 12380) * ((1 : F) * rho 0 + (1 : F) * rho 12379) = ((1 : F) * rho 12377 + (1 : F) * rho 12378) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

theorem step3171 (rho : Nat → F)
    (hraw : dotLC rho [((1 : F),12381)] * dotLC rho [((1 : F),0), ((-1 : F),12379)] = dotLC rho [((1 : F),12376), ((-1 : F),12377), ((-1 : F),12378)]) :
    ((1 : F) * rho 12381) * ((1 : F) * rho 0 + (-1 : F) * rho 12379) = ((1 : F) * rho 12376 + (-1 : F) * rho 12377 + (-1 : F) * rho 12378) := by
  simp only [dotLC] at hraw ⊢
  linear_combination hraw

end Shieldd.GnarkFormal.Extracted.Deployed.DecafRandomizedVerificationKey1812_058cff
