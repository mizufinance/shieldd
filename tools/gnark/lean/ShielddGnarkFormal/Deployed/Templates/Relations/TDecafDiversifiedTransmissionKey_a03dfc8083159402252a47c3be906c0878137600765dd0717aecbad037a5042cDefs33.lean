import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDefs32

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c

variable {F : Type} [CommRing F]

def relationLc34Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc34Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496

def relationLc34 (rho : Nat -> F) : F :=
    relationLc34Part0 rho +
    relationLc34Part1 rho +
    relationLc34Part2 rho

def relationRow2005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1498) * (relationLc34 rho) = ((1 : F) * rho 1499)

def relationRow2006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1497) * ((1 : F) * rho 1143) = ((1 : F) * rho 1500)

def relationRow2007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1500) * ((1 : F) + (-1 : F) * rho 1142) = ((1 : F) * rho 1501)

def relationLc35Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc35Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc35Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499

def relationLc35 (rho : Nat -> F) : F :=
    relationLc35Part0 rho +
    relationLc35Part1 rho +
    relationLc35Part2 rho

def relationRow2008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1501) * (relationLc35 rho) = ((1 : F) * rho 1502)

def relationRow2009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1500) * ((1 : F) * rho 1142) = ((1 : F) * rho 1503)

def relationRow2010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1503) * ((1 : F) + (-1 : F) * rho 1141) = ((1 : F) * rho 1504)

def relationRow2011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1504) * ((1 : F) + (-1 : F) * rho 1140) = ((1 : F) * rho 1505)

def relationRow2012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1505) * ((1 : F) + (-1 : F) * rho 1139) = ((1 : F) * rho 1506)

def relationLc36Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc36Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc36Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502

def relationLc36 (rho : Nat -> F) : F :=
    relationLc36Part0 rho +
    relationLc36Part1 rho +
    relationLc36Part2 rho

def relationRow2013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1506) * (relationLc36 rho) = ((1 : F) * rho 1507)

def relationRow2014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1505) * ((1 : F) * rho 1139) = ((1 : F) * rho 1508)

def relationRow2015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1508) * ((1 : F) + (-1 : F) * rho 1138) = ((1 : F) * rho 1509)

def relationRow2016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1509) * ((1 : F) + (-1 : F) * rho 1137) = ((1 : F) * rho 1510)

def relationLc37Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc37Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc37Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507

def relationLc37 (rho : Nat -> F) : F :=
    relationLc37Part0 rho +
    relationLc37Part1 rho +
    relationLc37Part2 rho

def relationRow2017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1510) * (relationLc37 rho) = ((1 : F) * rho 1511)

def relationRow2018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1509) * ((1 : F) * rho 1137) = ((1 : F) * rho 1512)

def relationRow2019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1512) * ((1 : F) + (-1 : F) * rho 1136) = ((1 : F) * rho 1513)

def relationLc38Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc38Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc38Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511

def relationLc38 (rho : Nat -> F) : F :=
    relationLc38Part0 rho +
    relationLc38Part1 rho +
    relationLc38Part2 rho

def relationRow2020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1513) * (relationLc38 rho) = ((1 : F) * rho 1514)

def relationRow2021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1512) * ((1 : F) * rho 1136) = ((1 : F) * rho 1515)

def relationRow2022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1515) * ((1 : F) + (-1 : F) * rho 1135) = ((1 : F) * rho 1516)

def relationLc39Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc39Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc39Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465 + (1 : F) * rho 1468 + (-1 : F) * rho 1469 + (1 : F) * rho 1474 + (-1 : F) * rho 1475 + (1 : F) * rho 1479 + (-1 : F) * rho 1480 + (1 : F) * rho 1482 + (-1 : F) * rho 1483 + (1 : F) * rho 1486 + (-1 : F) * rho 1487 + (1 : F) * rho 1492 + (-1 : F) * rho 1493 + (1 : F) * rho 1495 + (-1 : F) * rho 1496 + (1 : F) * rho 1498 + (-1 : F) * rho 1499 + (1 : F) * rho 1501 + (-1 : F) * rho 1502 + (1 : F) * rho 1506 + (-1 : F) * rho 1507 + (1 : F) * rho 1510 + (-1 : F) * rho 1511 + (1 : F) * rho 1513 + (-1 : F) * rho 1514

def relationLc39 (rho : Nat -> F) : F :=
    relationLc39Part0 rho +
    relationLc39Part1 rho +
    relationLc39Part2 rho

def relationRow2023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1516) * (relationLc39 rho) = ((1 : F) * rho 1517)

def relationRow2024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1515) * ((1 : F) * rho 1135) = ((1 : F) * rho 1518)

def relationRow2025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1518) * ((1 : F) + (-1 : F) * rho 1134) = ((1 : F) * rho 1519)

def relationRow2026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1519) * ((1 : F) + (-1 : F) * rho 1133) = ((1 : F) * rho 1520)

def relationRow2027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1520) * ((1 : F) + (-1 : F) * rho 1132) = ((1 : F) * rho 1521)

def relationRow2028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1521) * ((1 : F) + (-1 : F) * rho 1131) = ((1 : F) * rho 1522)

def relationRow2029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1522) * ((1 : F) + (-1 : F) * rho 1130) = ((1 : F) * rho 1523)

def relationLc40Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c
