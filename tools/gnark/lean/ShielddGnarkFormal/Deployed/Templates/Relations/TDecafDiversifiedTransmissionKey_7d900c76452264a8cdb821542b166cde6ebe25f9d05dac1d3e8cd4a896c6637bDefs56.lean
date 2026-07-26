import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs55

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc115Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685 + (1 : F) * rho 1687 + (-1 : F) * rho 1688 + (1 : F) * rho 1691 + (-1 : F) * rho 1692 + (1 : F) * rho 1695 + (-1 : F) * rho 1696 + (1 : F) * rho 1698 + (-1 : F) * rho 1699 + (1 : F) * rho 1701 + (-1 : F) * rho 1702 + (1 : F) * rho 1706 + (-1 : F) * rho 1707 + (1 : F) * rho 1710

def relationLc115Part6 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1711 + (1 : F) * rho 1714 + (-1 : F) * rho 1715 + (1 : F) * rho 1717 + (-1 : F) * rho 1718 + (1 : F) * rho 1721 + (-1 : F) * rho 1722 + (1 : F) * rho 1725 + (-1 : F) * rho 1726 + (1 : F) * rho 1728 + (-1 : F) * rho 1729 + (1 : F) * rho 1731 + (-1 : F) * rho 1732 + (1 : F) * rho 1735 + (-1 : F) * rho 1736 + (1 : F) * rho 1738 + (-1 : F) * rho 1739 + (1 : F) * rho 1741 + (-1 : F) * rho 1742 + (1 : F) * rho 1745 + (-1 : F) * rho 1746 + (1 : F) * rho 1750 + (-1 : F) * rho 1751 + (1 : F) * rho 1753 + (-1 : F) * rho 1754 + (1 : F) * rho 1757 + (-1 : F) * rho 1758 + (1 : F) * rho 1761 + (-1 : F) * rho 1762 + (1 : F) * rho 1764 + (-1 : F) * rho 1765 + (1 : F) * rho 1771

def relationLc115Part7 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1772 + (1 : F) * rho 1774 + (-1 : F) * rho 1775 + (1 : F) * rho 1779 + (-1 : F) * rho 1780 + (1 : F) * rho 1782 + (-1 : F) * rho 1783 + (1 : F) * rho 1785 + (-1 : F) * rho 1786 + (1 : F) * rho 1788 + (-1 : F) * rho 1789 + (1 : F) * rho 1791 + (-1 : F) * rho 1792 + (1 : F) * rho 1794 + (-1 : F) * rho 1795 + (1 : F) * rho 1797 + (-1 : F) * rho 1798 + (1 : F) * rho 1800 + (-1 : F) * rho 1801 + (1 : F) * rho 1804 + (-1 : F) * rho 1805 + (1 : F) * rho 1807 + (-1 : F) * rho 1808

def relationLc115 (rho : Nat -> F) : F :=
    relationLc115Part0 rho +
    relationLc115Part1 rho +
    relationLc115Part2 rho +
    relationLc115Part3 rho +
    relationLc115Part4 rho +
    relationLc115Part5 rho +
    relationLc115Part6 rho +
    relationLc115Part7 rho

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1812) * (relationLc115 rho) = ((1 : F) * rho 1813)

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1811) * ((1 : F) * rho 991) = ((1 : F) * rho 1814)

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) + (-1 : F) * rho 990) = ((1 : F) * rho 1815)

def relationLc116Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc116Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc116Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc116Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc116Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645 + (1 : F) * rho 1647 + (-1 : F) * rho 1648 + (1 : F) * rho 1650

def relationLc116Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685 + (1 : F) * rho 1687 + (-1 : F) * rho 1688 + (1 : F) * rho 1691 + (-1 : F) * rho 1692 + (1 : F) * rho 1695 + (-1 : F) * rho 1696 + (1 : F) * rho 1698 + (-1 : F) * rho 1699 + (1 : F) * rho 1701 + (-1 : F) * rho 1702 + (1 : F) * rho 1706 + (-1 : F) * rho 1707 + (1 : F) * rho 1710

def relationLc116Part6 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1711 + (1 : F) * rho 1714 + (-1 : F) * rho 1715 + (1 : F) * rho 1717 + (-1 : F) * rho 1718 + (1 : F) * rho 1721 + (-1 : F) * rho 1722 + (1 : F) * rho 1725 + (-1 : F) * rho 1726 + (1 : F) * rho 1728 + (-1 : F) * rho 1729 + (1 : F) * rho 1731 + (-1 : F) * rho 1732 + (1 : F) * rho 1735 + (-1 : F) * rho 1736 + (1 : F) * rho 1738 + (-1 : F) * rho 1739 + (1 : F) * rho 1741 + (-1 : F) * rho 1742 + (1 : F) * rho 1745 + (-1 : F) * rho 1746 + (1 : F) * rho 1750 + (-1 : F) * rho 1751 + (1 : F) * rho 1753 + (-1 : F) * rho 1754 + (1 : F) * rho 1757 + (-1 : F) * rho 1758 + (1 : F) * rho 1761 + (-1 : F) * rho 1762 + (1 : F) * rho 1764 + (-1 : F) * rho 1765 + (1 : F) * rho 1771

def relationLc116Part7 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1772 + (1 : F) * rho 1774 + (-1 : F) * rho 1775 + (1 : F) * rho 1779 + (-1 : F) * rho 1780 + (1 : F) * rho 1782 + (-1 : F) * rho 1783 + (1 : F) * rho 1785 + (-1 : F) * rho 1786 + (1 : F) * rho 1788 + (-1 : F) * rho 1789 + (1 : F) * rho 1791 + (-1 : F) * rho 1792 + (1 : F) * rho 1794 + (-1 : F) * rho 1795 + (1 : F) * rho 1797 + (-1 : F) * rho 1798 + (1 : F) * rho 1800 + (-1 : F) * rho 1801 + (1 : F) * rho 1804 + (-1 : F) * rho 1805 + (1 : F) * rho 1807 + (-1 : F) * rho 1808 + (1 : F) * rho 1812 + (-1 : F) * rho 1813

def relationLc116 (rho : Nat -> F) : F :=
    relationLc116Part0 rho +
    relationLc116Part1 rho +
    relationLc116Part2 rho +
    relationLc116Part3 rho +
    relationLc116Part4 rho +
    relationLc116Part5 rho +
    relationLc116Part6 rho +
    relationLc116Part7 rho

def relationRow2322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1815) * (relationLc116 rho) = ((1 : F) * rho 1816)

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) * rho 990) = ((1 : F) * rho 1817)

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1817) * ((1 : F) + (-1 : F) * rho 989) = ((1 : F) * rho 1818)

def relationLc117Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc117Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc117Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc117Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc117Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645 + (1 : F) * rho 1647 + (-1 : F) * rho 1648 + (1 : F) * rho 1650

def relationLc117Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685 + (1 : F) * rho 1687 + (-1 : F) * rho 1688 + (1 : F) * rho 1691 + (-1 : F) * rho 1692 + (1 : F) * rho 1695 + (-1 : F) * rho 1696 + (1 : F) * rho 1698 + (-1 : F) * rho 1699 + (1 : F) * rho 1701 + (-1 : F) * rho 1702 + (1 : F) * rho 1706 + (-1 : F) * rho 1707 + (1 : F) * rho 1710

def relationLc117Part6 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1711 + (1 : F) * rho 1714 + (-1 : F) * rho 1715 + (1 : F) * rho 1717 + (-1 : F) * rho 1718 + (1 : F) * rho 1721 + (-1 : F) * rho 1722 + (1 : F) * rho 1725 + (-1 : F) * rho 1726 + (1 : F) * rho 1728 + (-1 : F) * rho 1729 + (1 : F) * rho 1731 + (-1 : F) * rho 1732 + (1 : F) * rho 1735 + (-1 : F) * rho 1736 + (1 : F) * rho 1738 + (-1 : F) * rho 1739 + (1 : F) * rho 1741 + (-1 : F) * rho 1742 + (1 : F) * rho 1745 + (-1 : F) * rho 1746 + (1 : F) * rho 1750 + (-1 : F) * rho 1751 + (1 : F) * rho 1753 + (-1 : F) * rho 1754 + (1 : F) * rho 1757 + (-1 : F) * rho 1758 + (1 : F) * rho 1761 + (-1 : F) * rho 1762 + (1 : F) * rho 1764 + (-1 : F) * rho 1765 + (1 : F) * rho 1771

def relationLc117Part7 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1772 + (1 : F) * rho 1774 + (-1 : F) * rho 1775 + (1 : F) * rho 1779 + (-1 : F) * rho 1780 + (1 : F) * rho 1782 + (-1 : F) * rho 1783 + (1 : F) * rho 1785 + (-1 : F) * rho 1786 + (1 : F) * rho 1788 + (-1 : F) * rho 1789 + (1 : F) * rho 1791 + (-1 : F) * rho 1792 + (1 : F) * rho 1794 + (-1 : F) * rho 1795 + (1 : F) * rho 1797 + (-1 : F) * rho 1798 + (1 : F) * rho 1800 + (-1 : F) * rho 1801 + (1 : F) * rho 1804 + (-1 : F) * rho 1805 + (1 : F) * rho 1807 + (-1 : F) * rho 1808 + (1 : F) * rho 1812 + (-1 : F) * rho 1813 + (1 : F) * rho 1815 + (-1 : F) * rho 1816

def relationLc117 (rho : Nat -> F) : F :=
    relationLc117Part0 rho +
    relationLc117Part1 rho +
    relationLc117Part2 rho +
    relationLc117Part3 rho +
    relationLc117Part4 rho +
    relationLc117Part5 rho +
    relationLc117Part6 rho +
    relationLc117Part7 rho

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1818) * (relationLc117 rho) = ((1 : F) * rho 1819)

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1817) * ((1 : F) * rho 989) = ((1 : F) * rho 1820)

def relationRow2327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1820) * ((1 : F) + (-1 : F) * rho 988) = ((1 : F) * rho 1821)

def relationLc118Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
