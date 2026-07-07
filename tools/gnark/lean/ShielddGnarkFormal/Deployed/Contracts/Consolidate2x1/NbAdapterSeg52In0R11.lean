import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2472 rho ∧ Seg52.relationRow2473 rho ∧ Seg52.relationRow2474 rho ∧ Seg52.relationRow2475 rho ∧ Seg52.relationRow2476 rho ∧ Seg52.relationRow2477 rho ∧ Seg52.relationRow2478 rho ∧ Seg52.relationRow2479 rho ∧ Seg52.relationRow2480 rho ∧ Seg52.relationRow2481 rho ∧ Seg52.relationRow2482 rho ∧ Seg52.relationRow2483 rho ∧ Seg52.relationRow2484 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p30, p31, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨r2480, r2481, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479, r2480, r2481, r2482, r2483, r2484⟩

theorem seg52In0_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45289 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46861, rho 46862⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 46861, rho 46862⟩
        ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 46874, rho 46875⟩ := by
  obtain ⟨r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479, r2480, r2481, r2482, r2483, r2484⟩ := seg52In0_rows121 rho h
  unfold Seg52.relationRow2472 at r2472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2472

  unfold Seg52.relationRow2473 at r2473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2473

  unfold Seg52.relationRow2474 at r2474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2474

  unfold Seg52.relationRow2475 at r2475

  unfold Seg52.relationRow2476 at r2476

  unfold Seg52.relationRow2477 at r2477

  unfold Seg52.relationRow2478 at r2478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2478

  unfold Seg52.relationRow2479 at r2479

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2479

  unfold Seg52.relationRow2480 at r2480

  unfold Seg52.relationRow2481 at r2481

  unfold Seg52.relationRow2482 at r2482

  unfold Seg52.relationRow2483 at r2483

  unfold Seg52.relationRow2484 at r2484

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX122 rho = seg52In0AccX121 rho + rho 46869 := by
    unfold seg52In0AccX122 seg52In0AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 121]

    ring

  have hnexty : seg52In0AccY122 rho = seg52In0AccY121 rho + rho 46870 := by
    unfold seg52In0AccY122 seg52In0AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 121]

    ring

  have ha0 : (rho 46861 + rho 46862) * (seg52In0AccX121 rho + seg52In0AccY121 rho) = rho 46863 := by
    unfold seg52In0AccX121 seg52In0AccY121
    linear_combination r2472
  have ha1 : rho 46862 * seg52In0AccX121 rho = rho 46864 := by
    unfold seg52In0AccX121
    linear_combination r2473
  have ha2 : rho 46861 * seg52In0AccY121 rho = rho 46865 := by
    unfold seg52In0AccY121
    linear_combination r2474
  have ha3 : 3021 * rho 46864 * rho 46865 = rho 46866 := by
    linear_combination r2475
  have ha4 : rho 46867 * (1 + rho 46866) = rho 46864 + rho 46865 := by
    linear_combination r2476
  have ha5 : rho 46868 * (1 - rho 46866) = rho 46863 - rho 46864 - rho 46865 := by
    linear_combination r2477
  have haddx :
      rho 46867 * (1 + 3021 * (rho 46862 * seg52In0AccX121 rho) * (rho 46861 * seg52In0AccY121 rho)) =
        rho 46862 * seg52In0AccX121 rho + rho 46861 * seg52In0AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46868 * (1 - 3021 * (rho 46862 * seg52In0AccX121 rho) * (rho 46861 * seg52In0AccY121 rho)) =
        (-1) * (rho 46862 * seg52In0AccX121 rho) - rho 46861 * seg52In0AccY121 rho +
          (seg52In0AccY121 rho - seg52In0AccX121 rho * (-1)) * (rho 46861 + rho 46862) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46868 * (1 - rho 46866) = rho 46863 - rho 46864 - rho 46865 := ha5
      _ = (-1) * rho 46864 - rho 46865 + (seg52In0AccY121 rho - seg52In0AccX121 rho * (-1)) *
          (rho 46861 + rho 46862) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX122 rho = seg52In0AccX121 rho - Bool.toZMod bit * (seg52In0AccX121 rho - rho 46867) := by
    have hd : rho 46869 = Bool.toZMod bit * (rho 46867 - seg52In0AccX121 rho) := by
      rw [← hbit]
      unfold seg52In0AccX121
      linear_combination -r2478
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY122 rho = seg52In0AccY121 rho - Bool.toZMod bit * (seg52In0AccY121 rho - rho 46868) := by
    have hd : rho 46870 = Bool.toZMod bit * (rho 46868 - seg52In0AccY121 rho) := by
      rw [← hbit]
      unfold seg52In0AccY121
      linear_combination -r2479
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46861 * rho 46862 = rho 46871 := by linear_combination r2480
  have hd1 : rho 46861 * rho 46861 = rho 46872 := by linear_combination r2481
  have hd2 : rho 46862 * rho 46862 = rho 46873 := by linear_combination r2482
  have hd3 : rho 46874 * (rho 46862 * rho 46862 + rho 46861 * rho 46861 * (-1)) =
      2 * (rho 46861 * rho 46862) := by
    rw [hd0, hd1, hd2]
    linear_combination r2483
  have hd4 : rho 46875 * (2 - (rho 46862 * rho 46862 + rho 46861 * rho 46861 * (-1))) =
      rho 46862 * rho 46862 - rho 46861 * rho 46861 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2484
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 46861, rho 46862⟩
    ⟨rho 46867, rho 46868⟩ ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 46874, rho 46875⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2485 rho ∧ Seg52.relationRow2486 rho ∧ Seg52.relationRow2487 rho ∧ Seg52.relationRow2488 rho ∧ Seg52.relationRow2489 rho ∧ Seg52.relationRow2490 rho ∧ Seg52.relationRow2491 rho ∧ Seg52.relationRow2492 rho ∧ Seg52.relationRow2493 rho ∧ Seg52.relationRow2494 rho ∧ Seg52.relationRow2495 rho ∧ Seg52.relationRow2496 rho ∧ Seg52.relationRow2497 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p31, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497⟩

theorem seg52In0_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45290 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46874, rho 46875⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 46874, rho 46875⟩
        ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 46887, rho 46888⟩ := by
  obtain ⟨r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497⟩ := seg52In0_rows122 rho h
  unfold Seg52.relationRow2485 at r2485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2485

  unfold Seg52.relationRow2486 at r2486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2486

  unfold Seg52.relationRow2487 at r2487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2487

  unfold Seg52.relationRow2488 at r2488

  unfold Seg52.relationRow2489 at r2489

  unfold Seg52.relationRow2490 at r2490

  unfold Seg52.relationRow2491 at r2491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2491

  unfold Seg52.relationRow2492 at r2492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2492

  unfold Seg52.relationRow2493 at r2493

  unfold Seg52.relationRow2494 at r2494

  unfold Seg52.relationRow2495 at r2495

  unfold Seg52.relationRow2496 at r2496

  unfold Seg52.relationRow2497 at r2497

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX123 rho = seg52In0AccX122 rho + rho 46882 := by
    unfold seg52In0AccX123 seg52In0AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 122]

    ring

  have hnexty : seg52In0AccY123 rho = seg52In0AccY122 rho + rho 46883 := by
    unfold seg52In0AccY123 seg52In0AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 122]

    ring

  have ha0 : (rho 46874 + rho 46875) * (seg52In0AccX122 rho + seg52In0AccY122 rho) = rho 46876 := by
    unfold seg52In0AccX122 seg52In0AccY122
    linear_combination r2485
  have ha1 : rho 46875 * seg52In0AccX122 rho = rho 46877 := by
    unfold seg52In0AccX122
    linear_combination r2486
  have ha2 : rho 46874 * seg52In0AccY122 rho = rho 46878 := by
    unfold seg52In0AccY122
    linear_combination r2487
  have ha3 : 3021 * rho 46877 * rho 46878 = rho 46879 := by
    linear_combination r2488
  have ha4 : rho 46880 * (1 + rho 46879) = rho 46877 + rho 46878 := by
    linear_combination r2489
  have ha5 : rho 46881 * (1 - rho 46879) = rho 46876 - rho 46877 - rho 46878 := by
    linear_combination r2490
  have haddx :
      rho 46880 * (1 + 3021 * (rho 46875 * seg52In0AccX122 rho) * (rho 46874 * seg52In0AccY122 rho)) =
        rho 46875 * seg52In0AccX122 rho + rho 46874 * seg52In0AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46881 * (1 - 3021 * (rho 46875 * seg52In0AccX122 rho) * (rho 46874 * seg52In0AccY122 rho)) =
        (-1) * (rho 46875 * seg52In0AccX122 rho) - rho 46874 * seg52In0AccY122 rho +
          (seg52In0AccY122 rho - seg52In0AccX122 rho * (-1)) * (rho 46874 + rho 46875) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46881 * (1 - rho 46879) = rho 46876 - rho 46877 - rho 46878 := ha5
      _ = (-1) * rho 46877 - rho 46878 + (seg52In0AccY122 rho - seg52In0AccX122 rho * (-1)) *
          (rho 46874 + rho 46875) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX123 rho = seg52In0AccX122 rho - Bool.toZMod bit * (seg52In0AccX122 rho - rho 46880) := by
    have hd : rho 46882 = Bool.toZMod bit * (rho 46880 - seg52In0AccX122 rho) := by
      rw [← hbit]
      unfold seg52In0AccX122
      linear_combination -r2491
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY123 rho = seg52In0AccY122 rho - Bool.toZMod bit * (seg52In0AccY122 rho - rho 46881) := by
    have hd : rho 46883 = Bool.toZMod bit * (rho 46881 - seg52In0AccY122 rho) := by
      rw [← hbit]
      unfold seg52In0AccY122
      linear_combination -r2492
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46874 * rho 46875 = rho 46884 := by linear_combination r2493
  have hd1 : rho 46874 * rho 46874 = rho 46885 := by linear_combination r2494
  have hd2 : rho 46875 * rho 46875 = rho 46886 := by linear_combination r2495
  have hd3 : rho 46887 * (rho 46875 * rho 46875 + rho 46874 * rho 46874 * (-1)) =
      2 * (rho 46874 * rho 46875) := by
    rw [hd0, hd1, hd2]
    linear_combination r2496
  have hd4 : rho 46888 * (2 - (rho 46875 * rho 46875 + rho 46874 * rho 46874 * (-1))) =
      rho 46875 * rho 46875 - rho 46874 * rho 46874 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2497
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX122 rho, seg52In0AccY122 rho⟩ ⟨rho 46874, rho 46875⟩
    ⟨rho 46880, rho 46881⟩ ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 46887, rho 46888⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2498 rho ∧ Seg52.relationRow2499 rho ∧ Seg52.relationRow2500 rho ∧ Seg52.relationRow2501 rho ∧ Seg52.relationRow2502 rho ∧ Seg52.relationRow2503 rho ∧ Seg52.relationRow2504 rho ∧ Seg52.relationRow2505 rho ∧ Seg52.relationRow2506 rho ∧ Seg52.relationRow2507 rho ∧ Seg52.relationRow2508 rho ∧ Seg52.relationRow2509 rho ∧ Seg52.relationRow2510 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p31, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510⟩

theorem seg52In0_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45291 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46887, rho 46888⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 46887, rho 46888⟩
        ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 46900, rho 46901⟩ := by
  obtain ⟨r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510⟩ := seg52In0_rows123 rho h
  unfold Seg52.relationRow2498 at r2498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2498

  unfold Seg52.relationRow2499 at r2499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2499

  unfold Seg52.relationRow2500 at r2500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2500

  unfold Seg52.relationRow2501 at r2501

  unfold Seg52.relationRow2502 at r2502

  unfold Seg52.relationRow2503 at r2503

  unfold Seg52.relationRow2504 at r2504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2504

  unfold Seg52.relationRow2505 at r2505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2505

  unfold Seg52.relationRow2506 at r2506

  unfold Seg52.relationRow2507 at r2507

  unfold Seg52.relationRow2508 at r2508

  unfold Seg52.relationRow2509 at r2509

  unfold Seg52.relationRow2510 at r2510

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX124 rho = seg52In0AccX123 rho + rho 46895 := by
    unfold seg52In0AccX124 seg52In0AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 123]

    ring

  have hnexty : seg52In0AccY124 rho = seg52In0AccY123 rho + rho 46896 := by
    unfold seg52In0AccY124 seg52In0AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 123]

    ring

  have ha0 : (rho 46887 + rho 46888) * (seg52In0AccX123 rho + seg52In0AccY123 rho) = rho 46889 := by
    unfold seg52In0AccX123 seg52In0AccY123
    linear_combination r2498
  have ha1 : rho 46888 * seg52In0AccX123 rho = rho 46890 := by
    unfold seg52In0AccX123
    linear_combination r2499
  have ha2 : rho 46887 * seg52In0AccY123 rho = rho 46891 := by
    unfold seg52In0AccY123
    linear_combination r2500
  have ha3 : 3021 * rho 46890 * rho 46891 = rho 46892 := by
    linear_combination r2501
  have ha4 : rho 46893 * (1 + rho 46892) = rho 46890 + rho 46891 := by
    linear_combination r2502
  have ha5 : rho 46894 * (1 - rho 46892) = rho 46889 - rho 46890 - rho 46891 := by
    linear_combination r2503
  have haddx :
      rho 46893 * (1 + 3021 * (rho 46888 * seg52In0AccX123 rho) * (rho 46887 * seg52In0AccY123 rho)) =
        rho 46888 * seg52In0AccX123 rho + rho 46887 * seg52In0AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46894 * (1 - 3021 * (rho 46888 * seg52In0AccX123 rho) * (rho 46887 * seg52In0AccY123 rho)) =
        (-1) * (rho 46888 * seg52In0AccX123 rho) - rho 46887 * seg52In0AccY123 rho +
          (seg52In0AccY123 rho - seg52In0AccX123 rho * (-1)) * (rho 46887 + rho 46888) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46894 * (1 - rho 46892) = rho 46889 - rho 46890 - rho 46891 := ha5
      _ = (-1) * rho 46890 - rho 46891 + (seg52In0AccY123 rho - seg52In0AccX123 rho * (-1)) *
          (rho 46887 + rho 46888) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX124 rho = seg52In0AccX123 rho - Bool.toZMod bit * (seg52In0AccX123 rho - rho 46893) := by
    have hd : rho 46895 = Bool.toZMod bit * (rho 46893 - seg52In0AccX123 rho) := by
      rw [← hbit]
      unfold seg52In0AccX123
      linear_combination -r2504
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY124 rho = seg52In0AccY123 rho - Bool.toZMod bit * (seg52In0AccY123 rho - rho 46894) := by
    have hd : rho 46896 = Bool.toZMod bit * (rho 46894 - seg52In0AccY123 rho) := by
      rw [← hbit]
      unfold seg52In0AccY123
      linear_combination -r2505
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46887 * rho 46888 = rho 46897 := by linear_combination r2506
  have hd1 : rho 46887 * rho 46887 = rho 46898 := by linear_combination r2507
  have hd2 : rho 46888 * rho 46888 = rho 46899 := by linear_combination r2508
  have hd3 : rho 46900 * (rho 46888 * rho 46888 + rho 46887 * rho 46887 * (-1)) =
      2 * (rho 46887 * rho 46888) := by
    rw [hd0, hd1, hd2]
    linear_combination r2509
  have hd4 : rho 46901 * (2 - (rho 46888 * rho 46888 + rho 46887 * rho 46887 * (-1))) =
      rho 46888 * rho 46888 - rho 46887 * rho 46887 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2510
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX123 rho, seg52In0AccY123 rho⟩ ⟨rho 46887, rho 46888⟩
    ⟨rho 46893, rho 46894⟩ ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 46900, rho 46901⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2511 rho ∧ Seg52.relationRow2512 rho ∧ Seg52.relationRow2513 rho ∧ Seg52.relationRow2514 rho ∧ Seg52.relationRow2515 rho ∧ Seg52.relationRow2516 rho ∧ Seg52.relationRow2517 rho ∧ Seg52.relationRow2518 rho ∧ Seg52.relationRow2519 rho ∧ Seg52.relationRow2520 rho ∧ Seg52.relationRow2521 rho ∧ Seg52.relationRow2522 rho ∧ Seg52.relationRow2523 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p31, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523⟩

theorem seg52In0_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45292 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46900, rho 46901⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 46900, rho 46901⟩
        ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 46913, rho 46914⟩ := by
  obtain ⟨r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523⟩ := seg52In0_rows124 rho h
  unfold Seg52.relationRow2511 at r2511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2511

  unfold Seg52.relationRow2512 at r2512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2512

  unfold Seg52.relationRow2513 at r2513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2513

  unfold Seg52.relationRow2514 at r2514

  unfold Seg52.relationRow2515 at r2515

  unfold Seg52.relationRow2516 at r2516

  unfold Seg52.relationRow2517 at r2517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2517

  unfold Seg52.relationRow2518 at r2518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2518

  unfold Seg52.relationRow2519 at r2519

  unfold Seg52.relationRow2520 at r2520

  unfold Seg52.relationRow2521 at r2521

  unfold Seg52.relationRow2522 at r2522

  unfold Seg52.relationRow2523 at r2523

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX125 rho = seg52In0AccX124 rho + rho 46908 := by
    unfold seg52In0AccX125 seg52In0AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 124]

    ring

  have hnexty : seg52In0AccY125 rho = seg52In0AccY124 rho + rho 46909 := by
    unfold seg52In0AccY125 seg52In0AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 124]

    ring

  have ha0 : (rho 46900 + rho 46901) * (seg52In0AccX124 rho + seg52In0AccY124 rho) = rho 46902 := by
    unfold seg52In0AccX124 seg52In0AccY124
    linear_combination r2511
  have ha1 : rho 46901 * seg52In0AccX124 rho = rho 46903 := by
    unfold seg52In0AccX124
    linear_combination r2512
  have ha2 : rho 46900 * seg52In0AccY124 rho = rho 46904 := by
    unfold seg52In0AccY124
    linear_combination r2513
  have ha3 : 3021 * rho 46903 * rho 46904 = rho 46905 := by
    linear_combination r2514
  have ha4 : rho 46906 * (1 + rho 46905) = rho 46903 + rho 46904 := by
    linear_combination r2515
  have ha5 : rho 46907 * (1 - rho 46905) = rho 46902 - rho 46903 - rho 46904 := by
    linear_combination r2516
  have haddx :
      rho 46906 * (1 + 3021 * (rho 46901 * seg52In0AccX124 rho) * (rho 46900 * seg52In0AccY124 rho)) =
        rho 46901 * seg52In0AccX124 rho + rho 46900 * seg52In0AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46907 * (1 - 3021 * (rho 46901 * seg52In0AccX124 rho) * (rho 46900 * seg52In0AccY124 rho)) =
        (-1) * (rho 46901 * seg52In0AccX124 rho) - rho 46900 * seg52In0AccY124 rho +
          (seg52In0AccY124 rho - seg52In0AccX124 rho * (-1)) * (rho 46900 + rho 46901) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46907 * (1 - rho 46905) = rho 46902 - rho 46903 - rho 46904 := ha5
      _ = (-1) * rho 46903 - rho 46904 + (seg52In0AccY124 rho - seg52In0AccX124 rho * (-1)) *
          (rho 46900 + rho 46901) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX125 rho = seg52In0AccX124 rho - Bool.toZMod bit * (seg52In0AccX124 rho - rho 46906) := by
    have hd : rho 46908 = Bool.toZMod bit * (rho 46906 - seg52In0AccX124 rho) := by
      rw [← hbit]
      unfold seg52In0AccX124
      linear_combination -r2517
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY125 rho = seg52In0AccY124 rho - Bool.toZMod bit * (seg52In0AccY124 rho - rho 46907) := by
    have hd : rho 46909 = Bool.toZMod bit * (rho 46907 - seg52In0AccY124 rho) := by
      rw [← hbit]
      unfold seg52In0AccY124
      linear_combination -r2518
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46900 * rho 46901 = rho 46910 := by linear_combination r2519
  have hd1 : rho 46900 * rho 46900 = rho 46911 := by linear_combination r2520
  have hd2 : rho 46901 * rho 46901 = rho 46912 := by linear_combination r2521
  have hd3 : rho 46913 * (rho 46901 * rho 46901 + rho 46900 * rho 46900 * (-1)) =
      2 * (rho 46900 * rho 46901) := by
    rw [hd0, hd1, hd2]
    linear_combination r2522
  have hd4 : rho 46914 * (2 - (rho 46901 * rho 46901 + rho 46900 * rho 46900 * (-1))) =
      rho 46901 * rho 46901 - rho 46900 * rho 46900 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2523
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX124 rho, seg52In0AccY124 rho⟩ ⟨rho 46900, rho 46901⟩
    ⟨rho 46906, rho 46907⟩ ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 46913, rho 46914⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2524 rho ∧ Seg52.relationRow2525 rho ∧ Seg52.relationRow2526 rho ∧ Seg52.relationRow2527 rho ∧ Seg52.relationRow2528 rho ∧ Seg52.relationRow2529 rho ∧ Seg52.relationRow2530 rho ∧ Seg52.relationRow2531 rho ∧ Seg52.relationRow2532 rho ∧ Seg52.relationRow2533 rho ∧ Seg52.relationRow2534 rho ∧ Seg52.relationRow2535 rho ∧ Seg52.relationRow2536 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p31, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536⟩

theorem seg52In0_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45293 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46913, rho 46914⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 46913, rho 46914⟩
        ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 46926, rho 46927⟩ := by
  obtain ⟨r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536⟩ := seg52In0_rows125 rho h
  unfold Seg52.relationRow2524 at r2524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2524

  unfold Seg52.relationRow2525 at r2525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2525

  unfold Seg52.relationRow2526 at r2526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2526

  unfold Seg52.relationRow2527 at r2527

  unfold Seg52.relationRow2528 at r2528

  unfold Seg52.relationRow2529 at r2529

  unfold Seg52.relationRow2530 at r2530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2530

  unfold Seg52.relationRow2531 at r2531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2531

  unfold Seg52.relationRow2532 at r2532

  unfold Seg52.relationRow2533 at r2533

  unfold Seg52.relationRow2534 at r2534

  unfold Seg52.relationRow2535 at r2535

  unfold Seg52.relationRow2536 at r2536

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX126 rho = seg52In0AccX125 rho + rho 46921 := by
    unfold seg52In0AccX126 seg52In0AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 125]

    ring

  have hnexty : seg52In0AccY126 rho = seg52In0AccY125 rho + rho 46922 := by
    unfold seg52In0AccY126 seg52In0AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 125]

    ring

  have ha0 : (rho 46913 + rho 46914) * (seg52In0AccX125 rho + seg52In0AccY125 rho) = rho 46915 := by
    unfold seg52In0AccX125 seg52In0AccY125
    linear_combination r2524
  have ha1 : rho 46914 * seg52In0AccX125 rho = rho 46916 := by
    unfold seg52In0AccX125
    linear_combination r2525
  have ha2 : rho 46913 * seg52In0AccY125 rho = rho 46917 := by
    unfold seg52In0AccY125
    linear_combination r2526
  have ha3 : 3021 * rho 46916 * rho 46917 = rho 46918 := by
    linear_combination r2527
  have ha4 : rho 46919 * (1 + rho 46918) = rho 46916 + rho 46917 := by
    linear_combination r2528
  have ha5 : rho 46920 * (1 - rho 46918) = rho 46915 - rho 46916 - rho 46917 := by
    linear_combination r2529
  have haddx :
      rho 46919 * (1 + 3021 * (rho 46914 * seg52In0AccX125 rho) * (rho 46913 * seg52In0AccY125 rho)) =
        rho 46914 * seg52In0AccX125 rho + rho 46913 * seg52In0AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46920 * (1 - 3021 * (rho 46914 * seg52In0AccX125 rho) * (rho 46913 * seg52In0AccY125 rho)) =
        (-1) * (rho 46914 * seg52In0AccX125 rho) - rho 46913 * seg52In0AccY125 rho +
          (seg52In0AccY125 rho - seg52In0AccX125 rho * (-1)) * (rho 46913 + rho 46914) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46920 * (1 - rho 46918) = rho 46915 - rho 46916 - rho 46917 := ha5
      _ = (-1) * rho 46916 - rho 46917 + (seg52In0AccY125 rho - seg52In0AccX125 rho * (-1)) *
          (rho 46913 + rho 46914) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX126 rho = seg52In0AccX125 rho - Bool.toZMod bit * (seg52In0AccX125 rho - rho 46919) := by
    have hd : rho 46921 = Bool.toZMod bit * (rho 46919 - seg52In0AccX125 rho) := by
      rw [← hbit]
      unfold seg52In0AccX125
      linear_combination -r2530
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY126 rho = seg52In0AccY125 rho - Bool.toZMod bit * (seg52In0AccY125 rho - rho 46920) := by
    have hd : rho 46922 = Bool.toZMod bit * (rho 46920 - seg52In0AccY125 rho) := by
      rw [← hbit]
      unfold seg52In0AccY125
      linear_combination -r2531
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46913 * rho 46914 = rho 46923 := by linear_combination r2532
  have hd1 : rho 46913 * rho 46913 = rho 46924 := by linear_combination r2533
  have hd2 : rho 46914 * rho 46914 = rho 46925 := by linear_combination r2534
  have hd3 : rho 46926 * (rho 46914 * rho 46914 + rho 46913 * rho 46913 * (-1)) =
      2 * (rho 46913 * rho 46914) := by
    rw [hd0, hd1, hd2]
    linear_combination r2535
  have hd4 : rho 46927 * (2 - (rho 46914 * rho 46914 + rho 46913 * rho 46913 * (-1))) =
      rho 46914 * rho 46914 - rho 46913 * rho 46913 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2536
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX125 rho, seg52In0AccY125 rho⟩ ⟨rho 46913, rho 46914⟩
    ⟨rho 46919, rho 46920⟩ ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 46926, rho 46927⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2537 rho ∧ Seg52.relationRow2538 rho ∧ Seg52.relationRow2539 rho ∧ Seg52.relationRow2540 rho ∧ Seg52.relationRow2541 rho ∧ Seg52.relationRow2542 rho ∧ Seg52.relationRow2543 rho ∧ Seg52.relationRow2544 rho ∧ Seg52.relationRow2545 rho ∧ Seg52.relationRow2546 rho ∧ Seg52.relationRow2547 rho ∧ Seg52.relationRow2548 rho ∧ Seg52.relationRow2549 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p31, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549⟩

theorem seg52In0_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45294 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46926, rho 46927⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 46926, rho 46927⟩
        ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 46939, rho 46940⟩ := by
  obtain ⟨r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549⟩ := seg52In0_rows126 rho h
  unfold Seg52.relationRow2537 at r2537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2537

  unfold Seg52.relationRow2538 at r2538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2538

  unfold Seg52.relationRow2539 at r2539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2539

  unfold Seg52.relationRow2540 at r2540

  unfold Seg52.relationRow2541 at r2541

  unfold Seg52.relationRow2542 at r2542

  unfold Seg52.relationRow2543 at r2543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2543

  unfold Seg52.relationRow2544 at r2544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2544

  unfold Seg52.relationRow2545 at r2545

  unfold Seg52.relationRow2546 at r2546

  unfold Seg52.relationRow2547 at r2547

  unfold Seg52.relationRow2548 at r2548

  unfold Seg52.relationRow2549 at r2549

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX127 rho = seg52In0AccX126 rho + rho 46934 := by
    unfold seg52In0AccX127 seg52In0AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 126]

    ring

  have hnexty : seg52In0AccY127 rho = seg52In0AccY126 rho + rho 46935 := by
    unfold seg52In0AccY127 seg52In0AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 126]

    ring

  have ha0 : (rho 46926 + rho 46927) * (seg52In0AccX126 rho + seg52In0AccY126 rho) = rho 46928 := by
    unfold seg52In0AccX126 seg52In0AccY126
    linear_combination r2537
  have ha1 : rho 46927 * seg52In0AccX126 rho = rho 46929 := by
    unfold seg52In0AccX126
    linear_combination r2538
  have ha2 : rho 46926 * seg52In0AccY126 rho = rho 46930 := by
    unfold seg52In0AccY126
    linear_combination r2539
  have ha3 : 3021 * rho 46929 * rho 46930 = rho 46931 := by
    linear_combination r2540
  have ha4 : rho 46932 * (1 + rho 46931) = rho 46929 + rho 46930 := by
    linear_combination r2541
  have ha5 : rho 46933 * (1 - rho 46931) = rho 46928 - rho 46929 - rho 46930 := by
    linear_combination r2542
  have haddx :
      rho 46932 * (1 + 3021 * (rho 46927 * seg52In0AccX126 rho) * (rho 46926 * seg52In0AccY126 rho)) =
        rho 46927 * seg52In0AccX126 rho + rho 46926 * seg52In0AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46933 * (1 - 3021 * (rho 46927 * seg52In0AccX126 rho) * (rho 46926 * seg52In0AccY126 rho)) =
        (-1) * (rho 46927 * seg52In0AccX126 rho) - rho 46926 * seg52In0AccY126 rho +
          (seg52In0AccY126 rho - seg52In0AccX126 rho * (-1)) * (rho 46926 + rho 46927) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46933 * (1 - rho 46931) = rho 46928 - rho 46929 - rho 46930 := ha5
      _ = (-1) * rho 46929 - rho 46930 + (seg52In0AccY126 rho - seg52In0AccX126 rho * (-1)) *
          (rho 46926 + rho 46927) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX127 rho = seg52In0AccX126 rho - Bool.toZMod bit * (seg52In0AccX126 rho - rho 46932) := by
    have hd : rho 46934 = Bool.toZMod bit * (rho 46932 - seg52In0AccX126 rho) := by
      rw [← hbit]
      unfold seg52In0AccX126
      linear_combination -r2543
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY127 rho = seg52In0AccY126 rho - Bool.toZMod bit * (seg52In0AccY126 rho - rho 46933) := by
    have hd : rho 46935 = Bool.toZMod bit * (rho 46933 - seg52In0AccY126 rho) := by
      rw [← hbit]
      unfold seg52In0AccY126
      linear_combination -r2544
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46926 * rho 46927 = rho 46936 := by linear_combination r2545
  have hd1 : rho 46926 * rho 46926 = rho 46937 := by linear_combination r2546
  have hd2 : rho 46927 * rho 46927 = rho 46938 := by linear_combination r2547
  have hd3 : rho 46939 * (rho 46927 * rho 46927 + rho 46926 * rho 46926 * (-1)) =
      2 * (rho 46926 * rho 46927) := by
    rw [hd0, hd1, hd2]
    linear_combination r2548
  have hd4 : rho 46940 * (2 - (rho 46927 * rho 46927 + rho 46926 * rho 46926 * (-1))) =
      rho 46927 * rho 46927 - rho 46926 * rho 46926 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2549
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX126 rho, seg52In0AccY126 rho⟩ ⟨rho 46926, rho 46927⟩
    ⟨rho 46932, rho 46933⟩ ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 46939, rho 46940⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2550 rho ∧ Seg52.relationRow2551 rho ∧ Seg52.relationRow2552 rho ∧ Seg52.relationRow2553 rho ∧ Seg52.relationRow2554 rho ∧ Seg52.relationRow2555 rho ∧ Seg52.relationRow2556 rho ∧ Seg52.relationRow2557 rho ∧ Seg52.relationRow2558 rho ∧ Seg52.relationRow2559 rho ∧ Seg52.relationRow2560 rho ∧ Seg52.relationRow2561 rho ∧ Seg52.relationRow2562 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p31, p32, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨r2560, r2561, r2562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559, r2560, r2561, r2562⟩

theorem seg52In0_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45295 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46939, rho 46940⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 46939, rho 46940⟩
        ⟨seg52In0AccX128 rho, seg52In0AccY128 rho⟩ ⟨rho 46952, rho 46953⟩ := by
  obtain ⟨r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559, r2560, r2561, r2562⟩ := seg52In0_rows127 rho h
  unfold Seg52.relationRow2550 at r2550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2550

  unfold Seg52.relationRow2551 at r2551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2551

  unfold Seg52.relationRow2552 at r2552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2552

  unfold Seg52.relationRow2553 at r2553

  unfold Seg52.relationRow2554 at r2554

  unfold Seg52.relationRow2555 at r2555

  unfold Seg52.relationRow2556 at r2556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2556

  unfold Seg52.relationRow2557 at r2557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2557

  unfold Seg52.relationRow2558 at r2558

  unfold Seg52.relationRow2559 at r2559

  unfold Seg52.relationRow2560 at r2560

  unfold Seg52.relationRow2561 at r2561

  unfold Seg52.relationRow2562 at r2562

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX128 rho = seg52In0AccX127 rho + rho 46947 := by
    unfold seg52In0AccX128 seg52In0AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 127]

    ring

  have hnexty : seg52In0AccY128 rho = seg52In0AccY127 rho + rho 46948 := by
    unfold seg52In0AccY128 seg52In0AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 127]

    ring

  have ha0 : (rho 46939 + rho 46940) * (seg52In0AccX127 rho + seg52In0AccY127 rho) = rho 46941 := by
    unfold seg52In0AccX127 seg52In0AccY127
    linear_combination r2550
  have ha1 : rho 46940 * seg52In0AccX127 rho = rho 46942 := by
    unfold seg52In0AccX127
    linear_combination r2551
  have ha2 : rho 46939 * seg52In0AccY127 rho = rho 46943 := by
    unfold seg52In0AccY127
    linear_combination r2552
  have ha3 : 3021 * rho 46942 * rho 46943 = rho 46944 := by
    linear_combination r2553
  have ha4 : rho 46945 * (1 + rho 46944) = rho 46942 + rho 46943 := by
    linear_combination r2554
  have ha5 : rho 46946 * (1 - rho 46944) = rho 46941 - rho 46942 - rho 46943 := by
    linear_combination r2555
  have haddx :
      rho 46945 * (1 + 3021 * (rho 46940 * seg52In0AccX127 rho) * (rho 46939 * seg52In0AccY127 rho)) =
        rho 46940 * seg52In0AccX127 rho + rho 46939 * seg52In0AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46946 * (1 - 3021 * (rho 46940 * seg52In0AccX127 rho) * (rho 46939 * seg52In0AccY127 rho)) =
        (-1) * (rho 46940 * seg52In0AccX127 rho) - rho 46939 * seg52In0AccY127 rho +
          (seg52In0AccY127 rho - seg52In0AccX127 rho * (-1)) * (rho 46939 + rho 46940) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46946 * (1 - rho 46944) = rho 46941 - rho 46942 - rho 46943 := ha5
      _ = (-1) * rho 46942 - rho 46943 + (seg52In0AccY127 rho - seg52In0AccX127 rho * (-1)) *
          (rho 46939 + rho 46940) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX128 rho = seg52In0AccX127 rho - Bool.toZMod bit * (seg52In0AccX127 rho - rho 46945) := by
    have hd : rho 46947 = Bool.toZMod bit * (rho 46945 - seg52In0AccX127 rho) := by
      rw [← hbit]
      unfold seg52In0AccX127
      linear_combination -r2556
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY128 rho = seg52In0AccY127 rho - Bool.toZMod bit * (seg52In0AccY127 rho - rho 46946) := by
    have hd : rho 46948 = Bool.toZMod bit * (rho 46946 - seg52In0AccY127 rho) := by
      rw [← hbit]
      unfold seg52In0AccY127
      linear_combination -r2557
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46939 * rho 46940 = rho 46949 := by linear_combination r2558
  have hd1 : rho 46939 * rho 46939 = rho 46950 := by linear_combination r2559
  have hd2 : rho 46940 * rho 46940 = rho 46951 := by linear_combination r2560
  have hd3 : rho 46952 * (rho 46940 * rho 46940 + rho 46939 * rho 46939 * (-1)) =
      2 * (rho 46939 * rho 46940) := by
    rw [hd0, hd1, hd2]
    linear_combination r2561
  have hd4 : rho 46953 * (2 - (rho 46940 * rho 46940 + rho 46939 * rho 46939 * (-1))) =
      rho 46940 * rho 46940 - rho 46939 * rho 46939 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2562
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX127 rho, seg52In0AccY127 rho⟩ ⟨rho 46939, rho 46940⟩
    ⟨rho 46945, rho 46946⟩ ⟨seg52In0AccX128 rho, seg52In0AccY128 rho⟩ ⟨rho 46952, rho 46953⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg52In0_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg52In0_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg52In0_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg52In0_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg52In0_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg52In0_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
