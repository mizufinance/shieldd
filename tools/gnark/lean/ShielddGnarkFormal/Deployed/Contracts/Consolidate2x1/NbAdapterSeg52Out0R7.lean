import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5480 rho ∧ Seg52.relationRow5481 rho ∧ Seg52.relationRow5482 rho ∧ Seg52.relationRow5483 rho ∧ Seg52.relationRow5484 rho ∧ Seg52.relationRow5485 rho ∧ Seg52.relationRow5486 rho ∧ Seg52.relationRow5487 rho ∧ Seg52.relationRow5488 rho ∧ Seg52.relationRow5489 rho ∧ Seg52.relationRow5490 rho ∧ Seg52.relationRow5491 rho ∧ Seg52.relationRow5492 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492⟩

theorem seg52Out0_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48823 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49867, rho 49868⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 49867, rho 49868⟩
        ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 49880, rho 49881⟩ := by
  obtain ⟨r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492⟩ := seg52Out0_rows77 rho h
  unfold Seg52.relationRow5480 at r5480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5480

  unfold Seg52.relationRow5481 at r5481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5481

  unfold Seg52.relationRow5482 at r5482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482

  unfold Seg52.relationRow5483 at r5483

  unfold Seg52.relationRow5484 at r5484

  unfold Seg52.relationRow5485 at r5485

  unfold Seg52.relationRow5486 at r5486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5486

  unfold Seg52.relationRow5487 at r5487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5487

  unfold Seg52.relationRow5488 at r5488

  unfold Seg52.relationRow5489 at r5489

  unfold Seg52.relationRow5490 at r5490

  unfold Seg52.relationRow5491 at r5491

  unfold Seg52.relationRow5492 at r5492

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX78 rho = seg52Out0AccX77 rho + rho 49875 := by
    unfold seg52Out0AccX78 seg52Out0AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 77]

    ring

  have hnexty : seg52Out0AccY78 rho = seg52Out0AccY77 rho + rho 49876 := by
    unfold seg52Out0AccY78 seg52Out0AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 77]

    ring

  have ha0 : (rho 49867 + rho 49868) * (seg52Out0AccX77 rho + seg52Out0AccY77 rho) = rho 49869 := by
    unfold seg52Out0AccX77 seg52Out0AccY77
    linear_combination r5480
  have ha1 : rho 49868 * seg52Out0AccX77 rho = rho 49870 := by
    unfold seg52Out0AccX77
    linear_combination r5481
  have ha2 : rho 49867 * seg52Out0AccY77 rho = rho 49871 := by
    unfold seg52Out0AccY77
    linear_combination r5482
  have ha3 : 3021 * rho 49870 * rho 49871 = rho 49872 := by
    linear_combination r5483
  have ha4 : rho 49873 * (1 + rho 49872) = rho 49870 + rho 49871 := by
    linear_combination r5484
  have ha5 : rho 49874 * (1 - rho 49872) = rho 49869 - rho 49870 - rho 49871 := by
    linear_combination r5485
  have haddx :
      rho 49873 * (1 + 3021 * (rho 49868 * seg52Out0AccX77 rho) * (rho 49867 * seg52Out0AccY77 rho)) =
        rho 49868 * seg52Out0AccX77 rho + rho 49867 * seg52Out0AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49874 * (1 - 3021 * (rho 49868 * seg52Out0AccX77 rho) * (rho 49867 * seg52Out0AccY77 rho)) =
        (-1) * (rho 49868 * seg52Out0AccX77 rho) - rho 49867 * seg52Out0AccY77 rho +
          (seg52Out0AccY77 rho - seg52Out0AccX77 rho * (-1)) * (rho 49867 + rho 49868) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49874 * (1 - rho 49872) = rho 49869 - rho 49870 - rho 49871 := ha5
      _ = (-1) * rho 49870 - rho 49871 + (seg52Out0AccY77 rho - seg52Out0AccX77 rho * (-1)) *
          (rho 49867 + rho 49868) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX78 rho = seg52Out0AccX77 rho - Bool.toZMod bit * (seg52Out0AccX77 rho - rho 49873) := by
    have hd : rho 49875 = Bool.toZMod bit * (rho 49873 - seg52Out0AccX77 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX77
      linear_combination -r5486
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY78 rho = seg52Out0AccY77 rho - Bool.toZMod bit * (seg52Out0AccY77 rho - rho 49874) := by
    have hd : rho 49876 = Bool.toZMod bit * (rho 49874 - seg52Out0AccY77 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY77
      linear_combination -r5487
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49867 * rho 49868 = rho 49877 := by linear_combination r5488
  have hd1 : rho 49867 * rho 49867 = rho 49878 := by linear_combination r5489
  have hd2 : rho 49868 * rho 49868 = rho 49879 := by linear_combination r5490
  have hd3 : rho 49880 * (rho 49868 * rho 49868 + rho 49867 * rho 49867 * (-1)) =
      2 * (rho 49867 * rho 49868) := by
    rw [hd0, hd1, hd2]
    linear_combination r5491
  have hd4 : rho 49881 * (2 - (rho 49868 * rho 49868 + rho 49867 * rho 49867 * (-1))) =
      rho 49868 * rho 49868 - rho 49867 * rho 49867 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5492
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 49867, rho 49868⟩
    ⟨rho 49873, rho 49874⟩ ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 49880, rho 49881⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5493 rho ∧ Seg52.relationRow5494 rho ∧ Seg52.relationRow5495 rho ∧ Seg52.relationRow5496 rho ∧ Seg52.relationRow5497 rho ∧ Seg52.relationRow5498 rho ∧ Seg52.relationRow5499 rho ∧ Seg52.relationRow5500 rho ∧ Seg52.relationRow5501 rho ∧ Seg52.relationRow5502 rho ∧ Seg52.relationRow5503 rho ∧ Seg52.relationRow5504 rho ∧ Seg52.relationRow5505 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505⟩

theorem seg52Out0_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48824 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49880, rho 49881⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 49880, rho 49881⟩
        ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 49893, rho 49894⟩ := by
  obtain ⟨r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505⟩ := seg52Out0_rows78 rho h
  unfold Seg52.relationRow5493 at r5493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5493

  unfold Seg52.relationRow5494 at r5494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5494

  unfold Seg52.relationRow5495 at r5495

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5495

  unfold Seg52.relationRow5496 at r5496

  unfold Seg52.relationRow5497 at r5497

  unfold Seg52.relationRow5498 at r5498

  unfold Seg52.relationRow5499 at r5499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5499

  unfold Seg52.relationRow5500 at r5500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5500

  unfold Seg52.relationRow5501 at r5501

  unfold Seg52.relationRow5502 at r5502

  unfold Seg52.relationRow5503 at r5503

  unfold Seg52.relationRow5504 at r5504

  unfold Seg52.relationRow5505 at r5505

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX79 rho = seg52Out0AccX78 rho + rho 49888 := by
    unfold seg52Out0AccX79 seg52Out0AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 78]

    ring

  have hnexty : seg52Out0AccY79 rho = seg52Out0AccY78 rho + rho 49889 := by
    unfold seg52Out0AccY79 seg52Out0AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 78]

    ring

  have ha0 : (rho 49880 + rho 49881) * (seg52Out0AccX78 rho + seg52Out0AccY78 rho) = rho 49882 := by
    unfold seg52Out0AccX78 seg52Out0AccY78
    linear_combination r5493
  have ha1 : rho 49881 * seg52Out0AccX78 rho = rho 49883 := by
    unfold seg52Out0AccX78
    linear_combination r5494
  have ha2 : rho 49880 * seg52Out0AccY78 rho = rho 49884 := by
    unfold seg52Out0AccY78
    linear_combination r5495
  have ha3 : 3021 * rho 49883 * rho 49884 = rho 49885 := by
    linear_combination r5496
  have ha4 : rho 49886 * (1 + rho 49885) = rho 49883 + rho 49884 := by
    linear_combination r5497
  have ha5 : rho 49887 * (1 - rho 49885) = rho 49882 - rho 49883 - rho 49884 := by
    linear_combination r5498
  have haddx :
      rho 49886 * (1 + 3021 * (rho 49881 * seg52Out0AccX78 rho) * (rho 49880 * seg52Out0AccY78 rho)) =
        rho 49881 * seg52Out0AccX78 rho + rho 49880 * seg52Out0AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49887 * (1 - 3021 * (rho 49881 * seg52Out0AccX78 rho) * (rho 49880 * seg52Out0AccY78 rho)) =
        (-1) * (rho 49881 * seg52Out0AccX78 rho) - rho 49880 * seg52Out0AccY78 rho +
          (seg52Out0AccY78 rho - seg52Out0AccX78 rho * (-1)) * (rho 49880 + rho 49881) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49887 * (1 - rho 49885) = rho 49882 - rho 49883 - rho 49884 := ha5
      _ = (-1) * rho 49883 - rho 49884 + (seg52Out0AccY78 rho - seg52Out0AccX78 rho * (-1)) *
          (rho 49880 + rho 49881) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX79 rho = seg52Out0AccX78 rho - Bool.toZMod bit * (seg52Out0AccX78 rho - rho 49886) := by
    have hd : rho 49888 = Bool.toZMod bit * (rho 49886 - seg52Out0AccX78 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX78
      linear_combination -r5499
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY79 rho = seg52Out0AccY78 rho - Bool.toZMod bit * (seg52Out0AccY78 rho - rho 49887) := by
    have hd : rho 49889 = Bool.toZMod bit * (rho 49887 - seg52Out0AccY78 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY78
      linear_combination -r5500
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49880 * rho 49881 = rho 49890 := by linear_combination r5501
  have hd1 : rho 49880 * rho 49880 = rho 49891 := by linear_combination r5502
  have hd2 : rho 49881 * rho 49881 = rho 49892 := by linear_combination r5503
  have hd3 : rho 49893 * (rho 49881 * rho 49881 + rho 49880 * rho 49880 * (-1)) =
      2 * (rho 49880 * rho 49881) := by
    rw [hd0, hd1, hd2]
    linear_combination r5504
  have hd4 : rho 49894 * (2 - (rho 49881 * rho 49881 + rho 49880 * rho 49880 * (-1))) =
      rho 49881 * rho 49881 - rho 49880 * rho 49880 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5505
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 49880, rho 49881⟩
    ⟨rho 49886, rho 49887⟩ ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 49893, rho 49894⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5506 rho ∧ Seg52.relationRow5507 rho ∧ Seg52.relationRow5508 rho ∧ Seg52.relationRow5509 rho ∧ Seg52.relationRow5510 rho ∧ Seg52.relationRow5511 rho ∧ Seg52.relationRow5512 rho ∧ Seg52.relationRow5513 rho ∧ Seg52.relationRow5514 rho ∧ Seg52.relationRow5515 rho ∧ Seg52.relationRow5516 rho ∧ Seg52.relationRow5517 rho ∧ Seg52.relationRow5518 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, _⟩

  exact ⟨r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518⟩

theorem seg52Out0_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48825 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49893, rho 49894⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 49893, rho 49894⟩
        ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 49906, rho 49907⟩ := by
  obtain ⟨r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518⟩ := seg52Out0_rows79 rho h
  unfold Seg52.relationRow5506 at r5506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506

  unfold Seg52.relationRow5507 at r5507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5507

  unfold Seg52.relationRow5508 at r5508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5508

  unfold Seg52.relationRow5509 at r5509

  unfold Seg52.relationRow5510 at r5510

  unfold Seg52.relationRow5511 at r5511

  unfold Seg52.relationRow5512 at r5512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5512

  unfold Seg52.relationRow5513 at r5513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5513

  unfold Seg52.relationRow5514 at r5514

  unfold Seg52.relationRow5515 at r5515

  unfold Seg52.relationRow5516 at r5516

  unfold Seg52.relationRow5517 at r5517

  unfold Seg52.relationRow5518 at r5518

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX80 rho = seg52Out0AccX79 rho + rho 49901 := by
    unfold seg52Out0AccX80 seg52Out0AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 79]

    ring

  have hnexty : seg52Out0AccY80 rho = seg52Out0AccY79 rho + rho 49902 := by
    unfold seg52Out0AccY80 seg52Out0AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 79]

    ring

  have ha0 : (rho 49893 + rho 49894) * (seg52Out0AccX79 rho + seg52Out0AccY79 rho) = rho 49895 := by
    unfold seg52Out0AccX79 seg52Out0AccY79
    linear_combination r5506
  have ha1 : rho 49894 * seg52Out0AccX79 rho = rho 49896 := by
    unfold seg52Out0AccX79
    linear_combination r5507
  have ha2 : rho 49893 * seg52Out0AccY79 rho = rho 49897 := by
    unfold seg52Out0AccY79
    linear_combination r5508
  have ha3 : 3021 * rho 49896 * rho 49897 = rho 49898 := by
    linear_combination r5509
  have ha4 : rho 49899 * (1 + rho 49898) = rho 49896 + rho 49897 := by
    linear_combination r5510
  have ha5 : rho 49900 * (1 - rho 49898) = rho 49895 - rho 49896 - rho 49897 := by
    linear_combination r5511
  have haddx :
      rho 49899 * (1 + 3021 * (rho 49894 * seg52Out0AccX79 rho) * (rho 49893 * seg52Out0AccY79 rho)) =
        rho 49894 * seg52Out0AccX79 rho + rho 49893 * seg52Out0AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49900 * (1 - 3021 * (rho 49894 * seg52Out0AccX79 rho) * (rho 49893 * seg52Out0AccY79 rho)) =
        (-1) * (rho 49894 * seg52Out0AccX79 rho) - rho 49893 * seg52Out0AccY79 rho +
          (seg52Out0AccY79 rho - seg52Out0AccX79 rho * (-1)) * (rho 49893 + rho 49894) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49900 * (1 - rho 49898) = rho 49895 - rho 49896 - rho 49897 := ha5
      _ = (-1) * rho 49896 - rho 49897 + (seg52Out0AccY79 rho - seg52Out0AccX79 rho * (-1)) *
          (rho 49893 + rho 49894) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX80 rho = seg52Out0AccX79 rho - Bool.toZMod bit * (seg52Out0AccX79 rho - rho 49899) := by
    have hd : rho 49901 = Bool.toZMod bit * (rho 49899 - seg52Out0AccX79 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX79
      linear_combination -r5512
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY80 rho = seg52Out0AccY79 rho - Bool.toZMod bit * (seg52Out0AccY79 rho - rho 49900) := by
    have hd : rho 49902 = Bool.toZMod bit * (rho 49900 - seg52Out0AccY79 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY79
      linear_combination -r5513
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49893 * rho 49894 = rho 49903 := by linear_combination r5514
  have hd1 : rho 49893 * rho 49893 = rho 49904 := by linear_combination r5515
  have hd2 : rho 49894 * rho 49894 = rho 49905 := by linear_combination r5516
  have hd3 : rho 49906 * (rho 49894 * rho 49894 + rho 49893 * rho 49893 * (-1)) =
      2 * (rho 49893 * rho 49894) := by
    rw [hd0, hd1, hd2]
    linear_combination r5517
  have hd4 : rho 49907 * (2 - (rho 49894 * rho 49894 + rho 49893 * rho 49893 * (-1))) =
      rho 49894 * rho 49894 - rho 49893 * rho 49893 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5518
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 49893, rho 49894⟩
    ⟨rho 49899, rho 49900⟩ ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 49906, rho 49907⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5519 rho ∧ Seg52.relationRow5520 rho ∧ Seg52.relationRow5521 rho ∧ Seg52.relationRow5522 rho ∧ Seg52.relationRow5523 rho ∧ Seg52.relationRow5524 rho ∧ Seg52.relationRow5525 rho ∧ Seg52.relationRow5526 rho ∧ Seg52.relationRow5527 rho ∧ Seg52.relationRow5528 rho ∧ Seg52.relationRow5529 rho ∧ Seg52.relationRow5530 rho ∧ Seg52.relationRow5531 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p68, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5519⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531⟩

theorem seg52Out0_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48826 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49906, rho 49907⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 49906, rho 49907⟩
        ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 49919, rho 49920⟩ := by
  obtain ⟨r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531⟩ := seg52Out0_rows80 rho h
  unfold Seg52.relationRow5519 at r5519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519

  unfold Seg52.relationRow5520 at r5520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520

  unfold Seg52.relationRow5521 at r5521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5521

  unfold Seg52.relationRow5522 at r5522

  unfold Seg52.relationRow5523 at r5523

  unfold Seg52.relationRow5524 at r5524

  unfold Seg52.relationRow5525 at r5525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525

  unfold Seg52.relationRow5526 at r5526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5526

  unfold Seg52.relationRow5527 at r5527

  unfold Seg52.relationRow5528 at r5528

  unfold Seg52.relationRow5529 at r5529

  unfold Seg52.relationRow5530 at r5530

  unfold Seg52.relationRow5531 at r5531

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX81 rho = seg52Out0AccX80 rho + rho 49914 := by
    unfold seg52Out0AccX81 seg52Out0AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 80]

    ring

  have hnexty : seg52Out0AccY81 rho = seg52Out0AccY80 rho + rho 49915 := by
    unfold seg52Out0AccY81 seg52Out0AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 80]

    ring

  have ha0 : (rho 49906 + rho 49907) * (seg52Out0AccX80 rho + seg52Out0AccY80 rho) = rho 49908 := by
    unfold seg52Out0AccX80 seg52Out0AccY80
    linear_combination r5519
  have ha1 : rho 49907 * seg52Out0AccX80 rho = rho 49909 := by
    unfold seg52Out0AccX80
    linear_combination r5520
  have ha2 : rho 49906 * seg52Out0AccY80 rho = rho 49910 := by
    unfold seg52Out0AccY80
    linear_combination r5521
  have ha3 : 3021 * rho 49909 * rho 49910 = rho 49911 := by
    linear_combination r5522
  have ha4 : rho 49912 * (1 + rho 49911) = rho 49909 + rho 49910 := by
    linear_combination r5523
  have ha5 : rho 49913 * (1 - rho 49911) = rho 49908 - rho 49909 - rho 49910 := by
    linear_combination r5524
  have haddx :
      rho 49912 * (1 + 3021 * (rho 49907 * seg52Out0AccX80 rho) * (rho 49906 * seg52Out0AccY80 rho)) =
        rho 49907 * seg52Out0AccX80 rho + rho 49906 * seg52Out0AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49913 * (1 - 3021 * (rho 49907 * seg52Out0AccX80 rho) * (rho 49906 * seg52Out0AccY80 rho)) =
        (-1) * (rho 49907 * seg52Out0AccX80 rho) - rho 49906 * seg52Out0AccY80 rho +
          (seg52Out0AccY80 rho - seg52Out0AccX80 rho * (-1)) * (rho 49906 + rho 49907) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49913 * (1 - rho 49911) = rho 49908 - rho 49909 - rho 49910 := ha5
      _ = (-1) * rho 49909 - rho 49910 + (seg52Out0AccY80 rho - seg52Out0AccX80 rho * (-1)) *
          (rho 49906 + rho 49907) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX81 rho = seg52Out0AccX80 rho - Bool.toZMod bit * (seg52Out0AccX80 rho - rho 49912) := by
    have hd : rho 49914 = Bool.toZMod bit * (rho 49912 - seg52Out0AccX80 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX80
      linear_combination -r5525
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY81 rho = seg52Out0AccY80 rho - Bool.toZMod bit * (seg52Out0AccY80 rho - rho 49913) := by
    have hd : rho 49915 = Bool.toZMod bit * (rho 49913 - seg52Out0AccY80 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY80
      linear_combination -r5526
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49906 * rho 49907 = rho 49916 := by linear_combination r5527
  have hd1 : rho 49906 * rho 49906 = rho 49917 := by linear_combination r5528
  have hd2 : rho 49907 * rho 49907 = rho 49918 := by linear_combination r5529
  have hd3 : rho 49919 * (rho 49907 * rho 49907 + rho 49906 * rho 49906 * (-1)) =
      2 * (rho 49906 * rho 49907) := by
    rw [hd0, hd1, hd2]
    linear_combination r5530
  have hd4 : rho 49920 * (2 - (rho 49907 * rho 49907 + rho 49906 * rho 49906 * (-1))) =
      rho 49907 * rho 49907 - rho 49906 * rho 49906 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5531
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 49906, rho 49907⟩
    ⟨rho 49912, rho 49913⟩ ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 49919, rho 49920⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5532 rho ∧ Seg52.relationRow5533 rho ∧ Seg52.relationRow5534 rho ∧ Seg52.relationRow5535 rho ∧ Seg52.relationRow5536 rho ∧ Seg52.relationRow5537 rho ∧ Seg52.relationRow5538 rho ∧ Seg52.relationRow5539 rho ∧ Seg52.relationRow5540 rho ∧ Seg52.relationRow5541 rho ∧ Seg52.relationRow5542 rho ∧ Seg52.relationRow5543 rho ∧ Seg52.relationRow5544 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg52Out0_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48827 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49919, rho 49920⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 49919, rho 49920⟩
        ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 49932, rho 49933⟩ := by
  obtain ⟨r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg52Out0_rows81 rho h
  unfold Seg52.relationRow5532 at r5532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5532

  unfold Seg52.relationRow5533 at r5533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533

  unfold Seg52.relationRow5534 at r5534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534

  unfold Seg52.relationRow5535 at r5535

  unfold Seg52.relationRow5536 at r5536

  unfold Seg52.relationRow5537 at r5537

  unfold Seg52.relationRow5538 at r5538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538

  unfold Seg52.relationRow5539 at r5539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539

  unfold Seg52.relationRow5540 at r5540

  unfold Seg52.relationRow5541 at r5541

  unfold Seg52.relationRow5542 at r5542

  unfold Seg52.relationRow5543 at r5543

  unfold Seg52.relationRow5544 at r5544

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX82 rho = seg52Out0AccX81 rho + rho 49927 := by
    unfold seg52Out0AccX82 seg52Out0AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 81]

    ring

  have hnexty : seg52Out0AccY82 rho = seg52Out0AccY81 rho + rho 49928 := by
    unfold seg52Out0AccY82 seg52Out0AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 81]

    ring

  have ha0 : (rho 49919 + rho 49920) * (seg52Out0AccX81 rho + seg52Out0AccY81 rho) = rho 49921 := by
    unfold seg52Out0AccX81 seg52Out0AccY81
    linear_combination r5532
  have ha1 : rho 49920 * seg52Out0AccX81 rho = rho 49922 := by
    unfold seg52Out0AccX81
    linear_combination r5533
  have ha2 : rho 49919 * seg52Out0AccY81 rho = rho 49923 := by
    unfold seg52Out0AccY81
    linear_combination r5534
  have ha3 : 3021 * rho 49922 * rho 49923 = rho 49924 := by
    linear_combination r5535
  have ha4 : rho 49925 * (1 + rho 49924) = rho 49922 + rho 49923 := by
    linear_combination r5536
  have ha5 : rho 49926 * (1 - rho 49924) = rho 49921 - rho 49922 - rho 49923 := by
    linear_combination r5537
  have haddx :
      rho 49925 * (1 + 3021 * (rho 49920 * seg52Out0AccX81 rho) * (rho 49919 * seg52Out0AccY81 rho)) =
        rho 49920 * seg52Out0AccX81 rho + rho 49919 * seg52Out0AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49926 * (1 - 3021 * (rho 49920 * seg52Out0AccX81 rho) * (rho 49919 * seg52Out0AccY81 rho)) =
        (-1) * (rho 49920 * seg52Out0AccX81 rho) - rho 49919 * seg52Out0AccY81 rho +
          (seg52Out0AccY81 rho - seg52Out0AccX81 rho * (-1)) * (rho 49919 + rho 49920) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49926 * (1 - rho 49924) = rho 49921 - rho 49922 - rho 49923 := ha5
      _ = (-1) * rho 49922 - rho 49923 + (seg52Out0AccY81 rho - seg52Out0AccX81 rho * (-1)) *
          (rho 49919 + rho 49920) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX82 rho = seg52Out0AccX81 rho - Bool.toZMod bit * (seg52Out0AccX81 rho - rho 49925) := by
    have hd : rho 49927 = Bool.toZMod bit * (rho 49925 - seg52Out0AccX81 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX81
      linear_combination -r5538
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY82 rho = seg52Out0AccY81 rho - Bool.toZMod bit * (seg52Out0AccY81 rho - rho 49926) := by
    have hd : rho 49928 = Bool.toZMod bit * (rho 49926 - seg52Out0AccY81 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY81
      linear_combination -r5539
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49919 * rho 49920 = rho 49929 := by linear_combination r5540
  have hd1 : rho 49919 * rho 49919 = rho 49930 := by linear_combination r5541
  have hd2 : rho 49920 * rho 49920 = rho 49931 := by linear_combination r5542
  have hd3 : rho 49932 * (rho 49920 * rho 49920 + rho 49919 * rho 49919 * (-1)) =
      2 * (rho 49919 * rho 49920) := by
    rw [hd0, hd1, hd2]
    linear_combination r5543
  have hd4 : rho 49933 * (2 - (rho 49920 * rho 49920 + rho 49919 * rho 49919 * (-1))) =
      rho 49920 * rho 49920 - rho 49919 * rho 49919 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5544
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 49919, rho 49920⟩
    ⟨rho 49925, rho 49926⟩ ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 49932, rho 49933⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5545 rho ∧ Seg52.relationRow5546 rho ∧ Seg52.relationRow5547 rho ∧ Seg52.relationRow5548 rho ∧ Seg52.relationRow5549 rho ∧ Seg52.relationRow5550 rho ∧ Seg52.relationRow5551 rho ∧ Seg52.relationRow5552 rho ∧ Seg52.relationRow5553 rho ∧ Seg52.relationRow5554 rho ∧ Seg52.relationRow5555 rho ∧ Seg52.relationRow5556 rho ∧ Seg52.relationRow5557 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557⟩

theorem seg52Out0_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48828 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49932, rho 49933⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 49932, rho 49933⟩
        ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 49945, rho 49946⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557⟩ := seg52Out0_rows82 rho h
  unfold Seg52.relationRow5545 at r5545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545

  unfold Seg52.relationRow5546 at r5546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5546

  unfold Seg52.relationRow5547 at r5547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547

  unfold Seg52.relationRow5548 at r5548

  unfold Seg52.relationRow5549 at r5549

  unfold Seg52.relationRow5550 at r5550

  unfold Seg52.relationRow5551 at r5551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5551

  unfold Seg52.relationRow5552 at r5552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552

  unfold Seg52.relationRow5553 at r5553

  unfold Seg52.relationRow5554 at r5554

  unfold Seg52.relationRow5555 at r5555

  unfold Seg52.relationRow5556 at r5556

  unfold Seg52.relationRow5557 at r5557

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX83 rho = seg52Out0AccX82 rho + rho 49940 := by
    unfold seg52Out0AccX83 seg52Out0AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 82]

    ring

  have hnexty : seg52Out0AccY83 rho = seg52Out0AccY82 rho + rho 49941 := by
    unfold seg52Out0AccY83 seg52Out0AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 82]

    ring

  have ha0 : (rho 49932 + rho 49933) * (seg52Out0AccX82 rho + seg52Out0AccY82 rho) = rho 49934 := by
    unfold seg52Out0AccX82 seg52Out0AccY82
    linear_combination r5545
  have ha1 : rho 49933 * seg52Out0AccX82 rho = rho 49935 := by
    unfold seg52Out0AccX82
    linear_combination r5546
  have ha2 : rho 49932 * seg52Out0AccY82 rho = rho 49936 := by
    unfold seg52Out0AccY82
    linear_combination r5547
  have ha3 : 3021 * rho 49935 * rho 49936 = rho 49937 := by
    linear_combination r5548
  have ha4 : rho 49938 * (1 + rho 49937) = rho 49935 + rho 49936 := by
    linear_combination r5549
  have ha5 : rho 49939 * (1 - rho 49937) = rho 49934 - rho 49935 - rho 49936 := by
    linear_combination r5550
  have haddx :
      rho 49938 * (1 + 3021 * (rho 49933 * seg52Out0AccX82 rho) * (rho 49932 * seg52Out0AccY82 rho)) =
        rho 49933 * seg52Out0AccX82 rho + rho 49932 * seg52Out0AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49939 * (1 - 3021 * (rho 49933 * seg52Out0AccX82 rho) * (rho 49932 * seg52Out0AccY82 rho)) =
        (-1) * (rho 49933 * seg52Out0AccX82 rho) - rho 49932 * seg52Out0AccY82 rho +
          (seg52Out0AccY82 rho - seg52Out0AccX82 rho * (-1)) * (rho 49932 + rho 49933) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49939 * (1 - rho 49937) = rho 49934 - rho 49935 - rho 49936 := ha5
      _ = (-1) * rho 49935 - rho 49936 + (seg52Out0AccY82 rho - seg52Out0AccX82 rho * (-1)) *
          (rho 49932 + rho 49933) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX83 rho = seg52Out0AccX82 rho - Bool.toZMod bit * (seg52Out0AccX82 rho - rho 49938) := by
    have hd : rho 49940 = Bool.toZMod bit * (rho 49938 - seg52Out0AccX82 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX82
      linear_combination -r5551
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY83 rho = seg52Out0AccY82 rho - Bool.toZMod bit * (seg52Out0AccY82 rho - rho 49939) := by
    have hd : rho 49941 = Bool.toZMod bit * (rho 49939 - seg52Out0AccY82 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY82
      linear_combination -r5552
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49932 * rho 49933 = rho 49942 := by linear_combination r5553
  have hd1 : rho 49932 * rho 49932 = rho 49943 := by linear_combination r5554
  have hd2 : rho 49933 * rho 49933 = rho 49944 := by linear_combination r5555
  have hd3 : rho 49945 * (rho 49933 * rho 49933 + rho 49932 * rho 49932 * (-1)) =
      2 * (rho 49932 * rho 49933) := by
    rw [hd0, hd1, hd2]
    linear_combination r5556
  have hd4 : rho 49946 * (2 - (rho 49933 * rho 49933 + rho 49932 * rho 49932 * (-1))) =
      rho 49933 * rho 49933 - rho 49932 * rho 49932 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5557
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 49932, rho 49933⟩
    ⟨rho 49938, rho 49939⟩ ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 49945, rho 49946⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5558 rho ∧ Seg52.relationRow5559 rho ∧ Seg52.relationRow5560 rho ∧ Seg52.relationRow5561 rho ∧ Seg52.relationRow5562 rho ∧ Seg52.relationRow5563 rho ∧ Seg52.relationRow5564 rho ∧ Seg52.relationRow5565 rho ∧ Seg52.relationRow5566 rho ∧ Seg52.relationRow5567 rho ∧ Seg52.relationRow5568 rho ∧ Seg52.relationRow5569 rho ∧ Seg52.relationRow5570 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570⟩

theorem seg52Out0_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48829 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49945, rho 49946⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 49945, rho 49946⟩
        ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 49958, rho 49959⟩ := by
  obtain ⟨r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570⟩ := seg52Out0_rows83 rho h
  unfold Seg52.relationRow5558 at r5558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5558

  unfold Seg52.relationRow5559 at r5559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559

  unfold Seg52.relationRow5560 at r5560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5560

  unfold Seg52.relationRow5561 at r5561

  unfold Seg52.relationRow5562 at r5562

  unfold Seg52.relationRow5563 at r5563

  unfold Seg52.relationRow5564 at r5564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5564

  unfold Seg52.relationRow5565 at r5565

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5565

  unfold Seg52.relationRow5566 at r5566

  unfold Seg52.relationRow5567 at r5567

  unfold Seg52.relationRow5568 at r5568

  unfold Seg52.relationRow5569 at r5569

  unfold Seg52.relationRow5570 at r5570

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX84 rho = seg52Out0AccX83 rho + rho 49953 := by
    unfold seg52Out0AccX84 seg52Out0AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 83]

    ring

  have hnexty : seg52Out0AccY84 rho = seg52Out0AccY83 rho + rho 49954 := by
    unfold seg52Out0AccY84 seg52Out0AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 83]

    ring

  have ha0 : (rho 49945 + rho 49946) * (seg52Out0AccX83 rho + seg52Out0AccY83 rho) = rho 49947 := by
    unfold seg52Out0AccX83 seg52Out0AccY83
    linear_combination r5558
  have ha1 : rho 49946 * seg52Out0AccX83 rho = rho 49948 := by
    unfold seg52Out0AccX83
    linear_combination r5559
  have ha2 : rho 49945 * seg52Out0AccY83 rho = rho 49949 := by
    unfold seg52Out0AccY83
    linear_combination r5560
  have ha3 : 3021 * rho 49948 * rho 49949 = rho 49950 := by
    linear_combination r5561
  have ha4 : rho 49951 * (1 + rho 49950) = rho 49948 + rho 49949 := by
    linear_combination r5562
  have ha5 : rho 49952 * (1 - rho 49950) = rho 49947 - rho 49948 - rho 49949 := by
    linear_combination r5563
  have haddx :
      rho 49951 * (1 + 3021 * (rho 49946 * seg52Out0AccX83 rho) * (rho 49945 * seg52Out0AccY83 rho)) =
        rho 49946 * seg52Out0AccX83 rho + rho 49945 * seg52Out0AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49952 * (1 - 3021 * (rho 49946 * seg52Out0AccX83 rho) * (rho 49945 * seg52Out0AccY83 rho)) =
        (-1) * (rho 49946 * seg52Out0AccX83 rho) - rho 49945 * seg52Out0AccY83 rho +
          (seg52Out0AccY83 rho - seg52Out0AccX83 rho * (-1)) * (rho 49945 + rho 49946) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49952 * (1 - rho 49950) = rho 49947 - rho 49948 - rho 49949 := ha5
      _ = (-1) * rho 49948 - rho 49949 + (seg52Out0AccY83 rho - seg52Out0AccX83 rho * (-1)) *
          (rho 49945 + rho 49946) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX84 rho = seg52Out0AccX83 rho - Bool.toZMod bit * (seg52Out0AccX83 rho - rho 49951) := by
    have hd : rho 49953 = Bool.toZMod bit * (rho 49951 - seg52Out0AccX83 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX83
      linear_combination -r5564
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY84 rho = seg52Out0AccY83 rho - Bool.toZMod bit * (seg52Out0AccY83 rho - rho 49952) := by
    have hd : rho 49954 = Bool.toZMod bit * (rho 49952 - seg52Out0AccY83 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY83
      linear_combination -r5565
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49945 * rho 49946 = rho 49955 := by linear_combination r5566
  have hd1 : rho 49945 * rho 49945 = rho 49956 := by linear_combination r5567
  have hd2 : rho 49946 * rho 49946 = rho 49957 := by linear_combination r5568
  have hd3 : rho 49958 * (rho 49946 * rho 49946 + rho 49945 * rho 49945 * (-1)) =
      2 * (rho 49945 * rho 49946) := by
    rw [hd0, hd1, hd2]
    linear_combination r5569
  have hd4 : rho 49959 * (2 - (rho 49946 * rho 49946 + rho 49945 * rho 49945 * (-1))) =
      rho 49946 * rho 49946 - rho 49945 * rho 49945 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5570
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 49945, rho 49946⟩
    ⟨rho 49951, rho 49952⟩ ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 49958, rho 49959⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5571 rho ∧ Seg52.relationRow5572 rho ∧ Seg52.relationRow5573 rho ∧ Seg52.relationRow5574 rho ∧ Seg52.relationRow5575 rho ∧ Seg52.relationRow5576 rho ∧ Seg52.relationRow5577 rho ∧ Seg52.relationRow5578 rho ∧ Seg52.relationRow5579 rho ∧ Seg52.relationRow5580 rho ∧ Seg52.relationRow5581 rho ∧ Seg52.relationRow5582 rho ∧ Seg52.relationRow5583 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583⟩

theorem seg52Out0_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48830 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49958, rho 49959⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 49958, rho 49959⟩
        ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 49971, rho 49972⟩ := by
  obtain ⟨r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583⟩ := seg52Out0_rows84 rho h
  unfold Seg52.relationRow5571 at r5571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5571

  unfold Seg52.relationRow5572 at r5572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5572

  unfold Seg52.relationRow5573 at r5573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573

  unfold Seg52.relationRow5574 at r5574

  unfold Seg52.relationRow5575 at r5575

  unfold Seg52.relationRow5576 at r5576

  unfold Seg52.relationRow5577 at r5577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5577

  unfold Seg52.relationRow5578 at r5578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5578

  unfold Seg52.relationRow5579 at r5579

  unfold Seg52.relationRow5580 at r5580

  unfold Seg52.relationRow5581 at r5581

  unfold Seg52.relationRow5582 at r5582

  unfold Seg52.relationRow5583 at r5583

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX85 rho = seg52Out0AccX84 rho + rho 49966 := by
    unfold seg52Out0AccX85 seg52Out0AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 84]

    ring

  have hnexty : seg52Out0AccY85 rho = seg52Out0AccY84 rho + rho 49967 := by
    unfold seg52Out0AccY85 seg52Out0AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 84]

    ring

  have ha0 : (rho 49958 + rho 49959) * (seg52Out0AccX84 rho + seg52Out0AccY84 rho) = rho 49960 := by
    unfold seg52Out0AccX84 seg52Out0AccY84
    linear_combination r5571
  have ha1 : rho 49959 * seg52Out0AccX84 rho = rho 49961 := by
    unfold seg52Out0AccX84
    linear_combination r5572
  have ha2 : rho 49958 * seg52Out0AccY84 rho = rho 49962 := by
    unfold seg52Out0AccY84
    linear_combination r5573
  have ha3 : 3021 * rho 49961 * rho 49962 = rho 49963 := by
    linear_combination r5574
  have ha4 : rho 49964 * (1 + rho 49963) = rho 49961 + rho 49962 := by
    linear_combination r5575
  have ha5 : rho 49965 * (1 - rho 49963) = rho 49960 - rho 49961 - rho 49962 := by
    linear_combination r5576
  have haddx :
      rho 49964 * (1 + 3021 * (rho 49959 * seg52Out0AccX84 rho) * (rho 49958 * seg52Out0AccY84 rho)) =
        rho 49959 * seg52Out0AccX84 rho + rho 49958 * seg52Out0AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49965 * (1 - 3021 * (rho 49959 * seg52Out0AccX84 rho) * (rho 49958 * seg52Out0AccY84 rho)) =
        (-1) * (rho 49959 * seg52Out0AccX84 rho) - rho 49958 * seg52Out0AccY84 rho +
          (seg52Out0AccY84 rho - seg52Out0AccX84 rho * (-1)) * (rho 49958 + rho 49959) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49965 * (1 - rho 49963) = rho 49960 - rho 49961 - rho 49962 := ha5
      _ = (-1) * rho 49961 - rho 49962 + (seg52Out0AccY84 rho - seg52Out0AccX84 rho * (-1)) *
          (rho 49958 + rho 49959) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX85 rho = seg52Out0AccX84 rho - Bool.toZMod bit * (seg52Out0AccX84 rho - rho 49964) := by
    have hd : rho 49966 = Bool.toZMod bit * (rho 49964 - seg52Out0AccX84 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX84
      linear_combination -r5577
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY85 rho = seg52Out0AccY84 rho - Bool.toZMod bit * (seg52Out0AccY84 rho - rho 49965) := by
    have hd : rho 49967 = Bool.toZMod bit * (rho 49965 - seg52Out0AccY84 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY84
      linear_combination -r5578
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49958 * rho 49959 = rho 49968 := by linear_combination r5579
  have hd1 : rho 49958 * rho 49958 = rho 49969 := by linear_combination r5580
  have hd2 : rho 49959 * rho 49959 = rho 49970 := by linear_combination r5581
  have hd3 : rho 49971 * (rho 49959 * rho 49959 + rho 49958 * rho 49958 * (-1)) =
      2 * (rho 49958 * rho 49959) := by
    rw [hd0, hd1, hd2]
    linear_combination r5582
  have hd4 : rho 49972 * (2 - (rho 49959 * rho 49959 + rho 49958 * rho 49958 * (-1))) =
      rho 49959 * rho 49959 - rho 49958 * rho 49958 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5583
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 49958, rho 49959⟩
    ⟨rho 49964, rho 49965⟩ ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 49971, rho 49972⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5584 rho ∧ Seg52.relationRow5585 rho ∧ Seg52.relationRow5586 rho ∧ Seg52.relationRow5587 rho ∧ Seg52.relationRow5588 rho ∧ Seg52.relationRow5589 rho ∧ Seg52.relationRow5590 rho ∧ Seg52.relationRow5591 rho ∧ Seg52.relationRow5592 rho ∧ Seg52.relationRow5593 rho ∧ Seg52.relationRow5594 rho ∧ Seg52.relationRow5595 rho ∧ Seg52.relationRow5596 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, _, _, _⟩

  exact ⟨r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596⟩

theorem seg52Out0_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48831 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49971, rho 49972⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 49971, rho 49972⟩
        ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 49984, rho 49985⟩ := by
  obtain ⟨r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596⟩ := seg52Out0_rows85 rho h
  unfold Seg52.relationRow5584 at r5584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5584

  unfold Seg52.relationRow5585 at r5585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5585

  unfold Seg52.relationRow5586 at r5586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5586

  unfold Seg52.relationRow5587 at r5587

  unfold Seg52.relationRow5588 at r5588

  unfold Seg52.relationRow5589 at r5589

  unfold Seg52.relationRow5590 at r5590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590

  unfold Seg52.relationRow5591 at r5591

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5591

  unfold Seg52.relationRow5592 at r5592

  unfold Seg52.relationRow5593 at r5593

  unfold Seg52.relationRow5594 at r5594

  unfold Seg52.relationRow5595 at r5595

  unfold Seg52.relationRow5596 at r5596

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX86 rho = seg52Out0AccX85 rho + rho 49979 := by
    unfold seg52Out0AccX86 seg52Out0AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 85]

    ring

  have hnexty : seg52Out0AccY86 rho = seg52Out0AccY85 rho + rho 49980 := by
    unfold seg52Out0AccY86 seg52Out0AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 85]

    ring

  have ha0 : (rho 49971 + rho 49972) * (seg52Out0AccX85 rho + seg52Out0AccY85 rho) = rho 49973 := by
    unfold seg52Out0AccX85 seg52Out0AccY85
    linear_combination r5584
  have ha1 : rho 49972 * seg52Out0AccX85 rho = rho 49974 := by
    unfold seg52Out0AccX85
    linear_combination r5585
  have ha2 : rho 49971 * seg52Out0AccY85 rho = rho 49975 := by
    unfold seg52Out0AccY85
    linear_combination r5586
  have ha3 : 3021 * rho 49974 * rho 49975 = rho 49976 := by
    linear_combination r5587
  have ha4 : rho 49977 * (1 + rho 49976) = rho 49974 + rho 49975 := by
    linear_combination r5588
  have ha5 : rho 49978 * (1 - rho 49976) = rho 49973 - rho 49974 - rho 49975 := by
    linear_combination r5589
  have haddx :
      rho 49977 * (1 + 3021 * (rho 49972 * seg52Out0AccX85 rho) * (rho 49971 * seg52Out0AccY85 rho)) =
        rho 49972 * seg52Out0AccX85 rho + rho 49971 * seg52Out0AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49978 * (1 - 3021 * (rho 49972 * seg52Out0AccX85 rho) * (rho 49971 * seg52Out0AccY85 rho)) =
        (-1) * (rho 49972 * seg52Out0AccX85 rho) - rho 49971 * seg52Out0AccY85 rho +
          (seg52Out0AccY85 rho - seg52Out0AccX85 rho * (-1)) * (rho 49971 + rho 49972) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49978 * (1 - rho 49976) = rho 49973 - rho 49974 - rho 49975 := ha5
      _ = (-1) * rho 49974 - rho 49975 + (seg52Out0AccY85 rho - seg52Out0AccX85 rho * (-1)) *
          (rho 49971 + rho 49972) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX86 rho = seg52Out0AccX85 rho - Bool.toZMod bit * (seg52Out0AccX85 rho - rho 49977) := by
    have hd : rho 49979 = Bool.toZMod bit * (rho 49977 - seg52Out0AccX85 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX85
      linear_combination -r5590
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY86 rho = seg52Out0AccY85 rho - Bool.toZMod bit * (seg52Out0AccY85 rho - rho 49978) := by
    have hd : rho 49980 = Bool.toZMod bit * (rho 49978 - seg52Out0AccY85 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY85
      linear_combination -r5591
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49971 * rho 49972 = rho 49981 := by linear_combination r5592
  have hd1 : rho 49971 * rho 49971 = rho 49982 := by linear_combination r5593
  have hd2 : rho 49972 * rho 49972 = rho 49983 := by linear_combination r5594
  have hd3 : rho 49984 * (rho 49972 * rho 49972 + rho 49971 * rho 49971 * (-1)) =
      2 * (rho 49971 * rho 49972) := by
    rw [hd0, hd1, hd2]
    linear_combination r5595
  have hd4 : rho 49985 * (2 - (rho 49972 * rho 49972 + rho 49971 * rho 49971 * (-1))) =
      rho 49972 * rho 49972 - rho 49971 * rho 49971 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5596
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 49971, rho 49972⟩
    ⟨rho 49977, rho 49978⟩ ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 49984, rho 49985⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5597 rho ∧ Seg52.relationRow5598 rho ∧ Seg52.relationRow5599 rho ∧ Seg52.relationRow5600 rho ∧ Seg52.relationRow5601 rho ∧ Seg52.relationRow5602 rho ∧ Seg52.relationRow5603 rho ∧ Seg52.relationRow5604 rho ∧ Seg52.relationRow5605 rho ∧ Seg52.relationRow5606 rho ∧ Seg52.relationRow5607 rho ∧ Seg52.relationRow5608 rho ∧ Seg52.relationRow5609 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    p70, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5597, r5598, r5599⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5597, r5598, r5599, r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609⟩

theorem seg52Out0_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48832 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49984, rho 49985⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 49984, rho 49985⟩
        ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 49997, rho 49998⟩ := by
  obtain ⟨r5597, r5598, r5599, r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609⟩ := seg52Out0_rows86 rho h
  unfold Seg52.relationRow5597 at r5597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5597

  unfold Seg52.relationRow5598 at r5598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5598

  unfold Seg52.relationRow5599 at r5599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5599

  unfold Seg52.relationRow5600 at r5600

  unfold Seg52.relationRow5601 at r5601

  unfold Seg52.relationRow5602 at r5602

  unfold Seg52.relationRow5603 at r5603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603

  unfold Seg52.relationRow5604 at r5604

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604

  unfold Seg52.relationRow5605 at r5605

  unfold Seg52.relationRow5606 at r5606

  unfold Seg52.relationRow5607 at r5607

  unfold Seg52.relationRow5608 at r5608

  unfold Seg52.relationRow5609 at r5609

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX87 rho = seg52Out0AccX86 rho + rho 49992 := by
    unfold seg52Out0AccX87 seg52Out0AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 86]

    ring

  have hnexty : seg52Out0AccY87 rho = seg52Out0AccY86 rho + rho 49993 := by
    unfold seg52Out0AccY87 seg52Out0AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 86]

    ring

  have ha0 : (rho 49984 + rho 49985) * (seg52Out0AccX86 rho + seg52Out0AccY86 rho) = rho 49986 := by
    unfold seg52Out0AccX86 seg52Out0AccY86
    linear_combination r5597
  have ha1 : rho 49985 * seg52Out0AccX86 rho = rho 49987 := by
    unfold seg52Out0AccX86
    linear_combination r5598
  have ha2 : rho 49984 * seg52Out0AccY86 rho = rho 49988 := by
    unfold seg52Out0AccY86
    linear_combination r5599
  have ha3 : 3021 * rho 49987 * rho 49988 = rho 49989 := by
    linear_combination r5600
  have ha4 : rho 49990 * (1 + rho 49989) = rho 49987 + rho 49988 := by
    linear_combination r5601
  have ha5 : rho 49991 * (1 - rho 49989) = rho 49986 - rho 49987 - rho 49988 := by
    linear_combination r5602
  have haddx :
      rho 49990 * (1 + 3021 * (rho 49985 * seg52Out0AccX86 rho) * (rho 49984 * seg52Out0AccY86 rho)) =
        rho 49985 * seg52Out0AccX86 rho + rho 49984 * seg52Out0AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49991 * (1 - 3021 * (rho 49985 * seg52Out0AccX86 rho) * (rho 49984 * seg52Out0AccY86 rho)) =
        (-1) * (rho 49985 * seg52Out0AccX86 rho) - rho 49984 * seg52Out0AccY86 rho +
          (seg52Out0AccY86 rho - seg52Out0AccX86 rho * (-1)) * (rho 49984 + rho 49985) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49991 * (1 - rho 49989) = rho 49986 - rho 49987 - rho 49988 := ha5
      _ = (-1) * rho 49987 - rho 49988 + (seg52Out0AccY86 rho - seg52Out0AccX86 rho * (-1)) *
          (rho 49984 + rho 49985) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX87 rho = seg52Out0AccX86 rho - Bool.toZMod bit * (seg52Out0AccX86 rho - rho 49990) := by
    have hd : rho 49992 = Bool.toZMod bit * (rho 49990 - seg52Out0AccX86 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX86
      linear_combination -r5603
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY87 rho = seg52Out0AccY86 rho - Bool.toZMod bit * (seg52Out0AccY86 rho - rho 49991) := by
    have hd : rho 49993 = Bool.toZMod bit * (rho 49991 - seg52Out0AccY86 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY86
      linear_combination -r5604
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49984 * rho 49985 = rho 49994 := by linear_combination r5605
  have hd1 : rho 49984 * rho 49984 = rho 49995 := by linear_combination r5606
  have hd2 : rho 49985 * rho 49985 = rho 49996 := by linear_combination r5607
  have hd3 : rho 49997 * (rho 49985 * rho 49985 + rho 49984 * rho 49984 * (-1)) =
      2 * (rho 49984 * rho 49985) := by
    rw [hd0, hd1, hd2]
    linear_combination r5608
  have hd4 : rho 49998 * (2 - (rho 49985 * rho 49985 + rho 49984 * rho 49984 * (-1))) =
      rho 49985 * rho 49985 - rho 49984 * rho 49984 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5609
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 49984, rho 49985⟩
    ⟨rho 49990, rho 49991⟩ ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 49997, rho 49998⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5610 rho ∧ Seg52.relationRow5611 rho ∧ Seg52.relationRow5612 rho ∧ Seg52.relationRow5613 rho ∧ Seg52.relationRow5614 rho ∧ Seg52.relationRow5615 rho ∧ Seg52.relationRow5616 rho ∧ Seg52.relationRow5617 rho ∧ Seg52.relationRow5618 rho ∧ Seg52.relationRow5619 rho ∧ Seg52.relationRow5620 rho ∧ Seg52.relationRow5621 rho ∧ Seg52.relationRow5622 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p70, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622⟩

theorem seg52Out0_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48833 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49997, rho 49998⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 49997, rho 49998⟩
        ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50010, rho 50011⟩ := by
  obtain ⟨r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622⟩ := seg52Out0_rows87 rho h
  unfold Seg52.relationRow5610 at r5610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5610

  unfold Seg52.relationRow5611 at r5611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5611

  unfold Seg52.relationRow5612 at r5612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5612

  unfold Seg52.relationRow5613 at r5613

  unfold Seg52.relationRow5614 at r5614

  unfold Seg52.relationRow5615 at r5615

  unfold Seg52.relationRow5616 at r5616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5616

  unfold Seg52.relationRow5617 at r5617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617

  unfold Seg52.relationRow5618 at r5618

  unfold Seg52.relationRow5619 at r5619

  unfold Seg52.relationRow5620 at r5620

  unfold Seg52.relationRow5621 at r5621

  unfold Seg52.relationRow5622 at r5622

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX88 rho = seg52Out0AccX87 rho + rho 50005 := by
    unfold seg52Out0AccX88 seg52Out0AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 87]

    ring

  have hnexty : seg52Out0AccY88 rho = seg52Out0AccY87 rho + rho 50006 := by
    unfold seg52Out0AccY88 seg52Out0AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 87]

    ring

  have ha0 : (rho 49997 + rho 49998) * (seg52Out0AccX87 rho + seg52Out0AccY87 rho) = rho 49999 := by
    unfold seg52Out0AccX87 seg52Out0AccY87
    linear_combination r5610
  have ha1 : rho 49998 * seg52Out0AccX87 rho = rho 50000 := by
    unfold seg52Out0AccX87
    linear_combination r5611
  have ha2 : rho 49997 * seg52Out0AccY87 rho = rho 50001 := by
    unfold seg52Out0AccY87
    linear_combination r5612
  have ha3 : 3021 * rho 50000 * rho 50001 = rho 50002 := by
    linear_combination r5613
  have ha4 : rho 50003 * (1 + rho 50002) = rho 50000 + rho 50001 := by
    linear_combination r5614
  have ha5 : rho 50004 * (1 - rho 50002) = rho 49999 - rho 50000 - rho 50001 := by
    linear_combination r5615
  have haddx :
      rho 50003 * (1 + 3021 * (rho 49998 * seg52Out0AccX87 rho) * (rho 49997 * seg52Out0AccY87 rho)) =
        rho 49998 * seg52Out0AccX87 rho + rho 49997 * seg52Out0AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50004 * (1 - 3021 * (rho 49998 * seg52Out0AccX87 rho) * (rho 49997 * seg52Out0AccY87 rho)) =
        (-1) * (rho 49998 * seg52Out0AccX87 rho) - rho 49997 * seg52Out0AccY87 rho +
          (seg52Out0AccY87 rho - seg52Out0AccX87 rho * (-1)) * (rho 49997 + rho 49998) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50004 * (1 - rho 50002) = rho 49999 - rho 50000 - rho 50001 := ha5
      _ = (-1) * rho 50000 - rho 50001 + (seg52Out0AccY87 rho - seg52Out0AccX87 rho * (-1)) *
          (rho 49997 + rho 49998) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX88 rho = seg52Out0AccX87 rho - Bool.toZMod bit * (seg52Out0AccX87 rho - rho 50003) := by
    have hd : rho 50005 = Bool.toZMod bit * (rho 50003 - seg52Out0AccX87 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX87
      linear_combination -r5616
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY88 rho = seg52Out0AccY87 rho - Bool.toZMod bit * (seg52Out0AccY87 rho - rho 50004) := by
    have hd : rho 50006 = Bool.toZMod bit * (rho 50004 - seg52Out0AccY87 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY87
      linear_combination -r5617
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49997 * rho 49998 = rho 50007 := by linear_combination r5618
  have hd1 : rho 49997 * rho 49997 = rho 50008 := by linear_combination r5619
  have hd2 : rho 49998 * rho 49998 = rho 50009 := by linear_combination r5620
  have hd3 : rho 50010 * (rho 49998 * rho 49998 + rho 49997 * rho 49997 * (-1)) =
      2 * (rho 49997 * rho 49998) := by
    rw [hd0, hd1, hd2]
    linear_combination r5621
  have hd4 : rho 50011 * (2 - (rho 49998 * rho 49998 + rho 49997 * rho 49997 * (-1))) =
      rho 49998 * rho 49998 - rho 49997 * rho 49997 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5622
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 49997, rho 49998⟩
    ⟨rho 50003, rho 50004⟩ ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50010, rho 50011⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg52Out0_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg52Out0_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg52Out0_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg52Out0_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg52Out0_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg52Out0_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg52Out0_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg52Out0_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg52Out0_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg52Out0_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
