import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode3.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node3_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode3Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (4 : Seg13.F))
        (rho 85 + rho 8580) (rho 86 + rho 8581 + rho 8582)
        (rho 86 + rho 8583 + rho 8584) (rho 87 + rho 8585) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Seg13.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Seg13.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩
  unfold Seg13.relationPart20 at p20
  rcases p20 with ⟨r1600, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679⟩
  unfold Seg13.relationPart21 at p21
  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, r1734, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.relation (rho 85) (rho 86) (rho 87) (rho 8580) (rho 8581) (rho 8582) (rho 8583) (rho 8584) (rho 8585)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8915 ∧ o1 = rho 8920 ∧ o2 = rho 8925 ∧ o3 = rho 8930 ∧ o4 = rho 8935) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg0
    refine ⟨rho 8586, rho 8587, rho 8588, rho 8589, rho 8590,
      (by unfold Seg13.relationRow1385 at r1385; linear_combination r1385), (by unfold Seg13.relationRow1386 at r1386; linear_combination r1386), (by unfold Seg13.relationRow1387 at r1387; linear_combination r1387), (by unfold Seg13.relationRow1388 at r1388; linear_combination r1388), (by unfold Seg13.relationRow1389 at r1389; linear_combination r1389), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg1
    refine ⟨rho 8591, rho 8592, rho 8593, rho 8594, rho 8595,
      (by unfold Seg13.relationRow1390 at r1390; linear_combination r1390), (by unfold Seg13.relationRow1391 at r1391; linear_combination r1391), (by unfold Seg13.relationRow1392 at r1392; linear_combination r1392), (by unfold Seg13.relationRow1393 at r1393; linear_combination r1393), (by unfold Seg13.relationRow1394 at r1394; linear_combination r1394), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg2
    refine ⟨rho 8596, rho 8597, rho 8598, rho 8599, rho 8600,
      (by unfold Seg13.relationRow1395 at r1395; linear_combination r1395), (by unfold Seg13.relationRow1396 at r1396; linear_combination r1396), (by unfold Seg13.relationRow1397 at r1397; linear_combination r1397), (by unfold Seg13.relationRow1398 at r1398; linear_combination r1398), (by unfold Seg13.relationRow1399 at r1399; linear_combination r1399), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg3
    refine ⟨rho 8601, rho 8602, rho 8603, rho 8604, rho 8605,
      (by unfold Seg13.relationRow1400 at r1400; linear_combination r1400), (by unfold Seg13.relationRow1401 at r1401; linear_combination r1401), (by unfold Seg13.relationRow1402 at r1402; linear_combination r1402), (by unfold Seg13.relationRow1403 at r1403; linear_combination r1403), (by unfold Seg13.relationRow1404 at r1404; linear_combination r1404), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg4
    refine ⟨rho 8606, rho 8607, rho 8608, rho 8609, rho 8610,
      (by unfold Seg13.relationRow1405 at r1405; linear_combination r1405), (by unfold Seg13.relationRow1406 at r1406; linear_combination r1406), (by unfold Seg13.relationRow1407 at r1407; linear_combination r1407), (by unfold Seg13.relationRow1408 at r1408; linear_combination r1408), (by unfold Seg13.relationRow1409 at r1409; linear_combination r1409), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg5
    refine ⟨rho 8611, rho 8612, rho 8613, rho 8614, rho 8615,
      (by unfold Seg13.relationRow1410 at r1410; linear_combination r1410), (by unfold Seg13.relationRow1411 at r1411; linear_combination r1411), (by unfold Seg13.relationRow1412 at r1412; linear_combination r1412), (by unfold Seg13.relationRow1413 at r1413; linear_combination r1413), (by unfold Seg13.relationRow1414 at r1414; linear_combination r1414), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg6
    refine ⟨rho 8616, rho 8617, rho 8618, rho 8619, rho 8620,
      (by unfold Seg13.relationRow1415 at r1415; linear_combination r1415), (by unfold Seg13.relationRow1416 at r1416; linear_combination r1416), (by unfold Seg13.relationRow1417 at r1417; linear_combination r1417), (by unfold Seg13.relationRow1418 at r1418; linear_combination r1418), (by unfold Seg13.relationRow1419 at r1419; linear_combination r1419), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg7
    refine ⟨rho 8621, rho 8622, rho 8623, rho 8624, rho 8625,
      (by unfold Seg13.relationRow1420 at r1420; linear_combination r1420), (by unfold Seg13.relationRow1421 at r1421; linear_combination r1421), (by unfold Seg13.relationRow1422 at r1422; linear_combination r1422), (by unfold Seg13.relationRow1423 at r1423; linear_combination r1423), (by unfold Seg13.relationRow1424 at r1424; linear_combination r1424), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg8
    refine ⟨rho 8626, rho 8627, rho 8628, rho 8629, rho 8630,
      (by unfold Seg13.relationRow1425 at r1425; linear_combination r1425), (by unfold Seg13.relationRow1426 at r1426; linear_combination r1426), (by unfold Seg13.relationRow1427 at r1427; linear_combination r1427), (by unfold Seg13.relationRow1428 at r1428; linear_combination r1428), (by unfold Seg13.relationRow1429 at r1429; linear_combination r1429), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg9
    refine ⟨rho 8631, rho 8632, rho 8633, rho 8634, rho 8635,
      (by unfold Seg13.relationRow1430 at r1430; linear_combination r1430), (by unfold Seg13.relationRow1431 at r1431; linear_combination r1431), (by unfold Seg13.relationRow1432 at r1432; linear_combination r1432), (by unfold Seg13.relationRow1433 at r1433; linear_combination r1433), (by unfold Seg13.relationRow1434 at r1434; linear_combination r1434), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg10
    refine ⟨rho 8636, rho 8637, rho 8638, rho 8639, rho 8640,
      (by unfold Seg13.relationRow1435 at r1435; linear_combination r1435), (by unfold Seg13.relationRow1436 at r1436; linear_combination r1436), (by unfold Seg13.relationRow1437 at r1437; linear_combination r1437), (by unfold Seg13.relationRow1438 at r1438; linear_combination r1438), (by unfold Seg13.relationRow1439 at r1439; linear_combination r1439), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg11
    refine ⟨rho 8641, rho 8642, rho 8643, rho 8644, rho 8645,
      (by unfold Seg13.relationRow1440 at r1440; linear_combination r1440), (by unfold Seg13.relationRow1441 at r1441; linear_combination r1441), (by unfold Seg13.relationRow1442 at r1442; linear_combination r1442), (by unfold Seg13.relationRow1443 at r1443; linear_combination r1443), (by unfold Seg13.relationRow1444 at r1444; linear_combination r1444), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg12
    refine ⟨rho 8646, rho 8647, rho 8648, rho 8649, rho 8650,
      (by unfold Seg13.relationRow1445 at r1445; linear_combination r1445), (by unfold Seg13.relationRow1446 at r1446; linear_combination r1446), (by unfold Seg13.relationRow1447 at r1447; linear_combination r1447), (by unfold Seg13.relationRow1448 at r1448; linear_combination r1448), (by unfold Seg13.relationRow1449 at r1449; linear_combination r1449), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg13
    refine ⟨rho 8651, rho 8652, rho 8653, rho 8654, rho 8655,
      (by unfold Seg13.relationRow1450 at r1450; linear_combination r1450), (by unfold Seg13.relationRow1451 at r1451; linear_combination r1451), (by unfold Seg13.relationRow1452 at r1452; linear_combination r1452), (by unfold Seg13.relationRow1453 at r1453; linear_combination r1453), (by unfold Seg13.relationRow1454 at r1454; linear_combination r1454), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg14
    refine ⟨rho 8656, rho 8657, rho 8658, rho 8659, rho 8660,
      (by unfold Seg13.relationRow1455 at r1455; linear_combination r1455), (by unfold Seg13.relationRow1456 at r1456; linear_combination r1456), (by unfold Seg13.relationRow1457 at r1457; linear_combination r1457), (by unfold Seg13.relationRow1458 at r1458; linear_combination r1458), (by unfold Seg13.relationRow1459 at r1459; linear_combination r1459), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg15
    refine ⟨rho 8661, rho 8662, rho 8663, rho 8664, rho 8665,
      (by unfold Seg13.relationRow1460 at r1460; linear_combination r1460), (by unfold Seg13.relationRow1461 at r1461; linear_combination r1461), (by unfold Seg13.relationRow1462 at r1462; linear_combination r1462), (by unfold Seg13.relationRow1463 at r1463; linear_combination r1463), (by unfold Seg13.relationRow1464 at r1464; linear_combination r1464), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg16
    refine ⟨rho 8666, rho 8667, rho 8668, rho 8669, rho 8670,
      (by unfold Seg13.relationRow1465 at r1465; linear_combination r1465), (by unfold Seg13.relationRow1466 at r1466; linear_combination r1466), (by unfold Seg13.relationRow1467 at r1467; linear_combination r1467), (by unfold Seg13.relationRow1468 at r1468; linear_combination r1468), (by unfold Seg13.relationRow1469 at r1469; linear_combination r1469), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg17
    refine ⟨rho 8671, rho 8672, rho 8673, rho 8674, rho 8675,
      (by unfold Seg13.relationRow1470 at r1470; linear_combination r1470), (by unfold Seg13.relationRow1471 at r1471; linear_combination r1471), (by unfold Seg13.relationRow1472 at r1472; linear_combination r1472), (by unfold Seg13.relationRow1473 at r1473; linear_combination r1473), (by unfold Seg13.relationRow1474 at r1474; linear_combination r1474), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg18
    refine ⟨rho 8676, rho 8677, rho 8678, rho 8679, rho 8680,
      (by unfold Seg13.relationRow1475 at r1475; linear_combination r1475), (by unfold Seg13.relationRow1476 at r1476; linear_combination r1476), (by unfold Seg13.relationRow1477 at r1477; linear_combination r1477), (by unfold Seg13.relationRow1478 at r1478; linear_combination r1478), (by unfold Seg13.relationRow1479 at r1479; linear_combination r1479), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg19
    refine ⟨rho 8681, rho 8682, rho 8683, rho 8684, rho 8685,
      (by unfold Seg13.relationRow1480 at r1480; linear_combination r1480), (by unfold Seg13.relationRow1481 at r1481; linear_combination r1481), (by unfold Seg13.relationRow1482 at r1482; linear_combination r1482), (by unfold Seg13.relationRow1483 at r1483; linear_combination r1483), (by unfold Seg13.relationRow1484 at r1484; linear_combination r1484), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg20
    refine ⟨rho 8686, rho 8687, rho 8688, rho 8689, rho 8690,
      (by unfold Seg13.relationRow1485 at r1485; linear_combination r1485), (by unfold Seg13.relationRow1486 at r1486; linear_combination r1486), (by unfold Seg13.relationRow1487 at r1487; linear_combination r1487), (by unfold Seg13.relationRow1488 at r1488; linear_combination r1488), (by unfold Seg13.relationRow1489 at r1489; linear_combination r1489), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg21
    refine ⟨rho 8691, rho 8692, rho 8693, rho 8694, rho 8695,
      (by unfold Seg13.relationRow1490 at r1490; linear_combination r1490), (by unfold Seg13.relationRow1491 at r1491; linear_combination r1491), (by unfold Seg13.relationRow1492 at r1492; linear_combination r1492), (by unfold Seg13.relationRow1493 at r1493; linear_combination r1493), (by unfold Seg13.relationRow1494 at r1494; linear_combination r1494), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg22
    refine ⟨rho 8696, rho 8697, rho 8698, rho 8699, rho 8700,
      (by unfold Seg13.relationRow1495 at r1495; linear_combination r1495), (by unfold Seg13.relationRow1496 at r1496; linear_combination r1496), (by unfold Seg13.relationRow1497 at r1497; linear_combination r1497), (by unfold Seg13.relationRow1498 at r1498; linear_combination r1498), (by unfold Seg13.relationRow1499 at r1499; linear_combination r1499), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg23
    refine ⟨rho 8701, rho 8702, rho 8703, rho 8704, rho 8705,
      (by unfold Seg13.relationRow1500 at r1500; linear_combination r1500), (by unfold Seg13.relationRow1501 at r1501; linear_combination r1501), (by unfold Seg13.relationRow1502 at r1502; linear_combination r1502), (by unfold Seg13.relationRow1503 at r1503; linear_combination r1503), (by unfold Seg13.relationRow1504 at r1504; linear_combination r1504), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg24
    refine ⟨rho 8706, rho 8707, rho 8708, rho 8709, rho 8710,
      (by unfold Seg13.relationRow1505 at r1505; linear_combination r1505), (by unfold Seg13.relationRow1506 at r1506; linear_combination r1506), (by unfold Seg13.relationRow1507 at r1507; linear_combination r1507), (by unfold Seg13.relationRow1508 at r1508; linear_combination r1508), (by unfold Seg13.relationRow1509 at r1509; linear_combination r1509), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg25
    refine ⟨rho 8711, rho 8712, rho 8713, rho 8714, rho 8715,
      (by unfold Seg13.relationRow1510 at r1510; linear_combination r1510), (by unfold Seg13.relationRow1511 at r1511; linear_combination r1511), (by unfold Seg13.relationRow1512 at r1512; linear_combination r1512), (by unfold Seg13.relationRow1513 at r1513; linear_combination r1513), (by unfold Seg13.relationRow1514 at r1514; linear_combination r1514), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg26
    refine ⟨rho 8716, rho 8717, rho 8718, rho 8719, rho 8720,
      (by unfold Seg13.relationRow1515 at r1515; linear_combination r1515), (by unfold Seg13.relationRow1516 at r1516; linear_combination r1516), (by unfold Seg13.relationRow1517 at r1517; linear_combination r1517), (by unfold Seg13.relationRow1518 at r1518; linear_combination r1518), (by unfold Seg13.relationRow1519 at r1519; linear_combination r1519), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg27
    refine ⟨rho 8721, rho 8722, rho 8723, rho 8724, rho 8725,
      (by unfold Seg13.relationRow1520 at r1520; linear_combination r1520), (by unfold Seg13.relationRow1521 at r1521; linear_combination r1521), (by unfold Seg13.relationRow1522 at r1522; linear_combination r1522), (by unfold Seg13.relationRow1523 at r1523; linear_combination r1523), (by unfold Seg13.relationRow1524 at r1524; linear_combination r1524), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg28
    refine ⟨rho 8726, rho 8727, rho 8728, rho 8729, rho 8730,
      (by unfold Seg13.relationRow1525 at r1525; linear_combination r1525), (by unfold Seg13.relationRow1526 at r1526; linear_combination r1526), (by unfold Seg13.relationRow1527 at r1527; linear_combination r1527), (by unfold Seg13.relationRow1528 at r1528; linear_combination r1528), (by unfold Seg13.relationRow1529 at r1529; linear_combination r1529), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg29
    refine ⟨rho 8731, rho 8732, rho 8733, rho 8734, rho 8735,
      (by unfold Seg13.relationRow1530 at r1530; linear_combination r1530), (by unfold Seg13.relationRow1531 at r1531; linear_combination r1531), (by unfold Seg13.relationRow1532 at r1532; linear_combination r1532), (by unfold Seg13.relationRow1533 at r1533; linear_combination r1533), (by unfold Seg13.relationRow1534 at r1534; linear_combination r1534), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg30
    refine ⟨rho 8736, rho 8737, rho 8738, rho 8739, rho 8740,
      (by unfold Seg13.relationRow1535 at r1535; linear_combination r1535), (by unfold Seg13.relationRow1536 at r1536; linear_combination r1536), (by unfold Seg13.relationRow1537 at r1537; linear_combination r1537), (by unfold Seg13.relationRow1538 at r1538; linear_combination r1538), (by unfold Seg13.relationRow1539 at r1539; linear_combination r1539), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg31
    refine ⟨rho 8741, rho 8742, rho 8743, rho 8744, rho 8745,
      (by unfold Seg13.relationRow1540 at r1540; linear_combination r1540), (by unfold Seg13.relationRow1541 at r1541; linear_combination r1541), (by unfold Seg13.relationRow1542 at r1542; linear_combination r1542), (by unfold Seg13.relationRow1543 at r1543; linear_combination r1543), (by unfold Seg13.relationRow1544 at r1544; linear_combination r1544), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg32
    refine ⟨rho 8746, rho 8747, rho 8748, rho 8749, rho 8750,
      (by unfold Seg13.relationRow1545 at r1545; linear_combination r1545), (by unfold Seg13.relationRow1546 at r1546; linear_combination r1546), (by unfold Seg13.relationRow1547 at r1547; linear_combination r1547), (by unfold Seg13.relationRow1548 at r1548; linear_combination r1548), (by unfold Seg13.relationRow1549 at r1549; linear_combination r1549), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg33
    refine ⟨rho 8751, rho 8752, rho 8753, rho 8754, rho 8755,
      (by unfold Seg13.relationRow1550 at r1550; linear_combination r1550), (by unfold Seg13.relationRow1551 at r1551; linear_combination r1551), (by unfold Seg13.relationRow1552 at r1552; linear_combination r1552), (by unfold Seg13.relationRow1553 at r1553; linear_combination r1553), (by unfold Seg13.relationRow1554 at r1554; linear_combination r1554), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg34
    refine ⟨rho 8756, rho 8757, rho 8758, rho 8759, rho 8760,
      (by unfold Seg13.relationRow1555 at r1555; linear_combination r1555), (by unfold Seg13.relationRow1556 at r1556; linear_combination r1556), (by unfold Seg13.relationRow1557 at r1557; linear_combination r1557), (by unfold Seg13.relationRow1558 at r1558; linear_combination r1558), (by unfold Seg13.relationRow1559 at r1559; linear_combination r1559), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg35
    refine ⟨rho 8761, rho 8762, rho 8763, rho 8764, rho 8765,
      (by unfold Seg13.relationRow1560 at r1560; linear_combination r1560), (by unfold Seg13.relationRow1561 at r1561; linear_combination r1561), (by unfold Seg13.relationRow1562 at r1562; linear_combination r1562), (by unfold Seg13.relationRow1563 at r1563; linear_combination r1563), (by unfold Seg13.relationRow1564 at r1564; linear_combination r1564), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg36
    refine ⟨rho 8766, rho 8767, rho 8768, rho 8769, rho 8770,
      (by unfold Seg13.relationRow1565 at r1565; linear_combination r1565), (by unfold Seg13.relationRow1566 at r1566; linear_combination r1566), (by unfold Seg13.relationRow1567 at r1567; linear_combination r1567), (by unfold Seg13.relationRow1568 at r1568; linear_combination r1568), (by unfold Seg13.relationRow1569 at r1569; linear_combination r1569), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg37
    refine ⟨rho 8771, rho 8772, rho 8773, rho 8774, rho 8775,
      (by unfold Seg13.relationRow1570 at r1570; linear_combination r1570), (by unfold Seg13.relationRow1571 at r1571; linear_combination r1571), (by unfold Seg13.relationRow1572 at r1572; linear_combination r1572), (by unfold Seg13.relationRow1573 at r1573; linear_combination r1573), (by unfold Seg13.relationRow1574 at r1574; linear_combination r1574), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg38
    refine ⟨rho 8776, rho 8777, rho 8778, rho 8779, rho 8780,
      (by unfold Seg13.relationRow1575 at r1575; linear_combination r1575), (by unfold Seg13.relationRow1576 at r1576; linear_combination r1576), (by unfold Seg13.relationRow1577 at r1577; linear_combination r1577), (by unfold Seg13.relationRow1578 at r1578; linear_combination r1578), (by unfold Seg13.relationRow1579 at r1579; linear_combination r1579), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg39
    refine ⟨rho 8781, rho 8782, rho 8783, rho 8784, rho 8785,
      (by unfold Seg13.relationRow1580 at r1580; linear_combination r1580), (by unfold Seg13.relationRow1581 at r1581; linear_combination r1581), (by unfold Seg13.relationRow1582 at r1582; linear_combination r1582), (by unfold Seg13.relationRow1583 at r1583; linear_combination r1583), (by unfold Seg13.relationRow1584 at r1584; linear_combination r1584), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg40
    refine ⟨rho 8786, rho 8787, rho 8788, rho 8789, rho 8790,
      (by unfold Seg13.relationRow1585 at r1585; linear_combination r1585), (by unfold Seg13.relationRow1586 at r1586; linear_combination r1586), (by unfold Seg13.relationRow1587 at r1587; linear_combination r1587), (by unfold Seg13.relationRow1588 at r1588; linear_combination r1588), (by unfold Seg13.relationRow1589 at r1589; linear_combination r1589), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg41
    refine ⟨rho 8791, rho 8792, rho 8793, rho 8794, rho 8795,
      (by unfold Seg13.relationRow1590 at r1590; linear_combination r1590), (by unfold Seg13.relationRow1591 at r1591; linear_combination r1591), (by unfold Seg13.relationRow1592 at r1592; linear_combination r1592), (by unfold Seg13.relationRow1593 at r1593; linear_combination r1593), (by unfold Seg13.relationRow1594 at r1594; linear_combination r1594), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg42
    refine ⟨rho 8796, rho 8797, rho 8798, rho 8799, rho 8800,
      (by unfold Seg13.relationRow1595 at r1595; linear_combination r1595), (by unfold Seg13.relationRow1596 at r1596; linear_combination r1596), (by unfold Seg13.relationRow1597 at r1597; linear_combination r1597), (by unfold Seg13.relationRow1598 at r1598; linear_combination r1598), (by unfold Seg13.relationRow1599 at r1599; linear_combination r1599), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg43
    refine ⟨rho 8801, rho 8802, rho 8803, rho 8804, rho 8805,
      (by unfold Seg13.relationRow1600 at r1600; linear_combination r1600), (by unfold Seg13.relationRow1601 at r1601; linear_combination r1601), (by unfold Seg13.relationRow1602 at r1602; linear_combination r1602), (by unfold Seg13.relationRow1603 at r1603; linear_combination r1603), (by unfold Seg13.relationRow1604 at r1604; linear_combination r1604), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg44
    refine ⟨rho 8806, rho 8807, rho 8808, rho 8809, rho 8810,
      (by unfold Seg13.relationRow1605 at r1605; linear_combination r1605), (by unfold Seg13.relationRow1606 at r1606; linear_combination r1606), (by unfold Seg13.relationRow1607 at r1607; linear_combination r1607), (by unfold Seg13.relationRow1608 at r1608; linear_combination r1608), (by unfold Seg13.relationRow1609 at r1609; linear_combination r1609), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg45
    refine ⟨rho 8811, rho 8812, rho 8813, rho 8814, rho 8815,
      (by unfold Seg13.relationRow1610 at r1610; linear_combination r1610), (by unfold Seg13.relationRow1611 at r1611; linear_combination r1611), (by unfold Seg13.relationRow1612 at r1612; linear_combination r1612), (by unfold Seg13.relationRow1613 at r1613; linear_combination r1613), (by unfold Seg13.relationRow1614 at r1614; linear_combination r1614), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg46
    refine ⟨rho 8816, rho 8817, rho 8818, rho 8819, rho 8820,
      (by unfold Seg13.relationRow1615 at r1615; linear_combination r1615), (by unfold Seg13.relationRow1616 at r1616; linear_combination r1616), (by unfold Seg13.relationRow1617 at r1617; linear_combination r1617), (by unfold Seg13.relationRow1618 at r1618; linear_combination r1618), (by unfold Seg13.relationRow1619 at r1619; linear_combination r1619), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg47
    refine ⟨rho 8821, rho 8822, rho 8823, rho 8824, rho 8825,
      (by unfold Seg13.relationRow1620 at r1620; linear_combination r1620), (by unfold Seg13.relationRow1621 at r1621; linear_combination r1621), (by unfold Seg13.relationRow1622 at r1622; linear_combination r1622), (by unfold Seg13.relationRow1623 at r1623; linear_combination r1623), (by unfold Seg13.relationRow1624 at r1624; linear_combination r1624), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg48
    refine ⟨rho 8826, rho 8827, rho 8828, rho 8829, rho 8830,
      (by unfold Seg13.relationRow1625 at r1625; linear_combination r1625), (by unfold Seg13.relationRow1626 at r1626; linear_combination r1626), (by unfold Seg13.relationRow1627 at r1627; linear_combination r1627), (by unfold Seg13.relationRow1628 at r1628; linear_combination r1628), (by unfold Seg13.relationRow1629 at r1629; linear_combination r1629), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg49
    refine ⟨rho 8831, rho 8832, rho 8833, rho 8834, rho 8835,
      (by unfold Seg13.relationRow1630 at r1630; linear_combination r1630), (by unfold Seg13.relationRow1631 at r1631; linear_combination r1631), (by unfold Seg13.relationRow1632 at r1632; linear_combination r1632), (by unfold Seg13.relationRow1633 at r1633; linear_combination r1633), (by unfold Seg13.relationRow1634 at r1634; linear_combination r1634), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg50
    refine ⟨rho 8836, rho 8837, rho 8838, rho 8839, rho 8840,
      (by unfold Seg13.relationRow1635 at r1635; linear_combination r1635), (by unfold Seg13.relationRow1636 at r1636; linear_combination r1636), (by unfold Seg13.relationRow1637 at r1637; linear_combination r1637), (by unfold Seg13.relationRow1638 at r1638; linear_combination r1638), (by unfold Seg13.relationRow1639 at r1639; linear_combination r1639), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg51
    refine ⟨rho 8841, rho 8842, rho 8843, rho 8844, rho 8845,
      (by unfold Seg13.relationRow1640 at r1640; linear_combination r1640), (by unfold Seg13.relationRow1641 at r1641; linear_combination r1641), (by unfold Seg13.relationRow1642 at r1642; linear_combination r1642), (by unfold Seg13.relationRow1643 at r1643; linear_combination r1643), (by unfold Seg13.relationRow1644 at r1644; linear_combination r1644), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg52
    refine ⟨rho 8846, rho 8847, rho 8848, rho 8849, rho 8850,
      (by unfold Seg13.relationRow1645 at r1645; linear_combination r1645), (by unfold Seg13.relationRow1646 at r1646; linear_combination r1646), (by unfold Seg13.relationRow1647 at r1647; linear_combination r1647), (by unfold Seg13.relationRow1648 at r1648; linear_combination r1648), (by unfold Seg13.relationRow1649 at r1649; linear_combination r1649), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg53
    refine ⟨rho 8851, rho 8852, rho 8853, rho 8854, rho 8855,
      (by unfold Seg13.relationRow1650 at r1650; linear_combination r1650), (by unfold Seg13.relationRow1651 at r1651; linear_combination r1651), (by unfold Seg13.relationRow1652 at r1652; linear_combination r1652), (by unfold Seg13.relationRow1653 at r1653; linear_combination r1653), (by unfold Seg13.relationRow1654 at r1654; linear_combination r1654), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg54
    refine ⟨rho 8856, rho 8857, rho 8858, rho 8859, rho 8860,
      (by unfold Seg13.relationRow1655 at r1655; linear_combination r1655), (by unfold Seg13.relationRow1656 at r1656; linear_combination r1656), (by unfold Seg13.relationRow1657 at r1657; linear_combination r1657), (by unfold Seg13.relationRow1658 at r1658; linear_combination r1658), (by unfold Seg13.relationRow1659 at r1659; linear_combination r1659), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg55
    refine ⟨rho 8861, rho 8862, rho 8863, rho 8864, rho 8865,
      (by unfold Seg13.relationRow1660 at r1660; linear_combination r1660), (by unfold Seg13.relationRow1661 at r1661; linear_combination r1661), (by unfold Seg13.relationRow1662 at r1662; linear_combination r1662), (by unfold Seg13.relationRow1663 at r1663; linear_combination r1663), (by unfold Seg13.relationRow1664 at r1664; linear_combination r1664), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg56
    refine ⟨rho 8866, rho 8867, rho 8868, rho 8869, rho 8870,
      (by unfold Seg13.relationRow1665 at r1665; linear_combination r1665), (by unfold Seg13.relationRow1666 at r1666; linear_combination r1666), (by unfold Seg13.relationRow1667 at r1667; linear_combination r1667), (by unfold Seg13.relationRow1668 at r1668; linear_combination r1668), (by unfold Seg13.relationRow1669 at r1669; linear_combination r1669), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg57
    refine ⟨rho 8871, rho 8872, rho 8873, rho 8874, rho 8875,
      (by unfold Seg13.relationRow1670 at r1670; linear_combination r1670), (by unfold Seg13.relationRow1671 at r1671; linear_combination r1671), (by unfold Seg13.relationRow1672 at r1672; linear_combination r1672), (by unfold Seg13.relationRow1673 at r1673; linear_combination r1673), (by unfold Seg13.relationRow1674 at r1674; linear_combination r1674), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg58
    refine ⟨rho 8876, rho 8877, rho 8878, rho 8879, rho 8880,
      (by unfold Seg13.relationRow1675 at r1675; linear_combination r1675), (by unfold Seg13.relationRow1676 at r1676; linear_combination r1676), (by unfold Seg13.relationRow1677 at r1677; linear_combination r1677), (by unfold Seg13.relationRow1678 at r1678; linear_combination r1678), (by unfold Seg13.relationRow1679 at r1679; linear_combination r1679), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg59
    refine ⟨rho 8881, rho 8882, rho 8883, rho 8884, rho 8885,
      (by unfold Seg13.relationRow1680 at r1680; linear_combination r1680), (by unfold Seg13.relationRow1681 at r1681; linear_combination r1681), (by unfold Seg13.relationRow1682 at r1682; linear_combination r1682), (by unfold Seg13.relationRow1683 at r1683; linear_combination r1683), (by unfold Seg13.relationRow1684 at r1684; linear_combination r1684), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg60
    refine ⟨rho 8886, rho 8887, rho 8888, rho 8889, rho 8890,
      (by unfold Seg13.relationRow1685 at r1685; linear_combination r1685), (by unfold Seg13.relationRow1686 at r1686; linear_combination r1686), (by unfold Seg13.relationRow1687 at r1687; linear_combination r1687), (by unfold Seg13.relationRow1688 at r1688; linear_combination r1688), (by unfold Seg13.relationRow1689 at r1689; linear_combination r1689), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg61
    refine ⟨rho 8891, rho 8892, rho 8893, rho 8894, rho 8895,
      (by unfold Seg13.relationRow1690 at r1690; linear_combination r1690), (by unfold Seg13.relationRow1691 at r1691; linear_combination r1691), (by unfold Seg13.relationRow1692 at r1692; linear_combination r1692), (by unfold Seg13.relationRow1693 at r1693; linear_combination r1693), (by unfold Seg13.relationRow1694 at r1694; linear_combination r1694), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg62
    refine ⟨rho 8896, rho 8897, rho 8898, rho 8899, rho 8900,
      (by unfold Seg13.relationRow1695 at r1695; linear_combination r1695), (by unfold Seg13.relationRow1696 at r1696; linear_combination r1696), (by unfold Seg13.relationRow1697 at r1697; linear_combination r1697), (by unfold Seg13.relationRow1698 at r1698; linear_combination r1698), (by unfold Seg13.relationRow1699 at r1699; linear_combination r1699), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg63
    refine ⟨rho 8901, rho 8902, rho 8903, rho 8904, rho 8905,
      (by unfold Seg13.relationRow1700 at r1700; linear_combination r1700), (by unfold Seg13.relationRow1701 at r1701; linear_combination r1701), (by unfold Seg13.relationRow1702 at r1702; linear_combination r1702), (by unfold Seg13.relationRow1703 at r1703; linear_combination r1703), (by unfold Seg13.relationRow1704 at r1704; linear_combination r1704), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg64
    refine ⟨rho 8906, rho 8907, rho 8908, rho 8909, rho 8910,
      (by unfold Seg13.relationRow1705 at r1705; linear_combination r1705), (by unfold Seg13.relationRow1706 at r1706; linear_combination r1706), (by unfold Seg13.relationRow1707 at r1707; linear_combination r1707), (by unfold Seg13.relationRow1708 at r1708; linear_combination r1708), (by unfold Seg13.relationRow1709 at r1709; linear_combination r1709), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg65
    refine ⟨rho 8911, rho 8912, rho 8913, rho 8914, rho 8915,
      (by unfold Seg13.relationRow1710 at r1710; linear_combination r1710), (by unfold Seg13.relationRow1711 at r1711; linear_combination r1711), (by unfold Seg13.relationRow1712 at r1712; linear_combination r1712), (by unfold Seg13.relationRow1713 at r1713; linear_combination r1713), (by unfold Seg13.relationRow1714 at r1714; linear_combination r1714), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg66
    refine ⟨rho 8916, rho 8917, rho 8918, rho 8919, rho 8920,
      (by unfold Seg13.relationRow1715 at r1715; linear_combination r1715), (by unfold Seg13.relationRow1716 at r1716; linear_combination r1716), (by unfold Seg13.relationRow1717 at r1717; linear_combination r1717), (by unfold Seg13.relationRow1718 at r1718; linear_combination r1718), (by unfold Seg13.relationRow1719 at r1719; linear_combination r1719), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg67
    refine ⟨rho 8921, rho 8922, rho 8923, rho 8924, rho 8925,
      (by unfold Seg13.relationRow1720 at r1720; linear_combination r1720), (by unfold Seg13.relationRow1721 at r1721; linear_combination r1721), (by unfold Seg13.relationRow1722 at r1722; linear_combination r1722), (by unfold Seg13.relationRow1723 at r1723; linear_combination r1723), (by unfold Seg13.relationRow1724 at r1724; linear_combination r1724), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg68
    refine ⟨rho 8926, rho 8927, rho 8928, rho 8929, rho 8930,
      (by unfold Seg13.relationRow1725 at r1725; linear_combination r1725), (by unfold Seg13.relationRow1726 at r1726; linear_combination r1726), (by unfold Seg13.relationRow1727 at r1727; linear_combination r1727), (by unfold Seg13.relationRow1728 at r1728; linear_combination r1728), (by unfold Seg13.relationRow1729 at r1729; linear_combination r1729), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_f4dba3.seg69
    refine ⟨rho 8931, rho 8932, rho 8933, rho 8934, rho 8935,
      (by unfold Seg13.relationRow1730 at r1730; linear_combination r1730), (by unfold Seg13.relationRow1731 at r1731; linear_combination r1731), (by unfold Seg13.relationRow1732 at r1732; linear_combination r1732), (by unfold Seg13.relationRow1733 at r1733; linear_combination r1733), (by unfold Seg13.relationRow1734 at r1734; linear_combination r1734), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.relation_sound_permSpec (rho 85) (rho 86) (rho 87) (rho 8580) (rho 8581) (rho 8582) (rho 8583) (rho 8584) (rho 8585) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.tctNode4DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.F) + (4 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode3Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

