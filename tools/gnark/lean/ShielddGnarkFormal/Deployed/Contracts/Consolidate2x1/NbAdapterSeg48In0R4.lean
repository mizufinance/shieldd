import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1471 rho ∧ Seg48.relationRow1472 rho ∧ Seg48.relationRow1473 rho ∧ Seg48.relationRow1474 rho ∧ Seg48.relationRow1475 rho ∧ Seg48.relationRow1476 rho ∧ Seg48.relationRow1477 rho ∧ Seg48.relationRow1478 rho ∧ Seg48.relationRow1479 rho ∧ Seg48.relationRow1480 rho ∧ Seg48.relationRow1481 rho ∧ Seg48.relationRow1482 rho ∧ Seg48.relationRow1483 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p18, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483⟩

theorem seg48In0_rung44 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33580 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX44 rho, seg48In0AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34228, rho 34229⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX44 rho, seg48In0AccY44 rho⟩ ⟨rho 34228, rho 34229⟩
        ⟨seg48In0AccX45 rho, seg48In0AccY45 rho⟩ ⟨rho 34241, rho 34242⟩ := by
  obtain ⟨r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483⟩ := seg48In0_rows44 rho h
  unfold Seg48.relationRow1471 at r1471

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1471

  unfold Seg48.relationRow1472 at r1472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1472

  unfold Seg48.relationRow1473 at r1473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1473

  unfold Seg48.relationRow1474 at r1474

  unfold Seg48.relationRow1475 at r1475

  unfold Seg48.relationRow1476 at r1476

  unfold Seg48.relationRow1477 at r1477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1477

  unfold Seg48.relationRow1478 at r1478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1478

  unfold Seg48.relationRow1479 at r1479

  unfold Seg48.relationRow1480 at r1480

  unfold Seg48.relationRow1481 at r1481

  unfold Seg48.relationRow1482 at r1482

  unfold Seg48.relationRow1483 at r1483

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX45 rho = seg48In0AccX44 rho + rho 34236 := by
    unfold seg48In0AccX45 seg48In0AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 44]

    ring

  have hnexty : seg48In0AccY45 rho = seg48In0AccY44 rho + rho 34237 := by
    unfold seg48In0AccY45 seg48In0AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 44]

    ring

  have ha0 : (rho 34228 + rho 34229) * (seg48In0AccX44 rho + seg48In0AccY44 rho) = rho 34230 := by
    unfold seg48In0AccX44 seg48In0AccY44
    linear_combination r1471
  have ha1 : rho 34229 * seg48In0AccX44 rho = rho 34231 := by
    unfold seg48In0AccX44
    linear_combination r1472
  have ha2 : rho 34228 * seg48In0AccY44 rho = rho 34232 := by
    unfold seg48In0AccY44
    linear_combination r1473
  have ha3 : 3021 * rho 34231 * rho 34232 = rho 34233 := by
    linear_combination r1474
  have ha4 : rho 34234 * (1 + rho 34233) = rho 34231 + rho 34232 := by
    linear_combination r1475
  have ha5 : rho 34235 * (1 - rho 34233) = rho 34230 - rho 34231 - rho 34232 := by
    linear_combination r1476
  have haddx :
      rho 34234 * (1 + 3021 * (rho 34229 * seg48In0AccX44 rho) * (rho 34228 * seg48In0AccY44 rho)) =
        rho 34229 * seg48In0AccX44 rho + rho 34228 * seg48In0AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34235 * (1 - 3021 * (rho 34229 * seg48In0AccX44 rho) * (rho 34228 * seg48In0AccY44 rho)) =
        (-1) * (rho 34229 * seg48In0AccX44 rho) - rho 34228 * seg48In0AccY44 rho +
          (seg48In0AccY44 rho - seg48In0AccX44 rho * (-1)) * (rho 34228 + rho 34229) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34235 * (1 - rho 34233) = rho 34230 - rho 34231 - rho 34232 := ha5
      _ = (-1) * rho 34231 - rho 34232 + (seg48In0AccY44 rho - seg48In0AccX44 rho * (-1)) *
          (rho 34228 + rho 34229) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX45 rho = seg48In0AccX44 rho - Bool.toZMod bit * (seg48In0AccX44 rho - rho 34234) := by
    have hd : rho 34236 = Bool.toZMod bit * (rho 34234 - seg48In0AccX44 rho) := by
      rw [← hbit]
      unfold seg48In0AccX44
      linear_combination -r1477
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY45 rho = seg48In0AccY44 rho - Bool.toZMod bit * (seg48In0AccY44 rho - rho 34235) := by
    have hd : rho 34237 = Bool.toZMod bit * (rho 34235 - seg48In0AccY44 rho) := by
      rw [← hbit]
      unfold seg48In0AccY44
      linear_combination -r1478
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34228 * rho 34229 = rho 34238 := by linear_combination r1479
  have hd1 : rho 34228 * rho 34228 = rho 34239 := by linear_combination r1480
  have hd2 : rho 34229 * rho 34229 = rho 34240 := by linear_combination r1481
  have hd3 : rho 34241 * (rho 34229 * rho 34229 + rho 34228 * rho 34228 * (-1)) =
      2 * (rho 34228 * rho 34229) := by
    rw [hd0, hd1, hd2]
    linear_combination r1482
  have hd4 : rho 34242 * (2 - (rho 34229 * rho 34229 + rho 34228 * rho 34228 * (-1))) =
      rho 34229 * rho 34229 - rho 34228 * rho 34228 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1483
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX44 rho, seg48In0AccY44 rho⟩ ⟨rho 34228, rho 34229⟩
    ⟨rho 34234, rho 34235⟩ ⟨seg48In0AccX45 rho, seg48In0AccY45 rho⟩ ⟨rho 34241, rho 34242⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1484 rho ∧ Seg48.relationRow1485 rho ∧ Seg48.relationRow1486 rho ∧ Seg48.relationRow1487 rho ∧ Seg48.relationRow1488 rho ∧ Seg48.relationRow1489 rho ∧ Seg48.relationRow1490 rho ∧ Seg48.relationRow1491 rho ∧ Seg48.relationRow1492 rho ∧ Seg48.relationRow1493 rho ∧ Seg48.relationRow1494 rho ∧ Seg48.relationRow1495 rho ∧ Seg48.relationRow1496 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p18, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496⟩

theorem seg48In0_rung45 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33581 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX45 rho, seg48In0AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34241, rho 34242⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX45 rho, seg48In0AccY45 rho⟩ ⟨rho 34241, rho 34242⟩
        ⟨seg48In0AccX46 rho, seg48In0AccY46 rho⟩ ⟨rho 34254, rho 34255⟩ := by
  obtain ⟨r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496⟩ := seg48In0_rows45 rho h
  unfold Seg48.relationRow1484 at r1484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1484

  unfold Seg48.relationRow1485 at r1485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1485

  unfold Seg48.relationRow1486 at r1486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1486

  unfold Seg48.relationRow1487 at r1487

  unfold Seg48.relationRow1488 at r1488

  unfold Seg48.relationRow1489 at r1489

  unfold Seg48.relationRow1490 at r1490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1490

  unfold Seg48.relationRow1491 at r1491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1491

  unfold Seg48.relationRow1492 at r1492

  unfold Seg48.relationRow1493 at r1493

  unfold Seg48.relationRow1494 at r1494

  unfold Seg48.relationRow1495 at r1495

  unfold Seg48.relationRow1496 at r1496

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX46 rho = seg48In0AccX45 rho + rho 34249 := by
    unfold seg48In0AccX46 seg48In0AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 45]

    ring

  have hnexty : seg48In0AccY46 rho = seg48In0AccY45 rho + rho 34250 := by
    unfold seg48In0AccY46 seg48In0AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 45]

    ring

  have ha0 : (rho 34241 + rho 34242) * (seg48In0AccX45 rho + seg48In0AccY45 rho) = rho 34243 := by
    unfold seg48In0AccX45 seg48In0AccY45
    linear_combination r1484
  have ha1 : rho 34242 * seg48In0AccX45 rho = rho 34244 := by
    unfold seg48In0AccX45
    linear_combination r1485
  have ha2 : rho 34241 * seg48In0AccY45 rho = rho 34245 := by
    unfold seg48In0AccY45
    linear_combination r1486
  have ha3 : 3021 * rho 34244 * rho 34245 = rho 34246 := by
    linear_combination r1487
  have ha4 : rho 34247 * (1 + rho 34246) = rho 34244 + rho 34245 := by
    linear_combination r1488
  have ha5 : rho 34248 * (1 - rho 34246) = rho 34243 - rho 34244 - rho 34245 := by
    linear_combination r1489
  have haddx :
      rho 34247 * (1 + 3021 * (rho 34242 * seg48In0AccX45 rho) * (rho 34241 * seg48In0AccY45 rho)) =
        rho 34242 * seg48In0AccX45 rho + rho 34241 * seg48In0AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34248 * (1 - 3021 * (rho 34242 * seg48In0AccX45 rho) * (rho 34241 * seg48In0AccY45 rho)) =
        (-1) * (rho 34242 * seg48In0AccX45 rho) - rho 34241 * seg48In0AccY45 rho +
          (seg48In0AccY45 rho - seg48In0AccX45 rho * (-1)) * (rho 34241 + rho 34242) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34248 * (1 - rho 34246) = rho 34243 - rho 34244 - rho 34245 := ha5
      _ = (-1) * rho 34244 - rho 34245 + (seg48In0AccY45 rho - seg48In0AccX45 rho * (-1)) *
          (rho 34241 + rho 34242) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX46 rho = seg48In0AccX45 rho - Bool.toZMod bit * (seg48In0AccX45 rho - rho 34247) := by
    have hd : rho 34249 = Bool.toZMod bit * (rho 34247 - seg48In0AccX45 rho) := by
      rw [← hbit]
      unfold seg48In0AccX45
      linear_combination -r1490
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY46 rho = seg48In0AccY45 rho - Bool.toZMod bit * (seg48In0AccY45 rho - rho 34248) := by
    have hd : rho 34250 = Bool.toZMod bit * (rho 34248 - seg48In0AccY45 rho) := by
      rw [← hbit]
      unfold seg48In0AccY45
      linear_combination -r1491
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34241 * rho 34242 = rho 34251 := by linear_combination r1492
  have hd1 : rho 34241 * rho 34241 = rho 34252 := by linear_combination r1493
  have hd2 : rho 34242 * rho 34242 = rho 34253 := by linear_combination r1494
  have hd3 : rho 34254 * (rho 34242 * rho 34242 + rho 34241 * rho 34241 * (-1)) =
      2 * (rho 34241 * rho 34242) := by
    rw [hd0, hd1, hd2]
    linear_combination r1495
  have hd4 : rho 34255 * (2 - (rho 34242 * rho 34242 + rho 34241 * rho 34241 * (-1))) =
      rho 34242 * rho 34242 - rho 34241 * rho 34241 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1496
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX45 rho, seg48In0AccY45 rho⟩ ⟨rho 34241, rho 34242⟩
    ⟨rho 34247, rho 34248⟩ ⟨seg48In0AccX46 rho, seg48In0AccY46 rho⟩ ⟨rho 34254, rho 34255⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1497 rho ∧ Seg48.relationRow1498 rho ∧ Seg48.relationRow1499 rho ∧ Seg48.relationRow1500 rho ∧ Seg48.relationRow1501 rho ∧ Seg48.relationRow1502 rho ∧ Seg48.relationRow1503 rho ∧ Seg48.relationRow1504 rho ∧ Seg48.relationRow1505 rho ∧ Seg48.relationRow1506 rho ∧ Seg48.relationRow1507 rho ∧ Seg48.relationRow1508 rho ∧ Seg48.relationRow1509 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p18, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509⟩

theorem seg48In0_rung46 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33582 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX46 rho, seg48In0AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34254, rho 34255⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX46 rho, seg48In0AccY46 rho⟩ ⟨rho 34254, rho 34255⟩
        ⟨seg48In0AccX47 rho, seg48In0AccY47 rho⟩ ⟨rho 34267, rho 34268⟩ := by
  obtain ⟨r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509⟩ := seg48In0_rows46 rho h
  unfold Seg48.relationRow1497 at r1497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1497

  unfold Seg48.relationRow1498 at r1498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1498

  unfold Seg48.relationRow1499 at r1499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1499

  unfold Seg48.relationRow1500 at r1500

  unfold Seg48.relationRow1501 at r1501

  unfold Seg48.relationRow1502 at r1502

  unfold Seg48.relationRow1503 at r1503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1503

  unfold Seg48.relationRow1504 at r1504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1504

  unfold Seg48.relationRow1505 at r1505

  unfold Seg48.relationRow1506 at r1506

  unfold Seg48.relationRow1507 at r1507

  unfold Seg48.relationRow1508 at r1508

  unfold Seg48.relationRow1509 at r1509

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX47 rho = seg48In0AccX46 rho + rho 34262 := by
    unfold seg48In0AccX47 seg48In0AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 46]

    ring

  have hnexty : seg48In0AccY47 rho = seg48In0AccY46 rho + rho 34263 := by
    unfold seg48In0AccY47 seg48In0AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 46]

    ring

  have ha0 : (rho 34254 + rho 34255) * (seg48In0AccX46 rho + seg48In0AccY46 rho) = rho 34256 := by
    unfold seg48In0AccX46 seg48In0AccY46
    linear_combination r1497
  have ha1 : rho 34255 * seg48In0AccX46 rho = rho 34257 := by
    unfold seg48In0AccX46
    linear_combination r1498
  have ha2 : rho 34254 * seg48In0AccY46 rho = rho 34258 := by
    unfold seg48In0AccY46
    linear_combination r1499
  have ha3 : 3021 * rho 34257 * rho 34258 = rho 34259 := by
    linear_combination r1500
  have ha4 : rho 34260 * (1 + rho 34259) = rho 34257 + rho 34258 := by
    linear_combination r1501
  have ha5 : rho 34261 * (1 - rho 34259) = rho 34256 - rho 34257 - rho 34258 := by
    linear_combination r1502
  have haddx :
      rho 34260 * (1 + 3021 * (rho 34255 * seg48In0AccX46 rho) * (rho 34254 * seg48In0AccY46 rho)) =
        rho 34255 * seg48In0AccX46 rho + rho 34254 * seg48In0AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34261 * (1 - 3021 * (rho 34255 * seg48In0AccX46 rho) * (rho 34254 * seg48In0AccY46 rho)) =
        (-1) * (rho 34255 * seg48In0AccX46 rho) - rho 34254 * seg48In0AccY46 rho +
          (seg48In0AccY46 rho - seg48In0AccX46 rho * (-1)) * (rho 34254 + rho 34255) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34261 * (1 - rho 34259) = rho 34256 - rho 34257 - rho 34258 := ha5
      _ = (-1) * rho 34257 - rho 34258 + (seg48In0AccY46 rho - seg48In0AccX46 rho * (-1)) *
          (rho 34254 + rho 34255) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX47 rho = seg48In0AccX46 rho - Bool.toZMod bit * (seg48In0AccX46 rho - rho 34260) := by
    have hd : rho 34262 = Bool.toZMod bit * (rho 34260 - seg48In0AccX46 rho) := by
      rw [← hbit]
      unfold seg48In0AccX46
      linear_combination -r1503
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY47 rho = seg48In0AccY46 rho - Bool.toZMod bit * (seg48In0AccY46 rho - rho 34261) := by
    have hd : rho 34263 = Bool.toZMod bit * (rho 34261 - seg48In0AccY46 rho) := by
      rw [← hbit]
      unfold seg48In0AccY46
      linear_combination -r1504
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34254 * rho 34255 = rho 34264 := by linear_combination r1505
  have hd1 : rho 34254 * rho 34254 = rho 34265 := by linear_combination r1506
  have hd2 : rho 34255 * rho 34255 = rho 34266 := by linear_combination r1507
  have hd3 : rho 34267 * (rho 34255 * rho 34255 + rho 34254 * rho 34254 * (-1)) =
      2 * (rho 34254 * rho 34255) := by
    rw [hd0, hd1, hd2]
    linear_combination r1508
  have hd4 : rho 34268 * (2 - (rho 34255 * rho 34255 + rho 34254 * rho 34254 * (-1))) =
      rho 34255 * rho 34255 - rho 34254 * rho 34254 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1509
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX46 rho, seg48In0AccY46 rho⟩ ⟨rho 34254, rho 34255⟩
    ⟨rho 34260, rho 34261⟩ ⟨seg48In0AccX47 rho, seg48In0AccY47 rho⟩ ⟨rho 34267, rho 34268⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1510 rho ∧ Seg48.relationRow1511 rho ∧ Seg48.relationRow1512 rho ∧ Seg48.relationRow1513 rho ∧ Seg48.relationRow1514 rho ∧ Seg48.relationRow1515 rho ∧ Seg48.relationRow1516 rho ∧ Seg48.relationRow1517 rho ∧ Seg48.relationRow1518 rho ∧ Seg48.relationRow1519 rho ∧ Seg48.relationRow1520 rho ∧ Seg48.relationRow1521 rho ∧ Seg48.relationRow1522 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p18, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨r1520, r1521, r1522, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519, r1520, r1521, r1522⟩

theorem seg48In0_rung47 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33583 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX47 rho, seg48In0AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34267, rho 34268⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX47 rho, seg48In0AccY47 rho⟩ ⟨rho 34267, rho 34268⟩
        ⟨seg48In0AccX48 rho, seg48In0AccY48 rho⟩ ⟨rho 34280, rho 34281⟩ := by
  obtain ⟨r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519, r1520, r1521, r1522⟩ := seg48In0_rows47 rho h
  unfold Seg48.relationRow1510 at r1510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1510

  unfold Seg48.relationRow1511 at r1511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1511

  unfold Seg48.relationRow1512 at r1512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1512

  unfold Seg48.relationRow1513 at r1513

  unfold Seg48.relationRow1514 at r1514

  unfold Seg48.relationRow1515 at r1515

  unfold Seg48.relationRow1516 at r1516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1516

  unfold Seg48.relationRow1517 at r1517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1517

  unfold Seg48.relationRow1518 at r1518

  unfold Seg48.relationRow1519 at r1519

  unfold Seg48.relationRow1520 at r1520

  unfold Seg48.relationRow1521 at r1521

  unfold Seg48.relationRow1522 at r1522

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX48 rho = seg48In0AccX47 rho + rho 34275 := by
    unfold seg48In0AccX48 seg48In0AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 47]

    ring

  have hnexty : seg48In0AccY48 rho = seg48In0AccY47 rho + rho 34276 := by
    unfold seg48In0AccY48 seg48In0AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 47]

    ring

  have ha0 : (rho 34267 + rho 34268) * (seg48In0AccX47 rho + seg48In0AccY47 rho) = rho 34269 := by
    unfold seg48In0AccX47 seg48In0AccY47
    linear_combination r1510
  have ha1 : rho 34268 * seg48In0AccX47 rho = rho 34270 := by
    unfold seg48In0AccX47
    linear_combination r1511
  have ha2 : rho 34267 * seg48In0AccY47 rho = rho 34271 := by
    unfold seg48In0AccY47
    linear_combination r1512
  have ha3 : 3021 * rho 34270 * rho 34271 = rho 34272 := by
    linear_combination r1513
  have ha4 : rho 34273 * (1 + rho 34272) = rho 34270 + rho 34271 := by
    linear_combination r1514
  have ha5 : rho 34274 * (1 - rho 34272) = rho 34269 - rho 34270 - rho 34271 := by
    linear_combination r1515
  have haddx :
      rho 34273 * (1 + 3021 * (rho 34268 * seg48In0AccX47 rho) * (rho 34267 * seg48In0AccY47 rho)) =
        rho 34268 * seg48In0AccX47 rho + rho 34267 * seg48In0AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34274 * (1 - 3021 * (rho 34268 * seg48In0AccX47 rho) * (rho 34267 * seg48In0AccY47 rho)) =
        (-1) * (rho 34268 * seg48In0AccX47 rho) - rho 34267 * seg48In0AccY47 rho +
          (seg48In0AccY47 rho - seg48In0AccX47 rho * (-1)) * (rho 34267 + rho 34268) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34274 * (1 - rho 34272) = rho 34269 - rho 34270 - rho 34271 := ha5
      _ = (-1) * rho 34270 - rho 34271 + (seg48In0AccY47 rho - seg48In0AccX47 rho * (-1)) *
          (rho 34267 + rho 34268) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX48 rho = seg48In0AccX47 rho - Bool.toZMod bit * (seg48In0AccX47 rho - rho 34273) := by
    have hd : rho 34275 = Bool.toZMod bit * (rho 34273 - seg48In0AccX47 rho) := by
      rw [← hbit]
      unfold seg48In0AccX47
      linear_combination -r1516
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY48 rho = seg48In0AccY47 rho - Bool.toZMod bit * (seg48In0AccY47 rho - rho 34274) := by
    have hd : rho 34276 = Bool.toZMod bit * (rho 34274 - seg48In0AccY47 rho) := by
      rw [← hbit]
      unfold seg48In0AccY47
      linear_combination -r1517
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34267 * rho 34268 = rho 34277 := by linear_combination r1518
  have hd1 : rho 34267 * rho 34267 = rho 34278 := by linear_combination r1519
  have hd2 : rho 34268 * rho 34268 = rho 34279 := by linear_combination r1520
  have hd3 : rho 34280 * (rho 34268 * rho 34268 + rho 34267 * rho 34267 * (-1)) =
      2 * (rho 34267 * rho 34268) := by
    rw [hd0, hd1, hd2]
    linear_combination r1521
  have hd4 : rho 34281 * (2 - (rho 34268 * rho 34268 + rho 34267 * rho 34267 * (-1))) =
      rho 34268 * rho 34268 - rho 34267 * rho 34267 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1522
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX47 rho, seg48In0AccY47 rho⟩ ⟨rho 34267, rho 34268⟩
    ⟨rho 34273, rho 34274⟩ ⟨seg48In0AccX48 rho, seg48In0AccY48 rho⟩ ⟨rho 34280, rho 34281⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1523 rho ∧ Seg48.relationRow1524 rho ∧ Seg48.relationRow1525 rho ∧ Seg48.relationRow1526 rho ∧ Seg48.relationRow1527 rho ∧ Seg48.relationRow1528 rho ∧ Seg48.relationRow1529 rho ∧ Seg48.relationRow1530 rho ∧ Seg48.relationRow1531 rho ∧ Seg48.relationRow1532 rho ∧ Seg48.relationRow1533 rho ∧ Seg48.relationRow1534 rho ∧ Seg48.relationRow1535 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨_, _, _, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535⟩

theorem seg48In0_rung48 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33584 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX48 rho, seg48In0AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34280, rho 34281⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX48 rho, seg48In0AccY48 rho⟩ ⟨rho 34280, rho 34281⟩
        ⟨seg48In0AccX49 rho, seg48In0AccY49 rho⟩ ⟨rho 34293, rho 34294⟩ := by
  obtain ⟨r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535⟩ := seg48In0_rows48 rho h
  unfold Seg48.relationRow1523 at r1523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1523

  unfold Seg48.relationRow1524 at r1524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1524

  unfold Seg48.relationRow1525 at r1525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1525

  unfold Seg48.relationRow1526 at r1526

  unfold Seg48.relationRow1527 at r1527

  unfold Seg48.relationRow1528 at r1528

  unfold Seg48.relationRow1529 at r1529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1529

  unfold Seg48.relationRow1530 at r1530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1530

  unfold Seg48.relationRow1531 at r1531

  unfold Seg48.relationRow1532 at r1532

  unfold Seg48.relationRow1533 at r1533

  unfold Seg48.relationRow1534 at r1534

  unfold Seg48.relationRow1535 at r1535

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX49 rho = seg48In0AccX48 rho + rho 34288 := by
    unfold seg48In0AccX49 seg48In0AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 48]

    ring

  have hnexty : seg48In0AccY49 rho = seg48In0AccY48 rho + rho 34289 := by
    unfold seg48In0AccY49 seg48In0AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 48]

    ring

  have ha0 : (rho 34280 + rho 34281) * (seg48In0AccX48 rho + seg48In0AccY48 rho) = rho 34282 := by
    unfold seg48In0AccX48 seg48In0AccY48
    linear_combination r1523
  have ha1 : rho 34281 * seg48In0AccX48 rho = rho 34283 := by
    unfold seg48In0AccX48
    linear_combination r1524
  have ha2 : rho 34280 * seg48In0AccY48 rho = rho 34284 := by
    unfold seg48In0AccY48
    linear_combination r1525
  have ha3 : 3021 * rho 34283 * rho 34284 = rho 34285 := by
    linear_combination r1526
  have ha4 : rho 34286 * (1 + rho 34285) = rho 34283 + rho 34284 := by
    linear_combination r1527
  have ha5 : rho 34287 * (1 - rho 34285) = rho 34282 - rho 34283 - rho 34284 := by
    linear_combination r1528
  have haddx :
      rho 34286 * (1 + 3021 * (rho 34281 * seg48In0AccX48 rho) * (rho 34280 * seg48In0AccY48 rho)) =
        rho 34281 * seg48In0AccX48 rho + rho 34280 * seg48In0AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34287 * (1 - 3021 * (rho 34281 * seg48In0AccX48 rho) * (rho 34280 * seg48In0AccY48 rho)) =
        (-1) * (rho 34281 * seg48In0AccX48 rho) - rho 34280 * seg48In0AccY48 rho +
          (seg48In0AccY48 rho - seg48In0AccX48 rho * (-1)) * (rho 34280 + rho 34281) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34287 * (1 - rho 34285) = rho 34282 - rho 34283 - rho 34284 := ha5
      _ = (-1) * rho 34283 - rho 34284 + (seg48In0AccY48 rho - seg48In0AccX48 rho * (-1)) *
          (rho 34280 + rho 34281) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX49 rho = seg48In0AccX48 rho - Bool.toZMod bit * (seg48In0AccX48 rho - rho 34286) := by
    have hd : rho 34288 = Bool.toZMod bit * (rho 34286 - seg48In0AccX48 rho) := by
      rw [← hbit]
      unfold seg48In0AccX48
      linear_combination -r1529
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY49 rho = seg48In0AccY48 rho - Bool.toZMod bit * (seg48In0AccY48 rho - rho 34287) := by
    have hd : rho 34289 = Bool.toZMod bit * (rho 34287 - seg48In0AccY48 rho) := by
      rw [← hbit]
      unfold seg48In0AccY48
      linear_combination -r1530
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34280 * rho 34281 = rho 34290 := by linear_combination r1531
  have hd1 : rho 34280 * rho 34280 = rho 34291 := by linear_combination r1532
  have hd2 : rho 34281 * rho 34281 = rho 34292 := by linear_combination r1533
  have hd3 : rho 34293 * (rho 34281 * rho 34281 + rho 34280 * rho 34280 * (-1)) =
      2 * (rho 34280 * rho 34281) := by
    rw [hd0, hd1, hd2]
    linear_combination r1534
  have hd4 : rho 34294 * (2 - (rho 34281 * rho 34281 + rho 34280 * rho 34280 * (-1))) =
      rho 34281 * rho 34281 - rho 34280 * rho 34280 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1535
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX48 rho, seg48In0AccY48 rho⟩ ⟨rho 34280, rho 34281⟩
    ⟨rho 34286, rho 34287⟩ ⟨seg48In0AccX49 rho, seg48In0AccY49 rho⟩ ⟨rho 34293, rho 34294⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1536 rho ∧ Seg48.relationRow1537 rho ∧ Seg48.relationRow1538 rho ∧ Seg48.relationRow1539 rho ∧ Seg48.relationRow1540 rho ∧ Seg48.relationRow1541 rho ∧ Seg48.relationRow1542 rho ∧ Seg48.relationRow1543 rho ∧ Seg48.relationRow1544 rho ∧ Seg48.relationRow1545 rho ∧ Seg48.relationRow1546 rho ∧ Seg48.relationRow1547 rho ∧ Seg48.relationRow1548 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548⟩

theorem seg48In0_rung49 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33585 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX49 rho, seg48In0AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34293, rho 34294⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX49 rho, seg48In0AccY49 rho⟩ ⟨rho 34293, rho 34294⟩
        ⟨seg48In0AccX50 rho, seg48In0AccY50 rho⟩ ⟨rho 34306, rho 34307⟩ := by
  obtain ⟨r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548⟩ := seg48In0_rows49 rho h
  unfold Seg48.relationRow1536 at r1536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1536

  unfold Seg48.relationRow1537 at r1537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1537

  unfold Seg48.relationRow1538 at r1538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1538

  unfold Seg48.relationRow1539 at r1539

  unfold Seg48.relationRow1540 at r1540

  unfold Seg48.relationRow1541 at r1541

  unfold Seg48.relationRow1542 at r1542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1542

  unfold Seg48.relationRow1543 at r1543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1543

  unfold Seg48.relationRow1544 at r1544

  unfold Seg48.relationRow1545 at r1545

  unfold Seg48.relationRow1546 at r1546

  unfold Seg48.relationRow1547 at r1547

  unfold Seg48.relationRow1548 at r1548

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX50 rho = seg48In0AccX49 rho + rho 34301 := by
    unfold seg48In0AccX50 seg48In0AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 49]

    ring

  have hnexty : seg48In0AccY50 rho = seg48In0AccY49 rho + rho 34302 := by
    unfold seg48In0AccY50 seg48In0AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 49]

    ring

  have ha0 : (rho 34293 + rho 34294) * (seg48In0AccX49 rho + seg48In0AccY49 rho) = rho 34295 := by
    unfold seg48In0AccX49 seg48In0AccY49
    linear_combination r1536
  have ha1 : rho 34294 * seg48In0AccX49 rho = rho 34296 := by
    unfold seg48In0AccX49
    linear_combination r1537
  have ha2 : rho 34293 * seg48In0AccY49 rho = rho 34297 := by
    unfold seg48In0AccY49
    linear_combination r1538
  have ha3 : 3021 * rho 34296 * rho 34297 = rho 34298 := by
    linear_combination r1539
  have ha4 : rho 34299 * (1 + rho 34298) = rho 34296 + rho 34297 := by
    linear_combination r1540
  have ha5 : rho 34300 * (1 - rho 34298) = rho 34295 - rho 34296 - rho 34297 := by
    linear_combination r1541
  have haddx :
      rho 34299 * (1 + 3021 * (rho 34294 * seg48In0AccX49 rho) * (rho 34293 * seg48In0AccY49 rho)) =
        rho 34294 * seg48In0AccX49 rho + rho 34293 * seg48In0AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34300 * (1 - 3021 * (rho 34294 * seg48In0AccX49 rho) * (rho 34293 * seg48In0AccY49 rho)) =
        (-1) * (rho 34294 * seg48In0AccX49 rho) - rho 34293 * seg48In0AccY49 rho +
          (seg48In0AccY49 rho - seg48In0AccX49 rho * (-1)) * (rho 34293 + rho 34294) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34300 * (1 - rho 34298) = rho 34295 - rho 34296 - rho 34297 := ha5
      _ = (-1) * rho 34296 - rho 34297 + (seg48In0AccY49 rho - seg48In0AccX49 rho * (-1)) *
          (rho 34293 + rho 34294) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX50 rho = seg48In0AccX49 rho - Bool.toZMod bit * (seg48In0AccX49 rho - rho 34299) := by
    have hd : rho 34301 = Bool.toZMod bit * (rho 34299 - seg48In0AccX49 rho) := by
      rw [← hbit]
      unfold seg48In0AccX49
      linear_combination -r1542
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY50 rho = seg48In0AccY49 rho - Bool.toZMod bit * (seg48In0AccY49 rho - rho 34300) := by
    have hd : rho 34302 = Bool.toZMod bit * (rho 34300 - seg48In0AccY49 rho) := by
      rw [← hbit]
      unfold seg48In0AccY49
      linear_combination -r1543
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34293 * rho 34294 = rho 34303 := by linear_combination r1544
  have hd1 : rho 34293 * rho 34293 = rho 34304 := by linear_combination r1545
  have hd2 : rho 34294 * rho 34294 = rho 34305 := by linear_combination r1546
  have hd3 : rho 34306 * (rho 34294 * rho 34294 + rho 34293 * rho 34293 * (-1)) =
      2 * (rho 34293 * rho 34294) := by
    rw [hd0, hd1, hd2]
    linear_combination r1547
  have hd4 : rho 34307 * (2 - (rho 34294 * rho 34294 + rho 34293 * rho 34293 * (-1))) =
      rho 34294 * rho 34294 - rho 34293 * rho 34293 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1548
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX49 rho, seg48In0AccY49 rho⟩ ⟨rho 34293, rho 34294⟩
    ⟨rho 34299, rho 34300⟩ ⟨seg48In0AccX50 rho, seg48In0AccY50 rho⟩ ⟨rho 34306, rho 34307⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1549 rho ∧ Seg48.relationRow1550 rho ∧ Seg48.relationRow1551 rho ∧ Seg48.relationRow1552 rho ∧ Seg48.relationRow1553 rho ∧ Seg48.relationRow1554 rho ∧ Seg48.relationRow1555 rho ∧ Seg48.relationRow1556 rho ∧ Seg48.relationRow1557 rho ∧ Seg48.relationRow1558 rho ∧ Seg48.relationRow1559 rho ∧ Seg48.relationRow1560 rho ∧ Seg48.relationRow1561 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561⟩

theorem seg48In0_rung50 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33586 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX50 rho, seg48In0AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34306, rho 34307⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX50 rho, seg48In0AccY50 rho⟩ ⟨rho 34306, rho 34307⟩
        ⟨seg48In0AccX51 rho, seg48In0AccY51 rho⟩ ⟨rho 34319, rho 34320⟩ := by
  obtain ⟨r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561⟩ := seg48In0_rows50 rho h
  unfold Seg48.relationRow1549 at r1549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1549

  unfold Seg48.relationRow1550 at r1550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1550

  unfold Seg48.relationRow1551 at r1551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1551

  unfold Seg48.relationRow1552 at r1552

  unfold Seg48.relationRow1553 at r1553

  unfold Seg48.relationRow1554 at r1554

  unfold Seg48.relationRow1555 at r1555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1555

  unfold Seg48.relationRow1556 at r1556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1556

  unfold Seg48.relationRow1557 at r1557

  unfold Seg48.relationRow1558 at r1558

  unfold Seg48.relationRow1559 at r1559

  unfold Seg48.relationRow1560 at r1560

  unfold Seg48.relationRow1561 at r1561

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX51 rho = seg48In0AccX50 rho + rho 34314 := by
    unfold seg48In0AccX51 seg48In0AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 50]

    ring

  have hnexty : seg48In0AccY51 rho = seg48In0AccY50 rho + rho 34315 := by
    unfold seg48In0AccY51 seg48In0AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 50]

    ring

  have ha0 : (rho 34306 + rho 34307) * (seg48In0AccX50 rho + seg48In0AccY50 rho) = rho 34308 := by
    unfold seg48In0AccX50 seg48In0AccY50
    linear_combination r1549
  have ha1 : rho 34307 * seg48In0AccX50 rho = rho 34309 := by
    unfold seg48In0AccX50
    linear_combination r1550
  have ha2 : rho 34306 * seg48In0AccY50 rho = rho 34310 := by
    unfold seg48In0AccY50
    linear_combination r1551
  have ha3 : 3021 * rho 34309 * rho 34310 = rho 34311 := by
    linear_combination r1552
  have ha4 : rho 34312 * (1 + rho 34311) = rho 34309 + rho 34310 := by
    linear_combination r1553
  have ha5 : rho 34313 * (1 - rho 34311) = rho 34308 - rho 34309 - rho 34310 := by
    linear_combination r1554
  have haddx :
      rho 34312 * (1 + 3021 * (rho 34307 * seg48In0AccX50 rho) * (rho 34306 * seg48In0AccY50 rho)) =
        rho 34307 * seg48In0AccX50 rho + rho 34306 * seg48In0AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34313 * (1 - 3021 * (rho 34307 * seg48In0AccX50 rho) * (rho 34306 * seg48In0AccY50 rho)) =
        (-1) * (rho 34307 * seg48In0AccX50 rho) - rho 34306 * seg48In0AccY50 rho +
          (seg48In0AccY50 rho - seg48In0AccX50 rho * (-1)) * (rho 34306 + rho 34307) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34313 * (1 - rho 34311) = rho 34308 - rho 34309 - rho 34310 := ha5
      _ = (-1) * rho 34309 - rho 34310 + (seg48In0AccY50 rho - seg48In0AccX50 rho * (-1)) *
          (rho 34306 + rho 34307) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX51 rho = seg48In0AccX50 rho - Bool.toZMod bit * (seg48In0AccX50 rho - rho 34312) := by
    have hd : rho 34314 = Bool.toZMod bit * (rho 34312 - seg48In0AccX50 rho) := by
      rw [← hbit]
      unfold seg48In0AccX50
      linear_combination -r1555
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY51 rho = seg48In0AccY50 rho - Bool.toZMod bit * (seg48In0AccY50 rho - rho 34313) := by
    have hd : rho 34315 = Bool.toZMod bit * (rho 34313 - seg48In0AccY50 rho) := by
      rw [← hbit]
      unfold seg48In0AccY50
      linear_combination -r1556
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34306 * rho 34307 = rho 34316 := by linear_combination r1557
  have hd1 : rho 34306 * rho 34306 = rho 34317 := by linear_combination r1558
  have hd2 : rho 34307 * rho 34307 = rho 34318 := by linear_combination r1559
  have hd3 : rho 34319 * (rho 34307 * rho 34307 + rho 34306 * rho 34306 * (-1)) =
      2 * (rho 34306 * rho 34307) := by
    rw [hd0, hd1, hd2]
    linear_combination r1560
  have hd4 : rho 34320 * (2 - (rho 34307 * rho 34307 + rho 34306 * rho 34306 * (-1))) =
      rho 34307 * rho 34307 - rho 34306 * rho 34306 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1561
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX50 rho, seg48In0AccY50 rho⟩ ⟨rho 34306, rho 34307⟩
    ⟨rho 34312, rho 34313⟩ ⟨seg48In0AccX51 rho, seg48In0AccY51 rho⟩ ⟨rho 34319, rho 34320⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1562 rho ∧ Seg48.relationRow1563 rho ∧ Seg48.relationRow1564 rho ∧ Seg48.relationRow1565 rho ∧ Seg48.relationRow1566 rho ∧ Seg48.relationRow1567 rho ∧ Seg48.relationRow1568 rho ∧ Seg48.relationRow1569 rho ∧ Seg48.relationRow1570 rho ∧ Seg48.relationRow1571 rho ∧ Seg48.relationRow1572 rho ∧ Seg48.relationRow1573 rho ∧ Seg48.relationRow1574 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574⟩

theorem seg48In0_rung51 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33587 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX51 rho, seg48In0AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34319, rho 34320⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX51 rho, seg48In0AccY51 rho⟩ ⟨rho 34319, rho 34320⟩
        ⟨seg48In0AccX52 rho, seg48In0AccY52 rho⟩ ⟨rho 34332, rho 34333⟩ := by
  obtain ⟨r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574⟩ := seg48In0_rows51 rho h
  unfold Seg48.relationRow1562 at r1562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1562

  unfold Seg48.relationRow1563 at r1563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1563

  unfold Seg48.relationRow1564 at r1564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1564

  unfold Seg48.relationRow1565 at r1565

  unfold Seg48.relationRow1566 at r1566

  unfold Seg48.relationRow1567 at r1567

  unfold Seg48.relationRow1568 at r1568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1568

  unfold Seg48.relationRow1569 at r1569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1569

  unfold Seg48.relationRow1570 at r1570

  unfold Seg48.relationRow1571 at r1571

  unfold Seg48.relationRow1572 at r1572

  unfold Seg48.relationRow1573 at r1573

  unfold Seg48.relationRow1574 at r1574

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX52 rho = seg48In0AccX51 rho + rho 34327 := by
    unfold seg48In0AccX52 seg48In0AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 51]

    ring

  have hnexty : seg48In0AccY52 rho = seg48In0AccY51 rho + rho 34328 := by
    unfold seg48In0AccY52 seg48In0AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 51]

    ring

  have ha0 : (rho 34319 + rho 34320) * (seg48In0AccX51 rho + seg48In0AccY51 rho) = rho 34321 := by
    unfold seg48In0AccX51 seg48In0AccY51
    linear_combination r1562
  have ha1 : rho 34320 * seg48In0AccX51 rho = rho 34322 := by
    unfold seg48In0AccX51
    linear_combination r1563
  have ha2 : rho 34319 * seg48In0AccY51 rho = rho 34323 := by
    unfold seg48In0AccY51
    linear_combination r1564
  have ha3 : 3021 * rho 34322 * rho 34323 = rho 34324 := by
    linear_combination r1565
  have ha4 : rho 34325 * (1 + rho 34324) = rho 34322 + rho 34323 := by
    linear_combination r1566
  have ha5 : rho 34326 * (1 - rho 34324) = rho 34321 - rho 34322 - rho 34323 := by
    linear_combination r1567
  have haddx :
      rho 34325 * (1 + 3021 * (rho 34320 * seg48In0AccX51 rho) * (rho 34319 * seg48In0AccY51 rho)) =
        rho 34320 * seg48In0AccX51 rho + rho 34319 * seg48In0AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34326 * (1 - 3021 * (rho 34320 * seg48In0AccX51 rho) * (rho 34319 * seg48In0AccY51 rho)) =
        (-1) * (rho 34320 * seg48In0AccX51 rho) - rho 34319 * seg48In0AccY51 rho +
          (seg48In0AccY51 rho - seg48In0AccX51 rho * (-1)) * (rho 34319 + rho 34320) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34326 * (1 - rho 34324) = rho 34321 - rho 34322 - rho 34323 := ha5
      _ = (-1) * rho 34322 - rho 34323 + (seg48In0AccY51 rho - seg48In0AccX51 rho * (-1)) *
          (rho 34319 + rho 34320) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX52 rho = seg48In0AccX51 rho - Bool.toZMod bit * (seg48In0AccX51 rho - rho 34325) := by
    have hd : rho 34327 = Bool.toZMod bit * (rho 34325 - seg48In0AccX51 rho) := by
      rw [← hbit]
      unfold seg48In0AccX51
      linear_combination -r1568
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY52 rho = seg48In0AccY51 rho - Bool.toZMod bit * (seg48In0AccY51 rho - rho 34326) := by
    have hd : rho 34328 = Bool.toZMod bit * (rho 34326 - seg48In0AccY51 rho) := by
      rw [← hbit]
      unfold seg48In0AccY51
      linear_combination -r1569
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34319 * rho 34320 = rho 34329 := by linear_combination r1570
  have hd1 : rho 34319 * rho 34319 = rho 34330 := by linear_combination r1571
  have hd2 : rho 34320 * rho 34320 = rho 34331 := by linear_combination r1572
  have hd3 : rho 34332 * (rho 34320 * rho 34320 + rho 34319 * rho 34319 * (-1)) =
      2 * (rho 34319 * rho 34320) := by
    rw [hd0, hd1, hd2]
    linear_combination r1573
  have hd4 : rho 34333 * (2 - (rho 34320 * rho 34320 + rho 34319 * rho 34319 * (-1))) =
      rho 34320 * rho 34320 - rho 34319 * rho 34319 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1574
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX51 rho, seg48In0AccY51 rho⟩ ⟨rho 34319, rho 34320⟩
    ⟨rho 34325, rho 34326⟩ ⟨seg48In0AccX52 rho, seg48In0AccY52 rho⟩ ⟨rho 34332, rho 34333⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1575 rho ∧ Seg48.relationRow1576 rho ∧ Seg48.relationRow1577 rho ∧ Seg48.relationRow1578 rho ∧ Seg48.relationRow1579 rho ∧ Seg48.relationRow1580 rho ∧ Seg48.relationRow1581 rho ∧ Seg48.relationRow1582 rho ∧ Seg48.relationRow1583 rho ∧ Seg48.relationRow1584 rho ∧ Seg48.relationRow1585 rho ∧ Seg48.relationRow1586 rho ∧ Seg48.relationRow1587 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587⟩

theorem seg48In0_rung52 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33588 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX52 rho, seg48In0AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34332, rho 34333⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX52 rho, seg48In0AccY52 rho⟩ ⟨rho 34332, rho 34333⟩
        ⟨seg48In0AccX53 rho, seg48In0AccY53 rho⟩ ⟨rho 34345, rho 34346⟩ := by
  obtain ⟨r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587⟩ := seg48In0_rows52 rho h
  unfold Seg48.relationRow1575 at r1575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1575

  unfold Seg48.relationRow1576 at r1576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1576

  unfold Seg48.relationRow1577 at r1577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1577

  unfold Seg48.relationRow1578 at r1578

  unfold Seg48.relationRow1579 at r1579

  unfold Seg48.relationRow1580 at r1580

  unfold Seg48.relationRow1581 at r1581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1581

  unfold Seg48.relationRow1582 at r1582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1582

  unfold Seg48.relationRow1583 at r1583

  unfold Seg48.relationRow1584 at r1584

  unfold Seg48.relationRow1585 at r1585

  unfold Seg48.relationRow1586 at r1586

  unfold Seg48.relationRow1587 at r1587

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX53 rho = seg48In0AccX52 rho + rho 34340 := by
    unfold seg48In0AccX53 seg48In0AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 52]

    ring

  have hnexty : seg48In0AccY53 rho = seg48In0AccY52 rho + rho 34341 := by
    unfold seg48In0AccY53 seg48In0AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 52]

    ring

  have ha0 : (rho 34332 + rho 34333) * (seg48In0AccX52 rho + seg48In0AccY52 rho) = rho 34334 := by
    unfold seg48In0AccX52 seg48In0AccY52
    linear_combination r1575
  have ha1 : rho 34333 * seg48In0AccX52 rho = rho 34335 := by
    unfold seg48In0AccX52
    linear_combination r1576
  have ha2 : rho 34332 * seg48In0AccY52 rho = rho 34336 := by
    unfold seg48In0AccY52
    linear_combination r1577
  have ha3 : 3021 * rho 34335 * rho 34336 = rho 34337 := by
    linear_combination r1578
  have ha4 : rho 34338 * (1 + rho 34337) = rho 34335 + rho 34336 := by
    linear_combination r1579
  have ha5 : rho 34339 * (1 - rho 34337) = rho 34334 - rho 34335 - rho 34336 := by
    linear_combination r1580
  have haddx :
      rho 34338 * (1 + 3021 * (rho 34333 * seg48In0AccX52 rho) * (rho 34332 * seg48In0AccY52 rho)) =
        rho 34333 * seg48In0AccX52 rho + rho 34332 * seg48In0AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34339 * (1 - 3021 * (rho 34333 * seg48In0AccX52 rho) * (rho 34332 * seg48In0AccY52 rho)) =
        (-1) * (rho 34333 * seg48In0AccX52 rho) - rho 34332 * seg48In0AccY52 rho +
          (seg48In0AccY52 rho - seg48In0AccX52 rho * (-1)) * (rho 34332 + rho 34333) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34339 * (1 - rho 34337) = rho 34334 - rho 34335 - rho 34336 := ha5
      _ = (-1) * rho 34335 - rho 34336 + (seg48In0AccY52 rho - seg48In0AccX52 rho * (-1)) *
          (rho 34332 + rho 34333) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX53 rho = seg48In0AccX52 rho - Bool.toZMod bit * (seg48In0AccX52 rho - rho 34338) := by
    have hd : rho 34340 = Bool.toZMod bit * (rho 34338 - seg48In0AccX52 rho) := by
      rw [← hbit]
      unfold seg48In0AccX52
      linear_combination -r1581
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY53 rho = seg48In0AccY52 rho - Bool.toZMod bit * (seg48In0AccY52 rho - rho 34339) := by
    have hd : rho 34341 = Bool.toZMod bit * (rho 34339 - seg48In0AccY52 rho) := by
      rw [← hbit]
      unfold seg48In0AccY52
      linear_combination -r1582
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34332 * rho 34333 = rho 34342 := by linear_combination r1583
  have hd1 : rho 34332 * rho 34332 = rho 34343 := by linear_combination r1584
  have hd2 : rho 34333 * rho 34333 = rho 34344 := by linear_combination r1585
  have hd3 : rho 34345 * (rho 34333 * rho 34333 + rho 34332 * rho 34332 * (-1)) =
      2 * (rho 34332 * rho 34333) := by
    rw [hd0, hd1, hd2]
    linear_combination r1586
  have hd4 : rho 34346 * (2 - (rho 34333 * rho 34333 + rho 34332 * rho 34332 * (-1))) =
      rho 34333 * rho 34333 - rho 34332 * rho 34332 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1587
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX52 rho, seg48In0AccY52 rho⟩ ⟨rho 34332, rho 34333⟩
    ⟨rho 34338, rho 34339⟩ ⟨seg48In0AccX53 rho, seg48In0AccY53 rho⟩ ⟨rho 34345, rho 34346⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1588 rho ∧ Seg48.relationRow1589 rho ∧ Seg48.relationRow1590 rho ∧ Seg48.relationRow1591 rho ∧ Seg48.relationRow1592 rho ∧ Seg48.relationRow1593 rho ∧ Seg48.relationRow1594 rho ∧ Seg48.relationRow1595 rho ∧ Seg48.relationRow1596 rho ∧ Seg48.relationRow1597 rho ∧ Seg48.relationRow1598 rho ∧ Seg48.relationRow1599 rho ∧ Seg48.relationRow1600 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p19,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨r1600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600⟩

theorem seg48In0_rung53 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33589 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX53 rho, seg48In0AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34345, rho 34346⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX53 rho, seg48In0AccY53 rho⟩ ⟨rho 34345, rho 34346⟩
        ⟨seg48In0AccX54 rho, seg48In0AccY54 rho⟩ ⟨rho 34358, rho 34359⟩ := by
  obtain ⟨r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600⟩ := seg48In0_rows53 rho h
  unfold Seg48.relationRow1588 at r1588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1588

  unfold Seg48.relationRow1589 at r1589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1589

  unfold Seg48.relationRow1590 at r1590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1590

  unfold Seg48.relationRow1591 at r1591

  unfold Seg48.relationRow1592 at r1592

  unfold Seg48.relationRow1593 at r1593

  unfold Seg48.relationRow1594 at r1594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1594

  unfold Seg48.relationRow1595 at r1595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1595

  unfold Seg48.relationRow1596 at r1596

  unfold Seg48.relationRow1597 at r1597

  unfold Seg48.relationRow1598 at r1598

  unfold Seg48.relationRow1599 at r1599

  unfold Seg48.relationRow1600 at r1600

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX54 rho = seg48In0AccX53 rho + rho 34353 := by
    unfold seg48In0AccX54 seg48In0AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 53]

    ring

  have hnexty : seg48In0AccY54 rho = seg48In0AccY53 rho + rho 34354 := by
    unfold seg48In0AccY54 seg48In0AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 53]

    ring

  have ha0 : (rho 34345 + rho 34346) * (seg48In0AccX53 rho + seg48In0AccY53 rho) = rho 34347 := by
    unfold seg48In0AccX53 seg48In0AccY53
    linear_combination r1588
  have ha1 : rho 34346 * seg48In0AccX53 rho = rho 34348 := by
    unfold seg48In0AccX53
    linear_combination r1589
  have ha2 : rho 34345 * seg48In0AccY53 rho = rho 34349 := by
    unfold seg48In0AccY53
    linear_combination r1590
  have ha3 : 3021 * rho 34348 * rho 34349 = rho 34350 := by
    linear_combination r1591
  have ha4 : rho 34351 * (1 + rho 34350) = rho 34348 + rho 34349 := by
    linear_combination r1592
  have ha5 : rho 34352 * (1 - rho 34350) = rho 34347 - rho 34348 - rho 34349 := by
    linear_combination r1593
  have haddx :
      rho 34351 * (1 + 3021 * (rho 34346 * seg48In0AccX53 rho) * (rho 34345 * seg48In0AccY53 rho)) =
        rho 34346 * seg48In0AccX53 rho + rho 34345 * seg48In0AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34352 * (1 - 3021 * (rho 34346 * seg48In0AccX53 rho) * (rho 34345 * seg48In0AccY53 rho)) =
        (-1) * (rho 34346 * seg48In0AccX53 rho) - rho 34345 * seg48In0AccY53 rho +
          (seg48In0AccY53 rho - seg48In0AccX53 rho * (-1)) * (rho 34345 + rho 34346) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34352 * (1 - rho 34350) = rho 34347 - rho 34348 - rho 34349 := ha5
      _ = (-1) * rho 34348 - rho 34349 + (seg48In0AccY53 rho - seg48In0AccX53 rho * (-1)) *
          (rho 34345 + rho 34346) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX54 rho = seg48In0AccX53 rho - Bool.toZMod bit * (seg48In0AccX53 rho - rho 34351) := by
    have hd : rho 34353 = Bool.toZMod bit * (rho 34351 - seg48In0AccX53 rho) := by
      rw [← hbit]
      unfold seg48In0AccX53
      linear_combination -r1594
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY54 rho = seg48In0AccY53 rho - Bool.toZMod bit * (seg48In0AccY53 rho - rho 34352) := by
    have hd : rho 34354 = Bool.toZMod bit * (rho 34352 - seg48In0AccY53 rho) := by
      rw [← hbit]
      unfold seg48In0AccY53
      linear_combination -r1595
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34345 * rho 34346 = rho 34355 := by linear_combination r1596
  have hd1 : rho 34345 * rho 34345 = rho 34356 := by linear_combination r1597
  have hd2 : rho 34346 * rho 34346 = rho 34357 := by linear_combination r1598
  have hd3 : rho 34358 * (rho 34346 * rho 34346 + rho 34345 * rho 34345 * (-1)) =
      2 * (rho 34345 * rho 34346) := by
    rw [hd0, hd1, hd2]
    linear_combination r1599
  have hd4 : rho 34359 * (2 - (rho 34346 * rho 34346 + rho 34345 * rho 34345 * (-1))) =
      rho 34346 * rho 34346 - rho 34345 * rho 34345 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1600
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX53 rho, seg48In0AccY53 rho⟩ ⟨rho 34345, rho 34346⟩
    ⟨rho 34351, rho 34352⟩ ⟨seg48In0AccX54 rho, seg48In0AccY54 rho⟩ ⟨rho 34358, rho 34359⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1601 rho ∧ Seg48.relationRow1602 rho ∧ Seg48.relationRow1603 rho ∧ Seg48.relationRow1604 rho ∧ Seg48.relationRow1605 rho ∧ Seg48.relationRow1606 rho ∧ Seg48.relationRow1607 rho ∧ Seg48.relationRow1608 rho ∧ Seg48.relationRow1609 rho ∧ Seg48.relationRow1610 rho ∧ Seg48.relationRow1611 rho ∧ Seg48.relationRow1612 rho ∧ Seg48.relationRow1613 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart20 at p20

  rcases p20 with ⟨_, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613⟩

theorem seg48In0_rung54 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33590 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX54 rho, seg48In0AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34358, rho 34359⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX54 rho, seg48In0AccY54 rho⟩ ⟨rho 34358, rho 34359⟩
        ⟨seg48In0AccX55 rho, seg48In0AccY55 rho⟩ ⟨rho 34371, rho 34372⟩ := by
  obtain ⟨r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613⟩ := seg48In0_rows54 rho h
  unfold Seg48.relationRow1601 at r1601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1601

  unfold Seg48.relationRow1602 at r1602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1602

  unfold Seg48.relationRow1603 at r1603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1603

  unfold Seg48.relationRow1604 at r1604

  unfold Seg48.relationRow1605 at r1605

  unfold Seg48.relationRow1606 at r1606

  unfold Seg48.relationRow1607 at r1607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1607

  unfold Seg48.relationRow1608 at r1608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1608

  unfold Seg48.relationRow1609 at r1609

  unfold Seg48.relationRow1610 at r1610

  unfold Seg48.relationRow1611 at r1611

  unfold Seg48.relationRow1612 at r1612

  unfold Seg48.relationRow1613 at r1613

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX55 rho = seg48In0AccX54 rho + rho 34366 := by
    unfold seg48In0AccX55 seg48In0AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 54]

    ring

  have hnexty : seg48In0AccY55 rho = seg48In0AccY54 rho + rho 34367 := by
    unfold seg48In0AccY55 seg48In0AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 54]

    ring

  have ha0 : (rho 34358 + rho 34359) * (seg48In0AccX54 rho + seg48In0AccY54 rho) = rho 34360 := by
    unfold seg48In0AccX54 seg48In0AccY54
    linear_combination r1601
  have ha1 : rho 34359 * seg48In0AccX54 rho = rho 34361 := by
    unfold seg48In0AccX54
    linear_combination r1602
  have ha2 : rho 34358 * seg48In0AccY54 rho = rho 34362 := by
    unfold seg48In0AccY54
    linear_combination r1603
  have ha3 : 3021 * rho 34361 * rho 34362 = rho 34363 := by
    linear_combination r1604
  have ha4 : rho 34364 * (1 + rho 34363) = rho 34361 + rho 34362 := by
    linear_combination r1605
  have ha5 : rho 34365 * (1 - rho 34363) = rho 34360 - rho 34361 - rho 34362 := by
    linear_combination r1606
  have haddx :
      rho 34364 * (1 + 3021 * (rho 34359 * seg48In0AccX54 rho) * (rho 34358 * seg48In0AccY54 rho)) =
        rho 34359 * seg48In0AccX54 rho + rho 34358 * seg48In0AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34365 * (1 - 3021 * (rho 34359 * seg48In0AccX54 rho) * (rho 34358 * seg48In0AccY54 rho)) =
        (-1) * (rho 34359 * seg48In0AccX54 rho) - rho 34358 * seg48In0AccY54 rho +
          (seg48In0AccY54 rho - seg48In0AccX54 rho * (-1)) * (rho 34358 + rho 34359) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34365 * (1 - rho 34363) = rho 34360 - rho 34361 - rho 34362 := ha5
      _ = (-1) * rho 34361 - rho 34362 + (seg48In0AccY54 rho - seg48In0AccX54 rho * (-1)) *
          (rho 34358 + rho 34359) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX55 rho = seg48In0AccX54 rho - Bool.toZMod bit * (seg48In0AccX54 rho - rho 34364) := by
    have hd : rho 34366 = Bool.toZMod bit * (rho 34364 - seg48In0AccX54 rho) := by
      rw [← hbit]
      unfold seg48In0AccX54
      linear_combination -r1607
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY55 rho = seg48In0AccY54 rho - Bool.toZMod bit * (seg48In0AccY54 rho - rho 34365) := by
    have hd : rho 34367 = Bool.toZMod bit * (rho 34365 - seg48In0AccY54 rho) := by
      rw [← hbit]
      unfold seg48In0AccY54
      linear_combination -r1608
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34358 * rho 34359 = rho 34368 := by linear_combination r1609
  have hd1 : rho 34358 * rho 34358 = rho 34369 := by linear_combination r1610
  have hd2 : rho 34359 * rho 34359 = rho 34370 := by linear_combination r1611
  have hd3 : rho 34371 * (rho 34359 * rho 34359 + rho 34358 * rho 34358 * (-1)) =
      2 * (rho 34358 * rho 34359) := by
    rw [hd0, hd1, hd2]
    linear_combination r1612
  have hd4 : rho 34372 * (2 - (rho 34359 * rho 34359 + rho 34358 * rho 34358 * (-1))) =
      rho 34359 * rho 34359 - rho 34358 * rho 34358 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1613
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX54 rho, seg48In0AccY54 rho⟩ ⟨rho 34358, rho 34359⟩
    ⟨rho 34364, rho 34365⟩ ⟨seg48In0AccX55 rho, seg48In0AccY55 rho⟩ ⟨rho 34371, rho 34372⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c4 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg48In0_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg48In0_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg48In0_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg48In0_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg48In0_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg48In0_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg48In0_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg48In0_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg48In0_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg48In0_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
