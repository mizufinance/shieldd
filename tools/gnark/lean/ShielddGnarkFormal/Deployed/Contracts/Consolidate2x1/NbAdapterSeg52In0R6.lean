import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2397 rho ∧ Seg52.relationRow2398 rho ∧ Seg52.relationRow2399 rho ∧ Seg52.relationRow2400 rho ∧ Seg52.relationRow2401 rho ∧ Seg52.relationRow2402 rho ∧ Seg52.relationRow2403 rho ∧ Seg52.relationRow2404 rho ∧ Seg52.relationRow2405 rho ∧ Seg52.relationRow2406 rho ∧ Seg52.relationRow2407 rho ∧ Seg52.relationRow2408 rho ∧ Seg52.relationRow2409 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p29,

    p30, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2397, r2398, r2399⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨r2400, r2401, r2402, r2403, r2404, r2405, r2406, r2407, r2408, r2409, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2397, r2398, r2399, r2400, r2401, r2402, r2403, r2404, r2405, r2406, r2407, r2408, r2409⟩

theorem seg52In0_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45874 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46786, rho 46787⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46786, rho 46787⟩
        ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46799, rho 46800⟩ := by
  obtain ⟨r2397, r2398, r2399, r2400, r2401, r2402, r2403, r2404, r2405, r2406, r2407, r2408, r2409⟩ := seg52In0_rows66 rho h
  unfold Seg52.relationRow2397 at r2397

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2397

  unfold Seg52.relationRow2398 at r2398

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2398

  unfold Seg52.relationRow2399 at r2399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2399

  unfold Seg52.relationRow2400 at r2400

  unfold Seg52.relationRow2401 at r2401

  unfold Seg52.relationRow2402 at r2402

  unfold Seg52.relationRow2403 at r2403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2403

  unfold Seg52.relationRow2404 at r2404

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2404

  unfold Seg52.relationRow2405 at r2405

  unfold Seg52.relationRow2406 at r2406

  unfold Seg52.relationRow2407 at r2407

  unfold Seg52.relationRow2408 at r2408

  unfold Seg52.relationRow2409 at r2409

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX67 rho = seg52In0AccX66 rho + rho 46794 := by
    unfold seg52In0AccX67 seg52In0AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 66]

    ring

  have hnexty : seg52In0AccY67 rho = seg52In0AccY66 rho + rho 46795 := by
    unfold seg52In0AccY67 seg52In0AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 66]

    ring

  have ha0 : (rho 46786 + rho 46787) * (seg52In0AccX66 rho + seg52In0AccY66 rho) = rho 46788 := by
    unfold seg52In0AccX66 seg52In0AccY66
    linear_combination r2397
  have ha1 : rho 46787 * seg52In0AccX66 rho = rho 46789 := by
    unfold seg52In0AccX66
    linear_combination r2398
  have ha2 : rho 46786 * seg52In0AccY66 rho = rho 46790 := by
    unfold seg52In0AccY66
    linear_combination r2399
  have ha3 : 3021 * rho 46789 * rho 46790 = rho 46791 := by
    linear_combination r2400
  have ha4 : rho 46792 * (1 + rho 46791) = rho 46789 + rho 46790 := by
    linear_combination r2401
  have ha5 : rho 46793 * (1 - rho 46791) = rho 46788 - rho 46789 - rho 46790 := by
    linear_combination r2402
  have haddx :
      rho 46792 * (1 + 3021 * (rho 46787 * seg52In0AccX66 rho) * (rho 46786 * seg52In0AccY66 rho)) =
        rho 46787 * seg52In0AccX66 rho + rho 46786 * seg52In0AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46793 * (1 - 3021 * (rho 46787 * seg52In0AccX66 rho) * (rho 46786 * seg52In0AccY66 rho)) =
        (-1) * (rho 46787 * seg52In0AccX66 rho) - rho 46786 * seg52In0AccY66 rho +
          (seg52In0AccY66 rho - seg52In0AccX66 rho * (-1)) * (rho 46786 + rho 46787) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46793 * (1 - rho 46791) = rho 46788 - rho 46789 - rho 46790 := ha5
      _ = (-1) * rho 46789 - rho 46790 + (seg52In0AccY66 rho - seg52In0AccX66 rho * (-1)) *
          (rho 46786 + rho 46787) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX67 rho = seg52In0AccX66 rho - Bool.toZMod bit * (seg52In0AccX66 rho - rho 46792) := by
    have hd : rho 46794 = Bool.toZMod bit * (rho 46792 - seg52In0AccX66 rho) := by
      rw [← hbit]
      unfold seg52In0AccX66
      linear_combination -r2403
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY67 rho = seg52In0AccY66 rho - Bool.toZMod bit * (seg52In0AccY66 rho - rho 46793) := by
    have hd : rho 46795 = Bool.toZMod bit * (rho 46793 - seg52In0AccY66 rho) := by
      rw [← hbit]
      unfold seg52In0AccY66
      linear_combination -r2404
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46786 * rho 46787 = rho 46796 := by linear_combination r2405
  have hd1 : rho 46786 * rho 46786 = rho 46797 := by linear_combination r2406
  have hd2 : rho 46787 * rho 46787 = rho 46798 := by linear_combination r2407
  have hd3 : rho 46799 * (rho 46787 * rho 46787 + rho 46786 * rho 46786 * (-1)) =
      2 * (rho 46786 * rho 46787) := by
    rw [hd0, hd1, hd2]
    linear_combination r2408
  have hd4 : rho 46800 * (2 - (rho 46787 * rho 46787 + rho 46786 * rho 46786 * (-1))) =
      rho 46787 * rho 46787 - rho 46786 * rho 46786 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2409
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46786, rho 46787⟩
    ⟨rho 46792, rho 46793⟩ ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46799, rho 46800⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2410 rho ∧ Seg52.relationRow2411 rho ∧ Seg52.relationRow2412 rho ∧ Seg52.relationRow2413 rho ∧ Seg52.relationRow2414 rho ∧ Seg52.relationRow2415 rho ∧ Seg52.relationRow2416 rho ∧ Seg52.relationRow2417 rho ∧ Seg52.relationRow2418 rho ∧ Seg52.relationRow2419 rho ∧ Seg52.relationRow2420 rho ∧ Seg52.relationRow2421 rho ∧ Seg52.relationRow2422 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p30, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422⟩

theorem seg52In0_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45875 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46799, rho 46800⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46799, rho 46800⟩
        ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46812, rho 46813⟩ := by
  obtain ⟨r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422⟩ := seg52In0_rows67 rho h
  unfold Seg52.relationRow2410 at r2410

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2410

  unfold Seg52.relationRow2411 at r2411

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2411

  unfold Seg52.relationRow2412 at r2412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2412

  unfold Seg52.relationRow2413 at r2413

  unfold Seg52.relationRow2414 at r2414

  unfold Seg52.relationRow2415 at r2415

  unfold Seg52.relationRow2416 at r2416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2416

  unfold Seg52.relationRow2417 at r2417

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2417

  unfold Seg52.relationRow2418 at r2418

  unfold Seg52.relationRow2419 at r2419

  unfold Seg52.relationRow2420 at r2420

  unfold Seg52.relationRow2421 at r2421

  unfold Seg52.relationRow2422 at r2422

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX68 rho = seg52In0AccX67 rho + rho 46807 := by
    unfold seg52In0AccX68 seg52In0AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 67]

    ring

  have hnexty : seg52In0AccY68 rho = seg52In0AccY67 rho + rho 46808 := by
    unfold seg52In0AccY68 seg52In0AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 67]

    ring

  have ha0 : (rho 46799 + rho 46800) * (seg52In0AccX67 rho + seg52In0AccY67 rho) = rho 46801 := by
    unfold seg52In0AccX67 seg52In0AccY67
    linear_combination r2410
  have ha1 : rho 46800 * seg52In0AccX67 rho = rho 46802 := by
    unfold seg52In0AccX67
    linear_combination r2411
  have ha2 : rho 46799 * seg52In0AccY67 rho = rho 46803 := by
    unfold seg52In0AccY67
    linear_combination r2412
  have ha3 : 3021 * rho 46802 * rho 46803 = rho 46804 := by
    linear_combination r2413
  have ha4 : rho 46805 * (1 + rho 46804) = rho 46802 + rho 46803 := by
    linear_combination r2414
  have ha5 : rho 46806 * (1 - rho 46804) = rho 46801 - rho 46802 - rho 46803 := by
    linear_combination r2415
  have haddx :
      rho 46805 * (1 + 3021 * (rho 46800 * seg52In0AccX67 rho) * (rho 46799 * seg52In0AccY67 rho)) =
        rho 46800 * seg52In0AccX67 rho + rho 46799 * seg52In0AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46806 * (1 - 3021 * (rho 46800 * seg52In0AccX67 rho) * (rho 46799 * seg52In0AccY67 rho)) =
        (-1) * (rho 46800 * seg52In0AccX67 rho) - rho 46799 * seg52In0AccY67 rho +
          (seg52In0AccY67 rho - seg52In0AccX67 rho * (-1)) * (rho 46799 + rho 46800) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46806 * (1 - rho 46804) = rho 46801 - rho 46802 - rho 46803 := ha5
      _ = (-1) * rho 46802 - rho 46803 + (seg52In0AccY67 rho - seg52In0AccX67 rho * (-1)) *
          (rho 46799 + rho 46800) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX68 rho = seg52In0AccX67 rho - Bool.toZMod bit * (seg52In0AccX67 rho - rho 46805) := by
    have hd : rho 46807 = Bool.toZMod bit * (rho 46805 - seg52In0AccX67 rho) := by
      rw [← hbit]
      unfold seg52In0AccX67
      linear_combination -r2416
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY68 rho = seg52In0AccY67 rho - Bool.toZMod bit * (seg52In0AccY67 rho - rho 46806) := by
    have hd : rho 46808 = Bool.toZMod bit * (rho 46806 - seg52In0AccY67 rho) := by
      rw [← hbit]
      unfold seg52In0AccY67
      linear_combination -r2417
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46799 * rho 46800 = rho 46809 := by linear_combination r2418
  have hd1 : rho 46799 * rho 46799 = rho 46810 := by linear_combination r2419
  have hd2 : rho 46800 * rho 46800 = rho 46811 := by linear_combination r2420
  have hd3 : rho 46812 * (rho 46800 * rho 46800 + rho 46799 * rho 46799 * (-1)) =
      2 * (rho 46799 * rho 46800) := by
    rw [hd0, hd1, hd2]
    linear_combination r2421
  have hd4 : rho 46813 * (2 - (rho 46800 * rho 46800 + rho 46799 * rho 46799 * (-1))) =
      rho 46800 * rho 46800 - rho 46799 * rho 46799 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2422
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX67 rho, seg52In0AccY67 rho⟩ ⟨rho 46799, rho 46800⟩
    ⟨rho 46805, rho 46806⟩ ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46812, rho 46813⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2423 rho ∧ Seg52.relationRow2424 rho ∧ Seg52.relationRow2425 rho ∧ Seg52.relationRow2426 rho ∧ Seg52.relationRow2427 rho ∧ Seg52.relationRow2428 rho ∧ Seg52.relationRow2429 rho ∧ Seg52.relationRow2430 rho ∧ Seg52.relationRow2431 rho ∧ Seg52.relationRow2432 rho ∧ Seg52.relationRow2433 rho ∧ Seg52.relationRow2434 rho ∧ Seg52.relationRow2435 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p30, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435⟩

theorem seg52In0_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45876 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46812, rho 46813⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46812, rho 46813⟩
        ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46825, rho 46826⟩ := by
  obtain ⟨r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435⟩ := seg52In0_rows68 rho h
  unfold Seg52.relationRow2423 at r2423

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2423

  unfold Seg52.relationRow2424 at r2424

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2424

  unfold Seg52.relationRow2425 at r2425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2425

  unfold Seg52.relationRow2426 at r2426

  unfold Seg52.relationRow2427 at r2427

  unfold Seg52.relationRow2428 at r2428

  unfold Seg52.relationRow2429 at r2429

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2429

  unfold Seg52.relationRow2430 at r2430

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2430

  unfold Seg52.relationRow2431 at r2431

  unfold Seg52.relationRow2432 at r2432

  unfold Seg52.relationRow2433 at r2433

  unfold Seg52.relationRow2434 at r2434

  unfold Seg52.relationRow2435 at r2435

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX69 rho = seg52In0AccX68 rho + rho 46820 := by
    unfold seg52In0AccX69 seg52In0AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 68]

    ring

  have hnexty : seg52In0AccY69 rho = seg52In0AccY68 rho + rho 46821 := by
    unfold seg52In0AccY69 seg52In0AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 68]

    ring

  have ha0 : (rho 46812 + rho 46813) * (seg52In0AccX68 rho + seg52In0AccY68 rho) = rho 46814 := by
    unfold seg52In0AccX68 seg52In0AccY68
    linear_combination r2423
  have ha1 : rho 46813 * seg52In0AccX68 rho = rho 46815 := by
    unfold seg52In0AccX68
    linear_combination r2424
  have ha2 : rho 46812 * seg52In0AccY68 rho = rho 46816 := by
    unfold seg52In0AccY68
    linear_combination r2425
  have ha3 : 3021 * rho 46815 * rho 46816 = rho 46817 := by
    linear_combination r2426
  have ha4 : rho 46818 * (1 + rho 46817) = rho 46815 + rho 46816 := by
    linear_combination r2427
  have ha5 : rho 46819 * (1 - rho 46817) = rho 46814 - rho 46815 - rho 46816 := by
    linear_combination r2428
  have haddx :
      rho 46818 * (1 + 3021 * (rho 46813 * seg52In0AccX68 rho) * (rho 46812 * seg52In0AccY68 rho)) =
        rho 46813 * seg52In0AccX68 rho + rho 46812 * seg52In0AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46819 * (1 - 3021 * (rho 46813 * seg52In0AccX68 rho) * (rho 46812 * seg52In0AccY68 rho)) =
        (-1) * (rho 46813 * seg52In0AccX68 rho) - rho 46812 * seg52In0AccY68 rho +
          (seg52In0AccY68 rho - seg52In0AccX68 rho * (-1)) * (rho 46812 + rho 46813) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46819 * (1 - rho 46817) = rho 46814 - rho 46815 - rho 46816 := ha5
      _ = (-1) * rho 46815 - rho 46816 + (seg52In0AccY68 rho - seg52In0AccX68 rho * (-1)) *
          (rho 46812 + rho 46813) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX69 rho = seg52In0AccX68 rho - Bool.toZMod bit * (seg52In0AccX68 rho - rho 46818) := by
    have hd : rho 46820 = Bool.toZMod bit * (rho 46818 - seg52In0AccX68 rho) := by
      rw [← hbit]
      unfold seg52In0AccX68
      linear_combination -r2429
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY69 rho = seg52In0AccY68 rho - Bool.toZMod bit * (seg52In0AccY68 rho - rho 46819) := by
    have hd : rho 46821 = Bool.toZMod bit * (rho 46819 - seg52In0AccY68 rho) := by
      rw [← hbit]
      unfold seg52In0AccY68
      linear_combination -r2430
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46812 * rho 46813 = rho 46822 := by linear_combination r2431
  have hd1 : rho 46812 * rho 46812 = rho 46823 := by linear_combination r2432
  have hd2 : rho 46813 * rho 46813 = rho 46824 := by linear_combination r2433
  have hd3 : rho 46825 * (rho 46813 * rho 46813 + rho 46812 * rho 46812 * (-1)) =
      2 * (rho 46812 * rho 46813) := by
    rw [hd0, hd1, hd2]
    linear_combination r2434
  have hd4 : rho 46826 * (2 - (rho 46813 * rho 46813 + rho 46812 * rho 46812 * (-1))) =
      rho 46813 * rho 46813 - rho 46812 * rho 46812 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2435
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX68 rho, seg52In0AccY68 rho⟩ ⟨rho 46812, rho 46813⟩
    ⟨rho 46818, rho 46819⟩ ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46825, rho 46826⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2436 rho ∧ Seg52.relationRow2437 rho ∧ Seg52.relationRow2438 rho ∧ Seg52.relationRow2439 rho ∧ Seg52.relationRow2440 rho ∧ Seg52.relationRow2441 rho ∧ Seg52.relationRow2442 rho ∧ Seg52.relationRow2443 rho ∧ Seg52.relationRow2444 rho ∧ Seg52.relationRow2445 rho ∧ Seg52.relationRow2446 rho ∧ Seg52.relationRow2447 rho ∧ Seg52.relationRow2448 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p30, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, r2447, r2448, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, r2447, r2448⟩

theorem seg52In0_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45877 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46825, rho 46826⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46825, rho 46826⟩
        ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46838, rho 46839⟩ := by
  obtain ⟨r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, r2447, r2448⟩ := seg52In0_rows69 rho h
  unfold Seg52.relationRow2436 at r2436

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2436

  unfold Seg52.relationRow2437 at r2437

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2437

  unfold Seg52.relationRow2438 at r2438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2438

  unfold Seg52.relationRow2439 at r2439

  unfold Seg52.relationRow2440 at r2440

  unfold Seg52.relationRow2441 at r2441

  unfold Seg52.relationRow2442 at r2442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2442

  unfold Seg52.relationRow2443 at r2443

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2443

  unfold Seg52.relationRow2444 at r2444

  unfold Seg52.relationRow2445 at r2445

  unfold Seg52.relationRow2446 at r2446

  unfold Seg52.relationRow2447 at r2447

  unfold Seg52.relationRow2448 at r2448

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX70 rho = seg52In0AccX69 rho + rho 46833 := by
    unfold seg52In0AccX70 seg52In0AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 69]

    ring

  have hnexty : seg52In0AccY70 rho = seg52In0AccY69 rho + rho 46834 := by
    unfold seg52In0AccY70 seg52In0AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 69]

    ring

  have ha0 : (rho 46825 + rho 46826) * (seg52In0AccX69 rho + seg52In0AccY69 rho) = rho 46827 := by
    unfold seg52In0AccX69 seg52In0AccY69
    linear_combination r2436
  have ha1 : rho 46826 * seg52In0AccX69 rho = rho 46828 := by
    unfold seg52In0AccX69
    linear_combination r2437
  have ha2 : rho 46825 * seg52In0AccY69 rho = rho 46829 := by
    unfold seg52In0AccY69
    linear_combination r2438
  have ha3 : 3021 * rho 46828 * rho 46829 = rho 46830 := by
    linear_combination r2439
  have ha4 : rho 46831 * (1 + rho 46830) = rho 46828 + rho 46829 := by
    linear_combination r2440
  have ha5 : rho 46832 * (1 - rho 46830) = rho 46827 - rho 46828 - rho 46829 := by
    linear_combination r2441
  have haddx :
      rho 46831 * (1 + 3021 * (rho 46826 * seg52In0AccX69 rho) * (rho 46825 * seg52In0AccY69 rho)) =
        rho 46826 * seg52In0AccX69 rho + rho 46825 * seg52In0AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46832 * (1 - 3021 * (rho 46826 * seg52In0AccX69 rho) * (rho 46825 * seg52In0AccY69 rho)) =
        (-1) * (rho 46826 * seg52In0AccX69 rho) - rho 46825 * seg52In0AccY69 rho +
          (seg52In0AccY69 rho - seg52In0AccX69 rho * (-1)) * (rho 46825 + rho 46826) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46832 * (1 - rho 46830) = rho 46827 - rho 46828 - rho 46829 := ha5
      _ = (-1) * rho 46828 - rho 46829 + (seg52In0AccY69 rho - seg52In0AccX69 rho * (-1)) *
          (rho 46825 + rho 46826) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX70 rho = seg52In0AccX69 rho - Bool.toZMod bit * (seg52In0AccX69 rho - rho 46831) := by
    have hd : rho 46833 = Bool.toZMod bit * (rho 46831 - seg52In0AccX69 rho) := by
      rw [← hbit]
      unfold seg52In0AccX69
      linear_combination -r2442
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY70 rho = seg52In0AccY69 rho - Bool.toZMod bit * (seg52In0AccY69 rho - rho 46832) := by
    have hd : rho 46834 = Bool.toZMod bit * (rho 46832 - seg52In0AccY69 rho) := by
      rw [← hbit]
      unfold seg52In0AccY69
      linear_combination -r2443
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46825 * rho 46826 = rho 46835 := by linear_combination r2444
  have hd1 : rho 46825 * rho 46825 = rho 46836 := by linear_combination r2445
  have hd2 : rho 46826 * rho 46826 = rho 46837 := by linear_combination r2446
  have hd3 : rho 46838 * (rho 46826 * rho 46826 + rho 46825 * rho 46825 * (-1)) =
      2 * (rho 46825 * rho 46826) := by
    rw [hd0, hd1, hd2]
    linear_combination r2447
  have hd4 : rho 46839 * (2 - (rho 46826 * rho 46826 + rho 46825 * rho 46825 * (-1))) =
      rho 46826 * rho 46826 - rho 46825 * rho 46825 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2448
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX69 rho, seg52In0AccY69 rho⟩ ⟨rho 46825, rho 46826⟩
    ⟨rho 46831, rho 46832⟩ ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46838, rho 46839⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2449 rho ∧ Seg52.relationRow2450 rho ∧ Seg52.relationRow2451 rho ∧ Seg52.relationRow2452 rho ∧ Seg52.relationRow2453 rho ∧ Seg52.relationRow2454 rho ∧ Seg52.relationRow2455 rho ∧ Seg52.relationRow2456 rho ∧ Seg52.relationRow2457 rho ∧ Seg52.relationRow2458 rho ∧ Seg52.relationRow2459 rho ∧ Seg52.relationRow2460 rho ∧ Seg52.relationRow2461 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p30, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461⟩

theorem seg52In0_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45878 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46838, rho 46839⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46838, rho 46839⟩
        ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46851, rho 46852⟩ := by
  obtain ⟨r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461⟩ := seg52In0_rows70 rho h
  unfold Seg52.relationRow2449 at r2449

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2449

  unfold Seg52.relationRow2450 at r2450

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2450

  unfold Seg52.relationRow2451 at r2451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2451

  unfold Seg52.relationRow2452 at r2452

  unfold Seg52.relationRow2453 at r2453

  unfold Seg52.relationRow2454 at r2454

  unfold Seg52.relationRow2455 at r2455

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2455

  unfold Seg52.relationRow2456 at r2456

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2456

  unfold Seg52.relationRow2457 at r2457

  unfold Seg52.relationRow2458 at r2458

  unfold Seg52.relationRow2459 at r2459

  unfold Seg52.relationRow2460 at r2460

  unfold Seg52.relationRow2461 at r2461

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX71 rho = seg52In0AccX70 rho + rho 46846 := by
    unfold seg52In0AccX71 seg52In0AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 70]

    ring

  have hnexty : seg52In0AccY71 rho = seg52In0AccY70 rho + rho 46847 := by
    unfold seg52In0AccY71 seg52In0AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 70]

    ring

  have ha0 : (rho 46838 + rho 46839) * (seg52In0AccX70 rho + seg52In0AccY70 rho) = rho 46840 := by
    unfold seg52In0AccX70 seg52In0AccY70
    linear_combination r2449
  have ha1 : rho 46839 * seg52In0AccX70 rho = rho 46841 := by
    unfold seg52In0AccX70
    linear_combination r2450
  have ha2 : rho 46838 * seg52In0AccY70 rho = rho 46842 := by
    unfold seg52In0AccY70
    linear_combination r2451
  have ha3 : 3021 * rho 46841 * rho 46842 = rho 46843 := by
    linear_combination r2452
  have ha4 : rho 46844 * (1 + rho 46843) = rho 46841 + rho 46842 := by
    linear_combination r2453
  have ha5 : rho 46845 * (1 - rho 46843) = rho 46840 - rho 46841 - rho 46842 := by
    linear_combination r2454
  have haddx :
      rho 46844 * (1 + 3021 * (rho 46839 * seg52In0AccX70 rho) * (rho 46838 * seg52In0AccY70 rho)) =
        rho 46839 * seg52In0AccX70 rho + rho 46838 * seg52In0AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46845 * (1 - 3021 * (rho 46839 * seg52In0AccX70 rho) * (rho 46838 * seg52In0AccY70 rho)) =
        (-1) * (rho 46839 * seg52In0AccX70 rho) - rho 46838 * seg52In0AccY70 rho +
          (seg52In0AccY70 rho - seg52In0AccX70 rho * (-1)) * (rho 46838 + rho 46839) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46845 * (1 - rho 46843) = rho 46840 - rho 46841 - rho 46842 := ha5
      _ = (-1) * rho 46841 - rho 46842 + (seg52In0AccY70 rho - seg52In0AccX70 rho * (-1)) *
          (rho 46838 + rho 46839) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX71 rho = seg52In0AccX70 rho - Bool.toZMod bit * (seg52In0AccX70 rho - rho 46844) := by
    have hd : rho 46846 = Bool.toZMod bit * (rho 46844 - seg52In0AccX70 rho) := by
      rw [← hbit]
      unfold seg52In0AccX70
      linear_combination -r2455
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY71 rho = seg52In0AccY70 rho - Bool.toZMod bit * (seg52In0AccY70 rho - rho 46845) := by
    have hd : rho 46847 = Bool.toZMod bit * (rho 46845 - seg52In0AccY70 rho) := by
      rw [← hbit]
      unfold seg52In0AccY70
      linear_combination -r2456
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46838 * rho 46839 = rho 46848 := by linear_combination r2457
  have hd1 : rho 46838 * rho 46838 = rho 46849 := by linear_combination r2458
  have hd2 : rho 46839 * rho 46839 = rho 46850 := by linear_combination r2459
  have hd3 : rho 46851 * (rho 46839 * rho 46839 + rho 46838 * rho 46838 * (-1)) =
      2 * (rho 46838 * rho 46839) := by
    rw [hd0, hd1, hd2]
    linear_combination r2460
  have hd4 : rho 46852 * (2 - (rho 46839 * rho 46839 + rho 46838 * rho 46838 * (-1))) =
      rho 46839 * rho 46839 - rho 46838 * rho 46838 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2461
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX70 rho, seg52In0AccY70 rho⟩ ⟨rho 46838, rho 46839⟩
    ⟨rho 46844, rho 46845⟩ ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46851, rho 46852⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2462 rho ∧ Seg52.relationRow2463 rho ∧ Seg52.relationRow2464 rho ∧ Seg52.relationRow2465 rho ∧ Seg52.relationRow2466 rho ∧ Seg52.relationRow2467 rho ∧ Seg52.relationRow2468 rho ∧ Seg52.relationRow2469 rho ∧ Seg52.relationRow2470 rho ∧ Seg52.relationRow2471 rho ∧ Seg52.relationRow2472 rho ∧ Seg52.relationRow2473 rho ∧ Seg52.relationRow2474 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p30, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471, r2472, r2473, r2474, _, _, _, _, _⟩

  exact ⟨r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471, r2472, r2473, r2474⟩

theorem seg52In0_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45879 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46851, rho 46852⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46851, rho 46852⟩
        ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46864, rho 46865⟩ := by
  obtain ⟨r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471, r2472, r2473, r2474⟩ := seg52In0_rows71 rho h
  unfold Seg52.relationRow2462 at r2462

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2462

  unfold Seg52.relationRow2463 at r2463

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2463

  unfold Seg52.relationRow2464 at r2464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2464

  unfold Seg52.relationRow2465 at r2465

  unfold Seg52.relationRow2466 at r2466

  unfold Seg52.relationRow2467 at r2467

  unfold Seg52.relationRow2468 at r2468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2468

  unfold Seg52.relationRow2469 at r2469

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2469

  unfold Seg52.relationRow2470 at r2470

  unfold Seg52.relationRow2471 at r2471

  unfold Seg52.relationRow2472 at r2472

  unfold Seg52.relationRow2473 at r2473

  unfold Seg52.relationRow2474 at r2474

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX72 rho = seg52In0AccX71 rho + rho 46859 := by
    unfold seg52In0AccX72 seg52In0AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 71]

    ring

  have hnexty : seg52In0AccY72 rho = seg52In0AccY71 rho + rho 46860 := by
    unfold seg52In0AccY72 seg52In0AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 71]

    ring

  have ha0 : (rho 46851 + rho 46852) * (seg52In0AccX71 rho + seg52In0AccY71 rho) = rho 46853 := by
    unfold seg52In0AccX71 seg52In0AccY71
    linear_combination r2462
  have ha1 : rho 46852 * seg52In0AccX71 rho = rho 46854 := by
    unfold seg52In0AccX71
    linear_combination r2463
  have ha2 : rho 46851 * seg52In0AccY71 rho = rho 46855 := by
    unfold seg52In0AccY71
    linear_combination r2464
  have ha3 : 3021 * rho 46854 * rho 46855 = rho 46856 := by
    linear_combination r2465
  have ha4 : rho 46857 * (1 + rho 46856) = rho 46854 + rho 46855 := by
    linear_combination r2466
  have ha5 : rho 46858 * (1 - rho 46856) = rho 46853 - rho 46854 - rho 46855 := by
    linear_combination r2467
  have haddx :
      rho 46857 * (1 + 3021 * (rho 46852 * seg52In0AccX71 rho) * (rho 46851 * seg52In0AccY71 rho)) =
        rho 46852 * seg52In0AccX71 rho + rho 46851 * seg52In0AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46858 * (1 - 3021 * (rho 46852 * seg52In0AccX71 rho) * (rho 46851 * seg52In0AccY71 rho)) =
        (-1) * (rho 46852 * seg52In0AccX71 rho) - rho 46851 * seg52In0AccY71 rho +
          (seg52In0AccY71 rho - seg52In0AccX71 rho * (-1)) * (rho 46851 + rho 46852) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46858 * (1 - rho 46856) = rho 46853 - rho 46854 - rho 46855 := ha5
      _ = (-1) * rho 46854 - rho 46855 + (seg52In0AccY71 rho - seg52In0AccX71 rho * (-1)) *
          (rho 46851 + rho 46852) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX72 rho = seg52In0AccX71 rho - Bool.toZMod bit * (seg52In0AccX71 rho - rho 46857) := by
    have hd : rho 46859 = Bool.toZMod bit * (rho 46857 - seg52In0AccX71 rho) := by
      rw [← hbit]
      unfold seg52In0AccX71
      linear_combination -r2468
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY72 rho = seg52In0AccY71 rho - Bool.toZMod bit * (seg52In0AccY71 rho - rho 46858) := by
    have hd : rho 46860 = Bool.toZMod bit * (rho 46858 - seg52In0AccY71 rho) := by
      rw [← hbit]
      unfold seg52In0AccY71
      linear_combination -r2469
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46851 * rho 46852 = rho 46861 := by linear_combination r2470
  have hd1 : rho 46851 * rho 46851 = rho 46862 := by linear_combination r2471
  have hd2 : rho 46852 * rho 46852 = rho 46863 := by linear_combination r2472
  have hd3 : rho 46864 * (rho 46852 * rho 46852 + rho 46851 * rho 46851 * (-1)) =
      2 * (rho 46851 * rho 46852) := by
    rw [hd0, hd1, hd2]
    linear_combination r2473
  have hd4 : rho 46865 * (2 - (rho 46852 * rho 46852 + rho 46851 * rho 46851 * (-1))) =
      rho 46852 * rho 46852 - rho 46851 * rho 46851 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2474
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX71 rho, seg52In0AccY71 rho⟩ ⟨rho 46851, rho 46852⟩
    ⟨rho 46857, rho 46858⟩ ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46864, rho 46865⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2475 rho ∧ Seg52.relationRow2476 rho ∧ Seg52.relationRow2477 rho ∧ Seg52.relationRow2478 rho ∧ Seg52.relationRow2479 rho ∧ Seg52.relationRow2480 rho ∧ Seg52.relationRow2481 rho ∧ Seg52.relationRow2482 rho ∧ Seg52.relationRow2483 rho ∧ Seg52.relationRow2484 rho ∧ Seg52.relationRow2485 rho ∧ Seg52.relationRow2486 rho ∧ Seg52.relationRow2487 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2475, r2476, r2477, r2478, r2479⟩

  unfold Seg52.relationPart31 at p31

  rcases p31 with ⟨r2480, r2481, r2482, r2483, r2484, r2485, r2486, r2487, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2475, r2476, r2477, r2478, r2479, r2480, r2481, r2482, r2483, r2484, r2485, r2486, r2487⟩

theorem seg52In0_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45880 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46864, rho 46865⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46864, rho 46865⟩
        ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46877, rho 46878⟩ := by
  obtain ⟨r2475, r2476, r2477, r2478, r2479, r2480, r2481, r2482, r2483, r2484, r2485, r2486, r2487⟩ := seg52In0_rows72 rho h
  unfold Seg52.relationRow2475 at r2475

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2475

  unfold Seg52.relationRow2476 at r2476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2476

  unfold Seg52.relationRow2477 at r2477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2477

  unfold Seg52.relationRow2478 at r2478

  unfold Seg52.relationRow2479 at r2479

  unfold Seg52.relationRow2480 at r2480

  unfold Seg52.relationRow2481 at r2481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2481

  unfold Seg52.relationRow2482 at r2482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2482

  unfold Seg52.relationRow2483 at r2483

  unfold Seg52.relationRow2484 at r2484

  unfold Seg52.relationRow2485 at r2485

  unfold Seg52.relationRow2486 at r2486

  unfold Seg52.relationRow2487 at r2487

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX73 rho = seg52In0AccX72 rho + rho 46872 := by
    unfold seg52In0AccX73 seg52In0AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 72]

    ring

  have hnexty : seg52In0AccY73 rho = seg52In0AccY72 rho + rho 46873 := by
    unfold seg52In0AccY73 seg52In0AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 72]

    ring

  have ha0 : (rho 46864 + rho 46865) * (seg52In0AccX72 rho + seg52In0AccY72 rho) = rho 46866 := by
    unfold seg52In0AccX72 seg52In0AccY72
    linear_combination r2475
  have ha1 : rho 46865 * seg52In0AccX72 rho = rho 46867 := by
    unfold seg52In0AccX72
    linear_combination r2476
  have ha2 : rho 46864 * seg52In0AccY72 rho = rho 46868 := by
    unfold seg52In0AccY72
    linear_combination r2477
  have ha3 : 3021 * rho 46867 * rho 46868 = rho 46869 := by
    linear_combination r2478
  have ha4 : rho 46870 * (1 + rho 46869) = rho 46867 + rho 46868 := by
    linear_combination r2479
  have ha5 : rho 46871 * (1 - rho 46869) = rho 46866 - rho 46867 - rho 46868 := by
    linear_combination r2480
  have haddx :
      rho 46870 * (1 + 3021 * (rho 46865 * seg52In0AccX72 rho) * (rho 46864 * seg52In0AccY72 rho)) =
        rho 46865 * seg52In0AccX72 rho + rho 46864 * seg52In0AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46871 * (1 - 3021 * (rho 46865 * seg52In0AccX72 rho) * (rho 46864 * seg52In0AccY72 rho)) =
        (-1) * (rho 46865 * seg52In0AccX72 rho) - rho 46864 * seg52In0AccY72 rho +
          (seg52In0AccY72 rho - seg52In0AccX72 rho * (-1)) * (rho 46864 + rho 46865) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46871 * (1 - rho 46869) = rho 46866 - rho 46867 - rho 46868 := ha5
      _ = (-1) * rho 46867 - rho 46868 + (seg52In0AccY72 rho - seg52In0AccX72 rho * (-1)) *
          (rho 46864 + rho 46865) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX73 rho = seg52In0AccX72 rho - Bool.toZMod bit * (seg52In0AccX72 rho - rho 46870) := by
    have hd : rho 46872 = Bool.toZMod bit * (rho 46870 - seg52In0AccX72 rho) := by
      rw [← hbit]
      unfold seg52In0AccX72
      linear_combination -r2481
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY73 rho = seg52In0AccY72 rho - Bool.toZMod bit * (seg52In0AccY72 rho - rho 46871) := by
    have hd : rho 46873 = Bool.toZMod bit * (rho 46871 - seg52In0AccY72 rho) := by
      rw [← hbit]
      unfold seg52In0AccY72
      linear_combination -r2482
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46864 * rho 46865 = rho 46874 := by linear_combination r2483
  have hd1 : rho 46864 * rho 46864 = rho 46875 := by linear_combination r2484
  have hd2 : rho 46865 * rho 46865 = rho 46876 := by linear_combination r2485
  have hd3 : rho 46877 * (rho 46865 * rho 46865 + rho 46864 * rho 46864 * (-1)) =
      2 * (rho 46864 * rho 46865) := by
    rw [hd0, hd1, hd2]
    linear_combination r2486
  have hd4 : rho 46878 * (2 - (rho 46865 * rho 46865 + rho 46864 * rho 46864 * (-1))) =
      rho 46865 * rho 46865 - rho 46864 * rho 46864 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2487
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX72 rho, seg52In0AccY72 rho⟩ ⟨rho 46864, rho 46865⟩
    ⟨rho 46870, rho 46871⟩ ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46877, rho 46878⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2488 rho ∧ Seg52.relationRow2489 rho ∧ Seg52.relationRow2490 rho ∧ Seg52.relationRow2491 rho ∧ Seg52.relationRow2492 rho ∧ Seg52.relationRow2493 rho ∧ Seg52.relationRow2494 rho ∧ Seg52.relationRow2495 rho ∧ Seg52.relationRow2496 rho ∧ Seg52.relationRow2497 rho ∧ Seg52.relationRow2498 rho ∧ Seg52.relationRow2499 rho ∧ Seg52.relationRow2500 rho := by
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

  rcases p31 with ⟨_, _, _, _, _, _, _, _, r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, r2498, r2499, r2500, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, r2498, r2499, r2500⟩

theorem seg52In0_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45881 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46877, rho 46878⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46877, rho 46878⟩
        ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46890, rho 46891⟩ := by
  obtain ⟨r2488, r2489, r2490, r2491, r2492, r2493, r2494, r2495, r2496, r2497, r2498, r2499, r2500⟩ := seg52In0_rows73 rho h
  unfold Seg52.relationRow2488 at r2488

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2488

  unfold Seg52.relationRow2489 at r2489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2489

  unfold Seg52.relationRow2490 at r2490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2490

  unfold Seg52.relationRow2491 at r2491

  unfold Seg52.relationRow2492 at r2492

  unfold Seg52.relationRow2493 at r2493

  unfold Seg52.relationRow2494 at r2494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2494

  unfold Seg52.relationRow2495 at r2495

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2495

  unfold Seg52.relationRow2496 at r2496

  unfold Seg52.relationRow2497 at r2497

  unfold Seg52.relationRow2498 at r2498

  unfold Seg52.relationRow2499 at r2499

  unfold Seg52.relationRow2500 at r2500

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX74 rho = seg52In0AccX73 rho + rho 46885 := by
    unfold seg52In0AccX74 seg52In0AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 73]

    ring

  have hnexty : seg52In0AccY74 rho = seg52In0AccY73 rho + rho 46886 := by
    unfold seg52In0AccY74 seg52In0AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 73]

    ring

  have ha0 : (rho 46877 + rho 46878) * (seg52In0AccX73 rho + seg52In0AccY73 rho) = rho 46879 := by
    unfold seg52In0AccX73 seg52In0AccY73
    linear_combination r2488
  have ha1 : rho 46878 * seg52In0AccX73 rho = rho 46880 := by
    unfold seg52In0AccX73
    linear_combination r2489
  have ha2 : rho 46877 * seg52In0AccY73 rho = rho 46881 := by
    unfold seg52In0AccY73
    linear_combination r2490
  have ha3 : 3021 * rho 46880 * rho 46881 = rho 46882 := by
    linear_combination r2491
  have ha4 : rho 46883 * (1 + rho 46882) = rho 46880 + rho 46881 := by
    linear_combination r2492
  have ha5 : rho 46884 * (1 - rho 46882) = rho 46879 - rho 46880 - rho 46881 := by
    linear_combination r2493
  have haddx :
      rho 46883 * (1 + 3021 * (rho 46878 * seg52In0AccX73 rho) * (rho 46877 * seg52In0AccY73 rho)) =
        rho 46878 * seg52In0AccX73 rho + rho 46877 * seg52In0AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46884 * (1 - 3021 * (rho 46878 * seg52In0AccX73 rho) * (rho 46877 * seg52In0AccY73 rho)) =
        (-1) * (rho 46878 * seg52In0AccX73 rho) - rho 46877 * seg52In0AccY73 rho +
          (seg52In0AccY73 rho - seg52In0AccX73 rho * (-1)) * (rho 46877 + rho 46878) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46884 * (1 - rho 46882) = rho 46879 - rho 46880 - rho 46881 := ha5
      _ = (-1) * rho 46880 - rho 46881 + (seg52In0AccY73 rho - seg52In0AccX73 rho * (-1)) *
          (rho 46877 + rho 46878) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX74 rho = seg52In0AccX73 rho - Bool.toZMod bit * (seg52In0AccX73 rho - rho 46883) := by
    have hd : rho 46885 = Bool.toZMod bit * (rho 46883 - seg52In0AccX73 rho) := by
      rw [← hbit]
      unfold seg52In0AccX73
      linear_combination -r2494
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY74 rho = seg52In0AccY73 rho - Bool.toZMod bit * (seg52In0AccY73 rho - rho 46884) := by
    have hd : rho 46886 = Bool.toZMod bit * (rho 46884 - seg52In0AccY73 rho) := by
      rw [← hbit]
      unfold seg52In0AccY73
      linear_combination -r2495
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46877 * rho 46878 = rho 46887 := by linear_combination r2496
  have hd1 : rho 46877 * rho 46877 = rho 46888 := by linear_combination r2497
  have hd2 : rho 46878 * rho 46878 = rho 46889 := by linear_combination r2498
  have hd3 : rho 46890 * (rho 46878 * rho 46878 + rho 46877 * rho 46877 * (-1)) =
      2 * (rho 46877 * rho 46878) := by
    rw [hd0, hd1, hd2]
    linear_combination r2499
  have hd4 : rho 46891 * (2 - (rho 46878 * rho 46878 + rho 46877 * rho 46877 * (-1))) =
      rho 46878 * rho 46878 - rho 46877 * rho 46877 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2500
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX73 rho, seg52In0AccY73 rho⟩ ⟨rho 46877, rho 46878⟩
    ⟨rho 46883, rho 46884⟩ ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46890, rho 46891⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2501 rho ∧ Seg52.relationRow2502 rho ∧ Seg52.relationRow2503 rho ∧ Seg52.relationRow2504 rho ∧ Seg52.relationRow2505 rho ∧ Seg52.relationRow2506 rho ∧ Seg52.relationRow2507 rho ∧ Seg52.relationRow2508 rho ∧ Seg52.relationRow2509 rho ∧ Seg52.relationRow2510 rho ∧ Seg52.relationRow2511 rho ∧ Seg52.relationRow2512 rho ∧ Seg52.relationRow2513 rho := by
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

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, r2513, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, r2513⟩

theorem seg52In0_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45882 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46890, rho 46891⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46890, rho 46891⟩
        ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46903, rho 46904⟩ := by
  obtain ⟨r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, r2513⟩ := seg52In0_rows74 rho h
  unfold Seg52.relationRow2501 at r2501

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2501

  unfold Seg52.relationRow2502 at r2502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2502

  unfold Seg52.relationRow2503 at r2503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2503

  unfold Seg52.relationRow2504 at r2504

  unfold Seg52.relationRow2505 at r2505

  unfold Seg52.relationRow2506 at r2506

  unfold Seg52.relationRow2507 at r2507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2507

  unfold Seg52.relationRow2508 at r2508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2508

  unfold Seg52.relationRow2509 at r2509

  unfold Seg52.relationRow2510 at r2510

  unfold Seg52.relationRow2511 at r2511

  unfold Seg52.relationRow2512 at r2512

  unfold Seg52.relationRow2513 at r2513

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX75 rho = seg52In0AccX74 rho + rho 46898 := by
    unfold seg52In0AccX75 seg52In0AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 74]

    ring

  have hnexty : seg52In0AccY75 rho = seg52In0AccY74 rho + rho 46899 := by
    unfold seg52In0AccY75 seg52In0AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 74]

    ring

  have ha0 : (rho 46890 + rho 46891) * (seg52In0AccX74 rho + seg52In0AccY74 rho) = rho 46892 := by
    unfold seg52In0AccX74 seg52In0AccY74
    linear_combination r2501
  have ha1 : rho 46891 * seg52In0AccX74 rho = rho 46893 := by
    unfold seg52In0AccX74
    linear_combination r2502
  have ha2 : rho 46890 * seg52In0AccY74 rho = rho 46894 := by
    unfold seg52In0AccY74
    linear_combination r2503
  have ha3 : 3021 * rho 46893 * rho 46894 = rho 46895 := by
    linear_combination r2504
  have ha4 : rho 46896 * (1 + rho 46895) = rho 46893 + rho 46894 := by
    linear_combination r2505
  have ha5 : rho 46897 * (1 - rho 46895) = rho 46892 - rho 46893 - rho 46894 := by
    linear_combination r2506
  have haddx :
      rho 46896 * (1 + 3021 * (rho 46891 * seg52In0AccX74 rho) * (rho 46890 * seg52In0AccY74 rho)) =
        rho 46891 * seg52In0AccX74 rho + rho 46890 * seg52In0AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46897 * (1 - 3021 * (rho 46891 * seg52In0AccX74 rho) * (rho 46890 * seg52In0AccY74 rho)) =
        (-1) * (rho 46891 * seg52In0AccX74 rho) - rho 46890 * seg52In0AccY74 rho +
          (seg52In0AccY74 rho - seg52In0AccX74 rho * (-1)) * (rho 46890 + rho 46891) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46897 * (1 - rho 46895) = rho 46892 - rho 46893 - rho 46894 := ha5
      _ = (-1) * rho 46893 - rho 46894 + (seg52In0AccY74 rho - seg52In0AccX74 rho * (-1)) *
          (rho 46890 + rho 46891) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX75 rho = seg52In0AccX74 rho - Bool.toZMod bit * (seg52In0AccX74 rho - rho 46896) := by
    have hd : rho 46898 = Bool.toZMod bit * (rho 46896 - seg52In0AccX74 rho) := by
      rw [← hbit]
      unfold seg52In0AccX74
      linear_combination -r2507
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY75 rho = seg52In0AccY74 rho - Bool.toZMod bit * (seg52In0AccY74 rho - rho 46897) := by
    have hd : rho 46899 = Bool.toZMod bit * (rho 46897 - seg52In0AccY74 rho) := by
      rw [← hbit]
      unfold seg52In0AccY74
      linear_combination -r2508
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46890 * rho 46891 = rho 46900 := by linear_combination r2509
  have hd1 : rho 46890 * rho 46890 = rho 46901 := by linear_combination r2510
  have hd2 : rho 46891 * rho 46891 = rho 46902 := by linear_combination r2511
  have hd3 : rho 46903 * (rho 46891 * rho 46891 + rho 46890 * rho 46890 * (-1)) =
      2 * (rho 46890 * rho 46891) := by
    rw [hd0, hd1, hd2]
    linear_combination r2512
  have hd4 : rho 46904 * (2 - (rho 46891 * rho 46891 + rho 46890 * rho 46890 * (-1))) =
      rho 46891 * rho 46891 - rho 46890 * rho 46890 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2513
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX74 rho, seg52In0AccY74 rho⟩ ⟨rho 46890, rho 46891⟩
    ⟨rho 46896, rho 46897⟩ ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46903, rho 46904⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2514 rho ∧ Seg52.relationRow2515 rho ∧ Seg52.relationRow2516 rho ∧ Seg52.relationRow2517 rho ∧ Seg52.relationRow2518 rho ∧ Seg52.relationRow2519 rho ∧ Seg52.relationRow2520 rho ∧ Seg52.relationRow2521 rho ∧ Seg52.relationRow2522 rho ∧ Seg52.relationRow2523 rho ∧ Seg52.relationRow2524 rho ∧ Seg52.relationRow2525 rho ∧ Seg52.relationRow2526 rho := by
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

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526⟩

theorem seg52In0_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45883 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46903, rho 46904⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46903, rho 46904⟩
        ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46916, rho 46917⟩ := by
  obtain ⟨r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526⟩ := seg52In0_rows75 rho h
  unfold Seg52.relationRow2514 at r2514

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2514

  unfold Seg52.relationRow2515 at r2515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2515

  unfold Seg52.relationRow2516 at r2516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2516

  unfold Seg52.relationRow2517 at r2517

  unfold Seg52.relationRow2518 at r2518

  unfold Seg52.relationRow2519 at r2519

  unfold Seg52.relationRow2520 at r2520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2520

  unfold Seg52.relationRow2521 at r2521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2521

  unfold Seg52.relationRow2522 at r2522

  unfold Seg52.relationRow2523 at r2523

  unfold Seg52.relationRow2524 at r2524

  unfold Seg52.relationRow2525 at r2525

  unfold Seg52.relationRow2526 at r2526

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX76 rho = seg52In0AccX75 rho + rho 46911 := by
    unfold seg52In0AccX76 seg52In0AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 75]

    ring

  have hnexty : seg52In0AccY76 rho = seg52In0AccY75 rho + rho 46912 := by
    unfold seg52In0AccY76 seg52In0AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 75]

    ring

  have ha0 : (rho 46903 + rho 46904) * (seg52In0AccX75 rho + seg52In0AccY75 rho) = rho 46905 := by
    unfold seg52In0AccX75 seg52In0AccY75
    linear_combination r2514
  have ha1 : rho 46904 * seg52In0AccX75 rho = rho 46906 := by
    unfold seg52In0AccX75
    linear_combination r2515
  have ha2 : rho 46903 * seg52In0AccY75 rho = rho 46907 := by
    unfold seg52In0AccY75
    linear_combination r2516
  have ha3 : 3021 * rho 46906 * rho 46907 = rho 46908 := by
    linear_combination r2517
  have ha4 : rho 46909 * (1 + rho 46908) = rho 46906 + rho 46907 := by
    linear_combination r2518
  have ha5 : rho 46910 * (1 - rho 46908) = rho 46905 - rho 46906 - rho 46907 := by
    linear_combination r2519
  have haddx :
      rho 46909 * (1 + 3021 * (rho 46904 * seg52In0AccX75 rho) * (rho 46903 * seg52In0AccY75 rho)) =
        rho 46904 * seg52In0AccX75 rho + rho 46903 * seg52In0AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46910 * (1 - 3021 * (rho 46904 * seg52In0AccX75 rho) * (rho 46903 * seg52In0AccY75 rho)) =
        (-1) * (rho 46904 * seg52In0AccX75 rho) - rho 46903 * seg52In0AccY75 rho +
          (seg52In0AccY75 rho - seg52In0AccX75 rho * (-1)) * (rho 46903 + rho 46904) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46910 * (1 - rho 46908) = rho 46905 - rho 46906 - rho 46907 := ha5
      _ = (-1) * rho 46906 - rho 46907 + (seg52In0AccY75 rho - seg52In0AccX75 rho * (-1)) *
          (rho 46903 + rho 46904) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX76 rho = seg52In0AccX75 rho - Bool.toZMod bit * (seg52In0AccX75 rho - rho 46909) := by
    have hd : rho 46911 = Bool.toZMod bit * (rho 46909 - seg52In0AccX75 rho) := by
      rw [← hbit]
      unfold seg52In0AccX75
      linear_combination -r2520
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY76 rho = seg52In0AccY75 rho - Bool.toZMod bit * (seg52In0AccY75 rho - rho 46910) := by
    have hd : rho 46912 = Bool.toZMod bit * (rho 46910 - seg52In0AccY75 rho) := by
      rw [← hbit]
      unfold seg52In0AccY75
      linear_combination -r2521
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46903 * rho 46904 = rho 46913 := by linear_combination r2522
  have hd1 : rho 46903 * rho 46903 = rho 46914 := by linear_combination r2523
  have hd2 : rho 46904 * rho 46904 = rho 46915 := by linear_combination r2524
  have hd3 : rho 46916 * (rho 46904 * rho 46904 + rho 46903 * rho 46903 * (-1)) =
      2 * (rho 46903 * rho 46904) := by
    rw [hd0, hd1, hd2]
    linear_combination r2525
  have hd4 : rho 46917 * (2 - (rho 46904 * rho 46904 + rho 46903 * rho 46903 * (-1))) =
      rho 46904 * rho 46904 - rho 46903 * rho 46903 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2526
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX75 rho, seg52In0AccY75 rho⟩ ⟨rho 46903, rho 46904⟩
    ⟨rho 46909, rho 46910⟩ ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46916, rho 46917⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2527 rho ∧ Seg52.relationRow2528 rho ∧ Seg52.relationRow2529 rho ∧ Seg52.relationRow2530 rho ∧ Seg52.relationRow2531 rho ∧ Seg52.relationRow2532 rho ∧ Seg52.relationRow2533 rho ∧ Seg52.relationRow2534 rho ∧ Seg52.relationRow2535 rho ∧ Seg52.relationRow2536 rho ∧ Seg52.relationRow2537 rho ∧ Seg52.relationRow2538 rho ∧ Seg52.relationRow2539 rho := by
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

  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, r2537, r2538, r2539, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, r2537, r2538, r2539⟩

theorem seg52In0_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45884 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46916, rho 46917⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46916, rho 46917⟩
        ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46929, rho 46930⟩ := by
  obtain ⟨r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, r2535, r2536, r2537, r2538, r2539⟩ := seg52In0_rows76 rho h
  unfold Seg52.relationRow2527 at r2527

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2527

  unfold Seg52.relationRow2528 at r2528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2528

  unfold Seg52.relationRow2529 at r2529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2529

  unfold Seg52.relationRow2530 at r2530

  unfold Seg52.relationRow2531 at r2531

  unfold Seg52.relationRow2532 at r2532

  unfold Seg52.relationRow2533 at r2533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2533

  unfold Seg52.relationRow2534 at r2534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2534

  unfold Seg52.relationRow2535 at r2535

  unfold Seg52.relationRow2536 at r2536

  unfold Seg52.relationRow2537 at r2537

  unfold Seg52.relationRow2538 at r2538

  unfold Seg52.relationRow2539 at r2539

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX77 rho = seg52In0AccX76 rho + rho 46924 := by
    unfold seg52In0AccX77 seg52In0AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 76]

    ring

  have hnexty : seg52In0AccY77 rho = seg52In0AccY76 rho + rho 46925 := by
    unfold seg52In0AccY77 seg52In0AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 76]

    ring

  have ha0 : (rho 46916 + rho 46917) * (seg52In0AccX76 rho + seg52In0AccY76 rho) = rho 46918 := by
    unfold seg52In0AccX76 seg52In0AccY76
    linear_combination r2527
  have ha1 : rho 46917 * seg52In0AccX76 rho = rho 46919 := by
    unfold seg52In0AccX76
    linear_combination r2528
  have ha2 : rho 46916 * seg52In0AccY76 rho = rho 46920 := by
    unfold seg52In0AccY76
    linear_combination r2529
  have ha3 : 3021 * rho 46919 * rho 46920 = rho 46921 := by
    linear_combination r2530
  have ha4 : rho 46922 * (1 + rho 46921) = rho 46919 + rho 46920 := by
    linear_combination r2531
  have ha5 : rho 46923 * (1 - rho 46921) = rho 46918 - rho 46919 - rho 46920 := by
    linear_combination r2532
  have haddx :
      rho 46922 * (1 + 3021 * (rho 46917 * seg52In0AccX76 rho) * (rho 46916 * seg52In0AccY76 rho)) =
        rho 46917 * seg52In0AccX76 rho + rho 46916 * seg52In0AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46923 * (1 - 3021 * (rho 46917 * seg52In0AccX76 rho) * (rho 46916 * seg52In0AccY76 rho)) =
        (-1) * (rho 46917 * seg52In0AccX76 rho) - rho 46916 * seg52In0AccY76 rho +
          (seg52In0AccY76 rho - seg52In0AccX76 rho * (-1)) * (rho 46916 + rho 46917) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46923 * (1 - rho 46921) = rho 46918 - rho 46919 - rho 46920 := ha5
      _ = (-1) * rho 46919 - rho 46920 + (seg52In0AccY76 rho - seg52In0AccX76 rho * (-1)) *
          (rho 46916 + rho 46917) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX77 rho = seg52In0AccX76 rho - Bool.toZMod bit * (seg52In0AccX76 rho - rho 46922) := by
    have hd : rho 46924 = Bool.toZMod bit * (rho 46922 - seg52In0AccX76 rho) := by
      rw [← hbit]
      unfold seg52In0AccX76
      linear_combination -r2533
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY77 rho = seg52In0AccY76 rho - Bool.toZMod bit * (seg52In0AccY76 rho - rho 46923) := by
    have hd : rho 46925 = Bool.toZMod bit * (rho 46923 - seg52In0AccY76 rho) := by
      rw [← hbit]
      unfold seg52In0AccY76
      linear_combination -r2534
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46916 * rho 46917 = rho 46926 := by linear_combination r2535
  have hd1 : rho 46916 * rho 46916 = rho 46927 := by linear_combination r2536
  have hd2 : rho 46917 * rho 46917 = rho 46928 := by linear_combination r2537
  have hd3 : rho 46929 * (rho 46917 * rho 46917 + rho 46916 * rho 46916 * (-1)) =
      2 * (rho 46916 * rho 46917) := by
    rw [hd0, hd1, hd2]
    linear_combination r2538
  have hd4 : rho 46930 * (2 - (rho 46917 * rho 46917 + rho 46916 * rho 46916 * (-1))) =
      rho 46917 * rho 46917 - rho 46916 * rho 46916 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2539
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX76 rho, seg52In0AccY76 rho⟩ ⟨rho 46916, rho 46917⟩
    ⟨rho 46922, rho 46923⟩ ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46929, rho 46930⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg52In0_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg52In0_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg52In0_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg52In0_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg52In0_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg52In0_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg52In0_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg52In0_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg52In0_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg52In0_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
