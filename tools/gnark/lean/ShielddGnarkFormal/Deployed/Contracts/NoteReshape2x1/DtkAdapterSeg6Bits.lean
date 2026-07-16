import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Ivk_toBinary (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    GatesDef.to_binary (rho 9) 253 (seg6IvkBits rho) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, p17, p18, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1322, r1323, r1324, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Seg6.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379, r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩
  unfold Seg6.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Seg6.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow1322 at r1322
  unfold Seg6.relationRow1323 at r1323
  unfold Seg6.relationRow1324 at r1324
  unfold Seg6.relationRow1325 at r1325
  unfold Seg6.relationRow1326 at r1326
  unfold Seg6.relationRow1327 at r1327
  unfold Seg6.relationRow1328 at r1328
  unfold Seg6.relationRow1329 at r1329
  unfold Seg6.relationRow1330 at r1330
  unfold Seg6.relationRow1331 at r1331
  unfold Seg6.relationRow1332 at r1332
  unfold Seg6.relationRow1333 at r1333
  unfold Seg6.relationRow1334 at r1334
  unfold Seg6.relationRow1335 at r1335
  unfold Seg6.relationRow1336 at r1336
  unfold Seg6.relationRow1337 at r1337
  unfold Seg6.relationRow1338 at r1338
  unfold Seg6.relationRow1339 at r1339
  unfold Seg6.relationRow1340 at r1340
  unfold Seg6.relationRow1341 at r1341
  unfold Seg6.relationRow1342 at r1342
  unfold Seg6.relationRow1343 at r1343
  unfold Seg6.relationRow1344 at r1344
  unfold Seg6.relationRow1345 at r1345
  unfold Seg6.relationRow1346 at r1346
  unfold Seg6.relationRow1347 at r1347
  unfold Seg6.relationRow1348 at r1348
  unfold Seg6.relationRow1349 at r1349
  unfold Seg6.relationRow1350 at r1350
  unfold Seg6.relationRow1351 at r1351
  unfold Seg6.relationRow1352 at r1352
  unfold Seg6.relationRow1353 at r1353
  unfold Seg6.relationRow1354 at r1354
  unfold Seg6.relationRow1355 at r1355
  unfold Seg6.relationRow1356 at r1356
  unfold Seg6.relationRow1357 at r1357
  unfold Seg6.relationRow1358 at r1358
  unfold Seg6.relationRow1359 at r1359
  unfold Seg6.relationRow1360 at r1360
  unfold Seg6.relationRow1361 at r1361
  unfold Seg6.relationRow1362 at r1362
  unfold Seg6.relationRow1363 at r1363
  unfold Seg6.relationRow1364 at r1364
  unfold Seg6.relationRow1365 at r1365
  unfold Seg6.relationRow1366 at r1366
  unfold Seg6.relationRow1367 at r1367
  unfold Seg6.relationRow1368 at r1368
  unfold Seg6.relationRow1369 at r1369
  unfold Seg6.relationRow1370 at r1370
  unfold Seg6.relationRow1371 at r1371
  unfold Seg6.relationRow1372 at r1372
  unfold Seg6.relationRow1373 at r1373
  unfold Seg6.relationRow1374 at r1374
  unfold Seg6.relationRow1375 at r1375
  unfold Seg6.relationRow1376 at r1376
  unfold Seg6.relationRow1377 at r1377
  unfold Seg6.relationRow1378 at r1378
  unfold Seg6.relationRow1379 at r1379
  unfold Seg6.relationRow1380 at r1380
  unfold Seg6.relationRow1381 at r1381
  unfold Seg6.relationRow1382 at r1382
  unfold Seg6.relationRow1383 at r1383
  unfold Seg6.relationRow1384 at r1384
  unfold Seg6.relationRow1385 at r1385
  unfold Seg6.relationRow1386 at r1386
  unfold Seg6.relationRow1387 at r1387
  unfold Seg6.relationRow1388 at r1388
  unfold Seg6.relationRow1389 at r1389
  unfold Seg6.relationRow1390 at r1390
  unfold Seg6.relationRow1391 at r1391
  unfold Seg6.relationRow1392 at r1392
  unfold Seg6.relationRow1393 at r1393
  unfold Seg6.relationRow1394 at r1394
  unfold Seg6.relationRow1395 at r1395
  unfold Seg6.relationRow1396 at r1396
  unfold Seg6.relationRow1397 at r1397
  unfold Seg6.relationRow1398 at r1398
  unfold Seg6.relationRow1399 at r1399
  unfold Seg6.relationRow1400 at r1400
  unfold Seg6.relationRow1401 at r1401
  unfold Seg6.relationRow1402 at r1402
  unfold Seg6.relationRow1403 at r1403
  unfold Seg6.relationRow1404 at r1404
  unfold Seg6.relationRow1405 at r1405
  unfold Seg6.relationRow1406 at r1406
  unfold Seg6.relationRow1407 at r1407
  unfold Seg6.relationRow1408 at r1408
  unfold Seg6.relationRow1409 at r1409
  unfold Seg6.relationRow1410 at r1410
  unfold Seg6.relationRow1411 at r1411
  unfold Seg6.relationRow1412 at r1412
  unfold Seg6.relationRow1413 at r1413
  unfold Seg6.relationRow1414 at r1414
  unfold Seg6.relationRow1415 at r1415
  unfold Seg6.relationRow1416 at r1416
  unfold Seg6.relationRow1417 at r1417
  unfold Seg6.relationRow1418 at r1418
  unfold Seg6.relationRow1419 at r1419
  unfold Seg6.relationRow1420 at r1420
  unfold Seg6.relationRow1421 at r1421
  unfold Seg6.relationRow1422 at r1422
  unfold Seg6.relationRow1423 at r1423
  unfold Seg6.relationRow1424 at r1424
  unfold Seg6.relationRow1425 at r1425
  unfold Seg6.relationRow1426 at r1426
  unfold Seg6.relationRow1427 at r1427
  unfold Seg6.relationRow1428 at r1428
  unfold Seg6.relationRow1429 at r1429
  unfold Seg6.relationRow1430 at r1430
  unfold Seg6.relationRow1431 at r1431
  unfold Seg6.relationRow1432 at r1432
  unfold Seg6.relationRow1433 at r1433
  unfold Seg6.relationRow1434 at r1434
  unfold Seg6.relationRow1435 at r1435
  unfold Seg6.relationRow1436 at r1436
  unfold Seg6.relationRow1437 at r1437
  unfold Seg6.relationRow1438 at r1438
  unfold Seg6.relationRow1439 at r1439
  unfold Seg6.relationRow1440 at r1440
  unfold Seg6.relationRow1441 at r1441
  unfold Seg6.relationRow1442 at r1442
  unfold Seg6.relationRow1443 at r1443
  unfold Seg6.relationRow1444 at r1444
  unfold Seg6.relationRow1445 at r1445
  unfold Seg6.relationRow1446 at r1446
  unfold Seg6.relationRow1447 at r1447
  unfold Seg6.relationRow1448 at r1448
  unfold Seg6.relationRow1449 at r1449
  unfold Seg6.relationRow1450 at r1450
  unfold Seg6.relationRow1451 at r1451
  unfold Seg6.relationRow1452 at r1452
  unfold Seg6.relationRow1453 at r1453
  unfold Seg6.relationRow1454 at r1454
  unfold Seg6.relationRow1455 at r1455
  unfold Seg6.relationRow1456 at r1456
  unfold Seg6.relationRow1457 at r1457
  unfold Seg6.relationRow1458 at r1458
  unfold Seg6.relationRow1459 at r1459
  unfold Seg6.relationRow1460 at r1460
  unfold Seg6.relationRow1461 at r1461
  unfold Seg6.relationRow1462 at r1462
  unfold Seg6.relationRow1463 at r1463
  unfold Seg6.relationRow1464 at r1464
  unfold Seg6.relationRow1465 at r1465
  unfold Seg6.relationRow1466 at r1466
  unfold Seg6.relationRow1467 at r1467
  unfold Seg6.relationRow1468 at r1468
  unfold Seg6.relationRow1469 at r1469
  unfold Seg6.relationRow1470 at r1470
  unfold Seg6.relationRow1471 at r1471
  unfold Seg6.relationRow1472 at r1472
  unfold Seg6.relationRow1473 at r1473
  unfold Seg6.relationRow1474 at r1474
  unfold Seg6.relationRow1475 at r1475
  unfold Seg6.relationRow1476 at r1476
  unfold Seg6.relationRow1477 at r1477
  unfold Seg6.relationRow1478 at r1478
  unfold Seg6.relationRow1479 at r1479
  unfold Seg6.relationRow1480 at r1480
  unfold Seg6.relationRow1481 at r1481
  unfold Seg6.relationRow1482 at r1482
  unfold Seg6.relationRow1483 at r1483
  unfold Seg6.relationRow1484 at r1484
  unfold Seg6.relationRow1485 at r1485
  unfold Seg6.relationRow1486 at r1486
  unfold Seg6.relationRow1487 at r1487
  unfold Seg6.relationRow1488 at r1488
  unfold Seg6.relationRow1489 at r1489
  unfold Seg6.relationRow1490 at r1490
  unfold Seg6.relationRow1491 at r1491
  unfold Seg6.relationRow1492 at r1492
  unfold Seg6.relationRow1493 at r1493
  unfold Seg6.relationRow1494 at r1494
  unfold Seg6.relationRow1495 at r1495
  unfold Seg6.relationRow1496 at r1496
  unfold Seg6.relationRow1497 at r1497
  unfold Seg6.relationRow1498 at r1498
  unfold Seg6.relationRow1499 at r1499
  unfold Seg6.relationRow1500 at r1500
  unfold Seg6.relationRow1501 at r1501
  unfold Seg6.relationRow1502 at r1502
  unfold Seg6.relationRow1503 at r1503
  unfold Seg6.relationRow1504 at r1504
  unfold Seg6.relationRow1505 at r1505
  unfold Seg6.relationRow1506 at r1506
  unfold Seg6.relationRow1507 at r1507
  unfold Seg6.relationRow1508 at r1508
  unfold Seg6.relationRow1509 at r1509
  unfold Seg6.relationRow1510 at r1510
  unfold Seg6.relationRow1511 at r1511
  unfold Seg6.relationRow1512 at r1512
  unfold Seg6.relationRow1513 at r1513
  unfold Seg6.relationRow1514 at r1514
  unfold Seg6.relationRow1515 at r1515
  unfold Seg6.relationRow1516 at r1516
  unfold Seg6.relationRow1517 at r1517
  unfold Seg6.relationRow1518 at r1518
  unfold Seg6.relationRow1519 at r1519
  unfold Seg6.relationRow1520 at r1520
  unfold Seg6.relationRow1521 at r1521
  unfold Seg6.relationRow1522 at r1522
  unfold Seg6.relationRow1523 at r1523
  unfold Seg6.relationRow1524 at r1524
  unfold Seg6.relationRow1525 at r1525
  unfold Seg6.relationRow1526 at r1526
  unfold Seg6.relationRow1527 at r1527
  unfold Seg6.relationRow1528 at r1528
  unfold Seg6.relationRow1529 at r1529
  unfold Seg6.relationRow1530 at r1530
  unfold Seg6.relationRow1531 at r1531
  unfold Seg6.relationRow1532 at r1532
  unfold Seg6.relationRow1533 at r1533
  unfold Seg6.relationRow1534 at r1534
  unfold Seg6.relationRow1535 at r1535
  unfold Seg6.relationRow1536 at r1536
  unfold Seg6.relationRow1537 at r1537
  unfold Seg6.relationRow1538 at r1538
  unfold Seg6.relationRow1539 at r1539
  unfold Seg6.relationRow1540 at r1540
  unfold Seg6.relationRow1541 at r1541
  unfold Seg6.relationRow1542 at r1542
  unfold Seg6.relationRow1543 at r1543
  unfold Seg6.relationRow1544 at r1544
  unfold Seg6.relationRow1545 at r1545
  unfold Seg6.relationRow1546 at r1546
  unfold Seg6.relationRow1547 at r1547
  unfold Seg6.relationRow1548 at r1548
  unfold Seg6.relationRow1549 at r1549
  unfold Seg6.relationRow1550 at r1550
  unfold Seg6.relationRow1551 at r1551
  unfold Seg6.relationRow1552 at r1552
  unfold Seg6.relationRow1553 at r1553
  unfold Seg6.relationRow1554 at r1554
  unfold Seg6.relationRow1555 at r1555
  unfold Seg6.relationRow1556 at r1556
  unfold Seg6.relationRow1557 at r1557
  unfold Seg6.relationRow1558 at r1558
  unfold Seg6.relationRow1559 at r1559
  unfold Seg6.relationRow1560 at r1560
  unfold Seg6.relationRow1561 at r1561
  unfold Seg6.relationRow1562 at r1562
  unfold Seg6.relationRow1563 at r1563
  unfold Seg6.relationRow1564 at r1564
  unfold Seg6.relationRow1565 at r1565
  unfold Seg6.relationRow1566 at r1566
  unfold Seg6.relationRow1567 at r1567
  unfold Seg6.relationRow1568 at r1568
  unfold Seg6.relationRow1569 at r1569
  unfold Seg6.relationRow1570 at r1570
  unfold Seg6.relationRow1571 at r1571
  unfold Seg6.relationRow1572 at r1572
  unfold Seg6.relationRow1573 at r1573
  unfold Seg6.relationRow1574 at r1574
  have hrecover := recover_ofFn_eq_recBits rho 1890 253
  have hacc : powSumAcc rho 0 1 1890 253 = rho 9 := by
    unfold Seg6.relationRow1575 Seg6.relationLc17 Seg6.relationLc17Part0 Seg6.relationLc17Part1 Seg6.relationLc17Part2 Seg6.relationLc17Part3 Seg6.relationLc17Part4 Seg6.relationLc17Part5 Seg6.relationLc17Part6 Seg6.relationLc17Part7 at r1575
    simp only [powSumAcc]
    linear_combination r1575
  have hrec : recover_binary_zmod' (seg6IvkBits rho) = rho 9 := by
    simp only [seg6IvkBits]
    rw [hrecover]
    rw [powSumAcc_eq] at hacc
    simpa using hacc
  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 9) (seg6IvkBits rho)
  · intro i hi
    have key : (seg6IvkBits rho)[i] = rho (1890 + i) := by
      conv_lhs => rw [List.Vector.getElem_def]
      simp only [seg6IvkBits, List.Vector.toList_ofFn, List.getElem_ofFn]
    have hgoal : rho (1890 + i) * (1 - rho (1890 + i)) = 0 := by
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

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
