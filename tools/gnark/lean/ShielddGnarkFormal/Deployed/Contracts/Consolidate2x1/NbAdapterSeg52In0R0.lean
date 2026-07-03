import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1545 rho ∧ Seg52.relationRow1546 rho ∧ Seg52.relationRow1547 rho ∧ Seg52.relationRow1548 rho ∧ Seg52.relationRow1549 rho ∧ Seg52.relationRow1550 rho ∧ Seg52.relationRow1551 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1545, r1546, r1547, r1548, r1549, r1550, r1551, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1545, r1546, r1547, r1548, r1549, r1550, r1551⟩

theorem seg52In0_rung0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45808 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX0 rho, seg52In0AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX0 rho, seg52In0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
        ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45941, rho 45942⟩ := by
  obtain ⟨r1545, r1546, r1547, r1548, r1549, r1550, r1551⟩ := seg52In0_rows0 rho h
  unfold Seg52.relationRow1545 at r1545

  unfold Seg52.relationRow1546 at r1546

  unfold Seg52.relationRow1547 at r1547

  unfold Seg52.relationRow1548 at r1548

  unfold Seg52.relationRow1549 at r1549

  unfold Seg52.relationRow1550 at r1550

  unfold Seg52.relationRow1551 at r1551

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX1 rho = seg52In0AccX0 rho + rho 45936 := by
    unfold seg52In0AccX1 seg52In0AccX0
    ring

  have hnexty : seg52In0AccY1 rho = seg52In0AccY0 rho + rho 45937 := by
    unfold seg52In0AccY1 seg52In0AccY0
    ring

  have haddx :
      rho 45162 * (1 + 3021 * (rho 45164 * seg52In0AccX0 rho) * (rho 45162 * seg52In0AccY0 rho)) =
        rho 45164 * seg52In0AccX0 rho + rho 45162 * seg52In0AccY0 rho := by
    unfold seg52In0AccX0 seg52In0AccY0
    ring
  have haddy :
      rho 45164 * (1 - 3021 * (rho 45164 * seg52In0AccX0 rho) * (rho 45162 * seg52In0AccY0 rho)) =
        (-1) * (rho 45164 * seg52In0AccX0 rho) - rho 45162 * seg52In0AccY0 rho +
          (seg52In0AccY0 rho - seg52In0AccX0 rho * (-1)) * (rho 45162 + rho 45164) := by
    unfold seg52In0AccX0 seg52In0AccY0
    ring
  have hselx : seg52In0AccX1 rho = seg52In0AccX0 rho - Bool.toZMod bit * (seg52In0AccX0 rho - rho 45162) := by
    have hd : rho 45936 = Bool.toZMod bit * (rho 45162 - seg52In0AccX0 rho) := by
      rw [← hbit]
      unfold seg52In0AccX0
      linear_combination -r1545
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY1 rho = seg52In0AccY0 rho - Bool.toZMod bit * (seg52In0AccY0 rho - rho 45164) := by
    have hd : rho 45937 = Bool.toZMod bit * (rho 45164 - seg52In0AccY0 rho) := by
      rw [← hbit]
      unfold seg52In0AccY0
      linear_combination -r1546
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45162 * rho 45164 = rho 45938 := by linear_combination r1547
  have hd1 : rho 45162 * rho 45162 = rho 45939 := by linear_combination r1548
  have hd2 : rho 45164 * rho 45164 = rho 45940 := by linear_combination r1549
  have hd3 : rho 45941 * (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1)) =
      2 * (rho 45162 * rho 45164) := by
    rw [hd0, hd1, hd2]
    linear_combination r1550
  have hd4 : rho 45942 * (2 - (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1))) =
      rho 45164 * rho 45164 - rho 45162 * rho 45162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1551
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX0 rho, seg52In0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
    ⟨rho 45162, rho 45164⟩ ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45941, rho 45942⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1552 rho ∧ Seg52.relationRow1553 rho ∧ Seg52.relationRow1554 rho ∧ Seg52.relationRow1555 rho ∧ Seg52.relationRow1556 rho ∧ Seg52.relationRow1557 rho ∧ Seg52.relationRow1558 rho ∧ Seg52.relationRow1559 rho ∧ Seg52.relationRow1560 rho ∧ Seg52.relationRow1561 rho ∧ Seg52.relationRow1562 rho ∧ Seg52.relationRow1563 rho ∧ Seg52.relationRow1564 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564⟩

theorem seg52In0_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45809 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45941, rho 45942⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45941, rho 45942⟩
        ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45954, rho 45955⟩ := by
  obtain ⟨r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564⟩ := seg52In0_rows1 rho h
  unfold Seg52.relationRow1552 at r1552

  unfold Seg52.relationRow1553 at r1553

  unfold Seg52.relationRow1554 at r1554

  unfold Seg52.relationRow1555 at r1555

  unfold Seg52.relationRow1556 at r1556

  unfold Seg52.relationRow1557 at r1557

  unfold Seg52.relationRow1558 at r1558

  unfold Seg52.relationRow1559 at r1559

  unfold Seg52.relationRow1560 at r1560

  unfold Seg52.relationRow1561 at r1561

  unfold Seg52.relationRow1562 at r1562

  unfold Seg52.relationRow1563 at r1563

  unfold Seg52.relationRow1564 at r1564

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX2 rho = seg52In0AccX1 rho + rho 45949 := by
    unfold seg52In0AccX2 seg52In0AccX1
    ring

  have hnexty : seg52In0AccY2 rho = seg52In0AccY1 rho + rho 45950 := by
    unfold seg52In0AccY2 seg52In0AccY1
    ring

  have ha0 : (rho 45941 + rho 45942) * (seg52In0AccX1 rho + seg52In0AccY1 rho) = rho 45943 := by
    unfold seg52In0AccX1 seg52In0AccY1
    linear_combination r1552
  have ha1 : rho 45942 * seg52In0AccX1 rho = rho 45944 := by
    unfold seg52In0AccX1
    linear_combination r1553
  have ha2 : rho 45941 * seg52In0AccY1 rho = rho 45945 := by
    unfold seg52In0AccY1
    linear_combination r1554
  have ha3 : 3021 * rho 45944 * rho 45945 = rho 45946 := by
    linear_combination r1555
  have ha4 : rho 45947 * (1 + rho 45946) = rho 45944 + rho 45945 := by
    linear_combination r1556
  have ha5 : rho 45948 * (1 - rho 45946) = rho 45943 - rho 45944 - rho 45945 := by
    linear_combination r1557
  have haddx :
      rho 45947 * (1 + 3021 * (rho 45942 * seg52In0AccX1 rho) * (rho 45941 * seg52In0AccY1 rho)) =
        rho 45942 * seg52In0AccX1 rho + rho 45941 * seg52In0AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45948 * (1 - 3021 * (rho 45942 * seg52In0AccX1 rho) * (rho 45941 * seg52In0AccY1 rho)) =
        (-1) * (rho 45942 * seg52In0AccX1 rho) - rho 45941 * seg52In0AccY1 rho +
          (seg52In0AccY1 rho - seg52In0AccX1 rho * (-1)) * (rho 45941 + rho 45942) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45948 * (1 - rho 45946) = rho 45943 - rho 45944 - rho 45945 := ha5
      _ = (-1) * rho 45944 - rho 45945 + (seg52In0AccY1 rho - seg52In0AccX1 rho * (-1)) *
          (rho 45941 + rho 45942) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX2 rho = seg52In0AccX1 rho - Bool.toZMod bit * (seg52In0AccX1 rho - rho 45947) := by
    have hd : rho 45949 = Bool.toZMod bit * (rho 45947 - seg52In0AccX1 rho) := by
      rw [← hbit]
      unfold seg52In0AccX1
      linear_combination -r1558
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY2 rho = seg52In0AccY1 rho - Bool.toZMod bit * (seg52In0AccY1 rho - rho 45948) := by
    have hd : rho 45950 = Bool.toZMod bit * (rho 45948 - seg52In0AccY1 rho) := by
      rw [← hbit]
      unfold seg52In0AccY1
      linear_combination -r1559
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45941 * rho 45942 = rho 45951 := by linear_combination r1560
  have hd1 : rho 45941 * rho 45941 = rho 45952 := by linear_combination r1561
  have hd2 : rho 45942 * rho 45942 = rho 45953 := by linear_combination r1562
  have hd3 : rho 45954 * (rho 45942 * rho 45942 + rho 45941 * rho 45941 * (-1)) =
      2 * (rho 45941 * rho 45942) := by
    rw [hd0, hd1, hd2]
    linear_combination r1563
  have hd4 : rho 45955 * (2 - (rho 45942 * rho 45942 + rho 45941 * rho 45941 * (-1))) =
      rho 45942 * rho 45942 - rho 45941 * rho 45941 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1564
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45941, rho 45942⟩
    ⟨rho 45947, rho 45948⟩ ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45954, rho 45955⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1565 rho ∧ Seg52.relationRow1566 rho ∧ Seg52.relationRow1567 rho ∧ Seg52.relationRow1568 rho ∧ Seg52.relationRow1569 rho ∧ Seg52.relationRow1570 rho ∧ Seg52.relationRow1571 rho ∧ Seg52.relationRow1572 rho ∧ Seg52.relationRow1573 rho ∧ Seg52.relationRow1574 rho ∧ Seg52.relationRow1575 rho ∧ Seg52.relationRow1576 rho ∧ Seg52.relationRow1577 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577⟩

theorem seg52In0_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45810 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45954, rho 45955⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45954, rho 45955⟩
        ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45967, rho 45968⟩ := by
  obtain ⟨r1565, r1566, r1567, r1568, r1569, r1570, r1571, r1572, r1573, r1574, r1575, r1576, r1577⟩ := seg52In0_rows2 rho h
  unfold Seg52.relationRow1565 at r1565

  unfold Seg52.relationRow1566 at r1566

  unfold Seg52.relationRow1567 at r1567

  unfold Seg52.relationRow1568 at r1568

  unfold Seg52.relationRow1569 at r1569

  unfold Seg52.relationRow1570 at r1570

  unfold Seg52.relationRow1571 at r1571

  unfold Seg52.relationRow1572 at r1572

  unfold Seg52.relationRow1573 at r1573

  unfold Seg52.relationRow1574 at r1574

  unfold Seg52.relationRow1575 at r1575

  unfold Seg52.relationRow1576 at r1576

  unfold Seg52.relationRow1577 at r1577

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX3 rho = seg52In0AccX2 rho + rho 45962 := by
    unfold seg52In0AccX3 seg52In0AccX2
    ring

  have hnexty : seg52In0AccY3 rho = seg52In0AccY2 rho + rho 45963 := by
    unfold seg52In0AccY3 seg52In0AccY2
    ring

  have ha0 : (rho 45954 + rho 45955) * (seg52In0AccX2 rho + seg52In0AccY2 rho) = rho 45956 := by
    unfold seg52In0AccX2 seg52In0AccY2
    linear_combination r1565
  have ha1 : rho 45955 * seg52In0AccX2 rho = rho 45957 := by
    unfold seg52In0AccX2
    linear_combination r1566
  have ha2 : rho 45954 * seg52In0AccY2 rho = rho 45958 := by
    unfold seg52In0AccY2
    linear_combination r1567
  have ha3 : 3021 * rho 45957 * rho 45958 = rho 45959 := by
    linear_combination r1568
  have ha4 : rho 45960 * (1 + rho 45959) = rho 45957 + rho 45958 := by
    linear_combination r1569
  have ha5 : rho 45961 * (1 - rho 45959) = rho 45956 - rho 45957 - rho 45958 := by
    linear_combination r1570
  have haddx :
      rho 45960 * (1 + 3021 * (rho 45955 * seg52In0AccX2 rho) * (rho 45954 * seg52In0AccY2 rho)) =
        rho 45955 * seg52In0AccX2 rho + rho 45954 * seg52In0AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45961 * (1 - 3021 * (rho 45955 * seg52In0AccX2 rho) * (rho 45954 * seg52In0AccY2 rho)) =
        (-1) * (rho 45955 * seg52In0AccX2 rho) - rho 45954 * seg52In0AccY2 rho +
          (seg52In0AccY2 rho - seg52In0AccX2 rho * (-1)) * (rho 45954 + rho 45955) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45961 * (1 - rho 45959) = rho 45956 - rho 45957 - rho 45958 := ha5
      _ = (-1) * rho 45957 - rho 45958 + (seg52In0AccY2 rho - seg52In0AccX2 rho * (-1)) *
          (rho 45954 + rho 45955) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX3 rho = seg52In0AccX2 rho - Bool.toZMod bit * (seg52In0AccX2 rho - rho 45960) := by
    have hd : rho 45962 = Bool.toZMod bit * (rho 45960 - seg52In0AccX2 rho) := by
      rw [← hbit]
      unfold seg52In0AccX2
      linear_combination -r1571
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY3 rho = seg52In0AccY2 rho - Bool.toZMod bit * (seg52In0AccY2 rho - rho 45961) := by
    have hd : rho 45963 = Bool.toZMod bit * (rho 45961 - seg52In0AccY2 rho) := by
      rw [← hbit]
      unfold seg52In0AccY2
      linear_combination -r1572
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45954 * rho 45955 = rho 45964 := by linear_combination r1573
  have hd1 : rho 45954 * rho 45954 = rho 45965 := by linear_combination r1574
  have hd2 : rho 45955 * rho 45955 = rho 45966 := by linear_combination r1575
  have hd3 : rho 45967 * (rho 45955 * rho 45955 + rho 45954 * rho 45954 * (-1)) =
      2 * (rho 45954 * rho 45955) := by
    rw [hd0, hd1, hd2]
    linear_combination r1576
  have hd4 : rho 45968 * (2 - (rho 45955 * rho 45955 + rho 45954 * rho 45954 * (-1))) =
      rho 45955 * rho 45955 - rho 45954 * rho 45954 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1577
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45954, rho 45955⟩
    ⟨rho 45960, rho 45961⟩ ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45967, rho 45968⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1578 rho ∧ Seg52.relationRow1579 rho ∧ Seg52.relationRow1580 rho ∧ Seg52.relationRow1581 rho ∧ Seg52.relationRow1582 rho ∧ Seg52.relationRow1583 rho ∧ Seg52.relationRow1584 rho ∧ Seg52.relationRow1585 rho ∧ Seg52.relationRow1586 rho ∧ Seg52.relationRow1587 rho ∧ Seg52.relationRow1588 rho ∧ Seg52.relationRow1589 rho ∧ Seg52.relationRow1590 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590⟩

theorem seg52In0_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45811 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45967, rho 45968⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45967, rho 45968⟩
        ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45980, rho 45981⟩ := by
  obtain ⟨r1578, r1579, r1580, r1581, r1582, r1583, r1584, r1585, r1586, r1587, r1588, r1589, r1590⟩ := seg52In0_rows3 rho h
  unfold Seg52.relationRow1578 at r1578

  unfold Seg52.relationRow1579 at r1579

  unfold Seg52.relationRow1580 at r1580

  unfold Seg52.relationRow1581 at r1581

  unfold Seg52.relationRow1582 at r1582

  unfold Seg52.relationRow1583 at r1583

  unfold Seg52.relationRow1584 at r1584

  unfold Seg52.relationRow1585 at r1585

  unfold Seg52.relationRow1586 at r1586

  unfold Seg52.relationRow1587 at r1587

  unfold Seg52.relationRow1588 at r1588

  unfold Seg52.relationRow1589 at r1589

  unfold Seg52.relationRow1590 at r1590

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX4 rho = seg52In0AccX3 rho + rho 45975 := by
    unfold seg52In0AccX4 seg52In0AccX3
    ring

  have hnexty : seg52In0AccY4 rho = seg52In0AccY3 rho + rho 45976 := by
    unfold seg52In0AccY4 seg52In0AccY3
    ring

  have ha0 : (rho 45967 + rho 45968) * (seg52In0AccX3 rho + seg52In0AccY3 rho) = rho 45969 := by
    unfold seg52In0AccX3 seg52In0AccY3
    linear_combination r1578
  have ha1 : rho 45968 * seg52In0AccX3 rho = rho 45970 := by
    unfold seg52In0AccX3
    linear_combination r1579
  have ha2 : rho 45967 * seg52In0AccY3 rho = rho 45971 := by
    unfold seg52In0AccY3
    linear_combination r1580
  have ha3 : 3021 * rho 45970 * rho 45971 = rho 45972 := by
    linear_combination r1581
  have ha4 : rho 45973 * (1 + rho 45972) = rho 45970 + rho 45971 := by
    linear_combination r1582
  have ha5 : rho 45974 * (1 - rho 45972) = rho 45969 - rho 45970 - rho 45971 := by
    linear_combination r1583
  have haddx :
      rho 45973 * (1 + 3021 * (rho 45968 * seg52In0AccX3 rho) * (rho 45967 * seg52In0AccY3 rho)) =
        rho 45968 * seg52In0AccX3 rho + rho 45967 * seg52In0AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45974 * (1 - 3021 * (rho 45968 * seg52In0AccX3 rho) * (rho 45967 * seg52In0AccY3 rho)) =
        (-1) * (rho 45968 * seg52In0AccX3 rho) - rho 45967 * seg52In0AccY3 rho +
          (seg52In0AccY3 rho - seg52In0AccX3 rho * (-1)) * (rho 45967 + rho 45968) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45974 * (1 - rho 45972) = rho 45969 - rho 45970 - rho 45971 := ha5
      _ = (-1) * rho 45970 - rho 45971 + (seg52In0AccY3 rho - seg52In0AccX3 rho * (-1)) *
          (rho 45967 + rho 45968) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX4 rho = seg52In0AccX3 rho - Bool.toZMod bit * (seg52In0AccX3 rho - rho 45973) := by
    have hd : rho 45975 = Bool.toZMod bit * (rho 45973 - seg52In0AccX3 rho) := by
      rw [← hbit]
      unfold seg52In0AccX3
      linear_combination -r1584
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY4 rho = seg52In0AccY3 rho - Bool.toZMod bit * (seg52In0AccY3 rho - rho 45974) := by
    have hd : rho 45976 = Bool.toZMod bit * (rho 45974 - seg52In0AccY3 rho) := by
      rw [← hbit]
      unfold seg52In0AccY3
      linear_combination -r1585
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45967 * rho 45968 = rho 45977 := by linear_combination r1586
  have hd1 : rho 45967 * rho 45967 = rho 45978 := by linear_combination r1587
  have hd2 : rho 45968 * rho 45968 = rho 45979 := by linear_combination r1588
  have hd3 : rho 45980 * (rho 45968 * rho 45968 + rho 45967 * rho 45967 * (-1)) =
      2 * (rho 45967 * rho 45968) := by
    rw [hd0, hd1, hd2]
    linear_combination r1589
  have hd4 : rho 45981 * (2 - (rho 45968 * rho 45968 + rho 45967 * rho 45967 * (-1))) =
      rho 45968 * rho 45968 - rho 45967 * rho 45967 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1590
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45967, rho 45968⟩
    ⟨rho 45973, rho 45974⟩ ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45980, rho 45981⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1591 rho ∧ Seg52.relationRow1592 rho ∧ Seg52.relationRow1593 rho ∧ Seg52.relationRow1594 rho ∧ Seg52.relationRow1595 rho ∧ Seg52.relationRow1596 rho ∧ Seg52.relationRow1597 rho ∧ Seg52.relationRow1598 rho ∧ Seg52.relationRow1599 rho ∧ Seg52.relationRow1600 rho ∧ Seg52.relationRow1601 rho ∧ Seg52.relationRow1602 rho ∧ Seg52.relationRow1603 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart19 at p19

  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨r1600, r1601, r1602, r1603, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600, r1601, r1602, r1603⟩

theorem seg52In0_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45812 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45980, rho 45981⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45980, rho 45981⟩
        ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45993, rho 45994⟩ := by
  obtain ⟨r1591, r1592, r1593, r1594, r1595, r1596, r1597, r1598, r1599, r1600, r1601, r1602, r1603⟩ := seg52In0_rows4 rho h
  unfold Seg52.relationRow1591 at r1591

  unfold Seg52.relationRow1592 at r1592

  unfold Seg52.relationRow1593 at r1593

  unfold Seg52.relationRow1594 at r1594

  unfold Seg52.relationRow1595 at r1595

  unfold Seg52.relationRow1596 at r1596

  unfold Seg52.relationRow1597 at r1597

  unfold Seg52.relationRow1598 at r1598

  unfold Seg52.relationRow1599 at r1599

  unfold Seg52.relationRow1600 at r1600

  unfold Seg52.relationRow1601 at r1601

  unfold Seg52.relationRow1602 at r1602

  unfold Seg52.relationRow1603 at r1603

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX5 rho = seg52In0AccX4 rho + rho 45988 := by
    unfold seg52In0AccX5 seg52In0AccX4
    ring

  have hnexty : seg52In0AccY5 rho = seg52In0AccY4 rho + rho 45989 := by
    unfold seg52In0AccY5 seg52In0AccY4
    ring

  have ha0 : (rho 45980 + rho 45981) * (seg52In0AccX4 rho + seg52In0AccY4 rho) = rho 45982 := by
    unfold seg52In0AccX4 seg52In0AccY4
    linear_combination r1591
  have ha1 : rho 45981 * seg52In0AccX4 rho = rho 45983 := by
    unfold seg52In0AccX4
    linear_combination r1592
  have ha2 : rho 45980 * seg52In0AccY4 rho = rho 45984 := by
    unfold seg52In0AccY4
    linear_combination r1593
  have ha3 : 3021 * rho 45983 * rho 45984 = rho 45985 := by
    linear_combination r1594
  have ha4 : rho 45986 * (1 + rho 45985) = rho 45983 + rho 45984 := by
    linear_combination r1595
  have ha5 : rho 45987 * (1 - rho 45985) = rho 45982 - rho 45983 - rho 45984 := by
    linear_combination r1596
  have haddx :
      rho 45986 * (1 + 3021 * (rho 45981 * seg52In0AccX4 rho) * (rho 45980 * seg52In0AccY4 rho)) =
        rho 45981 * seg52In0AccX4 rho + rho 45980 * seg52In0AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45987 * (1 - 3021 * (rho 45981 * seg52In0AccX4 rho) * (rho 45980 * seg52In0AccY4 rho)) =
        (-1) * (rho 45981 * seg52In0AccX4 rho) - rho 45980 * seg52In0AccY4 rho +
          (seg52In0AccY4 rho - seg52In0AccX4 rho * (-1)) * (rho 45980 + rho 45981) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45987 * (1 - rho 45985) = rho 45982 - rho 45983 - rho 45984 := ha5
      _ = (-1) * rho 45983 - rho 45984 + (seg52In0AccY4 rho - seg52In0AccX4 rho * (-1)) *
          (rho 45980 + rho 45981) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX5 rho = seg52In0AccX4 rho - Bool.toZMod bit * (seg52In0AccX4 rho - rho 45986) := by
    have hd : rho 45988 = Bool.toZMod bit * (rho 45986 - seg52In0AccX4 rho) := by
      rw [← hbit]
      unfold seg52In0AccX4
      linear_combination -r1597
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY5 rho = seg52In0AccY4 rho - Bool.toZMod bit * (seg52In0AccY4 rho - rho 45987) := by
    have hd : rho 45989 = Bool.toZMod bit * (rho 45987 - seg52In0AccY4 rho) := by
      rw [← hbit]
      unfold seg52In0AccY4
      linear_combination -r1598
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45980 * rho 45981 = rho 45990 := by linear_combination r1599
  have hd1 : rho 45980 * rho 45980 = rho 45991 := by linear_combination r1600
  have hd2 : rho 45981 * rho 45981 = rho 45992 := by linear_combination r1601
  have hd3 : rho 45993 * (rho 45981 * rho 45981 + rho 45980 * rho 45980 * (-1)) =
      2 * (rho 45980 * rho 45981) := by
    rw [hd0, hd1, hd2]
    linear_combination r1602
  have hd4 : rho 45994 * (2 - (rho 45981 * rho 45981 + rho 45980 * rho 45980 * (-1))) =
      rho 45981 * rho 45981 - rho 45980 * rho 45980 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1603
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45980, rho 45981⟩
    ⟨rho 45986, rho 45987⟩ ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45993, rho 45994⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1604 rho ∧ Seg52.relationRow1605 rho ∧ Seg52.relationRow1606 rho ∧ Seg52.relationRow1607 rho ∧ Seg52.relationRow1608 rho ∧ Seg52.relationRow1609 rho ∧ Seg52.relationRow1610 rho ∧ Seg52.relationRow1611 rho ∧ Seg52.relationRow1612 rho ∧ Seg52.relationRow1613 rho ∧ Seg52.relationRow1614 rho ∧ Seg52.relationRow1615 rho ∧ Seg52.relationRow1616 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616⟩

theorem seg52In0_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45813 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45993, rho 45994⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45993, rho 45994⟩
        ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 46006, rho 46007⟩ := by
  obtain ⟨r1604, r1605, r1606, r1607, r1608, r1609, r1610, r1611, r1612, r1613, r1614, r1615, r1616⟩ := seg52In0_rows5 rho h
  unfold Seg52.relationRow1604 at r1604

  unfold Seg52.relationRow1605 at r1605

  unfold Seg52.relationRow1606 at r1606

  unfold Seg52.relationRow1607 at r1607

  unfold Seg52.relationRow1608 at r1608

  unfold Seg52.relationRow1609 at r1609

  unfold Seg52.relationRow1610 at r1610

  unfold Seg52.relationRow1611 at r1611

  unfold Seg52.relationRow1612 at r1612

  unfold Seg52.relationRow1613 at r1613

  unfold Seg52.relationRow1614 at r1614

  unfold Seg52.relationRow1615 at r1615

  unfold Seg52.relationRow1616 at r1616

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX6 rho = seg52In0AccX5 rho + rho 46001 := by
    unfold seg52In0AccX6 seg52In0AccX5
    ring

  have hnexty : seg52In0AccY6 rho = seg52In0AccY5 rho + rho 46002 := by
    unfold seg52In0AccY6 seg52In0AccY5
    ring

  have ha0 : (rho 45993 + rho 45994) * (seg52In0AccX5 rho + seg52In0AccY5 rho) = rho 45995 := by
    unfold seg52In0AccX5 seg52In0AccY5
    linear_combination r1604
  have ha1 : rho 45994 * seg52In0AccX5 rho = rho 45996 := by
    unfold seg52In0AccX5
    linear_combination r1605
  have ha2 : rho 45993 * seg52In0AccY5 rho = rho 45997 := by
    unfold seg52In0AccY5
    linear_combination r1606
  have ha3 : 3021 * rho 45996 * rho 45997 = rho 45998 := by
    linear_combination r1607
  have ha4 : rho 45999 * (1 + rho 45998) = rho 45996 + rho 45997 := by
    linear_combination r1608
  have ha5 : rho 46000 * (1 - rho 45998) = rho 45995 - rho 45996 - rho 45997 := by
    linear_combination r1609
  have haddx :
      rho 45999 * (1 + 3021 * (rho 45994 * seg52In0AccX5 rho) * (rho 45993 * seg52In0AccY5 rho)) =
        rho 45994 * seg52In0AccX5 rho + rho 45993 * seg52In0AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46000 * (1 - 3021 * (rho 45994 * seg52In0AccX5 rho) * (rho 45993 * seg52In0AccY5 rho)) =
        (-1) * (rho 45994 * seg52In0AccX5 rho) - rho 45993 * seg52In0AccY5 rho +
          (seg52In0AccY5 rho - seg52In0AccX5 rho * (-1)) * (rho 45993 + rho 45994) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46000 * (1 - rho 45998) = rho 45995 - rho 45996 - rho 45997 := ha5
      _ = (-1) * rho 45996 - rho 45997 + (seg52In0AccY5 rho - seg52In0AccX5 rho * (-1)) *
          (rho 45993 + rho 45994) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX6 rho = seg52In0AccX5 rho - Bool.toZMod bit * (seg52In0AccX5 rho - rho 45999) := by
    have hd : rho 46001 = Bool.toZMod bit * (rho 45999 - seg52In0AccX5 rho) := by
      rw [← hbit]
      unfold seg52In0AccX5
      linear_combination -r1610
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY6 rho = seg52In0AccY5 rho - Bool.toZMod bit * (seg52In0AccY5 rho - rho 46000) := by
    have hd : rho 46002 = Bool.toZMod bit * (rho 46000 - seg52In0AccY5 rho) := by
      rw [← hbit]
      unfold seg52In0AccY5
      linear_combination -r1611
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45993 * rho 45994 = rho 46003 := by linear_combination r1612
  have hd1 : rho 45993 * rho 45993 = rho 46004 := by linear_combination r1613
  have hd2 : rho 45994 * rho 45994 = rho 46005 := by linear_combination r1614
  have hd3 : rho 46006 * (rho 45994 * rho 45994 + rho 45993 * rho 45993 * (-1)) =
      2 * (rho 45993 * rho 45994) := by
    rw [hd0, hd1, hd2]
    linear_combination r1615
  have hd4 : rho 46007 * (2 - (rho 45994 * rho 45994 + rho 45993 * rho 45993 * (-1))) =
      rho 45994 * rho 45994 - rho 45993 * rho 45993 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1616
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45993, rho 45994⟩
    ⟨rho 45999, rho 46000⟩ ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 46006, rho 46007⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1617 rho ∧ Seg52.relationRow1618 rho ∧ Seg52.relationRow1619 rho ∧ Seg52.relationRow1620 rho ∧ Seg52.relationRow1621 rho ∧ Seg52.relationRow1622 rho ∧ Seg52.relationRow1623 rho ∧ Seg52.relationRow1624 rho ∧ Seg52.relationRow1625 rho ∧ Seg52.relationRow1626 rho ∧ Seg52.relationRow1627 rho ∧ Seg52.relationRow1628 rho ∧ Seg52.relationRow1629 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629⟩

theorem seg52In0_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45814 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46006, rho 46007⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 46006, rho 46007⟩
        ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 46019, rho 46020⟩ := by
  obtain ⟨r1617, r1618, r1619, r1620, r1621, r1622, r1623, r1624, r1625, r1626, r1627, r1628, r1629⟩ := seg52In0_rows6 rho h
  unfold Seg52.relationRow1617 at r1617

  unfold Seg52.relationRow1618 at r1618

  unfold Seg52.relationRow1619 at r1619

  unfold Seg52.relationRow1620 at r1620

  unfold Seg52.relationRow1621 at r1621

  unfold Seg52.relationRow1622 at r1622

  unfold Seg52.relationRow1623 at r1623

  unfold Seg52.relationRow1624 at r1624

  unfold Seg52.relationRow1625 at r1625

  unfold Seg52.relationRow1626 at r1626

  unfold Seg52.relationRow1627 at r1627

  unfold Seg52.relationRow1628 at r1628

  unfold Seg52.relationRow1629 at r1629

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX7 rho = seg52In0AccX6 rho + rho 46014 := by
    unfold seg52In0AccX7 seg52In0AccX6
    ring

  have hnexty : seg52In0AccY7 rho = seg52In0AccY6 rho + rho 46015 := by
    unfold seg52In0AccY7 seg52In0AccY6
    ring

  have ha0 : (rho 46006 + rho 46007) * (seg52In0AccX6 rho + seg52In0AccY6 rho) = rho 46008 := by
    unfold seg52In0AccX6 seg52In0AccY6
    linear_combination r1617
  have ha1 : rho 46007 * seg52In0AccX6 rho = rho 46009 := by
    unfold seg52In0AccX6
    linear_combination r1618
  have ha2 : rho 46006 * seg52In0AccY6 rho = rho 46010 := by
    unfold seg52In0AccY6
    linear_combination r1619
  have ha3 : 3021 * rho 46009 * rho 46010 = rho 46011 := by
    linear_combination r1620
  have ha4 : rho 46012 * (1 + rho 46011) = rho 46009 + rho 46010 := by
    linear_combination r1621
  have ha5 : rho 46013 * (1 - rho 46011) = rho 46008 - rho 46009 - rho 46010 := by
    linear_combination r1622
  have haddx :
      rho 46012 * (1 + 3021 * (rho 46007 * seg52In0AccX6 rho) * (rho 46006 * seg52In0AccY6 rho)) =
        rho 46007 * seg52In0AccX6 rho + rho 46006 * seg52In0AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46013 * (1 - 3021 * (rho 46007 * seg52In0AccX6 rho) * (rho 46006 * seg52In0AccY6 rho)) =
        (-1) * (rho 46007 * seg52In0AccX6 rho) - rho 46006 * seg52In0AccY6 rho +
          (seg52In0AccY6 rho - seg52In0AccX6 rho * (-1)) * (rho 46006 + rho 46007) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46013 * (1 - rho 46011) = rho 46008 - rho 46009 - rho 46010 := ha5
      _ = (-1) * rho 46009 - rho 46010 + (seg52In0AccY6 rho - seg52In0AccX6 rho * (-1)) *
          (rho 46006 + rho 46007) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX7 rho = seg52In0AccX6 rho - Bool.toZMod bit * (seg52In0AccX6 rho - rho 46012) := by
    have hd : rho 46014 = Bool.toZMod bit * (rho 46012 - seg52In0AccX6 rho) := by
      rw [← hbit]
      unfold seg52In0AccX6
      linear_combination -r1623
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY7 rho = seg52In0AccY6 rho - Bool.toZMod bit * (seg52In0AccY6 rho - rho 46013) := by
    have hd : rho 46015 = Bool.toZMod bit * (rho 46013 - seg52In0AccY6 rho) := by
      rw [← hbit]
      unfold seg52In0AccY6
      linear_combination -r1624
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46006 * rho 46007 = rho 46016 := by linear_combination r1625
  have hd1 : rho 46006 * rho 46006 = rho 46017 := by linear_combination r1626
  have hd2 : rho 46007 * rho 46007 = rho 46018 := by linear_combination r1627
  have hd3 : rho 46019 * (rho 46007 * rho 46007 + rho 46006 * rho 46006 * (-1)) =
      2 * (rho 46006 * rho 46007) := by
    rw [hd0, hd1, hd2]
    linear_combination r1628
  have hd4 : rho 46020 * (2 - (rho 46007 * rho 46007 + rho 46006 * rho 46006 * (-1))) =
      rho 46007 * rho 46007 - rho 46006 * rho 46006 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1629
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 46006, rho 46007⟩
    ⟨rho 46012, rho 46013⟩ ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 46019, rho 46020⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1630 rho ∧ Seg52.relationRow1631 rho ∧ Seg52.relationRow1632 rho ∧ Seg52.relationRow1633 rho ∧ Seg52.relationRow1634 rho ∧ Seg52.relationRow1635 rho ∧ Seg52.relationRow1636 rho ∧ Seg52.relationRow1637 rho ∧ Seg52.relationRow1638 rho ∧ Seg52.relationRow1639 rho ∧ Seg52.relationRow1640 rho ∧ Seg52.relationRow1641 rho ∧ Seg52.relationRow1642 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642⟩

theorem seg52In0_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45815 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46019, rho 46020⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 46019, rho 46020⟩
        ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 46032, rho 46033⟩ := by
  obtain ⟨r1630, r1631, r1632, r1633, r1634, r1635, r1636, r1637, r1638, r1639, r1640, r1641, r1642⟩ := seg52In0_rows7 rho h
  unfold Seg52.relationRow1630 at r1630

  unfold Seg52.relationRow1631 at r1631

  unfold Seg52.relationRow1632 at r1632

  unfold Seg52.relationRow1633 at r1633

  unfold Seg52.relationRow1634 at r1634

  unfold Seg52.relationRow1635 at r1635

  unfold Seg52.relationRow1636 at r1636

  unfold Seg52.relationRow1637 at r1637

  unfold Seg52.relationRow1638 at r1638

  unfold Seg52.relationRow1639 at r1639

  unfold Seg52.relationRow1640 at r1640

  unfold Seg52.relationRow1641 at r1641

  unfold Seg52.relationRow1642 at r1642

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX8 rho = seg52In0AccX7 rho + rho 46027 := by
    unfold seg52In0AccX8 seg52In0AccX7
    ring

  have hnexty : seg52In0AccY8 rho = seg52In0AccY7 rho + rho 46028 := by
    unfold seg52In0AccY8 seg52In0AccY7
    ring

  have ha0 : (rho 46019 + rho 46020) * (seg52In0AccX7 rho + seg52In0AccY7 rho) = rho 46021 := by
    unfold seg52In0AccX7 seg52In0AccY7
    linear_combination r1630
  have ha1 : rho 46020 * seg52In0AccX7 rho = rho 46022 := by
    unfold seg52In0AccX7
    linear_combination r1631
  have ha2 : rho 46019 * seg52In0AccY7 rho = rho 46023 := by
    unfold seg52In0AccY7
    linear_combination r1632
  have ha3 : 3021 * rho 46022 * rho 46023 = rho 46024 := by
    linear_combination r1633
  have ha4 : rho 46025 * (1 + rho 46024) = rho 46022 + rho 46023 := by
    linear_combination r1634
  have ha5 : rho 46026 * (1 - rho 46024) = rho 46021 - rho 46022 - rho 46023 := by
    linear_combination r1635
  have haddx :
      rho 46025 * (1 + 3021 * (rho 46020 * seg52In0AccX7 rho) * (rho 46019 * seg52In0AccY7 rho)) =
        rho 46020 * seg52In0AccX7 rho + rho 46019 * seg52In0AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46026 * (1 - 3021 * (rho 46020 * seg52In0AccX7 rho) * (rho 46019 * seg52In0AccY7 rho)) =
        (-1) * (rho 46020 * seg52In0AccX7 rho) - rho 46019 * seg52In0AccY7 rho +
          (seg52In0AccY7 rho - seg52In0AccX7 rho * (-1)) * (rho 46019 + rho 46020) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46026 * (1 - rho 46024) = rho 46021 - rho 46022 - rho 46023 := ha5
      _ = (-1) * rho 46022 - rho 46023 + (seg52In0AccY7 rho - seg52In0AccX7 rho * (-1)) *
          (rho 46019 + rho 46020) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX8 rho = seg52In0AccX7 rho - Bool.toZMod bit * (seg52In0AccX7 rho - rho 46025) := by
    have hd : rho 46027 = Bool.toZMod bit * (rho 46025 - seg52In0AccX7 rho) := by
      rw [← hbit]
      unfold seg52In0AccX7
      linear_combination -r1636
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY8 rho = seg52In0AccY7 rho - Bool.toZMod bit * (seg52In0AccY7 rho - rho 46026) := by
    have hd : rho 46028 = Bool.toZMod bit * (rho 46026 - seg52In0AccY7 rho) := by
      rw [← hbit]
      unfold seg52In0AccY7
      linear_combination -r1637
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46019 * rho 46020 = rho 46029 := by linear_combination r1638
  have hd1 : rho 46019 * rho 46019 = rho 46030 := by linear_combination r1639
  have hd2 : rho 46020 * rho 46020 = rho 46031 := by linear_combination r1640
  have hd3 : rho 46032 * (rho 46020 * rho 46020 + rho 46019 * rho 46019 * (-1)) =
      2 * (rho 46019 * rho 46020) := by
    rw [hd0, hd1, hd2]
    linear_combination r1641
  have hd4 : rho 46033 * (2 - (rho 46020 * rho 46020 + rho 46019 * rho 46019 * (-1))) =
      rho 46020 * rho 46020 - rho 46019 * rho 46019 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1642
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 46019, rho 46020⟩
    ⟨rho 46025, rho 46026⟩ ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 46032, rho 46033⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1643 rho ∧ Seg52.relationRow1644 rho ∧ Seg52.relationRow1645 rho ∧ Seg52.relationRow1646 rho ∧ Seg52.relationRow1647 rho ∧ Seg52.relationRow1648 rho ∧ Seg52.relationRow1649 rho ∧ Seg52.relationRow1650 rho ∧ Seg52.relationRow1651 rho ∧ Seg52.relationRow1652 rho ∧ Seg52.relationRow1653 rho ∧ Seg52.relationRow1654 rho ∧ Seg52.relationRow1655 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655⟩

theorem seg52In0_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45816 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46032, rho 46033⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 46032, rho 46033⟩
        ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 46045, rho 46046⟩ := by
  obtain ⟨r1643, r1644, r1645, r1646, r1647, r1648, r1649, r1650, r1651, r1652, r1653, r1654, r1655⟩ := seg52In0_rows8 rho h
  unfold Seg52.relationRow1643 at r1643

  unfold Seg52.relationRow1644 at r1644

  unfold Seg52.relationRow1645 at r1645

  unfold Seg52.relationRow1646 at r1646

  unfold Seg52.relationRow1647 at r1647

  unfold Seg52.relationRow1648 at r1648

  unfold Seg52.relationRow1649 at r1649

  unfold Seg52.relationRow1650 at r1650

  unfold Seg52.relationRow1651 at r1651

  unfold Seg52.relationRow1652 at r1652

  unfold Seg52.relationRow1653 at r1653

  unfold Seg52.relationRow1654 at r1654

  unfold Seg52.relationRow1655 at r1655

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX9 rho = seg52In0AccX8 rho + rho 46040 := by
    unfold seg52In0AccX9 seg52In0AccX8
    ring

  have hnexty : seg52In0AccY9 rho = seg52In0AccY8 rho + rho 46041 := by
    unfold seg52In0AccY9 seg52In0AccY8
    ring

  have ha0 : (rho 46032 + rho 46033) * (seg52In0AccX8 rho + seg52In0AccY8 rho) = rho 46034 := by
    unfold seg52In0AccX8 seg52In0AccY8
    linear_combination r1643
  have ha1 : rho 46033 * seg52In0AccX8 rho = rho 46035 := by
    unfold seg52In0AccX8
    linear_combination r1644
  have ha2 : rho 46032 * seg52In0AccY8 rho = rho 46036 := by
    unfold seg52In0AccY8
    linear_combination r1645
  have ha3 : 3021 * rho 46035 * rho 46036 = rho 46037 := by
    linear_combination r1646
  have ha4 : rho 46038 * (1 + rho 46037) = rho 46035 + rho 46036 := by
    linear_combination r1647
  have ha5 : rho 46039 * (1 - rho 46037) = rho 46034 - rho 46035 - rho 46036 := by
    linear_combination r1648
  have haddx :
      rho 46038 * (1 + 3021 * (rho 46033 * seg52In0AccX8 rho) * (rho 46032 * seg52In0AccY8 rho)) =
        rho 46033 * seg52In0AccX8 rho + rho 46032 * seg52In0AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46039 * (1 - 3021 * (rho 46033 * seg52In0AccX8 rho) * (rho 46032 * seg52In0AccY8 rho)) =
        (-1) * (rho 46033 * seg52In0AccX8 rho) - rho 46032 * seg52In0AccY8 rho +
          (seg52In0AccY8 rho - seg52In0AccX8 rho * (-1)) * (rho 46032 + rho 46033) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46039 * (1 - rho 46037) = rho 46034 - rho 46035 - rho 46036 := ha5
      _ = (-1) * rho 46035 - rho 46036 + (seg52In0AccY8 rho - seg52In0AccX8 rho * (-1)) *
          (rho 46032 + rho 46033) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX9 rho = seg52In0AccX8 rho - Bool.toZMod bit * (seg52In0AccX8 rho - rho 46038) := by
    have hd : rho 46040 = Bool.toZMod bit * (rho 46038 - seg52In0AccX8 rho) := by
      rw [← hbit]
      unfold seg52In0AccX8
      linear_combination -r1649
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY9 rho = seg52In0AccY8 rho - Bool.toZMod bit * (seg52In0AccY8 rho - rho 46039) := by
    have hd : rho 46041 = Bool.toZMod bit * (rho 46039 - seg52In0AccY8 rho) := by
      rw [← hbit]
      unfold seg52In0AccY8
      linear_combination -r1650
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46032 * rho 46033 = rho 46042 := by linear_combination r1651
  have hd1 : rho 46032 * rho 46032 = rho 46043 := by linear_combination r1652
  have hd2 : rho 46033 * rho 46033 = rho 46044 := by linear_combination r1653
  have hd3 : rho 46045 * (rho 46033 * rho 46033 + rho 46032 * rho 46032 * (-1)) =
      2 * (rho 46032 * rho 46033) := by
    rw [hd0, hd1, hd2]
    linear_combination r1654
  have hd4 : rho 46046 * (2 - (rho 46033 * rho 46033 + rho 46032 * rho 46032 * (-1))) =
      rho 46033 * rho 46033 - rho 46032 * rho 46032 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1655
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 46032, rho 46033⟩
    ⟨rho 46038, rho 46039⟩ ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 46045, rho 46046⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1656 rho ∧ Seg52.relationRow1657 rho ∧ Seg52.relationRow1658 rho ∧ Seg52.relationRow1659 rho ∧ Seg52.relationRow1660 rho ∧ Seg52.relationRow1661 rho ∧ Seg52.relationRow1662 rho ∧ Seg52.relationRow1663 rho ∧ Seg52.relationRow1664 rho ∧ Seg52.relationRow1665 rho ∧ Seg52.relationRow1666 rho ∧ Seg52.relationRow1667 rho ∧ Seg52.relationRow1668 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668⟩

theorem seg52In0_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45817 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46045, rho 46046⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 46045, rho 46046⟩
        ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 46058, rho 46059⟩ := by
  obtain ⟨r1656, r1657, r1658, r1659, r1660, r1661, r1662, r1663, r1664, r1665, r1666, r1667, r1668⟩ := seg52In0_rows9 rho h
  unfold Seg52.relationRow1656 at r1656

  unfold Seg52.relationRow1657 at r1657

  unfold Seg52.relationRow1658 at r1658

  unfold Seg52.relationRow1659 at r1659

  unfold Seg52.relationRow1660 at r1660

  unfold Seg52.relationRow1661 at r1661

  unfold Seg52.relationRow1662 at r1662

  unfold Seg52.relationRow1663 at r1663

  unfold Seg52.relationRow1664 at r1664

  unfold Seg52.relationRow1665 at r1665

  unfold Seg52.relationRow1666 at r1666

  unfold Seg52.relationRow1667 at r1667

  unfold Seg52.relationRow1668 at r1668

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX10 rho = seg52In0AccX9 rho + rho 46053 := by
    unfold seg52In0AccX10 seg52In0AccX9
    ring

  have hnexty : seg52In0AccY10 rho = seg52In0AccY9 rho + rho 46054 := by
    unfold seg52In0AccY10 seg52In0AccY9
    ring

  have ha0 : (rho 46045 + rho 46046) * (seg52In0AccX9 rho + seg52In0AccY9 rho) = rho 46047 := by
    unfold seg52In0AccX9 seg52In0AccY9
    linear_combination r1656
  have ha1 : rho 46046 * seg52In0AccX9 rho = rho 46048 := by
    unfold seg52In0AccX9
    linear_combination r1657
  have ha2 : rho 46045 * seg52In0AccY9 rho = rho 46049 := by
    unfold seg52In0AccY9
    linear_combination r1658
  have ha3 : 3021 * rho 46048 * rho 46049 = rho 46050 := by
    linear_combination r1659
  have ha4 : rho 46051 * (1 + rho 46050) = rho 46048 + rho 46049 := by
    linear_combination r1660
  have ha5 : rho 46052 * (1 - rho 46050) = rho 46047 - rho 46048 - rho 46049 := by
    linear_combination r1661
  have haddx :
      rho 46051 * (1 + 3021 * (rho 46046 * seg52In0AccX9 rho) * (rho 46045 * seg52In0AccY9 rho)) =
        rho 46046 * seg52In0AccX9 rho + rho 46045 * seg52In0AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46052 * (1 - 3021 * (rho 46046 * seg52In0AccX9 rho) * (rho 46045 * seg52In0AccY9 rho)) =
        (-1) * (rho 46046 * seg52In0AccX9 rho) - rho 46045 * seg52In0AccY9 rho +
          (seg52In0AccY9 rho - seg52In0AccX9 rho * (-1)) * (rho 46045 + rho 46046) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46052 * (1 - rho 46050) = rho 46047 - rho 46048 - rho 46049 := ha5
      _ = (-1) * rho 46048 - rho 46049 + (seg52In0AccY9 rho - seg52In0AccX9 rho * (-1)) *
          (rho 46045 + rho 46046) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX10 rho = seg52In0AccX9 rho - Bool.toZMod bit * (seg52In0AccX9 rho - rho 46051) := by
    have hd : rho 46053 = Bool.toZMod bit * (rho 46051 - seg52In0AccX9 rho) := by
      rw [← hbit]
      unfold seg52In0AccX9
      linear_combination -r1662
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY10 rho = seg52In0AccY9 rho - Bool.toZMod bit * (seg52In0AccY9 rho - rho 46052) := by
    have hd : rho 46054 = Bool.toZMod bit * (rho 46052 - seg52In0AccY9 rho) := by
      rw [← hbit]
      unfold seg52In0AccY9
      linear_combination -r1663
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46045 * rho 46046 = rho 46055 := by linear_combination r1664
  have hd1 : rho 46045 * rho 46045 = rho 46056 := by linear_combination r1665
  have hd2 : rho 46046 * rho 46046 = rho 46057 := by linear_combination r1666
  have hd3 : rho 46058 * (rho 46046 * rho 46046 + rho 46045 * rho 46045 * (-1)) =
      2 * (rho 46045 * rho 46046) := by
    rw [hd0, hd1, hd2]
    linear_combination r1667
  have hd4 : rho 46059 * (2 - (rho 46046 * rho 46046 + rho 46045 * rho 46045 * (-1))) =
      rho 46046 * rho 46046 - rho 46045 * rho 46045 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1668
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 46045, rho 46046⟩
    ⟨rho 46051, rho 46052⟩ ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 46058, rho 46059⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1669 rho ∧ Seg52.relationRow1670 rho ∧ Seg52.relationRow1671 rho ∧ Seg52.relationRow1672 rho ∧ Seg52.relationRow1673 rho ∧ Seg52.relationRow1674 rho ∧ Seg52.relationRow1675 rho ∧ Seg52.relationRow1676 rho ∧ Seg52.relationRow1677 rho ∧ Seg52.relationRow1678 rho ∧ Seg52.relationRow1679 rho ∧ Seg52.relationRow1680 rho ∧ Seg52.relationRow1681 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p20, p21, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart20 at p20

  rcases p20 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679⟩

  unfold Seg52.relationPart21 at p21

  rcases p21 with ⟨r1680, r1681, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679, r1680, r1681⟩

theorem seg52In0_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45818 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46058, rho 46059⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 46058, rho 46059⟩
        ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 46071, rho 46072⟩ := by
  obtain ⟨r1669, r1670, r1671, r1672, r1673, r1674, r1675, r1676, r1677, r1678, r1679, r1680, r1681⟩ := seg52In0_rows10 rho h
  unfold Seg52.relationRow1669 at r1669

  unfold Seg52.relationRow1670 at r1670

  unfold Seg52.relationRow1671 at r1671

  unfold Seg52.relationRow1672 at r1672

  unfold Seg52.relationRow1673 at r1673

  unfold Seg52.relationRow1674 at r1674

  unfold Seg52.relationRow1675 at r1675

  unfold Seg52.relationRow1676 at r1676

  unfold Seg52.relationRow1677 at r1677

  unfold Seg52.relationRow1678 at r1678

  unfold Seg52.relationRow1679 at r1679

  unfold Seg52.relationRow1680 at r1680

  unfold Seg52.relationRow1681 at r1681

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX11 rho = seg52In0AccX10 rho + rho 46066 := by
    unfold seg52In0AccX11 seg52In0AccX10
    ring

  have hnexty : seg52In0AccY11 rho = seg52In0AccY10 rho + rho 46067 := by
    unfold seg52In0AccY11 seg52In0AccY10
    ring

  have ha0 : (rho 46058 + rho 46059) * (seg52In0AccX10 rho + seg52In0AccY10 rho) = rho 46060 := by
    unfold seg52In0AccX10 seg52In0AccY10
    linear_combination r1669
  have ha1 : rho 46059 * seg52In0AccX10 rho = rho 46061 := by
    unfold seg52In0AccX10
    linear_combination r1670
  have ha2 : rho 46058 * seg52In0AccY10 rho = rho 46062 := by
    unfold seg52In0AccY10
    linear_combination r1671
  have ha3 : 3021 * rho 46061 * rho 46062 = rho 46063 := by
    linear_combination r1672
  have ha4 : rho 46064 * (1 + rho 46063) = rho 46061 + rho 46062 := by
    linear_combination r1673
  have ha5 : rho 46065 * (1 - rho 46063) = rho 46060 - rho 46061 - rho 46062 := by
    linear_combination r1674
  have haddx :
      rho 46064 * (1 + 3021 * (rho 46059 * seg52In0AccX10 rho) * (rho 46058 * seg52In0AccY10 rho)) =
        rho 46059 * seg52In0AccX10 rho + rho 46058 * seg52In0AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46065 * (1 - 3021 * (rho 46059 * seg52In0AccX10 rho) * (rho 46058 * seg52In0AccY10 rho)) =
        (-1) * (rho 46059 * seg52In0AccX10 rho) - rho 46058 * seg52In0AccY10 rho +
          (seg52In0AccY10 rho - seg52In0AccX10 rho * (-1)) * (rho 46058 + rho 46059) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46065 * (1 - rho 46063) = rho 46060 - rho 46061 - rho 46062 := ha5
      _ = (-1) * rho 46061 - rho 46062 + (seg52In0AccY10 rho - seg52In0AccX10 rho * (-1)) *
          (rho 46058 + rho 46059) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX11 rho = seg52In0AccX10 rho - Bool.toZMod bit * (seg52In0AccX10 rho - rho 46064) := by
    have hd : rho 46066 = Bool.toZMod bit * (rho 46064 - seg52In0AccX10 rho) := by
      rw [← hbit]
      unfold seg52In0AccX10
      linear_combination -r1675
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY11 rho = seg52In0AccY10 rho - Bool.toZMod bit * (seg52In0AccY10 rho - rho 46065) := by
    have hd : rho 46067 = Bool.toZMod bit * (rho 46065 - seg52In0AccY10 rho) := by
      rw [← hbit]
      unfold seg52In0AccY10
      linear_combination -r1676
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46058 * rho 46059 = rho 46068 := by linear_combination r1677
  have hd1 : rho 46058 * rho 46058 = rho 46069 := by linear_combination r1678
  have hd2 : rho 46059 * rho 46059 = rho 46070 := by linear_combination r1679
  have hd3 : rho 46071 * (rho 46059 * rho 46059 + rho 46058 * rho 46058 * (-1)) =
      2 * (rho 46058 * rho 46059) := by
    rw [hd0, hd1, hd2]
    linear_combination r1680
  have hd4 : rho 46072 * (2 - (rho 46059 * rho 46059 + rho 46058 * rho 46058 * (-1))) =
      rho 46059 * rho 46059 - rho 46058 * rho 46058 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1681
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 46058, rho 46059⟩
    ⟨rho 46064, rho 46065⟩ ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 46071, rho 46072⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg52In0_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg52In0_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg52In0_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg52In0_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg52In0_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg52In0_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg52In0_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg52In0_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg52In0_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg52In0_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
