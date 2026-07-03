import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2540 rho ∧ Seg52.relationRow2541 rho ∧ Seg52.relationRow2542 rho ∧ Seg52.relationRow2543 rho ∧ Seg52.relationRow2544 rho ∧ Seg52.relationRow2545 rho ∧ Seg52.relationRow2546 rho ∧ Seg52.relationRow2547 rho ∧ Seg52.relationRow2548 rho ∧ Seg52.relationRow2549 rho ∧ Seg52.relationRow2550 rho ∧ Seg52.relationRow2551 rho ∧ Seg52.relationRow2552 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552, _, _, _, _, _, _, _⟩

  exact ⟨r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552⟩

theorem seg52In0_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45885 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46929, rho 46930⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46929, rho 46930⟩
        ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46942, rho 46943⟩ := by
  obtain ⟨r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552⟩ := seg52In0_rows77 rho h
  unfold Seg52.relationRow2540 at r2540

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2540

  unfold Seg52.relationRow2541 at r2541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2541

  unfold Seg52.relationRow2542 at r2542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2542

  unfold Seg52.relationRow2543 at r2543

  unfold Seg52.relationRow2544 at r2544

  unfold Seg52.relationRow2545 at r2545

  unfold Seg52.relationRow2546 at r2546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2546

  unfold Seg52.relationRow2547 at r2547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2547

  unfold Seg52.relationRow2548 at r2548

  unfold Seg52.relationRow2549 at r2549

  unfold Seg52.relationRow2550 at r2550

  unfold Seg52.relationRow2551 at r2551

  unfold Seg52.relationRow2552 at r2552

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX78 rho = seg52In0AccX77 rho + rho 46937 := by
    unfold seg52In0AccX78 seg52In0AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 77]

    ring

  have hnexty : seg52In0AccY78 rho = seg52In0AccY77 rho + rho 46938 := by
    unfold seg52In0AccY78 seg52In0AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 77]

    ring

  have ha0 : (rho 46929 + rho 46930) * (seg52In0AccX77 rho + seg52In0AccY77 rho) = rho 46931 := by
    unfold seg52In0AccX77 seg52In0AccY77
    linear_combination r2540
  have ha1 : rho 46930 * seg52In0AccX77 rho = rho 46932 := by
    unfold seg52In0AccX77
    linear_combination r2541
  have ha2 : rho 46929 * seg52In0AccY77 rho = rho 46933 := by
    unfold seg52In0AccY77
    linear_combination r2542
  have ha3 : 3021 * rho 46932 * rho 46933 = rho 46934 := by
    linear_combination r2543
  have ha4 : rho 46935 * (1 + rho 46934) = rho 46932 + rho 46933 := by
    linear_combination r2544
  have ha5 : rho 46936 * (1 - rho 46934) = rho 46931 - rho 46932 - rho 46933 := by
    linear_combination r2545
  have haddx :
      rho 46935 * (1 + 3021 * (rho 46930 * seg52In0AccX77 rho) * (rho 46929 * seg52In0AccY77 rho)) =
        rho 46930 * seg52In0AccX77 rho + rho 46929 * seg52In0AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46936 * (1 - 3021 * (rho 46930 * seg52In0AccX77 rho) * (rho 46929 * seg52In0AccY77 rho)) =
        (-1) * (rho 46930 * seg52In0AccX77 rho) - rho 46929 * seg52In0AccY77 rho +
          (seg52In0AccY77 rho - seg52In0AccX77 rho * (-1)) * (rho 46929 + rho 46930) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46936 * (1 - rho 46934) = rho 46931 - rho 46932 - rho 46933 := ha5
      _ = (-1) * rho 46932 - rho 46933 + (seg52In0AccY77 rho - seg52In0AccX77 rho * (-1)) *
          (rho 46929 + rho 46930) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX78 rho = seg52In0AccX77 rho - Bool.toZMod bit * (seg52In0AccX77 rho - rho 46935) := by
    have hd : rho 46937 = Bool.toZMod bit * (rho 46935 - seg52In0AccX77 rho) := by
      rw [← hbit]
      unfold seg52In0AccX77
      linear_combination -r2546
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY78 rho = seg52In0AccY77 rho - Bool.toZMod bit * (seg52In0AccY77 rho - rho 46936) := by
    have hd : rho 46938 = Bool.toZMod bit * (rho 46936 - seg52In0AccY77 rho) := by
      rw [← hbit]
      unfold seg52In0AccY77
      linear_combination -r2547
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46929 * rho 46930 = rho 46939 := by linear_combination r2548
  have hd1 : rho 46929 * rho 46929 = rho 46940 := by linear_combination r2549
  have hd2 : rho 46930 * rho 46930 = rho 46941 := by linear_combination r2550
  have hd3 : rho 46942 * (rho 46930 * rho 46930 + rho 46929 * rho 46929 * (-1)) =
      2 * (rho 46929 * rho 46930) := by
    rw [hd0, hd1, hd2]
    linear_combination r2551
  have hd4 : rho 46943 * (2 - (rho 46930 * rho 46930 + rho 46929 * rho 46929 * (-1))) =
      rho 46930 * rho 46930 - rho 46929 * rho 46929 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2552
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46929, rho 46930⟩
    ⟨rho 46935, rho 46936⟩ ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46942, rho 46943⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2553 rho ∧ Seg52.relationRow2554 rho ∧ Seg52.relationRow2555 rho ∧ Seg52.relationRow2556 rho ∧ Seg52.relationRow2557 rho ∧ Seg52.relationRow2558 rho ∧ Seg52.relationRow2559 rho ∧ Seg52.relationRow2560 rho ∧ Seg52.relationRow2561 rho ∧ Seg52.relationRow2562 rho ∧ Seg52.relationRow2563 rho ∧ Seg52.relationRow2564 rho ∧ Seg52.relationRow2565 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2553, r2554, r2555, r2556, r2557, r2558, r2559⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨r2560, r2561, r2562, r2563, r2564, r2565, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2553, r2554, r2555, r2556, r2557, r2558, r2559, r2560, r2561, r2562, r2563, r2564, r2565⟩

theorem seg52In0_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45886 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46942, rho 46943⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46942, rho 46943⟩
        ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46955, rho 46956⟩ := by
  obtain ⟨r2553, r2554, r2555, r2556, r2557, r2558, r2559, r2560, r2561, r2562, r2563, r2564, r2565⟩ := seg52In0_rows78 rho h
  unfold Seg52.relationRow2553 at r2553

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2553

  unfold Seg52.relationRow2554 at r2554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2554

  unfold Seg52.relationRow2555 at r2555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2555

  unfold Seg52.relationRow2556 at r2556

  unfold Seg52.relationRow2557 at r2557

  unfold Seg52.relationRow2558 at r2558

  unfold Seg52.relationRow2559 at r2559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2559

  unfold Seg52.relationRow2560 at r2560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2560

  unfold Seg52.relationRow2561 at r2561

  unfold Seg52.relationRow2562 at r2562

  unfold Seg52.relationRow2563 at r2563

  unfold Seg52.relationRow2564 at r2564

  unfold Seg52.relationRow2565 at r2565

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX79 rho = seg52In0AccX78 rho + rho 46950 := by
    unfold seg52In0AccX79 seg52In0AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 78]

    ring

  have hnexty : seg52In0AccY79 rho = seg52In0AccY78 rho + rho 46951 := by
    unfold seg52In0AccY79 seg52In0AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 78]

    ring

  have ha0 : (rho 46942 + rho 46943) * (seg52In0AccX78 rho + seg52In0AccY78 rho) = rho 46944 := by
    unfold seg52In0AccX78 seg52In0AccY78
    linear_combination r2553
  have ha1 : rho 46943 * seg52In0AccX78 rho = rho 46945 := by
    unfold seg52In0AccX78
    linear_combination r2554
  have ha2 : rho 46942 * seg52In0AccY78 rho = rho 46946 := by
    unfold seg52In0AccY78
    linear_combination r2555
  have ha3 : 3021 * rho 46945 * rho 46946 = rho 46947 := by
    linear_combination r2556
  have ha4 : rho 46948 * (1 + rho 46947) = rho 46945 + rho 46946 := by
    linear_combination r2557
  have ha5 : rho 46949 * (1 - rho 46947) = rho 46944 - rho 46945 - rho 46946 := by
    linear_combination r2558
  have haddx :
      rho 46948 * (1 + 3021 * (rho 46943 * seg52In0AccX78 rho) * (rho 46942 * seg52In0AccY78 rho)) =
        rho 46943 * seg52In0AccX78 rho + rho 46942 * seg52In0AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46949 * (1 - 3021 * (rho 46943 * seg52In0AccX78 rho) * (rho 46942 * seg52In0AccY78 rho)) =
        (-1) * (rho 46943 * seg52In0AccX78 rho) - rho 46942 * seg52In0AccY78 rho +
          (seg52In0AccY78 rho - seg52In0AccX78 rho * (-1)) * (rho 46942 + rho 46943) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46949 * (1 - rho 46947) = rho 46944 - rho 46945 - rho 46946 := ha5
      _ = (-1) * rho 46945 - rho 46946 + (seg52In0AccY78 rho - seg52In0AccX78 rho * (-1)) *
          (rho 46942 + rho 46943) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX79 rho = seg52In0AccX78 rho - Bool.toZMod bit * (seg52In0AccX78 rho - rho 46948) := by
    have hd : rho 46950 = Bool.toZMod bit * (rho 46948 - seg52In0AccX78 rho) := by
      rw [← hbit]
      unfold seg52In0AccX78
      linear_combination -r2559
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY79 rho = seg52In0AccY78 rho - Bool.toZMod bit * (seg52In0AccY78 rho - rho 46949) := by
    have hd : rho 46951 = Bool.toZMod bit * (rho 46949 - seg52In0AccY78 rho) := by
      rw [← hbit]
      unfold seg52In0AccY78
      linear_combination -r2560
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46942 * rho 46943 = rho 46952 := by linear_combination r2561
  have hd1 : rho 46942 * rho 46942 = rho 46953 := by linear_combination r2562
  have hd2 : rho 46943 * rho 46943 = rho 46954 := by linear_combination r2563
  have hd3 : rho 46955 * (rho 46943 * rho 46943 + rho 46942 * rho 46942 * (-1)) =
      2 * (rho 46942 * rho 46943) := by
    rw [hd0, hd1, hd2]
    linear_combination r2564
  have hd4 : rho 46956 * (2 - (rho 46943 * rho 46943 + rho 46942 * rho 46942 * (-1))) =
      rho 46943 * rho 46943 - rho 46942 * rho 46942 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2565
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46942, rho 46943⟩
    ⟨rho 46948, rho 46949⟩ ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46955, rho 46956⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2566 rho ∧ Seg52.relationRow2567 rho ∧ Seg52.relationRow2568 rho ∧ Seg52.relationRow2569 rho ∧ Seg52.relationRow2570 rho ∧ Seg52.relationRow2571 rho ∧ Seg52.relationRow2572 rho ∧ Seg52.relationRow2573 rho ∧ Seg52.relationRow2574 rho ∧ Seg52.relationRow2575 rho ∧ Seg52.relationRow2576 rho ∧ Seg52.relationRow2577 rho ∧ Seg52.relationRow2578 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, _, _, _, r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578⟩

theorem seg52In0_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45887 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46955, rho 46956⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46955, rho 46956⟩
        ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46968, rho 46969⟩ := by
  obtain ⟨r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578⟩ := seg52In0_rows79 rho h
  unfold Seg52.relationRow2566 at r2566

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2566

  unfold Seg52.relationRow2567 at r2567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2567

  unfold Seg52.relationRow2568 at r2568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2568

  unfold Seg52.relationRow2569 at r2569

  unfold Seg52.relationRow2570 at r2570

  unfold Seg52.relationRow2571 at r2571

  unfold Seg52.relationRow2572 at r2572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2572

  unfold Seg52.relationRow2573 at r2573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2573

  unfold Seg52.relationRow2574 at r2574

  unfold Seg52.relationRow2575 at r2575

  unfold Seg52.relationRow2576 at r2576

  unfold Seg52.relationRow2577 at r2577

  unfold Seg52.relationRow2578 at r2578

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX80 rho = seg52In0AccX79 rho + rho 46963 := by
    unfold seg52In0AccX80 seg52In0AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 79]

    ring

  have hnexty : seg52In0AccY80 rho = seg52In0AccY79 rho + rho 46964 := by
    unfold seg52In0AccY80 seg52In0AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 79]

    ring

  have ha0 : (rho 46955 + rho 46956) * (seg52In0AccX79 rho + seg52In0AccY79 rho) = rho 46957 := by
    unfold seg52In0AccX79 seg52In0AccY79
    linear_combination r2566
  have ha1 : rho 46956 * seg52In0AccX79 rho = rho 46958 := by
    unfold seg52In0AccX79
    linear_combination r2567
  have ha2 : rho 46955 * seg52In0AccY79 rho = rho 46959 := by
    unfold seg52In0AccY79
    linear_combination r2568
  have ha3 : 3021 * rho 46958 * rho 46959 = rho 46960 := by
    linear_combination r2569
  have ha4 : rho 46961 * (1 + rho 46960) = rho 46958 + rho 46959 := by
    linear_combination r2570
  have ha5 : rho 46962 * (1 - rho 46960) = rho 46957 - rho 46958 - rho 46959 := by
    linear_combination r2571
  have haddx :
      rho 46961 * (1 + 3021 * (rho 46956 * seg52In0AccX79 rho) * (rho 46955 * seg52In0AccY79 rho)) =
        rho 46956 * seg52In0AccX79 rho + rho 46955 * seg52In0AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46962 * (1 - 3021 * (rho 46956 * seg52In0AccX79 rho) * (rho 46955 * seg52In0AccY79 rho)) =
        (-1) * (rho 46956 * seg52In0AccX79 rho) - rho 46955 * seg52In0AccY79 rho +
          (seg52In0AccY79 rho - seg52In0AccX79 rho * (-1)) * (rho 46955 + rho 46956) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46962 * (1 - rho 46960) = rho 46957 - rho 46958 - rho 46959 := ha5
      _ = (-1) * rho 46958 - rho 46959 + (seg52In0AccY79 rho - seg52In0AccX79 rho * (-1)) *
          (rho 46955 + rho 46956) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX80 rho = seg52In0AccX79 rho - Bool.toZMod bit * (seg52In0AccX79 rho - rho 46961) := by
    have hd : rho 46963 = Bool.toZMod bit * (rho 46961 - seg52In0AccX79 rho) := by
      rw [← hbit]
      unfold seg52In0AccX79
      linear_combination -r2572
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY80 rho = seg52In0AccY79 rho - Bool.toZMod bit * (seg52In0AccY79 rho - rho 46962) := by
    have hd : rho 46964 = Bool.toZMod bit * (rho 46962 - seg52In0AccY79 rho) := by
      rw [← hbit]
      unfold seg52In0AccY79
      linear_combination -r2573
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46955 * rho 46956 = rho 46965 := by linear_combination r2574
  have hd1 : rho 46955 * rho 46955 = rho 46966 := by linear_combination r2575
  have hd2 : rho 46956 * rho 46956 = rho 46967 := by linear_combination r2576
  have hd3 : rho 46968 * (rho 46956 * rho 46956 + rho 46955 * rho 46955 * (-1)) =
      2 * (rho 46955 * rho 46956) := by
    rw [hd0, hd1, hd2]
    linear_combination r2577
  have hd4 : rho 46969 * (2 - (rho 46956 * rho 46956 + rho 46955 * rho 46955 * (-1))) =
      rho 46956 * rho 46956 - rho 46955 * rho 46955 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2578
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46955, rho 46956⟩
    ⟨rho 46961, rho 46962⟩ ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46968, rho 46969⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2579 rho ∧ Seg52.relationRow2580 rho ∧ Seg52.relationRow2581 rho ∧ Seg52.relationRow2582 rho ∧ Seg52.relationRow2583 rho ∧ Seg52.relationRow2584 rho ∧ Seg52.relationRow2585 rho ∧ Seg52.relationRow2586 rho ∧ Seg52.relationRow2587 rho ∧ Seg52.relationRow2588 rho ∧ Seg52.relationRow2589 rho ∧ Seg52.relationRow2590 rho ∧ Seg52.relationRow2591 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2579, r2580, r2581, r2582, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2579, r2580, r2581, r2582, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591⟩

theorem seg52In0_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45888 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46968, rho 46969⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46968, rho 46969⟩
        ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46981, rho 46982⟩ := by
  obtain ⟨r2579, r2580, r2581, r2582, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591⟩ := seg52In0_rows80 rho h
  unfold Seg52.relationRow2579 at r2579

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2579

  unfold Seg52.relationRow2580 at r2580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2580

  unfold Seg52.relationRow2581 at r2581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2581

  unfold Seg52.relationRow2582 at r2582

  unfold Seg52.relationRow2583 at r2583

  unfold Seg52.relationRow2584 at r2584

  unfold Seg52.relationRow2585 at r2585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2585

  unfold Seg52.relationRow2586 at r2586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2586

  unfold Seg52.relationRow2587 at r2587

  unfold Seg52.relationRow2588 at r2588

  unfold Seg52.relationRow2589 at r2589

  unfold Seg52.relationRow2590 at r2590

  unfold Seg52.relationRow2591 at r2591

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX81 rho = seg52In0AccX80 rho + rho 46976 := by
    unfold seg52In0AccX81 seg52In0AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 80]

    ring

  have hnexty : seg52In0AccY81 rho = seg52In0AccY80 rho + rho 46977 := by
    unfold seg52In0AccY81 seg52In0AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 80]

    ring

  have ha0 : (rho 46968 + rho 46969) * (seg52In0AccX80 rho + seg52In0AccY80 rho) = rho 46970 := by
    unfold seg52In0AccX80 seg52In0AccY80
    linear_combination r2579
  have ha1 : rho 46969 * seg52In0AccX80 rho = rho 46971 := by
    unfold seg52In0AccX80
    linear_combination r2580
  have ha2 : rho 46968 * seg52In0AccY80 rho = rho 46972 := by
    unfold seg52In0AccY80
    linear_combination r2581
  have ha3 : 3021 * rho 46971 * rho 46972 = rho 46973 := by
    linear_combination r2582
  have ha4 : rho 46974 * (1 + rho 46973) = rho 46971 + rho 46972 := by
    linear_combination r2583
  have ha5 : rho 46975 * (1 - rho 46973) = rho 46970 - rho 46971 - rho 46972 := by
    linear_combination r2584
  have haddx :
      rho 46974 * (1 + 3021 * (rho 46969 * seg52In0AccX80 rho) * (rho 46968 * seg52In0AccY80 rho)) =
        rho 46969 * seg52In0AccX80 rho + rho 46968 * seg52In0AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46975 * (1 - 3021 * (rho 46969 * seg52In0AccX80 rho) * (rho 46968 * seg52In0AccY80 rho)) =
        (-1) * (rho 46969 * seg52In0AccX80 rho) - rho 46968 * seg52In0AccY80 rho +
          (seg52In0AccY80 rho - seg52In0AccX80 rho * (-1)) * (rho 46968 + rho 46969) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46975 * (1 - rho 46973) = rho 46970 - rho 46971 - rho 46972 := ha5
      _ = (-1) * rho 46971 - rho 46972 + (seg52In0AccY80 rho - seg52In0AccX80 rho * (-1)) *
          (rho 46968 + rho 46969) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX81 rho = seg52In0AccX80 rho - Bool.toZMod bit * (seg52In0AccX80 rho - rho 46974) := by
    have hd : rho 46976 = Bool.toZMod bit * (rho 46974 - seg52In0AccX80 rho) := by
      rw [← hbit]
      unfold seg52In0AccX80
      linear_combination -r2585
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY81 rho = seg52In0AccY80 rho - Bool.toZMod bit * (seg52In0AccY80 rho - rho 46975) := by
    have hd : rho 46977 = Bool.toZMod bit * (rho 46975 - seg52In0AccY80 rho) := by
      rw [← hbit]
      unfold seg52In0AccY80
      linear_combination -r2586
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46968 * rho 46969 = rho 46978 := by linear_combination r2587
  have hd1 : rho 46968 * rho 46968 = rho 46979 := by linear_combination r2588
  have hd2 : rho 46969 * rho 46969 = rho 46980 := by linear_combination r2589
  have hd3 : rho 46981 * (rho 46969 * rho 46969 + rho 46968 * rho 46968 * (-1)) =
      2 * (rho 46968 * rho 46969) := by
    rw [hd0, hd1, hd2]
    linear_combination r2590
  have hd4 : rho 46982 * (2 - (rho 46969 * rho 46969 + rho 46968 * rho 46968 * (-1))) =
      rho 46969 * rho 46969 - rho 46968 * rho 46968 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2591
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46968, rho 46969⟩
    ⟨rho 46974, rho 46975⟩ ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46981, rho 46982⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2592 rho ∧ Seg52.relationRow2593 rho ∧ Seg52.relationRow2594 rho ∧ Seg52.relationRow2595 rho ∧ Seg52.relationRow2596 rho ∧ Seg52.relationRow2597 rho ∧ Seg52.relationRow2598 rho ∧ Seg52.relationRow2599 rho ∧ Seg52.relationRow2600 rho ∧ Seg52.relationRow2601 rho ∧ Seg52.relationRow2602 rho ∧ Seg52.relationRow2603 rho ∧ Seg52.relationRow2604 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604⟩

theorem seg52In0_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45889 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46981, rho 46982⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46981, rho 46982⟩
        ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46994, rho 46995⟩ := by
  obtain ⟨r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604⟩ := seg52In0_rows81 rho h
  unfold Seg52.relationRow2592 at r2592

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2592

  unfold Seg52.relationRow2593 at r2593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2593

  unfold Seg52.relationRow2594 at r2594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2594

  unfold Seg52.relationRow2595 at r2595

  unfold Seg52.relationRow2596 at r2596

  unfold Seg52.relationRow2597 at r2597

  unfold Seg52.relationRow2598 at r2598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2598

  unfold Seg52.relationRow2599 at r2599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2599

  unfold Seg52.relationRow2600 at r2600

  unfold Seg52.relationRow2601 at r2601

  unfold Seg52.relationRow2602 at r2602

  unfold Seg52.relationRow2603 at r2603

  unfold Seg52.relationRow2604 at r2604

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX82 rho = seg52In0AccX81 rho + rho 46989 := by
    unfold seg52In0AccX82 seg52In0AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 81]

    ring

  have hnexty : seg52In0AccY82 rho = seg52In0AccY81 rho + rho 46990 := by
    unfold seg52In0AccY82 seg52In0AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 81]

    ring

  have ha0 : (rho 46981 + rho 46982) * (seg52In0AccX81 rho + seg52In0AccY81 rho) = rho 46983 := by
    unfold seg52In0AccX81 seg52In0AccY81
    linear_combination r2592
  have ha1 : rho 46982 * seg52In0AccX81 rho = rho 46984 := by
    unfold seg52In0AccX81
    linear_combination r2593
  have ha2 : rho 46981 * seg52In0AccY81 rho = rho 46985 := by
    unfold seg52In0AccY81
    linear_combination r2594
  have ha3 : 3021 * rho 46984 * rho 46985 = rho 46986 := by
    linear_combination r2595
  have ha4 : rho 46987 * (1 + rho 46986) = rho 46984 + rho 46985 := by
    linear_combination r2596
  have ha5 : rho 46988 * (1 - rho 46986) = rho 46983 - rho 46984 - rho 46985 := by
    linear_combination r2597
  have haddx :
      rho 46987 * (1 + 3021 * (rho 46982 * seg52In0AccX81 rho) * (rho 46981 * seg52In0AccY81 rho)) =
        rho 46982 * seg52In0AccX81 rho + rho 46981 * seg52In0AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46988 * (1 - 3021 * (rho 46982 * seg52In0AccX81 rho) * (rho 46981 * seg52In0AccY81 rho)) =
        (-1) * (rho 46982 * seg52In0AccX81 rho) - rho 46981 * seg52In0AccY81 rho +
          (seg52In0AccY81 rho - seg52In0AccX81 rho * (-1)) * (rho 46981 + rho 46982) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46988 * (1 - rho 46986) = rho 46983 - rho 46984 - rho 46985 := ha5
      _ = (-1) * rho 46984 - rho 46985 + (seg52In0AccY81 rho - seg52In0AccX81 rho * (-1)) *
          (rho 46981 + rho 46982) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX82 rho = seg52In0AccX81 rho - Bool.toZMod bit * (seg52In0AccX81 rho - rho 46987) := by
    have hd : rho 46989 = Bool.toZMod bit * (rho 46987 - seg52In0AccX81 rho) := by
      rw [← hbit]
      unfold seg52In0AccX81
      linear_combination -r2598
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY82 rho = seg52In0AccY81 rho - Bool.toZMod bit * (seg52In0AccY81 rho - rho 46988) := by
    have hd : rho 46990 = Bool.toZMod bit * (rho 46988 - seg52In0AccY81 rho) := by
      rw [← hbit]
      unfold seg52In0AccY81
      linear_combination -r2599
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46981 * rho 46982 = rho 46991 := by linear_combination r2600
  have hd1 : rho 46981 * rho 46981 = rho 46992 := by linear_combination r2601
  have hd2 : rho 46982 * rho 46982 = rho 46993 := by linear_combination r2602
  have hd3 : rho 46994 * (rho 46982 * rho 46982 + rho 46981 * rho 46981 * (-1)) =
      2 * (rho 46981 * rho 46982) := by
    rw [hd0, hd1, hd2]
    linear_combination r2603
  have hd4 : rho 46995 * (2 - (rho 46982 * rho 46982 + rho 46981 * rho 46981 * (-1))) =
      rho 46982 * rho 46982 - rho 46981 * rho 46981 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2604
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46981, rho 46982⟩
    ⟨rho 46987, rho 46988⟩ ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46994, rho 46995⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2605 rho ∧ Seg52.relationRow2606 rho ∧ Seg52.relationRow2607 rho ∧ Seg52.relationRow2608 rho ∧ Seg52.relationRow2609 rho ∧ Seg52.relationRow2610 rho ∧ Seg52.relationRow2611 rho ∧ Seg52.relationRow2612 rho ∧ Seg52.relationRow2613 rho ∧ Seg52.relationRow2614 rho ∧ Seg52.relationRow2615 rho ∧ Seg52.relationRow2616 rho ∧ Seg52.relationRow2617 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617⟩

theorem seg52In0_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45890 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46994, rho 46995⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46994, rho 46995⟩
        ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 47007, rho 47008⟩ := by
  obtain ⟨r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617⟩ := seg52In0_rows82 rho h
  unfold Seg52.relationRow2605 at r2605

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2605

  unfold Seg52.relationRow2606 at r2606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2606

  unfold Seg52.relationRow2607 at r2607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2607

  unfold Seg52.relationRow2608 at r2608

  unfold Seg52.relationRow2609 at r2609

  unfold Seg52.relationRow2610 at r2610

  unfold Seg52.relationRow2611 at r2611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2611

  unfold Seg52.relationRow2612 at r2612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2612

  unfold Seg52.relationRow2613 at r2613

  unfold Seg52.relationRow2614 at r2614

  unfold Seg52.relationRow2615 at r2615

  unfold Seg52.relationRow2616 at r2616

  unfold Seg52.relationRow2617 at r2617

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX83 rho = seg52In0AccX82 rho + rho 47002 := by
    unfold seg52In0AccX83 seg52In0AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 82]

    ring

  have hnexty : seg52In0AccY83 rho = seg52In0AccY82 rho + rho 47003 := by
    unfold seg52In0AccY83 seg52In0AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 82]

    ring

  have ha0 : (rho 46994 + rho 46995) * (seg52In0AccX82 rho + seg52In0AccY82 rho) = rho 46996 := by
    unfold seg52In0AccX82 seg52In0AccY82
    linear_combination r2605
  have ha1 : rho 46995 * seg52In0AccX82 rho = rho 46997 := by
    unfold seg52In0AccX82
    linear_combination r2606
  have ha2 : rho 46994 * seg52In0AccY82 rho = rho 46998 := by
    unfold seg52In0AccY82
    linear_combination r2607
  have ha3 : 3021 * rho 46997 * rho 46998 = rho 46999 := by
    linear_combination r2608
  have ha4 : rho 47000 * (1 + rho 46999) = rho 46997 + rho 46998 := by
    linear_combination r2609
  have ha5 : rho 47001 * (1 - rho 46999) = rho 46996 - rho 46997 - rho 46998 := by
    linear_combination r2610
  have haddx :
      rho 47000 * (1 + 3021 * (rho 46995 * seg52In0AccX82 rho) * (rho 46994 * seg52In0AccY82 rho)) =
        rho 46995 * seg52In0AccX82 rho + rho 46994 * seg52In0AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47001 * (1 - 3021 * (rho 46995 * seg52In0AccX82 rho) * (rho 46994 * seg52In0AccY82 rho)) =
        (-1) * (rho 46995 * seg52In0AccX82 rho) - rho 46994 * seg52In0AccY82 rho +
          (seg52In0AccY82 rho - seg52In0AccX82 rho * (-1)) * (rho 46994 + rho 46995) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47001 * (1 - rho 46999) = rho 46996 - rho 46997 - rho 46998 := ha5
      _ = (-1) * rho 46997 - rho 46998 + (seg52In0AccY82 rho - seg52In0AccX82 rho * (-1)) *
          (rho 46994 + rho 46995) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX83 rho = seg52In0AccX82 rho - Bool.toZMod bit * (seg52In0AccX82 rho - rho 47000) := by
    have hd : rho 47002 = Bool.toZMod bit * (rho 47000 - seg52In0AccX82 rho) := by
      rw [← hbit]
      unfold seg52In0AccX82
      linear_combination -r2611
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY83 rho = seg52In0AccY82 rho - Bool.toZMod bit * (seg52In0AccY82 rho - rho 47001) := by
    have hd : rho 47003 = Bool.toZMod bit * (rho 47001 - seg52In0AccY82 rho) := by
      rw [← hbit]
      unfold seg52In0AccY82
      linear_combination -r2612
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46994 * rho 46995 = rho 47004 := by linear_combination r2613
  have hd1 : rho 46994 * rho 46994 = rho 47005 := by linear_combination r2614
  have hd2 : rho 46995 * rho 46995 = rho 47006 := by linear_combination r2615
  have hd3 : rho 47007 * (rho 46995 * rho 46995 + rho 46994 * rho 46994 * (-1)) =
      2 * (rho 46994 * rho 46995) := by
    rw [hd0, hd1, hd2]
    linear_combination r2616
  have hd4 : rho 47008 * (2 - (rho 46995 * rho 46995 + rho 46994 * rho 46994 * (-1))) =
      rho 46995 * rho 46995 - rho 46994 * rho 46994 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2617
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46994, rho 46995⟩
    ⟨rho 47000, rho 47001⟩ ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 47007, rho 47008⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2618 rho ∧ Seg52.relationRow2619 rho ∧ Seg52.relationRow2620 rho ∧ Seg52.relationRow2621 rho ∧ Seg52.relationRow2622 rho ∧ Seg52.relationRow2623 rho ∧ Seg52.relationRow2624 rho ∧ Seg52.relationRow2625 rho ∧ Seg52.relationRow2626 rho ∧ Seg52.relationRow2627 rho ∧ Seg52.relationRow2628 rho ∧ Seg52.relationRow2629 rho ∧ Seg52.relationRow2630 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630⟩

theorem seg52In0_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45891 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47007, rho 47008⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 47007, rho 47008⟩
        ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 47020, rho 47021⟩ := by
  obtain ⟨r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630⟩ := seg52In0_rows83 rho h
  unfold Seg52.relationRow2618 at r2618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2618

  unfold Seg52.relationRow2619 at r2619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2619

  unfold Seg52.relationRow2620 at r2620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2620

  unfold Seg52.relationRow2621 at r2621

  unfold Seg52.relationRow2622 at r2622

  unfold Seg52.relationRow2623 at r2623

  unfold Seg52.relationRow2624 at r2624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2624

  unfold Seg52.relationRow2625 at r2625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2625

  unfold Seg52.relationRow2626 at r2626

  unfold Seg52.relationRow2627 at r2627

  unfold Seg52.relationRow2628 at r2628

  unfold Seg52.relationRow2629 at r2629

  unfold Seg52.relationRow2630 at r2630

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX84 rho = seg52In0AccX83 rho + rho 47015 := by
    unfold seg52In0AccX84 seg52In0AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 83]

    ring

  have hnexty : seg52In0AccY84 rho = seg52In0AccY83 rho + rho 47016 := by
    unfold seg52In0AccY84 seg52In0AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 83]

    ring

  have ha0 : (rho 47007 + rho 47008) * (seg52In0AccX83 rho + seg52In0AccY83 rho) = rho 47009 := by
    unfold seg52In0AccX83 seg52In0AccY83
    linear_combination r2618
  have ha1 : rho 47008 * seg52In0AccX83 rho = rho 47010 := by
    unfold seg52In0AccX83
    linear_combination r2619
  have ha2 : rho 47007 * seg52In0AccY83 rho = rho 47011 := by
    unfold seg52In0AccY83
    linear_combination r2620
  have ha3 : 3021 * rho 47010 * rho 47011 = rho 47012 := by
    linear_combination r2621
  have ha4 : rho 47013 * (1 + rho 47012) = rho 47010 + rho 47011 := by
    linear_combination r2622
  have ha5 : rho 47014 * (1 - rho 47012) = rho 47009 - rho 47010 - rho 47011 := by
    linear_combination r2623
  have haddx :
      rho 47013 * (1 + 3021 * (rho 47008 * seg52In0AccX83 rho) * (rho 47007 * seg52In0AccY83 rho)) =
        rho 47008 * seg52In0AccX83 rho + rho 47007 * seg52In0AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47014 * (1 - 3021 * (rho 47008 * seg52In0AccX83 rho) * (rho 47007 * seg52In0AccY83 rho)) =
        (-1) * (rho 47008 * seg52In0AccX83 rho) - rho 47007 * seg52In0AccY83 rho +
          (seg52In0AccY83 rho - seg52In0AccX83 rho * (-1)) * (rho 47007 + rho 47008) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47014 * (1 - rho 47012) = rho 47009 - rho 47010 - rho 47011 := ha5
      _ = (-1) * rho 47010 - rho 47011 + (seg52In0AccY83 rho - seg52In0AccX83 rho * (-1)) *
          (rho 47007 + rho 47008) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX84 rho = seg52In0AccX83 rho - Bool.toZMod bit * (seg52In0AccX83 rho - rho 47013) := by
    have hd : rho 47015 = Bool.toZMod bit * (rho 47013 - seg52In0AccX83 rho) := by
      rw [← hbit]
      unfold seg52In0AccX83
      linear_combination -r2624
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY84 rho = seg52In0AccY83 rho - Bool.toZMod bit * (seg52In0AccY83 rho - rho 47014) := by
    have hd : rho 47016 = Bool.toZMod bit * (rho 47014 - seg52In0AccY83 rho) := by
      rw [← hbit]
      unfold seg52In0AccY83
      linear_combination -r2625
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47007 * rho 47008 = rho 47017 := by linear_combination r2626
  have hd1 : rho 47007 * rho 47007 = rho 47018 := by linear_combination r2627
  have hd2 : rho 47008 * rho 47008 = rho 47019 := by linear_combination r2628
  have hd3 : rho 47020 * (rho 47008 * rho 47008 + rho 47007 * rho 47007 * (-1)) =
      2 * (rho 47007 * rho 47008) := by
    rw [hd0, hd1, hd2]
    linear_combination r2629
  have hd4 : rho 47021 * (2 - (rho 47008 * rho 47008 + rho 47007 * rho 47007 * (-1))) =
      rho 47008 * rho 47008 - rho 47007 * rho 47007 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2630
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 47007, rho 47008⟩
    ⟨rho 47013, rho 47014⟩ ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 47020, rho 47021⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2631 rho ∧ Seg52.relationRow2632 rho ∧ Seg52.relationRow2633 rho ∧ Seg52.relationRow2634 rho ∧ Seg52.relationRow2635 rho ∧ Seg52.relationRow2636 rho ∧ Seg52.relationRow2637 rho ∧ Seg52.relationRow2638 rho ∧ Seg52.relationRow2639 rho ∧ Seg52.relationRow2640 rho ∧ Seg52.relationRow2641 rho ∧ Seg52.relationRow2642 rho ∧ Seg52.relationRow2643 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨r2640, r2641, r2642, r2643, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639, r2640, r2641, r2642, r2643⟩

theorem seg52In0_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45892 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47020, rho 47021⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 47020, rho 47021⟩
        ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 47033, rho 47034⟩ := by
  obtain ⟨r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639, r2640, r2641, r2642, r2643⟩ := seg52In0_rows84 rho h
  unfold Seg52.relationRow2631 at r2631

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2631

  unfold Seg52.relationRow2632 at r2632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2632

  unfold Seg52.relationRow2633 at r2633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2633

  unfold Seg52.relationRow2634 at r2634

  unfold Seg52.relationRow2635 at r2635

  unfold Seg52.relationRow2636 at r2636

  unfold Seg52.relationRow2637 at r2637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2637

  unfold Seg52.relationRow2638 at r2638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2638

  unfold Seg52.relationRow2639 at r2639

  unfold Seg52.relationRow2640 at r2640

  unfold Seg52.relationRow2641 at r2641

  unfold Seg52.relationRow2642 at r2642

  unfold Seg52.relationRow2643 at r2643

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX85 rho = seg52In0AccX84 rho + rho 47028 := by
    unfold seg52In0AccX85 seg52In0AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 84]

    ring

  have hnexty : seg52In0AccY85 rho = seg52In0AccY84 rho + rho 47029 := by
    unfold seg52In0AccY85 seg52In0AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 84]

    ring

  have ha0 : (rho 47020 + rho 47021) * (seg52In0AccX84 rho + seg52In0AccY84 rho) = rho 47022 := by
    unfold seg52In0AccX84 seg52In0AccY84
    linear_combination r2631
  have ha1 : rho 47021 * seg52In0AccX84 rho = rho 47023 := by
    unfold seg52In0AccX84
    linear_combination r2632
  have ha2 : rho 47020 * seg52In0AccY84 rho = rho 47024 := by
    unfold seg52In0AccY84
    linear_combination r2633
  have ha3 : 3021 * rho 47023 * rho 47024 = rho 47025 := by
    linear_combination r2634
  have ha4 : rho 47026 * (1 + rho 47025) = rho 47023 + rho 47024 := by
    linear_combination r2635
  have ha5 : rho 47027 * (1 - rho 47025) = rho 47022 - rho 47023 - rho 47024 := by
    linear_combination r2636
  have haddx :
      rho 47026 * (1 + 3021 * (rho 47021 * seg52In0AccX84 rho) * (rho 47020 * seg52In0AccY84 rho)) =
        rho 47021 * seg52In0AccX84 rho + rho 47020 * seg52In0AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47027 * (1 - 3021 * (rho 47021 * seg52In0AccX84 rho) * (rho 47020 * seg52In0AccY84 rho)) =
        (-1) * (rho 47021 * seg52In0AccX84 rho) - rho 47020 * seg52In0AccY84 rho +
          (seg52In0AccY84 rho - seg52In0AccX84 rho * (-1)) * (rho 47020 + rho 47021) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47027 * (1 - rho 47025) = rho 47022 - rho 47023 - rho 47024 := ha5
      _ = (-1) * rho 47023 - rho 47024 + (seg52In0AccY84 rho - seg52In0AccX84 rho * (-1)) *
          (rho 47020 + rho 47021) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX85 rho = seg52In0AccX84 rho - Bool.toZMod bit * (seg52In0AccX84 rho - rho 47026) := by
    have hd : rho 47028 = Bool.toZMod bit * (rho 47026 - seg52In0AccX84 rho) := by
      rw [← hbit]
      unfold seg52In0AccX84
      linear_combination -r2637
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY85 rho = seg52In0AccY84 rho - Bool.toZMod bit * (seg52In0AccY84 rho - rho 47027) := by
    have hd : rho 47029 = Bool.toZMod bit * (rho 47027 - seg52In0AccY84 rho) := by
      rw [← hbit]
      unfold seg52In0AccY84
      linear_combination -r2638
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47020 * rho 47021 = rho 47030 := by linear_combination r2639
  have hd1 : rho 47020 * rho 47020 = rho 47031 := by linear_combination r2640
  have hd2 : rho 47021 * rho 47021 = rho 47032 := by linear_combination r2641
  have hd3 : rho 47033 * (rho 47021 * rho 47021 + rho 47020 * rho 47020 * (-1)) =
      2 * (rho 47020 * rho 47021) := by
    rw [hd0, hd1, hd2]
    linear_combination r2642
  have hd4 : rho 47034 * (2 - (rho 47021 * rho 47021 + rho 47020 * rho 47020 * (-1))) =
      rho 47021 * rho 47021 - rho 47020 * rho 47020 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2643
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 47020, rho 47021⟩
    ⟨rho 47026, rho 47027⟩ ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 47033, rho 47034⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2644 rho ∧ Seg52.relationRow2645 rho ∧ Seg52.relationRow2646 rho ∧ Seg52.relationRow2647 rho ∧ Seg52.relationRow2648 rho ∧ Seg52.relationRow2649 rho ∧ Seg52.relationRow2650 rho ∧ Seg52.relationRow2651 rho ∧ Seg52.relationRow2652 rho ∧ Seg52.relationRow2653 rho ∧ Seg52.relationRow2654 rho ∧ Seg52.relationRow2655 rho ∧ Seg52.relationRow2656 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656⟩

theorem seg52In0_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45893 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47033, rho 47034⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 47033, rho 47034⟩
        ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 47046, rho 47047⟩ := by
  obtain ⟨r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656⟩ := seg52In0_rows85 rho h
  unfold Seg52.relationRow2644 at r2644

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2644

  unfold Seg52.relationRow2645 at r2645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2645

  unfold Seg52.relationRow2646 at r2646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2646

  unfold Seg52.relationRow2647 at r2647

  unfold Seg52.relationRow2648 at r2648

  unfold Seg52.relationRow2649 at r2649

  unfold Seg52.relationRow2650 at r2650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2650

  unfold Seg52.relationRow2651 at r2651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2651

  unfold Seg52.relationRow2652 at r2652

  unfold Seg52.relationRow2653 at r2653

  unfold Seg52.relationRow2654 at r2654

  unfold Seg52.relationRow2655 at r2655

  unfold Seg52.relationRow2656 at r2656

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX86 rho = seg52In0AccX85 rho + rho 47041 := by
    unfold seg52In0AccX86 seg52In0AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 85]

    ring

  have hnexty : seg52In0AccY86 rho = seg52In0AccY85 rho + rho 47042 := by
    unfold seg52In0AccY86 seg52In0AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 85]

    ring

  have ha0 : (rho 47033 + rho 47034) * (seg52In0AccX85 rho + seg52In0AccY85 rho) = rho 47035 := by
    unfold seg52In0AccX85 seg52In0AccY85
    linear_combination r2644
  have ha1 : rho 47034 * seg52In0AccX85 rho = rho 47036 := by
    unfold seg52In0AccX85
    linear_combination r2645
  have ha2 : rho 47033 * seg52In0AccY85 rho = rho 47037 := by
    unfold seg52In0AccY85
    linear_combination r2646
  have ha3 : 3021 * rho 47036 * rho 47037 = rho 47038 := by
    linear_combination r2647
  have ha4 : rho 47039 * (1 + rho 47038) = rho 47036 + rho 47037 := by
    linear_combination r2648
  have ha5 : rho 47040 * (1 - rho 47038) = rho 47035 - rho 47036 - rho 47037 := by
    linear_combination r2649
  have haddx :
      rho 47039 * (1 + 3021 * (rho 47034 * seg52In0AccX85 rho) * (rho 47033 * seg52In0AccY85 rho)) =
        rho 47034 * seg52In0AccX85 rho + rho 47033 * seg52In0AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47040 * (1 - 3021 * (rho 47034 * seg52In0AccX85 rho) * (rho 47033 * seg52In0AccY85 rho)) =
        (-1) * (rho 47034 * seg52In0AccX85 rho) - rho 47033 * seg52In0AccY85 rho +
          (seg52In0AccY85 rho - seg52In0AccX85 rho * (-1)) * (rho 47033 + rho 47034) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47040 * (1 - rho 47038) = rho 47035 - rho 47036 - rho 47037 := ha5
      _ = (-1) * rho 47036 - rho 47037 + (seg52In0AccY85 rho - seg52In0AccX85 rho * (-1)) *
          (rho 47033 + rho 47034) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX86 rho = seg52In0AccX85 rho - Bool.toZMod bit * (seg52In0AccX85 rho - rho 47039) := by
    have hd : rho 47041 = Bool.toZMod bit * (rho 47039 - seg52In0AccX85 rho) := by
      rw [← hbit]
      unfold seg52In0AccX85
      linear_combination -r2650
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY86 rho = seg52In0AccY85 rho - Bool.toZMod bit * (seg52In0AccY85 rho - rho 47040) := by
    have hd : rho 47042 = Bool.toZMod bit * (rho 47040 - seg52In0AccY85 rho) := by
      rw [← hbit]
      unfold seg52In0AccY85
      linear_combination -r2651
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47033 * rho 47034 = rho 47043 := by linear_combination r2652
  have hd1 : rho 47033 * rho 47033 = rho 47044 := by linear_combination r2653
  have hd2 : rho 47034 * rho 47034 = rho 47045 := by linear_combination r2654
  have hd3 : rho 47046 * (rho 47034 * rho 47034 + rho 47033 * rho 47033 * (-1)) =
      2 * (rho 47033 * rho 47034) := by
    rw [hd0, hd1, hd2]
    linear_combination r2655
  have hd4 : rho 47047 * (2 - (rho 47034 * rho 47034 + rho 47033 * rho 47033 * (-1))) =
      rho 47034 * rho 47034 - rho 47033 * rho 47033 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2656
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 47033, rho 47034⟩
    ⟨rho 47039, rho 47040⟩ ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 47046, rho 47047⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2657 rho ∧ Seg52.relationRow2658 rho ∧ Seg52.relationRow2659 rho ∧ Seg52.relationRow2660 rho ∧ Seg52.relationRow2661 rho ∧ Seg52.relationRow2662 rho ∧ Seg52.relationRow2663 rho ∧ Seg52.relationRow2664 rho ∧ Seg52.relationRow2665 rho ∧ Seg52.relationRow2666 rho ∧ Seg52.relationRow2667 rho ∧ Seg52.relationRow2668 rho ∧ Seg52.relationRow2669 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669⟩

theorem seg52In0_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45894 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47046, rho 47047⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 47046, rho 47047⟩
        ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 47059, rho 47060⟩ := by
  obtain ⟨r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669⟩ := seg52In0_rows86 rho h
  unfold Seg52.relationRow2657 at r2657

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2657

  unfold Seg52.relationRow2658 at r2658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2658

  unfold Seg52.relationRow2659 at r2659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2659

  unfold Seg52.relationRow2660 at r2660

  unfold Seg52.relationRow2661 at r2661

  unfold Seg52.relationRow2662 at r2662

  unfold Seg52.relationRow2663 at r2663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2663

  unfold Seg52.relationRow2664 at r2664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2664

  unfold Seg52.relationRow2665 at r2665

  unfold Seg52.relationRow2666 at r2666

  unfold Seg52.relationRow2667 at r2667

  unfold Seg52.relationRow2668 at r2668

  unfold Seg52.relationRow2669 at r2669

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX87 rho = seg52In0AccX86 rho + rho 47054 := by
    unfold seg52In0AccX87 seg52In0AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 86]

    ring

  have hnexty : seg52In0AccY87 rho = seg52In0AccY86 rho + rho 47055 := by
    unfold seg52In0AccY87 seg52In0AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 86]

    ring

  have ha0 : (rho 47046 + rho 47047) * (seg52In0AccX86 rho + seg52In0AccY86 rho) = rho 47048 := by
    unfold seg52In0AccX86 seg52In0AccY86
    linear_combination r2657
  have ha1 : rho 47047 * seg52In0AccX86 rho = rho 47049 := by
    unfold seg52In0AccX86
    linear_combination r2658
  have ha2 : rho 47046 * seg52In0AccY86 rho = rho 47050 := by
    unfold seg52In0AccY86
    linear_combination r2659
  have ha3 : 3021 * rho 47049 * rho 47050 = rho 47051 := by
    linear_combination r2660
  have ha4 : rho 47052 * (1 + rho 47051) = rho 47049 + rho 47050 := by
    linear_combination r2661
  have ha5 : rho 47053 * (1 - rho 47051) = rho 47048 - rho 47049 - rho 47050 := by
    linear_combination r2662
  have haddx :
      rho 47052 * (1 + 3021 * (rho 47047 * seg52In0AccX86 rho) * (rho 47046 * seg52In0AccY86 rho)) =
        rho 47047 * seg52In0AccX86 rho + rho 47046 * seg52In0AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47053 * (1 - 3021 * (rho 47047 * seg52In0AccX86 rho) * (rho 47046 * seg52In0AccY86 rho)) =
        (-1) * (rho 47047 * seg52In0AccX86 rho) - rho 47046 * seg52In0AccY86 rho +
          (seg52In0AccY86 rho - seg52In0AccX86 rho * (-1)) * (rho 47046 + rho 47047) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47053 * (1 - rho 47051) = rho 47048 - rho 47049 - rho 47050 := ha5
      _ = (-1) * rho 47049 - rho 47050 + (seg52In0AccY86 rho - seg52In0AccX86 rho * (-1)) *
          (rho 47046 + rho 47047) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX87 rho = seg52In0AccX86 rho - Bool.toZMod bit * (seg52In0AccX86 rho - rho 47052) := by
    have hd : rho 47054 = Bool.toZMod bit * (rho 47052 - seg52In0AccX86 rho) := by
      rw [← hbit]
      unfold seg52In0AccX86
      linear_combination -r2663
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY87 rho = seg52In0AccY86 rho - Bool.toZMod bit * (seg52In0AccY86 rho - rho 47053) := by
    have hd : rho 47055 = Bool.toZMod bit * (rho 47053 - seg52In0AccY86 rho) := by
      rw [← hbit]
      unfold seg52In0AccY86
      linear_combination -r2664
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47046 * rho 47047 = rho 47056 := by linear_combination r2665
  have hd1 : rho 47046 * rho 47046 = rho 47057 := by linear_combination r2666
  have hd2 : rho 47047 * rho 47047 = rho 47058 := by linear_combination r2667
  have hd3 : rho 47059 * (rho 47047 * rho 47047 + rho 47046 * rho 47046 * (-1)) =
      2 * (rho 47046 * rho 47047) := by
    rw [hd0, hd1, hd2]
    linear_combination r2668
  have hd4 : rho 47060 * (2 - (rho 47047 * rho 47047 + rho 47046 * rho 47046 * (-1))) =
      rho 47047 * rho 47047 - rho 47046 * rho 47046 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2669
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 47046, rho 47047⟩
    ⟨rho 47052, rho 47053⟩ ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 47059, rho 47060⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2670 rho ∧ Seg52.relationRow2671 rho ∧ Seg52.relationRow2672 rho ∧ Seg52.relationRow2673 rho ∧ Seg52.relationRow2674 rho ∧ Seg52.relationRow2675 rho ∧ Seg52.relationRow2676 rho ∧ Seg52.relationRow2677 rho ∧ Seg52.relationRow2678 rho ∧ Seg52.relationRow2679 rho ∧ Seg52.relationRow2680 rho ∧ Seg52.relationRow2681 rho ∧ Seg52.relationRow2682 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682⟩

theorem seg52In0_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45895 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47059, rho 47060⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 47059, rho 47060⟩
        ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 47072, rho 47073⟩ := by
  obtain ⟨r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682⟩ := seg52In0_rows87 rho h
  unfold Seg52.relationRow2670 at r2670

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2670

  unfold Seg52.relationRow2671 at r2671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2671

  unfold Seg52.relationRow2672 at r2672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2672

  unfold Seg52.relationRow2673 at r2673

  unfold Seg52.relationRow2674 at r2674

  unfold Seg52.relationRow2675 at r2675

  unfold Seg52.relationRow2676 at r2676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2676

  unfold Seg52.relationRow2677 at r2677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2677

  unfold Seg52.relationRow2678 at r2678

  unfold Seg52.relationRow2679 at r2679

  unfold Seg52.relationRow2680 at r2680

  unfold Seg52.relationRow2681 at r2681

  unfold Seg52.relationRow2682 at r2682

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX88 rho = seg52In0AccX87 rho + rho 47067 := by
    unfold seg52In0AccX88 seg52In0AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 87]

    ring

  have hnexty : seg52In0AccY88 rho = seg52In0AccY87 rho + rho 47068 := by
    unfold seg52In0AccY88 seg52In0AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 87]

    ring

  have ha0 : (rho 47059 + rho 47060) * (seg52In0AccX87 rho + seg52In0AccY87 rho) = rho 47061 := by
    unfold seg52In0AccX87 seg52In0AccY87
    linear_combination r2670
  have ha1 : rho 47060 * seg52In0AccX87 rho = rho 47062 := by
    unfold seg52In0AccX87
    linear_combination r2671
  have ha2 : rho 47059 * seg52In0AccY87 rho = rho 47063 := by
    unfold seg52In0AccY87
    linear_combination r2672
  have ha3 : 3021 * rho 47062 * rho 47063 = rho 47064 := by
    linear_combination r2673
  have ha4 : rho 47065 * (1 + rho 47064) = rho 47062 + rho 47063 := by
    linear_combination r2674
  have ha5 : rho 47066 * (1 - rho 47064) = rho 47061 - rho 47062 - rho 47063 := by
    linear_combination r2675
  have haddx :
      rho 47065 * (1 + 3021 * (rho 47060 * seg52In0AccX87 rho) * (rho 47059 * seg52In0AccY87 rho)) =
        rho 47060 * seg52In0AccX87 rho + rho 47059 * seg52In0AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47066 * (1 - 3021 * (rho 47060 * seg52In0AccX87 rho) * (rho 47059 * seg52In0AccY87 rho)) =
        (-1) * (rho 47060 * seg52In0AccX87 rho) - rho 47059 * seg52In0AccY87 rho +
          (seg52In0AccY87 rho - seg52In0AccX87 rho * (-1)) * (rho 47059 + rho 47060) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47066 * (1 - rho 47064) = rho 47061 - rho 47062 - rho 47063 := ha5
      _ = (-1) * rho 47062 - rho 47063 + (seg52In0AccY87 rho - seg52In0AccX87 rho * (-1)) *
          (rho 47059 + rho 47060) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX88 rho = seg52In0AccX87 rho - Bool.toZMod bit * (seg52In0AccX87 rho - rho 47065) := by
    have hd : rho 47067 = Bool.toZMod bit * (rho 47065 - seg52In0AccX87 rho) := by
      rw [← hbit]
      unfold seg52In0AccX87
      linear_combination -r2676
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY88 rho = seg52In0AccY87 rho - Bool.toZMod bit * (seg52In0AccY87 rho - rho 47066) := by
    have hd : rho 47068 = Bool.toZMod bit * (rho 47066 - seg52In0AccY87 rho) := by
      rw [← hbit]
      unfold seg52In0AccY87
      linear_combination -r2677
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47059 * rho 47060 = rho 47069 := by linear_combination r2678
  have hd1 : rho 47059 * rho 47059 = rho 47070 := by linear_combination r2679
  have hd2 : rho 47060 * rho 47060 = rho 47071 := by linear_combination r2680
  have hd3 : rho 47072 * (rho 47060 * rho 47060 + rho 47059 * rho 47059 * (-1)) =
      2 * (rho 47059 * rho 47060) := by
    rw [hd0, hd1, hd2]
    linear_combination r2681
  have hd4 : rho 47073 * (2 - (rho 47060 * rho 47060 + rho 47059 * rho 47059 * (-1))) =
      rho 47060 * rho 47060 - rho 47059 * rho 47059 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2682
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 47059, rho 47060⟩
    ⟨rho 47065, rho 47066⟩ ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 47072, rho 47073⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg52In0_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg52In0_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg52In0_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg52In0_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg52In0_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg52In0_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg52In0_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg52In0_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg52In0_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg52In0_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
