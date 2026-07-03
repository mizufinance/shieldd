import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3469 rho ∧ Seg52.relationRow3470 rho ∧ Seg52.relationRow3471 rho ∧ Seg52.relationRow3472 rho ∧ Seg52.relationRow3473 rho ∧ Seg52.relationRow3474 rho ∧ Seg52.relationRow3475 rho ∧ Seg52.relationRow3476 rho ∧ Seg52.relationRow3477 rho ∧ Seg52.relationRow3478 rho ∧ Seg52.relationRow3479 rho ∧ Seg52.relationRow3480 rho ∧ Seg52.relationRow3481 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481⟩

theorem seg52In1_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47605 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47857, rho 47858⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47857, rho 47858⟩
        ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47870, rho 47871⟩ := by
  obtain ⟨r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481⟩ := seg52In1_rows11 rho h
  unfold Seg52.relationRow3469 at r3469

  unfold Seg52.relationRow3470 at r3470

  unfold Seg52.relationRow3471 at r3471

  unfold Seg52.relationRow3472 at r3472

  unfold Seg52.relationRow3473 at r3473

  unfold Seg52.relationRow3474 at r3474

  unfold Seg52.relationRow3475 at r3475

  unfold Seg52.relationRow3476 at r3476

  unfold Seg52.relationRow3477 at r3477

  unfold Seg52.relationRow3478 at r3478

  unfold Seg52.relationRow3479 at r3479

  unfold Seg52.relationRow3480 at r3480

  unfold Seg52.relationRow3481 at r3481

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX12 rho = seg52In1AccX11 rho + rho 47865 := by
    unfold seg52In1AccX12 seg52In1AccX11
    ring

  have hnexty : seg52In1AccY12 rho = seg52In1AccY11 rho + rho 47866 := by
    unfold seg52In1AccY12 seg52In1AccY11
    ring

  have ha0 : (rho 47857 + rho 47858) * (seg52In1AccX11 rho + seg52In1AccY11 rho) = rho 47859 := by
    unfold seg52In1AccX11 seg52In1AccY11
    linear_combination r3469
  have ha1 : rho 47858 * seg52In1AccX11 rho = rho 47860 := by
    unfold seg52In1AccX11
    linear_combination r3470
  have ha2 : rho 47857 * seg52In1AccY11 rho = rho 47861 := by
    unfold seg52In1AccY11
    linear_combination r3471
  have ha3 : 3021 * rho 47860 * rho 47861 = rho 47862 := by
    linear_combination r3472
  have ha4 : rho 47863 * (1 + rho 47862) = rho 47860 + rho 47861 := by
    linear_combination r3473
  have ha5 : rho 47864 * (1 - rho 47862) = rho 47859 - rho 47860 - rho 47861 := by
    linear_combination r3474
  have haddx :
      rho 47863 * (1 + 3021 * (rho 47858 * seg52In1AccX11 rho) * (rho 47857 * seg52In1AccY11 rho)) =
        rho 47858 * seg52In1AccX11 rho + rho 47857 * seg52In1AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47864 * (1 - 3021 * (rho 47858 * seg52In1AccX11 rho) * (rho 47857 * seg52In1AccY11 rho)) =
        (-1) * (rho 47858 * seg52In1AccX11 rho) - rho 47857 * seg52In1AccY11 rho +
          (seg52In1AccY11 rho - seg52In1AccX11 rho * (-1)) * (rho 47857 + rho 47858) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47864 * (1 - rho 47862) = rho 47859 - rho 47860 - rho 47861 := ha5
      _ = (-1) * rho 47860 - rho 47861 + (seg52In1AccY11 rho - seg52In1AccX11 rho * (-1)) *
          (rho 47857 + rho 47858) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX12 rho = seg52In1AccX11 rho - Bool.toZMod bit * (seg52In1AccX11 rho - rho 47863) := by
    have hd : rho 47865 = Bool.toZMod bit * (rho 47863 - seg52In1AccX11 rho) := by
      rw [← hbit]
      unfold seg52In1AccX11
      linear_combination -r3475
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY12 rho = seg52In1AccY11 rho - Bool.toZMod bit * (seg52In1AccY11 rho - rho 47864) := by
    have hd : rho 47866 = Bool.toZMod bit * (rho 47864 - seg52In1AccY11 rho) := by
      rw [← hbit]
      unfold seg52In1AccY11
      linear_combination -r3476
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47857 * rho 47858 = rho 47867 := by linear_combination r3477
  have hd1 : rho 47857 * rho 47857 = rho 47868 := by linear_combination r3478
  have hd2 : rho 47858 * rho 47858 = rho 47869 := by linear_combination r3479
  have hd3 : rho 47870 * (rho 47858 * rho 47858 + rho 47857 * rho 47857 * (-1)) =
      2 * (rho 47857 * rho 47858) := by
    rw [hd0, hd1, hd2]
    linear_combination r3480
  have hd4 : rho 47871 * (2 - (rho 47858 * rho 47858 + rho 47857 * rho 47857 * (-1))) =
      rho 47858 * rho 47858 - rho 47857 * rho 47857 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3481
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX11 rho, seg52In1AccY11 rho⟩ ⟨rho 47857, rho 47858⟩
    ⟨rho 47863, rho 47864⟩ ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47870, rho 47871⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3482 rho ∧ Seg52.relationRow3483 rho ∧ Seg52.relationRow3484 rho ∧ Seg52.relationRow3485 rho ∧ Seg52.relationRow3486 rho ∧ Seg52.relationRow3487 rho ∧ Seg52.relationRow3488 rho ∧ Seg52.relationRow3489 rho ∧ Seg52.relationRow3490 rho ∧ Seg52.relationRow3491 rho ∧ Seg52.relationRow3492 rho ∧ Seg52.relationRow3493 rho ∧ Seg52.relationRow3494 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494⟩

theorem seg52In1_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47606 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47870, rho 47871⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47870, rho 47871⟩
        ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47883, rho 47884⟩ := by
  obtain ⟨r3482, r3483, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494⟩ := seg52In1_rows12 rho h
  unfold Seg52.relationRow3482 at r3482

  unfold Seg52.relationRow3483 at r3483

  unfold Seg52.relationRow3484 at r3484

  unfold Seg52.relationRow3485 at r3485

  unfold Seg52.relationRow3486 at r3486

  unfold Seg52.relationRow3487 at r3487

  unfold Seg52.relationRow3488 at r3488

  unfold Seg52.relationRow3489 at r3489

  unfold Seg52.relationRow3490 at r3490

  unfold Seg52.relationRow3491 at r3491

  unfold Seg52.relationRow3492 at r3492

  unfold Seg52.relationRow3493 at r3493

  unfold Seg52.relationRow3494 at r3494

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX13 rho = seg52In1AccX12 rho + rho 47878 := by
    unfold seg52In1AccX13 seg52In1AccX12
    ring

  have hnexty : seg52In1AccY13 rho = seg52In1AccY12 rho + rho 47879 := by
    unfold seg52In1AccY13 seg52In1AccY12
    ring

  have ha0 : (rho 47870 + rho 47871) * (seg52In1AccX12 rho + seg52In1AccY12 rho) = rho 47872 := by
    unfold seg52In1AccX12 seg52In1AccY12
    linear_combination r3482
  have ha1 : rho 47871 * seg52In1AccX12 rho = rho 47873 := by
    unfold seg52In1AccX12
    linear_combination r3483
  have ha2 : rho 47870 * seg52In1AccY12 rho = rho 47874 := by
    unfold seg52In1AccY12
    linear_combination r3484
  have ha3 : 3021 * rho 47873 * rho 47874 = rho 47875 := by
    linear_combination r3485
  have ha4 : rho 47876 * (1 + rho 47875) = rho 47873 + rho 47874 := by
    linear_combination r3486
  have ha5 : rho 47877 * (1 - rho 47875) = rho 47872 - rho 47873 - rho 47874 := by
    linear_combination r3487
  have haddx :
      rho 47876 * (1 + 3021 * (rho 47871 * seg52In1AccX12 rho) * (rho 47870 * seg52In1AccY12 rho)) =
        rho 47871 * seg52In1AccX12 rho + rho 47870 * seg52In1AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47877 * (1 - 3021 * (rho 47871 * seg52In1AccX12 rho) * (rho 47870 * seg52In1AccY12 rho)) =
        (-1) * (rho 47871 * seg52In1AccX12 rho) - rho 47870 * seg52In1AccY12 rho +
          (seg52In1AccY12 rho - seg52In1AccX12 rho * (-1)) * (rho 47870 + rho 47871) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47877 * (1 - rho 47875) = rho 47872 - rho 47873 - rho 47874 := ha5
      _ = (-1) * rho 47873 - rho 47874 + (seg52In1AccY12 rho - seg52In1AccX12 rho * (-1)) *
          (rho 47870 + rho 47871) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX13 rho = seg52In1AccX12 rho - Bool.toZMod bit * (seg52In1AccX12 rho - rho 47876) := by
    have hd : rho 47878 = Bool.toZMod bit * (rho 47876 - seg52In1AccX12 rho) := by
      rw [← hbit]
      unfold seg52In1AccX12
      linear_combination -r3488
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY13 rho = seg52In1AccY12 rho - Bool.toZMod bit * (seg52In1AccY12 rho - rho 47877) := by
    have hd : rho 47879 = Bool.toZMod bit * (rho 47877 - seg52In1AccY12 rho) := by
      rw [← hbit]
      unfold seg52In1AccY12
      linear_combination -r3489
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47870 * rho 47871 = rho 47880 := by linear_combination r3490
  have hd1 : rho 47870 * rho 47870 = rho 47881 := by linear_combination r3491
  have hd2 : rho 47871 * rho 47871 = rho 47882 := by linear_combination r3492
  have hd3 : rho 47883 * (rho 47871 * rho 47871 + rho 47870 * rho 47870 * (-1)) =
      2 * (rho 47870 * rho 47871) := by
    rw [hd0, hd1, hd2]
    linear_combination r3493
  have hd4 : rho 47884 * (2 - (rho 47871 * rho 47871 + rho 47870 * rho 47870 * (-1))) =
      rho 47871 * rho 47871 - rho 47870 * rho 47870 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3494
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX12 rho, seg52In1AccY12 rho⟩ ⟨rho 47870, rho 47871⟩
    ⟨rho 47876, rho 47877⟩ ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47883, rho 47884⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3495 rho ∧ Seg52.relationRow3496 rho ∧ Seg52.relationRow3497 rho ∧ Seg52.relationRow3498 rho ∧ Seg52.relationRow3499 rho ∧ Seg52.relationRow3500 rho ∧ Seg52.relationRow3501 rho ∧ Seg52.relationRow3502 rho ∧ Seg52.relationRow3503 rho ∧ Seg52.relationRow3504 rho ∧ Seg52.relationRow3505 rho ∧ Seg52.relationRow3506 rho ∧ Seg52.relationRow3507 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507⟩

theorem seg52In1_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47607 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47883, rho 47884⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47883, rho 47884⟩
        ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47896, rho 47897⟩ := by
  obtain ⟨r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, r3506, r3507⟩ := seg52In1_rows13 rho h
  unfold Seg52.relationRow3495 at r3495

  unfold Seg52.relationRow3496 at r3496

  unfold Seg52.relationRow3497 at r3497

  unfold Seg52.relationRow3498 at r3498

  unfold Seg52.relationRow3499 at r3499

  unfold Seg52.relationRow3500 at r3500

  unfold Seg52.relationRow3501 at r3501

  unfold Seg52.relationRow3502 at r3502

  unfold Seg52.relationRow3503 at r3503

  unfold Seg52.relationRow3504 at r3504

  unfold Seg52.relationRow3505 at r3505

  unfold Seg52.relationRow3506 at r3506

  unfold Seg52.relationRow3507 at r3507

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX14 rho = seg52In1AccX13 rho + rho 47891 := by
    unfold seg52In1AccX14 seg52In1AccX13
    ring

  have hnexty : seg52In1AccY14 rho = seg52In1AccY13 rho + rho 47892 := by
    unfold seg52In1AccY14 seg52In1AccY13
    ring

  have ha0 : (rho 47883 + rho 47884) * (seg52In1AccX13 rho + seg52In1AccY13 rho) = rho 47885 := by
    unfold seg52In1AccX13 seg52In1AccY13
    linear_combination r3495
  have ha1 : rho 47884 * seg52In1AccX13 rho = rho 47886 := by
    unfold seg52In1AccX13
    linear_combination r3496
  have ha2 : rho 47883 * seg52In1AccY13 rho = rho 47887 := by
    unfold seg52In1AccY13
    linear_combination r3497
  have ha3 : 3021 * rho 47886 * rho 47887 = rho 47888 := by
    linear_combination r3498
  have ha4 : rho 47889 * (1 + rho 47888) = rho 47886 + rho 47887 := by
    linear_combination r3499
  have ha5 : rho 47890 * (1 - rho 47888) = rho 47885 - rho 47886 - rho 47887 := by
    linear_combination r3500
  have haddx :
      rho 47889 * (1 + 3021 * (rho 47884 * seg52In1AccX13 rho) * (rho 47883 * seg52In1AccY13 rho)) =
        rho 47884 * seg52In1AccX13 rho + rho 47883 * seg52In1AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47890 * (1 - 3021 * (rho 47884 * seg52In1AccX13 rho) * (rho 47883 * seg52In1AccY13 rho)) =
        (-1) * (rho 47884 * seg52In1AccX13 rho) - rho 47883 * seg52In1AccY13 rho +
          (seg52In1AccY13 rho - seg52In1AccX13 rho * (-1)) * (rho 47883 + rho 47884) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47890 * (1 - rho 47888) = rho 47885 - rho 47886 - rho 47887 := ha5
      _ = (-1) * rho 47886 - rho 47887 + (seg52In1AccY13 rho - seg52In1AccX13 rho * (-1)) *
          (rho 47883 + rho 47884) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX14 rho = seg52In1AccX13 rho - Bool.toZMod bit * (seg52In1AccX13 rho - rho 47889) := by
    have hd : rho 47891 = Bool.toZMod bit * (rho 47889 - seg52In1AccX13 rho) := by
      rw [← hbit]
      unfold seg52In1AccX13
      linear_combination -r3501
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY14 rho = seg52In1AccY13 rho - Bool.toZMod bit * (seg52In1AccY13 rho - rho 47890) := by
    have hd : rho 47892 = Bool.toZMod bit * (rho 47890 - seg52In1AccY13 rho) := by
      rw [← hbit]
      unfold seg52In1AccY13
      linear_combination -r3502
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47883 * rho 47884 = rho 47893 := by linear_combination r3503
  have hd1 : rho 47883 * rho 47883 = rho 47894 := by linear_combination r3504
  have hd2 : rho 47884 * rho 47884 = rho 47895 := by linear_combination r3505
  have hd3 : rho 47896 * (rho 47884 * rho 47884 + rho 47883 * rho 47883 * (-1)) =
      2 * (rho 47883 * rho 47884) := by
    rw [hd0, hd1, hd2]
    linear_combination r3506
  have hd4 : rho 47897 * (2 - (rho 47884 * rho 47884 + rho 47883 * rho 47883 * (-1))) =
      rho 47884 * rho 47884 - rho 47883 * rho 47883 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3507
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX13 rho, seg52In1AccY13 rho⟩ ⟨rho 47883, rho 47884⟩
    ⟨rho 47889, rho 47890⟩ ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47896, rho 47897⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3508 rho ∧ Seg52.relationRow3509 rho ∧ Seg52.relationRow3510 rho ∧ Seg52.relationRow3511 rho ∧ Seg52.relationRow3512 rho ∧ Seg52.relationRow3513 rho ∧ Seg52.relationRow3514 rho ∧ Seg52.relationRow3515 rho ∧ Seg52.relationRow3516 rho ∧ Seg52.relationRow3517 rho ∧ Seg52.relationRow3518 rho ∧ Seg52.relationRow3519 rho ∧ Seg52.relationRow3520 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p43, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart43 at p43

  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨r3520, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520⟩

theorem seg52In1_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47608 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47896, rho 47897⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47896, rho 47897⟩
        ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47909, rho 47910⟩ := by
  obtain ⟨r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519, r3520⟩ := seg52In1_rows14 rho h
  unfold Seg52.relationRow3508 at r3508

  unfold Seg52.relationRow3509 at r3509

  unfold Seg52.relationRow3510 at r3510

  unfold Seg52.relationRow3511 at r3511

  unfold Seg52.relationRow3512 at r3512

  unfold Seg52.relationRow3513 at r3513

  unfold Seg52.relationRow3514 at r3514

  unfold Seg52.relationRow3515 at r3515

  unfold Seg52.relationRow3516 at r3516

  unfold Seg52.relationRow3517 at r3517

  unfold Seg52.relationRow3518 at r3518

  unfold Seg52.relationRow3519 at r3519

  unfold Seg52.relationRow3520 at r3520

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX15 rho = seg52In1AccX14 rho + rho 47904 := by
    unfold seg52In1AccX15 seg52In1AccX14
    ring

  have hnexty : seg52In1AccY15 rho = seg52In1AccY14 rho + rho 47905 := by
    unfold seg52In1AccY15 seg52In1AccY14
    ring

  have ha0 : (rho 47896 + rho 47897) * (seg52In1AccX14 rho + seg52In1AccY14 rho) = rho 47898 := by
    unfold seg52In1AccX14 seg52In1AccY14
    linear_combination r3508
  have ha1 : rho 47897 * seg52In1AccX14 rho = rho 47899 := by
    unfold seg52In1AccX14
    linear_combination r3509
  have ha2 : rho 47896 * seg52In1AccY14 rho = rho 47900 := by
    unfold seg52In1AccY14
    linear_combination r3510
  have ha3 : 3021 * rho 47899 * rho 47900 = rho 47901 := by
    linear_combination r3511
  have ha4 : rho 47902 * (1 + rho 47901) = rho 47899 + rho 47900 := by
    linear_combination r3512
  have ha5 : rho 47903 * (1 - rho 47901) = rho 47898 - rho 47899 - rho 47900 := by
    linear_combination r3513
  have haddx :
      rho 47902 * (1 + 3021 * (rho 47897 * seg52In1AccX14 rho) * (rho 47896 * seg52In1AccY14 rho)) =
        rho 47897 * seg52In1AccX14 rho + rho 47896 * seg52In1AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47903 * (1 - 3021 * (rho 47897 * seg52In1AccX14 rho) * (rho 47896 * seg52In1AccY14 rho)) =
        (-1) * (rho 47897 * seg52In1AccX14 rho) - rho 47896 * seg52In1AccY14 rho +
          (seg52In1AccY14 rho - seg52In1AccX14 rho * (-1)) * (rho 47896 + rho 47897) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47903 * (1 - rho 47901) = rho 47898 - rho 47899 - rho 47900 := ha5
      _ = (-1) * rho 47899 - rho 47900 + (seg52In1AccY14 rho - seg52In1AccX14 rho * (-1)) *
          (rho 47896 + rho 47897) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX15 rho = seg52In1AccX14 rho - Bool.toZMod bit * (seg52In1AccX14 rho - rho 47902) := by
    have hd : rho 47904 = Bool.toZMod bit * (rho 47902 - seg52In1AccX14 rho) := by
      rw [← hbit]
      unfold seg52In1AccX14
      linear_combination -r3514
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY15 rho = seg52In1AccY14 rho - Bool.toZMod bit * (seg52In1AccY14 rho - rho 47903) := by
    have hd : rho 47905 = Bool.toZMod bit * (rho 47903 - seg52In1AccY14 rho) := by
      rw [← hbit]
      unfold seg52In1AccY14
      linear_combination -r3515
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47896 * rho 47897 = rho 47906 := by linear_combination r3516
  have hd1 : rho 47896 * rho 47896 = rho 47907 := by linear_combination r3517
  have hd2 : rho 47897 * rho 47897 = rho 47908 := by linear_combination r3518
  have hd3 : rho 47909 * (rho 47897 * rho 47897 + rho 47896 * rho 47896 * (-1)) =
      2 * (rho 47896 * rho 47897) := by
    rw [hd0, hd1, hd2]
    linear_combination r3519
  have hd4 : rho 47910 * (2 - (rho 47897 * rho 47897 + rho 47896 * rho 47896 * (-1))) =
      rho 47897 * rho 47897 - rho 47896 * rho 47896 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3520
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX14 rho, seg52In1AccY14 rho⟩ ⟨rho 47896, rho 47897⟩
    ⟨rho 47902, rho 47903⟩ ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47909, rho 47910⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3521 rho ∧ Seg52.relationRow3522 rho ∧ Seg52.relationRow3523 rho ∧ Seg52.relationRow3524 rho ∧ Seg52.relationRow3525 rho ∧ Seg52.relationRow3526 rho ∧ Seg52.relationRow3527 rho ∧ Seg52.relationRow3528 rho ∧ Seg52.relationRow3529 rho ∧ Seg52.relationRow3530 rho ∧ Seg52.relationRow3531 rho ∧ Seg52.relationRow3532 rho ∧ Seg52.relationRow3533 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533⟩

theorem seg52In1_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47609 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47909, rho 47910⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47909, rho 47910⟩
        ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47922, rho 47923⟩ := by
  obtain ⟨r3521, r3522, r3523, r3524, r3525, r3526, r3527, r3528, r3529, r3530, r3531, r3532, r3533⟩ := seg52In1_rows15 rho h
  unfold Seg52.relationRow3521 at r3521

  unfold Seg52.relationRow3522 at r3522

  unfold Seg52.relationRow3523 at r3523

  unfold Seg52.relationRow3524 at r3524

  unfold Seg52.relationRow3525 at r3525

  unfold Seg52.relationRow3526 at r3526

  unfold Seg52.relationRow3527 at r3527

  unfold Seg52.relationRow3528 at r3528

  unfold Seg52.relationRow3529 at r3529

  unfold Seg52.relationRow3530 at r3530

  unfold Seg52.relationRow3531 at r3531

  unfold Seg52.relationRow3532 at r3532

  unfold Seg52.relationRow3533 at r3533

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX16 rho = seg52In1AccX15 rho + rho 47917 := by
    unfold seg52In1AccX16 seg52In1AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 47722 13]

    ring

  have hnexty : seg52In1AccY16 rho = seg52In1AccY15 rho + rho 47918 := by
    unfold seg52In1AccY16 seg52In1AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 47723 13]

    ring

  have ha0 : (rho 47909 + rho 47910) * (seg52In1AccX15 rho + seg52In1AccY15 rho) = rho 47911 := by
    unfold seg52In1AccX15 seg52In1AccY15
    linear_combination r3521
  have ha1 : rho 47910 * seg52In1AccX15 rho = rho 47912 := by
    unfold seg52In1AccX15
    linear_combination r3522
  have ha2 : rho 47909 * seg52In1AccY15 rho = rho 47913 := by
    unfold seg52In1AccY15
    linear_combination r3523
  have ha3 : 3021 * rho 47912 * rho 47913 = rho 47914 := by
    linear_combination r3524
  have ha4 : rho 47915 * (1 + rho 47914) = rho 47912 + rho 47913 := by
    linear_combination r3525
  have ha5 : rho 47916 * (1 - rho 47914) = rho 47911 - rho 47912 - rho 47913 := by
    linear_combination r3526
  have haddx :
      rho 47915 * (1 + 3021 * (rho 47910 * seg52In1AccX15 rho) * (rho 47909 * seg52In1AccY15 rho)) =
        rho 47910 * seg52In1AccX15 rho + rho 47909 * seg52In1AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47916 * (1 - 3021 * (rho 47910 * seg52In1AccX15 rho) * (rho 47909 * seg52In1AccY15 rho)) =
        (-1) * (rho 47910 * seg52In1AccX15 rho) - rho 47909 * seg52In1AccY15 rho +
          (seg52In1AccY15 rho - seg52In1AccX15 rho * (-1)) * (rho 47909 + rho 47910) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47916 * (1 - rho 47914) = rho 47911 - rho 47912 - rho 47913 := ha5
      _ = (-1) * rho 47912 - rho 47913 + (seg52In1AccY15 rho - seg52In1AccX15 rho * (-1)) *
          (rho 47909 + rho 47910) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX16 rho = seg52In1AccX15 rho - Bool.toZMod bit * (seg52In1AccX15 rho - rho 47915) := by
    have hd : rho 47917 = Bool.toZMod bit * (rho 47915 - seg52In1AccX15 rho) := by
      rw [← hbit]
      unfold seg52In1AccX15
      linear_combination -r3527
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY16 rho = seg52In1AccY15 rho - Bool.toZMod bit * (seg52In1AccY15 rho - rho 47916) := by
    have hd : rho 47918 = Bool.toZMod bit * (rho 47916 - seg52In1AccY15 rho) := by
      rw [← hbit]
      unfold seg52In1AccY15
      linear_combination -r3528
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47909 * rho 47910 = rho 47919 := by linear_combination r3529
  have hd1 : rho 47909 * rho 47909 = rho 47920 := by linear_combination r3530
  have hd2 : rho 47910 * rho 47910 = rho 47921 := by linear_combination r3531
  have hd3 : rho 47922 * (rho 47910 * rho 47910 + rho 47909 * rho 47909 * (-1)) =
      2 * (rho 47909 * rho 47910) := by
    rw [hd0, hd1, hd2]
    linear_combination r3532
  have hd4 : rho 47923 * (2 - (rho 47910 * rho 47910 + rho 47909 * rho 47909 * (-1))) =
      rho 47910 * rho 47910 - rho 47909 * rho 47909 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3533
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX15 rho, seg52In1AccY15 rho⟩ ⟨rho 47909, rho 47910⟩
    ⟨rho 47915, rho 47916⟩ ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47922, rho 47923⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3534 rho ∧ Seg52.relationRow3535 rho ∧ Seg52.relationRow3536 rho ∧ Seg52.relationRow3537 rho ∧ Seg52.relationRow3538 rho ∧ Seg52.relationRow3539 rho ∧ Seg52.relationRow3540 rho ∧ Seg52.relationRow3541 rho ∧ Seg52.relationRow3542 rho ∧ Seg52.relationRow3543 rho ∧ Seg52.relationRow3544 rho ∧ Seg52.relationRow3545 rho ∧ Seg52.relationRow3546 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546⟩

theorem seg52In1_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47610 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47922, rho 47923⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47922, rho 47923⟩
        ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47935, rho 47936⟩ := by
  obtain ⟨r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546⟩ := seg52In1_rows16 rho h
  unfold Seg52.relationRow3534 at r3534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3534

  unfold Seg52.relationRow3535 at r3535

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3535

  unfold Seg52.relationRow3536 at r3536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3536

  unfold Seg52.relationRow3537 at r3537

  unfold Seg52.relationRow3538 at r3538

  unfold Seg52.relationRow3539 at r3539

  unfold Seg52.relationRow3540 at r3540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3540

  unfold Seg52.relationRow3541 at r3541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3541

  unfold Seg52.relationRow3542 at r3542

  unfold Seg52.relationRow3543 at r3543

  unfold Seg52.relationRow3544 at r3544

  unfold Seg52.relationRow3545 at r3545

  unfold Seg52.relationRow3546 at r3546

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX17 rho = seg52In1AccX16 rho + rho 47930 := by
    unfold seg52In1AccX17 seg52In1AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 16]

    ring

  have hnexty : seg52In1AccY17 rho = seg52In1AccY16 rho + rho 47931 := by
    unfold seg52In1AccY17 seg52In1AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 16]

    ring

  have ha0 : (rho 47922 + rho 47923) * (seg52In1AccX16 rho + seg52In1AccY16 rho) = rho 47924 := by
    unfold seg52In1AccX16 seg52In1AccY16
    linear_combination r3534
  have ha1 : rho 47923 * seg52In1AccX16 rho = rho 47925 := by
    unfold seg52In1AccX16
    linear_combination r3535
  have ha2 : rho 47922 * seg52In1AccY16 rho = rho 47926 := by
    unfold seg52In1AccY16
    linear_combination r3536
  have ha3 : 3021 * rho 47925 * rho 47926 = rho 47927 := by
    linear_combination r3537
  have ha4 : rho 47928 * (1 + rho 47927) = rho 47925 + rho 47926 := by
    linear_combination r3538
  have ha5 : rho 47929 * (1 - rho 47927) = rho 47924 - rho 47925 - rho 47926 := by
    linear_combination r3539
  have haddx :
      rho 47928 * (1 + 3021 * (rho 47923 * seg52In1AccX16 rho) * (rho 47922 * seg52In1AccY16 rho)) =
        rho 47923 * seg52In1AccX16 rho + rho 47922 * seg52In1AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47929 * (1 - 3021 * (rho 47923 * seg52In1AccX16 rho) * (rho 47922 * seg52In1AccY16 rho)) =
        (-1) * (rho 47923 * seg52In1AccX16 rho) - rho 47922 * seg52In1AccY16 rho +
          (seg52In1AccY16 rho - seg52In1AccX16 rho * (-1)) * (rho 47922 + rho 47923) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47929 * (1 - rho 47927) = rho 47924 - rho 47925 - rho 47926 := ha5
      _ = (-1) * rho 47925 - rho 47926 + (seg52In1AccY16 rho - seg52In1AccX16 rho * (-1)) *
          (rho 47922 + rho 47923) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX17 rho = seg52In1AccX16 rho - Bool.toZMod bit * (seg52In1AccX16 rho - rho 47928) := by
    have hd : rho 47930 = Bool.toZMod bit * (rho 47928 - seg52In1AccX16 rho) := by
      rw [← hbit]
      unfold seg52In1AccX16
      linear_combination -r3540
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY17 rho = seg52In1AccY16 rho - Bool.toZMod bit * (seg52In1AccY16 rho - rho 47929) := by
    have hd : rho 47931 = Bool.toZMod bit * (rho 47929 - seg52In1AccY16 rho) := by
      rw [← hbit]
      unfold seg52In1AccY16
      linear_combination -r3541
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47922 * rho 47923 = rho 47932 := by linear_combination r3542
  have hd1 : rho 47922 * rho 47922 = rho 47933 := by linear_combination r3543
  have hd2 : rho 47923 * rho 47923 = rho 47934 := by linear_combination r3544
  have hd3 : rho 47935 * (rho 47923 * rho 47923 + rho 47922 * rho 47922 * (-1)) =
      2 * (rho 47922 * rho 47923) := by
    rw [hd0, hd1, hd2]
    linear_combination r3545
  have hd4 : rho 47936 * (2 - (rho 47923 * rho 47923 + rho 47922 * rho 47922 * (-1))) =
      rho 47923 * rho 47923 - rho 47922 * rho 47922 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3546
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX16 rho, seg52In1AccY16 rho⟩ ⟨rho 47922, rho 47923⟩
    ⟨rho 47928, rho 47929⟩ ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47935, rho 47936⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3547 rho ∧ Seg52.relationRow3548 rho ∧ Seg52.relationRow3549 rho ∧ Seg52.relationRow3550 rho ∧ Seg52.relationRow3551 rho ∧ Seg52.relationRow3552 rho ∧ Seg52.relationRow3553 rho ∧ Seg52.relationRow3554 rho ∧ Seg52.relationRow3555 rho ∧ Seg52.relationRow3556 rho ∧ Seg52.relationRow3557 rho ∧ Seg52.relationRow3558 rho ∧ Seg52.relationRow3559 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559⟩

theorem seg52In1_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47611 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47935, rho 47936⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47935, rho 47936⟩
        ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47948, rho 47949⟩ := by
  obtain ⟨r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559⟩ := seg52In1_rows17 rho h
  unfold Seg52.relationRow3547 at r3547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3547

  unfold Seg52.relationRow3548 at r3548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3548

  unfold Seg52.relationRow3549 at r3549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3549

  unfold Seg52.relationRow3550 at r3550

  unfold Seg52.relationRow3551 at r3551

  unfold Seg52.relationRow3552 at r3552

  unfold Seg52.relationRow3553 at r3553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3553

  unfold Seg52.relationRow3554 at r3554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3554

  unfold Seg52.relationRow3555 at r3555

  unfold Seg52.relationRow3556 at r3556

  unfold Seg52.relationRow3557 at r3557

  unfold Seg52.relationRow3558 at r3558

  unfold Seg52.relationRow3559 at r3559

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX18 rho = seg52In1AccX17 rho + rho 47943 := by
    unfold seg52In1AccX18 seg52In1AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 17]

    ring

  have hnexty : seg52In1AccY18 rho = seg52In1AccY17 rho + rho 47944 := by
    unfold seg52In1AccY18 seg52In1AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 17]

    ring

  have ha0 : (rho 47935 + rho 47936) * (seg52In1AccX17 rho + seg52In1AccY17 rho) = rho 47937 := by
    unfold seg52In1AccX17 seg52In1AccY17
    linear_combination r3547
  have ha1 : rho 47936 * seg52In1AccX17 rho = rho 47938 := by
    unfold seg52In1AccX17
    linear_combination r3548
  have ha2 : rho 47935 * seg52In1AccY17 rho = rho 47939 := by
    unfold seg52In1AccY17
    linear_combination r3549
  have ha3 : 3021 * rho 47938 * rho 47939 = rho 47940 := by
    linear_combination r3550
  have ha4 : rho 47941 * (1 + rho 47940) = rho 47938 + rho 47939 := by
    linear_combination r3551
  have ha5 : rho 47942 * (1 - rho 47940) = rho 47937 - rho 47938 - rho 47939 := by
    linear_combination r3552
  have haddx :
      rho 47941 * (1 + 3021 * (rho 47936 * seg52In1AccX17 rho) * (rho 47935 * seg52In1AccY17 rho)) =
        rho 47936 * seg52In1AccX17 rho + rho 47935 * seg52In1AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47942 * (1 - 3021 * (rho 47936 * seg52In1AccX17 rho) * (rho 47935 * seg52In1AccY17 rho)) =
        (-1) * (rho 47936 * seg52In1AccX17 rho) - rho 47935 * seg52In1AccY17 rho +
          (seg52In1AccY17 rho - seg52In1AccX17 rho * (-1)) * (rho 47935 + rho 47936) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47942 * (1 - rho 47940) = rho 47937 - rho 47938 - rho 47939 := ha5
      _ = (-1) * rho 47938 - rho 47939 + (seg52In1AccY17 rho - seg52In1AccX17 rho * (-1)) *
          (rho 47935 + rho 47936) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX18 rho = seg52In1AccX17 rho - Bool.toZMod bit * (seg52In1AccX17 rho - rho 47941) := by
    have hd : rho 47943 = Bool.toZMod bit * (rho 47941 - seg52In1AccX17 rho) := by
      rw [← hbit]
      unfold seg52In1AccX17
      linear_combination -r3553
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY18 rho = seg52In1AccY17 rho - Bool.toZMod bit * (seg52In1AccY17 rho - rho 47942) := by
    have hd : rho 47944 = Bool.toZMod bit * (rho 47942 - seg52In1AccY17 rho) := by
      rw [← hbit]
      unfold seg52In1AccY17
      linear_combination -r3554
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47935 * rho 47936 = rho 47945 := by linear_combination r3555
  have hd1 : rho 47935 * rho 47935 = rho 47946 := by linear_combination r3556
  have hd2 : rho 47936 * rho 47936 = rho 47947 := by linear_combination r3557
  have hd3 : rho 47948 * (rho 47936 * rho 47936 + rho 47935 * rho 47935 * (-1)) =
      2 * (rho 47935 * rho 47936) := by
    rw [hd0, hd1, hd2]
    linear_combination r3558
  have hd4 : rho 47949 * (2 - (rho 47936 * rho 47936 + rho 47935 * rho 47935 * (-1))) =
      rho 47936 * rho 47936 - rho 47935 * rho 47935 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3559
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX17 rho, seg52In1AccY17 rho⟩ ⟨rho 47935, rho 47936⟩
    ⟨rho 47941, rho 47942⟩ ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47948, rho 47949⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3560 rho ∧ Seg52.relationRow3561 rho ∧ Seg52.relationRow3562 rho ∧ Seg52.relationRow3563 rho ∧ Seg52.relationRow3564 rho ∧ Seg52.relationRow3565 rho ∧ Seg52.relationRow3566 rho ∧ Seg52.relationRow3567 rho ∧ Seg52.relationRow3568 rho ∧ Seg52.relationRow3569 rho ∧ Seg52.relationRow3570 rho ∧ Seg52.relationRow3571 rho ∧ Seg52.relationRow3572 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572⟩

theorem seg52In1_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47612 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47948, rho 47949⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47948, rho 47949⟩
        ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47961, rho 47962⟩ := by
  obtain ⟨r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572⟩ := seg52In1_rows18 rho h
  unfold Seg52.relationRow3560 at r3560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3560

  unfold Seg52.relationRow3561 at r3561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3561

  unfold Seg52.relationRow3562 at r3562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3562

  unfold Seg52.relationRow3563 at r3563

  unfold Seg52.relationRow3564 at r3564

  unfold Seg52.relationRow3565 at r3565

  unfold Seg52.relationRow3566 at r3566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3566

  unfold Seg52.relationRow3567 at r3567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3567

  unfold Seg52.relationRow3568 at r3568

  unfold Seg52.relationRow3569 at r3569

  unfold Seg52.relationRow3570 at r3570

  unfold Seg52.relationRow3571 at r3571

  unfold Seg52.relationRow3572 at r3572

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX19 rho = seg52In1AccX18 rho + rho 47956 := by
    unfold seg52In1AccX19 seg52In1AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 18]

    ring

  have hnexty : seg52In1AccY19 rho = seg52In1AccY18 rho + rho 47957 := by
    unfold seg52In1AccY19 seg52In1AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 18]

    ring

  have ha0 : (rho 47948 + rho 47949) * (seg52In1AccX18 rho + seg52In1AccY18 rho) = rho 47950 := by
    unfold seg52In1AccX18 seg52In1AccY18
    linear_combination r3560
  have ha1 : rho 47949 * seg52In1AccX18 rho = rho 47951 := by
    unfold seg52In1AccX18
    linear_combination r3561
  have ha2 : rho 47948 * seg52In1AccY18 rho = rho 47952 := by
    unfold seg52In1AccY18
    linear_combination r3562
  have ha3 : 3021 * rho 47951 * rho 47952 = rho 47953 := by
    linear_combination r3563
  have ha4 : rho 47954 * (1 + rho 47953) = rho 47951 + rho 47952 := by
    linear_combination r3564
  have ha5 : rho 47955 * (1 - rho 47953) = rho 47950 - rho 47951 - rho 47952 := by
    linear_combination r3565
  have haddx :
      rho 47954 * (1 + 3021 * (rho 47949 * seg52In1AccX18 rho) * (rho 47948 * seg52In1AccY18 rho)) =
        rho 47949 * seg52In1AccX18 rho + rho 47948 * seg52In1AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47955 * (1 - 3021 * (rho 47949 * seg52In1AccX18 rho) * (rho 47948 * seg52In1AccY18 rho)) =
        (-1) * (rho 47949 * seg52In1AccX18 rho) - rho 47948 * seg52In1AccY18 rho +
          (seg52In1AccY18 rho - seg52In1AccX18 rho * (-1)) * (rho 47948 + rho 47949) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47955 * (1 - rho 47953) = rho 47950 - rho 47951 - rho 47952 := ha5
      _ = (-1) * rho 47951 - rho 47952 + (seg52In1AccY18 rho - seg52In1AccX18 rho * (-1)) *
          (rho 47948 + rho 47949) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX19 rho = seg52In1AccX18 rho - Bool.toZMod bit * (seg52In1AccX18 rho - rho 47954) := by
    have hd : rho 47956 = Bool.toZMod bit * (rho 47954 - seg52In1AccX18 rho) := by
      rw [← hbit]
      unfold seg52In1AccX18
      linear_combination -r3566
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY19 rho = seg52In1AccY18 rho - Bool.toZMod bit * (seg52In1AccY18 rho - rho 47955) := by
    have hd : rho 47957 = Bool.toZMod bit * (rho 47955 - seg52In1AccY18 rho) := by
      rw [← hbit]
      unfold seg52In1AccY18
      linear_combination -r3567
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47948 * rho 47949 = rho 47958 := by linear_combination r3568
  have hd1 : rho 47948 * rho 47948 = rho 47959 := by linear_combination r3569
  have hd2 : rho 47949 * rho 47949 = rho 47960 := by linear_combination r3570
  have hd3 : rho 47961 * (rho 47949 * rho 47949 + rho 47948 * rho 47948 * (-1)) =
      2 * (rho 47948 * rho 47949) := by
    rw [hd0, hd1, hd2]
    linear_combination r3571
  have hd4 : rho 47962 * (2 - (rho 47949 * rho 47949 + rho 47948 * rho 47948 * (-1))) =
      rho 47949 * rho 47949 - rho 47948 * rho 47948 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3572
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX18 rho, seg52In1AccY18 rho⟩ ⟨rho 47948, rho 47949⟩
    ⟨rho 47954, rho 47955⟩ ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47961, rho 47962⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3573 rho ∧ Seg52.relationRow3574 rho ∧ Seg52.relationRow3575 rho ∧ Seg52.relationRow3576 rho ∧ Seg52.relationRow3577 rho ∧ Seg52.relationRow3578 rho ∧ Seg52.relationRow3579 rho ∧ Seg52.relationRow3580 rho ∧ Seg52.relationRow3581 rho ∧ Seg52.relationRow3582 rho ∧ Seg52.relationRow3583 rho ∧ Seg52.relationRow3584 rho ∧ Seg52.relationRow3585 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585⟩

theorem seg52In1_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47613 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47961, rho 47962⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47961, rho 47962⟩
        ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47974, rho 47975⟩ := by
  obtain ⟨r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585⟩ := seg52In1_rows19 rho h
  unfold Seg52.relationRow3573 at r3573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3573

  unfold Seg52.relationRow3574 at r3574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3574

  unfold Seg52.relationRow3575 at r3575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3575

  unfold Seg52.relationRow3576 at r3576

  unfold Seg52.relationRow3577 at r3577

  unfold Seg52.relationRow3578 at r3578

  unfold Seg52.relationRow3579 at r3579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3579

  unfold Seg52.relationRow3580 at r3580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3580

  unfold Seg52.relationRow3581 at r3581

  unfold Seg52.relationRow3582 at r3582

  unfold Seg52.relationRow3583 at r3583

  unfold Seg52.relationRow3584 at r3584

  unfold Seg52.relationRow3585 at r3585

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX20 rho = seg52In1AccX19 rho + rho 47969 := by
    unfold seg52In1AccX20 seg52In1AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 19]

    ring

  have hnexty : seg52In1AccY20 rho = seg52In1AccY19 rho + rho 47970 := by
    unfold seg52In1AccY20 seg52In1AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 19]

    ring

  have ha0 : (rho 47961 + rho 47962) * (seg52In1AccX19 rho + seg52In1AccY19 rho) = rho 47963 := by
    unfold seg52In1AccX19 seg52In1AccY19
    linear_combination r3573
  have ha1 : rho 47962 * seg52In1AccX19 rho = rho 47964 := by
    unfold seg52In1AccX19
    linear_combination r3574
  have ha2 : rho 47961 * seg52In1AccY19 rho = rho 47965 := by
    unfold seg52In1AccY19
    linear_combination r3575
  have ha3 : 3021 * rho 47964 * rho 47965 = rho 47966 := by
    linear_combination r3576
  have ha4 : rho 47967 * (1 + rho 47966) = rho 47964 + rho 47965 := by
    linear_combination r3577
  have ha5 : rho 47968 * (1 - rho 47966) = rho 47963 - rho 47964 - rho 47965 := by
    linear_combination r3578
  have haddx :
      rho 47967 * (1 + 3021 * (rho 47962 * seg52In1AccX19 rho) * (rho 47961 * seg52In1AccY19 rho)) =
        rho 47962 * seg52In1AccX19 rho + rho 47961 * seg52In1AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47968 * (1 - 3021 * (rho 47962 * seg52In1AccX19 rho) * (rho 47961 * seg52In1AccY19 rho)) =
        (-1) * (rho 47962 * seg52In1AccX19 rho) - rho 47961 * seg52In1AccY19 rho +
          (seg52In1AccY19 rho - seg52In1AccX19 rho * (-1)) * (rho 47961 + rho 47962) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47968 * (1 - rho 47966) = rho 47963 - rho 47964 - rho 47965 := ha5
      _ = (-1) * rho 47964 - rho 47965 + (seg52In1AccY19 rho - seg52In1AccX19 rho * (-1)) *
          (rho 47961 + rho 47962) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX20 rho = seg52In1AccX19 rho - Bool.toZMod bit * (seg52In1AccX19 rho - rho 47967) := by
    have hd : rho 47969 = Bool.toZMod bit * (rho 47967 - seg52In1AccX19 rho) := by
      rw [← hbit]
      unfold seg52In1AccX19
      linear_combination -r3579
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY20 rho = seg52In1AccY19 rho - Bool.toZMod bit * (seg52In1AccY19 rho - rho 47968) := by
    have hd : rho 47970 = Bool.toZMod bit * (rho 47968 - seg52In1AccY19 rho) := by
      rw [← hbit]
      unfold seg52In1AccY19
      linear_combination -r3580
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47961 * rho 47962 = rho 47971 := by linear_combination r3581
  have hd1 : rho 47961 * rho 47961 = rho 47972 := by linear_combination r3582
  have hd2 : rho 47962 * rho 47962 = rho 47973 := by linear_combination r3583
  have hd3 : rho 47974 * (rho 47962 * rho 47962 + rho 47961 * rho 47961 * (-1)) =
      2 * (rho 47961 * rho 47962) := by
    rw [hd0, hd1, hd2]
    linear_combination r3584
  have hd4 : rho 47975 * (2 - (rho 47962 * rho 47962 + rho 47961 * rho 47961 * (-1))) =
      rho 47962 * rho 47962 - rho 47961 * rho 47961 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3585
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX19 rho, seg52In1AccY19 rho⟩ ⟨rho 47961, rho 47962⟩
    ⟨rho 47967, rho 47968⟩ ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47974, rho 47975⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3586 rho ∧ Seg52.relationRow3587 rho ∧ Seg52.relationRow3588 rho ∧ Seg52.relationRow3589 rho ∧ Seg52.relationRow3590 rho ∧ Seg52.relationRow3591 rho ∧ Seg52.relationRow3592 rho ∧ Seg52.relationRow3593 rho ∧ Seg52.relationRow3594 rho ∧ Seg52.relationRow3595 rho ∧ Seg52.relationRow3596 rho ∧ Seg52.relationRow3597 rho ∧ Seg52.relationRow3598 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, _⟩

  exact ⟨r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598⟩

theorem seg52In1_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47614 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47974, rho 47975⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47974, rho 47975⟩
        ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47987, rho 47988⟩ := by
  obtain ⟨r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598⟩ := seg52In1_rows20 rho h
  unfold Seg52.relationRow3586 at r3586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3586

  unfold Seg52.relationRow3587 at r3587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3587

  unfold Seg52.relationRow3588 at r3588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3588

  unfold Seg52.relationRow3589 at r3589

  unfold Seg52.relationRow3590 at r3590

  unfold Seg52.relationRow3591 at r3591

  unfold Seg52.relationRow3592 at r3592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3592

  unfold Seg52.relationRow3593 at r3593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3593

  unfold Seg52.relationRow3594 at r3594

  unfold Seg52.relationRow3595 at r3595

  unfold Seg52.relationRow3596 at r3596

  unfold Seg52.relationRow3597 at r3597

  unfold Seg52.relationRow3598 at r3598

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX21 rho = seg52In1AccX20 rho + rho 47982 := by
    unfold seg52In1AccX21 seg52In1AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 20]

    ring

  have hnexty : seg52In1AccY21 rho = seg52In1AccY20 rho + rho 47983 := by
    unfold seg52In1AccY21 seg52In1AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 20]

    ring

  have ha0 : (rho 47974 + rho 47975) * (seg52In1AccX20 rho + seg52In1AccY20 rho) = rho 47976 := by
    unfold seg52In1AccX20 seg52In1AccY20
    linear_combination r3586
  have ha1 : rho 47975 * seg52In1AccX20 rho = rho 47977 := by
    unfold seg52In1AccX20
    linear_combination r3587
  have ha2 : rho 47974 * seg52In1AccY20 rho = rho 47978 := by
    unfold seg52In1AccY20
    linear_combination r3588
  have ha3 : 3021 * rho 47977 * rho 47978 = rho 47979 := by
    linear_combination r3589
  have ha4 : rho 47980 * (1 + rho 47979) = rho 47977 + rho 47978 := by
    linear_combination r3590
  have ha5 : rho 47981 * (1 - rho 47979) = rho 47976 - rho 47977 - rho 47978 := by
    linear_combination r3591
  have haddx :
      rho 47980 * (1 + 3021 * (rho 47975 * seg52In1AccX20 rho) * (rho 47974 * seg52In1AccY20 rho)) =
        rho 47975 * seg52In1AccX20 rho + rho 47974 * seg52In1AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47981 * (1 - 3021 * (rho 47975 * seg52In1AccX20 rho) * (rho 47974 * seg52In1AccY20 rho)) =
        (-1) * (rho 47975 * seg52In1AccX20 rho) - rho 47974 * seg52In1AccY20 rho +
          (seg52In1AccY20 rho - seg52In1AccX20 rho * (-1)) * (rho 47974 + rho 47975) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47981 * (1 - rho 47979) = rho 47976 - rho 47977 - rho 47978 := ha5
      _ = (-1) * rho 47977 - rho 47978 + (seg52In1AccY20 rho - seg52In1AccX20 rho * (-1)) *
          (rho 47974 + rho 47975) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX21 rho = seg52In1AccX20 rho - Bool.toZMod bit * (seg52In1AccX20 rho - rho 47980) := by
    have hd : rho 47982 = Bool.toZMod bit * (rho 47980 - seg52In1AccX20 rho) := by
      rw [← hbit]
      unfold seg52In1AccX20
      linear_combination -r3592
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY21 rho = seg52In1AccY20 rho - Bool.toZMod bit * (seg52In1AccY20 rho - rho 47981) := by
    have hd : rho 47983 = Bool.toZMod bit * (rho 47981 - seg52In1AccY20 rho) := by
      rw [← hbit]
      unfold seg52In1AccY20
      linear_combination -r3593
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47974 * rho 47975 = rho 47984 := by linear_combination r3594
  have hd1 : rho 47974 * rho 47974 = rho 47985 := by linear_combination r3595
  have hd2 : rho 47975 * rho 47975 = rho 47986 := by linear_combination r3596
  have hd3 : rho 47987 * (rho 47975 * rho 47975 + rho 47974 * rho 47974 * (-1)) =
      2 * (rho 47974 * rho 47975) := by
    rw [hd0, hd1, hd2]
    linear_combination r3597
  have hd4 : rho 47988 * (2 - (rho 47975 * rho 47975 + rho 47974 * rho 47974 * (-1))) =
      rho 47975 * rho 47975 - rho 47974 * rho 47974 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3598
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX20 rho, seg52In1AccY20 rho⟩ ⟨rho 47974, rho 47975⟩
    ⟨rho 47980, rho 47981⟩ ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47987, rho 47988⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3599 rho ∧ Seg52.relationRow3600 rho ∧ Seg52.relationRow3601 rho ∧ Seg52.relationRow3602 rho ∧ Seg52.relationRow3603 rho ∧ Seg52.relationRow3604 rho ∧ Seg52.relationRow3605 rho ∧ Seg52.relationRow3606 rho ∧ Seg52.relationRow3607 rho ∧ Seg52.relationRow3608 rho ∧ Seg52.relationRow3609 rho ∧ Seg52.relationRow3610 rho ∧ Seg52.relationRow3611 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p44, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart44 at p44

  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3599⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611⟩

theorem seg52In1_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47615 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47987, rho 47988⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47987, rho 47988⟩
        ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 48000, rho 48001⟩ := by
  obtain ⟨r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611⟩ := seg52In1_rows21 rho h
  unfold Seg52.relationRow3599 at r3599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3599

  unfold Seg52.relationRow3600 at r3600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3600

  unfold Seg52.relationRow3601 at r3601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3601

  unfold Seg52.relationRow3602 at r3602

  unfold Seg52.relationRow3603 at r3603

  unfold Seg52.relationRow3604 at r3604

  unfold Seg52.relationRow3605 at r3605

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3605

  unfold Seg52.relationRow3606 at r3606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3606

  unfold Seg52.relationRow3607 at r3607

  unfold Seg52.relationRow3608 at r3608

  unfold Seg52.relationRow3609 at r3609

  unfold Seg52.relationRow3610 at r3610

  unfold Seg52.relationRow3611 at r3611

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX22 rho = seg52In1AccX21 rho + rho 47995 := by
    unfold seg52In1AccX22 seg52In1AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 21]

    ring

  have hnexty : seg52In1AccY22 rho = seg52In1AccY21 rho + rho 47996 := by
    unfold seg52In1AccY22 seg52In1AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 21]

    ring

  have ha0 : (rho 47987 + rho 47988) * (seg52In1AccX21 rho + seg52In1AccY21 rho) = rho 47989 := by
    unfold seg52In1AccX21 seg52In1AccY21
    linear_combination r3599
  have ha1 : rho 47988 * seg52In1AccX21 rho = rho 47990 := by
    unfold seg52In1AccX21
    linear_combination r3600
  have ha2 : rho 47987 * seg52In1AccY21 rho = rho 47991 := by
    unfold seg52In1AccY21
    linear_combination r3601
  have ha3 : 3021 * rho 47990 * rho 47991 = rho 47992 := by
    linear_combination r3602
  have ha4 : rho 47993 * (1 + rho 47992) = rho 47990 + rho 47991 := by
    linear_combination r3603
  have ha5 : rho 47994 * (1 - rho 47992) = rho 47989 - rho 47990 - rho 47991 := by
    linear_combination r3604
  have haddx :
      rho 47993 * (1 + 3021 * (rho 47988 * seg52In1AccX21 rho) * (rho 47987 * seg52In1AccY21 rho)) =
        rho 47988 * seg52In1AccX21 rho + rho 47987 * seg52In1AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47994 * (1 - 3021 * (rho 47988 * seg52In1AccX21 rho) * (rho 47987 * seg52In1AccY21 rho)) =
        (-1) * (rho 47988 * seg52In1AccX21 rho) - rho 47987 * seg52In1AccY21 rho +
          (seg52In1AccY21 rho - seg52In1AccX21 rho * (-1)) * (rho 47987 + rho 47988) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47994 * (1 - rho 47992) = rho 47989 - rho 47990 - rho 47991 := ha5
      _ = (-1) * rho 47990 - rho 47991 + (seg52In1AccY21 rho - seg52In1AccX21 rho * (-1)) *
          (rho 47987 + rho 47988) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX22 rho = seg52In1AccX21 rho - Bool.toZMod bit * (seg52In1AccX21 rho - rho 47993) := by
    have hd : rho 47995 = Bool.toZMod bit * (rho 47993 - seg52In1AccX21 rho) := by
      rw [← hbit]
      unfold seg52In1AccX21
      linear_combination -r3605
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY22 rho = seg52In1AccY21 rho - Bool.toZMod bit * (seg52In1AccY21 rho - rho 47994) := by
    have hd : rho 47996 = Bool.toZMod bit * (rho 47994 - seg52In1AccY21 rho) := by
      rw [← hbit]
      unfold seg52In1AccY21
      linear_combination -r3606
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47987 * rho 47988 = rho 47997 := by linear_combination r3607
  have hd1 : rho 47987 * rho 47987 = rho 47998 := by linear_combination r3608
  have hd2 : rho 47988 * rho 47988 = rho 47999 := by linear_combination r3609
  have hd3 : rho 48000 * (rho 47988 * rho 47988 + rho 47987 * rho 47987 * (-1)) =
      2 * (rho 47987 * rho 47988) := by
    rw [hd0, hd1, hd2]
    linear_combination r3610
  have hd4 : rho 48001 * (2 - (rho 47988 * rho 47988 + rho 47987 * rho 47987 * (-1))) =
      rho 47988 * rho 47988 - rho 47987 * rho 47987 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3611
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX21 rho, seg52In1AccY21 rho⟩ ⟨rho 47987, rho 47988⟩
    ⟨rho 47993, rho 47994⟩ ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 48000, rho 48001⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg52In1_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg52In1_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg52In1_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg52In1_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg52In1_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg52In1_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg52In1_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg52In1_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg52In1_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg52In1_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
