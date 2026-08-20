import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode3Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode3.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node3_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    seg37ScpNode3Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (4 : F))
        (rho 1379 + rho 1380) (rho 1381 + rho 1382 + rho 1383)
        (rho 1381 + rho 1385 + rho 1386) (rho 1384 + rho 1387) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart20 at p20
  rcases p20 with ⟨r1600, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart21 at p21
  rcases p21 with ⟨r1680, r1681, r1682, r1683, r1684, r1685, r1686, r1687, r1688, r1689, r1690, r1691, r1692, r1693, r1694, r1695, r1696, r1697, r1698, r1699, r1700, r1701, r1702, r1703, r1704, r1705, r1706, r1707, r1708, r1709, r1710, r1711, r1712, r1713, r1714, r1715, r1716, r1717, r1718, r1719, r1720, r1721, r1722, r1723, r1724, r1725, r1726, r1727, r1728, r1729, r1730, r1731, r1732, r1733, r1734, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.relation (rho 1379) (rho 1381) (rho 1384) (rho 1380) (rho 1382) (rho 1383) (rho 1385) (rho 1386) (rho 1387)
      (fun o0 o1 o2 o3 o4 => o0 = rho 1717 ∧ o1 = rho 1722 ∧ o2 = rho 1727 ∧ o3 = rho 1732 ∧ o4 = rho 1737) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode3350_366c23.relation
    exact template_scp_node3_seg0 rho _ r1385 r1386 r1387 r1388 r1389 (template_scp_node3_seg1 rho _ r1390 r1391 r1392 r1393 r1394 (template_scp_node3_seg2 rho _ r1395 r1396 r1397 r1398 r1399 (template_scp_node3_seg3 rho _ r1400 r1401 r1402 r1403 r1404 (template_scp_node3_seg4 rho _ r1405 r1406 r1407 r1408 r1409 (template_scp_node3_seg5 rho _ r1410 r1411 r1412 r1413 r1414 (template_scp_node3_seg6 rho _ r1415 r1416 r1417 r1418 r1419 (template_scp_node3_seg7 rho _ r1420 r1421 r1422 r1423 r1424 (template_scp_node3_seg8 rho _ r1425 r1426 r1427 r1428 r1429 (template_scp_node3_seg9 rho _ r1430 r1431 r1432 r1433 r1434 (template_scp_node3_seg10 rho _ r1435 r1436 r1437 r1438 r1439 (template_scp_node3_seg11 rho _ r1440 r1441 r1442 r1443 r1444 (template_scp_node3_seg12 rho _ r1445 r1446 r1447 r1448 r1449 (template_scp_node3_seg13 rho _ r1450 r1451 r1452 r1453 r1454 (template_scp_node3_seg14 rho _ r1455 r1456 r1457 r1458 r1459 (template_scp_node3_seg15 rho _ r1460 r1461 r1462 r1463 r1464 (template_scp_node3_seg16 rho _ r1465 r1466 r1467 r1468 r1469 (template_scp_node3_seg17 rho _ r1470 r1471 r1472 r1473 r1474 (template_scp_node3_seg18 rho _ r1475 r1476 r1477 r1478 r1479 (template_scp_node3_seg19 rho _ r1480 r1481 r1482 r1483 r1484 (template_scp_node3_seg20 rho _ r1485 r1486 r1487 r1488 r1489 (template_scp_node3_seg21 rho _ r1490 r1491 r1492 r1493 r1494 (template_scp_node3_seg22 rho _ r1495 r1496 r1497 r1498 r1499 (template_scp_node3_seg23 rho _ r1500 r1501 r1502 r1503 r1504 (template_scp_node3_seg24 rho _ r1505 r1506 r1507 r1508 r1509 (template_scp_node3_seg25 rho _ r1510 r1511 r1512 r1513 r1514 (template_scp_node3_seg26 rho _ r1515 r1516 r1517 r1518 r1519 (template_scp_node3_seg27 rho _ r1520 r1521 r1522 r1523 r1524 (template_scp_node3_seg28 rho _ r1525 r1526 r1527 r1528 r1529 (template_scp_node3_seg29 rho _ r1530 r1531 r1532 r1533 r1534 (template_scp_node3_seg30 rho _ r1535 r1536 r1537 r1538 r1539 (template_scp_node3_seg31 rho _ r1540 r1541 r1542 r1543 r1544 (template_scp_node3_seg32 rho _ r1545 r1546 r1547 r1548 r1549 (template_scp_node3_seg33 rho _ r1550 r1551 r1552 r1553 r1554 (template_scp_node3_seg34 rho _ r1555 r1556 r1557 r1558 r1559 (template_scp_node3_seg35 rho _ r1560 r1561 r1562 r1563 r1564 (template_scp_node3_seg36 rho _ r1565 r1566 r1567 r1568 r1569 (template_scp_node3_template rho _ r1570 r1571 r1572 r1573 r1574 (template_scp_node3_seg38 rho _ r1575 r1576 r1577 r1578 r1579 (template_scp_node3_seg39 rho _ r1580 r1581 r1582 r1583 r1584 (template_scp_node3_seg40 rho _ r1585 r1586 r1587 r1588 r1589 (template_scp_node3_seg41 rho _ r1590 r1591 r1592 r1593 r1594 (template_scp_node3_seg42 rho _ r1595 r1596 r1597 r1598 r1599 (template_scp_node3_seg43 rho _ r1600 r1601 r1602 r1603 r1604 (template_scp_node3_seg44 rho _ r1605 r1606 r1607 r1608 r1609 (template_scp_node3_seg45 rho _ r1610 r1611 r1612 r1613 r1614 (template_scp_node3_seg46 rho _ r1615 r1616 r1617 r1618 r1619 (template_scp_node3_seg47 rho _ r1620 r1621 r1622 r1623 r1624 (template_scp_node3_seg48 rho _ r1625 r1626 r1627 r1628 r1629 (template_scp_node3_seg49 rho _ r1630 r1631 r1632 r1633 r1634 (template_scp_node3_seg50 rho _ r1635 r1636 r1637 r1638 r1639 (template_scp_node3_seg51 rho _ r1640 r1641 r1642 r1643 r1644 (template_scp_node3_seg52 rho _ r1645 r1646 r1647 r1648 r1649 (template_scp_node3_seg53 rho _ r1650 r1651 r1652 r1653 r1654 (template_scp_node3_seg54 rho _ r1655 r1656 r1657 r1658 r1659 (template_scp_node3_seg55 rho _ r1660 r1661 r1662 r1663 r1664 (template_scp_node3_seg56 rho _ r1665 r1666 r1667 r1668 r1669 (template_scp_node3_seg57 rho _ r1670 r1671 r1672 r1673 r1674 (template_scp_node3_seg58 rho _ r1675 r1676 r1677 r1678 r1679 (template_scp_node3_seg59 rho _ r1680 r1681 r1682 r1683 r1684 (template_scp_node3_seg60 rho _ r1685 r1686 r1687 r1688 r1689 (template_scp_node3_seg61 rho _ r1690 r1691 r1692 r1693 r1694 (template_scp_node3_seg62 rho _ r1695 r1696 r1697 r1698 r1699 (template_scp_node3_seg63 rho _ r1700 r1701 r1702 r1703 r1704 (template_scp_node3_seg64 rho _ r1705 r1706 r1707 r1708 r1709 (template_scp_node3_seg65 rho _ r1710 r1711 r1712 r1713 r1714 (template_scp_node3_seg66 rho _ r1715 r1716 r1717 r1718 r1719 (template_scp_node3_seg67 rho _ r1720 r1721 r1722 r1723 r1724 (template_scp_node3_seg68 rho _ r1725 r1726 r1727 r1728 r1729 (template_scp_node3_seg69 rho _ r1730 r1731 r1732 r1733 r1734 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.relation_sound_permSpec (rho 1379) (rho 1381) (rho 1384) (rho 1380) (rho 1382) (rho 1383) (rho 1385) (rho 1386) (rho 1387) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.tctNode4DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.F) + (4 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg37ScpNode3Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode3.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
