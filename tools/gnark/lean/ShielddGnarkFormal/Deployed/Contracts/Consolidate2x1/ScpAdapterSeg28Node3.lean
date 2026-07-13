import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode3.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node3_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode3Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (4 : Seg28.F))
        (rho 175 + rho 20761) (rho 176 + rho 20762 + rho 20763)
        (rho 176 + rho 20764 + rho 20765) (rho 177 + rho 20766) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, p18, p19,
    p20, p21, _, _, _, _, _, _, _, _,
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
  unfold Seg28.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Seg28.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Seg28.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩
  unfold Seg28.relationPart20 at p20
  rcases p20 with ⟨r1600, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679⟩
  unfold Seg28.relationPart21 at p21
  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, r1734, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.relation (rho 175) (rho 176) (rho 177) (rho 20761) (rho 20762) (rho 20763) (rho 20764) (rho 20765) (rho 20766)
      (fun o0 o1 o2 o3 o4 => o0 = rho 21096 ∧ o1 = rho 21101 ∧ o2 = rho 21106 ∧ o3 = rho 21111 ∧ o4 = rho 21116) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg0
    refine ⟨rho 20767, rho 20768, rho 20769, rho 20770, rho 20771,
      (by unfold Seg28.relationRow1385 at r1385; linear_combination r1385), (by unfold Seg28.relationRow1386 at r1386; linear_combination r1386), (by unfold Seg28.relationRow1387 at r1387; linear_combination r1387), (by unfold Seg28.relationRow1388 at r1388; linear_combination r1388), (by unfold Seg28.relationRow1389 at r1389; linear_combination r1389), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg1
    refine ⟨rho 20772, rho 20773, rho 20774, rho 20775, rho 20776,
      (by unfold Seg28.relationRow1390 at r1390; linear_combination r1390), (by unfold Seg28.relationRow1391 at r1391; linear_combination r1391), (by unfold Seg28.relationRow1392 at r1392; linear_combination r1392), (by unfold Seg28.relationRow1393 at r1393; linear_combination r1393), (by unfold Seg28.relationRow1394 at r1394; linear_combination r1394), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg2
    refine ⟨rho 20777, rho 20778, rho 20779, rho 20780, rho 20781,
      (by unfold Seg28.relationRow1395 at r1395; linear_combination r1395), (by unfold Seg28.relationRow1396 at r1396; linear_combination r1396), (by unfold Seg28.relationRow1397 at r1397; linear_combination r1397), (by unfold Seg28.relationRow1398 at r1398; linear_combination r1398), (by unfold Seg28.relationRow1399 at r1399; linear_combination r1399), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg3
    refine ⟨rho 20782, rho 20783, rho 20784, rho 20785, rho 20786,
      (by unfold Seg28.relationRow1400 at r1400; linear_combination r1400), (by unfold Seg28.relationRow1401 at r1401; linear_combination r1401), (by unfold Seg28.relationRow1402 at r1402; linear_combination r1402), (by unfold Seg28.relationRow1403 at r1403; linear_combination r1403), (by unfold Seg28.relationRow1404 at r1404; linear_combination r1404), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg4
    refine ⟨rho 20787, rho 20788, rho 20789, rho 20790, rho 20791,
      (by unfold Seg28.relationRow1405 at r1405; linear_combination r1405), (by unfold Seg28.relationRow1406 at r1406; linear_combination r1406), (by unfold Seg28.relationRow1407 at r1407; linear_combination r1407), (by unfold Seg28.relationRow1408 at r1408; linear_combination r1408), (by unfold Seg28.relationRow1409 at r1409; linear_combination r1409), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg5
    refine ⟨rho 20792, rho 20793, rho 20794, rho 20795, rho 20796,
      (by unfold Seg28.relationRow1410 at r1410; linear_combination r1410), (by unfold Seg28.relationRow1411 at r1411; linear_combination r1411), (by unfold Seg28.relationRow1412 at r1412; linear_combination r1412), (by unfold Seg28.relationRow1413 at r1413; linear_combination r1413), (by unfold Seg28.relationRow1414 at r1414; linear_combination r1414), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg6
    refine ⟨rho 20797, rho 20798, rho 20799, rho 20800, rho 20801,
      (by unfold Seg28.relationRow1415 at r1415; linear_combination r1415), (by unfold Seg28.relationRow1416 at r1416; linear_combination r1416), (by unfold Seg28.relationRow1417 at r1417; linear_combination r1417), (by unfold Seg28.relationRow1418 at r1418; linear_combination r1418), (by unfold Seg28.relationRow1419 at r1419; linear_combination r1419), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg7
    refine ⟨rho 20802, rho 20803, rho 20804, rho 20805, rho 20806,
      (by unfold Seg28.relationRow1420 at r1420; linear_combination r1420), (by unfold Seg28.relationRow1421 at r1421; linear_combination r1421), (by unfold Seg28.relationRow1422 at r1422; linear_combination r1422), (by unfold Seg28.relationRow1423 at r1423; linear_combination r1423), (by unfold Seg28.relationRow1424 at r1424; linear_combination r1424), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg8
    refine ⟨rho 20807, rho 20808, rho 20809, rho 20810, rho 20811,
      (by unfold Seg28.relationRow1425 at r1425; linear_combination r1425), (by unfold Seg28.relationRow1426 at r1426; linear_combination r1426), (by unfold Seg28.relationRow1427 at r1427; linear_combination r1427), (by unfold Seg28.relationRow1428 at r1428; linear_combination r1428), (by unfold Seg28.relationRow1429 at r1429; linear_combination r1429), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg9
    refine ⟨rho 20812, rho 20813, rho 20814, rho 20815, rho 20816,
      (by unfold Seg28.relationRow1430 at r1430; linear_combination r1430), (by unfold Seg28.relationRow1431 at r1431; linear_combination r1431), (by unfold Seg28.relationRow1432 at r1432; linear_combination r1432), (by unfold Seg28.relationRow1433 at r1433; linear_combination r1433), (by unfold Seg28.relationRow1434 at r1434; linear_combination r1434), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg10
    refine ⟨rho 20817, rho 20818, rho 20819, rho 20820, rho 20821,
      (by unfold Seg28.relationRow1435 at r1435; linear_combination r1435), (by unfold Seg28.relationRow1436 at r1436; linear_combination r1436), (by unfold Seg28.relationRow1437 at r1437; linear_combination r1437), (by unfold Seg28.relationRow1438 at r1438; linear_combination r1438), (by unfold Seg28.relationRow1439 at r1439; linear_combination r1439), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg11
    refine ⟨rho 20822, rho 20823, rho 20824, rho 20825, rho 20826,
      (by unfold Seg28.relationRow1440 at r1440; linear_combination r1440), (by unfold Seg28.relationRow1441 at r1441; linear_combination r1441), (by unfold Seg28.relationRow1442 at r1442; linear_combination r1442), (by unfold Seg28.relationRow1443 at r1443; linear_combination r1443), (by unfold Seg28.relationRow1444 at r1444; linear_combination r1444), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg12
    refine ⟨rho 20827, rho 20828, rho 20829, rho 20830, rho 20831,
      (by unfold Seg28.relationRow1445 at r1445; linear_combination r1445), (by unfold Seg28.relationRow1446 at r1446; linear_combination r1446), (by unfold Seg28.relationRow1447 at r1447; linear_combination r1447), (by unfold Seg28.relationRow1448 at r1448; linear_combination r1448), (by unfold Seg28.relationRow1449 at r1449; linear_combination r1449), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg13
    refine ⟨rho 20832, rho 20833, rho 20834, rho 20835, rho 20836,
      (by unfold Seg28.relationRow1450 at r1450; linear_combination r1450), (by unfold Seg28.relationRow1451 at r1451; linear_combination r1451), (by unfold Seg28.relationRow1452 at r1452; linear_combination r1452), (by unfold Seg28.relationRow1453 at r1453; linear_combination r1453), (by unfold Seg28.relationRow1454 at r1454; linear_combination r1454), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg14
    refine ⟨rho 20837, rho 20838, rho 20839, rho 20840, rho 20841,
      (by unfold Seg28.relationRow1455 at r1455; linear_combination r1455), (by unfold Seg28.relationRow1456 at r1456; linear_combination r1456), (by unfold Seg28.relationRow1457 at r1457; linear_combination r1457), (by unfold Seg28.relationRow1458 at r1458; linear_combination r1458), (by unfold Seg28.relationRow1459 at r1459; linear_combination r1459), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg15
    refine ⟨rho 20842, rho 20843, rho 20844, rho 20845, rho 20846,
      (by unfold Seg28.relationRow1460 at r1460; linear_combination r1460), (by unfold Seg28.relationRow1461 at r1461; linear_combination r1461), (by unfold Seg28.relationRow1462 at r1462; linear_combination r1462), (by unfold Seg28.relationRow1463 at r1463; linear_combination r1463), (by unfold Seg28.relationRow1464 at r1464; linear_combination r1464), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg16
    refine ⟨rho 20847, rho 20848, rho 20849, rho 20850, rho 20851,
      (by unfold Seg28.relationRow1465 at r1465; linear_combination r1465), (by unfold Seg28.relationRow1466 at r1466; linear_combination r1466), (by unfold Seg28.relationRow1467 at r1467; linear_combination r1467), (by unfold Seg28.relationRow1468 at r1468; linear_combination r1468), (by unfold Seg28.relationRow1469 at r1469; linear_combination r1469), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg17
    refine ⟨rho 20852, rho 20853, rho 20854, rho 20855, rho 20856,
      (by unfold Seg28.relationRow1470 at r1470; linear_combination r1470), (by unfold Seg28.relationRow1471 at r1471; linear_combination r1471), (by unfold Seg28.relationRow1472 at r1472; linear_combination r1472), (by unfold Seg28.relationRow1473 at r1473; linear_combination r1473), (by unfold Seg28.relationRow1474 at r1474; linear_combination r1474), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg18
    refine ⟨rho 20857, rho 20858, rho 20859, rho 20860, rho 20861,
      (by unfold Seg28.relationRow1475 at r1475; linear_combination r1475), (by unfold Seg28.relationRow1476 at r1476; linear_combination r1476), (by unfold Seg28.relationRow1477 at r1477; linear_combination r1477), (by unfold Seg28.relationRow1478 at r1478; linear_combination r1478), (by unfold Seg28.relationRow1479 at r1479; linear_combination r1479), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg19
    refine ⟨rho 20862, rho 20863, rho 20864, rho 20865, rho 20866,
      (by unfold Seg28.relationRow1480 at r1480; linear_combination r1480), (by unfold Seg28.relationRow1481 at r1481; linear_combination r1481), (by unfold Seg28.relationRow1482 at r1482; linear_combination r1482), (by unfold Seg28.relationRow1483 at r1483; linear_combination r1483), (by unfold Seg28.relationRow1484 at r1484; linear_combination r1484), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg20
    refine ⟨rho 20867, rho 20868, rho 20869, rho 20870, rho 20871,
      (by unfold Seg28.relationRow1485 at r1485; linear_combination r1485), (by unfold Seg28.relationRow1486 at r1486; linear_combination r1486), (by unfold Seg28.relationRow1487 at r1487; linear_combination r1487), (by unfold Seg28.relationRow1488 at r1488; linear_combination r1488), (by unfold Seg28.relationRow1489 at r1489; linear_combination r1489), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg21
    refine ⟨rho 20872, rho 20873, rho 20874, rho 20875, rho 20876,
      (by unfold Seg28.relationRow1490 at r1490; linear_combination r1490), (by unfold Seg28.relationRow1491 at r1491; linear_combination r1491), (by unfold Seg28.relationRow1492 at r1492; linear_combination r1492), (by unfold Seg28.relationRow1493 at r1493; linear_combination r1493), (by unfold Seg28.relationRow1494 at r1494; linear_combination r1494), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg22
    refine ⟨rho 20877, rho 20878, rho 20879, rho 20880, rho 20881,
      (by unfold Seg28.relationRow1495 at r1495; linear_combination r1495), (by unfold Seg28.relationRow1496 at r1496; linear_combination r1496), (by unfold Seg28.relationRow1497 at r1497; linear_combination r1497), (by unfold Seg28.relationRow1498 at r1498; linear_combination r1498), (by unfold Seg28.relationRow1499 at r1499; linear_combination r1499), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg23
    refine ⟨rho 20882, rho 20883, rho 20884, rho 20885, rho 20886,
      (by unfold Seg28.relationRow1500 at r1500; linear_combination r1500), (by unfold Seg28.relationRow1501 at r1501; linear_combination r1501), (by unfold Seg28.relationRow1502 at r1502; linear_combination r1502), (by unfold Seg28.relationRow1503 at r1503; linear_combination r1503), (by unfold Seg28.relationRow1504 at r1504; linear_combination r1504), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg24
    refine ⟨rho 20887, rho 20888, rho 20889, rho 20890, rho 20891,
      (by unfold Seg28.relationRow1505 at r1505; linear_combination r1505), (by unfold Seg28.relationRow1506 at r1506; linear_combination r1506), (by unfold Seg28.relationRow1507 at r1507; linear_combination r1507), (by unfold Seg28.relationRow1508 at r1508; linear_combination r1508), (by unfold Seg28.relationRow1509 at r1509; linear_combination r1509), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg25
    refine ⟨rho 20892, rho 20893, rho 20894, rho 20895, rho 20896,
      (by unfold Seg28.relationRow1510 at r1510; linear_combination r1510), (by unfold Seg28.relationRow1511 at r1511; linear_combination r1511), (by unfold Seg28.relationRow1512 at r1512; linear_combination r1512), (by unfold Seg28.relationRow1513 at r1513; linear_combination r1513), (by unfold Seg28.relationRow1514 at r1514; linear_combination r1514), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg26
    refine ⟨rho 20897, rho 20898, rho 20899, rho 20900, rho 20901,
      (by unfold Seg28.relationRow1515 at r1515; linear_combination r1515), (by unfold Seg28.relationRow1516 at r1516; linear_combination r1516), (by unfold Seg28.relationRow1517 at r1517; linear_combination r1517), (by unfold Seg28.relationRow1518 at r1518; linear_combination r1518), (by unfold Seg28.relationRow1519 at r1519; linear_combination r1519), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg27
    refine ⟨rho 20902, rho 20903, rho 20904, rho 20905, rho 20906,
      (by unfold Seg28.relationRow1520 at r1520; linear_combination r1520), (by unfold Seg28.relationRow1521 at r1521; linear_combination r1521), (by unfold Seg28.relationRow1522 at r1522; linear_combination r1522), (by unfold Seg28.relationRow1523 at r1523; linear_combination r1523), (by unfold Seg28.relationRow1524 at r1524; linear_combination r1524), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg28
    refine ⟨rho 20907, rho 20908, rho 20909, rho 20910, rho 20911,
      (by unfold Seg28.relationRow1525 at r1525; linear_combination r1525), (by unfold Seg28.relationRow1526 at r1526; linear_combination r1526), (by unfold Seg28.relationRow1527 at r1527; linear_combination r1527), (by unfold Seg28.relationRow1528 at r1528; linear_combination r1528), (by unfold Seg28.relationRow1529 at r1529; linear_combination r1529), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg29
    refine ⟨rho 20912, rho 20913, rho 20914, rho 20915, rho 20916,
      (by unfold Seg28.relationRow1530 at r1530; linear_combination r1530), (by unfold Seg28.relationRow1531 at r1531; linear_combination r1531), (by unfold Seg28.relationRow1532 at r1532; linear_combination r1532), (by unfold Seg28.relationRow1533 at r1533; linear_combination r1533), (by unfold Seg28.relationRow1534 at r1534; linear_combination r1534), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg30
    refine ⟨rho 20917, rho 20918, rho 20919, rho 20920, rho 20921,
      (by unfold Seg28.relationRow1535 at r1535; linear_combination r1535), (by unfold Seg28.relationRow1536 at r1536; linear_combination r1536), (by unfold Seg28.relationRow1537 at r1537; linear_combination r1537), (by unfold Seg28.relationRow1538 at r1538; linear_combination r1538), (by unfold Seg28.relationRow1539 at r1539; linear_combination r1539), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg31
    refine ⟨rho 20922, rho 20923, rho 20924, rho 20925, rho 20926,
      (by unfold Seg28.relationRow1540 at r1540; linear_combination r1540), (by unfold Seg28.relationRow1541 at r1541; linear_combination r1541), (by unfold Seg28.relationRow1542 at r1542; linear_combination r1542), (by unfold Seg28.relationRow1543 at r1543; linear_combination r1543), (by unfold Seg28.relationRow1544 at r1544; linear_combination r1544), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg32
    refine ⟨rho 20927, rho 20928, rho 20929, rho 20930, rho 20931,
      (by unfold Seg28.relationRow1545 at r1545; linear_combination r1545), (by unfold Seg28.relationRow1546 at r1546; linear_combination r1546), (by unfold Seg28.relationRow1547 at r1547; linear_combination r1547), (by unfold Seg28.relationRow1548 at r1548; linear_combination r1548), (by unfold Seg28.relationRow1549 at r1549; linear_combination r1549), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg33
    refine ⟨rho 20932, rho 20933, rho 20934, rho 20935, rho 20936,
      (by unfold Seg28.relationRow1550 at r1550; linear_combination r1550), (by unfold Seg28.relationRow1551 at r1551; linear_combination r1551), (by unfold Seg28.relationRow1552 at r1552; linear_combination r1552), (by unfold Seg28.relationRow1553 at r1553; linear_combination r1553), (by unfold Seg28.relationRow1554 at r1554; linear_combination r1554), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg34
    refine ⟨rho 20937, rho 20938, rho 20939, rho 20940, rho 20941,
      (by unfold Seg28.relationRow1555 at r1555; linear_combination r1555), (by unfold Seg28.relationRow1556 at r1556; linear_combination r1556), (by unfold Seg28.relationRow1557 at r1557; linear_combination r1557), (by unfold Seg28.relationRow1558 at r1558; linear_combination r1558), (by unfold Seg28.relationRow1559 at r1559; linear_combination r1559), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg35
    refine ⟨rho 20942, rho 20943, rho 20944, rho 20945, rho 20946,
      (by unfold Seg28.relationRow1560 at r1560; linear_combination r1560), (by unfold Seg28.relationRow1561 at r1561; linear_combination r1561), (by unfold Seg28.relationRow1562 at r1562; linear_combination r1562), (by unfold Seg28.relationRow1563 at r1563; linear_combination r1563), (by unfold Seg28.relationRow1564 at r1564; linear_combination r1564), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg36
    refine ⟨rho 20947, rho 20948, rho 20949, rho 20950, rho 20951,
      (by unfold Seg28.relationRow1565 at r1565; linear_combination r1565), (by unfold Seg28.relationRow1566 at r1566; linear_combination r1566), (by unfold Seg28.relationRow1567 at r1567; linear_combination r1567), (by unfold Seg28.relationRow1568 at r1568; linear_combination r1568), (by unfold Seg28.relationRow1569 at r1569; linear_combination r1569), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg37
    refine ⟨rho 20952, rho 20953, rho 20954, rho 20955, rho 20956,
      (by unfold Seg28.relationRow1570 at r1570; linear_combination r1570), (by unfold Seg28.relationRow1571 at r1571; linear_combination r1571), (by unfold Seg28.relationRow1572 at r1572; linear_combination r1572), (by unfold Seg28.relationRow1573 at r1573; linear_combination r1573), (by unfold Seg28.relationRow1574 at r1574; linear_combination r1574), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg38
    refine ⟨rho 20957, rho 20958, rho 20959, rho 20960, rho 20961,
      (by unfold Seg28.relationRow1575 at r1575; linear_combination r1575), (by unfold Seg28.relationRow1576 at r1576; linear_combination r1576), (by unfold Seg28.relationRow1577 at r1577; linear_combination r1577), (by unfold Seg28.relationRow1578 at r1578; linear_combination r1578), (by unfold Seg28.relationRow1579 at r1579; linear_combination r1579), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg39
    refine ⟨rho 20962, rho 20963, rho 20964, rho 20965, rho 20966,
      (by unfold Seg28.relationRow1580 at r1580; linear_combination r1580), (by unfold Seg28.relationRow1581 at r1581; linear_combination r1581), (by unfold Seg28.relationRow1582 at r1582; linear_combination r1582), (by unfold Seg28.relationRow1583 at r1583; linear_combination r1583), (by unfold Seg28.relationRow1584 at r1584; linear_combination r1584), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg40
    refine ⟨rho 20967, rho 20968, rho 20969, rho 20970, rho 20971,
      (by unfold Seg28.relationRow1585 at r1585; linear_combination r1585), (by unfold Seg28.relationRow1586 at r1586; linear_combination r1586), (by unfold Seg28.relationRow1587 at r1587; linear_combination r1587), (by unfold Seg28.relationRow1588 at r1588; linear_combination r1588), (by unfold Seg28.relationRow1589 at r1589; linear_combination r1589), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg41
    refine ⟨rho 20972, rho 20973, rho 20974, rho 20975, rho 20976,
      (by unfold Seg28.relationRow1590 at r1590; linear_combination r1590), (by unfold Seg28.relationRow1591 at r1591; linear_combination r1591), (by unfold Seg28.relationRow1592 at r1592; linear_combination r1592), (by unfold Seg28.relationRow1593 at r1593; linear_combination r1593), (by unfold Seg28.relationRow1594 at r1594; linear_combination r1594), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg42
    refine ⟨rho 20977, rho 20978, rho 20979, rho 20980, rho 20981,
      (by unfold Seg28.relationRow1595 at r1595; linear_combination r1595), (by unfold Seg28.relationRow1596 at r1596; linear_combination r1596), (by unfold Seg28.relationRow1597 at r1597; linear_combination r1597), (by unfold Seg28.relationRow1598 at r1598; linear_combination r1598), (by unfold Seg28.relationRow1599 at r1599; linear_combination r1599), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg43
    refine ⟨rho 20982, rho 20983, rho 20984, rho 20985, rho 20986,
      (by unfold Seg28.relationRow1600 at r1600; linear_combination r1600), (by unfold Seg28.relationRow1601 at r1601; linear_combination r1601), (by unfold Seg28.relationRow1602 at r1602; linear_combination r1602), (by unfold Seg28.relationRow1603 at r1603; linear_combination r1603), (by unfold Seg28.relationRow1604 at r1604; linear_combination r1604), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg44
    refine ⟨rho 20987, rho 20988, rho 20989, rho 20990, rho 20991,
      (by unfold Seg28.relationRow1605 at r1605; linear_combination r1605), (by unfold Seg28.relationRow1606 at r1606; linear_combination r1606), (by unfold Seg28.relationRow1607 at r1607; linear_combination r1607), (by unfold Seg28.relationRow1608 at r1608; linear_combination r1608), (by unfold Seg28.relationRow1609 at r1609; linear_combination r1609), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg45
    refine ⟨rho 20992, rho 20993, rho 20994, rho 20995, rho 20996,
      (by unfold Seg28.relationRow1610 at r1610; linear_combination r1610), (by unfold Seg28.relationRow1611 at r1611; linear_combination r1611), (by unfold Seg28.relationRow1612 at r1612; linear_combination r1612), (by unfold Seg28.relationRow1613 at r1613; linear_combination r1613), (by unfold Seg28.relationRow1614 at r1614; linear_combination r1614), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg46
    refine ⟨rho 20997, rho 20998, rho 20999, rho 21000, rho 21001,
      (by unfold Seg28.relationRow1615 at r1615; linear_combination r1615), (by unfold Seg28.relationRow1616 at r1616; linear_combination r1616), (by unfold Seg28.relationRow1617 at r1617; linear_combination r1617), (by unfold Seg28.relationRow1618 at r1618; linear_combination r1618), (by unfold Seg28.relationRow1619 at r1619; linear_combination r1619), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg47
    refine ⟨rho 21002, rho 21003, rho 21004, rho 21005, rho 21006,
      (by unfold Seg28.relationRow1620 at r1620; linear_combination r1620), (by unfold Seg28.relationRow1621 at r1621; linear_combination r1621), (by unfold Seg28.relationRow1622 at r1622; linear_combination r1622), (by unfold Seg28.relationRow1623 at r1623; linear_combination r1623), (by unfold Seg28.relationRow1624 at r1624; linear_combination r1624), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg48
    refine ⟨rho 21007, rho 21008, rho 21009, rho 21010, rho 21011,
      (by unfold Seg28.relationRow1625 at r1625; linear_combination r1625), (by unfold Seg28.relationRow1626 at r1626; linear_combination r1626), (by unfold Seg28.relationRow1627 at r1627; linear_combination r1627), (by unfold Seg28.relationRow1628 at r1628; linear_combination r1628), (by unfold Seg28.relationRow1629 at r1629; linear_combination r1629), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg49
    refine ⟨rho 21012, rho 21013, rho 21014, rho 21015, rho 21016,
      (by unfold Seg28.relationRow1630 at r1630; linear_combination r1630), (by unfold Seg28.relationRow1631 at r1631; linear_combination r1631), (by unfold Seg28.relationRow1632 at r1632; linear_combination r1632), (by unfold Seg28.relationRow1633 at r1633; linear_combination r1633), (by unfold Seg28.relationRow1634 at r1634; linear_combination r1634), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg50
    refine ⟨rho 21017, rho 21018, rho 21019, rho 21020, rho 21021,
      (by unfold Seg28.relationRow1635 at r1635; linear_combination r1635), (by unfold Seg28.relationRow1636 at r1636; linear_combination r1636), (by unfold Seg28.relationRow1637 at r1637; linear_combination r1637), (by unfold Seg28.relationRow1638 at r1638; linear_combination r1638), (by unfold Seg28.relationRow1639 at r1639; linear_combination r1639), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg51
    refine ⟨rho 21022, rho 21023, rho 21024, rho 21025, rho 21026,
      (by unfold Seg28.relationRow1640 at r1640; linear_combination r1640), (by unfold Seg28.relationRow1641 at r1641; linear_combination r1641), (by unfold Seg28.relationRow1642 at r1642; linear_combination r1642), (by unfold Seg28.relationRow1643 at r1643; linear_combination r1643), (by unfold Seg28.relationRow1644 at r1644; linear_combination r1644), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg52
    refine ⟨rho 21027, rho 21028, rho 21029, rho 21030, rho 21031,
      (by unfold Seg28.relationRow1645 at r1645; linear_combination r1645), (by unfold Seg28.relationRow1646 at r1646; linear_combination r1646), (by unfold Seg28.relationRow1647 at r1647; linear_combination r1647), (by unfold Seg28.relationRow1648 at r1648; linear_combination r1648), (by unfold Seg28.relationRow1649 at r1649; linear_combination r1649), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg53
    refine ⟨rho 21032, rho 21033, rho 21034, rho 21035, rho 21036,
      (by unfold Seg28.relationRow1650 at r1650; linear_combination r1650), (by unfold Seg28.relationRow1651 at r1651; linear_combination r1651), (by unfold Seg28.relationRow1652 at r1652; linear_combination r1652), (by unfold Seg28.relationRow1653 at r1653; linear_combination r1653), (by unfold Seg28.relationRow1654 at r1654; linear_combination r1654), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg54
    refine ⟨rho 21037, rho 21038, rho 21039, rho 21040, rho 21041,
      (by unfold Seg28.relationRow1655 at r1655; linear_combination r1655), (by unfold Seg28.relationRow1656 at r1656; linear_combination r1656), (by unfold Seg28.relationRow1657 at r1657; linear_combination r1657), (by unfold Seg28.relationRow1658 at r1658; linear_combination r1658), (by unfold Seg28.relationRow1659 at r1659; linear_combination r1659), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg55
    refine ⟨rho 21042, rho 21043, rho 21044, rho 21045, rho 21046,
      (by unfold Seg28.relationRow1660 at r1660; linear_combination r1660), (by unfold Seg28.relationRow1661 at r1661; linear_combination r1661), (by unfold Seg28.relationRow1662 at r1662; linear_combination r1662), (by unfold Seg28.relationRow1663 at r1663; linear_combination r1663), (by unfold Seg28.relationRow1664 at r1664; linear_combination r1664), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg56
    refine ⟨rho 21047, rho 21048, rho 21049, rho 21050, rho 21051,
      (by unfold Seg28.relationRow1665 at r1665; linear_combination r1665), (by unfold Seg28.relationRow1666 at r1666; linear_combination r1666), (by unfold Seg28.relationRow1667 at r1667; linear_combination r1667), (by unfold Seg28.relationRow1668 at r1668; linear_combination r1668), (by unfold Seg28.relationRow1669 at r1669; linear_combination r1669), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg57
    refine ⟨rho 21052, rho 21053, rho 21054, rho 21055, rho 21056,
      (by unfold Seg28.relationRow1670 at r1670; linear_combination r1670), (by unfold Seg28.relationRow1671 at r1671; linear_combination r1671), (by unfold Seg28.relationRow1672 at r1672; linear_combination r1672), (by unfold Seg28.relationRow1673 at r1673; linear_combination r1673), (by unfold Seg28.relationRow1674 at r1674; linear_combination r1674), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg58
    refine ⟨rho 21057, rho 21058, rho 21059, rho 21060, rho 21061,
      (by unfold Seg28.relationRow1675 at r1675; linear_combination r1675), (by unfold Seg28.relationRow1676 at r1676; linear_combination r1676), (by unfold Seg28.relationRow1677 at r1677; linear_combination r1677), (by unfold Seg28.relationRow1678 at r1678; linear_combination r1678), (by unfold Seg28.relationRow1679 at r1679; linear_combination r1679), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg59
    refine ⟨rho 21062, rho 21063, rho 21064, rho 21065, rho 21066,
      (by unfold Seg28.relationRow1680 at r1680; linear_combination r1680), (by unfold Seg28.relationRow1681 at r1681; linear_combination r1681), (by unfold Seg28.relationRow1682 at r1682; linear_combination r1682), (by unfold Seg28.relationRow1683 at r1683; linear_combination r1683), (by unfold Seg28.relationRow1684 at r1684; linear_combination r1684), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg60
    refine ⟨rho 21067, rho 21068, rho 21069, rho 21070, rho 21071,
      (by unfold Seg28.relationRow1685 at r1685; linear_combination r1685), (by unfold Seg28.relationRow1686 at r1686; linear_combination r1686), (by unfold Seg28.relationRow1687 at r1687; linear_combination r1687), (by unfold Seg28.relationRow1688 at r1688; linear_combination r1688), (by unfold Seg28.relationRow1689 at r1689; linear_combination r1689), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg61
    refine ⟨rho 21072, rho 21073, rho 21074, rho 21075, rho 21076,
      (by unfold Seg28.relationRow1690 at r1690; linear_combination r1690), (by unfold Seg28.relationRow1691 at r1691; linear_combination r1691), (by unfold Seg28.relationRow1692 at r1692; linear_combination r1692), (by unfold Seg28.relationRow1693 at r1693; linear_combination r1693), (by unfold Seg28.relationRow1694 at r1694; linear_combination r1694), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg62
    refine ⟨rho 21077, rho 21078, rho 21079, rho 21080, rho 21081,
      (by unfold Seg28.relationRow1695 at r1695; linear_combination r1695), (by unfold Seg28.relationRow1696 at r1696; linear_combination r1696), (by unfold Seg28.relationRow1697 at r1697; linear_combination r1697), (by unfold Seg28.relationRow1698 at r1698; linear_combination r1698), (by unfold Seg28.relationRow1699 at r1699; linear_combination r1699), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg63
    refine ⟨rho 21082, rho 21083, rho 21084, rho 21085, rho 21086,
      (by unfold Seg28.relationRow1700 at r1700; linear_combination r1700), (by unfold Seg28.relationRow1701 at r1701; linear_combination r1701), (by unfold Seg28.relationRow1702 at r1702; linear_combination r1702), (by unfold Seg28.relationRow1703 at r1703; linear_combination r1703), (by unfold Seg28.relationRow1704 at r1704; linear_combination r1704), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg64
    refine ⟨rho 21087, rho 21088, rho 21089, rho 21090, rho 21091,
      (by unfold Seg28.relationRow1705 at r1705; linear_combination r1705), (by unfold Seg28.relationRow1706 at r1706; linear_combination r1706), (by unfold Seg28.relationRow1707 at r1707; linear_combination r1707), (by unfold Seg28.relationRow1708 at r1708; linear_combination r1708), (by unfold Seg28.relationRow1709 at r1709; linear_combination r1709), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg65
    refine ⟨rho 21092, rho 21093, rho 21094, rho 21095, rho 21096,
      (by unfold Seg28.relationRow1710 at r1710; linear_combination r1710), (by unfold Seg28.relationRow1711 at r1711; linear_combination r1711), (by unfold Seg28.relationRow1712 at r1712; linear_combination r1712), (by unfold Seg28.relationRow1713 at r1713; linear_combination r1713), (by unfold Seg28.relationRow1714 at r1714; linear_combination r1714), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg66
    refine ⟨rho 21097, rho 21098, rho 21099, rho 21100, rho 21101,
      (by unfold Seg28.relationRow1715 at r1715; linear_combination r1715), (by unfold Seg28.relationRow1716 at r1716; linear_combination r1716), (by unfold Seg28.relationRow1717 at r1717; linear_combination r1717), (by unfold Seg28.relationRow1718 at r1718; linear_combination r1718), (by unfold Seg28.relationRow1719 at r1719; linear_combination r1719), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg67
    refine ⟨rho 21102, rho 21103, rho 21104, rho 21105, rho 21106,
      (by unfold Seg28.relationRow1720 at r1720; linear_combination r1720), (by unfold Seg28.relationRow1721 at r1721; linear_combination r1721), (by unfold Seg28.relationRow1722 at r1722; linear_combination r1722), (by unfold Seg28.relationRow1723 at r1723; linear_combination r1723), (by unfold Seg28.relationRow1724 at r1724; linear_combination r1724), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg68
    refine ⟨rho 21107, rho 21108, rho 21109, rho 21110, rho 21111,
      (by unfold Seg28.relationRow1725 at r1725; linear_combination r1725), (by unfold Seg28.relationRow1726 at r1726; linear_combination r1726), (by unfold Seg28.relationRow1727 at r1727; linear_combination r1727), (by unfold Seg28.relationRow1728 at r1728; linear_combination r1728), (by unfold Seg28.relationRow1729 at r1729; linear_combination r1729), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg69
    refine ⟨rho 21112, rho 21113, rho 21114, rho 21115, rho 21116,
      (by unfold Seg28.relationRow1730 at r1730; linear_combination r1730), (by unfold Seg28.relationRow1731 at r1731; linear_combination r1731), (by unfold Seg28.relationRow1732 at r1732; linear_combination r1732), (by unfold Seg28.relationRow1733 at r1733; linear_combination r1733), (by unfold Seg28.relationRow1734 at r1734; linear_combination r1734), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.relation_sound_permSpec (rho 175) (rho 176) (rho 177) (rho 20761) (rho 20762) (rho 20763) (rho 20764) (rho 20765) (rho 20766) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.tctNode4DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.F) + (4 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode3Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

