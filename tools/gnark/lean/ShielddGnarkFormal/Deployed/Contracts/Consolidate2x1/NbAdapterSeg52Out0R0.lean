import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4485 rho ∧ Seg52.relationRow4486 rho ∧ Seg52.relationRow4487 rho ∧ Seg52.relationRow4488 rho ∧ Seg52.relationRow4489 rho ∧ Seg52.relationRow4490 rho ∧ Seg52.relationRow4491 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, r4485, r4486, r4487, r4488, r4489, r4490, r4491, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4485, r4486, r4487, r4488, r4489, r4490, r4491⟩

theorem seg52Out0_rung0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48746 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX0 rho, seg52Out0AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX0 rho, seg52Out0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
        ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 48879, rho 48880⟩ := by
  obtain ⟨r4485, r4486, r4487, r4488, r4489, r4490, r4491⟩ := seg52Out0_rows0 rho h
  unfold Seg52.relationRow4485 at r4485

  unfold Seg52.relationRow4486 at r4486

  unfold Seg52.relationRow4487 at r4487

  unfold Seg52.relationRow4488 at r4488

  unfold Seg52.relationRow4489 at r4489

  unfold Seg52.relationRow4490 at r4490

  unfold Seg52.relationRow4491 at r4491

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX1 rho = seg52Out0AccX0 rho + rho 48874 := by
    unfold seg52Out0AccX1 seg52Out0AccX0
    ring

  have hnexty : seg52Out0AccY1 rho = seg52Out0AccY0 rho + rho 48875 := by
    unfold seg52Out0AccY1 seg52Out0AccY0
    ring

  have haddx :
      rho 45162 * (1 + 3021 * (rho 45164 * seg52Out0AccX0 rho) * (rho 45162 * seg52Out0AccY0 rho)) =
        rho 45164 * seg52Out0AccX0 rho + rho 45162 * seg52Out0AccY0 rho := by
    unfold seg52Out0AccX0 seg52Out0AccY0
    ring
  have haddy :
      rho 45164 * (1 - 3021 * (rho 45164 * seg52Out0AccX0 rho) * (rho 45162 * seg52Out0AccY0 rho)) =
        (-1) * (rho 45164 * seg52Out0AccX0 rho) - rho 45162 * seg52Out0AccY0 rho +
          (seg52Out0AccY0 rho - seg52Out0AccX0 rho * (-1)) * (rho 45162 + rho 45164) := by
    unfold seg52Out0AccX0 seg52Out0AccY0
    ring
  have hselx : seg52Out0AccX1 rho = seg52Out0AccX0 rho - Bool.toZMod bit * (seg52Out0AccX0 rho - rho 45162) := by
    have hd : rho 48874 = Bool.toZMod bit * (rho 45162 - seg52Out0AccX0 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX0
      linear_combination -r4485
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY1 rho = seg52Out0AccY0 rho - Bool.toZMod bit * (seg52Out0AccY0 rho - rho 45164) := by
    have hd : rho 48875 = Bool.toZMod bit * (rho 45164 - seg52Out0AccY0 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY0
      linear_combination -r4486
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45162 * rho 45164 = rho 48876 := by linear_combination r4487
  have hd1 : rho 45162 * rho 45162 = rho 48877 := by linear_combination r4488
  have hd2 : rho 45164 * rho 45164 = rho 48878 := by linear_combination r4489
  have hd3 : rho 48879 * (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1)) =
      2 * (rho 45162 * rho 45164) := by
    rw [hd0, hd1, hd2]
    linear_combination r4490
  have hd4 : rho 48880 * (2 - (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1))) =
      rho 45164 * rho 45164 - rho 45162 * rho 45162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4491
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX0 rho, seg52Out0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
    ⟨rho 45162, rho 45164⟩ ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 48879, rho 48880⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4492 rho ∧ Seg52.relationRow4493 rho ∧ Seg52.relationRow4494 rho ∧ Seg52.relationRow4495 rho ∧ Seg52.relationRow4496 rho ∧ Seg52.relationRow4497 rho ∧ Seg52.relationRow4498 rho ∧ Seg52.relationRow4499 rho ∧ Seg52.relationRow4500 rho ∧ Seg52.relationRow4501 rho ∧ Seg52.relationRow4502 rho ∧ Seg52.relationRow4503 rho ∧ Seg52.relationRow4504 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504⟩

theorem seg52Out0_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48747 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48879, rho 48880⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 48879, rho 48880⟩
        ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 48892, rho 48893⟩ := by
  obtain ⟨r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504⟩ := seg52Out0_rows1 rho h
  unfold Seg52.relationRow4492 at r4492

  unfold Seg52.relationRow4493 at r4493

  unfold Seg52.relationRow4494 at r4494

  unfold Seg52.relationRow4495 at r4495

  unfold Seg52.relationRow4496 at r4496

  unfold Seg52.relationRow4497 at r4497

  unfold Seg52.relationRow4498 at r4498

  unfold Seg52.relationRow4499 at r4499

  unfold Seg52.relationRow4500 at r4500

  unfold Seg52.relationRow4501 at r4501

  unfold Seg52.relationRow4502 at r4502

  unfold Seg52.relationRow4503 at r4503

  unfold Seg52.relationRow4504 at r4504

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX2 rho = seg52Out0AccX1 rho + rho 48887 := by
    unfold seg52Out0AccX2 seg52Out0AccX1
    ring

  have hnexty : seg52Out0AccY2 rho = seg52Out0AccY1 rho + rho 48888 := by
    unfold seg52Out0AccY2 seg52Out0AccY1
    ring

  have ha0 : (rho 48879 + rho 48880) * (seg52Out0AccX1 rho + seg52Out0AccY1 rho) = rho 48881 := by
    unfold seg52Out0AccX1 seg52Out0AccY1
    linear_combination r4492
  have ha1 : rho 48880 * seg52Out0AccX1 rho = rho 48882 := by
    unfold seg52Out0AccX1
    linear_combination r4493
  have ha2 : rho 48879 * seg52Out0AccY1 rho = rho 48883 := by
    unfold seg52Out0AccY1
    linear_combination r4494
  have ha3 : 3021 * rho 48882 * rho 48883 = rho 48884 := by
    linear_combination r4495
  have ha4 : rho 48885 * (1 + rho 48884) = rho 48882 + rho 48883 := by
    linear_combination r4496
  have ha5 : rho 48886 * (1 - rho 48884) = rho 48881 - rho 48882 - rho 48883 := by
    linear_combination r4497
  have haddx :
      rho 48885 * (1 + 3021 * (rho 48880 * seg52Out0AccX1 rho) * (rho 48879 * seg52Out0AccY1 rho)) =
        rho 48880 * seg52Out0AccX1 rho + rho 48879 * seg52Out0AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48886 * (1 - 3021 * (rho 48880 * seg52Out0AccX1 rho) * (rho 48879 * seg52Out0AccY1 rho)) =
        (-1) * (rho 48880 * seg52Out0AccX1 rho) - rho 48879 * seg52Out0AccY1 rho +
          (seg52Out0AccY1 rho - seg52Out0AccX1 rho * (-1)) * (rho 48879 + rho 48880) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48886 * (1 - rho 48884) = rho 48881 - rho 48882 - rho 48883 := ha5
      _ = (-1) * rho 48882 - rho 48883 + (seg52Out0AccY1 rho - seg52Out0AccX1 rho * (-1)) *
          (rho 48879 + rho 48880) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX2 rho = seg52Out0AccX1 rho - Bool.toZMod bit * (seg52Out0AccX1 rho - rho 48885) := by
    have hd : rho 48887 = Bool.toZMod bit * (rho 48885 - seg52Out0AccX1 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX1
      linear_combination -r4498
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY2 rho = seg52Out0AccY1 rho - Bool.toZMod bit * (seg52Out0AccY1 rho - rho 48886) := by
    have hd : rho 48888 = Bool.toZMod bit * (rho 48886 - seg52Out0AccY1 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY1
      linear_combination -r4499
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48879 * rho 48880 = rho 48889 := by linear_combination r4500
  have hd1 : rho 48879 * rho 48879 = rho 48890 := by linear_combination r4501
  have hd2 : rho 48880 * rho 48880 = rho 48891 := by linear_combination r4502
  have hd3 : rho 48892 * (rho 48880 * rho 48880 + rho 48879 * rho 48879 * (-1)) =
      2 * (rho 48879 * rho 48880) := by
    rw [hd0, hd1, hd2]
    linear_combination r4503
  have hd4 : rho 48893 * (2 - (rho 48880 * rho 48880 + rho 48879 * rho 48879 * (-1))) =
      rho 48880 * rho 48880 - rho 48879 * rho 48879 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4504
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 48879, rho 48880⟩
    ⟨rho 48885, rho 48886⟩ ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 48892, rho 48893⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4505 rho ∧ Seg52.relationRow4506 rho ∧ Seg52.relationRow4507 rho ∧ Seg52.relationRow4508 rho ∧ Seg52.relationRow4509 rho ∧ Seg52.relationRow4510 rho ∧ Seg52.relationRow4511 rho ∧ Seg52.relationRow4512 rho ∧ Seg52.relationRow4513 rho ∧ Seg52.relationRow4514 rho ∧ Seg52.relationRow4515 rho ∧ Seg52.relationRow4516 rho ∧ Seg52.relationRow4517 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517⟩

theorem seg52Out0_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48748 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48892, rho 48893⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 48892, rho 48893⟩
        ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 48905, rho 48906⟩ := by
  obtain ⟨r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517⟩ := seg52Out0_rows2 rho h
  unfold Seg52.relationRow4505 at r4505

  unfold Seg52.relationRow4506 at r4506

  unfold Seg52.relationRow4507 at r4507

  unfold Seg52.relationRow4508 at r4508

  unfold Seg52.relationRow4509 at r4509

  unfold Seg52.relationRow4510 at r4510

  unfold Seg52.relationRow4511 at r4511

  unfold Seg52.relationRow4512 at r4512

  unfold Seg52.relationRow4513 at r4513

  unfold Seg52.relationRow4514 at r4514

  unfold Seg52.relationRow4515 at r4515

  unfold Seg52.relationRow4516 at r4516

  unfold Seg52.relationRow4517 at r4517

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX3 rho = seg52Out0AccX2 rho + rho 48900 := by
    unfold seg52Out0AccX3 seg52Out0AccX2
    ring

  have hnexty : seg52Out0AccY3 rho = seg52Out0AccY2 rho + rho 48901 := by
    unfold seg52Out0AccY3 seg52Out0AccY2
    ring

  have ha0 : (rho 48892 + rho 48893) * (seg52Out0AccX2 rho + seg52Out0AccY2 rho) = rho 48894 := by
    unfold seg52Out0AccX2 seg52Out0AccY2
    linear_combination r4505
  have ha1 : rho 48893 * seg52Out0AccX2 rho = rho 48895 := by
    unfold seg52Out0AccX2
    linear_combination r4506
  have ha2 : rho 48892 * seg52Out0AccY2 rho = rho 48896 := by
    unfold seg52Out0AccY2
    linear_combination r4507
  have ha3 : 3021 * rho 48895 * rho 48896 = rho 48897 := by
    linear_combination r4508
  have ha4 : rho 48898 * (1 + rho 48897) = rho 48895 + rho 48896 := by
    linear_combination r4509
  have ha5 : rho 48899 * (1 - rho 48897) = rho 48894 - rho 48895 - rho 48896 := by
    linear_combination r4510
  have haddx :
      rho 48898 * (1 + 3021 * (rho 48893 * seg52Out0AccX2 rho) * (rho 48892 * seg52Out0AccY2 rho)) =
        rho 48893 * seg52Out0AccX2 rho + rho 48892 * seg52Out0AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48899 * (1 - 3021 * (rho 48893 * seg52Out0AccX2 rho) * (rho 48892 * seg52Out0AccY2 rho)) =
        (-1) * (rho 48893 * seg52Out0AccX2 rho) - rho 48892 * seg52Out0AccY2 rho +
          (seg52Out0AccY2 rho - seg52Out0AccX2 rho * (-1)) * (rho 48892 + rho 48893) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48899 * (1 - rho 48897) = rho 48894 - rho 48895 - rho 48896 := ha5
      _ = (-1) * rho 48895 - rho 48896 + (seg52Out0AccY2 rho - seg52Out0AccX2 rho * (-1)) *
          (rho 48892 + rho 48893) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX3 rho = seg52Out0AccX2 rho - Bool.toZMod bit * (seg52Out0AccX2 rho - rho 48898) := by
    have hd : rho 48900 = Bool.toZMod bit * (rho 48898 - seg52Out0AccX2 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX2
      linear_combination -r4511
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY3 rho = seg52Out0AccY2 rho - Bool.toZMod bit * (seg52Out0AccY2 rho - rho 48899) := by
    have hd : rho 48901 = Bool.toZMod bit * (rho 48899 - seg52Out0AccY2 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY2
      linear_combination -r4512
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48892 * rho 48893 = rho 48902 := by linear_combination r4513
  have hd1 : rho 48892 * rho 48892 = rho 48903 := by linear_combination r4514
  have hd2 : rho 48893 * rho 48893 = rho 48904 := by linear_combination r4515
  have hd3 : rho 48905 * (rho 48893 * rho 48893 + rho 48892 * rho 48892 * (-1)) =
      2 * (rho 48892 * rho 48893) := by
    rw [hd0, hd1, hd2]
    linear_combination r4516
  have hd4 : rho 48906 * (2 - (rho 48893 * rho 48893 + rho 48892 * rho 48892 * (-1))) =
      rho 48893 * rho 48893 - rho 48892 * rho 48892 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4517
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 48892, rho 48893⟩
    ⟨rho 48898, rho 48899⟩ ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 48905, rho 48906⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4518 rho ∧ Seg52.relationRow4519 rho ∧ Seg52.relationRow4520 rho ∧ Seg52.relationRow4521 rho ∧ Seg52.relationRow4522 rho ∧ Seg52.relationRow4523 rho ∧ Seg52.relationRow4524 rho ∧ Seg52.relationRow4525 rho ∧ Seg52.relationRow4526 rho ∧ Seg52.relationRow4527 rho ∧ Seg52.relationRow4528 rho ∧ Seg52.relationRow4529 rho ∧ Seg52.relationRow4530 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530⟩

theorem seg52Out0_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48749 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48905, rho 48906⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 48905, rho 48906⟩
        ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 48918, rho 48919⟩ := by
  obtain ⟨r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530⟩ := seg52Out0_rows3 rho h
  unfold Seg52.relationRow4518 at r4518

  unfold Seg52.relationRow4519 at r4519

  unfold Seg52.relationRow4520 at r4520

  unfold Seg52.relationRow4521 at r4521

  unfold Seg52.relationRow4522 at r4522

  unfold Seg52.relationRow4523 at r4523

  unfold Seg52.relationRow4524 at r4524

  unfold Seg52.relationRow4525 at r4525

  unfold Seg52.relationRow4526 at r4526

  unfold Seg52.relationRow4527 at r4527

  unfold Seg52.relationRow4528 at r4528

  unfold Seg52.relationRow4529 at r4529

  unfold Seg52.relationRow4530 at r4530

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX4 rho = seg52Out0AccX3 rho + rho 48913 := by
    unfold seg52Out0AccX4 seg52Out0AccX3
    ring

  have hnexty : seg52Out0AccY4 rho = seg52Out0AccY3 rho + rho 48914 := by
    unfold seg52Out0AccY4 seg52Out0AccY3
    ring

  have ha0 : (rho 48905 + rho 48906) * (seg52Out0AccX3 rho + seg52Out0AccY3 rho) = rho 48907 := by
    unfold seg52Out0AccX3 seg52Out0AccY3
    linear_combination r4518
  have ha1 : rho 48906 * seg52Out0AccX3 rho = rho 48908 := by
    unfold seg52Out0AccX3
    linear_combination r4519
  have ha2 : rho 48905 * seg52Out0AccY3 rho = rho 48909 := by
    unfold seg52Out0AccY3
    linear_combination r4520
  have ha3 : 3021 * rho 48908 * rho 48909 = rho 48910 := by
    linear_combination r4521
  have ha4 : rho 48911 * (1 + rho 48910) = rho 48908 + rho 48909 := by
    linear_combination r4522
  have ha5 : rho 48912 * (1 - rho 48910) = rho 48907 - rho 48908 - rho 48909 := by
    linear_combination r4523
  have haddx :
      rho 48911 * (1 + 3021 * (rho 48906 * seg52Out0AccX3 rho) * (rho 48905 * seg52Out0AccY3 rho)) =
        rho 48906 * seg52Out0AccX3 rho + rho 48905 * seg52Out0AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48912 * (1 - 3021 * (rho 48906 * seg52Out0AccX3 rho) * (rho 48905 * seg52Out0AccY3 rho)) =
        (-1) * (rho 48906 * seg52Out0AccX3 rho) - rho 48905 * seg52Out0AccY3 rho +
          (seg52Out0AccY3 rho - seg52Out0AccX3 rho * (-1)) * (rho 48905 + rho 48906) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48912 * (1 - rho 48910) = rho 48907 - rho 48908 - rho 48909 := ha5
      _ = (-1) * rho 48908 - rho 48909 + (seg52Out0AccY3 rho - seg52Out0AccX3 rho * (-1)) *
          (rho 48905 + rho 48906) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX4 rho = seg52Out0AccX3 rho - Bool.toZMod bit * (seg52Out0AccX3 rho - rho 48911) := by
    have hd : rho 48913 = Bool.toZMod bit * (rho 48911 - seg52Out0AccX3 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX3
      linear_combination -r4524
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY4 rho = seg52Out0AccY3 rho - Bool.toZMod bit * (seg52Out0AccY3 rho - rho 48912) := by
    have hd : rho 48914 = Bool.toZMod bit * (rho 48912 - seg52Out0AccY3 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY3
      linear_combination -r4525
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48905 * rho 48906 = rho 48915 := by linear_combination r4526
  have hd1 : rho 48905 * rho 48905 = rho 48916 := by linear_combination r4527
  have hd2 : rho 48906 * rho 48906 = rho 48917 := by linear_combination r4528
  have hd3 : rho 48918 * (rho 48906 * rho 48906 + rho 48905 * rho 48905 * (-1)) =
      2 * (rho 48905 * rho 48906) := by
    rw [hd0, hd1, hd2]
    linear_combination r4529
  have hd4 : rho 48919 * (2 - (rho 48906 * rho 48906 + rho 48905 * rho 48905 * (-1))) =
      rho 48906 * rho 48906 - rho 48905 * rho 48905 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4530
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 48905, rho 48906⟩
    ⟨rho 48911, rho 48912⟩ ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 48918, rho 48919⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4531 rho ∧ Seg52.relationRow4532 rho ∧ Seg52.relationRow4533 rho ∧ Seg52.relationRow4534 rho ∧ Seg52.relationRow4535 rho ∧ Seg52.relationRow4536 rho ∧ Seg52.relationRow4537 rho ∧ Seg52.relationRow4538 rho ∧ Seg52.relationRow4539 rho ∧ Seg52.relationRow4540 rho ∧ Seg52.relationRow4541 rho ∧ Seg52.relationRow4542 rho ∧ Seg52.relationRow4543 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543⟩

theorem seg52Out0_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48750 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48918, rho 48919⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 48918, rho 48919⟩
        ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 48931, rho 48932⟩ := by
  obtain ⟨r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543⟩ := seg52Out0_rows4 rho h
  unfold Seg52.relationRow4531 at r4531

  unfold Seg52.relationRow4532 at r4532

  unfold Seg52.relationRow4533 at r4533

  unfold Seg52.relationRow4534 at r4534

  unfold Seg52.relationRow4535 at r4535

  unfold Seg52.relationRow4536 at r4536

  unfold Seg52.relationRow4537 at r4537

  unfold Seg52.relationRow4538 at r4538

  unfold Seg52.relationRow4539 at r4539

  unfold Seg52.relationRow4540 at r4540

  unfold Seg52.relationRow4541 at r4541

  unfold Seg52.relationRow4542 at r4542

  unfold Seg52.relationRow4543 at r4543

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX5 rho = seg52Out0AccX4 rho + rho 48926 := by
    unfold seg52Out0AccX5 seg52Out0AccX4
    ring

  have hnexty : seg52Out0AccY5 rho = seg52Out0AccY4 rho + rho 48927 := by
    unfold seg52Out0AccY5 seg52Out0AccY4
    ring

  have ha0 : (rho 48918 + rho 48919) * (seg52Out0AccX4 rho + seg52Out0AccY4 rho) = rho 48920 := by
    unfold seg52Out0AccX4 seg52Out0AccY4
    linear_combination r4531
  have ha1 : rho 48919 * seg52Out0AccX4 rho = rho 48921 := by
    unfold seg52Out0AccX4
    linear_combination r4532
  have ha2 : rho 48918 * seg52Out0AccY4 rho = rho 48922 := by
    unfold seg52Out0AccY4
    linear_combination r4533
  have ha3 : 3021 * rho 48921 * rho 48922 = rho 48923 := by
    linear_combination r4534
  have ha4 : rho 48924 * (1 + rho 48923) = rho 48921 + rho 48922 := by
    linear_combination r4535
  have ha5 : rho 48925 * (1 - rho 48923) = rho 48920 - rho 48921 - rho 48922 := by
    linear_combination r4536
  have haddx :
      rho 48924 * (1 + 3021 * (rho 48919 * seg52Out0AccX4 rho) * (rho 48918 * seg52Out0AccY4 rho)) =
        rho 48919 * seg52Out0AccX4 rho + rho 48918 * seg52Out0AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48925 * (1 - 3021 * (rho 48919 * seg52Out0AccX4 rho) * (rho 48918 * seg52Out0AccY4 rho)) =
        (-1) * (rho 48919 * seg52Out0AccX4 rho) - rho 48918 * seg52Out0AccY4 rho +
          (seg52Out0AccY4 rho - seg52Out0AccX4 rho * (-1)) * (rho 48918 + rho 48919) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48925 * (1 - rho 48923) = rho 48920 - rho 48921 - rho 48922 := ha5
      _ = (-1) * rho 48921 - rho 48922 + (seg52Out0AccY4 rho - seg52Out0AccX4 rho * (-1)) *
          (rho 48918 + rho 48919) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX5 rho = seg52Out0AccX4 rho - Bool.toZMod bit * (seg52Out0AccX4 rho - rho 48924) := by
    have hd : rho 48926 = Bool.toZMod bit * (rho 48924 - seg52Out0AccX4 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX4
      linear_combination -r4537
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY5 rho = seg52Out0AccY4 rho - Bool.toZMod bit * (seg52Out0AccY4 rho - rho 48925) := by
    have hd : rho 48927 = Bool.toZMod bit * (rho 48925 - seg52Out0AccY4 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY4
      linear_combination -r4538
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48918 * rho 48919 = rho 48928 := by linear_combination r4539
  have hd1 : rho 48918 * rho 48918 = rho 48929 := by linear_combination r4540
  have hd2 : rho 48919 * rho 48919 = rho 48930 := by linear_combination r4541
  have hd3 : rho 48931 * (rho 48919 * rho 48919 + rho 48918 * rho 48918 * (-1)) =
      2 * (rho 48918 * rho 48919) := by
    rw [hd0, hd1, hd2]
    linear_combination r4542
  have hd4 : rho 48932 * (2 - (rho 48919 * rho 48919 + rho 48918 * rho 48918 * (-1))) =
      rho 48919 * rho 48919 - rho 48918 * rho 48918 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4543
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 48918, rho 48919⟩
    ⟨rho 48924, rho 48925⟩ ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 48931, rho 48932⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4544 rho ∧ Seg52.relationRow4545 rho ∧ Seg52.relationRow4546 rho ∧ Seg52.relationRow4547 rho ∧ Seg52.relationRow4548 rho ∧ Seg52.relationRow4549 rho ∧ Seg52.relationRow4550 rho ∧ Seg52.relationRow4551 rho ∧ Seg52.relationRow4552 rho ∧ Seg52.relationRow4553 rho ∧ Seg52.relationRow4554 rho ∧ Seg52.relationRow4555 rho ∧ Seg52.relationRow4556 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, _, _, _⟩

  exact ⟨r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556⟩

theorem seg52Out0_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48751 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48931, rho 48932⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 48931, rho 48932⟩
        ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 48944, rho 48945⟩ := by
  obtain ⟨r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556⟩ := seg52Out0_rows5 rho h
  unfold Seg52.relationRow4544 at r4544

  unfold Seg52.relationRow4545 at r4545

  unfold Seg52.relationRow4546 at r4546

  unfold Seg52.relationRow4547 at r4547

  unfold Seg52.relationRow4548 at r4548

  unfold Seg52.relationRow4549 at r4549

  unfold Seg52.relationRow4550 at r4550

  unfold Seg52.relationRow4551 at r4551

  unfold Seg52.relationRow4552 at r4552

  unfold Seg52.relationRow4553 at r4553

  unfold Seg52.relationRow4554 at r4554

  unfold Seg52.relationRow4555 at r4555

  unfold Seg52.relationRow4556 at r4556

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX6 rho = seg52Out0AccX5 rho + rho 48939 := by
    unfold seg52Out0AccX6 seg52Out0AccX5
    ring

  have hnexty : seg52Out0AccY6 rho = seg52Out0AccY5 rho + rho 48940 := by
    unfold seg52Out0AccY6 seg52Out0AccY5
    ring

  have ha0 : (rho 48931 + rho 48932) * (seg52Out0AccX5 rho + seg52Out0AccY5 rho) = rho 48933 := by
    unfold seg52Out0AccX5 seg52Out0AccY5
    linear_combination r4544
  have ha1 : rho 48932 * seg52Out0AccX5 rho = rho 48934 := by
    unfold seg52Out0AccX5
    linear_combination r4545
  have ha2 : rho 48931 * seg52Out0AccY5 rho = rho 48935 := by
    unfold seg52Out0AccY5
    linear_combination r4546
  have ha3 : 3021 * rho 48934 * rho 48935 = rho 48936 := by
    linear_combination r4547
  have ha4 : rho 48937 * (1 + rho 48936) = rho 48934 + rho 48935 := by
    linear_combination r4548
  have ha5 : rho 48938 * (1 - rho 48936) = rho 48933 - rho 48934 - rho 48935 := by
    linear_combination r4549
  have haddx :
      rho 48937 * (1 + 3021 * (rho 48932 * seg52Out0AccX5 rho) * (rho 48931 * seg52Out0AccY5 rho)) =
        rho 48932 * seg52Out0AccX5 rho + rho 48931 * seg52Out0AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48938 * (1 - 3021 * (rho 48932 * seg52Out0AccX5 rho) * (rho 48931 * seg52Out0AccY5 rho)) =
        (-1) * (rho 48932 * seg52Out0AccX5 rho) - rho 48931 * seg52Out0AccY5 rho +
          (seg52Out0AccY5 rho - seg52Out0AccX5 rho * (-1)) * (rho 48931 + rho 48932) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48938 * (1 - rho 48936) = rho 48933 - rho 48934 - rho 48935 := ha5
      _ = (-1) * rho 48934 - rho 48935 + (seg52Out0AccY5 rho - seg52Out0AccX5 rho * (-1)) *
          (rho 48931 + rho 48932) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX6 rho = seg52Out0AccX5 rho - Bool.toZMod bit * (seg52Out0AccX5 rho - rho 48937) := by
    have hd : rho 48939 = Bool.toZMod bit * (rho 48937 - seg52Out0AccX5 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX5
      linear_combination -r4550
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY6 rho = seg52Out0AccY5 rho - Bool.toZMod bit * (seg52Out0AccY5 rho - rho 48938) := by
    have hd : rho 48940 = Bool.toZMod bit * (rho 48938 - seg52Out0AccY5 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY5
      linear_combination -r4551
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48931 * rho 48932 = rho 48941 := by linear_combination r4552
  have hd1 : rho 48931 * rho 48931 = rho 48942 := by linear_combination r4553
  have hd2 : rho 48932 * rho 48932 = rho 48943 := by linear_combination r4554
  have hd3 : rho 48944 * (rho 48932 * rho 48932 + rho 48931 * rho 48931 * (-1)) =
      2 * (rho 48931 * rho 48932) := by
    rw [hd0, hd1, hd2]
    linear_combination r4555
  have hd4 : rho 48945 * (2 - (rho 48932 * rho 48932 + rho 48931 * rho 48931 * (-1))) =
      rho 48932 * rho 48932 - rho 48931 * rho 48931 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4556
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 48931, rho 48932⟩
    ⟨rho 48937, rho 48938⟩ ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 48944, rho 48945⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4557 rho ∧ Seg52.relationRow4558 rho ∧ Seg52.relationRow4559 rho ∧ Seg52.relationRow4560 rho ∧ Seg52.relationRow4561 rho ∧ Seg52.relationRow4562 rho ∧ Seg52.relationRow4563 rho ∧ Seg52.relationRow4564 rho ∧ Seg52.relationRow4565 rho ∧ Seg52.relationRow4566 rho ∧ Seg52.relationRow4567 rho ∧ Seg52.relationRow4568 rho ∧ Seg52.relationRow4569 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p56, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4557, r4558, r4559⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4557, r4558, r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569⟩

theorem seg52Out0_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48752 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48944, rho 48945⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 48944, rho 48945⟩
        ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 48957, rho 48958⟩ := by
  obtain ⟨r4557, r4558, r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569⟩ := seg52Out0_rows6 rho h
  unfold Seg52.relationRow4557 at r4557

  unfold Seg52.relationRow4558 at r4558

  unfold Seg52.relationRow4559 at r4559

  unfold Seg52.relationRow4560 at r4560

  unfold Seg52.relationRow4561 at r4561

  unfold Seg52.relationRow4562 at r4562

  unfold Seg52.relationRow4563 at r4563

  unfold Seg52.relationRow4564 at r4564

  unfold Seg52.relationRow4565 at r4565

  unfold Seg52.relationRow4566 at r4566

  unfold Seg52.relationRow4567 at r4567

  unfold Seg52.relationRow4568 at r4568

  unfold Seg52.relationRow4569 at r4569

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX7 rho = seg52Out0AccX6 rho + rho 48952 := by
    unfold seg52Out0AccX7 seg52Out0AccX6
    ring

  have hnexty : seg52Out0AccY7 rho = seg52Out0AccY6 rho + rho 48953 := by
    unfold seg52Out0AccY7 seg52Out0AccY6
    ring

  have ha0 : (rho 48944 + rho 48945) * (seg52Out0AccX6 rho + seg52Out0AccY6 rho) = rho 48946 := by
    unfold seg52Out0AccX6 seg52Out0AccY6
    linear_combination r4557
  have ha1 : rho 48945 * seg52Out0AccX6 rho = rho 48947 := by
    unfold seg52Out0AccX6
    linear_combination r4558
  have ha2 : rho 48944 * seg52Out0AccY6 rho = rho 48948 := by
    unfold seg52Out0AccY6
    linear_combination r4559
  have ha3 : 3021 * rho 48947 * rho 48948 = rho 48949 := by
    linear_combination r4560
  have ha4 : rho 48950 * (1 + rho 48949) = rho 48947 + rho 48948 := by
    linear_combination r4561
  have ha5 : rho 48951 * (1 - rho 48949) = rho 48946 - rho 48947 - rho 48948 := by
    linear_combination r4562
  have haddx :
      rho 48950 * (1 + 3021 * (rho 48945 * seg52Out0AccX6 rho) * (rho 48944 * seg52Out0AccY6 rho)) =
        rho 48945 * seg52Out0AccX6 rho + rho 48944 * seg52Out0AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48951 * (1 - 3021 * (rho 48945 * seg52Out0AccX6 rho) * (rho 48944 * seg52Out0AccY6 rho)) =
        (-1) * (rho 48945 * seg52Out0AccX6 rho) - rho 48944 * seg52Out0AccY6 rho +
          (seg52Out0AccY6 rho - seg52Out0AccX6 rho * (-1)) * (rho 48944 + rho 48945) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48951 * (1 - rho 48949) = rho 48946 - rho 48947 - rho 48948 := ha5
      _ = (-1) * rho 48947 - rho 48948 + (seg52Out0AccY6 rho - seg52Out0AccX6 rho * (-1)) *
          (rho 48944 + rho 48945) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX7 rho = seg52Out0AccX6 rho - Bool.toZMod bit * (seg52Out0AccX6 rho - rho 48950) := by
    have hd : rho 48952 = Bool.toZMod bit * (rho 48950 - seg52Out0AccX6 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX6
      linear_combination -r4563
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY7 rho = seg52Out0AccY6 rho - Bool.toZMod bit * (seg52Out0AccY6 rho - rho 48951) := by
    have hd : rho 48953 = Bool.toZMod bit * (rho 48951 - seg52Out0AccY6 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY6
      linear_combination -r4564
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48944 * rho 48945 = rho 48954 := by linear_combination r4565
  have hd1 : rho 48944 * rho 48944 = rho 48955 := by linear_combination r4566
  have hd2 : rho 48945 * rho 48945 = rho 48956 := by linear_combination r4567
  have hd3 : rho 48957 * (rho 48945 * rho 48945 + rho 48944 * rho 48944 * (-1)) =
      2 * (rho 48944 * rho 48945) := by
    rw [hd0, hd1, hd2]
    linear_combination r4568
  have hd4 : rho 48958 * (2 - (rho 48945 * rho 48945 + rho 48944 * rho 48944 * (-1))) =
      rho 48945 * rho 48945 - rho 48944 * rho 48944 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4569
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 48944, rho 48945⟩
    ⟨rho 48950, rho 48951⟩ ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 48957, rho 48958⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4570 rho ∧ Seg52.relationRow4571 rho ∧ Seg52.relationRow4572 rho ∧ Seg52.relationRow4573 rho ∧ Seg52.relationRow4574 rho ∧ Seg52.relationRow4575 rho ∧ Seg52.relationRow4576 rho ∧ Seg52.relationRow4577 rho ∧ Seg52.relationRow4578 rho ∧ Seg52.relationRow4579 rho ∧ Seg52.relationRow4580 rho ∧ Seg52.relationRow4581 rho ∧ Seg52.relationRow4582 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582⟩

theorem seg52Out0_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48753 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48957, rho 48958⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 48957, rho 48958⟩
        ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 48970, rho 48971⟩ := by
  obtain ⟨r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582⟩ := seg52Out0_rows7 rho h
  unfold Seg52.relationRow4570 at r4570

  unfold Seg52.relationRow4571 at r4571

  unfold Seg52.relationRow4572 at r4572

  unfold Seg52.relationRow4573 at r4573

  unfold Seg52.relationRow4574 at r4574

  unfold Seg52.relationRow4575 at r4575

  unfold Seg52.relationRow4576 at r4576

  unfold Seg52.relationRow4577 at r4577

  unfold Seg52.relationRow4578 at r4578

  unfold Seg52.relationRow4579 at r4579

  unfold Seg52.relationRow4580 at r4580

  unfold Seg52.relationRow4581 at r4581

  unfold Seg52.relationRow4582 at r4582

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX8 rho = seg52Out0AccX7 rho + rho 48965 := by
    unfold seg52Out0AccX8 seg52Out0AccX7
    ring

  have hnexty : seg52Out0AccY8 rho = seg52Out0AccY7 rho + rho 48966 := by
    unfold seg52Out0AccY8 seg52Out0AccY7
    ring

  have ha0 : (rho 48957 + rho 48958) * (seg52Out0AccX7 rho + seg52Out0AccY7 rho) = rho 48959 := by
    unfold seg52Out0AccX7 seg52Out0AccY7
    linear_combination r4570
  have ha1 : rho 48958 * seg52Out0AccX7 rho = rho 48960 := by
    unfold seg52Out0AccX7
    linear_combination r4571
  have ha2 : rho 48957 * seg52Out0AccY7 rho = rho 48961 := by
    unfold seg52Out0AccY7
    linear_combination r4572
  have ha3 : 3021 * rho 48960 * rho 48961 = rho 48962 := by
    linear_combination r4573
  have ha4 : rho 48963 * (1 + rho 48962) = rho 48960 + rho 48961 := by
    linear_combination r4574
  have ha5 : rho 48964 * (1 - rho 48962) = rho 48959 - rho 48960 - rho 48961 := by
    linear_combination r4575
  have haddx :
      rho 48963 * (1 + 3021 * (rho 48958 * seg52Out0AccX7 rho) * (rho 48957 * seg52Out0AccY7 rho)) =
        rho 48958 * seg52Out0AccX7 rho + rho 48957 * seg52Out0AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48964 * (1 - 3021 * (rho 48958 * seg52Out0AccX7 rho) * (rho 48957 * seg52Out0AccY7 rho)) =
        (-1) * (rho 48958 * seg52Out0AccX7 rho) - rho 48957 * seg52Out0AccY7 rho +
          (seg52Out0AccY7 rho - seg52Out0AccX7 rho * (-1)) * (rho 48957 + rho 48958) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48964 * (1 - rho 48962) = rho 48959 - rho 48960 - rho 48961 := ha5
      _ = (-1) * rho 48960 - rho 48961 + (seg52Out0AccY7 rho - seg52Out0AccX7 rho * (-1)) *
          (rho 48957 + rho 48958) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX8 rho = seg52Out0AccX7 rho - Bool.toZMod bit * (seg52Out0AccX7 rho - rho 48963) := by
    have hd : rho 48965 = Bool.toZMod bit * (rho 48963 - seg52Out0AccX7 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX7
      linear_combination -r4576
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY8 rho = seg52Out0AccY7 rho - Bool.toZMod bit * (seg52Out0AccY7 rho - rho 48964) := by
    have hd : rho 48966 = Bool.toZMod bit * (rho 48964 - seg52Out0AccY7 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY7
      linear_combination -r4577
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48957 * rho 48958 = rho 48967 := by linear_combination r4578
  have hd1 : rho 48957 * rho 48957 = rho 48968 := by linear_combination r4579
  have hd2 : rho 48958 * rho 48958 = rho 48969 := by linear_combination r4580
  have hd3 : rho 48970 * (rho 48958 * rho 48958 + rho 48957 * rho 48957 * (-1)) =
      2 * (rho 48957 * rho 48958) := by
    rw [hd0, hd1, hd2]
    linear_combination r4581
  have hd4 : rho 48971 * (2 - (rho 48958 * rho 48958 + rho 48957 * rho 48957 * (-1))) =
      rho 48958 * rho 48958 - rho 48957 * rho 48957 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4582
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 48957, rho 48958⟩
    ⟨rho 48963, rho 48964⟩ ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 48970, rho 48971⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4583 rho ∧ Seg52.relationRow4584 rho ∧ Seg52.relationRow4585 rho ∧ Seg52.relationRow4586 rho ∧ Seg52.relationRow4587 rho ∧ Seg52.relationRow4588 rho ∧ Seg52.relationRow4589 rho ∧ Seg52.relationRow4590 rho ∧ Seg52.relationRow4591 rho ∧ Seg52.relationRow4592 rho ∧ Seg52.relationRow4593 rho ∧ Seg52.relationRow4594 rho ∧ Seg52.relationRow4595 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595⟩

theorem seg52Out0_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48754 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48970, rho 48971⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 48970, rho 48971⟩
        ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 48983, rho 48984⟩ := by
  obtain ⟨r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595⟩ := seg52Out0_rows8 rho h
  unfold Seg52.relationRow4583 at r4583

  unfold Seg52.relationRow4584 at r4584

  unfold Seg52.relationRow4585 at r4585

  unfold Seg52.relationRow4586 at r4586

  unfold Seg52.relationRow4587 at r4587

  unfold Seg52.relationRow4588 at r4588

  unfold Seg52.relationRow4589 at r4589

  unfold Seg52.relationRow4590 at r4590

  unfold Seg52.relationRow4591 at r4591

  unfold Seg52.relationRow4592 at r4592

  unfold Seg52.relationRow4593 at r4593

  unfold Seg52.relationRow4594 at r4594

  unfold Seg52.relationRow4595 at r4595

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX9 rho = seg52Out0AccX8 rho + rho 48978 := by
    unfold seg52Out0AccX9 seg52Out0AccX8
    ring

  have hnexty : seg52Out0AccY9 rho = seg52Out0AccY8 rho + rho 48979 := by
    unfold seg52Out0AccY9 seg52Out0AccY8
    ring

  have ha0 : (rho 48970 + rho 48971) * (seg52Out0AccX8 rho + seg52Out0AccY8 rho) = rho 48972 := by
    unfold seg52Out0AccX8 seg52Out0AccY8
    linear_combination r4583
  have ha1 : rho 48971 * seg52Out0AccX8 rho = rho 48973 := by
    unfold seg52Out0AccX8
    linear_combination r4584
  have ha2 : rho 48970 * seg52Out0AccY8 rho = rho 48974 := by
    unfold seg52Out0AccY8
    linear_combination r4585
  have ha3 : 3021 * rho 48973 * rho 48974 = rho 48975 := by
    linear_combination r4586
  have ha4 : rho 48976 * (1 + rho 48975) = rho 48973 + rho 48974 := by
    linear_combination r4587
  have ha5 : rho 48977 * (1 - rho 48975) = rho 48972 - rho 48973 - rho 48974 := by
    linear_combination r4588
  have haddx :
      rho 48976 * (1 + 3021 * (rho 48971 * seg52Out0AccX8 rho) * (rho 48970 * seg52Out0AccY8 rho)) =
        rho 48971 * seg52Out0AccX8 rho + rho 48970 * seg52Out0AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48977 * (1 - 3021 * (rho 48971 * seg52Out0AccX8 rho) * (rho 48970 * seg52Out0AccY8 rho)) =
        (-1) * (rho 48971 * seg52Out0AccX8 rho) - rho 48970 * seg52Out0AccY8 rho +
          (seg52Out0AccY8 rho - seg52Out0AccX8 rho * (-1)) * (rho 48970 + rho 48971) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48977 * (1 - rho 48975) = rho 48972 - rho 48973 - rho 48974 := ha5
      _ = (-1) * rho 48973 - rho 48974 + (seg52Out0AccY8 rho - seg52Out0AccX8 rho * (-1)) *
          (rho 48970 + rho 48971) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX9 rho = seg52Out0AccX8 rho - Bool.toZMod bit * (seg52Out0AccX8 rho - rho 48976) := by
    have hd : rho 48978 = Bool.toZMod bit * (rho 48976 - seg52Out0AccX8 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX8
      linear_combination -r4589
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY9 rho = seg52Out0AccY8 rho - Bool.toZMod bit * (seg52Out0AccY8 rho - rho 48977) := by
    have hd : rho 48979 = Bool.toZMod bit * (rho 48977 - seg52Out0AccY8 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY8
      linear_combination -r4590
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48970 * rho 48971 = rho 48980 := by linear_combination r4591
  have hd1 : rho 48970 * rho 48970 = rho 48981 := by linear_combination r4592
  have hd2 : rho 48971 * rho 48971 = rho 48982 := by linear_combination r4593
  have hd3 : rho 48983 * (rho 48971 * rho 48971 + rho 48970 * rho 48970 * (-1)) =
      2 * (rho 48970 * rho 48971) := by
    rw [hd0, hd1, hd2]
    linear_combination r4594
  have hd4 : rho 48984 * (2 - (rho 48971 * rho 48971 + rho 48970 * rho 48970 * (-1))) =
      rho 48971 * rho 48971 - rho 48970 * rho 48970 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4595
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 48970, rho 48971⟩
    ⟨rho 48976, rho 48977⟩ ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 48983, rho 48984⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4596 rho ∧ Seg52.relationRow4597 rho ∧ Seg52.relationRow4598 rho ∧ Seg52.relationRow4599 rho ∧ Seg52.relationRow4600 rho ∧ Seg52.relationRow4601 rho ∧ Seg52.relationRow4602 rho ∧ Seg52.relationRow4603 rho ∧ Seg52.relationRow4604 rho ∧ Seg52.relationRow4605 rho ∧ Seg52.relationRow4606 rho ∧ Seg52.relationRow4607 rho ∧ Seg52.relationRow4608 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608⟩

theorem seg52Out0_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48755 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48983, rho 48984⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 48983, rho 48984⟩
        ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 48996, rho 48997⟩ := by
  obtain ⟨r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608⟩ := seg52Out0_rows9 rho h
  unfold Seg52.relationRow4596 at r4596

  unfold Seg52.relationRow4597 at r4597

  unfold Seg52.relationRow4598 at r4598

  unfold Seg52.relationRow4599 at r4599

  unfold Seg52.relationRow4600 at r4600

  unfold Seg52.relationRow4601 at r4601

  unfold Seg52.relationRow4602 at r4602

  unfold Seg52.relationRow4603 at r4603

  unfold Seg52.relationRow4604 at r4604

  unfold Seg52.relationRow4605 at r4605

  unfold Seg52.relationRow4606 at r4606

  unfold Seg52.relationRow4607 at r4607

  unfold Seg52.relationRow4608 at r4608

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX10 rho = seg52Out0AccX9 rho + rho 48991 := by
    unfold seg52Out0AccX10 seg52Out0AccX9
    ring

  have hnexty : seg52Out0AccY10 rho = seg52Out0AccY9 rho + rho 48992 := by
    unfold seg52Out0AccY10 seg52Out0AccY9
    ring

  have ha0 : (rho 48983 + rho 48984) * (seg52Out0AccX9 rho + seg52Out0AccY9 rho) = rho 48985 := by
    unfold seg52Out0AccX9 seg52Out0AccY9
    linear_combination r4596
  have ha1 : rho 48984 * seg52Out0AccX9 rho = rho 48986 := by
    unfold seg52Out0AccX9
    linear_combination r4597
  have ha2 : rho 48983 * seg52Out0AccY9 rho = rho 48987 := by
    unfold seg52Out0AccY9
    linear_combination r4598
  have ha3 : 3021 * rho 48986 * rho 48987 = rho 48988 := by
    linear_combination r4599
  have ha4 : rho 48989 * (1 + rho 48988) = rho 48986 + rho 48987 := by
    linear_combination r4600
  have ha5 : rho 48990 * (1 - rho 48988) = rho 48985 - rho 48986 - rho 48987 := by
    linear_combination r4601
  have haddx :
      rho 48989 * (1 + 3021 * (rho 48984 * seg52Out0AccX9 rho) * (rho 48983 * seg52Out0AccY9 rho)) =
        rho 48984 * seg52Out0AccX9 rho + rho 48983 * seg52Out0AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48990 * (1 - 3021 * (rho 48984 * seg52Out0AccX9 rho) * (rho 48983 * seg52Out0AccY9 rho)) =
        (-1) * (rho 48984 * seg52Out0AccX9 rho) - rho 48983 * seg52Out0AccY9 rho +
          (seg52Out0AccY9 rho - seg52Out0AccX9 rho * (-1)) * (rho 48983 + rho 48984) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48990 * (1 - rho 48988) = rho 48985 - rho 48986 - rho 48987 := ha5
      _ = (-1) * rho 48986 - rho 48987 + (seg52Out0AccY9 rho - seg52Out0AccX9 rho * (-1)) *
          (rho 48983 + rho 48984) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX10 rho = seg52Out0AccX9 rho - Bool.toZMod bit * (seg52Out0AccX9 rho - rho 48989) := by
    have hd : rho 48991 = Bool.toZMod bit * (rho 48989 - seg52Out0AccX9 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX9
      linear_combination -r4602
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY10 rho = seg52Out0AccY9 rho - Bool.toZMod bit * (seg52Out0AccY9 rho - rho 48990) := by
    have hd : rho 48992 = Bool.toZMod bit * (rho 48990 - seg52Out0AccY9 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY9
      linear_combination -r4603
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48983 * rho 48984 = rho 48993 := by linear_combination r4604
  have hd1 : rho 48983 * rho 48983 = rho 48994 := by linear_combination r4605
  have hd2 : rho 48984 * rho 48984 = rho 48995 := by linear_combination r4606
  have hd3 : rho 48996 * (rho 48984 * rho 48984 + rho 48983 * rho 48983 * (-1)) =
      2 * (rho 48983 * rho 48984) := by
    rw [hd0, hd1, hd2]
    linear_combination r4607
  have hd4 : rho 48997 * (2 - (rho 48984 * rho 48984 + rho 48983 * rho 48983 * (-1))) =
      rho 48984 * rho 48984 - rho 48983 * rho 48983 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4608
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 48983, rho 48984⟩
    ⟨rho 48989, rho 48990⟩ ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 48996, rho 48997⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4609 rho ∧ Seg52.relationRow4610 rho ∧ Seg52.relationRow4611 rho ∧ Seg52.relationRow4612 rho ∧ Seg52.relationRow4613 rho ∧ Seg52.relationRow4614 rho ∧ Seg52.relationRow4615 rho ∧ Seg52.relationRow4616 rho ∧ Seg52.relationRow4617 rho ∧ Seg52.relationRow4618 rho ∧ Seg52.relationRow4619 rho ∧ Seg52.relationRow4620 rho ∧ Seg52.relationRow4621 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621⟩

theorem seg52Out0_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48756 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48996, rho 48997⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 48996, rho 48997⟩
        ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49009, rho 49010⟩ := by
  obtain ⟨r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621⟩ := seg52Out0_rows10 rho h
  unfold Seg52.relationRow4609 at r4609

  unfold Seg52.relationRow4610 at r4610

  unfold Seg52.relationRow4611 at r4611

  unfold Seg52.relationRow4612 at r4612

  unfold Seg52.relationRow4613 at r4613

  unfold Seg52.relationRow4614 at r4614

  unfold Seg52.relationRow4615 at r4615

  unfold Seg52.relationRow4616 at r4616

  unfold Seg52.relationRow4617 at r4617

  unfold Seg52.relationRow4618 at r4618

  unfold Seg52.relationRow4619 at r4619

  unfold Seg52.relationRow4620 at r4620

  unfold Seg52.relationRow4621 at r4621

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX11 rho = seg52Out0AccX10 rho + rho 49004 := by
    unfold seg52Out0AccX11 seg52Out0AccX10
    ring

  have hnexty : seg52Out0AccY11 rho = seg52Out0AccY10 rho + rho 49005 := by
    unfold seg52Out0AccY11 seg52Out0AccY10
    ring

  have ha0 : (rho 48996 + rho 48997) * (seg52Out0AccX10 rho + seg52Out0AccY10 rho) = rho 48998 := by
    unfold seg52Out0AccX10 seg52Out0AccY10
    linear_combination r4609
  have ha1 : rho 48997 * seg52Out0AccX10 rho = rho 48999 := by
    unfold seg52Out0AccX10
    linear_combination r4610
  have ha2 : rho 48996 * seg52Out0AccY10 rho = rho 49000 := by
    unfold seg52Out0AccY10
    linear_combination r4611
  have ha3 : 3021 * rho 48999 * rho 49000 = rho 49001 := by
    linear_combination r4612
  have ha4 : rho 49002 * (1 + rho 49001) = rho 48999 + rho 49000 := by
    linear_combination r4613
  have ha5 : rho 49003 * (1 - rho 49001) = rho 48998 - rho 48999 - rho 49000 := by
    linear_combination r4614
  have haddx :
      rho 49002 * (1 + 3021 * (rho 48997 * seg52Out0AccX10 rho) * (rho 48996 * seg52Out0AccY10 rho)) =
        rho 48997 * seg52Out0AccX10 rho + rho 48996 * seg52Out0AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49003 * (1 - 3021 * (rho 48997 * seg52Out0AccX10 rho) * (rho 48996 * seg52Out0AccY10 rho)) =
        (-1) * (rho 48997 * seg52Out0AccX10 rho) - rho 48996 * seg52Out0AccY10 rho +
          (seg52Out0AccY10 rho - seg52Out0AccX10 rho * (-1)) * (rho 48996 + rho 48997) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49003 * (1 - rho 49001) = rho 48998 - rho 48999 - rho 49000 := ha5
      _ = (-1) * rho 48999 - rho 49000 + (seg52Out0AccY10 rho - seg52Out0AccX10 rho * (-1)) *
          (rho 48996 + rho 48997) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX11 rho = seg52Out0AccX10 rho - Bool.toZMod bit * (seg52Out0AccX10 rho - rho 49002) := by
    have hd : rho 49004 = Bool.toZMod bit * (rho 49002 - seg52Out0AccX10 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX10
      linear_combination -r4615
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY11 rho = seg52Out0AccY10 rho - Bool.toZMod bit * (seg52Out0AccY10 rho - rho 49003) := by
    have hd : rho 49005 = Bool.toZMod bit * (rho 49003 - seg52Out0AccY10 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY10
      linear_combination -r4616
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48996 * rho 48997 = rho 49006 := by linear_combination r4617
  have hd1 : rho 48996 * rho 48996 = rho 49007 := by linear_combination r4618
  have hd2 : rho 48997 * rho 48997 = rho 49008 := by linear_combination r4619
  have hd3 : rho 49009 * (rho 48997 * rho 48997 + rho 48996 * rho 48996 * (-1)) =
      2 * (rho 48996 * rho 48997) := by
    rw [hd0, hd1, hd2]
    linear_combination r4620
  have hd4 : rho 49010 * (2 - (rho 48997 * rho 48997 + rho 48996 * rho 48996 * (-1))) =
      rho 48997 * rho 48997 - rho 48996 * rho 48996 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4621
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 48996, rho 48997⟩
    ⟨rho 49002, rho 49003⟩ ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49009, rho 49010⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg52Out0_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg52Out0_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg52Out0_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg52Out0_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg52Out0_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg52Out0_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg52Out0_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg52Out0_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg52Out0_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg52Out0_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
