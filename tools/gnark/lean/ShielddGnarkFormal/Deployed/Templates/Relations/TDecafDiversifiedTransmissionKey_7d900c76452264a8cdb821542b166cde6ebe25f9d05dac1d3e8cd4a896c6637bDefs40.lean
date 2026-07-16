import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs39

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc67Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc67Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc67Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629

def relationLc67 (rho : Nat -> F) : F :=
    relationLc67Part0 rho +
    relationLc67Part1 rho +
    relationLc67Part2 rho +
    relationLc67Part3 rho +
    relationLc67Part4 rho

def relationRow2141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1634) * (relationLc67 rho) = ((1 : F) * rho 1635)

def relationRow2142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1633) * ((1 : F) * rho 1073) = ((1 : F) * rho 1636)

def relationRow2143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1636) * ((1 : F) + (-1 : F) * rho 1072) = ((1 : F) * rho 1637)

def relationRow2144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1637) * ((1 : F) + (-1 : F) * rho 1071) = ((1 : F) * rho 1638)

def relationRow2145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1638) * ((1 : F) + (-1 : F) * rho 1070) = ((1 : F) * rho 1639)

def relationRow2146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1639) * ((1 : F) + (-1 : F) * rho 1069) = ((1 : F) * rho 1640)

def relationRow2147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1640) * ((1 : F) + (-1 : F) * rho 1068) = ((1 : F) * rho 1641)

def relationLc68Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc68Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc68Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc68Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc68Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635

def relationLc68 (rho : Nat -> F) : F :=
    relationLc68Part0 rho +
    relationLc68Part1 rho +
    relationLc68Part2 rho +
    relationLc68Part3 rho +
    relationLc68Part4 rho

def relationRow2148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1641) * (relationLc68 rho) = ((1 : F) * rho 1642)

def relationRow2149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1640) * ((1 : F) * rho 1068) = ((1 : F) * rho 1643)

def relationRow2150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1643) * ((1 : F) + (-1 : F) * rho 1067) = ((1 : F) * rho 1644)

def relationLc69Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc69Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc69Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc69Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc69Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642

def relationLc69 (rho : Nat -> F) : F :=
    relationLc69Part0 rho +
    relationLc69Part1 rho +
    relationLc69Part2 rho +
    relationLc69Part3 rho +
    relationLc69Part4 rho

def relationRow2151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1644) * (relationLc69 rho) = ((1 : F) * rho 1645)

def relationRow2152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1643) * ((1 : F) * rho 1067) = ((1 : F) * rho 1646)

def relationRow2153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1646) * ((1 : F) + (-1 : F) * rho 1066) = ((1 : F) * rho 1647)

def relationLc70Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc70Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc70Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc70Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584 + (1 : F) * rho 1586 + (-1 : F) * rho 1587 + (1 : F) * rho 1589

def relationLc70Part4 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1590 + (1 : F) * rho 1593 + (-1 : F) * rho 1594 + (1 : F) * rho 1599 + (-1 : F) * rho 1600 + (1 : F) * rho 1602 + (-1 : F) * rho 1603 + (1 : F) * rho 1605 + (-1 : F) * rho 1606 + (1 : F) * rho 1609 + (-1 : F) * rho 1610 + (1 : F) * rho 1613 + (-1 : F) * rho 1614 + (1 : F) * rho 1616 + (-1 : F) * rho 1617 + (1 : F) * rho 1619 + (-1 : F) * rho 1620 + (1 : F) * rho 1622 + (-1 : F) * rho 1623 + (1 : F) * rho 1625 + (-1 : F) * rho 1626 + (1 : F) * rho 1628 + (-1 : F) * rho 1629 + (1 : F) * rho 1634 + (-1 : F) * rho 1635 + (1 : F) * rho 1641 + (-1 : F) * rho 1642 + (1 : F) * rho 1644 + (-1 : F) * rho 1645

def relationLc70 (rho : Nat -> F) : F :=
    relationLc70Part0 rho +
    relationLc70Part1 rho +
    relationLc70Part2 rho +
    relationLc70Part3 rho +
    relationLc70Part4 rho

def relationRow2154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1647) * (relationLc70 rho) = ((1 : F) * rho 1648)

def relationRow2155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1646) * ((1 : F) * rho 1066) = ((1 : F) * rho 1649)

def relationRow2156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1649) * ((1 : F) + (-1 : F) * rho 1065) = ((1 : F) * rho 1650)

def relationLc71Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
