import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2472 rho ∧ Seg48.relationRow2473 rho ∧ Seg48.relationRow2474 rho ∧ Seg48.relationRow2475 rho ∧ Seg48.relationRow2476 rho ∧ Seg48.relationRow2477 rho ∧ Seg48.relationRow2478 rho ∧ Seg48.relationRow2479 rho ∧ Seg48.relationRow2480 rho ∧ Seg48.relationRow2481 rho ∧ Seg48.relationRow2482 rho ∧ Seg48.relationRow2483 rho ∧ Seg48.relationRow2484 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479⟩

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨r2480, r2481, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479, r2480, r2481, r2482, r2483, r2484⟩

theorem seg48In0_rung121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33657 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX121 rho, seg48In0AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35229, rho 35230⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX121 rho, seg48In0AccY121 rho⟩ ⟨rho 35229, rho 35230⟩
        ⟨seg48In0AccX122 rho, seg48In0AccY122 rho⟩ ⟨rho 35242, rho 35243⟩ := by
  obtain ⟨r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479, r2480, r2481, r2482, r2483, r2484⟩ := seg48In0_rows121 rho h
  unfold Seg48.relationRow2472 at r2472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2472

  unfold Seg48.relationRow2473 at r2473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2473

  unfold Seg48.relationRow2474 at r2474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2474

  unfold Seg48.relationRow2475 at r2475

  unfold Seg48.relationRow2476 at r2476

  unfold Seg48.relationRow2477 at r2477

  unfold Seg48.relationRow2478 at r2478

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2478

  unfold Seg48.relationRow2479 at r2479

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2479

  unfold Seg48.relationRow2480 at r2480

  unfold Seg48.relationRow2481 at r2481

  unfold Seg48.relationRow2482 at r2482

  unfold Seg48.relationRow2483 at r2483

  unfold Seg48.relationRow2484 at r2484

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX122 rho = seg48In0AccX121 rho + rho 35237 := by
    unfold seg48In0AccX122 seg48In0AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 121]

    ring

  have hnexty : seg48In0AccY122 rho = seg48In0AccY121 rho + rho 35238 := by
    unfold seg48In0AccY122 seg48In0AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 121]

    ring

  have ha0 : (rho 35229 + rho 35230) * (seg48In0AccX121 rho + seg48In0AccY121 rho) = rho 35231 := by
    unfold seg48In0AccX121 seg48In0AccY121
    linear_combination r2472
  have ha1 : rho 35230 * seg48In0AccX121 rho = rho 35232 := by
    unfold seg48In0AccX121
    linear_combination r2473
  have ha2 : rho 35229 * seg48In0AccY121 rho = rho 35233 := by
    unfold seg48In0AccY121
    linear_combination r2474
  have ha3 : 3021 * rho 35232 * rho 35233 = rho 35234 := by
    linear_combination r2475
  have ha4 : rho 35235 * (1 + rho 35234) = rho 35232 + rho 35233 := by
    linear_combination r2476
  have ha5 : rho 35236 * (1 - rho 35234) = rho 35231 - rho 35232 - rho 35233 := by
    linear_combination r2477
  have haddx :
      rho 35235 * (1 + 3021 * (rho 35230 * seg48In0AccX121 rho) * (rho 35229 * seg48In0AccY121 rho)) =
        rho 35230 * seg48In0AccX121 rho + rho 35229 * seg48In0AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35236 * (1 - 3021 * (rho 35230 * seg48In0AccX121 rho) * (rho 35229 * seg48In0AccY121 rho)) =
        (-1) * (rho 35230 * seg48In0AccX121 rho) - rho 35229 * seg48In0AccY121 rho +
          (seg48In0AccY121 rho - seg48In0AccX121 rho * (-1)) * (rho 35229 + rho 35230) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35236 * (1 - rho 35234) = rho 35231 - rho 35232 - rho 35233 := ha5
      _ = (-1) * rho 35232 - rho 35233 + (seg48In0AccY121 rho - seg48In0AccX121 rho * (-1)) *
          (rho 35229 + rho 35230) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX122 rho = seg48In0AccX121 rho - Bool.toZMod bit * (seg48In0AccX121 rho - rho 35235) := by
    have hd : rho 35237 = Bool.toZMod bit * (rho 35235 - seg48In0AccX121 rho) := by
      rw [← hbit]
      unfold seg48In0AccX121
      linear_combination -r2478
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY122 rho = seg48In0AccY121 rho - Bool.toZMod bit * (seg48In0AccY121 rho - rho 35236) := by
    have hd : rho 35238 = Bool.toZMod bit * (rho 35236 - seg48In0AccY121 rho) := by
      rw [← hbit]
      unfold seg48In0AccY121
      linear_combination -r2479
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35229 * rho 35230 = rho 35239 := by linear_combination r2480
  have hd1 : rho 35229 * rho 35229 = rho 35240 := by linear_combination r2481
  have hd2 : rho 35230 * rho 35230 = rho 35241 := by linear_combination r2482
  have hd3 : rho 35242 * (rho 35230 * rho 35230 + rho 35229 * rho 35229 * (-1)) =
      2 * (rho 35229 * rho 35230) := by
    rw [hd0, hd1, hd2]
    linear_combination r2483
  have hd4 : rho 35243 * (2 - (rho 35230 * rho 35230 + rho 35229 * rho 35229 * (-1))) =
      rho 35230 * rho 35230 - rho 35229 * rho 35229 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2484
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX121 rho, seg48In0AccY121 rho⟩ ⟨rho 35229, rho 35230⟩
    ⟨rho 35235, rho 35236⟩ ⟨seg48In0AccX122 rho, seg48In0AccY122 rho⟩ ⟨rho 35242, rho 35243⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2485 rho ∧ Seg48.relationRow2486 rho ∧ Seg48.relationRow2487 rho ∧ Seg48.relationRow2488 rho ∧ Seg48.relationRow2489 rho ∧ Seg48.relationRow2490 rho ∧ Seg48.relationRow2491 rho ∧ Seg48.relationRow2492 rho ∧ Seg48.relationRow2493 rho ∧ Seg48.relationRow2494 rho ∧ Seg48.relationRow2495 rho ∧ Seg48.relationRow2496 rho ∧ Seg48.relationRow2497 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497⟩

theorem seg48In0_rung122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33658 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX122 rho, seg48In0AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35242, rho 35243⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX122 rho, seg48In0AccY122 rho⟩ ⟨rho 35242, rho 35243⟩
        ⟨seg48In0AccX123 rho, seg48In0AccY123 rho⟩ ⟨rho 35255, rho 35256⟩ := by
  obtain ⟨r2485, r2486, r2487, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497⟩ := seg48In0_rows122 rho h
  unfold Seg48.relationRow2485 at r2485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2485

  unfold Seg48.relationRow2486 at r2486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2486

  unfold Seg48.relationRow2487 at r2487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2487

  unfold Seg48.relationRow2488 at r2488

  unfold Seg48.relationRow2489 at r2489

  unfold Seg48.relationRow2490 at r2490

  unfold Seg48.relationRow2491 at r2491

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2491

  unfold Seg48.relationRow2492 at r2492

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2492

  unfold Seg48.relationRow2493 at r2493

  unfold Seg48.relationRow2494 at r2494

  unfold Seg48.relationRow2495 at r2495

  unfold Seg48.relationRow2496 at r2496

  unfold Seg48.relationRow2497 at r2497

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX123 rho = seg48In0AccX122 rho + rho 35250 := by
    unfold seg48In0AccX123 seg48In0AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 122]

    ring

  have hnexty : seg48In0AccY123 rho = seg48In0AccY122 rho + rho 35251 := by
    unfold seg48In0AccY123 seg48In0AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 122]

    ring

  have ha0 : (rho 35242 + rho 35243) * (seg48In0AccX122 rho + seg48In0AccY122 rho) = rho 35244 := by
    unfold seg48In0AccX122 seg48In0AccY122
    linear_combination r2485
  have ha1 : rho 35243 * seg48In0AccX122 rho = rho 35245 := by
    unfold seg48In0AccX122
    linear_combination r2486
  have ha2 : rho 35242 * seg48In0AccY122 rho = rho 35246 := by
    unfold seg48In0AccY122
    linear_combination r2487
  have ha3 : 3021 * rho 35245 * rho 35246 = rho 35247 := by
    linear_combination r2488
  have ha4 : rho 35248 * (1 + rho 35247) = rho 35245 + rho 35246 := by
    linear_combination r2489
  have ha5 : rho 35249 * (1 - rho 35247) = rho 35244 - rho 35245 - rho 35246 := by
    linear_combination r2490
  have haddx :
      rho 35248 * (1 + 3021 * (rho 35243 * seg48In0AccX122 rho) * (rho 35242 * seg48In0AccY122 rho)) =
        rho 35243 * seg48In0AccX122 rho + rho 35242 * seg48In0AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35249 * (1 - 3021 * (rho 35243 * seg48In0AccX122 rho) * (rho 35242 * seg48In0AccY122 rho)) =
        (-1) * (rho 35243 * seg48In0AccX122 rho) - rho 35242 * seg48In0AccY122 rho +
          (seg48In0AccY122 rho - seg48In0AccX122 rho * (-1)) * (rho 35242 + rho 35243) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35249 * (1 - rho 35247) = rho 35244 - rho 35245 - rho 35246 := ha5
      _ = (-1) * rho 35245 - rho 35246 + (seg48In0AccY122 rho - seg48In0AccX122 rho * (-1)) *
          (rho 35242 + rho 35243) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX123 rho = seg48In0AccX122 rho - Bool.toZMod bit * (seg48In0AccX122 rho - rho 35248) := by
    have hd : rho 35250 = Bool.toZMod bit * (rho 35248 - seg48In0AccX122 rho) := by
      rw [← hbit]
      unfold seg48In0AccX122
      linear_combination -r2491
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY123 rho = seg48In0AccY122 rho - Bool.toZMod bit * (seg48In0AccY122 rho - rho 35249) := by
    have hd : rho 35251 = Bool.toZMod bit * (rho 35249 - seg48In0AccY122 rho) := by
      rw [← hbit]
      unfold seg48In0AccY122
      linear_combination -r2492
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35242 * rho 35243 = rho 35252 := by linear_combination r2493
  have hd1 : rho 35242 * rho 35242 = rho 35253 := by linear_combination r2494
  have hd2 : rho 35243 * rho 35243 = rho 35254 := by linear_combination r2495
  have hd3 : rho 35255 * (rho 35243 * rho 35243 + rho 35242 * rho 35242 * (-1)) =
      2 * (rho 35242 * rho 35243) := by
    rw [hd0, hd1, hd2]
    linear_combination r2496
  have hd4 : rho 35256 * (2 - (rho 35243 * rho 35243 + rho 35242 * rho 35242 * (-1))) =
      rho 35243 * rho 35243 - rho 35242 * rho 35242 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2497
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX122 rho, seg48In0AccY122 rho⟩ ⟨rho 35242, rho 35243⟩
    ⟨rho 35248, rho 35249⟩ ⟨seg48In0AccX123 rho, seg48In0AccY123 rho⟩ ⟨rho 35255, rho 35256⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2498 rho ∧ Seg48.relationRow2499 rho ∧ Seg48.relationRow2500 rho ∧ Seg48.relationRow2501 rho ∧ Seg48.relationRow2502 rho ∧ Seg48.relationRow2503 rho ∧ Seg48.relationRow2504 rho ∧ Seg48.relationRow2505 rho ∧ Seg48.relationRow2506 rho ∧ Seg48.relationRow2507 rho ∧ Seg48.relationRow2508 rho ∧ Seg48.relationRow2509 rho ∧ Seg48.relationRow2510 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510⟩

theorem seg48In0_rung123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33659 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX123 rho, seg48In0AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35255, rho 35256⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX123 rho, seg48In0AccY123 rho⟩ ⟨rho 35255, rho 35256⟩
        ⟨seg48In0AccX124 rho, seg48In0AccY124 rho⟩ ⟨rho 35268, rho 35269⟩ := by
  obtain ⟨r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510⟩ := seg48In0_rows123 rho h
  unfold Seg48.relationRow2498 at r2498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2498

  unfold Seg48.relationRow2499 at r2499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2499

  unfold Seg48.relationRow2500 at r2500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2500

  unfold Seg48.relationRow2501 at r2501

  unfold Seg48.relationRow2502 at r2502

  unfold Seg48.relationRow2503 at r2503

  unfold Seg48.relationRow2504 at r2504

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2504

  unfold Seg48.relationRow2505 at r2505

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2505

  unfold Seg48.relationRow2506 at r2506

  unfold Seg48.relationRow2507 at r2507

  unfold Seg48.relationRow2508 at r2508

  unfold Seg48.relationRow2509 at r2509

  unfold Seg48.relationRow2510 at r2510

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX124 rho = seg48In0AccX123 rho + rho 35263 := by
    unfold seg48In0AccX124 seg48In0AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 123]

    ring

  have hnexty : seg48In0AccY124 rho = seg48In0AccY123 rho + rho 35264 := by
    unfold seg48In0AccY124 seg48In0AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 123]

    ring

  have ha0 : (rho 35255 + rho 35256) * (seg48In0AccX123 rho + seg48In0AccY123 rho) = rho 35257 := by
    unfold seg48In0AccX123 seg48In0AccY123
    linear_combination r2498
  have ha1 : rho 35256 * seg48In0AccX123 rho = rho 35258 := by
    unfold seg48In0AccX123
    linear_combination r2499
  have ha2 : rho 35255 * seg48In0AccY123 rho = rho 35259 := by
    unfold seg48In0AccY123
    linear_combination r2500
  have ha3 : 3021 * rho 35258 * rho 35259 = rho 35260 := by
    linear_combination r2501
  have ha4 : rho 35261 * (1 + rho 35260) = rho 35258 + rho 35259 := by
    linear_combination r2502
  have ha5 : rho 35262 * (1 - rho 35260) = rho 35257 - rho 35258 - rho 35259 := by
    linear_combination r2503
  have haddx :
      rho 35261 * (1 + 3021 * (rho 35256 * seg48In0AccX123 rho) * (rho 35255 * seg48In0AccY123 rho)) =
        rho 35256 * seg48In0AccX123 rho + rho 35255 * seg48In0AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35262 * (1 - 3021 * (rho 35256 * seg48In0AccX123 rho) * (rho 35255 * seg48In0AccY123 rho)) =
        (-1) * (rho 35256 * seg48In0AccX123 rho) - rho 35255 * seg48In0AccY123 rho +
          (seg48In0AccY123 rho - seg48In0AccX123 rho * (-1)) * (rho 35255 + rho 35256) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35262 * (1 - rho 35260) = rho 35257 - rho 35258 - rho 35259 := ha5
      _ = (-1) * rho 35258 - rho 35259 + (seg48In0AccY123 rho - seg48In0AccX123 rho * (-1)) *
          (rho 35255 + rho 35256) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX124 rho = seg48In0AccX123 rho - Bool.toZMod bit * (seg48In0AccX123 rho - rho 35261) := by
    have hd : rho 35263 = Bool.toZMod bit * (rho 35261 - seg48In0AccX123 rho) := by
      rw [← hbit]
      unfold seg48In0AccX123
      linear_combination -r2504
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY124 rho = seg48In0AccY123 rho - Bool.toZMod bit * (seg48In0AccY123 rho - rho 35262) := by
    have hd : rho 35264 = Bool.toZMod bit * (rho 35262 - seg48In0AccY123 rho) := by
      rw [← hbit]
      unfold seg48In0AccY123
      linear_combination -r2505
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35255 * rho 35256 = rho 35265 := by linear_combination r2506
  have hd1 : rho 35255 * rho 35255 = rho 35266 := by linear_combination r2507
  have hd2 : rho 35256 * rho 35256 = rho 35267 := by linear_combination r2508
  have hd3 : rho 35268 * (rho 35256 * rho 35256 + rho 35255 * rho 35255 * (-1)) =
      2 * (rho 35255 * rho 35256) := by
    rw [hd0, hd1, hd2]
    linear_combination r2509
  have hd4 : rho 35269 * (2 - (rho 35256 * rho 35256 + rho 35255 * rho 35255 * (-1))) =
      rho 35256 * rho 35256 - rho 35255 * rho 35255 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2510
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX123 rho, seg48In0AccY123 rho⟩ ⟨rho 35255, rho 35256⟩
    ⟨rho 35261, rho 35262⟩ ⟨seg48In0AccX124 rho, seg48In0AccY124 rho⟩ ⟨rho 35268, rho 35269⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2511 rho ∧ Seg48.relationRow2512 rho ∧ Seg48.relationRow2513 rho ∧ Seg48.relationRow2514 rho ∧ Seg48.relationRow2515 rho ∧ Seg48.relationRow2516 rho ∧ Seg48.relationRow2517 rho ∧ Seg48.relationRow2518 rho ∧ Seg48.relationRow2519 rho ∧ Seg48.relationRow2520 rho ∧ Seg48.relationRow2521 rho ∧ Seg48.relationRow2522 rho ∧ Seg48.relationRow2523 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523⟩

theorem seg48In0_rung124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33660 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX124 rho, seg48In0AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35268, rho 35269⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX124 rho, seg48In0AccY124 rho⟩ ⟨rho 35268, rho 35269⟩
        ⟨seg48In0AccX125 rho, seg48In0AccY125 rho⟩ ⟨rho 35281, rho 35282⟩ := by
  obtain ⟨r2511, r2512, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523⟩ := seg48In0_rows124 rho h
  unfold Seg48.relationRow2511 at r2511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2511

  unfold Seg48.relationRow2512 at r2512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2512

  unfold Seg48.relationRow2513 at r2513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2513

  unfold Seg48.relationRow2514 at r2514

  unfold Seg48.relationRow2515 at r2515

  unfold Seg48.relationRow2516 at r2516

  unfold Seg48.relationRow2517 at r2517

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2517

  unfold Seg48.relationRow2518 at r2518

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2518

  unfold Seg48.relationRow2519 at r2519

  unfold Seg48.relationRow2520 at r2520

  unfold Seg48.relationRow2521 at r2521

  unfold Seg48.relationRow2522 at r2522

  unfold Seg48.relationRow2523 at r2523

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX125 rho = seg48In0AccX124 rho + rho 35276 := by
    unfold seg48In0AccX125 seg48In0AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 124]

    ring

  have hnexty : seg48In0AccY125 rho = seg48In0AccY124 rho + rho 35277 := by
    unfold seg48In0AccY125 seg48In0AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 124]

    ring

  have ha0 : (rho 35268 + rho 35269) * (seg48In0AccX124 rho + seg48In0AccY124 rho) = rho 35270 := by
    unfold seg48In0AccX124 seg48In0AccY124
    linear_combination r2511
  have ha1 : rho 35269 * seg48In0AccX124 rho = rho 35271 := by
    unfold seg48In0AccX124
    linear_combination r2512
  have ha2 : rho 35268 * seg48In0AccY124 rho = rho 35272 := by
    unfold seg48In0AccY124
    linear_combination r2513
  have ha3 : 3021 * rho 35271 * rho 35272 = rho 35273 := by
    linear_combination r2514
  have ha4 : rho 35274 * (1 + rho 35273) = rho 35271 + rho 35272 := by
    linear_combination r2515
  have ha5 : rho 35275 * (1 - rho 35273) = rho 35270 - rho 35271 - rho 35272 := by
    linear_combination r2516
  have haddx :
      rho 35274 * (1 + 3021 * (rho 35269 * seg48In0AccX124 rho) * (rho 35268 * seg48In0AccY124 rho)) =
        rho 35269 * seg48In0AccX124 rho + rho 35268 * seg48In0AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35275 * (1 - 3021 * (rho 35269 * seg48In0AccX124 rho) * (rho 35268 * seg48In0AccY124 rho)) =
        (-1) * (rho 35269 * seg48In0AccX124 rho) - rho 35268 * seg48In0AccY124 rho +
          (seg48In0AccY124 rho - seg48In0AccX124 rho * (-1)) * (rho 35268 + rho 35269) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35275 * (1 - rho 35273) = rho 35270 - rho 35271 - rho 35272 := ha5
      _ = (-1) * rho 35271 - rho 35272 + (seg48In0AccY124 rho - seg48In0AccX124 rho * (-1)) *
          (rho 35268 + rho 35269) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX125 rho = seg48In0AccX124 rho - Bool.toZMod bit * (seg48In0AccX124 rho - rho 35274) := by
    have hd : rho 35276 = Bool.toZMod bit * (rho 35274 - seg48In0AccX124 rho) := by
      rw [← hbit]
      unfold seg48In0AccX124
      linear_combination -r2517
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY125 rho = seg48In0AccY124 rho - Bool.toZMod bit * (seg48In0AccY124 rho - rho 35275) := by
    have hd : rho 35277 = Bool.toZMod bit * (rho 35275 - seg48In0AccY124 rho) := by
      rw [← hbit]
      unfold seg48In0AccY124
      linear_combination -r2518
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35268 * rho 35269 = rho 35278 := by linear_combination r2519
  have hd1 : rho 35268 * rho 35268 = rho 35279 := by linear_combination r2520
  have hd2 : rho 35269 * rho 35269 = rho 35280 := by linear_combination r2521
  have hd3 : rho 35281 * (rho 35269 * rho 35269 + rho 35268 * rho 35268 * (-1)) =
      2 * (rho 35268 * rho 35269) := by
    rw [hd0, hd1, hd2]
    linear_combination r2522
  have hd4 : rho 35282 * (2 - (rho 35269 * rho 35269 + rho 35268 * rho 35268 * (-1))) =
      rho 35269 * rho 35269 - rho 35268 * rho 35268 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2523
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX124 rho, seg48In0AccY124 rho⟩ ⟨rho 35268, rho 35269⟩
    ⟨rho 35274, rho 35275⟩ ⟨seg48In0AccX125 rho, seg48In0AccY125 rho⟩ ⟨rho 35281, rho 35282⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2524 rho ∧ Seg48.relationRow2525 rho ∧ Seg48.relationRow2526 rho ∧ Seg48.relationRow2527 rho ∧ Seg48.relationRow2528 rho ∧ Seg48.relationRow2529 rho ∧ Seg48.relationRow2530 rho ∧ Seg48.relationRow2531 rho ∧ Seg48.relationRow2532 rho ∧ Seg48.relationRow2533 rho ∧ Seg48.relationRow2534 rho ∧ Seg48.relationRow2535 rho ∧ Seg48.relationRow2536 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536⟩

theorem seg48In0_rung125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33661 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX125 rho, seg48In0AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35281, rho 35282⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX125 rho, seg48In0AccY125 rho⟩ ⟨rho 35281, rho 35282⟩
        ⟨seg48In0AccX126 rho, seg48In0AccY126 rho⟩ ⟨rho 35294, rho 35295⟩ := by
  obtain ⟨r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536⟩ := seg48In0_rows125 rho h
  unfold Seg48.relationRow2524 at r2524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2524

  unfold Seg48.relationRow2525 at r2525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2525

  unfold Seg48.relationRow2526 at r2526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2526

  unfold Seg48.relationRow2527 at r2527

  unfold Seg48.relationRow2528 at r2528

  unfold Seg48.relationRow2529 at r2529

  unfold Seg48.relationRow2530 at r2530

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2530

  unfold Seg48.relationRow2531 at r2531

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2531

  unfold Seg48.relationRow2532 at r2532

  unfold Seg48.relationRow2533 at r2533

  unfold Seg48.relationRow2534 at r2534

  unfold Seg48.relationRow2535 at r2535

  unfold Seg48.relationRow2536 at r2536

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX126 rho = seg48In0AccX125 rho + rho 35289 := by
    unfold seg48In0AccX126 seg48In0AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 125]

    ring

  have hnexty : seg48In0AccY126 rho = seg48In0AccY125 rho + rho 35290 := by
    unfold seg48In0AccY126 seg48In0AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 125]

    ring

  have ha0 : (rho 35281 + rho 35282) * (seg48In0AccX125 rho + seg48In0AccY125 rho) = rho 35283 := by
    unfold seg48In0AccX125 seg48In0AccY125
    linear_combination r2524
  have ha1 : rho 35282 * seg48In0AccX125 rho = rho 35284 := by
    unfold seg48In0AccX125
    linear_combination r2525
  have ha2 : rho 35281 * seg48In0AccY125 rho = rho 35285 := by
    unfold seg48In0AccY125
    linear_combination r2526
  have ha3 : 3021 * rho 35284 * rho 35285 = rho 35286 := by
    linear_combination r2527
  have ha4 : rho 35287 * (1 + rho 35286) = rho 35284 + rho 35285 := by
    linear_combination r2528
  have ha5 : rho 35288 * (1 - rho 35286) = rho 35283 - rho 35284 - rho 35285 := by
    linear_combination r2529
  have haddx :
      rho 35287 * (1 + 3021 * (rho 35282 * seg48In0AccX125 rho) * (rho 35281 * seg48In0AccY125 rho)) =
        rho 35282 * seg48In0AccX125 rho + rho 35281 * seg48In0AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35288 * (1 - 3021 * (rho 35282 * seg48In0AccX125 rho) * (rho 35281 * seg48In0AccY125 rho)) =
        (-1) * (rho 35282 * seg48In0AccX125 rho) - rho 35281 * seg48In0AccY125 rho +
          (seg48In0AccY125 rho - seg48In0AccX125 rho * (-1)) * (rho 35281 + rho 35282) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35288 * (1 - rho 35286) = rho 35283 - rho 35284 - rho 35285 := ha5
      _ = (-1) * rho 35284 - rho 35285 + (seg48In0AccY125 rho - seg48In0AccX125 rho * (-1)) *
          (rho 35281 + rho 35282) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX126 rho = seg48In0AccX125 rho - Bool.toZMod bit * (seg48In0AccX125 rho - rho 35287) := by
    have hd : rho 35289 = Bool.toZMod bit * (rho 35287 - seg48In0AccX125 rho) := by
      rw [← hbit]
      unfold seg48In0AccX125
      linear_combination -r2530
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY126 rho = seg48In0AccY125 rho - Bool.toZMod bit * (seg48In0AccY125 rho - rho 35288) := by
    have hd : rho 35290 = Bool.toZMod bit * (rho 35288 - seg48In0AccY125 rho) := by
      rw [← hbit]
      unfold seg48In0AccY125
      linear_combination -r2531
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35281 * rho 35282 = rho 35291 := by linear_combination r2532
  have hd1 : rho 35281 * rho 35281 = rho 35292 := by linear_combination r2533
  have hd2 : rho 35282 * rho 35282 = rho 35293 := by linear_combination r2534
  have hd3 : rho 35294 * (rho 35282 * rho 35282 + rho 35281 * rho 35281 * (-1)) =
      2 * (rho 35281 * rho 35282) := by
    rw [hd0, hd1, hd2]
    linear_combination r2535
  have hd4 : rho 35295 * (2 - (rho 35282 * rho 35282 + rho 35281 * rho 35281 * (-1))) =
      rho 35282 * rho 35282 - rho 35281 * rho 35281 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2536
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX125 rho, seg48In0AccY125 rho⟩ ⟨rho 35281, rho 35282⟩
    ⟨rho 35287, rho 35288⟩ ⟨seg48In0AccX126 rho, seg48In0AccY126 rho⟩ ⟨rho 35294, rho 35295⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2537 rho ∧ Seg48.relationRow2538 rho ∧ Seg48.relationRow2539 rho ∧ Seg48.relationRow2540 rho ∧ Seg48.relationRow2541 rho ∧ Seg48.relationRow2542 rho ∧ Seg48.relationRow2543 rho ∧ Seg48.relationRow2544 rho ∧ Seg48.relationRow2545 rho ∧ Seg48.relationRow2546 rho ∧ Seg48.relationRow2547 rho ∧ Seg48.relationRow2548 rho ∧ Seg48.relationRow2549 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549⟩

theorem seg48In0_rung126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33662 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX126 rho, seg48In0AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35294, rho 35295⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX126 rho, seg48In0AccY126 rho⟩ ⟨rho 35294, rho 35295⟩
        ⟨seg48In0AccX127 rho, seg48In0AccY127 rho⟩ ⟨rho 35307, rho 35308⟩ := by
  obtain ⟨r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549⟩ := seg48In0_rows126 rho h
  unfold Seg48.relationRow2537 at r2537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2537

  unfold Seg48.relationRow2538 at r2538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2538

  unfold Seg48.relationRow2539 at r2539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2539

  unfold Seg48.relationRow2540 at r2540

  unfold Seg48.relationRow2541 at r2541

  unfold Seg48.relationRow2542 at r2542

  unfold Seg48.relationRow2543 at r2543

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2543

  unfold Seg48.relationRow2544 at r2544

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2544

  unfold Seg48.relationRow2545 at r2545

  unfold Seg48.relationRow2546 at r2546

  unfold Seg48.relationRow2547 at r2547

  unfold Seg48.relationRow2548 at r2548

  unfold Seg48.relationRow2549 at r2549

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX127 rho = seg48In0AccX126 rho + rho 35302 := by
    unfold seg48In0AccX127 seg48In0AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 126]

    ring

  have hnexty : seg48In0AccY127 rho = seg48In0AccY126 rho + rho 35303 := by
    unfold seg48In0AccY127 seg48In0AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 126]

    ring

  have ha0 : (rho 35294 + rho 35295) * (seg48In0AccX126 rho + seg48In0AccY126 rho) = rho 35296 := by
    unfold seg48In0AccX126 seg48In0AccY126
    linear_combination r2537
  have ha1 : rho 35295 * seg48In0AccX126 rho = rho 35297 := by
    unfold seg48In0AccX126
    linear_combination r2538
  have ha2 : rho 35294 * seg48In0AccY126 rho = rho 35298 := by
    unfold seg48In0AccY126
    linear_combination r2539
  have ha3 : 3021 * rho 35297 * rho 35298 = rho 35299 := by
    linear_combination r2540
  have ha4 : rho 35300 * (1 + rho 35299) = rho 35297 + rho 35298 := by
    linear_combination r2541
  have ha5 : rho 35301 * (1 - rho 35299) = rho 35296 - rho 35297 - rho 35298 := by
    linear_combination r2542
  have haddx :
      rho 35300 * (1 + 3021 * (rho 35295 * seg48In0AccX126 rho) * (rho 35294 * seg48In0AccY126 rho)) =
        rho 35295 * seg48In0AccX126 rho + rho 35294 * seg48In0AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35301 * (1 - 3021 * (rho 35295 * seg48In0AccX126 rho) * (rho 35294 * seg48In0AccY126 rho)) =
        (-1) * (rho 35295 * seg48In0AccX126 rho) - rho 35294 * seg48In0AccY126 rho +
          (seg48In0AccY126 rho - seg48In0AccX126 rho * (-1)) * (rho 35294 + rho 35295) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35301 * (1 - rho 35299) = rho 35296 - rho 35297 - rho 35298 := ha5
      _ = (-1) * rho 35297 - rho 35298 + (seg48In0AccY126 rho - seg48In0AccX126 rho * (-1)) *
          (rho 35294 + rho 35295) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX127 rho = seg48In0AccX126 rho - Bool.toZMod bit * (seg48In0AccX126 rho - rho 35300) := by
    have hd : rho 35302 = Bool.toZMod bit * (rho 35300 - seg48In0AccX126 rho) := by
      rw [← hbit]
      unfold seg48In0AccX126
      linear_combination -r2543
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY127 rho = seg48In0AccY126 rho - Bool.toZMod bit * (seg48In0AccY126 rho - rho 35301) := by
    have hd : rho 35303 = Bool.toZMod bit * (rho 35301 - seg48In0AccY126 rho) := by
      rw [← hbit]
      unfold seg48In0AccY126
      linear_combination -r2544
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35294 * rho 35295 = rho 35304 := by linear_combination r2545
  have hd1 : rho 35294 * rho 35294 = rho 35305 := by linear_combination r2546
  have hd2 : rho 35295 * rho 35295 = rho 35306 := by linear_combination r2547
  have hd3 : rho 35307 * (rho 35295 * rho 35295 + rho 35294 * rho 35294 * (-1)) =
      2 * (rho 35294 * rho 35295) := by
    rw [hd0, hd1, hd2]
    linear_combination r2548
  have hd4 : rho 35308 * (2 - (rho 35295 * rho 35295 + rho 35294 * rho 35294 * (-1))) =
      rho 35295 * rho 35295 - rho 35294 * rho 35294 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2549
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX126 rho, seg48In0AccY126 rho⟩ ⟨rho 35294, rho 35295⟩
    ⟨rho 35300, rho 35301⟩ ⟨seg48In0AccX127 rho, seg48In0AccY127 rho⟩ ⟨rho 35307, rho 35308⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2550 rho ∧ Seg48.relationRow2551 rho ∧ Seg48.relationRow2552 rho ∧ Seg48.relationRow2553 rho ∧ Seg48.relationRow2554 rho ∧ Seg48.relationRow2555 rho ∧ Seg48.relationRow2556 rho ∧ Seg48.relationRow2557 rho ∧ Seg48.relationRow2558 rho ∧ Seg48.relationRow2559 rho ∧ Seg48.relationRow2560 rho ∧ Seg48.relationRow2561 rho ∧ Seg48.relationRow2562 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart31 at p31

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559⟩

  unfold Seg48.relationPart32 at p32

  rcases p32 with ⟨r2560, r2561, r2562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559, r2560, r2561, r2562⟩

theorem seg48In0_rung127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33663 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX127 rho, seg48In0AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35307, rho 35308⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX127 rho, seg48In0AccY127 rho⟩ ⟨rho 35307, rho 35308⟩
        ⟨seg48In0AccX128 rho, seg48In0AccY128 rho⟩ ⟨rho 35320, rho 35321⟩ := by
  obtain ⟨r2550, r2551, r2552, r2553, r2554, r2555, r2556, r2557, r2558, r2559, r2560, r2561, r2562⟩ := seg48In0_rows127 rho h
  unfold Seg48.relationRow2550 at r2550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2550

  unfold Seg48.relationRow2551 at r2551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2551

  unfold Seg48.relationRow2552 at r2552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2552

  unfold Seg48.relationRow2553 at r2553

  unfold Seg48.relationRow2554 at r2554

  unfold Seg48.relationRow2555 at r2555

  unfold Seg48.relationRow2556 at r2556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2556

  unfold Seg48.relationRow2557 at r2557

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2557

  unfold Seg48.relationRow2558 at r2558

  unfold Seg48.relationRow2559 at r2559

  unfold Seg48.relationRow2560 at r2560

  unfold Seg48.relationRow2561 at r2561

  unfold Seg48.relationRow2562 at r2562

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX128 rho = seg48In0AccX127 rho + rho 35315 := by
    unfold seg48In0AccX128 seg48In0AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 127]

    ring

  have hnexty : seg48In0AccY128 rho = seg48In0AccY127 rho + rho 35316 := by
    unfold seg48In0AccY128 seg48In0AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 127]

    ring

  have ha0 : (rho 35307 + rho 35308) * (seg48In0AccX127 rho + seg48In0AccY127 rho) = rho 35309 := by
    unfold seg48In0AccX127 seg48In0AccY127
    linear_combination r2550
  have ha1 : rho 35308 * seg48In0AccX127 rho = rho 35310 := by
    unfold seg48In0AccX127
    linear_combination r2551
  have ha2 : rho 35307 * seg48In0AccY127 rho = rho 35311 := by
    unfold seg48In0AccY127
    linear_combination r2552
  have ha3 : 3021 * rho 35310 * rho 35311 = rho 35312 := by
    linear_combination r2553
  have ha4 : rho 35313 * (1 + rho 35312) = rho 35310 + rho 35311 := by
    linear_combination r2554
  have ha5 : rho 35314 * (1 - rho 35312) = rho 35309 - rho 35310 - rho 35311 := by
    linear_combination r2555
  have haddx :
      rho 35313 * (1 + 3021 * (rho 35308 * seg48In0AccX127 rho) * (rho 35307 * seg48In0AccY127 rho)) =
        rho 35308 * seg48In0AccX127 rho + rho 35307 * seg48In0AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35314 * (1 - 3021 * (rho 35308 * seg48In0AccX127 rho) * (rho 35307 * seg48In0AccY127 rho)) =
        (-1) * (rho 35308 * seg48In0AccX127 rho) - rho 35307 * seg48In0AccY127 rho +
          (seg48In0AccY127 rho - seg48In0AccX127 rho * (-1)) * (rho 35307 + rho 35308) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35314 * (1 - rho 35312) = rho 35309 - rho 35310 - rho 35311 := ha5
      _ = (-1) * rho 35310 - rho 35311 + (seg48In0AccY127 rho - seg48In0AccX127 rho * (-1)) *
          (rho 35307 + rho 35308) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX128 rho = seg48In0AccX127 rho - Bool.toZMod bit * (seg48In0AccX127 rho - rho 35313) := by
    have hd : rho 35315 = Bool.toZMod bit * (rho 35313 - seg48In0AccX127 rho) := by
      rw [← hbit]
      unfold seg48In0AccX127
      linear_combination -r2556
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY128 rho = seg48In0AccY127 rho - Bool.toZMod bit * (seg48In0AccY127 rho - rho 35314) := by
    have hd : rho 35316 = Bool.toZMod bit * (rho 35314 - seg48In0AccY127 rho) := by
      rw [← hbit]
      unfold seg48In0AccY127
      linear_combination -r2557
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35307 * rho 35308 = rho 35317 := by linear_combination r2558
  have hd1 : rho 35307 * rho 35307 = rho 35318 := by linear_combination r2559
  have hd2 : rho 35308 * rho 35308 = rho 35319 := by linear_combination r2560
  have hd3 : rho 35320 * (rho 35308 * rho 35308 + rho 35307 * rho 35307 * (-1)) =
      2 * (rho 35307 * rho 35308) := by
    rw [hd0, hd1, hd2]
    linear_combination r2561
  have hd4 : rho 35321 * (2 - (rho 35308 * rho 35308 + rho 35307 * rho 35307 * (-1))) =
      rho 35308 * rho 35308 - rho 35307 * rho 35307 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2562
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX127 rho, seg48In0AccY127 rho⟩ ⟨rho 35307, rho 35308⟩
    ⟨rho 35313, rho 35314⟩ ⟨seg48In0AccX128 rho, seg48In0AccY128 rho⟩ ⟨rho 35320, rho 35321⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c11 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg48In0_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg48In0_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg48In0_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg48In0_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg48In0_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg48In0_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
