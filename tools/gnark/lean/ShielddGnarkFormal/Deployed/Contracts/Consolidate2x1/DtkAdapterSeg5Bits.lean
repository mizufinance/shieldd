import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Ivk_toBinary (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    GatesDef.to_binary (rho 9) 253 (seg5IvkBits rho) := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, p17, p18, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Seg5.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379, r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Seg5.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Seg5.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow1322 at r1322
  unfold Seg5.relationRow1323 at r1323
  unfold Seg5.relationRow1324 at r1324
  unfold Seg5.relationRow1325 at r1325
  unfold Seg5.relationRow1326 at r1326
  unfold Seg5.relationRow1327 at r1327
  unfold Seg5.relationRow1328 at r1328
  unfold Seg5.relationRow1329 at r1329
  unfold Seg5.relationRow1330 at r1330
  unfold Seg5.relationRow1331 at r1331
  unfold Seg5.relationRow1332 at r1332
  unfold Seg5.relationRow1333 at r1333
  unfold Seg5.relationRow1334 at r1334
  unfold Seg5.relationRow1335 at r1335
  unfold Seg5.relationRow1336 at r1336
  unfold Seg5.relationRow1337 at r1337
  unfold Seg5.relationRow1338 at r1338
  unfold Seg5.relationRow1339 at r1339
  unfold Seg5.relationRow1340 at r1340
  unfold Seg5.relationRow1341 at r1341
  unfold Seg5.relationRow1342 at r1342
  unfold Seg5.relationRow1343 at r1343
  unfold Seg5.relationRow1344 at r1344
  unfold Seg5.relationRow1345 at r1345
  unfold Seg5.relationRow1346 at r1346
  unfold Seg5.relationRow1347 at r1347
  unfold Seg5.relationRow1348 at r1348
  unfold Seg5.relationRow1349 at r1349
  unfold Seg5.relationRow1350 at r1350
  unfold Seg5.relationRow1351 at r1351
  unfold Seg5.relationRow1352 at r1352
  unfold Seg5.relationRow1353 at r1353
  unfold Seg5.relationRow1354 at r1354
  unfold Seg5.relationRow1355 at r1355
  unfold Seg5.relationRow1356 at r1356
  unfold Seg5.relationRow1357 at r1357
  unfold Seg5.relationRow1358 at r1358
  unfold Seg5.relationRow1359 at r1359
  unfold Seg5.relationRow1360 at r1360
  unfold Seg5.relationRow1361 at r1361
  unfold Seg5.relationRow1362 at r1362
  unfold Seg5.relationRow1363 at r1363
  unfold Seg5.relationRow1364 at r1364
  unfold Seg5.relationRow1365 at r1365
  unfold Seg5.relationRow1366 at r1366
  unfold Seg5.relationRow1367 at r1367
  unfold Seg5.relationRow1368 at r1368
  unfold Seg5.relationRow1369 at r1369
  unfold Seg5.relationRow1370 at r1370
  unfold Seg5.relationRow1371 at r1371
  unfold Seg5.relationRow1372 at r1372
  unfold Seg5.relationRow1373 at r1373
  unfold Seg5.relationRow1374 at r1374
  unfold Seg5.relationRow1375 at r1375
  unfold Seg5.relationRow1376 at r1376
  unfold Seg5.relationRow1377 at r1377
  unfold Seg5.relationRow1378 at r1378
  unfold Seg5.relationRow1379 at r1379
  unfold Seg5.relationRow1380 at r1380
  unfold Seg5.relationRow1381 at r1381
  unfold Seg5.relationRow1382 at r1382
  unfold Seg5.relationRow1383 at r1383
  unfold Seg5.relationRow1384 at r1384
  unfold Seg5.relationRow1385 at r1385
  unfold Seg5.relationRow1386 at r1386
  unfold Seg5.relationRow1387 at r1387
  unfold Seg5.relationRow1388 at r1388
  unfold Seg5.relationRow1389 at r1389
  unfold Seg5.relationRow1390 at r1390
  unfold Seg5.relationRow1391 at r1391
  unfold Seg5.relationRow1392 at r1392
  unfold Seg5.relationRow1393 at r1393
  unfold Seg5.relationRow1394 at r1394
  unfold Seg5.relationRow1395 at r1395
  unfold Seg5.relationRow1396 at r1396
  unfold Seg5.relationRow1397 at r1397
  unfold Seg5.relationRow1398 at r1398
  unfold Seg5.relationRow1399 at r1399
  unfold Seg5.relationRow1400 at r1400
  unfold Seg5.relationRow1401 at r1401
  unfold Seg5.relationRow1402 at r1402
  unfold Seg5.relationRow1403 at r1403
  unfold Seg5.relationRow1404 at r1404
  unfold Seg5.relationRow1405 at r1405
  unfold Seg5.relationRow1406 at r1406
  unfold Seg5.relationRow1407 at r1407
  unfold Seg5.relationRow1408 at r1408
  unfold Seg5.relationRow1409 at r1409
  unfold Seg5.relationRow1410 at r1410
  unfold Seg5.relationRow1411 at r1411
  unfold Seg5.relationRow1412 at r1412
  unfold Seg5.relationRow1413 at r1413
  unfold Seg5.relationRow1414 at r1414
  unfold Seg5.relationRow1415 at r1415
  unfold Seg5.relationRow1416 at r1416
  unfold Seg5.relationRow1417 at r1417
  unfold Seg5.relationRow1418 at r1418
  unfold Seg5.relationRow1419 at r1419
  unfold Seg5.relationRow1420 at r1420
  unfold Seg5.relationRow1421 at r1421
  unfold Seg5.relationRow1422 at r1422
  unfold Seg5.relationRow1423 at r1423
  unfold Seg5.relationRow1424 at r1424
  unfold Seg5.relationRow1425 at r1425
  unfold Seg5.relationRow1426 at r1426
  unfold Seg5.relationRow1427 at r1427
  unfold Seg5.relationRow1428 at r1428
  unfold Seg5.relationRow1429 at r1429
  unfold Seg5.relationRow1430 at r1430
  unfold Seg5.relationRow1431 at r1431
  unfold Seg5.relationRow1432 at r1432
  unfold Seg5.relationRow1433 at r1433
  unfold Seg5.relationRow1434 at r1434
  unfold Seg5.relationRow1435 at r1435
  unfold Seg5.relationRow1436 at r1436
  unfold Seg5.relationRow1437 at r1437
  unfold Seg5.relationRow1438 at r1438
  unfold Seg5.relationRow1439 at r1439
  unfold Seg5.relationRow1440 at r1440
  unfold Seg5.relationRow1441 at r1441
  unfold Seg5.relationRow1442 at r1442
  unfold Seg5.relationRow1443 at r1443
  unfold Seg5.relationRow1444 at r1444
  unfold Seg5.relationRow1445 at r1445
  unfold Seg5.relationRow1446 at r1446
  unfold Seg5.relationRow1447 at r1447
  unfold Seg5.relationRow1448 at r1448
  unfold Seg5.relationRow1449 at r1449
  unfold Seg5.relationRow1450 at r1450
  unfold Seg5.relationRow1451 at r1451
  unfold Seg5.relationRow1452 at r1452
  unfold Seg5.relationRow1453 at r1453
  unfold Seg5.relationRow1454 at r1454
  unfold Seg5.relationRow1455 at r1455
  unfold Seg5.relationRow1456 at r1456
  unfold Seg5.relationRow1457 at r1457
  unfold Seg5.relationRow1458 at r1458
  unfold Seg5.relationRow1459 at r1459
  unfold Seg5.relationRow1460 at r1460
  unfold Seg5.relationRow1461 at r1461
  unfold Seg5.relationRow1462 at r1462
  unfold Seg5.relationRow1463 at r1463
  unfold Seg5.relationRow1464 at r1464
  unfold Seg5.relationRow1465 at r1465
  unfold Seg5.relationRow1466 at r1466
  unfold Seg5.relationRow1467 at r1467
  unfold Seg5.relationRow1468 at r1468
  unfold Seg5.relationRow1469 at r1469
  unfold Seg5.relationRow1470 at r1470
  unfold Seg5.relationRow1471 at r1471
  unfold Seg5.relationRow1472 at r1472
  unfold Seg5.relationRow1473 at r1473
  unfold Seg5.relationRow1474 at r1474
  unfold Seg5.relationRow1475 at r1475
  unfold Seg5.relationRow1476 at r1476
  unfold Seg5.relationRow1477 at r1477
  unfold Seg5.relationRow1478 at r1478
  unfold Seg5.relationRow1479 at r1479
  unfold Seg5.relationRow1480 at r1480
  unfold Seg5.relationRow1481 at r1481
  unfold Seg5.relationRow1482 at r1482
  unfold Seg5.relationRow1483 at r1483
  unfold Seg5.relationRow1484 at r1484
  unfold Seg5.relationRow1485 at r1485
  unfold Seg5.relationRow1486 at r1486
  unfold Seg5.relationRow1487 at r1487
  unfold Seg5.relationRow1488 at r1488
  unfold Seg5.relationRow1489 at r1489
  unfold Seg5.relationRow1490 at r1490
  unfold Seg5.relationRow1491 at r1491
  unfold Seg5.relationRow1492 at r1492
  unfold Seg5.relationRow1493 at r1493
  unfold Seg5.relationRow1494 at r1494
  unfold Seg5.relationRow1495 at r1495
  unfold Seg5.relationRow1496 at r1496
  unfold Seg5.relationRow1497 at r1497
  unfold Seg5.relationRow1498 at r1498
  unfold Seg5.relationRow1499 at r1499
  unfold Seg5.relationRow1500 at r1500
  unfold Seg5.relationRow1501 at r1501
  unfold Seg5.relationRow1502 at r1502
  unfold Seg5.relationRow1503 at r1503
  unfold Seg5.relationRow1504 at r1504
  unfold Seg5.relationRow1505 at r1505
  unfold Seg5.relationRow1506 at r1506
  unfold Seg5.relationRow1507 at r1507
  unfold Seg5.relationRow1508 at r1508
  unfold Seg5.relationRow1509 at r1509
  unfold Seg5.relationRow1510 at r1510
  unfold Seg5.relationRow1511 at r1511
  unfold Seg5.relationRow1512 at r1512
  unfold Seg5.relationRow1513 at r1513
  unfold Seg5.relationRow1514 at r1514
  unfold Seg5.relationRow1515 at r1515
  unfold Seg5.relationRow1516 at r1516
  unfold Seg5.relationRow1517 at r1517
  unfold Seg5.relationRow1518 at r1518
  unfold Seg5.relationRow1519 at r1519
  unfold Seg5.relationRow1520 at r1520
  unfold Seg5.relationRow1521 at r1521
  unfold Seg5.relationRow1522 at r1522
  unfold Seg5.relationRow1523 at r1523
  unfold Seg5.relationRow1524 at r1524
  unfold Seg5.relationRow1525 at r1525
  unfold Seg5.relationRow1526 at r1526
  unfold Seg5.relationRow1527 at r1527
  unfold Seg5.relationRow1528 at r1528
  unfold Seg5.relationRow1529 at r1529
  unfold Seg5.relationRow1530 at r1530
  unfold Seg5.relationRow1531 at r1531
  unfold Seg5.relationRow1532 at r1532
  unfold Seg5.relationRow1533 at r1533
  unfold Seg5.relationRow1534 at r1534
  unfold Seg5.relationRow1535 at r1535
  unfold Seg5.relationRow1536 at r1536
  unfold Seg5.relationRow1537 at r1537
  unfold Seg5.relationRow1538 at r1538
  unfold Seg5.relationRow1539 at r1539
  unfold Seg5.relationRow1540 at r1540
  unfold Seg5.relationRow1541 at r1541
  unfold Seg5.relationRow1542 at r1542
  unfold Seg5.relationRow1543 at r1543
  unfold Seg5.relationRow1544 at r1544
  unfold Seg5.relationRow1545 at r1545
  unfold Seg5.relationRow1546 at r1546
  unfold Seg5.relationRow1547 at r1547
  unfold Seg5.relationRow1548 at r1548
  unfold Seg5.relationRow1549 at r1549
  unfold Seg5.relationRow1550 at r1550
  unfold Seg5.relationRow1551 at r1551
  unfold Seg5.relationRow1552 at r1552
  unfold Seg5.relationRow1553 at r1553
  unfold Seg5.relationRow1554 at r1554
  unfold Seg5.relationRow1555 at r1555
  unfold Seg5.relationRow1556 at r1556
  unfold Seg5.relationRow1557 at r1557
  unfold Seg5.relationRow1558 at r1558
  unfold Seg5.relationRow1559 at r1559
  unfold Seg5.relationRow1560 at r1560
  unfold Seg5.relationRow1561 at r1561
  unfold Seg5.relationRow1562 at r1562
  unfold Seg5.relationRow1563 at r1563
  unfold Seg5.relationRow1564 at r1564
  unfold Seg5.relationRow1565 at r1565
  unfold Seg5.relationRow1566 at r1566
  unfold Seg5.relationRow1567 at r1567
  unfold Seg5.relationRow1568 at r1568
  unfold Seg5.relationRow1569 at r1569
  unfold Seg5.relationRow1570 at r1570
  unfold Seg5.relationRow1571 at r1571
  unfold Seg5.relationRow1572 at r1572
  unfold Seg5.relationRow1573 at r1573
  unfold Seg5.relationRow1574 at r1574
  have hrecover := recover_ofFn_eq_recBits rho 1187 253
  have hacc : powSumAcc rho 0 1 1187 253 = rho 9 := by
    unfold Seg5.relationRow1575 Seg5.relationLc17 Seg5.relationLc17Part0 Seg5.relationLc17Part1 Seg5.relationLc17Part2 Seg5.relationLc17Part3 Seg5.relationLc17Part4 Seg5.relationLc17Part5 Seg5.relationLc17Part6 Seg5.relationLc17Part7 at r1575
    simp only [powSumAcc]
    linear_combination r1575
  have hrec : recover_binary_zmod' (seg5IvkBits rho) = rho 9 := by
    simp only [seg5IvkBits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 9) (seg5IvkBits rho)
  · intro i hi
    have key : (seg5IvkBits rho)[i] = rho (1187 + i) := by
      conv_lhs => rw [List.Vector.getElem_def]
      simp only [seg5IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]
    have hgoal : rho (1187 + i) * (1 - rho (1187 + i)) = 0 := by
      interval_cases i
      · linear_combination r1322
      · linear_combination r1323
      · linear_combination r1324
      · linear_combination r1325
      · linear_combination r1326
      · linear_combination r1327
      · linear_combination r1328
      · linear_combination r1329
      · linear_combination r1330
      · linear_combination r1331
      · linear_combination r1332
      · linear_combination r1333
      · linear_combination r1334
      · linear_combination r1335
      · linear_combination r1336
      · linear_combination r1337
      · linear_combination r1338
      · linear_combination r1339
      · linear_combination r1340
      · linear_combination r1341
      · linear_combination r1342
      · linear_combination r1343
      · linear_combination r1344
      · linear_combination r1345
      · linear_combination r1346
      · linear_combination r1347
      · linear_combination r1348
      · linear_combination r1349
      · linear_combination r1350
      · linear_combination r1351
      · linear_combination r1352
      · linear_combination r1353
      · linear_combination r1354
      · linear_combination r1355
      · linear_combination r1356
      · linear_combination r1357
      · linear_combination r1358
      · linear_combination r1359
      · linear_combination r1360
      · linear_combination r1361
      · linear_combination r1362
      · linear_combination r1363
      · linear_combination r1364
      · linear_combination r1365
      · linear_combination r1366
      · linear_combination r1367
      · linear_combination r1368
      · linear_combination r1369
      · linear_combination r1370
      · linear_combination r1371
      · linear_combination r1372
      · linear_combination r1373
      · linear_combination r1374
      · linear_combination r1375
      · linear_combination r1376
      · linear_combination r1377
      · linear_combination r1378
      · linear_combination r1379
      · linear_combination r1380
      · linear_combination r1381
      · linear_combination r1382
      · linear_combination r1383
      · linear_combination r1384
      · linear_combination r1385
      · linear_combination r1386
      · linear_combination r1387
      · linear_combination r1388
      · linear_combination r1389
      · linear_combination r1390
      · linear_combination r1391
      · linear_combination r1392
      · linear_combination r1393
      · linear_combination r1394
      · linear_combination r1395
      · linear_combination r1396
      · linear_combination r1397
      · linear_combination r1398
      · linear_combination r1399
      · linear_combination r1400
      · linear_combination r1401
      · linear_combination r1402
      · linear_combination r1403
      · linear_combination r1404
      · linear_combination r1405
      · linear_combination r1406
      · linear_combination r1407
      · linear_combination r1408
      · linear_combination r1409
      · linear_combination r1410
      · linear_combination r1411
      · linear_combination r1412
      · linear_combination r1413
      · linear_combination r1414
      · linear_combination r1415
      · linear_combination r1416
      · linear_combination r1417
      · linear_combination r1418
      · linear_combination r1419
      · linear_combination r1420
      · linear_combination r1421
      · linear_combination r1422
      · linear_combination r1423
      · linear_combination r1424
      · linear_combination r1425
      · linear_combination r1426
      · linear_combination r1427
      · linear_combination r1428
      · linear_combination r1429
      · linear_combination r1430
      · linear_combination r1431
      · linear_combination r1432
      · linear_combination r1433
      · linear_combination r1434
      · linear_combination r1435
      · linear_combination r1436
      · linear_combination r1437
      · linear_combination r1438
      · linear_combination r1439
      · linear_combination r1440
      · linear_combination r1441
      · linear_combination r1442
      · linear_combination r1443
      · linear_combination r1444
      · linear_combination r1445
      · linear_combination r1446
      · linear_combination r1447
      · linear_combination r1448
      · linear_combination r1449
      · linear_combination r1450
      · linear_combination r1451
      · linear_combination r1452
      · linear_combination r1453
      · linear_combination r1454
      · linear_combination r1455
      · linear_combination r1456
      · linear_combination r1457
      · linear_combination r1458
      · linear_combination r1459
      · linear_combination r1460
      · linear_combination r1461
      · linear_combination r1462
      · linear_combination r1463
      · linear_combination r1464
      · linear_combination r1465
      · linear_combination r1466
      · linear_combination r1467
      · linear_combination r1468
      · linear_combination r1469
      · linear_combination r1470
      · linear_combination r1471
      · linear_combination r1472
      · linear_combination r1473
      · linear_combination r1474
      · linear_combination r1475
      · linear_combination r1476
      · linear_combination r1477
      · linear_combination r1478
      · linear_combination r1479
      · linear_combination r1480
      · linear_combination r1481
      · linear_combination r1482
      · linear_combination r1483
      · linear_combination r1484
      · linear_combination r1485
      · linear_combination r1486
      · linear_combination r1487
      · linear_combination r1488
      · linear_combination r1489
      · linear_combination r1490
      · linear_combination r1491
      · linear_combination r1492
      · linear_combination r1493
      · linear_combination r1494
      · linear_combination r1495
      · linear_combination r1496
      · linear_combination r1497
      · linear_combination r1498
      · linear_combination r1499
      · linear_combination r1500
      · linear_combination r1501
      · linear_combination r1502
      · linear_combination r1503
      · linear_combination r1504
      · linear_combination r1505
      · linear_combination r1506
      · linear_combination r1507
      · linear_combination r1508
      · linear_combination r1509
      · linear_combination r1510
      · linear_combination r1511
      · linear_combination r1512
      · linear_combination r1513
      · linear_combination r1514
      · linear_combination r1515
      · linear_combination r1516
      · linear_combination r1517
      · linear_combination r1518
      · linear_combination r1519
      · linear_combination r1520
      · linear_combination r1521
      · linear_combination r1522
      · linear_combination r1523
      · linear_combination r1524
      · linear_combination r1525
      · linear_combination r1526
      · linear_combination r1527
      · linear_combination r1528
      · linear_combination r1529
      · linear_combination r1530
      · linear_combination r1531
      · linear_combination r1532
      · linear_combination r1533
      · linear_combination r1534
      · linear_combination r1535
      · linear_combination r1536
      · linear_combination r1537
      · linear_combination r1538
      · linear_combination r1539
      · linear_combination r1540
      · linear_combination r1541
      · linear_combination r1542
      · linear_combination r1543
      · linear_combination r1544
      · linear_combination r1545
      · linear_combination r1546
      · linear_combination r1547
      · linear_combination r1548
      · linear_combination r1549
      · linear_combination r1550
      · linear_combination r1551
      · linear_combination r1552
      · linear_combination r1553
      · linear_combination r1554
      · linear_combination r1555
      · linear_combination r1556
      · linear_combination r1557
      · linear_combination r1558
      · linear_combination r1559
      · linear_combination r1560
      · linear_combination r1561
      · linear_combination r1562
      · linear_combination r1563
      · linear_combination r1564
      · linear_combination r1565
      · linear_combination r1566
      · linear_combination r1567
      · linear_combination r1568
      · linear_combination r1569
      · linear_combination r1570
      · linear_combination r1571
      · linear_combination r1572
      · linear_combination r1573
      · linear_combination r1574
    exact key ▸ hgoal
  · exact hrec

theorem seg5Scalar_toBinary (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    GatesDef.to_binary (rho 9) 251 (seg5ScalarBits rho) := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, p34, p35, p36, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2719⟩
  unfold Seg5.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, r2752, r2753, r2754, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, r2777, r2778, r2779, r2780, r2781, r2782, r2783, r2784, r2785, r2786, r2787, r2788, r2789, r2790, r2791, r2792, r2793, r2794, r2795, r2796, r2797, r2798, r2799⟩
  unfold Seg5.relationPart35 at p35
  rcases p35 with ⟨r2800, r2801, r2802, r2803, r2804, r2805, r2806, r2807, r2808, r2809, r2810, r2811, r2812, r2813, r2814, r2815, r2816, r2817, r2818, r2819, r2820, r2821, r2822, r2823, r2824, r2825, r2826, r2827, r2828, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Seg5.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  unfold Seg5.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow2719 at r2719
  unfold Seg5.relationRow2720 at r2720
  unfold Seg5.relationRow2721 at r2721
  unfold Seg5.relationRow2722 at r2722
  unfold Seg5.relationRow2723 at r2723
  unfold Seg5.relationRow2724 at r2724
  unfold Seg5.relationRow2725 at r2725
  unfold Seg5.relationRow2726 at r2726
  unfold Seg5.relationRow2727 at r2727
  unfold Seg5.relationRow2728 at r2728
  unfold Seg5.relationRow2729 at r2729
  unfold Seg5.relationRow2730 at r2730
  unfold Seg5.relationRow2731 at r2731
  unfold Seg5.relationRow2732 at r2732
  unfold Seg5.relationRow2733 at r2733
  unfold Seg5.relationRow2734 at r2734
  unfold Seg5.relationRow2735 at r2735
  unfold Seg5.relationRow2736 at r2736
  unfold Seg5.relationRow2737 at r2737
  unfold Seg5.relationRow2738 at r2738
  unfold Seg5.relationRow2739 at r2739
  unfold Seg5.relationRow2740 at r2740
  unfold Seg5.relationRow2741 at r2741
  unfold Seg5.relationRow2742 at r2742
  unfold Seg5.relationRow2743 at r2743
  unfold Seg5.relationRow2744 at r2744
  unfold Seg5.relationRow2745 at r2745
  unfold Seg5.relationRow2746 at r2746
  unfold Seg5.relationRow2747 at r2747
  unfold Seg5.relationRow2748 at r2748
  unfold Seg5.relationRow2749 at r2749
  unfold Seg5.relationRow2750 at r2750
  unfold Seg5.relationRow2751 at r2751
  unfold Seg5.relationRow2752 at r2752
  unfold Seg5.relationRow2753 at r2753
  unfold Seg5.relationRow2754 at r2754
  unfold Seg5.relationRow2755 at r2755
  unfold Seg5.relationRow2756 at r2756
  unfold Seg5.relationRow2757 at r2757
  unfold Seg5.relationRow2758 at r2758
  unfold Seg5.relationRow2759 at r2759
  unfold Seg5.relationRow2760 at r2760
  unfold Seg5.relationRow2761 at r2761
  unfold Seg5.relationRow2762 at r2762
  unfold Seg5.relationRow2763 at r2763
  unfold Seg5.relationRow2764 at r2764
  unfold Seg5.relationRow2765 at r2765
  unfold Seg5.relationRow2766 at r2766
  unfold Seg5.relationRow2767 at r2767
  unfold Seg5.relationRow2768 at r2768
  unfold Seg5.relationRow2769 at r2769
  unfold Seg5.relationRow2770 at r2770
  unfold Seg5.relationRow2771 at r2771
  unfold Seg5.relationRow2772 at r2772
  unfold Seg5.relationRow2773 at r2773
  unfold Seg5.relationRow2774 at r2774
  unfold Seg5.relationRow2775 at r2775
  unfold Seg5.relationRow2776 at r2776
  unfold Seg5.relationRow2777 at r2777
  unfold Seg5.relationRow2778 at r2778
  unfold Seg5.relationRow2779 at r2779
  unfold Seg5.relationRow2780 at r2780
  unfold Seg5.relationRow2781 at r2781
  unfold Seg5.relationRow2782 at r2782
  unfold Seg5.relationRow2783 at r2783
  unfold Seg5.relationRow2784 at r2784
  unfold Seg5.relationRow2785 at r2785
  unfold Seg5.relationRow2786 at r2786
  unfold Seg5.relationRow2787 at r2787
  unfold Seg5.relationRow2788 at r2788
  unfold Seg5.relationRow2789 at r2789
  unfold Seg5.relationRow2790 at r2790
  unfold Seg5.relationRow2791 at r2791
  unfold Seg5.relationRow2792 at r2792
  unfold Seg5.relationRow2793 at r2793
  unfold Seg5.relationRow2794 at r2794
  unfold Seg5.relationRow2795 at r2795
  unfold Seg5.relationRow2796 at r2796
  unfold Seg5.relationRow2797 at r2797
  unfold Seg5.relationRow2798 at r2798
  unfold Seg5.relationRow2799 at r2799
  unfold Seg5.relationRow2800 at r2800
  unfold Seg5.relationRow2801 at r2801
  unfold Seg5.relationRow2802 at r2802
  unfold Seg5.relationRow2803 at r2803
  unfold Seg5.relationRow2804 at r2804
  unfold Seg5.relationRow2805 at r2805
  unfold Seg5.relationRow2806 at r2806
  unfold Seg5.relationRow2807 at r2807
  unfold Seg5.relationRow2808 at r2808
  unfold Seg5.relationRow2809 at r2809
  unfold Seg5.relationRow2810 at r2810
  unfold Seg5.relationRow2811 at r2811
  unfold Seg5.relationRow2812 at r2812
  unfold Seg5.relationRow2813 at r2813
  unfold Seg5.relationRow2814 at r2814
  unfold Seg5.relationRow2815 at r2815
  unfold Seg5.relationRow2816 at r2816
  unfold Seg5.relationRow2817 at r2817
  unfold Seg5.relationRow2818 at r2818
  unfold Seg5.relationRow2819 at r2819
  unfold Seg5.relationRow2820 at r2820
  unfold Seg5.relationRow2821 at r2821
  unfold Seg5.relationRow2822 at r2822
  unfold Seg5.relationRow2823 at r2823
  unfold Seg5.relationRow2824 at r2824
  unfold Seg5.relationRow2825 at r2825
  unfold Seg5.relationRow2826 at r2826
  unfold Seg5.relationRow2827 at r2827
  unfold Seg5.relationRow2828 at r2828
  unfold Seg5.relationRow2829 at r2829
  unfold Seg5.relationRow2830 at r2830
  unfold Seg5.relationRow2831 at r2831
  unfold Seg5.relationRow2832 at r2832
  unfold Seg5.relationRow2833 at r2833
  unfold Seg5.relationRow2834 at r2834
  unfold Seg5.relationRow2835 at r2835
  unfold Seg5.relationRow2836 at r2836
  unfold Seg5.relationRow2837 at r2837
  unfold Seg5.relationRow2838 at r2838
  unfold Seg5.relationRow2839 at r2839
  unfold Seg5.relationRow2840 at r2840
  unfold Seg5.relationRow2841 at r2841
  unfold Seg5.relationRow2842 at r2842
  unfold Seg5.relationRow2843 at r2843
  unfold Seg5.relationRow2844 at r2844
  unfold Seg5.relationRow2845 at r2845
  unfold Seg5.relationRow2846 at r2846
  unfold Seg5.relationRow2847 at r2847
  unfold Seg5.relationRow2848 at r2848
  unfold Seg5.relationRow2849 at r2849
  unfold Seg5.relationRow2850 at r2850
  unfold Seg5.relationRow2851 at r2851
  unfold Seg5.relationRow2852 at r2852
  unfold Seg5.relationRow2853 at r2853
  unfold Seg5.relationRow2854 at r2854
  unfold Seg5.relationRow2855 at r2855
  unfold Seg5.relationRow2856 at r2856
  unfold Seg5.relationRow2857 at r2857
  unfold Seg5.relationRow2858 at r2858
  unfold Seg5.relationRow2859 at r2859
  unfold Seg5.relationRow2860 at r2860
  unfold Seg5.relationRow2861 at r2861
  unfold Seg5.relationRow2862 at r2862
  unfold Seg5.relationRow2863 at r2863
  unfold Seg5.relationRow2864 at r2864
  unfold Seg5.relationRow2865 at r2865
  unfold Seg5.relationRow2866 at r2866
  unfold Seg5.relationRow2867 at r2867
  unfold Seg5.relationRow2868 at r2868
  unfold Seg5.relationRow2869 at r2869
  unfold Seg5.relationRow2870 at r2870
  unfold Seg5.relationRow2871 at r2871
  unfold Seg5.relationRow2872 at r2872
  unfold Seg5.relationRow2873 at r2873
  unfold Seg5.relationRow2874 at r2874
  unfold Seg5.relationRow2875 at r2875
  unfold Seg5.relationRow2876 at r2876
  unfold Seg5.relationRow2877 at r2877
  unfold Seg5.relationRow2878 at r2878
  unfold Seg5.relationRow2879 at r2879
  unfold Seg5.relationRow2880 at r2880
  unfold Seg5.relationRow2881 at r2881
  unfold Seg5.relationRow2882 at r2882
  unfold Seg5.relationRow2883 at r2883
  unfold Seg5.relationRow2884 at r2884
  unfold Seg5.relationRow2885 at r2885
  unfold Seg5.relationRow2886 at r2886
  unfold Seg5.relationRow2887 at r2887
  unfold Seg5.relationRow2888 at r2888
  unfold Seg5.relationRow2889 at r2889
  unfold Seg5.relationRow2890 at r2890
  unfold Seg5.relationRow2891 at r2891
  unfold Seg5.relationRow2892 at r2892
  unfold Seg5.relationRow2893 at r2893
  unfold Seg5.relationRow2894 at r2894
  unfold Seg5.relationRow2895 at r2895
  unfold Seg5.relationRow2896 at r2896
  unfold Seg5.relationRow2897 at r2897
  unfold Seg5.relationRow2898 at r2898
  unfold Seg5.relationRow2899 at r2899
  unfold Seg5.relationRow2900 at r2900
  unfold Seg5.relationRow2901 at r2901
  unfold Seg5.relationRow2902 at r2902
  unfold Seg5.relationRow2903 at r2903
  unfold Seg5.relationRow2904 at r2904
  unfold Seg5.relationRow2905 at r2905
  unfold Seg5.relationRow2906 at r2906
  unfold Seg5.relationRow2907 at r2907
  unfold Seg5.relationRow2908 at r2908
  unfold Seg5.relationRow2909 at r2909
  unfold Seg5.relationRow2910 at r2910
  unfold Seg5.relationRow2911 at r2911
  unfold Seg5.relationRow2912 at r2912
  unfold Seg5.relationRow2913 at r2913
  unfold Seg5.relationRow2914 at r2914
  unfold Seg5.relationRow2915 at r2915
  unfold Seg5.relationRow2916 at r2916
  unfold Seg5.relationRow2917 at r2917
  unfold Seg5.relationRow2918 at r2918
  unfold Seg5.relationRow2919 at r2919
  unfold Seg5.relationRow2920 at r2920
  unfold Seg5.relationRow2921 at r2921
  unfold Seg5.relationRow2922 at r2922
  unfold Seg5.relationRow2923 at r2923
  unfold Seg5.relationRow2924 at r2924
  unfold Seg5.relationRow2925 at r2925
  unfold Seg5.relationRow2926 at r2926
  unfold Seg5.relationRow2927 at r2927
  unfold Seg5.relationRow2928 at r2928
  unfold Seg5.relationRow2929 at r2929
  unfold Seg5.relationRow2930 at r2930
  unfold Seg5.relationRow2931 at r2931
  unfold Seg5.relationRow2932 at r2932
  unfold Seg5.relationRow2933 at r2933
  unfold Seg5.relationRow2934 at r2934
  unfold Seg5.relationRow2935 at r2935
  unfold Seg5.relationRow2936 at r2936
  unfold Seg5.relationRow2937 at r2937
  unfold Seg5.relationRow2938 at r2938
  unfold Seg5.relationRow2939 at r2939
  unfold Seg5.relationRow2940 at r2940
  unfold Seg5.relationRow2941 at r2941
  unfold Seg5.relationRow2942 at r2942
  unfold Seg5.relationRow2943 at r2943
  unfold Seg5.relationRow2944 at r2944
  unfold Seg5.relationRow2945 at r2945
  unfold Seg5.relationRow2946 at r2946
  unfold Seg5.relationRow2947 at r2947
  unfold Seg5.relationRow2948 at r2948
  unfold Seg5.relationRow2949 at r2949
  unfold Seg5.relationRow2950 at r2950
  unfold Seg5.relationRow2951 at r2951
  unfold Seg5.relationRow2952 at r2952
  unfold Seg5.relationRow2953 at r2953
  unfold Seg5.relationRow2954 at r2954
  unfold Seg5.relationRow2955 at r2955
  unfold Seg5.relationRow2956 at r2956
  unfold Seg5.relationRow2957 at r2957
  unfold Seg5.relationRow2958 at r2958
  unfold Seg5.relationRow2959 at r2959
  unfold Seg5.relationRow2960 at r2960
  unfold Seg5.relationRow2961 at r2961
  unfold Seg5.relationRow2962 at r2962
  unfold Seg5.relationRow2963 at r2963
  unfold Seg5.relationRow2964 at r2964
  unfold Seg5.relationRow2965 at r2965
  unfold Seg5.relationRow2966 at r2966
  unfold Seg5.relationRow2967 at r2967
  unfold Seg5.relationRow2968 at r2968
  unfold Seg5.relationRow2969 at r2969
  have hrecover := recover_ofFn_eq_recBits rho 2415 251
  have hacc : powSumAcc rho 0 1 2415 251 = rho 9 := by
    unfold Seg5.relationRow2970 Seg5.relationLc178 Seg5.relationLc178Part0 Seg5.relationLc178Part1 Seg5.relationLc178Part2 Seg5.relationLc178Part3 Seg5.relationLc178Part4 Seg5.relationLc178Part5 Seg5.relationLc178Part6 Seg5.relationLc178Part7 at r2970
    simp only [powSumAcc]
    linear_combination r2970
  have hrec : recover_binary_zmod' (seg5ScalarBits rho) = rho 9 := by
    simp only [seg5ScalarBits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 9) (seg5ScalarBits rho)
  · intro i hi
    have key : (seg5ScalarBits rho)[i] = rho (2415 + i) := by
      conv_lhs => rw [List.Vector.getElem_def]
      simp only [seg5ScalarBits, List.Vector.toList_ofFn, List.getElem_ofFn]
    have hgoal : rho (2415 + i) * (1 - rho (2415 + i)) = 0 := by
      interval_cases i
      · linear_combination r2719
      · linear_combination r2720
      · linear_combination r2721
      · linear_combination r2722
      · linear_combination r2723
      · linear_combination r2724
      · linear_combination r2725
      · linear_combination r2726
      · linear_combination r2727
      · linear_combination r2728
      · linear_combination r2729
      · linear_combination r2730
      · linear_combination r2731
      · linear_combination r2732
      · linear_combination r2733
      · linear_combination r2734
      · linear_combination r2735
      · linear_combination r2736
      · linear_combination r2737
      · linear_combination r2738
      · linear_combination r2739
      · linear_combination r2740
      · linear_combination r2741
      · linear_combination r2742
      · linear_combination r2743
      · linear_combination r2744
      · linear_combination r2745
      · linear_combination r2746
      · linear_combination r2747
      · linear_combination r2748
      · linear_combination r2749
      · linear_combination r2750
      · linear_combination r2751
      · linear_combination r2752
      · linear_combination r2753
      · linear_combination r2754
      · linear_combination r2755
      · linear_combination r2756
      · linear_combination r2757
      · linear_combination r2758
      · linear_combination r2759
      · linear_combination r2760
      · linear_combination r2761
      · linear_combination r2762
      · linear_combination r2763
      · linear_combination r2764
      · linear_combination r2765
      · linear_combination r2766
      · linear_combination r2767
      · linear_combination r2768
      · linear_combination r2769
      · linear_combination r2770
      · linear_combination r2771
      · linear_combination r2772
      · linear_combination r2773
      · linear_combination r2774
      · linear_combination r2775
      · linear_combination r2776
      · linear_combination r2777
      · linear_combination r2778
      · linear_combination r2779
      · linear_combination r2780
      · linear_combination r2781
      · linear_combination r2782
      · linear_combination r2783
      · linear_combination r2784
      · linear_combination r2785
      · linear_combination r2786
      · linear_combination r2787
      · linear_combination r2788
      · linear_combination r2789
      · linear_combination r2790
      · linear_combination r2791
      · linear_combination r2792
      · linear_combination r2793
      · linear_combination r2794
      · linear_combination r2795
      · linear_combination r2796
      · linear_combination r2797
      · linear_combination r2798
      · linear_combination r2799
      · linear_combination r2800
      · linear_combination r2801
      · linear_combination r2802
      · linear_combination r2803
      · linear_combination r2804
      · linear_combination r2805
      · linear_combination r2806
      · linear_combination r2807
      · linear_combination r2808
      · linear_combination r2809
      · linear_combination r2810
      · linear_combination r2811
      · linear_combination r2812
      · linear_combination r2813
      · linear_combination r2814
      · linear_combination r2815
      · linear_combination r2816
      · linear_combination r2817
      · linear_combination r2818
      · linear_combination r2819
      · linear_combination r2820
      · linear_combination r2821
      · linear_combination r2822
      · linear_combination r2823
      · linear_combination r2824
      · linear_combination r2825
      · linear_combination r2826
      · linear_combination r2827
      · linear_combination r2828
      · linear_combination r2829
      · linear_combination r2830
      · linear_combination r2831
      · linear_combination r2832
      · linear_combination r2833
      · linear_combination r2834
      · linear_combination r2835
      · linear_combination r2836
      · linear_combination r2837
      · linear_combination r2838
      · linear_combination r2839
      · linear_combination r2840
      · linear_combination r2841
      · linear_combination r2842
      · linear_combination r2843
      · linear_combination r2844
      · linear_combination r2845
      · linear_combination r2846
      · linear_combination r2847
      · linear_combination r2848
      · linear_combination r2849
      · linear_combination r2850
      · linear_combination r2851
      · linear_combination r2852
      · linear_combination r2853
      · linear_combination r2854
      · linear_combination r2855
      · linear_combination r2856
      · linear_combination r2857
      · linear_combination r2858
      · linear_combination r2859
      · linear_combination r2860
      · linear_combination r2861
      · linear_combination r2862
      · linear_combination r2863
      · linear_combination r2864
      · linear_combination r2865
      · linear_combination r2866
      · linear_combination r2867
      · linear_combination r2868
      · linear_combination r2869
      · linear_combination r2870
      · linear_combination r2871
      · linear_combination r2872
      · linear_combination r2873
      · linear_combination r2874
      · linear_combination r2875
      · linear_combination r2876
      · linear_combination r2877
      · linear_combination r2878
      · linear_combination r2879
      · linear_combination r2880
      · linear_combination r2881
      · linear_combination r2882
      · linear_combination r2883
      · linear_combination r2884
      · linear_combination r2885
      · linear_combination r2886
      · linear_combination r2887
      · linear_combination r2888
      · linear_combination r2889
      · linear_combination r2890
      · linear_combination r2891
      · linear_combination r2892
      · linear_combination r2893
      · linear_combination r2894
      · linear_combination r2895
      · linear_combination r2896
      · linear_combination r2897
      · linear_combination r2898
      · linear_combination r2899
      · linear_combination r2900
      · linear_combination r2901
      · linear_combination r2902
      · linear_combination r2903
      · linear_combination r2904
      · linear_combination r2905
      · linear_combination r2906
      · linear_combination r2907
      · linear_combination r2908
      · linear_combination r2909
      · linear_combination r2910
      · linear_combination r2911
      · linear_combination r2912
      · linear_combination r2913
      · linear_combination r2914
      · linear_combination r2915
      · linear_combination r2916
      · linear_combination r2917
      · linear_combination r2918
      · linear_combination r2919
      · linear_combination r2920
      · linear_combination r2921
      · linear_combination r2922
      · linear_combination r2923
      · linear_combination r2924
      · linear_combination r2925
      · linear_combination r2926
      · linear_combination r2927
      · linear_combination r2928
      · linear_combination r2929
      · linear_combination r2930
      · linear_combination r2931
      · linear_combination r2932
      · linear_combination r2933
      · linear_combination r2934
      · linear_combination r2935
      · linear_combination r2936
      · linear_combination r2937
      · linear_combination r2938
      · linear_combination r2939
      · linear_combination r2940
      · linear_combination r2941
      · linear_combination r2942
      · linear_combination r2943
      · linear_combination r2944
      · linear_combination r2945
      · linear_combination r2946
      · linear_combination r2947
      · linear_combination r2948
      · linear_combination r2949
      · linear_combination r2950
      · linear_combination r2951
      · linear_combination r2952
      · linear_combination r2953
      · linear_combination r2954
      · linear_combination r2955
      · linear_combination r2956
      · linear_combination r2957
      · linear_combination r2958
      · linear_combination r2959
      · linear_combination r2960
      · linear_combination r2961
      · linear_combination r2962
      · linear_combination r2963
      · linear_combination r2964
      · linear_combination r2965
      · linear_combination r2966
      · linear_combination r2967
      · linear_combination r2968
      · linear_combination r2969
    exact key ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
