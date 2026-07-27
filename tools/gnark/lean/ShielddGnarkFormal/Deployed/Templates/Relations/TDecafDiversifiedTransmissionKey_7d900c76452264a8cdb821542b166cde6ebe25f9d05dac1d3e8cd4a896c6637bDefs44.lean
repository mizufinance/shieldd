import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs43

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc81Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645 + (1 : F) * rho 1647 + (-1 : F) * rho 1648 + (1 : F) * rho 1650

def relationLc81Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685

def relationLc81 (rho : Nat -> F) : F :=
    relationLc81Part0 rho +
    relationLc81Part1 rho +
    relationLc81Part2 rho +
    relationLc81Part3 rho +
    relationLc81Part4 rho +
    relationLc81Part5 rho

def relationRow2194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1687) * (relationLc81 rho) = ((1 : F) * rho 1688)

def relationRow2195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1686) * ((1 : F) * rho 1048) = ((1 : F) * rho 1689)

def relationRow2196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1689) * ((1 : F) + (-1 : F) * rho 1047) = ((1 : F) * rho 1690)

def relationRow2197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1690) * ((1 : F) + (-1 : F) * rho 1046) = ((1 : F) * rho 1691)

def relationLc82Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc82Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc82Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc82Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc82Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645 + (1 : F) * rho 1647 + (-1 : F) * rho 1648 + (1 : F) * rho 1650

def relationLc82Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685 + (1 : F) * rho 1687 + (-1 : F) * rho 1688

def relationLc82 (rho : Nat -> F) : F :=
    relationLc82Part0 rho +
    relationLc82Part1 rho +
    relationLc82Part2 rho +
    relationLc82Part3 rho +
    relationLc82Part4 rho +
    relationLc82Part5 rho

def relationRow2198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1691) * (relationLc82 rho) = ((1 : F) * rho 1692)

def relationRow2199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1690) * ((1 : F) * rho 1046) = ((1 : F) * rho 1693)

def relationRow2200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1693) * ((1 : F) + (-1 : F) * rho 1045) = ((1 : F) * rho 1694)

def relationRow2201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1694) * ((1 : F) + (-1 : F) * rho 1044) = ((1 : F) * rho 1695)

def relationLc83Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc83Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc83Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc83Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc83Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645 + (1 : F) * rho 1647 + (-1 : F) * rho 1648 + (1 : F) * rho 1650

def relationLc83Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685 + (1 : F) * rho 1687 + (-1 : F) * rho 1688 + (1 : F) * rho 1691 + (-1 : F) * rho 1692

def relationLc83 (rho : Nat -> F) : F :=
    relationLc83Part0 rho +
    relationLc83Part1 rho +
    relationLc83Part2 rho +
    relationLc83Part3 rho +
    relationLc83Part4 rho +
    relationLc83Part5 rho

def relationRow2202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1695) * (relationLc83 rho) = ((1 : F) * rho 1696)

def relationRow2203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1694) * ((1 : F) * rho 1044) = ((1 : F) * rho 1697)

def relationRow2204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1697) * ((1 : F) + (-1 : F) * rho 1043) = ((1 : F) * rho 1698)

def relationLc84Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc84Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc84Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc84Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc84Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645 + (1 : F) * rho 1647 + (-1 : F) * rho 1648 + (1 : F) * rho 1650

def relationLc84Part5 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1651 + (1 : F) * rho 1655 + (-1 : F) * rho 1656 + (1 : F) * rho 1661 + (-1 : F) * rho 1662 + (1 : F) * rho 1665 + (-1 : F) * rho 1666 + (1 : F) * rho 1669 + (-1 : F) * rho 1670 + (1 : F) * rho 1672 + (-1 : F) * rho 1673 + (1 : F) * rho 1675 + (-1 : F) * rho 1676 + (1 : F) * rho 1678 + (-1 : F) * rho 1679 + (1 : F) * rho 1681 + (-1 : F) * rho 1682 + (1 : F) * rho 1684 + (-1 : F) * rho 1685 + (1 : F) * rho 1687 + (-1 : F) * rho 1688 + (1 : F) * rho 1691 + (-1 : F) * rho 1692 + (1 : F) * rho 1695 + (-1 : F) * rho 1696

def relationLc84 (rho : Nat -> F) : F :=
    relationLc84Part0 rho +
    relationLc84Part1 rho +
    relationLc84Part2 rho +
    relationLc84Part3 rho +
    relationLc84Part4 rho +
    relationLc84Part5 rho

def relationRow2205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1698) * (relationLc84 rho) = ((1 : F) * rho 1699)

def relationRow2206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1697) * ((1 : F) * rho 1043) = ((1 : F) * rho 1700)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
