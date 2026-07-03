import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0Bits_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    GatesDef.to_binary (rho 15) 128 (seg52In0Bits rho) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, p18, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow1416 at r1416

  unfold Seg52.relationRow1417 at r1417

  unfold Seg52.relationRow1418 at r1418

  unfold Seg52.relationRow1419 at r1419

  unfold Seg52.relationRow1420 at r1420

  unfold Seg52.relationRow1421 at r1421

  unfold Seg52.relationRow1422 at r1422

  unfold Seg52.relationRow1423 at r1423

  unfold Seg52.relationRow1424 at r1424

  unfold Seg52.relationRow1425 at r1425

  unfold Seg52.relationRow1426 at r1426

  unfold Seg52.relationRow1427 at r1427

  unfold Seg52.relationRow1428 at r1428

  unfold Seg52.relationRow1429 at r1429

  unfold Seg52.relationRow1430 at r1430

  unfold Seg52.relationRow1431 at r1431

  unfold Seg52.relationRow1432 at r1432

  unfold Seg52.relationRow1433 at r1433

  unfold Seg52.relationRow1434 at r1434

  unfold Seg52.relationRow1435 at r1435

  unfold Seg52.relationRow1436 at r1436

  unfold Seg52.relationRow1437 at r1437

  unfold Seg52.relationRow1438 at r1438

  unfold Seg52.relationRow1439 at r1439

  unfold Seg52.relationRow1440 at r1440

  unfold Seg52.relationRow1441 at r1441

  unfold Seg52.relationRow1442 at r1442

  unfold Seg52.relationRow1443 at r1443

  unfold Seg52.relationRow1444 at r1444

  unfold Seg52.relationRow1445 at r1445

  unfold Seg52.relationRow1446 at r1446

  unfold Seg52.relationRow1447 at r1447

  unfold Seg52.relationRow1448 at r1448

  unfold Seg52.relationRow1449 at r1449

  unfold Seg52.relationRow1450 at r1450

  unfold Seg52.relationRow1451 at r1451

  unfold Seg52.relationRow1452 at r1452

  unfold Seg52.relationRow1453 at r1453

  unfold Seg52.relationRow1454 at r1454

  unfold Seg52.relationRow1455 at r1455

  unfold Seg52.relationRow1456 at r1456

  unfold Seg52.relationRow1457 at r1457

  unfold Seg52.relationRow1458 at r1458

  unfold Seg52.relationRow1459 at r1459

  unfold Seg52.relationRow1460 at r1460

  unfold Seg52.relationRow1461 at r1461

  unfold Seg52.relationRow1462 at r1462

  unfold Seg52.relationRow1463 at r1463

  unfold Seg52.relationRow1464 at r1464

  unfold Seg52.relationRow1465 at r1465

  unfold Seg52.relationRow1466 at r1466

  unfold Seg52.relationRow1467 at r1467

  unfold Seg52.relationRow1468 at r1468

  unfold Seg52.relationRow1469 at r1469

  unfold Seg52.relationRow1470 at r1470

  unfold Seg52.relationRow1471 at r1471

  unfold Seg52.relationRow1472 at r1472

  unfold Seg52.relationRow1473 at r1473

  unfold Seg52.relationRow1474 at r1474

  unfold Seg52.relationRow1475 at r1475

  unfold Seg52.relationRow1476 at r1476

  unfold Seg52.relationRow1477 at r1477

  unfold Seg52.relationRow1478 at r1478

  unfold Seg52.relationRow1479 at r1479

  unfold Seg52.relationRow1480 at r1480

  unfold Seg52.relationRow1481 at r1481

  unfold Seg52.relationRow1482 at r1482

  unfold Seg52.relationRow1483 at r1483

  unfold Seg52.relationRow1484 at r1484

  unfold Seg52.relationRow1485 at r1485

  unfold Seg52.relationRow1486 at r1486

  unfold Seg52.relationRow1487 at r1487

  unfold Seg52.relationRow1488 at r1488

  unfold Seg52.relationRow1489 at r1489

  unfold Seg52.relationRow1490 at r1490

  unfold Seg52.relationRow1491 at r1491

  unfold Seg52.relationRow1492 at r1492

  unfold Seg52.relationRow1493 at r1493

  unfold Seg52.relationRow1494 at r1494

  unfold Seg52.relationRow1495 at r1495

  unfold Seg52.relationRow1496 at r1496

  unfold Seg52.relationRow1497 at r1497

  unfold Seg52.relationRow1498 at r1498

  unfold Seg52.relationRow1499 at r1499

  unfold Seg52.relationRow1500 at r1500

  unfold Seg52.relationRow1501 at r1501

  unfold Seg52.relationRow1502 at r1502

  unfold Seg52.relationRow1503 at r1503

  unfold Seg52.relationRow1504 at r1504

  unfold Seg52.relationRow1505 at r1505

  unfold Seg52.relationRow1506 at r1506

  unfold Seg52.relationRow1507 at r1507

  unfold Seg52.relationRow1508 at r1508

  unfold Seg52.relationRow1509 at r1509

  unfold Seg52.relationRow1510 at r1510

  unfold Seg52.relationRow1511 at r1511

  unfold Seg52.relationRow1512 at r1512

  unfold Seg52.relationRow1513 at r1513

  unfold Seg52.relationRow1514 at r1514

  unfold Seg52.relationRow1515 at r1515

  unfold Seg52.relationRow1516 at r1516

  unfold Seg52.relationRow1517 at r1517

  unfold Seg52.relationRow1518 at r1518

  unfold Seg52.relationRow1519 at r1519

  unfold Seg52.relationRow1520 at r1520

  unfold Seg52.relationRow1521 at r1521

  unfold Seg52.relationRow1522 at r1522

  unfold Seg52.relationRow1523 at r1523

  unfold Seg52.relationRow1524 at r1524

  unfold Seg52.relationRow1525 at r1525

  unfold Seg52.relationRow1526 at r1526

  unfold Seg52.relationRow1527 at r1527

  unfold Seg52.relationRow1528 at r1528

  unfold Seg52.relationRow1529 at r1529

  unfold Seg52.relationRow1530 at r1530

  unfold Seg52.relationRow1531 at r1531

  unfold Seg52.relationRow1532 at r1532

  unfold Seg52.relationRow1533 at r1533

  unfold Seg52.relationRow1534 at r1534

  unfold Seg52.relationRow1535 at r1535

  unfold Seg52.relationRow1536 at r1536

  unfold Seg52.relationRow1537 at r1537

  unfold Seg52.relationRow1538 at r1538

  unfold Seg52.relationRow1539 at r1539

  unfold Seg52.relationRow1540 at r1540

  unfold Seg52.relationRow1541 at r1541

  unfold Seg52.relationRow1542 at r1542

  unfold Seg52.relationRow1543 at r1543

  have hrecover := recover_ofFn_eq_recBits rho 45808 128

  have hacc : powSumAcc rho 0 1 45808 128 = rho 15 := by

    unfold Seg52.relationRow1544 at r1544

    simp only [powSumAcc]

    linear_combination r1544

  have hrec : recover_binary_zmod' (seg52In0Bits rho) = rho 15 := by

    simp only [seg52In0Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 15) (seg52In0Bits rho)
  · intro i hi
    have key := seg52In0Bits_get rho i hi
    have hgoal : rho (45808 + i) * (1 - rho (45808 + i)) = 0 := by
      interval_cases i
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
    have key' : (seg52In0Bits rho)[i] = rho (45808 + i) := by
      rw [← getElem!_pos (seg52In0Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
