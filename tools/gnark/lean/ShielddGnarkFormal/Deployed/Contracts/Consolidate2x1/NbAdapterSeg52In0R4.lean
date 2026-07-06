import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1471 rho ∧ Seg52.relationRow1472 rho ∧ Seg52.relationRow1473 rho ∧ Seg52.relationRow1474 rho ∧ Seg52.relationRow1475 rho ∧ Seg52.relationRow1476 rho ∧ Seg52.relationRow1477 rho ∧ Seg52.relationRow1478 rho ∧ Seg52.relationRow1479 rho ∧ Seg52.relationRow1480 rho ∧ Seg52.relationRow1481 rho ∧ Seg52.relationRow1482 rho ∧ Seg52.relationRow1483 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483⟩

theorem seg52In0_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45212 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45860, rho 45861⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 45860, rho 45861⟩
        ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 45873, rho 45874⟩ := by
  obtain ⟨r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, r1483⟩ := seg52In0_rows44 rho h
  unfold Seg52.relationRow1471 at r1471

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1471

  unfold Seg52.relationRow1472 at r1472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1472

  unfold Seg52.relationRow1473 at r1473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1473

  unfold Seg52.relationRow1474 at r1474

  unfold Seg52.relationRow1475 at r1475

  unfold Seg52.relationRow1476 at r1476

  unfold Seg52.relationRow1477 at r1477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1477

  unfold Seg52.relationRow1478 at r1478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1478

  unfold Seg52.relationRow1479 at r1479

  unfold Seg52.relationRow1480 at r1480

  unfold Seg52.relationRow1481 at r1481

  unfold Seg52.relationRow1482 at r1482

  unfold Seg52.relationRow1483 at r1483

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX45 rho = seg52In0AccX44 rho + rho 45868 := by
    unfold seg52In0AccX45 seg52In0AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 44]

    ring

  have hnexty : seg52In0AccY45 rho = seg52In0AccY44 rho + rho 45869 := by
    unfold seg52In0AccY45 seg52In0AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 44]

    ring

  have ha0 : (rho 45860 + rho 45861) * (seg52In0AccX44 rho + seg52In0AccY44 rho) = rho 45862 := by
    unfold seg52In0AccX44 seg52In0AccY44
    linear_combination r1471
  have ha1 : rho 45861 * seg52In0AccX44 rho = rho 45863 := by
    unfold seg52In0AccX44
    linear_combination r1472
  have ha2 : rho 45860 * seg52In0AccY44 rho = rho 45864 := by
    unfold seg52In0AccY44
    linear_combination r1473
  have ha3 : 3021 * rho 45863 * rho 45864 = rho 45865 := by
    linear_combination r1474
  have ha4 : rho 45866 * (1 + rho 45865) = rho 45863 + rho 45864 := by
    linear_combination r1475
  have ha5 : rho 45867 * (1 - rho 45865) = rho 45862 - rho 45863 - rho 45864 := by
    linear_combination r1476
  have haddx :
      rho 45866 * (1 + 3021 * (rho 45861 * seg52In0AccX44 rho) * (rho 45860 * seg52In0AccY44 rho)) =
        rho 45861 * seg52In0AccX44 rho + rho 45860 * seg52In0AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45867 * (1 - 3021 * (rho 45861 * seg52In0AccX44 rho) * (rho 45860 * seg52In0AccY44 rho)) =
        (-1) * (rho 45861 * seg52In0AccX44 rho) - rho 45860 * seg52In0AccY44 rho +
          (seg52In0AccY44 rho - seg52In0AccX44 rho * (-1)) * (rho 45860 + rho 45861) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45867 * (1 - rho 45865) = rho 45862 - rho 45863 - rho 45864 := ha5
      _ = (-1) * rho 45863 - rho 45864 + (seg52In0AccY44 rho - seg52In0AccX44 rho * (-1)) *
          (rho 45860 + rho 45861) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX45 rho = seg52In0AccX44 rho - Bool.toZMod bit * (seg52In0AccX44 rho - rho 45866) := by
    have hd : rho 45868 = Bool.toZMod bit * (rho 45866 - seg52In0AccX44 rho) := by
      rw [← hbit]
      unfold seg52In0AccX44
      linear_combination -r1477
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY45 rho = seg52In0AccY44 rho - Bool.toZMod bit * (seg52In0AccY44 rho - rho 45867) := by
    have hd : rho 45869 = Bool.toZMod bit * (rho 45867 - seg52In0AccY44 rho) := by
      rw [← hbit]
      unfold seg52In0AccY44
      linear_combination -r1478
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45860 * rho 45861 = rho 45870 := by linear_combination r1479
  have hd1 : rho 45860 * rho 45860 = rho 45871 := by linear_combination r1480
  have hd2 : rho 45861 * rho 45861 = rho 45872 := by linear_combination r1481
  have hd3 : rho 45873 * (rho 45861 * rho 45861 + rho 45860 * rho 45860 * (-1)) =
      2 * (rho 45860 * rho 45861) := by
    rw [hd0, hd1, hd2]
    linear_combination r1482
  have hd4 : rho 45874 * (2 - (rho 45861 * rho 45861 + rho 45860 * rho 45860 * (-1))) =
      rho 45861 * rho 45861 - rho 45860 * rho 45860 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1483
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 45860, rho 45861⟩
    ⟨rho 45866, rho 45867⟩ ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 45873, rho 45874⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1484 rho ∧ Seg52.relationRow1485 rho ∧ Seg52.relationRow1486 rho ∧ Seg52.relationRow1487 rho ∧ Seg52.relationRow1488 rho ∧ Seg52.relationRow1489 rho ∧ Seg52.relationRow1490 rho ∧ Seg52.relationRow1491 rho ∧ Seg52.relationRow1492 rho ∧ Seg52.relationRow1493 rho ∧ Seg52.relationRow1494 rho ∧ Seg52.relationRow1495 rho ∧ Seg52.relationRow1496 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496⟩

theorem seg52In0_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45213 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45873, rho 45874⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 45873, rho 45874⟩
        ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 45886, rho 45887⟩ := by
  obtain ⟨r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496⟩ := seg52In0_rows45 rho h
  unfold Seg52.relationRow1484 at r1484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1484

  unfold Seg52.relationRow1485 at r1485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1485

  unfold Seg52.relationRow1486 at r1486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1486

  unfold Seg52.relationRow1487 at r1487

  unfold Seg52.relationRow1488 at r1488

  unfold Seg52.relationRow1489 at r1489

  unfold Seg52.relationRow1490 at r1490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1490

  unfold Seg52.relationRow1491 at r1491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1491

  unfold Seg52.relationRow1492 at r1492

  unfold Seg52.relationRow1493 at r1493

  unfold Seg52.relationRow1494 at r1494

  unfold Seg52.relationRow1495 at r1495

  unfold Seg52.relationRow1496 at r1496

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX46 rho = seg52In0AccX45 rho + rho 45881 := by
    unfold seg52In0AccX46 seg52In0AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 45]

    ring

  have hnexty : seg52In0AccY46 rho = seg52In0AccY45 rho + rho 45882 := by
    unfold seg52In0AccY46 seg52In0AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 45]

    ring

  have ha0 : (rho 45873 + rho 45874) * (seg52In0AccX45 rho + seg52In0AccY45 rho) = rho 45875 := by
    unfold seg52In0AccX45 seg52In0AccY45
    linear_combination r1484
  have ha1 : rho 45874 * seg52In0AccX45 rho = rho 45876 := by
    unfold seg52In0AccX45
    linear_combination r1485
  have ha2 : rho 45873 * seg52In0AccY45 rho = rho 45877 := by
    unfold seg52In0AccY45
    linear_combination r1486
  have ha3 : 3021 * rho 45876 * rho 45877 = rho 45878 := by
    linear_combination r1487
  have ha4 : rho 45879 * (1 + rho 45878) = rho 45876 + rho 45877 := by
    linear_combination r1488
  have ha5 : rho 45880 * (1 - rho 45878) = rho 45875 - rho 45876 - rho 45877 := by
    linear_combination r1489
  have haddx :
      rho 45879 * (1 + 3021 * (rho 45874 * seg52In0AccX45 rho) * (rho 45873 * seg52In0AccY45 rho)) =
        rho 45874 * seg52In0AccX45 rho + rho 45873 * seg52In0AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45880 * (1 - 3021 * (rho 45874 * seg52In0AccX45 rho) * (rho 45873 * seg52In0AccY45 rho)) =
        (-1) * (rho 45874 * seg52In0AccX45 rho) - rho 45873 * seg52In0AccY45 rho +
          (seg52In0AccY45 rho - seg52In0AccX45 rho * (-1)) * (rho 45873 + rho 45874) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45880 * (1 - rho 45878) = rho 45875 - rho 45876 - rho 45877 := ha5
      _ = (-1) * rho 45876 - rho 45877 + (seg52In0AccY45 rho - seg52In0AccX45 rho * (-1)) *
          (rho 45873 + rho 45874) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX46 rho = seg52In0AccX45 rho - Bool.toZMod bit * (seg52In0AccX45 rho - rho 45879) := by
    have hd : rho 45881 = Bool.toZMod bit * (rho 45879 - seg52In0AccX45 rho) := by
      rw [← hbit]
      unfold seg52In0AccX45
      linear_combination -r1490
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY46 rho = seg52In0AccY45 rho - Bool.toZMod bit * (seg52In0AccY45 rho - rho 45880) := by
    have hd : rho 45882 = Bool.toZMod bit * (rho 45880 - seg52In0AccY45 rho) := by
      rw [← hbit]
      unfold seg52In0AccY45
      linear_combination -r1491
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45873 * rho 45874 = rho 45883 := by linear_combination r1492
  have hd1 : rho 45873 * rho 45873 = rho 45884 := by linear_combination r1493
  have hd2 : rho 45874 * rho 45874 = rho 45885 := by linear_combination r1494
  have hd3 : rho 45886 * (rho 45874 * rho 45874 + rho 45873 * rho 45873 * (-1)) =
      2 * (rho 45873 * rho 45874) := by
    rw [hd0, hd1, hd2]
    linear_combination r1495
  have hd4 : rho 45887 * (2 - (rho 45874 * rho 45874 + rho 45873 * rho 45873 * (-1))) =
      rho 45874 * rho 45874 - rho 45873 * rho 45873 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1496
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 45873, rho 45874⟩
    ⟨rho 45879, rho 45880⟩ ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 45886, rho 45887⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1497 rho ∧ Seg52.relationRow1498 rho ∧ Seg52.relationRow1499 rho ∧ Seg52.relationRow1500 rho ∧ Seg52.relationRow1501 rho ∧ Seg52.relationRow1502 rho ∧ Seg52.relationRow1503 rho ∧ Seg52.relationRow1504 rho ∧ Seg52.relationRow1505 rho ∧ Seg52.relationRow1506 rho ∧ Seg52.relationRow1507 rho ∧ Seg52.relationRow1508 rho ∧ Seg52.relationRow1509 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509⟩

theorem seg52In0_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45214 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45886, rho 45887⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 45886, rho 45887⟩
        ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 45899, rho 45900⟩ := by
  obtain ⟨r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, r1505, r1506, r1507, r1508, r1509⟩ := seg52In0_rows46 rho h
  unfold Seg52.relationRow1497 at r1497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1497

  unfold Seg52.relationRow1498 at r1498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1498

  unfold Seg52.relationRow1499 at r1499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1499

  unfold Seg52.relationRow1500 at r1500

  unfold Seg52.relationRow1501 at r1501

  unfold Seg52.relationRow1502 at r1502

  unfold Seg52.relationRow1503 at r1503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1503

  unfold Seg52.relationRow1504 at r1504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1504

  unfold Seg52.relationRow1505 at r1505

  unfold Seg52.relationRow1506 at r1506

  unfold Seg52.relationRow1507 at r1507

  unfold Seg52.relationRow1508 at r1508

  unfold Seg52.relationRow1509 at r1509

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX47 rho = seg52In0AccX46 rho + rho 45894 := by
    unfold seg52In0AccX47 seg52In0AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 46]

    ring

  have hnexty : seg52In0AccY47 rho = seg52In0AccY46 rho + rho 45895 := by
    unfold seg52In0AccY47 seg52In0AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 46]

    ring

  have ha0 : (rho 45886 + rho 45887) * (seg52In0AccX46 rho + seg52In0AccY46 rho) = rho 45888 := by
    unfold seg52In0AccX46 seg52In0AccY46
    linear_combination r1497
  have ha1 : rho 45887 * seg52In0AccX46 rho = rho 45889 := by
    unfold seg52In0AccX46
    linear_combination r1498
  have ha2 : rho 45886 * seg52In0AccY46 rho = rho 45890 := by
    unfold seg52In0AccY46
    linear_combination r1499
  have ha3 : 3021 * rho 45889 * rho 45890 = rho 45891 := by
    linear_combination r1500
  have ha4 : rho 45892 * (1 + rho 45891) = rho 45889 + rho 45890 := by
    linear_combination r1501
  have ha5 : rho 45893 * (1 - rho 45891) = rho 45888 - rho 45889 - rho 45890 := by
    linear_combination r1502
  have haddx :
      rho 45892 * (1 + 3021 * (rho 45887 * seg52In0AccX46 rho) * (rho 45886 * seg52In0AccY46 rho)) =
        rho 45887 * seg52In0AccX46 rho + rho 45886 * seg52In0AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45893 * (1 - 3021 * (rho 45887 * seg52In0AccX46 rho) * (rho 45886 * seg52In0AccY46 rho)) =
        (-1) * (rho 45887 * seg52In0AccX46 rho) - rho 45886 * seg52In0AccY46 rho +
          (seg52In0AccY46 rho - seg52In0AccX46 rho * (-1)) * (rho 45886 + rho 45887) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45893 * (1 - rho 45891) = rho 45888 - rho 45889 - rho 45890 := ha5
      _ = (-1) * rho 45889 - rho 45890 + (seg52In0AccY46 rho - seg52In0AccX46 rho * (-1)) *
          (rho 45886 + rho 45887) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX47 rho = seg52In0AccX46 rho - Bool.toZMod bit * (seg52In0AccX46 rho - rho 45892) := by
    have hd : rho 45894 = Bool.toZMod bit * (rho 45892 - seg52In0AccX46 rho) := by
      rw [← hbit]
      unfold seg52In0AccX46
      linear_combination -r1503
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY47 rho = seg52In0AccY46 rho - Bool.toZMod bit * (seg52In0AccY46 rho - rho 45893) := by
    have hd : rho 45895 = Bool.toZMod bit * (rho 45893 - seg52In0AccY46 rho) := by
      rw [← hbit]
      unfold seg52In0AccY46
      linear_combination -r1504
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45886 * rho 45887 = rho 45896 := by linear_combination r1505
  have hd1 : rho 45886 * rho 45886 = rho 45897 := by linear_combination r1506
  have hd2 : rho 45887 * rho 45887 = rho 45898 := by linear_combination r1507
  have hd3 : rho 45899 * (rho 45887 * rho 45887 + rho 45886 * rho 45886 * (-1)) =
      2 * (rho 45886 * rho 45887) := by
    rw [hd0, hd1, hd2]
    linear_combination r1508
  have hd4 : rho 45900 * (2 - (rho 45887 * rho 45887 + rho 45886 * rho 45886 * (-1))) =
      rho 45887 * rho 45887 - rho 45886 * rho 45886 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1509
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 45886, rho 45887⟩
    ⟨rho 45892, rho 45893⟩ ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 45899, rho 45900⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1510 rho ∧ Seg52.relationRow1511 rho ∧ Seg52.relationRow1512 rho ∧ Seg52.relationRow1513 rho ∧ Seg52.relationRow1514 rho ∧ Seg52.relationRow1515 rho ∧ Seg52.relationRow1516 rho ∧ Seg52.relationRow1517 rho ∧ Seg52.relationRow1518 rho ∧ Seg52.relationRow1519 rho ∧ Seg52.relationRow1520 rho ∧ Seg52.relationRow1521 rho ∧ Seg52.relationRow1522 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨r1520, r1521, r1522, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519, r1520, r1521, r1522⟩

theorem seg52In0_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45215 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45899, rho 45900⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 45899, rho 45900⟩
        ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 45912, rho 45913⟩ := by
  obtain ⟨r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519, r1520, r1521, r1522⟩ := seg52In0_rows47 rho h
  unfold Seg52.relationRow1510 at r1510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1510

  unfold Seg52.relationRow1511 at r1511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1511

  unfold Seg52.relationRow1512 at r1512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1512

  unfold Seg52.relationRow1513 at r1513

  unfold Seg52.relationRow1514 at r1514

  unfold Seg52.relationRow1515 at r1515

  unfold Seg52.relationRow1516 at r1516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1516

  unfold Seg52.relationRow1517 at r1517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1517

  unfold Seg52.relationRow1518 at r1518

  unfold Seg52.relationRow1519 at r1519

  unfold Seg52.relationRow1520 at r1520

  unfold Seg52.relationRow1521 at r1521

  unfold Seg52.relationRow1522 at r1522

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX48 rho = seg52In0AccX47 rho + rho 45907 := by
    unfold seg52In0AccX48 seg52In0AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 47]

    ring

  have hnexty : seg52In0AccY48 rho = seg52In0AccY47 rho + rho 45908 := by
    unfold seg52In0AccY48 seg52In0AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 47]

    ring

  have ha0 : (rho 45899 + rho 45900) * (seg52In0AccX47 rho + seg52In0AccY47 rho) = rho 45901 := by
    unfold seg52In0AccX47 seg52In0AccY47
    linear_combination r1510
  have ha1 : rho 45900 * seg52In0AccX47 rho = rho 45902 := by
    unfold seg52In0AccX47
    linear_combination r1511
  have ha2 : rho 45899 * seg52In0AccY47 rho = rho 45903 := by
    unfold seg52In0AccY47
    linear_combination r1512
  have ha3 : 3021 * rho 45902 * rho 45903 = rho 45904 := by
    linear_combination r1513
  have ha4 : rho 45905 * (1 + rho 45904) = rho 45902 + rho 45903 := by
    linear_combination r1514
  have ha5 : rho 45906 * (1 - rho 45904) = rho 45901 - rho 45902 - rho 45903 := by
    linear_combination r1515
  have haddx :
      rho 45905 * (1 + 3021 * (rho 45900 * seg52In0AccX47 rho) * (rho 45899 * seg52In0AccY47 rho)) =
        rho 45900 * seg52In0AccX47 rho + rho 45899 * seg52In0AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45906 * (1 - 3021 * (rho 45900 * seg52In0AccX47 rho) * (rho 45899 * seg52In0AccY47 rho)) =
        (-1) * (rho 45900 * seg52In0AccX47 rho) - rho 45899 * seg52In0AccY47 rho +
          (seg52In0AccY47 rho - seg52In0AccX47 rho * (-1)) * (rho 45899 + rho 45900) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45906 * (1 - rho 45904) = rho 45901 - rho 45902 - rho 45903 := ha5
      _ = (-1) * rho 45902 - rho 45903 + (seg52In0AccY47 rho - seg52In0AccX47 rho * (-1)) *
          (rho 45899 + rho 45900) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX48 rho = seg52In0AccX47 rho - Bool.toZMod bit * (seg52In0AccX47 rho - rho 45905) := by
    have hd : rho 45907 = Bool.toZMod bit * (rho 45905 - seg52In0AccX47 rho) := by
      rw [← hbit]
      unfold seg52In0AccX47
      linear_combination -r1516
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY48 rho = seg52In0AccY47 rho - Bool.toZMod bit * (seg52In0AccY47 rho - rho 45906) := by
    have hd : rho 45908 = Bool.toZMod bit * (rho 45906 - seg52In0AccY47 rho) := by
      rw [← hbit]
      unfold seg52In0AccY47
      linear_combination -r1517
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45899 * rho 45900 = rho 45909 := by linear_combination r1518
  have hd1 : rho 45899 * rho 45899 = rho 45910 := by linear_combination r1519
  have hd2 : rho 45900 * rho 45900 = rho 45911 := by linear_combination r1520
  have hd3 : rho 45912 * (rho 45900 * rho 45900 + rho 45899 * rho 45899 * (-1)) =
      2 * (rho 45899 * rho 45900) := by
    rw [hd0, hd1, hd2]
    linear_combination r1521
  have hd4 : rho 45913 * (2 - (rho 45900 * rho 45900 + rho 45899 * rho 45899 * (-1))) =
      rho 45900 * rho 45900 - rho 45899 * rho 45899 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1522
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 45899, rho 45900⟩
    ⟨rho 45905, rho 45906⟩ ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 45912, rho 45913⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1523 rho ∧ Seg52.relationRow1524 rho ∧ Seg52.relationRow1525 rho ∧ Seg52.relationRow1526 rho ∧ Seg52.relationRow1527 rho ∧ Seg52.relationRow1528 rho ∧ Seg52.relationRow1529 rho ∧ Seg52.relationRow1530 rho ∧ Seg52.relationRow1531 rho ∧ Seg52.relationRow1532 rho ∧ Seg52.relationRow1533 rho ∧ Seg52.relationRow1534 rho ∧ Seg52.relationRow1535 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535⟩

theorem seg52In0_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45216 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45912, rho 45913⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 45912, rho 45913⟩
        ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 45925, rho 45926⟩ := by
  obtain ⟨r1523, r1524, r1525, r1526, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535⟩ := seg52In0_rows48 rho h
  unfold Seg52.relationRow1523 at r1523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1523

  unfold Seg52.relationRow1524 at r1524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1524

  unfold Seg52.relationRow1525 at r1525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1525

  unfold Seg52.relationRow1526 at r1526

  unfold Seg52.relationRow1527 at r1527

  unfold Seg52.relationRow1528 at r1528

  unfold Seg52.relationRow1529 at r1529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1529

  unfold Seg52.relationRow1530 at r1530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1530

  unfold Seg52.relationRow1531 at r1531

  unfold Seg52.relationRow1532 at r1532

  unfold Seg52.relationRow1533 at r1533

  unfold Seg52.relationRow1534 at r1534

  unfold Seg52.relationRow1535 at r1535

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX49 rho = seg52In0AccX48 rho + rho 45920 := by
    unfold seg52In0AccX49 seg52In0AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 48]

    ring

  have hnexty : seg52In0AccY49 rho = seg52In0AccY48 rho + rho 45921 := by
    unfold seg52In0AccY49 seg52In0AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 48]

    ring

  have ha0 : (rho 45912 + rho 45913) * (seg52In0AccX48 rho + seg52In0AccY48 rho) = rho 45914 := by
    unfold seg52In0AccX48 seg52In0AccY48
    linear_combination r1523
  have ha1 : rho 45913 * seg52In0AccX48 rho = rho 45915 := by
    unfold seg52In0AccX48
    linear_combination r1524
  have ha2 : rho 45912 * seg52In0AccY48 rho = rho 45916 := by
    unfold seg52In0AccY48
    linear_combination r1525
  have ha3 : 3021 * rho 45915 * rho 45916 = rho 45917 := by
    linear_combination r1526
  have ha4 : rho 45918 * (1 + rho 45917) = rho 45915 + rho 45916 := by
    linear_combination r1527
  have ha5 : rho 45919 * (1 - rho 45917) = rho 45914 - rho 45915 - rho 45916 := by
    linear_combination r1528
  have haddx :
      rho 45918 * (1 + 3021 * (rho 45913 * seg52In0AccX48 rho) * (rho 45912 * seg52In0AccY48 rho)) =
        rho 45913 * seg52In0AccX48 rho + rho 45912 * seg52In0AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45919 * (1 - 3021 * (rho 45913 * seg52In0AccX48 rho) * (rho 45912 * seg52In0AccY48 rho)) =
        (-1) * (rho 45913 * seg52In0AccX48 rho) - rho 45912 * seg52In0AccY48 rho +
          (seg52In0AccY48 rho - seg52In0AccX48 rho * (-1)) * (rho 45912 + rho 45913) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45919 * (1 - rho 45917) = rho 45914 - rho 45915 - rho 45916 := ha5
      _ = (-1) * rho 45915 - rho 45916 + (seg52In0AccY48 rho - seg52In0AccX48 rho * (-1)) *
          (rho 45912 + rho 45913) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX49 rho = seg52In0AccX48 rho - Bool.toZMod bit * (seg52In0AccX48 rho - rho 45918) := by
    have hd : rho 45920 = Bool.toZMod bit * (rho 45918 - seg52In0AccX48 rho) := by
      rw [← hbit]
      unfold seg52In0AccX48
      linear_combination -r1529
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY49 rho = seg52In0AccY48 rho - Bool.toZMod bit * (seg52In0AccY48 rho - rho 45919) := by
    have hd : rho 45921 = Bool.toZMod bit * (rho 45919 - seg52In0AccY48 rho) := by
      rw [← hbit]
      unfold seg52In0AccY48
      linear_combination -r1530
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45912 * rho 45913 = rho 45922 := by linear_combination r1531
  have hd1 : rho 45912 * rho 45912 = rho 45923 := by linear_combination r1532
  have hd2 : rho 45913 * rho 45913 = rho 45924 := by linear_combination r1533
  have hd3 : rho 45925 * (rho 45913 * rho 45913 + rho 45912 * rho 45912 * (-1)) =
      2 * (rho 45912 * rho 45913) := by
    rw [hd0, hd1, hd2]
    linear_combination r1534
  have hd4 : rho 45926 * (2 - (rho 45913 * rho 45913 + rho 45912 * rho 45912 * (-1))) =
      rho 45913 * rho 45913 - rho 45912 * rho 45912 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1535
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 45912, rho 45913⟩
    ⟨rho 45918, rho 45919⟩ ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 45925, rho 45926⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1536 rho ∧ Seg52.relationRow1537 rho ∧ Seg52.relationRow1538 rho ∧ Seg52.relationRow1539 rho ∧ Seg52.relationRow1540 rho ∧ Seg52.relationRow1541 rho ∧ Seg52.relationRow1542 rho ∧ Seg52.relationRow1543 rho ∧ Seg52.relationRow1544 rho ∧ Seg52.relationRow1545 rho ∧ Seg52.relationRow1546 rho ∧ Seg52.relationRow1547 rho ∧ Seg52.relationRow1548 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548⟩

theorem seg52In0_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45217 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45925, rho 45926⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 45925, rho 45926⟩
        ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 45938, rho 45939⟩ := by
  obtain ⟨r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548⟩ := seg52In0_rows49 rho h
  unfold Seg52.relationRow1536 at r1536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1536

  unfold Seg52.relationRow1537 at r1537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1537

  unfold Seg52.relationRow1538 at r1538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1538

  unfold Seg52.relationRow1539 at r1539

  unfold Seg52.relationRow1540 at r1540

  unfold Seg52.relationRow1541 at r1541

  unfold Seg52.relationRow1542 at r1542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1542

  unfold Seg52.relationRow1543 at r1543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1543

  unfold Seg52.relationRow1544 at r1544

  unfold Seg52.relationRow1545 at r1545

  unfold Seg52.relationRow1546 at r1546

  unfold Seg52.relationRow1547 at r1547

  unfold Seg52.relationRow1548 at r1548

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX50 rho = seg52In0AccX49 rho + rho 45933 := by
    unfold seg52In0AccX50 seg52In0AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 49]

    ring

  have hnexty : seg52In0AccY50 rho = seg52In0AccY49 rho + rho 45934 := by
    unfold seg52In0AccY50 seg52In0AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 49]

    ring

  have ha0 : (rho 45925 + rho 45926) * (seg52In0AccX49 rho + seg52In0AccY49 rho) = rho 45927 := by
    unfold seg52In0AccX49 seg52In0AccY49
    linear_combination r1536
  have ha1 : rho 45926 * seg52In0AccX49 rho = rho 45928 := by
    unfold seg52In0AccX49
    linear_combination r1537
  have ha2 : rho 45925 * seg52In0AccY49 rho = rho 45929 := by
    unfold seg52In0AccY49
    linear_combination r1538
  have ha3 : 3021 * rho 45928 * rho 45929 = rho 45930 := by
    linear_combination r1539
  have ha4 : rho 45931 * (1 + rho 45930) = rho 45928 + rho 45929 := by
    linear_combination r1540
  have ha5 : rho 45932 * (1 - rho 45930) = rho 45927 - rho 45928 - rho 45929 := by
    linear_combination r1541
  have haddx :
      rho 45931 * (1 + 3021 * (rho 45926 * seg52In0AccX49 rho) * (rho 45925 * seg52In0AccY49 rho)) =
        rho 45926 * seg52In0AccX49 rho + rho 45925 * seg52In0AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45932 * (1 - 3021 * (rho 45926 * seg52In0AccX49 rho) * (rho 45925 * seg52In0AccY49 rho)) =
        (-1) * (rho 45926 * seg52In0AccX49 rho) - rho 45925 * seg52In0AccY49 rho +
          (seg52In0AccY49 rho - seg52In0AccX49 rho * (-1)) * (rho 45925 + rho 45926) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45932 * (1 - rho 45930) = rho 45927 - rho 45928 - rho 45929 := ha5
      _ = (-1) * rho 45928 - rho 45929 + (seg52In0AccY49 rho - seg52In0AccX49 rho * (-1)) *
          (rho 45925 + rho 45926) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX50 rho = seg52In0AccX49 rho - Bool.toZMod bit * (seg52In0AccX49 rho - rho 45931) := by
    have hd : rho 45933 = Bool.toZMod bit * (rho 45931 - seg52In0AccX49 rho) := by
      rw [← hbit]
      unfold seg52In0AccX49
      linear_combination -r1542
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY50 rho = seg52In0AccY49 rho - Bool.toZMod bit * (seg52In0AccY49 rho - rho 45932) := by
    have hd : rho 45934 = Bool.toZMod bit * (rho 45932 - seg52In0AccY49 rho) := by
      rw [← hbit]
      unfold seg52In0AccY49
      linear_combination -r1543
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45925 * rho 45926 = rho 45935 := by linear_combination r1544
  have hd1 : rho 45925 * rho 45925 = rho 45936 := by linear_combination r1545
  have hd2 : rho 45926 * rho 45926 = rho 45937 := by linear_combination r1546
  have hd3 : rho 45938 * (rho 45926 * rho 45926 + rho 45925 * rho 45925 * (-1)) =
      2 * (rho 45925 * rho 45926) := by
    rw [hd0, hd1, hd2]
    linear_combination r1547
  have hd4 : rho 45939 * (2 - (rho 45926 * rho 45926 + rho 45925 * rho 45925 * (-1))) =
      rho 45926 * rho 45926 - rho 45925 * rho 45925 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1548
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 45925, rho 45926⟩
    ⟨rho 45931, rho 45932⟩ ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 45938, rho 45939⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1549 rho ∧ Seg52.relationRow1550 rho ∧ Seg52.relationRow1551 rho ∧ Seg52.relationRow1552 rho ∧ Seg52.relationRow1553 rho ∧ Seg52.relationRow1554 rho ∧ Seg52.relationRow1555 rho ∧ Seg52.relationRow1556 rho ∧ Seg52.relationRow1557 rho ∧ Seg52.relationRow1558 rho ∧ Seg52.relationRow1559 rho ∧ Seg52.relationRow1560 rho ∧ Seg52.relationRow1561 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561⟩

theorem seg52In0_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45218 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45938, rho 45939⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 45938, rho 45939⟩
        ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 45951, rho 45952⟩ := by
  obtain ⟨r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561⟩ := seg52In0_rows50 rho h
  unfold Seg52.relationRow1549 at r1549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1549

  unfold Seg52.relationRow1550 at r1550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1550

  unfold Seg52.relationRow1551 at r1551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1551

  unfold Seg52.relationRow1552 at r1552

  unfold Seg52.relationRow1553 at r1553

  unfold Seg52.relationRow1554 at r1554

  unfold Seg52.relationRow1555 at r1555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1555

  unfold Seg52.relationRow1556 at r1556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1556

  unfold Seg52.relationRow1557 at r1557

  unfold Seg52.relationRow1558 at r1558

  unfold Seg52.relationRow1559 at r1559

  unfold Seg52.relationRow1560 at r1560

  unfold Seg52.relationRow1561 at r1561

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX51 rho = seg52In0AccX50 rho + rho 45946 := by
    unfold seg52In0AccX51 seg52In0AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 50]

    ring

  have hnexty : seg52In0AccY51 rho = seg52In0AccY50 rho + rho 45947 := by
    unfold seg52In0AccY51 seg52In0AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 50]

    ring

  have ha0 : (rho 45938 + rho 45939) * (seg52In0AccX50 rho + seg52In0AccY50 rho) = rho 45940 := by
    unfold seg52In0AccX50 seg52In0AccY50
    linear_combination r1549
  have ha1 : rho 45939 * seg52In0AccX50 rho = rho 45941 := by
    unfold seg52In0AccX50
    linear_combination r1550
  have ha2 : rho 45938 * seg52In0AccY50 rho = rho 45942 := by
    unfold seg52In0AccY50
    linear_combination r1551
  have ha3 : 3021 * rho 45941 * rho 45942 = rho 45943 := by
    linear_combination r1552
  have ha4 : rho 45944 * (1 + rho 45943) = rho 45941 + rho 45942 := by
    linear_combination r1553
  have ha5 : rho 45945 * (1 - rho 45943) = rho 45940 - rho 45941 - rho 45942 := by
    linear_combination r1554
  have haddx :
      rho 45944 * (1 + 3021 * (rho 45939 * seg52In0AccX50 rho) * (rho 45938 * seg52In0AccY50 rho)) =
        rho 45939 * seg52In0AccX50 rho + rho 45938 * seg52In0AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45945 * (1 - 3021 * (rho 45939 * seg52In0AccX50 rho) * (rho 45938 * seg52In0AccY50 rho)) =
        (-1) * (rho 45939 * seg52In0AccX50 rho) - rho 45938 * seg52In0AccY50 rho +
          (seg52In0AccY50 rho - seg52In0AccX50 rho * (-1)) * (rho 45938 + rho 45939) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45945 * (1 - rho 45943) = rho 45940 - rho 45941 - rho 45942 := ha5
      _ = (-1) * rho 45941 - rho 45942 + (seg52In0AccY50 rho - seg52In0AccX50 rho * (-1)) *
          (rho 45938 + rho 45939) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX51 rho = seg52In0AccX50 rho - Bool.toZMod bit * (seg52In0AccX50 rho - rho 45944) := by
    have hd : rho 45946 = Bool.toZMod bit * (rho 45944 - seg52In0AccX50 rho) := by
      rw [← hbit]
      unfold seg52In0AccX50
      linear_combination -r1555
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY51 rho = seg52In0AccY50 rho - Bool.toZMod bit * (seg52In0AccY50 rho - rho 45945) := by
    have hd : rho 45947 = Bool.toZMod bit * (rho 45945 - seg52In0AccY50 rho) := by
      rw [← hbit]
      unfold seg52In0AccY50
      linear_combination -r1556
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45938 * rho 45939 = rho 45948 := by linear_combination r1557
  have hd1 : rho 45938 * rho 45938 = rho 45949 := by linear_combination r1558
  have hd2 : rho 45939 * rho 45939 = rho 45950 := by linear_combination r1559
  have hd3 : rho 45951 * (rho 45939 * rho 45939 + rho 45938 * rho 45938 * (-1)) =
      2 * (rho 45938 * rho 45939) := by
    rw [hd0, hd1, hd2]
    linear_combination r1560
  have hd4 : rho 45952 * (2 - (rho 45939 * rho 45939 + rho 45938 * rho 45938 * (-1))) =
      rho 45939 * rho 45939 - rho 45938 * rho 45938 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1561
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 45938, rho 45939⟩
    ⟨rho 45944, rho 45945⟩ ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 45951, rho 45952⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1562 rho ∧ Seg52.relationRow1563 rho ∧ Seg52.relationRow1564 rho ∧ Seg52.relationRow1565 rho ∧ Seg52.relationRow1566 rho ∧ Seg52.relationRow1567 rho ∧ Seg52.relationRow1568 rho ∧ Seg52.relationRow1569 rho ∧ Seg52.relationRow1570 rho ∧ Seg52.relationRow1571 rho ∧ Seg52.relationRow1572 rho ∧ Seg52.relationRow1573 rho ∧ Seg52.relationRow1574 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574⟩

theorem seg52In0_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45219 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45951, rho 45952⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 45951, rho 45952⟩
        ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 45964, rho 45965⟩ := by
  obtain ⟨r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574⟩ := seg52In0_rows51 rho h
  unfold Seg52.relationRow1562 at r1562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1562

  unfold Seg52.relationRow1563 at r1563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1563

  unfold Seg52.relationRow1564 at r1564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1564

  unfold Seg52.relationRow1565 at r1565

  unfold Seg52.relationRow1566 at r1566

  unfold Seg52.relationRow1567 at r1567

  unfold Seg52.relationRow1568 at r1568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1568

  unfold Seg52.relationRow1569 at r1569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1569

  unfold Seg52.relationRow1570 at r1570

  unfold Seg52.relationRow1571 at r1571

  unfold Seg52.relationRow1572 at r1572

  unfold Seg52.relationRow1573 at r1573

  unfold Seg52.relationRow1574 at r1574

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX52 rho = seg52In0AccX51 rho + rho 45959 := by
    unfold seg52In0AccX52 seg52In0AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 51]

    ring

  have hnexty : seg52In0AccY52 rho = seg52In0AccY51 rho + rho 45960 := by
    unfold seg52In0AccY52 seg52In0AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 51]

    ring

  have ha0 : (rho 45951 + rho 45952) * (seg52In0AccX51 rho + seg52In0AccY51 rho) = rho 45953 := by
    unfold seg52In0AccX51 seg52In0AccY51
    linear_combination r1562
  have ha1 : rho 45952 * seg52In0AccX51 rho = rho 45954 := by
    unfold seg52In0AccX51
    linear_combination r1563
  have ha2 : rho 45951 * seg52In0AccY51 rho = rho 45955 := by
    unfold seg52In0AccY51
    linear_combination r1564
  have ha3 : 3021 * rho 45954 * rho 45955 = rho 45956 := by
    linear_combination r1565
  have ha4 : rho 45957 * (1 + rho 45956) = rho 45954 + rho 45955 := by
    linear_combination r1566
  have ha5 : rho 45958 * (1 - rho 45956) = rho 45953 - rho 45954 - rho 45955 := by
    linear_combination r1567
  have haddx :
      rho 45957 * (1 + 3021 * (rho 45952 * seg52In0AccX51 rho) * (rho 45951 * seg52In0AccY51 rho)) =
        rho 45952 * seg52In0AccX51 rho + rho 45951 * seg52In0AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45958 * (1 - 3021 * (rho 45952 * seg52In0AccX51 rho) * (rho 45951 * seg52In0AccY51 rho)) =
        (-1) * (rho 45952 * seg52In0AccX51 rho) - rho 45951 * seg52In0AccY51 rho +
          (seg52In0AccY51 rho - seg52In0AccX51 rho * (-1)) * (rho 45951 + rho 45952) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45958 * (1 - rho 45956) = rho 45953 - rho 45954 - rho 45955 := ha5
      _ = (-1) * rho 45954 - rho 45955 + (seg52In0AccY51 rho - seg52In0AccX51 rho * (-1)) *
          (rho 45951 + rho 45952) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX52 rho = seg52In0AccX51 rho - Bool.toZMod bit * (seg52In0AccX51 rho - rho 45957) := by
    have hd : rho 45959 = Bool.toZMod bit * (rho 45957 - seg52In0AccX51 rho) := by
      rw [← hbit]
      unfold seg52In0AccX51
      linear_combination -r1568
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY52 rho = seg52In0AccY51 rho - Bool.toZMod bit * (seg52In0AccY51 rho - rho 45958) := by
    have hd : rho 45960 = Bool.toZMod bit * (rho 45958 - seg52In0AccY51 rho) := by
      rw [← hbit]
      unfold seg52In0AccY51
      linear_combination -r1569
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45951 * rho 45952 = rho 45961 := by linear_combination r1570
  have hd1 : rho 45951 * rho 45951 = rho 45962 := by linear_combination r1571
  have hd2 : rho 45952 * rho 45952 = rho 45963 := by linear_combination r1572
  have hd3 : rho 45964 * (rho 45952 * rho 45952 + rho 45951 * rho 45951 * (-1)) =
      2 * (rho 45951 * rho 45952) := by
    rw [hd0, hd1, hd2]
    linear_combination r1573
  have hd4 : rho 45965 * (2 - (rho 45952 * rho 45952 + rho 45951 * rho 45951 * (-1))) =
      rho 45952 * rho 45952 - rho 45951 * rho 45951 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1574
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 45951, rho 45952⟩
    ⟨rho 45957, rho 45958⟩ ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 45964, rho 45965⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1575 rho ∧ Seg52.relationRow1576 rho ∧ Seg52.relationRow1577 rho ∧ Seg52.relationRow1578 rho ∧ Seg52.relationRow1579 rho ∧ Seg52.relationRow1580 rho ∧ Seg52.relationRow1581 rho ∧ Seg52.relationRow1582 rho ∧ Seg52.relationRow1583 rho ∧ Seg52.relationRow1584 rho ∧ Seg52.relationRow1585 rho ∧ Seg52.relationRow1586 rho ∧ Seg52.relationRow1587 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587⟩

theorem seg52In0_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45220 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45964, rho 45965⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 45964, rho 45965⟩
        ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 45977, rho 45978⟩ := by
  obtain ⟨r1575, r1576, r1577, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587⟩ := seg52In0_rows52 rho h
  unfold Seg52.relationRow1575 at r1575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1575

  unfold Seg52.relationRow1576 at r1576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1576

  unfold Seg52.relationRow1577 at r1577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1577

  unfold Seg52.relationRow1578 at r1578

  unfold Seg52.relationRow1579 at r1579

  unfold Seg52.relationRow1580 at r1580

  unfold Seg52.relationRow1581 at r1581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1581

  unfold Seg52.relationRow1582 at r1582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1582

  unfold Seg52.relationRow1583 at r1583

  unfold Seg52.relationRow1584 at r1584

  unfold Seg52.relationRow1585 at r1585

  unfold Seg52.relationRow1586 at r1586

  unfold Seg52.relationRow1587 at r1587

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX53 rho = seg52In0AccX52 rho + rho 45972 := by
    unfold seg52In0AccX53 seg52In0AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 52]

    ring

  have hnexty : seg52In0AccY53 rho = seg52In0AccY52 rho + rho 45973 := by
    unfold seg52In0AccY53 seg52In0AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 52]

    ring

  have ha0 : (rho 45964 + rho 45965) * (seg52In0AccX52 rho + seg52In0AccY52 rho) = rho 45966 := by
    unfold seg52In0AccX52 seg52In0AccY52
    linear_combination r1575
  have ha1 : rho 45965 * seg52In0AccX52 rho = rho 45967 := by
    unfold seg52In0AccX52
    linear_combination r1576
  have ha2 : rho 45964 * seg52In0AccY52 rho = rho 45968 := by
    unfold seg52In0AccY52
    linear_combination r1577
  have ha3 : 3021 * rho 45967 * rho 45968 = rho 45969 := by
    linear_combination r1578
  have ha4 : rho 45970 * (1 + rho 45969) = rho 45967 + rho 45968 := by
    linear_combination r1579
  have ha5 : rho 45971 * (1 - rho 45969) = rho 45966 - rho 45967 - rho 45968 := by
    linear_combination r1580
  have haddx :
      rho 45970 * (1 + 3021 * (rho 45965 * seg52In0AccX52 rho) * (rho 45964 * seg52In0AccY52 rho)) =
        rho 45965 * seg52In0AccX52 rho + rho 45964 * seg52In0AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45971 * (1 - 3021 * (rho 45965 * seg52In0AccX52 rho) * (rho 45964 * seg52In0AccY52 rho)) =
        (-1) * (rho 45965 * seg52In0AccX52 rho) - rho 45964 * seg52In0AccY52 rho +
          (seg52In0AccY52 rho - seg52In0AccX52 rho * (-1)) * (rho 45964 + rho 45965) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45971 * (1 - rho 45969) = rho 45966 - rho 45967 - rho 45968 := ha5
      _ = (-1) * rho 45967 - rho 45968 + (seg52In0AccY52 rho - seg52In0AccX52 rho * (-1)) *
          (rho 45964 + rho 45965) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX53 rho = seg52In0AccX52 rho - Bool.toZMod bit * (seg52In0AccX52 rho - rho 45970) := by
    have hd : rho 45972 = Bool.toZMod bit * (rho 45970 - seg52In0AccX52 rho) := by
      rw [← hbit]
      unfold seg52In0AccX52
      linear_combination -r1581
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY53 rho = seg52In0AccY52 rho - Bool.toZMod bit * (seg52In0AccY52 rho - rho 45971) := by
    have hd : rho 45973 = Bool.toZMod bit * (rho 45971 - seg52In0AccY52 rho) := by
      rw [← hbit]
      unfold seg52In0AccY52
      linear_combination -r1582
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45964 * rho 45965 = rho 45974 := by linear_combination r1583
  have hd1 : rho 45964 * rho 45964 = rho 45975 := by linear_combination r1584
  have hd2 : rho 45965 * rho 45965 = rho 45976 := by linear_combination r1585
  have hd3 : rho 45977 * (rho 45965 * rho 45965 + rho 45964 * rho 45964 * (-1)) =
      2 * (rho 45964 * rho 45965) := by
    rw [hd0, hd1, hd2]
    linear_combination r1586
  have hd4 : rho 45978 * (2 - (rho 45965 * rho 45965 + rho 45964 * rho 45964 * (-1))) =
      rho 45965 * rho 45965 - rho 45964 * rho 45964 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1587
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 45964, rho 45965⟩
    ⟨rho 45970, rho 45971⟩ ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 45977, rho 45978⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1588 rho ∧ Seg52.relationRow1589 rho ∧ Seg52.relationRow1590 rho ∧ Seg52.relationRow1591 rho ∧ Seg52.relationRow1592 rho ∧ Seg52.relationRow1593 rho ∧ Seg52.relationRow1594 rho ∧ Seg52.relationRow1595 rho ∧ Seg52.relationRow1596 rho ∧ Seg52.relationRow1597 rho ∧ Seg52.relationRow1598 rho ∧ Seg52.relationRow1599 rho ∧ Seg52.relationRow1600 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨r1600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600⟩

theorem seg52In0_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45221 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45977, rho 45978⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 45977, rho 45978⟩
        ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 45990, rho 45991⟩ := by
  obtain ⟨r1588, r1589, r1590, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600⟩ := seg52In0_rows53 rho h
  unfold Seg52.relationRow1588 at r1588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1588

  unfold Seg52.relationRow1589 at r1589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1589

  unfold Seg52.relationRow1590 at r1590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1590

  unfold Seg52.relationRow1591 at r1591

  unfold Seg52.relationRow1592 at r1592

  unfold Seg52.relationRow1593 at r1593

  unfold Seg52.relationRow1594 at r1594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1594

  unfold Seg52.relationRow1595 at r1595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1595

  unfold Seg52.relationRow1596 at r1596

  unfold Seg52.relationRow1597 at r1597

  unfold Seg52.relationRow1598 at r1598

  unfold Seg52.relationRow1599 at r1599

  unfold Seg52.relationRow1600 at r1600

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX54 rho = seg52In0AccX53 rho + rho 45985 := by
    unfold seg52In0AccX54 seg52In0AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 53]

    ring

  have hnexty : seg52In0AccY54 rho = seg52In0AccY53 rho + rho 45986 := by
    unfold seg52In0AccY54 seg52In0AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 53]

    ring

  have ha0 : (rho 45977 + rho 45978) * (seg52In0AccX53 rho + seg52In0AccY53 rho) = rho 45979 := by
    unfold seg52In0AccX53 seg52In0AccY53
    linear_combination r1588
  have ha1 : rho 45978 * seg52In0AccX53 rho = rho 45980 := by
    unfold seg52In0AccX53
    linear_combination r1589
  have ha2 : rho 45977 * seg52In0AccY53 rho = rho 45981 := by
    unfold seg52In0AccY53
    linear_combination r1590
  have ha3 : 3021 * rho 45980 * rho 45981 = rho 45982 := by
    linear_combination r1591
  have ha4 : rho 45983 * (1 + rho 45982) = rho 45980 + rho 45981 := by
    linear_combination r1592
  have ha5 : rho 45984 * (1 - rho 45982) = rho 45979 - rho 45980 - rho 45981 := by
    linear_combination r1593
  have haddx :
      rho 45983 * (1 + 3021 * (rho 45978 * seg52In0AccX53 rho) * (rho 45977 * seg52In0AccY53 rho)) =
        rho 45978 * seg52In0AccX53 rho + rho 45977 * seg52In0AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45984 * (1 - 3021 * (rho 45978 * seg52In0AccX53 rho) * (rho 45977 * seg52In0AccY53 rho)) =
        (-1) * (rho 45978 * seg52In0AccX53 rho) - rho 45977 * seg52In0AccY53 rho +
          (seg52In0AccY53 rho - seg52In0AccX53 rho * (-1)) * (rho 45977 + rho 45978) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45984 * (1 - rho 45982) = rho 45979 - rho 45980 - rho 45981 := ha5
      _ = (-1) * rho 45980 - rho 45981 + (seg52In0AccY53 rho - seg52In0AccX53 rho * (-1)) *
          (rho 45977 + rho 45978) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX54 rho = seg52In0AccX53 rho - Bool.toZMod bit * (seg52In0AccX53 rho - rho 45983) := by
    have hd : rho 45985 = Bool.toZMod bit * (rho 45983 - seg52In0AccX53 rho) := by
      rw [← hbit]
      unfold seg52In0AccX53
      linear_combination -r1594
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY54 rho = seg52In0AccY53 rho - Bool.toZMod bit * (seg52In0AccY53 rho - rho 45984) := by
    have hd : rho 45986 = Bool.toZMod bit * (rho 45984 - seg52In0AccY53 rho) := by
      rw [← hbit]
      unfold seg52In0AccY53
      linear_combination -r1595
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45977 * rho 45978 = rho 45987 := by linear_combination r1596
  have hd1 : rho 45977 * rho 45977 = rho 45988 := by linear_combination r1597
  have hd2 : rho 45978 * rho 45978 = rho 45989 := by linear_combination r1598
  have hd3 : rho 45990 * (rho 45978 * rho 45978 + rho 45977 * rho 45977 * (-1)) =
      2 * (rho 45977 * rho 45978) := by
    rw [hd0, hd1, hd2]
    linear_combination r1599
  have hd4 : rho 45991 * (2 - (rho 45978 * rho 45978 + rho 45977 * rho 45977 * (-1))) =
      rho 45978 * rho 45978 - rho 45977 * rho 45977 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1600
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 45977, rho 45978⟩
    ⟨rho 45983, rho 45984⟩ ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 45990, rho 45991⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1601 rho ∧ Seg52.relationRow1602 rho ∧ Seg52.relationRow1603 rho ∧ Seg52.relationRow1604 rho ∧ Seg52.relationRow1605 rho ∧ Seg52.relationRow1606 rho ∧ Seg52.relationRow1607 rho ∧ Seg52.relationRow1608 rho ∧ Seg52.relationRow1609 rho ∧ Seg52.relationRow1610 rho ∧ Seg52.relationRow1611 rho ∧ Seg52.relationRow1612 rho ∧ Seg52.relationRow1613 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613⟩

theorem seg52In0_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45222 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45990, rho 45991⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 45990, rho 45991⟩
        ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46003, rho 46004⟩ := by
  obtain ⟨r1601, r1602, r1603, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613⟩ := seg52In0_rows54 rho h
  unfold Seg52.relationRow1601 at r1601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1601

  unfold Seg52.relationRow1602 at r1602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1602

  unfold Seg52.relationRow1603 at r1603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1603

  unfold Seg52.relationRow1604 at r1604

  unfold Seg52.relationRow1605 at r1605

  unfold Seg52.relationRow1606 at r1606

  unfold Seg52.relationRow1607 at r1607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1607

  unfold Seg52.relationRow1608 at r1608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1608

  unfold Seg52.relationRow1609 at r1609

  unfold Seg52.relationRow1610 at r1610

  unfold Seg52.relationRow1611 at r1611

  unfold Seg52.relationRow1612 at r1612

  unfold Seg52.relationRow1613 at r1613

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX55 rho = seg52In0AccX54 rho + rho 45998 := by
    unfold seg52In0AccX55 seg52In0AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 54]

    ring

  have hnexty : seg52In0AccY55 rho = seg52In0AccY54 rho + rho 45999 := by
    unfold seg52In0AccY55 seg52In0AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 54]

    ring

  have ha0 : (rho 45990 + rho 45991) * (seg52In0AccX54 rho + seg52In0AccY54 rho) = rho 45992 := by
    unfold seg52In0AccX54 seg52In0AccY54
    linear_combination r1601
  have ha1 : rho 45991 * seg52In0AccX54 rho = rho 45993 := by
    unfold seg52In0AccX54
    linear_combination r1602
  have ha2 : rho 45990 * seg52In0AccY54 rho = rho 45994 := by
    unfold seg52In0AccY54
    linear_combination r1603
  have ha3 : 3021 * rho 45993 * rho 45994 = rho 45995 := by
    linear_combination r1604
  have ha4 : rho 45996 * (1 + rho 45995) = rho 45993 + rho 45994 := by
    linear_combination r1605
  have ha5 : rho 45997 * (1 - rho 45995) = rho 45992 - rho 45993 - rho 45994 := by
    linear_combination r1606
  have haddx :
      rho 45996 * (1 + 3021 * (rho 45991 * seg52In0AccX54 rho) * (rho 45990 * seg52In0AccY54 rho)) =
        rho 45991 * seg52In0AccX54 rho + rho 45990 * seg52In0AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45997 * (1 - 3021 * (rho 45991 * seg52In0AccX54 rho) * (rho 45990 * seg52In0AccY54 rho)) =
        (-1) * (rho 45991 * seg52In0AccX54 rho) - rho 45990 * seg52In0AccY54 rho +
          (seg52In0AccY54 rho - seg52In0AccX54 rho * (-1)) * (rho 45990 + rho 45991) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45997 * (1 - rho 45995) = rho 45992 - rho 45993 - rho 45994 := ha5
      _ = (-1) * rho 45993 - rho 45994 + (seg52In0AccY54 rho - seg52In0AccX54 rho * (-1)) *
          (rho 45990 + rho 45991) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX55 rho = seg52In0AccX54 rho - Bool.toZMod bit * (seg52In0AccX54 rho - rho 45996) := by
    have hd : rho 45998 = Bool.toZMod bit * (rho 45996 - seg52In0AccX54 rho) := by
      rw [← hbit]
      unfold seg52In0AccX54
      linear_combination -r1607
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY55 rho = seg52In0AccY54 rho - Bool.toZMod bit * (seg52In0AccY54 rho - rho 45997) := by
    have hd : rho 45999 = Bool.toZMod bit * (rho 45997 - seg52In0AccY54 rho) := by
      rw [← hbit]
      unfold seg52In0AccY54
      linear_combination -r1608
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45990 * rho 45991 = rho 46000 := by linear_combination r1609
  have hd1 : rho 45990 * rho 45990 = rho 46001 := by linear_combination r1610
  have hd2 : rho 45991 * rho 45991 = rho 46002 := by linear_combination r1611
  have hd3 : rho 46003 * (rho 45991 * rho 45991 + rho 45990 * rho 45990 * (-1)) =
      2 * (rho 45990 * rho 45991) := by
    rw [hd0, hd1, hd2]
    linear_combination r1612
  have hd4 : rho 46004 * (2 - (rho 45991 * rho 45991 + rho 45990 * rho 45990 * (-1))) =
      rho 45991 * rho 45991 - rho 45990 * rho 45990 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1613
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 45990, rho 45991⟩
    ⟨rho 45996, rho 45997⟩ ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46003, rho 46004⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg52In0_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg52In0_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg52In0_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg52In0_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg52In0_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg52In0_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg52In0_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg52In0_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg52In0_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg52In0_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
