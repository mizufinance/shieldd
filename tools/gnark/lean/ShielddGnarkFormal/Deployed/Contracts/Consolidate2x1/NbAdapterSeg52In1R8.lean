import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4470 rho ∧ Seg52.relationRow4471 rho ∧ Seg52.relationRow4472 rho ∧ Seg52.relationRow4473 rho ∧ Seg52.relationRow4474 rho ∧ Seg52.relationRow4475 rho ∧ Seg52.relationRow4476 rho ∧ Seg52.relationRow4477 rho ∧ Seg52.relationRow4478 rho ∧ Seg52.relationRow4479 rho ∧ Seg52.relationRow4480 rho ∧ Seg52.relationRow4481 rho ∧ Seg52.relationRow4482 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p55, p56, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨r4480, r4481, r4482, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482⟩

theorem seg52In1_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47682 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48858, rho 48859⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48858, rho 48859⟩
        ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48871, rho 48872⟩ := by
  obtain ⟨r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482⟩ := seg52In1_rows88 rho h
  unfold Seg52.relationRow4470 at r4470

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4470

  unfold Seg52.relationRow4471 at r4471

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4471

  unfold Seg52.relationRow4472 at r4472

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4472

  unfold Seg52.relationRow4473 at r4473

  unfold Seg52.relationRow4474 at r4474

  unfold Seg52.relationRow4475 at r4475

  unfold Seg52.relationRow4476 at r4476

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4476

  unfold Seg52.relationRow4477 at r4477

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4477

  unfold Seg52.relationRow4478 at r4478

  unfold Seg52.relationRow4479 at r4479

  unfold Seg52.relationRow4480 at r4480

  unfold Seg52.relationRow4481 at r4481

  unfold Seg52.relationRow4482 at r4482

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX89 rho = seg52In1AccX88 rho + rho 48866 := by
    unfold seg52In1AccX89 seg52In1AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 88]

    ring

  have hnexty : seg52In1AccY89 rho = seg52In1AccY88 rho + rho 48867 := by
    unfold seg52In1AccY89 seg52In1AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 88]

    ring

  have ha0 : (rho 48858 + rho 48859) * (seg52In1AccX88 rho + seg52In1AccY88 rho) = rho 48860 := by
    unfold seg52In1AccX88 seg52In1AccY88
    linear_combination r4470
  have ha1 : rho 48859 * seg52In1AccX88 rho = rho 48861 := by
    unfold seg52In1AccX88
    linear_combination r4471
  have ha2 : rho 48858 * seg52In1AccY88 rho = rho 48862 := by
    unfold seg52In1AccY88
    linear_combination r4472
  have ha3 : 3021 * rho 48861 * rho 48862 = rho 48863 := by
    linear_combination r4473
  have ha4 : rho 48864 * (1 + rho 48863) = rho 48861 + rho 48862 := by
    linear_combination r4474
  have ha5 : rho 48865 * (1 - rho 48863) = rho 48860 - rho 48861 - rho 48862 := by
    linear_combination r4475
  have haddx :
      rho 48864 * (1 + 3021 * (rho 48859 * seg52In1AccX88 rho) * (rho 48858 * seg52In1AccY88 rho)) =
        rho 48859 * seg52In1AccX88 rho + rho 48858 * seg52In1AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48865 * (1 - 3021 * (rho 48859 * seg52In1AccX88 rho) * (rho 48858 * seg52In1AccY88 rho)) =
        (-1) * (rho 48859 * seg52In1AccX88 rho) - rho 48858 * seg52In1AccY88 rho +
          (seg52In1AccY88 rho - seg52In1AccX88 rho * (-1)) * (rho 48858 + rho 48859) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48865 * (1 - rho 48863) = rho 48860 - rho 48861 - rho 48862 := ha5
      _ = (-1) * rho 48861 - rho 48862 + (seg52In1AccY88 rho - seg52In1AccX88 rho * (-1)) *
          (rho 48858 + rho 48859) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX89 rho = seg52In1AccX88 rho - Bool.toZMod bit * (seg52In1AccX88 rho - rho 48864) := by
    have hd : rho 48866 = Bool.toZMod bit * (rho 48864 - seg52In1AccX88 rho) := by
      rw [← hbit]
      unfold seg52In1AccX88
      linear_combination -r4476
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY89 rho = seg52In1AccY88 rho - Bool.toZMod bit * (seg52In1AccY88 rho - rho 48865) := by
    have hd : rho 48867 = Bool.toZMod bit * (rho 48865 - seg52In1AccY88 rho) := by
      rw [← hbit]
      unfold seg52In1AccY88
      linear_combination -r4477
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48858 * rho 48859 = rho 48868 := by linear_combination r4478
  have hd1 : rho 48858 * rho 48858 = rho 48869 := by linear_combination r4479
  have hd2 : rho 48859 * rho 48859 = rho 48870 := by linear_combination r4480
  have hd3 : rho 48871 * (rho 48859 * rho 48859 + rho 48858 * rho 48858 * (-1)) =
      2 * (rho 48858 * rho 48859) := by
    rw [hd0, hd1, hd2]
    linear_combination r4481
  have hd4 : rho 48872 * (2 - (rho 48859 * rho 48859 + rho 48858 * rho 48858 * (-1))) =
      rho 48859 * rho 48859 - rho 48858 * rho 48858 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4482
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48858, rho 48859⟩
    ⟨rho 48864, rho 48865⟩ ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48871, rho 48872⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4483 rho ∧ Seg52.relationRow4484 rho ∧ Seg52.relationRow4485 rho ∧ Seg52.relationRow4486 rho ∧ Seg52.relationRow4487 rho ∧ Seg52.relationRow4488 rho ∧ Seg52.relationRow4489 rho ∧ Seg52.relationRow4490 rho ∧ Seg52.relationRow4491 rho ∧ Seg52.relationRow4492 rho ∧ Seg52.relationRow4493 rho ∧ Seg52.relationRow4494 rho ∧ Seg52.relationRow4495 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495⟩

theorem seg52In1_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47683 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48871, rho 48872⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48871, rho 48872⟩
        ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48884, rho 48885⟩ := by
  obtain ⟨r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495⟩ := seg52In1_rows89 rho h
  unfold Seg52.relationRow4483 at r4483

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4483

  unfold Seg52.relationRow4484 at r4484

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4484

  unfold Seg52.relationRow4485 at r4485

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4485

  unfold Seg52.relationRow4486 at r4486

  unfold Seg52.relationRow4487 at r4487

  unfold Seg52.relationRow4488 at r4488

  unfold Seg52.relationRow4489 at r4489

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4489

  unfold Seg52.relationRow4490 at r4490

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4490

  unfold Seg52.relationRow4491 at r4491

  unfold Seg52.relationRow4492 at r4492

  unfold Seg52.relationRow4493 at r4493

  unfold Seg52.relationRow4494 at r4494

  unfold Seg52.relationRow4495 at r4495

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX90 rho = seg52In1AccX89 rho + rho 48879 := by
    unfold seg52In1AccX90 seg52In1AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 89]

    ring

  have hnexty : seg52In1AccY90 rho = seg52In1AccY89 rho + rho 48880 := by
    unfold seg52In1AccY90 seg52In1AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 89]

    ring

  have ha0 : (rho 48871 + rho 48872) * (seg52In1AccX89 rho + seg52In1AccY89 rho) = rho 48873 := by
    unfold seg52In1AccX89 seg52In1AccY89
    linear_combination r4483
  have ha1 : rho 48872 * seg52In1AccX89 rho = rho 48874 := by
    unfold seg52In1AccX89
    linear_combination r4484
  have ha2 : rho 48871 * seg52In1AccY89 rho = rho 48875 := by
    unfold seg52In1AccY89
    linear_combination r4485
  have ha3 : 3021 * rho 48874 * rho 48875 = rho 48876 := by
    linear_combination r4486
  have ha4 : rho 48877 * (1 + rho 48876) = rho 48874 + rho 48875 := by
    linear_combination r4487
  have ha5 : rho 48878 * (1 - rho 48876) = rho 48873 - rho 48874 - rho 48875 := by
    linear_combination r4488
  have haddx :
      rho 48877 * (1 + 3021 * (rho 48872 * seg52In1AccX89 rho) * (rho 48871 * seg52In1AccY89 rho)) =
        rho 48872 * seg52In1AccX89 rho + rho 48871 * seg52In1AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48878 * (1 - 3021 * (rho 48872 * seg52In1AccX89 rho) * (rho 48871 * seg52In1AccY89 rho)) =
        (-1) * (rho 48872 * seg52In1AccX89 rho) - rho 48871 * seg52In1AccY89 rho +
          (seg52In1AccY89 rho - seg52In1AccX89 rho * (-1)) * (rho 48871 + rho 48872) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48878 * (1 - rho 48876) = rho 48873 - rho 48874 - rho 48875 := ha5
      _ = (-1) * rho 48874 - rho 48875 + (seg52In1AccY89 rho - seg52In1AccX89 rho * (-1)) *
          (rho 48871 + rho 48872) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX90 rho = seg52In1AccX89 rho - Bool.toZMod bit * (seg52In1AccX89 rho - rho 48877) := by
    have hd : rho 48879 = Bool.toZMod bit * (rho 48877 - seg52In1AccX89 rho) := by
      rw [← hbit]
      unfold seg52In1AccX89
      linear_combination -r4489
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY90 rho = seg52In1AccY89 rho - Bool.toZMod bit * (seg52In1AccY89 rho - rho 48878) := by
    have hd : rho 48880 = Bool.toZMod bit * (rho 48878 - seg52In1AccY89 rho) := by
      rw [← hbit]
      unfold seg52In1AccY89
      linear_combination -r4490
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48871 * rho 48872 = rho 48881 := by linear_combination r4491
  have hd1 : rho 48871 * rho 48871 = rho 48882 := by linear_combination r4492
  have hd2 : rho 48872 * rho 48872 = rho 48883 := by linear_combination r4493
  have hd3 : rho 48884 * (rho 48872 * rho 48872 + rho 48871 * rho 48871 * (-1)) =
      2 * (rho 48871 * rho 48872) := by
    rw [hd0, hd1, hd2]
    linear_combination r4494
  have hd4 : rho 48885 * (2 - (rho 48872 * rho 48872 + rho 48871 * rho 48871 * (-1))) =
      rho 48872 * rho 48872 - rho 48871 * rho 48871 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4495
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX89 rho, seg52In1AccY89 rho⟩ ⟨rho 48871, rho 48872⟩
    ⟨rho 48877, rho 48878⟩ ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48884, rho 48885⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4496 rho ∧ Seg52.relationRow4497 rho ∧ Seg52.relationRow4498 rho ∧ Seg52.relationRow4499 rho ∧ Seg52.relationRow4500 rho ∧ Seg52.relationRow4501 rho ∧ Seg52.relationRow4502 rho ∧ Seg52.relationRow4503 rho ∧ Seg52.relationRow4504 rho ∧ Seg52.relationRow4505 rho ∧ Seg52.relationRow4506 rho ∧ Seg52.relationRow4507 rho ∧ Seg52.relationRow4508 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508⟩

theorem seg52In1_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47684 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48884, rho 48885⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48884, rho 48885⟩
        ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48897, rho 48898⟩ := by
  obtain ⟨r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508⟩ := seg52In1_rows90 rho h
  unfold Seg52.relationRow4496 at r4496

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4496

  unfold Seg52.relationRow4497 at r4497

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4497

  unfold Seg52.relationRow4498 at r4498

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4498

  unfold Seg52.relationRow4499 at r4499

  unfold Seg52.relationRow4500 at r4500

  unfold Seg52.relationRow4501 at r4501

  unfold Seg52.relationRow4502 at r4502

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4502

  unfold Seg52.relationRow4503 at r4503

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4503

  unfold Seg52.relationRow4504 at r4504

  unfold Seg52.relationRow4505 at r4505

  unfold Seg52.relationRow4506 at r4506

  unfold Seg52.relationRow4507 at r4507

  unfold Seg52.relationRow4508 at r4508

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX91 rho = seg52In1AccX90 rho + rho 48892 := by
    unfold seg52In1AccX91 seg52In1AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 90]

    ring

  have hnexty : seg52In1AccY91 rho = seg52In1AccY90 rho + rho 48893 := by
    unfold seg52In1AccY91 seg52In1AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 90]

    ring

  have ha0 : (rho 48884 + rho 48885) * (seg52In1AccX90 rho + seg52In1AccY90 rho) = rho 48886 := by
    unfold seg52In1AccX90 seg52In1AccY90
    linear_combination r4496
  have ha1 : rho 48885 * seg52In1AccX90 rho = rho 48887 := by
    unfold seg52In1AccX90
    linear_combination r4497
  have ha2 : rho 48884 * seg52In1AccY90 rho = rho 48888 := by
    unfold seg52In1AccY90
    linear_combination r4498
  have ha3 : 3021 * rho 48887 * rho 48888 = rho 48889 := by
    linear_combination r4499
  have ha4 : rho 48890 * (1 + rho 48889) = rho 48887 + rho 48888 := by
    linear_combination r4500
  have ha5 : rho 48891 * (1 - rho 48889) = rho 48886 - rho 48887 - rho 48888 := by
    linear_combination r4501
  have haddx :
      rho 48890 * (1 + 3021 * (rho 48885 * seg52In1AccX90 rho) * (rho 48884 * seg52In1AccY90 rho)) =
        rho 48885 * seg52In1AccX90 rho + rho 48884 * seg52In1AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48891 * (1 - 3021 * (rho 48885 * seg52In1AccX90 rho) * (rho 48884 * seg52In1AccY90 rho)) =
        (-1) * (rho 48885 * seg52In1AccX90 rho) - rho 48884 * seg52In1AccY90 rho +
          (seg52In1AccY90 rho - seg52In1AccX90 rho * (-1)) * (rho 48884 + rho 48885) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48891 * (1 - rho 48889) = rho 48886 - rho 48887 - rho 48888 := ha5
      _ = (-1) * rho 48887 - rho 48888 + (seg52In1AccY90 rho - seg52In1AccX90 rho * (-1)) *
          (rho 48884 + rho 48885) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX91 rho = seg52In1AccX90 rho - Bool.toZMod bit * (seg52In1AccX90 rho - rho 48890) := by
    have hd : rho 48892 = Bool.toZMod bit * (rho 48890 - seg52In1AccX90 rho) := by
      rw [← hbit]
      unfold seg52In1AccX90
      linear_combination -r4502
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY91 rho = seg52In1AccY90 rho - Bool.toZMod bit * (seg52In1AccY90 rho - rho 48891) := by
    have hd : rho 48893 = Bool.toZMod bit * (rho 48891 - seg52In1AccY90 rho) := by
      rw [← hbit]
      unfold seg52In1AccY90
      linear_combination -r4503
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48884 * rho 48885 = rho 48894 := by linear_combination r4504
  have hd1 : rho 48884 * rho 48884 = rho 48895 := by linear_combination r4505
  have hd2 : rho 48885 * rho 48885 = rho 48896 := by linear_combination r4506
  have hd3 : rho 48897 * (rho 48885 * rho 48885 + rho 48884 * rho 48884 * (-1)) =
      2 * (rho 48884 * rho 48885) := by
    rw [hd0, hd1, hd2]
    linear_combination r4507
  have hd4 : rho 48898 * (2 - (rho 48885 * rho 48885 + rho 48884 * rho 48884 * (-1))) =
      rho 48885 * rho 48885 - rho 48884 * rho 48884 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4508
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX90 rho, seg52In1AccY90 rho⟩ ⟨rho 48884, rho 48885⟩
    ⟨rho 48890, rho 48891⟩ ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48897, rho 48898⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4509 rho ∧ Seg52.relationRow4510 rho ∧ Seg52.relationRow4511 rho ∧ Seg52.relationRow4512 rho ∧ Seg52.relationRow4513 rho ∧ Seg52.relationRow4514 rho ∧ Seg52.relationRow4515 rho ∧ Seg52.relationRow4516 rho ∧ Seg52.relationRow4517 rho ∧ Seg52.relationRow4518 rho ∧ Seg52.relationRow4519 rho ∧ Seg52.relationRow4520 rho ∧ Seg52.relationRow4521 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521⟩

theorem seg52In1_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47685 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48897, rho 48898⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48897, rho 48898⟩
        ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48910, rho 48911⟩ := by
  obtain ⟨r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521⟩ := seg52In1_rows91 rho h
  unfold Seg52.relationRow4509 at r4509

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4509

  unfold Seg52.relationRow4510 at r4510

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4510

  unfold Seg52.relationRow4511 at r4511

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4511

  unfold Seg52.relationRow4512 at r4512

  unfold Seg52.relationRow4513 at r4513

  unfold Seg52.relationRow4514 at r4514

  unfold Seg52.relationRow4515 at r4515

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4515

  unfold Seg52.relationRow4516 at r4516

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4516

  unfold Seg52.relationRow4517 at r4517

  unfold Seg52.relationRow4518 at r4518

  unfold Seg52.relationRow4519 at r4519

  unfold Seg52.relationRow4520 at r4520

  unfold Seg52.relationRow4521 at r4521

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX92 rho = seg52In1AccX91 rho + rho 48905 := by
    unfold seg52In1AccX92 seg52In1AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 91]

    ring

  have hnexty : seg52In1AccY92 rho = seg52In1AccY91 rho + rho 48906 := by
    unfold seg52In1AccY92 seg52In1AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 91]

    ring

  have ha0 : (rho 48897 + rho 48898) * (seg52In1AccX91 rho + seg52In1AccY91 rho) = rho 48899 := by
    unfold seg52In1AccX91 seg52In1AccY91
    linear_combination r4509
  have ha1 : rho 48898 * seg52In1AccX91 rho = rho 48900 := by
    unfold seg52In1AccX91
    linear_combination r4510
  have ha2 : rho 48897 * seg52In1AccY91 rho = rho 48901 := by
    unfold seg52In1AccY91
    linear_combination r4511
  have ha3 : 3021 * rho 48900 * rho 48901 = rho 48902 := by
    linear_combination r4512
  have ha4 : rho 48903 * (1 + rho 48902) = rho 48900 + rho 48901 := by
    linear_combination r4513
  have ha5 : rho 48904 * (1 - rho 48902) = rho 48899 - rho 48900 - rho 48901 := by
    linear_combination r4514
  have haddx :
      rho 48903 * (1 + 3021 * (rho 48898 * seg52In1AccX91 rho) * (rho 48897 * seg52In1AccY91 rho)) =
        rho 48898 * seg52In1AccX91 rho + rho 48897 * seg52In1AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48904 * (1 - 3021 * (rho 48898 * seg52In1AccX91 rho) * (rho 48897 * seg52In1AccY91 rho)) =
        (-1) * (rho 48898 * seg52In1AccX91 rho) - rho 48897 * seg52In1AccY91 rho +
          (seg52In1AccY91 rho - seg52In1AccX91 rho * (-1)) * (rho 48897 + rho 48898) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48904 * (1 - rho 48902) = rho 48899 - rho 48900 - rho 48901 := ha5
      _ = (-1) * rho 48900 - rho 48901 + (seg52In1AccY91 rho - seg52In1AccX91 rho * (-1)) *
          (rho 48897 + rho 48898) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX92 rho = seg52In1AccX91 rho - Bool.toZMod bit * (seg52In1AccX91 rho - rho 48903) := by
    have hd : rho 48905 = Bool.toZMod bit * (rho 48903 - seg52In1AccX91 rho) := by
      rw [← hbit]
      unfold seg52In1AccX91
      linear_combination -r4515
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY92 rho = seg52In1AccY91 rho - Bool.toZMod bit * (seg52In1AccY91 rho - rho 48904) := by
    have hd : rho 48906 = Bool.toZMod bit * (rho 48904 - seg52In1AccY91 rho) := by
      rw [← hbit]
      unfold seg52In1AccY91
      linear_combination -r4516
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48897 * rho 48898 = rho 48907 := by linear_combination r4517
  have hd1 : rho 48897 * rho 48897 = rho 48908 := by linear_combination r4518
  have hd2 : rho 48898 * rho 48898 = rho 48909 := by linear_combination r4519
  have hd3 : rho 48910 * (rho 48898 * rho 48898 + rho 48897 * rho 48897 * (-1)) =
      2 * (rho 48897 * rho 48898) := by
    rw [hd0, hd1, hd2]
    linear_combination r4520
  have hd4 : rho 48911 * (2 - (rho 48898 * rho 48898 + rho 48897 * rho 48897 * (-1))) =
      rho 48898 * rho 48898 - rho 48897 * rho 48897 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4521
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX91 rho, seg52In1AccY91 rho⟩ ⟨rho 48897, rho 48898⟩
    ⟨rho 48903, rho 48904⟩ ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48910, rho 48911⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4522 rho ∧ Seg52.relationRow4523 rho ∧ Seg52.relationRow4524 rho ∧ Seg52.relationRow4525 rho ∧ Seg52.relationRow4526 rho ∧ Seg52.relationRow4527 rho ∧ Seg52.relationRow4528 rho ∧ Seg52.relationRow4529 rho ∧ Seg52.relationRow4530 rho ∧ Seg52.relationRow4531 rho ∧ Seg52.relationRow4532 rho ∧ Seg52.relationRow4533 rho ∧ Seg52.relationRow4534 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534⟩

theorem seg52In1_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47686 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48910, rho 48911⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48910, rho 48911⟩
        ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48923, rho 48924⟩ := by
  obtain ⟨r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534⟩ := seg52In1_rows92 rho h
  unfold Seg52.relationRow4522 at r4522

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4522

  unfold Seg52.relationRow4523 at r4523

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4523

  unfold Seg52.relationRow4524 at r4524

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4524

  unfold Seg52.relationRow4525 at r4525

  unfold Seg52.relationRow4526 at r4526

  unfold Seg52.relationRow4527 at r4527

  unfold Seg52.relationRow4528 at r4528

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4528

  unfold Seg52.relationRow4529 at r4529

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4529

  unfold Seg52.relationRow4530 at r4530

  unfold Seg52.relationRow4531 at r4531

  unfold Seg52.relationRow4532 at r4532

  unfold Seg52.relationRow4533 at r4533

  unfold Seg52.relationRow4534 at r4534

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX93 rho = seg52In1AccX92 rho + rho 48918 := by
    unfold seg52In1AccX93 seg52In1AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 92]

    ring

  have hnexty : seg52In1AccY93 rho = seg52In1AccY92 rho + rho 48919 := by
    unfold seg52In1AccY93 seg52In1AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 92]

    ring

  have ha0 : (rho 48910 + rho 48911) * (seg52In1AccX92 rho + seg52In1AccY92 rho) = rho 48912 := by
    unfold seg52In1AccX92 seg52In1AccY92
    linear_combination r4522
  have ha1 : rho 48911 * seg52In1AccX92 rho = rho 48913 := by
    unfold seg52In1AccX92
    linear_combination r4523
  have ha2 : rho 48910 * seg52In1AccY92 rho = rho 48914 := by
    unfold seg52In1AccY92
    linear_combination r4524
  have ha3 : 3021 * rho 48913 * rho 48914 = rho 48915 := by
    linear_combination r4525
  have ha4 : rho 48916 * (1 + rho 48915) = rho 48913 + rho 48914 := by
    linear_combination r4526
  have ha5 : rho 48917 * (1 - rho 48915) = rho 48912 - rho 48913 - rho 48914 := by
    linear_combination r4527
  have haddx :
      rho 48916 * (1 + 3021 * (rho 48911 * seg52In1AccX92 rho) * (rho 48910 * seg52In1AccY92 rho)) =
        rho 48911 * seg52In1AccX92 rho + rho 48910 * seg52In1AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48917 * (1 - 3021 * (rho 48911 * seg52In1AccX92 rho) * (rho 48910 * seg52In1AccY92 rho)) =
        (-1) * (rho 48911 * seg52In1AccX92 rho) - rho 48910 * seg52In1AccY92 rho +
          (seg52In1AccY92 rho - seg52In1AccX92 rho * (-1)) * (rho 48910 + rho 48911) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48917 * (1 - rho 48915) = rho 48912 - rho 48913 - rho 48914 := ha5
      _ = (-1) * rho 48913 - rho 48914 + (seg52In1AccY92 rho - seg52In1AccX92 rho * (-1)) *
          (rho 48910 + rho 48911) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX93 rho = seg52In1AccX92 rho - Bool.toZMod bit * (seg52In1AccX92 rho - rho 48916) := by
    have hd : rho 48918 = Bool.toZMod bit * (rho 48916 - seg52In1AccX92 rho) := by
      rw [← hbit]
      unfold seg52In1AccX92
      linear_combination -r4528
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY93 rho = seg52In1AccY92 rho - Bool.toZMod bit * (seg52In1AccY92 rho - rho 48917) := by
    have hd : rho 48919 = Bool.toZMod bit * (rho 48917 - seg52In1AccY92 rho) := by
      rw [← hbit]
      unfold seg52In1AccY92
      linear_combination -r4529
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48910 * rho 48911 = rho 48920 := by linear_combination r4530
  have hd1 : rho 48910 * rho 48910 = rho 48921 := by linear_combination r4531
  have hd2 : rho 48911 * rho 48911 = rho 48922 := by linear_combination r4532
  have hd3 : rho 48923 * (rho 48911 * rho 48911 + rho 48910 * rho 48910 * (-1)) =
      2 * (rho 48910 * rho 48911) := by
    rw [hd0, hd1, hd2]
    linear_combination r4533
  have hd4 : rho 48924 * (2 - (rho 48911 * rho 48911 + rho 48910 * rho 48910 * (-1))) =
      rho 48911 * rho 48911 - rho 48910 * rho 48910 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4534
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX92 rho, seg52In1AccY92 rho⟩ ⟨rho 48910, rho 48911⟩
    ⟨rho 48916, rho 48917⟩ ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48923, rho 48924⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4535 rho ∧ Seg52.relationRow4536 rho ∧ Seg52.relationRow4537 rho ∧ Seg52.relationRow4538 rho ∧ Seg52.relationRow4539 rho ∧ Seg52.relationRow4540 rho ∧ Seg52.relationRow4541 rho ∧ Seg52.relationRow4542 rho ∧ Seg52.relationRow4543 rho ∧ Seg52.relationRow4544 rho ∧ Seg52.relationRow4545 rho ∧ Seg52.relationRow4546 rho ∧ Seg52.relationRow4547 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547⟩

theorem seg52In1_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47687 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48923, rho 48924⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48923, rho 48924⟩
        ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48936, rho 48937⟩ := by
  obtain ⟨r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547⟩ := seg52In1_rows93 rho h
  unfold Seg52.relationRow4535 at r4535

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4535

  unfold Seg52.relationRow4536 at r4536

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4536

  unfold Seg52.relationRow4537 at r4537

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4537

  unfold Seg52.relationRow4538 at r4538

  unfold Seg52.relationRow4539 at r4539

  unfold Seg52.relationRow4540 at r4540

  unfold Seg52.relationRow4541 at r4541

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4541

  unfold Seg52.relationRow4542 at r4542

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4542

  unfold Seg52.relationRow4543 at r4543

  unfold Seg52.relationRow4544 at r4544

  unfold Seg52.relationRow4545 at r4545

  unfold Seg52.relationRow4546 at r4546

  unfold Seg52.relationRow4547 at r4547

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX94 rho = seg52In1AccX93 rho + rho 48931 := by
    unfold seg52In1AccX94 seg52In1AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 93]

    ring

  have hnexty : seg52In1AccY94 rho = seg52In1AccY93 rho + rho 48932 := by
    unfold seg52In1AccY94 seg52In1AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 93]

    ring

  have ha0 : (rho 48923 + rho 48924) * (seg52In1AccX93 rho + seg52In1AccY93 rho) = rho 48925 := by
    unfold seg52In1AccX93 seg52In1AccY93
    linear_combination r4535
  have ha1 : rho 48924 * seg52In1AccX93 rho = rho 48926 := by
    unfold seg52In1AccX93
    linear_combination r4536
  have ha2 : rho 48923 * seg52In1AccY93 rho = rho 48927 := by
    unfold seg52In1AccY93
    linear_combination r4537
  have ha3 : 3021 * rho 48926 * rho 48927 = rho 48928 := by
    linear_combination r4538
  have ha4 : rho 48929 * (1 + rho 48928) = rho 48926 + rho 48927 := by
    linear_combination r4539
  have ha5 : rho 48930 * (1 - rho 48928) = rho 48925 - rho 48926 - rho 48927 := by
    linear_combination r4540
  have haddx :
      rho 48929 * (1 + 3021 * (rho 48924 * seg52In1AccX93 rho) * (rho 48923 * seg52In1AccY93 rho)) =
        rho 48924 * seg52In1AccX93 rho + rho 48923 * seg52In1AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48930 * (1 - 3021 * (rho 48924 * seg52In1AccX93 rho) * (rho 48923 * seg52In1AccY93 rho)) =
        (-1) * (rho 48924 * seg52In1AccX93 rho) - rho 48923 * seg52In1AccY93 rho +
          (seg52In1AccY93 rho - seg52In1AccX93 rho * (-1)) * (rho 48923 + rho 48924) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48930 * (1 - rho 48928) = rho 48925 - rho 48926 - rho 48927 := ha5
      _ = (-1) * rho 48926 - rho 48927 + (seg52In1AccY93 rho - seg52In1AccX93 rho * (-1)) *
          (rho 48923 + rho 48924) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX94 rho = seg52In1AccX93 rho - Bool.toZMod bit * (seg52In1AccX93 rho - rho 48929) := by
    have hd : rho 48931 = Bool.toZMod bit * (rho 48929 - seg52In1AccX93 rho) := by
      rw [← hbit]
      unfold seg52In1AccX93
      linear_combination -r4541
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY94 rho = seg52In1AccY93 rho - Bool.toZMod bit * (seg52In1AccY93 rho - rho 48930) := by
    have hd : rho 48932 = Bool.toZMod bit * (rho 48930 - seg52In1AccY93 rho) := by
      rw [← hbit]
      unfold seg52In1AccY93
      linear_combination -r4542
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48923 * rho 48924 = rho 48933 := by linear_combination r4543
  have hd1 : rho 48923 * rho 48923 = rho 48934 := by linear_combination r4544
  have hd2 : rho 48924 * rho 48924 = rho 48935 := by linear_combination r4545
  have hd3 : rho 48936 * (rho 48924 * rho 48924 + rho 48923 * rho 48923 * (-1)) =
      2 * (rho 48923 * rho 48924) := by
    rw [hd0, hd1, hd2]
    linear_combination r4546
  have hd4 : rho 48937 * (2 - (rho 48924 * rho 48924 + rho 48923 * rho 48923 * (-1))) =
      rho 48924 * rho 48924 - rho 48923 * rho 48923 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4547
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX93 rho, seg52In1AccY93 rho⟩ ⟨rho 48923, rho 48924⟩
    ⟨rho 48929, rho 48930⟩ ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48936, rho 48937⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4548 rho ∧ Seg52.relationRow4549 rho ∧ Seg52.relationRow4550 rho ∧ Seg52.relationRow4551 rho ∧ Seg52.relationRow4552 rho ∧ Seg52.relationRow4553 rho ∧ Seg52.relationRow4554 rho ∧ Seg52.relationRow4555 rho ∧ Seg52.relationRow4556 rho ∧ Seg52.relationRow4557 rho ∧ Seg52.relationRow4558 rho ∧ Seg52.relationRow4559 rho ∧ Seg52.relationRow4560 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart56 at p56

  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨r4560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560⟩

theorem seg52In1_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47688 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48936, rho 48937⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48936, rho 48937⟩
        ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48949, rho 48950⟩ := by
  obtain ⟨r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559, r4560⟩ := seg52In1_rows94 rho h
  unfold Seg52.relationRow4548 at r4548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4548

  unfold Seg52.relationRow4549 at r4549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4549

  unfold Seg52.relationRow4550 at r4550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4550

  unfold Seg52.relationRow4551 at r4551

  unfold Seg52.relationRow4552 at r4552

  unfold Seg52.relationRow4553 at r4553

  unfold Seg52.relationRow4554 at r4554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4554

  unfold Seg52.relationRow4555 at r4555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4555

  unfold Seg52.relationRow4556 at r4556

  unfold Seg52.relationRow4557 at r4557

  unfold Seg52.relationRow4558 at r4558

  unfold Seg52.relationRow4559 at r4559

  unfold Seg52.relationRow4560 at r4560

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX95 rho = seg52In1AccX94 rho + rho 48944 := by
    unfold seg52In1AccX95 seg52In1AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 94]

    ring

  have hnexty : seg52In1AccY95 rho = seg52In1AccY94 rho + rho 48945 := by
    unfold seg52In1AccY95 seg52In1AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 94]

    ring

  have ha0 : (rho 48936 + rho 48937) * (seg52In1AccX94 rho + seg52In1AccY94 rho) = rho 48938 := by
    unfold seg52In1AccX94 seg52In1AccY94
    linear_combination r4548
  have ha1 : rho 48937 * seg52In1AccX94 rho = rho 48939 := by
    unfold seg52In1AccX94
    linear_combination r4549
  have ha2 : rho 48936 * seg52In1AccY94 rho = rho 48940 := by
    unfold seg52In1AccY94
    linear_combination r4550
  have ha3 : 3021 * rho 48939 * rho 48940 = rho 48941 := by
    linear_combination r4551
  have ha4 : rho 48942 * (1 + rho 48941) = rho 48939 + rho 48940 := by
    linear_combination r4552
  have ha5 : rho 48943 * (1 - rho 48941) = rho 48938 - rho 48939 - rho 48940 := by
    linear_combination r4553
  have haddx :
      rho 48942 * (1 + 3021 * (rho 48937 * seg52In1AccX94 rho) * (rho 48936 * seg52In1AccY94 rho)) =
        rho 48937 * seg52In1AccX94 rho + rho 48936 * seg52In1AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48943 * (1 - 3021 * (rho 48937 * seg52In1AccX94 rho) * (rho 48936 * seg52In1AccY94 rho)) =
        (-1) * (rho 48937 * seg52In1AccX94 rho) - rho 48936 * seg52In1AccY94 rho +
          (seg52In1AccY94 rho - seg52In1AccX94 rho * (-1)) * (rho 48936 + rho 48937) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48943 * (1 - rho 48941) = rho 48938 - rho 48939 - rho 48940 := ha5
      _ = (-1) * rho 48939 - rho 48940 + (seg52In1AccY94 rho - seg52In1AccX94 rho * (-1)) *
          (rho 48936 + rho 48937) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX95 rho = seg52In1AccX94 rho - Bool.toZMod bit * (seg52In1AccX94 rho - rho 48942) := by
    have hd : rho 48944 = Bool.toZMod bit * (rho 48942 - seg52In1AccX94 rho) := by
      rw [← hbit]
      unfold seg52In1AccX94
      linear_combination -r4554
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY95 rho = seg52In1AccY94 rho - Bool.toZMod bit * (seg52In1AccY94 rho - rho 48943) := by
    have hd : rho 48945 = Bool.toZMod bit * (rho 48943 - seg52In1AccY94 rho) := by
      rw [← hbit]
      unfold seg52In1AccY94
      linear_combination -r4555
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48936 * rho 48937 = rho 48946 := by linear_combination r4556
  have hd1 : rho 48936 * rho 48936 = rho 48947 := by linear_combination r4557
  have hd2 : rho 48937 * rho 48937 = rho 48948 := by linear_combination r4558
  have hd3 : rho 48949 * (rho 48937 * rho 48937 + rho 48936 * rho 48936 * (-1)) =
      2 * (rho 48936 * rho 48937) := by
    rw [hd0, hd1, hd2]
    linear_combination r4559
  have hd4 : rho 48950 * (2 - (rho 48937 * rho 48937 + rho 48936 * rho 48936 * (-1))) =
      rho 48937 * rho 48937 - rho 48936 * rho 48936 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4560
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX94 rho, seg52In1AccY94 rho⟩ ⟨rho 48936, rho 48937⟩
    ⟨rho 48942, rho 48943⟩ ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48949, rho 48950⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4561 rho ∧ Seg52.relationRow4562 rho ∧ Seg52.relationRow4563 rho ∧ Seg52.relationRow4564 rho ∧ Seg52.relationRow4565 rho ∧ Seg52.relationRow4566 rho ∧ Seg52.relationRow4567 rho ∧ Seg52.relationRow4568 rho ∧ Seg52.relationRow4569 rho ∧ Seg52.relationRow4570 rho ∧ Seg52.relationRow4571 rho ∧ Seg52.relationRow4572 rho ∧ Seg52.relationRow4573 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573⟩

theorem seg52In1_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47689 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48949, rho 48950⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48949, rho 48950⟩
        ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48962, rho 48963⟩ := by
  obtain ⟨r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573⟩ := seg52In1_rows95 rho h
  unfold Seg52.relationRow4561 at r4561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4561

  unfold Seg52.relationRow4562 at r4562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4562

  unfold Seg52.relationRow4563 at r4563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4563

  unfold Seg52.relationRow4564 at r4564

  unfold Seg52.relationRow4565 at r4565

  unfold Seg52.relationRow4566 at r4566

  unfold Seg52.relationRow4567 at r4567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4567

  unfold Seg52.relationRow4568 at r4568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4568

  unfold Seg52.relationRow4569 at r4569

  unfold Seg52.relationRow4570 at r4570

  unfold Seg52.relationRow4571 at r4571

  unfold Seg52.relationRow4572 at r4572

  unfold Seg52.relationRow4573 at r4573

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX96 rho = seg52In1AccX95 rho + rho 48957 := by
    unfold seg52In1AccX96 seg52In1AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 95]

    ring

  have hnexty : seg52In1AccY96 rho = seg52In1AccY95 rho + rho 48958 := by
    unfold seg52In1AccY96 seg52In1AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 95]

    ring

  have ha0 : (rho 48949 + rho 48950) * (seg52In1AccX95 rho + seg52In1AccY95 rho) = rho 48951 := by
    unfold seg52In1AccX95 seg52In1AccY95
    linear_combination r4561
  have ha1 : rho 48950 * seg52In1AccX95 rho = rho 48952 := by
    unfold seg52In1AccX95
    linear_combination r4562
  have ha2 : rho 48949 * seg52In1AccY95 rho = rho 48953 := by
    unfold seg52In1AccY95
    linear_combination r4563
  have ha3 : 3021 * rho 48952 * rho 48953 = rho 48954 := by
    linear_combination r4564
  have ha4 : rho 48955 * (1 + rho 48954) = rho 48952 + rho 48953 := by
    linear_combination r4565
  have ha5 : rho 48956 * (1 - rho 48954) = rho 48951 - rho 48952 - rho 48953 := by
    linear_combination r4566
  have haddx :
      rho 48955 * (1 + 3021 * (rho 48950 * seg52In1AccX95 rho) * (rho 48949 * seg52In1AccY95 rho)) =
        rho 48950 * seg52In1AccX95 rho + rho 48949 * seg52In1AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48956 * (1 - 3021 * (rho 48950 * seg52In1AccX95 rho) * (rho 48949 * seg52In1AccY95 rho)) =
        (-1) * (rho 48950 * seg52In1AccX95 rho) - rho 48949 * seg52In1AccY95 rho +
          (seg52In1AccY95 rho - seg52In1AccX95 rho * (-1)) * (rho 48949 + rho 48950) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48956 * (1 - rho 48954) = rho 48951 - rho 48952 - rho 48953 := ha5
      _ = (-1) * rho 48952 - rho 48953 + (seg52In1AccY95 rho - seg52In1AccX95 rho * (-1)) *
          (rho 48949 + rho 48950) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX96 rho = seg52In1AccX95 rho - Bool.toZMod bit * (seg52In1AccX95 rho - rho 48955) := by
    have hd : rho 48957 = Bool.toZMod bit * (rho 48955 - seg52In1AccX95 rho) := by
      rw [← hbit]
      unfold seg52In1AccX95
      linear_combination -r4567
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY96 rho = seg52In1AccY95 rho - Bool.toZMod bit * (seg52In1AccY95 rho - rho 48956) := by
    have hd : rho 48958 = Bool.toZMod bit * (rho 48956 - seg52In1AccY95 rho) := by
      rw [← hbit]
      unfold seg52In1AccY95
      linear_combination -r4568
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48949 * rho 48950 = rho 48959 := by linear_combination r4569
  have hd1 : rho 48949 * rho 48949 = rho 48960 := by linear_combination r4570
  have hd2 : rho 48950 * rho 48950 = rho 48961 := by linear_combination r4571
  have hd3 : rho 48962 * (rho 48950 * rho 48950 + rho 48949 * rho 48949 * (-1)) =
      2 * (rho 48949 * rho 48950) := by
    rw [hd0, hd1, hd2]
    linear_combination r4572
  have hd4 : rho 48963 * (2 - (rho 48950 * rho 48950 + rho 48949 * rho 48949 * (-1))) =
      rho 48950 * rho 48950 - rho 48949 * rho 48949 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4573
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX95 rho, seg52In1AccY95 rho⟩ ⟨rho 48949, rho 48950⟩
    ⟨rho 48955, rho 48956⟩ ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48962, rho 48963⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4574 rho ∧ Seg52.relationRow4575 rho ∧ Seg52.relationRow4576 rho ∧ Seg52.relationRow4577 rho ∧ Seg52.relationRow4578 rho ∧ Seg52.relationRow4579 rho ∧ Seg52.relationRow4580 rho ∧ Seg52.relationRow4581 rho ∧ Seg52.relationRow4582 rho ∧ Seg52.relationRow4583 rho ∧ Seg52.relationRow4584 rho ∧ Seg52.relationRow4585 rho ∧ Seg52.relationRow4586 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586⟩

theorem seg52In1_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47690 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48962, rho 48963⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48962, rho 48963⟩
        ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48975, rho 48976⟩ := by
  obtain ⟨r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586⟩ := seg52In1_rows96 rho h
  unfold Seg52.relationRow4574 at r4574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4574

  unfold Seg52.relationRow4575 at r4575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4575

  unfold Seg52.relationRow4576 at r4576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4576

  unfold Seg52.relationRow4577 at r4577

  unfold Seg52.relationRow4578 at r4578

  unfold Seg52.relationRow4579 at r4579

  unfold Seg52.relationRow4580 at r4580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4580

  unfold Seg52.relationRow4581 at r4581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4581

  unfold Seg52.relationRow4582 at r4582

  unfold Seg52.relationRow4583 at r4583

  unfold Seg52.relationRow4584 at r4584

  unfold Seg52.relationRow4585 at r4585

  unfold Seg52.relationRow4586 at r4586

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX97 rho = seg52In1AccX96 rho + rho 48970 := by
    unfold seg52In1AccX97 seg52In1AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 96]

    ring

  have hnexty : seg52In1AccY97 rho = seg52In1AccY96 rho + rho 48971 := by
    unfold seg52In1AccY97 seg52In1AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 96]

    ring

  have ha0 : (rho 48962 + rho 48963) * (seg52In1AccX96 rho + seg52In1AccY96 rho) = rho 48964 := by
    unfold seg52In1AccX96 seg52In1AccY96
    linear_combination r4574
  have ha1 : rho 48963 * seg52In1AccX96 rho = rho 48965 := by
    unfold seg52In1AccX96
    linear_combination r4575
  have ha2 : rho 48962 * seg52In1AccY96 rho = rho 48966 := by
    unfold seg52In1AccY96
    linear_combination r4576
  have ha3 : 3021 * rho 48965 * rho 48966 = rho 48967 := by
    linear_combination r4577
  have ha4 : rho 48968 * (1 + rho 48967) = rho 48965 + rho 48966 := by
    linear_combination r4578
  have ha5 : rho 48969 * (1 - rho 48967) = rho 48964 - rho 48965 - rho 48966 := by
    linear_combination r4579
  have haddx :
      rho 48968 * (1 + 3021 * (rho 48963 * seg52In1AccX96 rho) * (rho 48962 * seg52In1AccY96 rho)) =
        rho 48963 * seg52In1AccX96 rho + rho 48962 * seg52In1AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48969 * (1 - 3021 * (rho 48963 * seg52In1AccX96 rho) * (rho 48962 * seg52In1AccY96 rho)) =
        (-1) * (rho 48963 * seg52In1AccX96 rho) - rho 48962 * seg52In1AccY96 rho +
          (seg52In1AccY96 rho - seg52In1AccX96 rho * (-1)) * (rho 48962 + rho 48963) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48969 * (1 - rho 48967) = rho 48964 - rho 48965 - rho 48966 := ha5
      _ = (-1) * rho 48965 - rho 48966 + (seg52In1AccY96 rho - seg52In1AccX96 rho * (-1)) *
          (rho 48962 + rho 48963) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX97 rho = seg52In1AccX96 rho - Bool.toZMod bit * (seg52In1AccX96 rho - rho 48968) := by
    have hd : rho 48970 = Bool.toZMod bit * (rho 48968 - seg52In1AccX96 rho) := by
      rw [← hbit]
      unfold seg52In1AccX96
      linear_combination -r4580
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY97 rho = seg52In1AccY96 rho - Bool.toZMod bit * (seg52In1AccY96 rho - rho 48969) := by
    have hd : rho 48971 = Bool.toZMod bit * (rho 48969 - seg52In1AccY96 rho) := by
      rw [← hbit]
      unfold seg52In1AccY96
      linear_combination -r4581
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48962 * rho 48963 = rho 48972 := by linear_combination r4582
  have hd1 : rho 48962 * rho 48962 = rho 48973 := by linear_combination r4583
  have hd2 : rho 48963 * rho 48963 = rho 48974 := by linear_combination r4584
  have hd3 : rho 48975 * (rho 48963 * rho 48963 + rho 48962 * rho 48962 * (-1)) =
      2 * (rho 48962 * rho 48963) := by
    rw [hd0, hd1, hd2]
    linear_combination r4585
  have hd4 : rho 48976 * (2 - (rho 48963 * rho 48963 + rho 48962 * rho 48962 * (-1))) =
      rho 48963 * rho 48963 - rho 48962 * rho 48962 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4586
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX96 rho, seg52In1AccY96 rho⟩ ⟨rho 48962, rho 48963⟩
    ⟨rho 48968, rho 48969⟩ ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48975, rho 48976⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4587 rho ∧ Seg52.relationRow4588 rho ∧ Seg52.relationRow4589 rho ∧ Seg52.relationRow4590 rho ∧ Seg52.relationRow4591 rho ∧ Seg52.relationRow4592 rho ∧ Seg52.relationRow4593 rho ∧ Seg52.relationRow4594 rho ∧ Seg52.relationRow4595 rho ∧ Seg52.relationRow4596 rho ∧ Seg52.relationRow4597 rho ∧ Seg52.relationRow4598 rho ∧ Seg52.relationRow4599 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599⟩

theorem seg52In1_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47691 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48975, rho 48976⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48975, rho 48976⟩
        ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48988, rho 48989⟩ := by
  obtain ⟨r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599⟩ := seg52In1_rows97 rho h
  unfold Seg52.relationRow4587 at r4587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4587

  unfold Seg52.relationRow4588 at r4588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4588

  unfold Seg52.relationRow4589 at r4589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4589

  unfold Seg52.relationRow4590 at r4590

  unfold Seg52.relationRow4591 at r4591

  unfold Seg52.relationRow4592 at r4592

  unfold Seg52.relationRow4593 at r4593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4593

  unfold Seg52.relationRow4594 at r4594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4594

  unfold Seg52.relationRow4595 at r4595

  unfold Seg52.relationRow4596 at r4596

  unfold Seg52.relationRow4597 at r4597

  unfold Seg52.relationRow4598 at r4598

  unfold Seg52.relationRow4599 at r4599

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX98 rho = seg52In1AccX97 rho + rho 48983 := by
    unfold seg52In1AccX98 seg52In1AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 97]

    ring

  have hnexty : seg52In1AccY98 rho = seg52In1AccY97 rho + rho 48984 := by
    unfold seg52In1AccY98 seg52In1AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 97]

    ring

  have ha0 : (rho 48975 + rho 48976) * (seg52In1AccX97 rho + seg52In1AccY97 rho) = rho 48977 := by
    unfold seg52In1AccX97 seg52In1AccY97
    linear_combination r4587
  have ha1 : rho 48976 * seg52In1AccX97 rho = rho 48978 := by
    unfold seg52In1AccX97
    linear_combination r4588
  have ha2 : rho 48975 * seg52In1AccY97 rho = rho 48979 := by
    unfold seg52In1AccY97
    linear_combination r4589
  have ha3 : 3021 * rho 48978 * rho 48979 = rho 48980 := by
    linear_combination r4590
  have ha4 : rho 48981 * (1 + rho 48980) = rho 48978 + rho 48979 := by
    linear_combination r4591
  have ha5 : rho 48982 * (1 - rho 48980) = rho 48977 - rho 48978 - rho 48979 := by
    linear_combination r4592
  have haddx :
      rho 48981 * (1 + 3021 * (rho 48976 * seg52In1AccX97 rho) * (rho 48975 * seg52In1AccY97 rho)) =
        rho 48976 * seg52In1AccX97 rho + rho 48975 * seg52In1AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48982 * (1 - 3021 * (rho 48976 * seg52In1AccX97 rho) * (rho 48975 * seg52In1AccY97 rho)) =
        (-1) * (rho 48976 * seg52In1AccX97 rho) - rho 48975 * seg52In1AccY97 rho +
          (seg52In1AccY97 rho - seg52In1AccX97 rho * (-1)) * (rho 48975 + rho 48976) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48982 * (1 - rho 48980) = rho 48977 - rho 48978 - rho 48979 := ha5
      _ = (-1) * rho 48978 - rho 48979 + (seg52In1AccY97 rho - seg52In1AccX97 rho * (-1)) *
          (rho 48975 + rho 48976) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX98 rho = seg52In1AccX97 rho - Bool.toZMod bit * (seg52In1AccX97 rho - rho 48981) := by
    have hd : rho 48983 = Bool.toZMod bit * (rho 48981 - seg52In1AccX97 rho) := by
      rw [← hbit]
      unfold seg52In1AccX97
      linear_combination -r4593
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY98 rho = seg52In1AccY97 rho - Bool.toZMod bit * (seg52In1AccY97 rho - rho 48982) := by
    have hd : rho 48984 = Bool.toZMod bit * (rho 48982 - seg52In1AccY97 rho) := by
      rw [← hbit]
      unfold seg52In1AccY97
      linear_combination -r4594
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48975 * rho 48976 = rho 48985 := by linear_combination r4595
  have hd1 : rho 48975 * rho 48975 = rho 48986 := by linear_combination r4596
  have hd2 : rho 48976 * rho 48976 = rho 48987 := by linear_combination r4597
  have hd3 : rho 48988 * (rho 48976 * rho 48976 + rho 48975 * rho 48975 * (-1)) =
      2 * (rho 48975 * rho 48976) := by
    rw [hd0, hd1, hd2]
    linear_combination r4598
  have hd4 : rho 48989 * (2 - (rho 48976 * rho 48976 + rho 48975 * rho 48975 * (-1))) =
      rho 48976 * rho 48976 - rho 48975 * rho 48975 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4599
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX97 rho, seg52In1AccY97 rho⟩ ⟨rho 48975, rho 48976⟩
    ⟨rho 48981, rho 48982⟩ ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48988, rho 48989⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4600 rho ∧ Seg52.relationRow4601 rho ∧ Seg52.relationRow4602 rho ∧ Seg52.relationRow4603 rho ∧ Seg52.relationRow4604 rho ∧ Seg52.relationRow4605 rho ∧ Seg52.relationRow4606 rho ∧ Seg52.relationRow4607 rho ∧ Seg52.relationRow4608 rho ∧ Seg52.relationRow4609 rho ∧ Seg52.relationRow4610 rho ∧ Seg52.relationRow4611 rho ∧ Seg52.relationRow4612 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612⟩

theorem seg52In1_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47692 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48988, rho 48989⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48988, rho 48989⟩
        ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 49001, rho 49002⟩ := by
  obtain ⟨r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612⟩ := seg52In1_rows98 rho h
  unfold Seg52.relationRow4600 at r4600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4600

  unfold Seg52.relationRow4601 at r4601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4601

  unfold Seg52.relationRow4602 at r4602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4602

  unfold Seg52.relationRow4603 at r4603

  unfold Seg52.relationRow4604 at r4604

  unfold Seg52.relationRow4605 at r4605

  unfold Seg52.relationRow4606 at r4606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4606

  unfold Seg52.relationRow4607 at r4607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4607

  unfold Seg52.relationRow4608 at r4608

  unfold Seg52.relationRow4609 at r4609

  unfold Seg52.relationRow4610 at r4610

  unfold Seg52.relationRow4611 at r4611

  unfold Seg52.relationRow4612 at r4612

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX99 rho = seg52In1AccX98 rho + rho 48996 := by
    unfold seg52In1AccX99 seg52In1AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 98]

    ring

  have hnexty : seg52In1AccY99 rho = seg52In1AccY98 rho + rho 48997 := by
    unfold seg52In1AccY99 seg52In1AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 98]

    ring

  have ha0 : (rho 48988 + rho 48989) * (seg52In1AccX98 rho + seg52In1AccY98 rho) = rho 48990 := by
    unfold seg52In1AccX98 seg52In1AccY98
    linear_combination r4600
  have ha1 : rho 48989 * seg52In1AccX98 rho = rho 48991 := by
    unfold seg52In1AccX98
    linear_combination r4601
  have ha2 : rho 48988 * seg52In1AccY98 rho = rho 48992 := by
    unfold seg52In1AccY98
    linear_combination r4602
  have ha3 : 3021 * rho 48991 * rho 48992 = rho 48993 := by
    linear_combination r4603
  have ha4 : rho 48994 * (1 + rho 48993) = rho 48991 + rho 48992 := by
    linear_combination r4604
  have ha5 : rho 48995 * (1 - rho 48993) = rho 48990 - rho 48991 - rho 48992 := by
    linear_combination r4605
  have haddx :
      rho 48994 * (1 + 3021 * (rho 48989 * seg52In1AccX98 rho) * (rho 48988 * seg52In1AccY98 rho)) =
        rho 48989 * seg52In1AccX98 rho + rho 48988 * seg52In1AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48995 * (1 - 3021 * (rho 48989 * seg52In1AccX98 rho) * (rho 48988 * seg52In1AccY98 rho)) =
        (-1) * (rho 48989 * seg52In1AccX98 rho) - rho 48988 * seg52In1AccY98 rho +
          (seg52In1AccY98 rho - seg52In1AccX98 rho * (-1)) * (rho 48988 + rho 48989) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48995 * (1 - rho 48993) = rho 48990 - rho 48991 - rho 48992 := ha5
      _ = (-1) * rho 48991 - rho 48992 + (seg52In1AccY98 rho - seg52In1AccX98 rho * (-1)) *
          (rho 48988 + rho 48989) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX99 rho = seg52In1AccX98 rho - Bool.toZMod bit * (seg52In1AccX98 rho - rho 48994) := by
    have hd : rho 48996 = Bool.toZMod bit * (rho 48994 - seg52In1AccX98 rho) := by
      rw [← hbit]
      unfold seg52In1AccX98
      linear_combination -r4606
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY99 rho = seg52In1AccY98 rho - Bool.toZMod bit * (seg52In1AccY98 rho - rho 48995) := by
    have hd : rho 48997 = Bool.toZMod bit * (rho 48995 - seg52In1AccY98 rho) := by
      rw [← hbit]
      unfold seg52In1AccY98
      linear_combination -r4607
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48988 * rho 48989 = rho 48998 := by linear_combination r4608
  have hd1 : rho 48988 * rho 48988 = rho 48999 := by linear_combination r4609
  have hd2 : rho 48989 * rho 48989 = rho 49000 := by linear_combination r4610
  have hd3 : rho 49001 * (rho 48989 * rho 48989 + rho 48988 * rho 48988 * (-1)) =
      2 * (rho 48988 * rho 48989) := by
    rw [hd0, hd1, hd2]
    linear_combination r4611
  have hd4 : rho 49002 * (2 - (rho 48989 * rho 48989 + rho 48988 * rho 48988 * (-1))) =
      rho 48989 * rho 48989 - rho 48988 * rho 48988 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4612
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX98 rho, seg52In1AccY98 rho⟩ ⟨rho 48988, rho 48989⟩
    ⟨rho 48994, rho 48995⟩ ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 49001, rho 49002⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg52In1_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg52In1_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg52In1_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg52In1_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg52In1_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg52In1_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg52In1_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg52In1_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg52In1_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg52In1_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
