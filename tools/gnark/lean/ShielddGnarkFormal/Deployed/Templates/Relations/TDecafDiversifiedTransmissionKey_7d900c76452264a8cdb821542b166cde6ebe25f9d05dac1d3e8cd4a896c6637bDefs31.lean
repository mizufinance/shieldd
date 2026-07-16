import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDefs30

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b

variable {F : Type} [CommRing F]

def relationLc20Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435

def relationLc20 (rho : Nat -> F) : F :=
    relationLc20Part0 rho +
    relationLc20Part1 rho

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1438) * (relationLc20 rho) = ((1 : F) * rho 1439)

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1437) * ((1 : F) * rho 1175) = ((1 : F) * rho 1440)

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1440) * ((1 : F) + (-1 : F) * rho 1174) = ((1 : F) * rho 1441)

def relationLc21Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc21Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439

def relationLc21 (rho : Nat -> F) : F :=
    relationLc21Part0 rho +
    relationLc21Part1 rho

def relationRow1948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1441) * (relationLc21 rho) = ((1 : F) * rho 1442)

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1440) * ((1 : F) * rho 1174) = ((1 : F) * rho 1443)

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1443) * ((1 : F) + (-1 : F) * rho 1173) = ((1 : F) * rho 1444)

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1444) * ((1 : F) + (-1 : F) * rho 1172) = ((1 : F) * rho 1445)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1445) * ((1 : F) + (-1 : F) * rho 1171) = ((1 : F) * rho 1446)

def relationLc22Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc22Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442

def relationLc22 (rho : Nat -> F) : F :=
    relationLc22Part0 rho +
    relationLc22Part1 rho

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1446) * (relationLc22 rho) = ((1 : F) * rho 1447)

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1445) * ((1 : F) * rho 1171) = ((1 : F) * rho 1448)

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1448) * ((1 : F) + (-1 : F) * rho 1170) = ((1 : F) * rho 1449)

def relationLc23Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc23Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447

def relationLc23 (rho : Nat -> F) : F :=
    relationLc23Part0 rho +
    relationLc23Part1 rho

def relationRow1956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1449) * (relationLc23 rho) = ((1 : F) * rho 1450)

def relationRow1957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1448) * ((1 : F) * rho 1170) = ((1 : F) * rho 1451)

def relationRow1958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1451) * ((1 : F) + (-1 : F) * rho 1169) = ((1 : F) * rho 1452)

def relationRow1959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1452) * ((1 : F) + (-1 : F) * rho 1168) = ((1 : F) * rho 1453)

def relationRow1960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1453) * ((1 : F) + (-1 : F) * rho 1167) = ((1 : F) * rho 1454)

def relationRow1961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1454) * ((1 : F) + (-1 : F) * rho 1166) = ((1 : F) * rho 1455)

def relationRow1962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1455) * ((1 : F) + (-1 : F) * rho 1165) = ((1 : F) * rho 1456)

def relationRow1963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1456) * ((1 : F) + (-1 : F) * rho 1164) = ((1 : F) * rho 1457)

def relationLc24Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc24Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc24Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450

def relationLc24 (rho : Nat -> F) : F :=
    relationLc24Part0 rho +
    relationLc24Part1 rho +
    relationLc24Part2 rho

def relationRow1964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1457) * (relationLc24 rho) = ((1 : F) * rho 1458)

def relationRow1965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1456) * ((1 : F) * rho 1164) = ((1 : F) * rho 1459)

def relationRow1966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1459) * ((1 : F) + (-1 : F) * rho 1163) = ((1 : F) * rho 1460)

def relationRow1967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1460) * ((1 : F) + (-1 : F) * rho 1162) = ((1 : F) * rho 1461)

def relationLc25Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc25Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc25Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458

def relationLc25 (rho : Nat -> F) : F :=
    relationLc25Part0 rho +
    relationLc25Part1 rho +
    relationLc25Part2 rho

def relationRow1968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1461) * (relationLc25 rho) = ((1 : F) * rho 1462)

def relationRow1969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1460) * ((1 : F) * rho 1162) = ((1 : F) * rho 1463)

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1463) * ((1 : F) + (-1 : F) * rho 1161) = ((1 : F) * rho 1464)

def relationLc26Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc26Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc26Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462

def relationLc26 (rho : Nat -> F) : F :=
    relationLc26Part0 rho +
    relationLc26Part1 rho +
    relationLc26Part2 rho

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1464) * (relationLc26 rho) = ((1 : F) * rho 1465)

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1463) * ((1 : F) * rho 1161) = ((1 : F) * rho 1466)

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1466) * ((1 : F) + (-1 : F) * rho 1160) = ((1 : F) * rho 1467)

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1467) * ((1 : F) + (-1 : F) * rho 1159) = ((1 : F) * rho 1468)

def relationLc27Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 1323 + (1 : F) * rho 1327 + (-1 : F) * rho 1328 + (1 : F) * rho 1331 + (-1 : F) * rho 1332 + (1 : F) * rho 1335 + (-1 : F) * rho 1336 + (1 : F) * rho 1339 + (-1 : F) * rho 1340 + (1 : F) * rho 1343 + (-1 : F) * rho 1344 + (1 : F) * rho 1346 + (-1 : F) * rho 1347 + (1 : F) * rho 1350 + (-1 : F) * rho 1351 + (1 : F) * rho 1353 + (-1 : F) * rho 1354 + (1 : F) * rho 1358 + (-1 : F) * rho 1359 + (1 : F) * rho 1362 + (-1 : F) * rho 1363 + (1 : F) * rho 1366 + (-1 : F) * rho 1367 + (1 : F) * rho 1370 + (-1 : F) * rho 1371 + (1 : F) * rho 1373 + (-1 : F) * rho 1374 + (1 : F) * rho 1376 + (-1 : F) * rho 1377 + (1 : F) * rho 1379 + (-1 : F) * rho 1380 + (1 : F) * rho 1383

def relationLc27Part1 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1384 + (1 : F) * rho 1388 + (-1 : F) * rho 1389 + (1 : F) * rho 1391 + (-1 : F) * rho 1392 + (1 : F) * rho 1395 + (-1 : F) * rho 1396 + (1 : F) * rho 1401 + (-1 : F) * rho 1402 + (1 : F) * rho 1405 + (-1 : F) * rho 1406 + (1 : F) * rho 1408 + (-1 : F) * rho 1409 + (1 : F) * rho 1413 + (-1 : F) * rho 1414 + (1 : F) * rho 1417 + (-1 : F) * rho 1418 + (1 : F) * rho 1422 + (-1 : F) * rho 1423 + (1 : F) * rho 1426 + (-1 : F) * rho 1427 + (1 : F) * rho 1430 + (-1 : F) * rho 1431 + (1 : F) * rho 1434 + (-1 : F) * rho 1435 + (1 : F) * rho 1438 + (-1 : F) * rho 1439 + (1 : F) * rho 1441 + (-1 : F) * rho 1442 + (1 : F) * rho 1446 + (-1 : F) * rho 1447 + (1 : F) * rho 1449

def relationLc27Part2 (rho : Nat -> F) : F :=
    (-1 : F) * rho 1450 + (1 : F) * rho 1457 + (-1 : F) * rho 1458 + (1 : F) * rho 1461 + (-1 : F) * rho 1462 + (1 : F) * rho 1464 + (-1 : F) * rho 1465

def relationLc27 (rho : Nat -> F) : F :=
    relationLc27Part0 rho +
    relationLc27Part1 rho +
    relationLc27Part2 rho

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1468) * (relationLc27 rho) = ((1 : F) * rho 1469)

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1467) * ((1 : F) * rho 1159) = ((1 : F) * rho 1470)

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1470) * ((1 : F) + (-1 : F) * rho 1158) = ((1 : F) * rho 1471)

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1471) * ((1 : F) + (-1 : F) * rho 1157) = ((1 : F) * rho 1472)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b
