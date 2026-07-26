import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs35

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc50Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc50Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc50Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565

def relationLc50 (rho : Nat -> F) : F :=
    relationLc50Part0 rho +
    relationLc50Part1 rho +
    relationLc50Part2 rho +
    relationLc50Part3 rho

def relationRow2076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1569) * (relationLc50 rho) = ((1 : F) * rho 1570)

def relationRow2077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1568) * ((1 : F) * rho 1104) = ((1 : F) * rho 1571)

def relationRow2078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1571) * ((1 : F) + (-1 : F) * rho 1103) = ((1 : F) * rho 1572)

def relationRow2079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1572) * ((1 : F) + (-1 : F) * rho 1102) = ((1 : F) * rho 1573)

def relationLc51Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc51Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc51Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc51Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570

def relationLc51 (rho : Nat -> F) : F :=
    relationLc51Part0 rho +
    relationLc51Part1 rho +
    relationLc51Part2 rho +
    relationLc51Part3 rho

def relationRow2080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1573) * (relationLc51 rho) = ((1 : F) * rho 1574)

def relationRow2081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1572) * ((1 : F) * rho 1102) = ((1 : F) * rho 1575)

def relationRow2082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1575) * ((1 : F) + (-1 : F) * rho 1101) = ((1 : F) * rho 1576)

def relationRow2083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1576) * ((1 : F) + (-1 : F) * rho 1100) = ((1 : F) * rho 1577)

def relationRow2084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1577) * ((1 : F) + (-1 : F) * rho 1099) = ((1 : F) * rho 1578)

def relationLc52Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc52Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc52Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc52Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574

def relationLc52 (rho : Nat -> F) : F :=
    relationLc52Part0 rho +
    relationLc52Part1 rho +
    relationLc52Part2 rho +
    relationLc52Part3 rho

def relationRow2085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1578) * (relationLc52 rho) = ((1 : F) * rho 1579)

def relationRow2086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1577) * ((1 : F) * rho 1099) = ((1 : F) * rho 1580)

def relationRow2087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1580) * ((1 : F) + (-1 : F) * rho 1098) = ((1 : F) * rho 1581)

def relationRow2088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1581) * ((1 : F) + (-1 : F) * rho 1097) = ((1 : F) * rho 1582)

def relationRow2089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1582) * ((1 : F) + (-1 : F) * rho 1096) = ((1 : F) * rho 1583)

def relationLc53Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc53Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc53Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc53Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579

def relationLc53 (rho : Nat -> F) : F :=
    relationLc53Part0 rho +
    relationLc53Part1 rho +
    relationLc53Part2 rho +
    relationLc53Part3 rho

def relationRow2090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1583) * (relationLc53 rho) = ((1 : F) * rho 1584)

def relationRow2091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1582) * ((1 : F) * rho 1096) = ((1 : F) * rho 1585)

def relationRow2092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1585) * ((1 : F) + (-1 : F) * rho 1095) = ((1 : F) * rho 1586)

def relationLc54Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc54Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc54Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514 + (1 : F) * rho 1516

def relationLc54Part3 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1517 + (1 : F) * rho 1523 + (-1 : F) * rho 1524 + (1 : F) * rho 1526 + (-1 : F) * rho 1527 + (1 : F) * rho 1530 + (-1 : F) * rho 1531 + (1 : F) * rho 1533 + (-1 : F) * rho 1534 + (1 : F) * rho 1536 + (-1 : F) * rho 1537 + (1 : F) * rho 1539 + (-1 : F) * rho 1540 + (1 : F) * rho 1543 + (-1 : F) * rho 1544 + (1 : F) * rho 1546 + (-1 : F) * rho 1547 + (1 : F) * rho 1560 + (-1 : F) * rho 1561 + (1 : F) * rho 1564 + (-1 : F) * rho 1565 + (1 : F) * rho 1569 + (-1 : F) * rho 1570 + (1 : F) * rho 1573 + (-1 : F) * rho 1574 + (1 : F) * rho 1578 + (-1 : F) * rho 1579 + (1 : F) * rho 1583 + (-1 : F) * rho 1584

def relationLc54 (rho : Nat -> F) : F :=
    relationLc54Part0 rho +
    relationLc54Part1 rho +
    relationLc54Part2 rho +
    relationLc54Part3 rho

def relationRow2093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1586) * (relationLc54 rho) = ((1 : F) * rho 1587)

def relationRow2094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1585) * ((1 : F) * rho 1095) = ((1 : F) * rho 1588)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
