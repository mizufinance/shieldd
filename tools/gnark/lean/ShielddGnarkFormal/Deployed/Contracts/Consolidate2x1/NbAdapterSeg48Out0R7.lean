import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5480 rho ∧ Seg48.relationRow5481 rho ∧ Seg48.relationRow5482 rho ∧ Seg48.relationRow5483 rho ∧ Seg48.relationRow5484 rho ∧ Seg48.relationRow5485 rho ∧ Seg48.relationRow5486 rho ∧ Seg48.relationRow5487 rho ∧ Seg48.relationRow5488 rho ∧ Seg48.relationRow5489 rho ∧ Seg48.relationRow5490 rho ∧ Seg48.relationRow5491 rho ∧ Seg48.relationRow5492 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492⟩

theorem seg48Out0_rung77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37191 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX77 rho, seg48Out0AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38235, rho 38236⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX77 rho, seg48Out0AccY77 rho⟩ ⟨rho 38235, rho 38236⟩
        ⟨seg48Out0AccX78 rho, seg48Out0AccY78 rho⟩ ⟨rho 38248, rho 38249⟩ := by
  obtain ⟨r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492⟩ := seg48Out0_rows77 rho h
  unfold Seg48.relationRow5480 at r5480

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5480

  unfold Seg48.relationRow5481 at r5481

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5481

  unfold Seg48.relationRow5482 at r5482

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482

  unfold Seg48.relationRow5483 at r5483

  unfold Seg48.relationRow5484 at r5484

  unfold Seg48.relationRow5485 at r5485

  unfold Seg48.relationRow5486 at r5486

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5486

  unfold Seg48.relationRow5487 at r5487

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5487

  unfold Seg48.relationRow5488 at r5488

  unfold Seg48.relationRow5489 at r5489

  unfold Seg48.relationRow5490 at r5490

  unfold Seg48.relationRow5491 at r5491

  unfold Seg48.relationRow5492 at r5492

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX78 rho = seg48Out0AccX77 rho + rho 38243 := by
    unfold seg48Out0AccX78 seg48Out0AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 77]

    ring

  have hnexty : seg48Out0AccY78 rho = seg48Out0AccY77 rho + rho 38244 := by
    unfold seg48Out0AccY78 seg48Out0AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 77]

    ring

  have ha0 : (rho 38235 + rho 38236) * (seg48Out0AccX77 rho + seg48Out0AccY77 rho) = rho 38237 := by
    unfold seg48Out0AccX77 seg48Out0AccY77
    linear_combination r5480
  have ha1 : rho 38236 * seg48Out0AccX77 rho = rho 38238 := by
    unfold seg48Out0AccX77
    linear_combination r5481
  have ha2 : rho 38235 * seg48Out0AccY77 rho = rho 38239 := by
    unfold seg48Out0AccY77
    linear_combination r5482
  have ha3 : 3021 * rho 38238 * rho 38239 = rho 38240 := by
    linear_combination r5483
  have ha4 : rho 38241 * (1 + rho 38240) = rho 38238 + rho 38239 := by
    linear_combination r5484
  have ha5 : rho 38242 * (1 - rho 38240) = rho 38237 - rho 38238 - rho 38239 := by
    linear_combination r5485
  have haddx :
      rho 38241 * (1 + 3021 * (rho 38236 * seg48Out0AccX77 rho) * (rho 38235 * seg48Out0AccY77 rho)) =
        rho 38236 * seg48Out0AccX77 rho + rho 38235 * seg48Out0AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38242 * (1 - 3021 * (rho 38236 * seg48Out0AccX77 rho) * (rho 38235 * seg48Out0AccY77 rho)) =
        (-1) * (rho 38236 * seg48Out0AccX77 rho) - rho 38235 * seg48Out0AccY77 rho +
          (seg48Out0AccY77 rho - seg48Out0AccX77 rho * (-1)) * (rho 38235 + rho 38236) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38242 * (1 - rho 38240) = rho 38237 - rho 38238 - rho 38239 := ha5
      _ = (-1) * rho 38238 - rho 38239 + (seg48Out0AccY77 rho - seg48Out0AccX77 rho * (-1)) *
          (rho 38235 + rho 38236) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX78 rho = seg48Out0AccX77 rho - Bool.toZMod bit * (seg48Out0AccX77 rho - rho 38241) := by
    have hd : rho 38243 = Bool.toZMod bit * (rho 38241 - seg48Out0AccX77 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX77
      linear_combination -r5486
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY78 rho = seg48Out0AccY77 rho - Bool.toZMod bit * (seg48Out0AccY77 rho - rho 38242) := by
    have hd : rho 38244 = Bool.toZMod bit * (rho 38242 - seg48Out0AccY77 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY77
      linear_combination -r5487
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38235 * rho 38236 = rho 38245 := by linear_combination r5488
  have hd1 : rho 38235 * rho 38235 = rho 38246 := by linear_combination r5489
  have hd2 : rho 38236 * rho 38236 = rho 38247 := by linear_combination r5490
  have hd3 : rho 38248 * (rho 38236 * rho 38236 + rho 38235 * rho 38235 * (-1)) =
      2 * (rho 38235 * rho 38236) := by
    rw [hd0, hd1, hd2]
    linear_combination r5491
  have hd4 : rho 38249 * (2 - (rho 38236 * rho 38236 + rho 38235 * rho 38235 * (-1))) =
      rho 38236 * rho 38236 - rho 38235 * rho 38235 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5492
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX77 rho, seg48Out0AccY77 rho⟩ ⟨rho 38235, rho 38236⟩
    ⟨rho 38241, rho 38242⟩ ⟨seg48Out0AccX78 rho, seg48Out0AccY78 rho⟩ ⟨rho 38248, rho 38249⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5493 rho ∧ Seg48.relationRow5494 rho ∧ Seg48.relationRow5495 rho ∧ Seg48.relationRow5496 rho ∧ Seg48.relationRow5497 rho ∧ Seg48.relationRow5498 rho ∧ Seg48.relationRow5499 rho ∧ Seg48.relationRow5500 rho ∧ Seg48.relationRow5501 rho ∧ Seg48.relationRow5502 rho ∧ Seg48.relationRow5503 rho ∧ Seg48.relationRow5504 rho ∧ Seg48.relationRow5505 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505⟩

theorem seg48Out0_rung78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37192 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX78 rho, seg48Out0AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38248, rho 38249⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX78 rho, seg48Out0AccY78 rho⟩ ⟨rho 38248, rho 38249⟩
        ⟨seg48Out0AccX79 rho, seg48Out0AccY79 rho⟩ ⟨rho 38261, rho 38262⟩ := by
  obtain ⟨r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505⟩ := seg48Out0_rows78 rho h
  unfold Seg48.relationRow5493 at r5493

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5493

  unfold Seg48.relationRow5494 at r5494

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5494

  unfold Seg48.relationRow5495 at r5495

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5495

  unfold Seg48.relationRow5496 at r5496

  unfold Seg48.relationRow5497 at r5497

  unfold Seg48.relationRow5498 at r5498

  unfold Seg48.relationRow5499 at r5499

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5499

  unfold Seg48.relationRow5500 at r5500

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5500

  unfold Seg48.relationRow5501 at r5501

  unfold Seg48.relationRow5502 at r5502

  unfold Seg48.relationRow5503 at r5503

  unfold Seg48.relationRow5504 at r5504

  unfold Seg48.relationRow5505 at r5505

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX79 rho = seg48Out0AccX78 rho + rho 38256 := by
    unfold seg48Out0AccX79 seg48Out0AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 78]

    ring

  have hnexty : seg48Out0AccY79 rho = seg48Out0AccY78 rho + rho 38257 := by
    unfold seg48Out0AccY79 seg48Out0AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 78]

    ring

  have ha0 : (rho 38248 + rho 38249) * (seg48Out0AccX78 rho + seg48Out0AccY78 rho) = rho 38250 := by
    unfold seg48Out0AccX78 seg48Out0AccY78
    linear_combination r5493
  have ha1 : rho 38249 * seg48Out0AccX78 rho = rho 38251 := by
    unfold seg48Out0AccX78
    linear_combination r5494
  have ha2 : rho 38248 * seg48Out0AccY78 rho = rho 38252 := by
    unfold seg48Out0AccY78
    linear_combination r5495
  have ha3 : 3021 * rho 38251 * rho 38252 = rho 38253 := by
    linear_combination r5496
  have ha4 : rho 38254 * (1 + rho 38253) = rho 38251 + rho 38252 := by
    linear_combination r5497
  have ha5 : rho 38255 * (1 - rho 38253) = rho 38250 - rho 38251 - rho 38252 := by
    linear_combination r5498
  have haddx :
      rho 38254 * (1 + 3021 * (rho 38249 * seg48Out0AccX78 rho) * (rho 38248 * seg48Out0AccY78 rho)) =
        rho 38249 * seg48Out0AccX78 rho + rho 38248 * seg48Out0AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38255 * (1 - 3021 * (rho 38249 * seg48Out0AccX78 rho) * (rho 38248 * seg48Out0AccY78 rho)) =
        (-1) * (rho 38249 * seg48Out0AccX78 rho) - rho 38248 * seg48Out0AccY78 rho +
          (seg48Out0AccY78 rho - seg48Out0AccX78 rho * (-1)) * (rho 38248 + rho 38249) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38255 * (1 - rho 38253) = rho 38250 - rho 38251 - rho 38252 := ha5
      _ = (-1) * rho 38251 - rho 38252 + (seg48Out0AccY78 rho - seg48Out0AccX78 rho * (-1)) *
          (rho 38248 + rho 38249) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX79 rho = seg48Out0AccX78 rho - Bool.toZMod bit * (seg48Out0AccX78 rho - rho 38254) := by
    have hd : rho 38256 = Bool.toZMod bit * (rho 38254 - seg48Out0AccX78 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX78
      linear_combination -r5499
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY79 rho = seg48Out0AccY78 rho - Bool.toZMod bit * (seg48Out0AccY78 rho - rho 38255) := by
    have hd : rho 38257 = Bool.toZMod bit * (rho 38255 - seg48Out0AccY78 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY78
      linear_combination -r5500
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38248 * rho 38249 = rho 38258 := by linear_combination r5501
  have hd1 : rho 38248 * rho 38248 = rho 38259 := by linear_combination r5502
  have hd2 : rho 38249 * rho 38249 = rho 38260 := by linear_combination r5503
  have hd3 : rho 38261 * (rho 38249 * rho 38249 + rho 38248 * rho 38248 * (-1)) =
      2 * (rho 38248 * rho 38249) := by
    rw [hd0, hd1, hd2]
    linear_combination r5504
  have hd4 : rho 38262 * (2 - (rho 38249 * rho 38249 + rho 38248 * rho 38248 * (-1))) =
      rho 38249 * rho 38249 - rho 38248 * rho 38248 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5505
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX78 rho, seg48Out0AccY78 rho⟩ ⟨rho 38248, rho 38249⟩
    ⟨rho 38254, rho 38255⟩ ⟨seg48Out0AccX79 rho, seg48Out0AccY79 rho⟩ ⟨rho 38261, rho 38262⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5506 rho ∧ Seg48.relationRow5507 rho ∧ Seg48.relationRow5508 rho ∧ Seg48.relationRow5509 rho ∧ Seg48.relationRow5510 rho ∧ Seg48.relationRow5511 rho ∧ Seg48.relationRow5512 rho ∧ Seg48.relationRow5513 rho ∧ Seg48.relationRow5514 rho ∧ Seg48.relationRow5515 rho ∧ Seg48.relationRow5516 rho ∧ Seg48.relationRow5517 rho ∧ Seg48.relationRow5518 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, _⟩

  exact ⟨r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518⟩

theorem seg48Out0_rung79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX79 rho, seg48Out0AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38261, rho 38262⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX79 rho, seg48Out0AccY79 rho⟩ ⟨rho 38261, rho 38262⟩
        ⟨seg48Out0AccX80 rho, seg48Out0AccY80 rho⟩ ⟨rho 38274, rho 38275⟩ := by
  obtain ⟨r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518⟩ := seg48Out0_rows79 rho h
  unfold Seg48.relationRow5506 at r5506

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506

  unfold Seg48.relationRow5507 at r5507

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5507

  unfold Seg48.relationRow5508 at r5508

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5508

  unfold Seg48.relationRow5509 at r5509

  unfold Seg48.relationRow5510 at r5510

  unfold Seg48.relationRow5511 at r5511

  unfold Seg48.relationRow5512 at r5512

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5512

  unfold Seg48.relationRow5513 at r5513

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5513

  unfold Seg48.relationRow5514 at r5514

  unfold Seg48.relationRow5515 at r5515

  unfold Seg48.relationRow5516 at r5516

  unfold Seg48.relationRow5517 at r5517

  unfold Seg48.relationRow5518 at r5518

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX80 rho = seg48Out0AccX79 rho + rho 38269 := by
    unfold seg48Out0AccX80 seg48Out0AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 79]

    ring

  have hnexty : seg48Out0AccY80 rho = seg48Out0AccY79 rho + rho 38270 := by
    unfold seg48Out0AccY80 seg48Out0AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 79]

    ring

  have ha0 : (rho 38261 + rho 38262) * (seg48Out0AccX79 rho + seg48Out0AccY79 rho) = rho 38263 := by
    unfold seg48Out0AccX79 seg48Out0AccY79
    linear_combination r5506
  have ha1 : rho 38262 * seg48Out0AccX79 rho = rho 38264 := by
    unfold seg48Out0AccX79
    linear_combination r5507
  have ha2 : rho 38261 * seg48Out0AccY79 rho = rho 38265 := by
    unfold seg48Out0AccY79
    linear_combination r5508
  have ha3 : 3021 * rho 38264 * rho 38265 = rho 38266 := by
    linear_combination r5509
  have ha4 : rho 38267 * (1 + rho 38266) = rho 38264 + rho 38265 := by
    linear_combination r5510
  have ha5 : rho 38268 * (1 - rho 38266) = rho 38263 - rho 38264 - rho 38265 := by
    linear_combination r5511
  have haddx :
      rho 38267 * (1 + 3021 * (rho 38262 * seg48Out0AccX79 rho) * (rho 38261 * seg48Out0AccY79 rho)) =
        rho 38262 * seg48Out0AccX79 rho + rho 38261 * seg48Out0AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38268 * (1 - 3021 * (rho 38262 * seg48Out0AccX79 rho) * (rho 38261 * seg48Out0AccY79 rho)) =
        (-1) * (rho 38262 * seg48Out0AccX79 rho) - rho 38261 * seg48Out0AccY79 rho +
          (seg48Out0AccY79 rho - seg48Out0AccX79 rho * (-1)) * (rho 38261 + rho 38262) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38268 * (1 - rho 38266) = rho 38263 - rho 38264 - rho 38265 := ha5
      _ = (-1) * rho 38264 - rho 38265 + (seg48Out0AccY79 rho - seg48Out0AccX79 rho * (-1)) *
          (rho 38261 + rho 38262) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX80 rho = seg48Out0AccX79 rho - Bool.toZMod bit * (seg48Out0AccX79 rho - rho 38267) := by
    have hd : rho 38269 = Bool.toZMod bit * (rho 38267 - seg48Out0AccX79 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX79
      linear_combination -r5512
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY80 rho = seg48Out0AccY79 rho - Bool.toZMod bit * (seg48Out0AccY79 rho - rho 38268) := by
    have hd : rho 38270 = Bool.toZMod bit * (rho 38268 - seg48Out0AccY79 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY79
      linear_combination -r5513
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38261 * rho 38262 = rho 38271 := by linear_combination r5514
  have hd1 : rho 38261 * rho 38261 = rho 38272 := by linear_combination r5515
  have hd2 : rho 38262 * rho 38262 = rho 38273 := by linear_combination r5516
  have hd3 : rho 38274 * (rho 38262 * rho 38262 + rho 38261 * rho 38261 * (-1)) =
      2 * (rho 38261 * rho 38262) := by
    rw [hd0, hd1, hd2]
    linear_combination r5517
  have hd4 : rho 38275 * (2 - (rho 38262 * rho 38262 + rho 38261 * rho 38261 * (-1))) =
      rho 38262 * rho 38262 - rho 38261 * rho 38261 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5518
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX79 rho, seg48Out0AccY79 rho⟩ ⟨rho 38261, rho 38262⟩
    ⟨rho 38267, rho 38268⟩ ⟨seg48Out0AccX80 rho, seg48Out0AccY80 rho⟩ ⟨rho 38274, rho 38275⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5519 rho ∧ Seg48.relationRow5520 rho ∧ Seg48.relationRow5521 rho ∧ Seg48.relationRow5522 rho ∧ Seg48.relationRow5523 rho ∧ Seg48.relationRow5524 rho ∧ Seg48.relationRow5525 rho ∧ Seg48.relationRow5526 rho ∧ Seg48.relationRow5527 rho ∧ Seg48.relationRow5528 rho ∧ Seg48.relationRow5529 rho ∧ Seg48.relationRow5530 rho ∧ Seg48.relationRow5531 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart68 at p68

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5519⟩

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531⟩

theorem seg48Out0_rung80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX80 rho, seg48Out0AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38274, rho 38275⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX80 rho, seg48Out0AccY80 rho⟩ ⟨rho 38274, rho 38275⟩
        ⟨seg48Out0AccX81 rho, seg48Out0AccY81 rho⟩ ⟨rho 38287, rho 38288⟩ := by
  obtain ⟨r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531⟩ := seg48Out0_rows80 rho h
  unfold Seg48.relationRow5519 at r5519

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519

  unfold Seg48.relationRow5520 at r5520

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520

  unfold Seg48.relationRow5521 at r5521

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5521

  unfold Seg48.relationRow5522 at r5522

  unfold Seg48.relationRow5523 at r5523

  unfold Seg48.relationRow5524 at r5524

  unfold Seg48.relationRow5525 at r5525

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525

  unfold Seg48.relationRow5526 at r5526

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5526

  unfold Seg48.relationRow5527 at r5527

  unfold Seg48.relationRow5528 at r5528

  unfold Seg48.relationRow5529 at r5529

  unfold Seg48.relationRow5530 at r5530

  unfold Seg48.relationRow5531 at r5531

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX81 rho = seg48Out0AccX80 rho + rho 38282 := by
    unfold seg48Out0AccX81 seg48Out0AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 80]

    ring

  have hnexty : seg48Out0AccY81 rho = seg48Out0AccY80 rho + rho 38283 := by
    unfold seg48Out0AccY81 seg48Out0AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 80]

    ring

  have ha0 : (rho 38274 + rho 38275) * (seg48Out0AccX80 rho + seg48Out0AccY80 rho) = rho 38276 := by
    unfold seg48Out0AccX80 seg48Out0AccY80
    linear_combination r5519
  have ha1 : rho 38275 * seg48Out0AccX80 rho = rho 38277 := by
    unfold seg48Out0AccX80
    linear_combination r5520
  have ha2 : rho 38274 * seg48Out0AccY80 rho = rho 38278 := by
    unfold seg48Out0AccY80
    linear_combination r5521
  have ha3 : 3021 * rho 38277 * rho 38278 = rho 38279 := by
    linear_combination r5522
  have ha4 : rho 38280 * (1 + rho 38279) = rho 38277 + rho 38278 := by
    linear_combination r5523
  have ha5 : rho 38281 * (1 - rho 38279) = rho 38276 - rho 38277 - rho 38278 := by
    linear_combination r5524
  have haddx :
      rho 38280 * (1 + 3021 * (rho 38275 * seg48Out0AccX80 rho) * (rho 38274 * seg48Out0AccY80 rho)) =
        rho 38275 * seg48Out0AccX80 rho + rho 38274 * seg48Out0AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38281 * (1 - 3021 * (rho 38275 * seg48Out0AccX80 rho) * (rho 38274 * seg48Out0AccY80 rho)) =
        (-1) * (rho 38275 * seg48Out0AccX80 rho) - rho 38274 * seg48Out0AccY80 rho +
          (seg48Out0AccY80 rho - seg48Out0AccX80 rho * (-1)) * (rho 38274 + rho 38275) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38281 * (1 - rho 38279) = rho 38276 - rho 38277 - rho 38278 := ha5
      _ = (-1) * rho 38277 - rho 38278 + (seg48Out0AccY80 rho - seg48Out0AccX80 rho * (-1)) *
          (rho 38274 + rho 38275) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX81 rho = seg48Out0AccX80 rho - Bool.toZMod bit * (seg48Out0AccX80 rho - rho 38280) := by
    have hd : rho 38282 = Bool.toZMod bit * (rho 38280 - seg48Out0AccX80 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX80
      linear_combination -r5525
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY81 rho = seg48Out0AccY80 rho - Bool.toZMod bit * (seg48Out0AccY80 rho - rho 38281) := by
    have hd : rho 38283 = Bool.toZMod bit * (rho 38281 - seg48Out0AccY80 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY80
      linear_combination -r5526
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38274 * rho 38275 = rho 38284 := by linear_combination r5527
  have hd1 : rho 38274 * rho 38274 = rho 38285 := by linear_combination r5528
  have hd2 : rho 38275 * rho 38275 = rho 38286 := by linear_combination r5529
  have hd3 : rho 38287 * (rho 38275 * rho 38275 + rho 38274 * rho 38274 * (-1)) =
      2 * (rho 38274 * rho 38275) := by
    rw [hd0, hd1, hd2]
    linear_combination r5530
  have hd4 : rho 38288 * (2 - (rho 38275 * rho 38275 + rho 38274 * rho 38274 * (-1))) =
      rho 38275 * rho 38275 - rho 38274 * rho 38274 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5531
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX80 rho, seg48Out0AccY80 rho⟩ ⟨rho 38274, rho 38275⟩
    ⟨rho 38280, rho 38281⟩ ⟨seg48Out0AccX81 rho, seg48Out0AccY81 rho⟩ ⟨rho 38287, rho 38288⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5532 rho ∧ Seg48.relationRow5533 rho ∧ Seg48.relationRow5534 rho ∧ Seg48.relationRow5535 rho ∧ Seg48.relationRow5536 rho ∧ Seg48.relationRow5537 rho ∧ Seg48.relationRow5538 rho ∧ Seg48.relationRow5539 rho ∧ Seg48.relationRow5540 rho ∧ Seg48.relationRow5541 rho ∧ Seg48.relationRow5542 rho ∧ Seg48.relationRow5543 rho ∧ Seg48.relationRow5544 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg48Out0_rung81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX81 rho, seg48Out0AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38287, rho 38288⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX81 rho, seg48Out0AccY81 rho⟩ ⟨rho 38287, rho 38288⟩
        ⟨seg48Out0AccX82 rho, seg48Out0AccY82 rho⟩ ⟨rho 38300, rho 38301⟩ := by
  obtain ⟨r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg48Out0_rows81 rho h
  unfold Seg48.relationRow5532 at r5532

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5532

  unfold Seg48.relationRow5533 at r5533

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533

  unfold Seg48.relationRow5534 at r5534

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534

  unfold Seg48.relationRow5535 at r5535

  unfold Seg48.relationRow5536 at r5536

  unfold Seg48.relationRow5537 at r5537

  unfold Seg48.relationRow5538 at r5538

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538

  unfold Seg48.relationRow5539 at r5539

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539

  unfold Seg48.relationRow5540 at r5540

  unfold Seg48.relationRow5541 at r5541

  unfold Seg48.relationRow5542 at r5542

  unfold Seg48.relationRow5543 at r5543

  unfold Seg48.relationRow5544 at r5544

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX82 rho = seg48Out0AccX81 rho + rho 38295 := by
    unfold seg48Out0AccX82 seg48Out0AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 81]

    ring

  have hnexty : seg48Out0AccY82 rho = seg48Out0AccY81 rho + rho 38296 := by
    unfold seg48Out0AccY82 seg48Out0AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 81]

    ring

  have ha0 : (rho 38287 + rho 38288) * (seg48Out0AccX81 rho + seg48Out0AccY81 rho) = rho 38289 := by
    unfold seg48Out0AccX81 seg48Out0AccY81
    linear_combination r5532
  have ha1 : rho 38288 * seg48Out0AccX81 rho = rho 38290 := by
    unfold seg48Out0AccX81
    linear_combination r5533
  have ha2 : rho 38287 * seg48Out0AccY81 rho = rho 38291 := by
    unfold seg48Out0AccY81
    linear_combination r5534
  have ha3 : 3021 * rho 38290 * rho 38291 = rho 38292 := by
    linear_combination r5535
  have ha4 : rho 38293 * (1 + rho 38292) = rho 38290 + rho 38291 := by
    linear_combination r5536
  have ha5 : rho 38294 * (1 - rho 38292) = rho 38289 - rho 38290 - rho 38291 := by
    linear_combination r5537
  have haddx :
      rho 38293 * (1 + 3021 * (rho 38288 * seg48Out0AccX81 rho) * (rho 38287 * seg48Out0AccY81 rho)) =
        rho 38288 * seg48Out0AccX81 rho + rho 38287 * seg48Out0AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38294 * (1 - 3021 * (rho 38288 * seg48Out0AccX81 rho) * (rho 38287 * seg48Out0AccY81 rho)) =
        (-1) * (rho 38288 * seg48Out0AccX81 rho) - rho 38287 * seg48Out0AccY81 rho +
          (seg48Out0AccY81 rho - seg48Out0AccX81 rho * (-1)) * (rho 38287 + rho 38288) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38294 * (1 - rho 38292) = rho 38289 - rho 38290 - rho 38291 := ha5
      _ = (-1) * rho 38290 - rho 38291 + (seg48Out0AccY81 rho - seg48Out0AccX81 rho * (-1)) *
          (rho 38287 + rho 38288) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX82 rho = seg48Out0AccX81 rho - Bool.toZMod bit * (seg48Out0AccX81 rho - rho 38293) := by
    have hd : rho 38295 = Bool.toZMod bit * (rho 38293 - seg48Out0AccX81 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX81
      linear_combination -r5538
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY82 rho = seg48Out0AccY81 rho - Bool.toZMod bit * (seg48Out0AccY81 rho - rho 38294) := by
    have hd : rho 38296 = Bool.toZMod bit * (rho 38294 - seg48Out0AccY81 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY81
      linear_combination -r5539
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38287 * rho 38288 = rho 38297 := by linear_combination r5540
  have hd1 : rho 38287 * rho 38287 = rho 38298 := by linear_combination r5541
  have hd2 : rho 38288 * rho 38288 = rho 38299 := by linear_combination r5542
  have hd3 : rho 38300 * (rho 38288 * rho 38288 + rho 38287 * rho 38287 * (-1)) =
      2 * (rho 38287 * rho 38288) := by
    rw [hd0, hd1, hd2]
    linear_combination r5543
  have hd4 : rho 38301 * (2 - (rho 38288 * rho 38288 + rho 38287 * rho 38287 * (-1))) =
      rho 38288 * rho 38288 - rho 38287 * rho 38287 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5544
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX81 rho, seg48Out0AccY81 rho⟩ ⟨rho 38287, rho 38288⟩
    ⟨rho 38293, rho 38294⟩ ⟨seg48Out0AccX82 rho, seg48Out0AccY82 rho⟩ ⟨rho 38300, rho 38301⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5545 rho ∧ Seg48.relationRow5546 rho ∧ Seg48.relationRow5547 rho ∧ Seg48.relationRow5548 rho ∧ Seg48.relationRow5549 rho ∧ Seg48.relationRow5550 rho ∧ Seg48.relationRow5551 rho ∧ Seg48.relationRow5552 rho ∧ Seg48.relationRow5553 rho ∧ Seg48.relationRow5554 rho ∧ Seg48.relationRow5555 rho ∧ Seg48.relationRow5556 rho ∧ Seg48.relationRow5557 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557⟩

theorem seg48Out0_rung82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX82 rho, seg48Out0AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38300, rho 38301⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX82 rho, seg48Out0AccY82 rho⟩ ⟨rho 38300, rho 38301⟩
        ⟨seg48Out0AccX83 rho, seg48Out0AccY83 rho⟩ ⟨rho 38313, rho 38314⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557⟩ := seg48Out0_rows82 rho h
  unfold Seg48.relationRow5545 at r5545

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545

  unfold Seg48.relationRow5546 at r5546

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5546

  unfold Seg48.relationRow5547 at r5547

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547

  unfold Seg48.relationRow5548 at r5548

  unfold Seg48.relationRow5549 at r5549

  unfold Seg48.relationRow5550 at r5550

  unfold Seg48.relationRow5551 at r5551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5551

  unfold Seg48.relationRow5552 at r5552

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552

  unfold Seg48.relationRow5553 at r5553

  unfold Seg48.relationRow5554 at r5554

  unfold Seg48.relationRow5555 at r5555

  unfold Seg48.relationRow5556 at r5556

  unfold Seg48.relationRow5557 at r5557

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX83 rho = seg48Out0AccX82 rho + rho 38308 := by
    unfold seg48Out0AccX83 seg48Out0AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 82]

    ring

  have hnexty : seg48Out0AccY83 rho = seg48Out0AccY82 rho + rho 38309 := by
    unfold seg48Out0AccY83 seg48Out0AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 82]

    ring

  have ha0 : (rho 38300 + rho 38301) * (seg48Out0AccX82 rho + seg48Out0AccY82 rho) = rho 38302 := by
    unfold seg48Out0AccX82 seg48Out0AccY82
    linear_combination r5545
  have ha1 : rho 38301 * seg48Out0AccX82 rho = rho 38303 := by
    unfold seg48Out0AccX82
    linear_combination r5546
  have ha2 : rho 38300 * seg48Out0AccY82 rho = rho 38304 := by
    unfold seg48Out0AccY82
    linear_combination r5547
  have ha3 : 3021 * rho 38303 * rho 38304 = rho 38305 := by
    linear_combination r5548
  have ha4 : rho 38306 * (1 + rho 38305) = rho 38303 + rho 38304 := by
    linear_combination r5549
  have ha5 : rho 38307 * (1 - rho 38305) = rho 38302 - rho 38303 - rho 38304 := by
    linear_combination r5550
  have haddx :
      rho 38306 * (1 + 3021 * (rho 38301 * seg48Out0AccX82 rho) * (rho 38300 * seg48Out0AccY82 rho)) =
        rho 38301 * seg48Out0AccX82 rho + rho 38300 * seg48Out0AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38307 * (1 - 3021 * (rho 38301 * seg48Out0AccX82 rho) * (rho 38300 * seg48Out0AccY82 rho)) =
        (-1) * (rho 38301 * seg48Out0AccX82 rho) - rho 38300 * seg48Out0AccY82 rho +
          (seg48Out0AccY82 rho - seg48Out0AccX82 rho * (-1)) * (rho 38300 + rho 38301) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38307 * (1 - rho 38305) = rho 38302 - rho 38303 - rho 38304 := ha5
      _ = (-1) * rho 38303 - rho 38304 + (seg48Out0AccY82 rho - seg48Out0AccX82 rho * (-1)) *
          (rho 38300 + rho 38301) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX83 rho = seg48Out0AccX82 rho - Bool.toZMod bit * (seg48Out0AccX82 rho - rho 38306) := by
    have hd : rho 38308 = Bool.toZMod bit * (rho 38306 - seg48Out0AccX82 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX82
      linear_combination -r5551
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY83 rho = seg48Out0AccY82 rho - Bool.toZMod bit * (seg48Out0AccY82 rho - rho 38307) := by
    have hd : rho 38309 = Bool.toZMod bit * (rho 38307 - seg48Out0AccY82 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY82
      linear_combination -r5552
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38300 * rho 38301 = rho 38310 := by linear_combination r5553
  have hd1 : rho 38300 * rho 38300 = rho 38311 := by linear_combination r5554
  have hd2 : rho 38301 * rho 38301 = rho 38312 := by linear_combination r5555
  have hd3 : rho 38313 * (rho 38301 * rho 38301 + rho 38300 * rho 38300 * (-1)) =
      2 * (rho 38300 * rho 38301) := by
    rw [hd0, hd1, hd2]
    linear_combination r5556
  have hd4 : rho 38314 * (2 - (rho 38301 * rho 38301 + rho 38300 * rho 38300 * (-1))) =
      rho 38301 * rho 38301 - rho 38300 * rho 38300 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5557
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX82 rho, seg48Out0AccY82 rho⟩ ⟨rho 38300, rho 38301⟩
    ⟨rho 38306, rho 38307⟩ ⟨seg48Out0AccX83 rho, seg48Out0AccY83 rho⟩ ⟨rho 38313, rho 38314⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5558 rho ∧ Seg48.relationRow5559 rho ∧ Seg48.relationRow5560 rho ∧ Seg48.relationRow5561 rho ∧ Seg48.relationRow5562 rho ∧ Seg48.relationRow5563 rho ∧ Seg48.relationRow5564 rho ∧ Seg48.relationRow5565 rho ∧ Seg48.relationRow5566 rho ∧ Seg48.relationRow5567 rho ∧ Seg48.relationRow5568 rho ∧ Seg48.relationRow5569 rho ∧ Seg48.relationRow5570 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570⟩

theorem seg48Out0_rung83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX83 rho, seg48Out0AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38313, rho 38314⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX83 rho, seg48Out0AccY83 rho⟩ ⟨rho 38313, rho 38314⟩
        ⟨seg48Out0AccX84 rho, seg48Out0AccY84 rho⟩ ⟨rho 38326, rho 38327⟩ := by
  obtain ⟨r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570⟩ := seg48Out0_rows83 rho h
  unfold Seg48.relationRow5558 at r5558

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5558

  unfold Seg48.relationRow5559 at r5559

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559

  unfold Seg48.relationRow5560 at r5560

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5560

  unfold Seg48.relationRow5561 at r5561

  unfold Seg48.relationRow5562 at r5562

  unfold Seg48.relationRow5563 at r5563

  unfold Seg48.relationRow5564 at r5564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5564

  unfold Seg48.relationRow5565 at r5565

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5565

  unfold Seg48.relationRow5566 at r5566

  unfold Seg48.relationRow5567 at r5567

  unfold Seg48.relationRow5568 at r5568

  unfold Seg48.relationRow5569 at r5569

  unfold Seg48.relationRow5570 at r5570

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX84 rho = seg48Out0AccX83 rho + rho 38321 := by
    unfold seg48Out0AccX84 seg48Out0AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 83]

    ring

  have hnexty : seg48Out0AccY84 rho = seg48Out0AccY83 rho + rho 38322 := by
    unfold seg48Out0AccY84 seg48Out0AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 83]

    ring

  have ha0 : (rho 38313 + rho 38314) * (seg48Out0AccX83 rho + seg48Out0AccY83 rho) = rho 38315 := by
    unfold seg48Out0AccX83 seg48Out0AccY83
    linear_combination r5558
  have ha1 : rho 38314 * seg48Out0AccX83 rho = rho 38316 := by
    unfold seg48Out0AccX83
    linear_combination r5559
  have ha2 : rho 38313 * seg48Out0AccY83 rho = rho 38317 := by
    unfold seg48Out0AccY83
    linear_combination r5560
  have ha3 : 3021 * rho 38316 * rho 38317 = rho 38318 := by
    linear_combination r5561
  have ha4 : rho 38319 * (1 + rho 38318) = rho 38316 + rho 38317 := by
    linear_combination r5562
  have ha5 : rho 38320 * (1 - rho 38318) = rho 38315 - rho 38316 - rho 38317 := by
    linear_combination r5563
  have haddx :
      rho 38319 * (1 + 3021 * (rho 38314 * seg48Out0AccX83 rho) * (rho 38313 * seg48Out0AccY83 rho)) =
        rho 38314 * seg48Out0AccX83 rho + rho 38313 * seg48Out0AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38320 * (1 - 3021 * (rho 38314 * seg48Out0AccX83 rho) * (rho 38313 * seg48Out0AccY83 rho)) =
        (-1) * (rho 38314 * seg48Out0AccX83 rho) - rho 38313 * seg48Out0AccY83 rho +
          (seg48Out0AccY83 rho - seg48Out0AccX83 rho * (-1)) * (rho 38313 + rho 38314) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38320 * (1 - rho 38318) = rho 38315 - rho 38316 - rho 38317 := ha5
      _ = (-1) * rho 38316 - rho 38317 + (seg48Out0AccY83 rho - seg48Out0AccX83 rho * (-1)) *
          (rho 38313 + rho 38314) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX84 rho = seg48Out0AccX83 rho - Bool.toZMod bit * (seg48Out0AccX83 rho - rho 38319) := by
    have hd : rho 38321 = Bool.toZMod bit * (rho 38319 - seg48Out0AccX83 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX83
      linear_combination -r5564
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY84 rho = seg48Out0AccY83 rho - Bool.toZMod bit * (seg48Out0AccY83 rho - rho 38320) := by
    have hd : rho 38322 = Bool.toZMod bit * (rho 38320 - seg48Out0AccY83 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY83
      linear_combination -r5565
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38313 * rho 38314 = rho 38323 := by linear_combination r5566
  have hd1 : rho 38313 * rho 38313 = rho 38324 := by linear_combination r5567
  have hd2 : rho 38314 * rho 38314 = rho 38325 := by linear_combination r5568
  have hd3 : rho 38326 * (rho 38314 * rho 38314 + rho 38313 * rho 38313 * (-1)) =
      2 * (rho 38313 * rho 38314) := by
    rw [hd0, hd1, hd2]
    linear_combination r5569
  have hd4 : rho 38327 * (2 - (rho 38314 * rho 38314 + rho 38313 * rho 38313 * (-1))) =
      rho 38314 * rho 38314 - rho 38313 * rho 38313 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5570
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX83 rho, seg48Out0AccY83 rho⟩ ⟨rho 38313, rho 38314⟩
    ⟨rho 38319, rho 38320⟩ ⟨seg48Out0AccX84 rho, seg48Out0AccY84 rho⟩ ⟨rho 38326, rho 38327⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5571 rho ∧ Seg48.relationRow5572 rho ∧ Seg48.relationRow5573 rho ∧ Seg48.relationRow5574 rho ∧ Seg48.relationRow5575 rho ∧ Seg48.relationRow5576 rho ∧ Seg48.relationRow5577 rho ∧ Seg48.relationRow5578 rho ∧ Seg48.relationRow5579 rho ∧ Seg48.relationRow5580 rho ∧ Seg48.relationRow5581 rho ∧ Seg48.relationRow5582 rho ∧ Seg48.relationRow5583 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583⟩

theorem seg48Out0_rung84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX84 rho, seg48Out0AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38326, rho 38327⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX84 rho, seg48Out0AccY84 rho⟩ ⟨rho 38326, rho 38327⟩
        ⟨seg48Out0AccX85 rho, seg48Out0AccY85 rho⟩ ⟨rho 38339, rho 38340⟩ := by
  obtain ⟨r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583⟩ := seg48Out0_rows84 rho h
  unfold Seg48.relationRow5571 at r5571

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5571

  unfold Seg48.relationRow5572 at r5572

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5572

  unfold Seg48.relationRow5573 at r5573

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573

  unfold Seg48.relationRow5574 at r5574

  unfold Seg48.relationRow5575 at r5575

  unfold Seg48.relationRow5576 at r5576

  unfold Seg48.relationRow5577 at r5577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5577

  unfold Seg48.relationRow5578 at r5578

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5578

  unfold Seg48.relationRow5579 at r5579

  unfold Seg48.relationRow5580 at r5580

  unfold Seg48.relationRow5581 at r5581

  unfold Seg48.relationRow5582 at r5582

  unfold Seg48.relationRow5583 at r5583

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX85 rho = seg48Out0AccX84 rho + rho 38334 := by
    unfold seg48Out0AccX85 seg48Out0AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 84]

    ring

  have hnexty : seg48Out0AccY85 rho = seg48Out0AccY84 rho + rho 38335 := by
    unfold seg48Out0AccY85 seg48Out0AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 84]

    ring

  have ha0 : (rho 38326 + rho 38327) * (seg48Out0AccX84 rho + seg48Out0AccY84 rho) = rho 38328 := by
    unfold seg48Out0AccX84 seg48Out0AccY84
    linear_combination r5571
  have ha1 : rho 38327 * seg48Out0AccX84 rho = rho 38329 := by
    unfold seg48Out0AccX84
    linear_combination r5572
  have ha2 : rho 38326 * seg48Out0AccY84 rho = rho 38330 := by
    unfold seg48Out0AccY84
    linear_combination r5573
  have ha3 : 3021 * rho 38329 * rho 38330 = rho 38331 := by
    linear_combination r5574
  have ha4 : rho 38332 * (1 + rho 38331) = rho 38329 + rho 38330 := by
    linear_combination r5575
  have ha5 : rho 38333 * (1 - rho 38331) = rho 38328 - rho 38329 - rho 38330 := by
    linear_combination r5576
  have haddx :
      rho 38332 * (1 + 3021 * (rho 38327 * seg48Out0AccX84 rho) * (rho 38326 * seg48Out0AccY84 rho)) =
        rho 38327 * seg48Out0AccX84 rho + rho 38326 * seg48Out0AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38333 * (1 - 3021 * (rho 38327 * seg48Out0AccX84 rho) * (rho 38326 * seg48Out0AccY84 rho)) =
        (-1) * (rho 38327 * seg48Out0AccX84 rho) - rho 38326 * seg48Out0AccY84 rho +
          (seg48Out0AccY84 rho - seg48Out0AccX84 rho * (-1)) * (rho 38326 + rho 38327) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38333 * (1 - rho 38331) = rho 38328 - rho 38329 - rho 38330 := ha5
      _ = (-1) * rho 38329 - rho 38330 + (seg48Out0AccY84 rho - seg48Out0AccX84 rho * (-1)) *
          (rho 38326 + rho 38327) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX85 rho = seg48Out0AccX84 rho - Bool.toZMod bit * (seg48Out0AccX84 rho - rho 38332) := by
    have hd : rho 38334 = Bool.toZMod bit * (rho 38332 - seg48Out0AccX84 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX84
      linear_combination -r5577
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY85 rho = seg48Out0AccY84 rho - Bool.toZMod bit * (seg48Out0AccY84 rho - rho 38333) := by
    have hd : rho 38335 = Bool.toZMod bit * (rho 38333 - seg48Out0AccY84 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY84
      linear_combination -r5578
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38326 * rho 38327 = rho 38336 := by linear_combination r5579
  have hd1 : rho 38326 * rho 38326 = rho 38337 := by linear_combination r5580
  have hd2 : rho 38327 * rho 38327 = rho 38338 := by linear_combination r5581
  have hd3 : rho 38339 * (rho 38327 * rho 38327 + rho 38326 * rho 38326 * (-1)) =
      2 * (rho 38326 * rho 38327) := by
    rw [hd0, hd1, hd2]
    linear_combination r5582
  have hd4 : rho 38340 * (2 - (rho 38327 * rho 38327 + rho 38326 * rho 38326 * (-1))) =
      rho 38327 * rho 38327 - rho 38326 * rho 38326 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5583
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX84 rho, seg48Out0AccY84 rho⟩ ⟨rho 38326, rho 38327⟩
    ⟨rho 38332, rho 38333⟩ ⟨seg48Out0AccX85 rho, seg48Out0AccY85 rho⟩ ⟨rho 38339, rho 38340⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5584 rho ∧ Seg48.relationRow5585 rho ∧ Seg48.relationRow5586 rho ∧ Seg48.relationRow5587 rho ∧ Seg48.relationRow5588 rho ∧ Seg48.relationRow5589 rho ∧ Seg48.relationRow5590 rho ∧ Seg48.relationRow5591 rho ∧ Seg48.relationRow5592 rho ∧ Seg48.relationRow5593 rho ∧ Seg48.relationRow5594 rho ∧ Seg48.relationRow5595 rho ∧ Seg48.relationRow5596 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, _, _, _⟩

  exact ⟨r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596⟩

theorem seg48Out0_rung85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37199 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX85 rho, seg48Out0AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38339, rho 38340⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX85 rho, seg48Out0AccY85 rho⟩ ⟨rho 38339, rho 38340⟩
        ⟨seg48Out0AccX86 rho, seg48Out0AccY86 rho⟩ ⟨rho 38352, rho 38353⟩ := by
  obtain ⟨r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596⟩ := seg48Out0_rows85 rho h
  unfold Seg48.relationRow5584 at r5584

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5584

  unfold Seg48.relationRow5585 at r5585

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5585

  unfold Seg48.relationRow5586 at r5586

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5586

  unfold Seg48.relationRow5587 at r5587

  unfold Seg48.relationRow5588 at r5588

  unfold Seg48.relationRow5589 at r5589

  unfold Seg48.relationRow5590 at r5590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5590

  unfold Seg48.relationRow5591 at r5591

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5591

  unfold Seg48.relationRow5592 at r5592

  unfold Seg48.relationRow5593 at r5593

  unfold Seg48.relationRow5594 at r5594

  unfold Seg48.relationRow5595 at r5595

  unfold Seg48.relationRow5596 at r5596

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX86 rho = seg48Out0AccX85 rho + rho 38347 := by
    unfold seg48Out0AccX86 seg48Out0AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 85]

    ring

  have hnexty : seg48Out0AccY86 rho = seg48Out0AccY85 rho + rho 38348 := by
    unfold seg48Out0AccY86 seg48Out0AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 85]

    ring

  have ha0 : (rho 38339 + rho 38340) * (seg48Out0AccX85 rho + seg48Out0AccY85 rho) = rho 38341 := by
    unfold seg48Out0AccX85 seg48Out0AccY85
    linear_combination r5584
  have ha1 : rho 38340 * seg48Out0AccX85 rho = rho 38342 := by
    unfold seg48Out0AccX85
    linear_combination r5585
  have ha2 : rho 38339 * seg48Out0AccY85 rho = rho 38343 := by
    unfold seg48Out0AccY85
    linear_combination r5586
  have ha3 : 3021 * rho 38342 * rho 38343 = rho 38344 := by
    linear_combination r5587
  have ha4 : rho 38345 * (1 + rho 38344) = rho 38342 + rho 38343 := by
    linear_combination r5588
  have ha5 : rho 38346 * (1 - rho 38344) = rho 38341 - rho 38342 - rho 38343 := by
    linear_combination r5589
  have haddx :
      rho 38345 * (1 + 3021 * (rho 38340 * seg48Out0AccX85 rho) * (rho 38339 * seg48Out0AccY85 rho)) =
        rho 38340 * seg48Out0AccX85 rho + rho 38339 * seg48Out0AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38346 * (1 - 3021 * (rho 38340 * seg48Out0AccX85 rho) * (rho 38339 * seg48Out0AccY85 rho)) =
        (-1) * (rho 38340 * seg48Out0AccX85 rho) - rho 38339 * seg48Out0AccY85 rho +
          (seg48Out0AccY85 rho - seg48Out0AccX85 rho * (-1)) * (rho 38339 + rho 38340) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38346 * (1 - rho 38344) = rho 38341 - rho 38342 - rho 38343 := ha5
      _ = (-1) * rho 38342 - rho 38343 + (seg48Out0AccY85 rho - seg48Out0AccX85 rho * (-1)) *
          (rho 38339 + rho 38340) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX86 rho = seg48Out0AccX85 rho - Bool.toZMod bit * (seg48Out0AccX85 rho - rho 38345) := by
    have hd : rho 38347 = Bool.toZMod bit * (rho 38345 - seg48Out0AccX85 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX85
      linear_combination -r5590
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY86 rho = seg48Out0AccY85 rho - Bool.toZMod bit * (seg48Out0AccY85 rho - rho 38346) := by
    have hd : rho 38348 = Bool.toZMod bit * (rho 38346 - seg48Out0AccY85 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY85
      linear_combination -r5591
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38339 * rho 38340 = rho 38349 := by linear_combination r5592
  have hd1 : rho 38339 * rho 38339 = rho 38350 := by linear_combination r5593
  have hd2 : rho 38340 * rho 38340 = rho 38351 := by linear_combination r5594
  have hd3 : rho 38352 * (rho 38340 * rho 38340 + rho 38339 * rho 38339 * (-1)) =
      2 * (rho 38339 * rho 38340) := by
    rw [hd0, hd1, hd2]
    linear_combination r5595
  have hd4 : rho 38353 * (2 - (rho 38340 * rho 38340 + rho 38339 * rho 38339 * (-1))) =
      rho 38340 * rho 38340 - rho 38339 * rho 38339 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5596
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX85 rho, seg48Out0AccY85 rho⟩ ⟨rho 38339, rho 38340⟩
    ⟨rho 38345, rho 38346⟩ ⟨seg48Out0AccX86 rho, seg48Out0AccY86 rho⟩ ⟨rho 38352, rho 38353⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5597 rho ∧ Seg48.relationRow5598 rho ∧ Seg48.relationRow5599 rho ∧ Seg48.relationRow5600 rho ∧ Seg48.relationRow5601 rho ∧ Seg48.relationRow5602 rho ∧ Seg48.relationRow5603 rho ∧ Seg48.relationRow5604 rho ∧ Seg48.relationRow5605 rho ∧ Seg48.relationRow5606 rho ∧ Seg48.relationRow5607 rho ∧ Seg48.relationRow5608 rho ∧ Seg48.relationRow5609 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5597, r5598, r5599⟩

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5597, r5598, r5599, r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609⟩

theorem seg48Out0_rung86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37200 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX86 rho, seg48Out0AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38352, rho 38353⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX86 rho, seg48Out0AccY86 rho⟩ ⟨rho 38352, rho 38353⟩
        ⟨seg48Out0AccX87 rho, seg48Out0AccY87 rho⟩ ⟨rho 38365, rho 38366⟩ := by
  obtain ⟨r5597, r5598, r5599, r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609⟩ := seg48Out0_rows86 rho h
  unfold Seg48.relationRow5597 at r5597

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5597

  unfold Seg48.relationRow5598 at r5598

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5598

  unfold Seg48.relationRow5599 at r5599

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5599

  unfold Seg48.relationRow5600 at r5600

  unfold Seg48.relationRow5601 at r5601

  unfold Seg48.relationRow5602 at r5602

  unfold Seg48.relationRow5603 at r5603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5603

  unfold Seg48.relationRow5604 at r5604

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5604

  unfold Seg48.relationRow5605 at r5605

  unfold Seg48.relationRow5606 at r5606

  unfold Seg48.relationRow5607 at r5607

  unfold Seg48.relationRow5608 at r5608

  unfold Seg48.relationRow5609 at r5609

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX87 rho = seg48Out0AccX86 rho + rho 38360 := by
    unfold seg48Out0AccX87 seg48Out0AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 86]

    ring

  have hnexty : seg48Out0AccY87 rho = seg48Out0AccY86 rho + rho 38361 := by
    unfold seg48Out0AccY87 seg48Out0AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 86]

    ring

  have ha0 : (rho 38352 + rho 38353) * (seg48Out0AccX86 rho + seg48Out0AccY86 rho) = rho 38354 := by
    unfold seg48Out0AccX86 seg48Out0AccY86
    linear_combination r5597
  have ha1 : rho 38353 * seg48Out0AccX86 rho = rho 38355 := by
    unfold seg48Out0AccX86
    linear_combination r5598
  have ha2 : rho 38352 * seg48Out0AccY86 rho = rho 38356 := by
    unfold seg48Out0AccY86
    linear_combination r5599
  have ha3 : 3021 * rho 38355 * rho 38356 = rho 38357 := by
    linear_combination r5600
  have ha4 : rho 38358 * (1 + rho 38357) = rho 38355 + rho 38356 := by
    linear_combination r5601
  have ha5 : rho 38359 * (1 - rho 38357) = rho 38354 - rho 38355 - rho 38356 := by
    linear_combination r5602
  have haddx :
      rho 38358 * (1 + 3021 * (rho 38353 * seg48Out0AccX86 rho) * (rho 38352 * seg48Out0AccY86 rho)) =
        rho 38353 * seg48Out0AccX86 rho + rho 38352 * seg48Out0AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38359 * (1 - 3021 * (rho 38353 * seg48Out0AccX86 rho) * (rho 38352 * seg48Out0AccY86 rho)) =
        (-1) * (rho 38353 * seg48Out0AccX86 rho) - rho 38352 * seg48Out0AccY86 rho +
          (seg48Out0AccY86 rho - seg48Out0AccX86 rho * (-1)) * (rho 38352 + rho 38353) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38359 * (1 - rho 38357) = rho 38354 - rho 38355 - rho 38356 := ha5
      _ = (-1) * rho 38355 - rho 38356 + (seg48Out0AccY86 rho - seg48Out0AccX86 rho * (-1)) *
          (rho 38352 + rho 38353) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX87 rho = seg48Out0AccX86 rho - Bool.toZMod bit * (seg48Out0AccX86 rho - rho 38358) := by
    have hd : rho 38360 = Bool.toZMod bit * (rho 38358 - seg48Out0AccX86 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX86
      linear_combination -r5603
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY87 rho = seg48Out0AccY86 rho - Bool.toZMod bit * (seg48Out0AccY86 rho - rho 38359) := by
    have hd : rho 38361 = Bool.toZMod bit * (rho 38359 - seg48Out0AccY86 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY86
      linear_combination -r5604
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38352 * rho 38353 = rho 38362 := by linear_combination r5605
  have hd1 : rho 38352 * rho 38352 = rho 38363 := by linear_combination r5606
  have hd2 : rho 38353 * rho 38353 = rho 38364 := by linear_combination r5607
  have hd3 : rho 38365 * (rho 38353 * rho 38353 + rho 38352 * rho 38352 * (-1)) =
      2 * (rho 38352 * rho 38353) := by
    rw [hd0, hd1, hd2]
    linear_combination r5608
  have hd4 : rho 38366 * (2 - (rho 38353 * rho 38353 + rho 38352 * rho 38352 * (-1))) =
      rho 38353 * rho 38353 - rho 38352 * rho 38352 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5609
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX86 rho, seg48Out0AccY86 rho⟩ ⟨rho 38352, rho 38353⟩
    ⟨rho 38358, rho 38359⟩ ⟨seg48Out0AccX87 rho, seg48Out0AccY87 rho⟩ ⟨rho 38365, rho 38366⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5610 rho ∧ Seg48.relationRow5611 rho ∧ Seg48.relationRow5612 rho ∧ Seg48.relationRow5613 rho ∧ Seg48.relationRow5614 rho ∧ Seg48.relationRow5615 rho ∧ Seg48.relationRow5616 rho ∧ Seg48.relationRow5617 rho ∧ Seg48.relationRow5618 rho ∧ Seg48.relationRow5619 rho ∧ Seg48.relationRow5620 rho ∧ Seg48.relationRow5621 rho ∧ Seg48.relationRow5622 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622⟩

theorem seg48Out0_rung87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37201 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX87 rho, seg48Out0AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38365, rho 38366⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX87 rho, seg48Out0AccY87 rho⟩ ⟨rho 38365, rho 38366⟩
        ⟨seg48Out0AccX88 rho, seg48Out0AccY88 rho⟩ ⟨rho 38378, rho 38379⟩ := by
  obtain ⟨r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622⟩ := seg48Out0_rows87 rho h
  unfold Seg48.relationRow5610 at r5610

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5610

  unfold Seg48.relationRow5611 at r5611

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5611

  unfold Seg48.relationRow5612 at r5612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5612

  unfold Seg48.relationRow5613 at r5613

  unfold Seg48.relationRow5614 at r5614

  unfold Seg48.relationRow5615 at r5615

  unfold Seg48.relationRow5616 at r5616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5616

  unfold Seg48.relationRow5617 at r5617

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5617

  unfold Seg48.relationRow5618 at r5618

  unfold Seg48.relationRow5619 at r5619

  unfold Seg48.relationRow5620 at r5620

  unfold Seg48.relationRow5621 at r5621

  unfold Seg48.relationRow5622 at r5622

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX88 rho = seg48Out0AccX87 rho + rho 38373 := by
    unfold seg48Out0AccX88 seg48Out0AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 87]

    ring

  have hnexty : seg48Out0AccY88 rho = seg48Out0AccY87 rho + rho 38374 := by
    unfold seg48Out0AccY88 seg48Out0AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 87]

    ring

  have ha0 : (rho 38365 + rho 38366) * (seg48Out0AccX87 rho + seg48Out0AccY87 rho) = rho 38367 := by
    unfold seg48Out0AccX87 seg48Out0AccY87
    linear_combination r5610
  have ha1 : rho 38366 * seg48Out0AccX87 rho = rho 38368 := by
    unfold seg48Out0AccX87
    linear_combination r5611
  have ha2 : rho 38365 * seg48Out0AccY87 rho = rho 38369 := by
    unfold seg48Out0AccY87
    linear_combination r5612
  have ha3 : 3021 * rho 38368 * rho 38369 = rho 38370 := by
    linear_combination r5613
  have ha4 : rho 38371 * (1 + rho 38370) = rho 38368 + rho 38369 := by
    linear_combination r5614
  have ha5 : rho 38372 * (1 - rho 38370) = rho 38367 - rho 38368 - rho 38369 := by
    linear_combination r5615
  have haddx :
      rho 38371 * (1 + 3021 * (rho 38366 * seg48Out0AccX87 rho) * (rho 38365 * seg48Out0AccY87 rho)) =
        rho 38366 * seg48Out0AccX87 rho + rho 38365 * seg48Out0AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38372 * (1 - 3021 * (rho 38366 * seg48Out0AccX87 rho) * (rho 38365 * seg48Out0AccY87 rho)) =
        (-1) * (rho 38366 * seg48Out0AccX87 rho) - rho 38365 * seg48Out0AccY87 rho +
          (seg48Out0AccY87 rho - seg48Out0AccX87 rho * (-1)) * (rho 38365 + rho 38366) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38372 * (1 - rho 38370) = rho 38367 - rho 38368 - rho 38369 := ha5
      _ = (-1) * rho 38368 - rho 38369 + (seg48Out0AccY87 rho - seg48Out0AccX87 rho * (-1)) *
          (rho 38365 + rho 38366) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX88 rho = seg48Out0AccX87 rho - Bool.toZMod bit * (seg48Out0AccX87 rho - rho 38371) := by
    have hd : rho 38373 = Bool.toZMod bit * (rho 38371 - seg48Out0AccX87 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX87
      linear_combination -r5616
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY88 rho = seg48Out0AccY87 rho - Bool.toZMod bit * (seg48Out0AccY87 rho - rho 38372) := by
    have hd : rho 38374 = Bool.toZMod bit * (rho 38372 - seg48Out0AccY87 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY87
      linear_combination -r5617
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38365 * rho 38366 = rho 38375 := by linear_combination r5618
  have hd1 : rho 38365 * rho 38365 = rho 38376 := by linear_combination r5619
  have hd2 : rho 38366 * rho 38366 = rho 38377 := by linear_combination r5620
  have hd3 : rho 38378 * (rho 38366 * rho 38366 + rho 38365 * rho 38365 * (-1)) =
      2 * (rho 38365 * rho 38366) := by
    rw [hd0, hd1, hd2]
    linear_combination r5621
  have hd4 : rho 38379 * (2 - (rho 38366 * rho 38366 + rho 38365 * rho 38365 * (-1))) =
      rho 38366 * rho 38366 - rho 38365 * rho 38365 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5622
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX87 rho, seg48Out0AccY87 rho⟩ ⟨rho 38365, rho 38366⟩
    ⟨rho 38371, rho 38372⟩ ⟨seg48Out0AccX88 rho, seg48Out0AccY88 rho⟩ ⟨rho 38378, rho 38379⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c7 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg48Out0_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg48Out0_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg48Out0_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg48Out0_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg48Out0_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg48Out0_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg48Out0_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg48Out0_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg48Out0_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg48Out0_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
