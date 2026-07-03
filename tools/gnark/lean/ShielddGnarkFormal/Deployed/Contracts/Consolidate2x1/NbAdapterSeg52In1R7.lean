import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4327 rho ∧ Seg52.relationRow4328 rho ∧ Seg52.relationRow4329 rho ∧ Seg52.relationRow4330 rho ∧ Seg52.relationRow4331 rho ∧ Seg52.relationRow4332 rho ∧ Seg52.relationRow4333 rho ∧ Seg52.relationRow4334 rho ∧ Seg52.relationRow4335 rho ∧ Seg52.relationRow4336 rho ∧ Seg52.relationRow4337 rho ∧ Seg52.relationRow4338 rho ∧ Seg52.relationRow4339 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339⟩

theorem seg52In1_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47671 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48715, rho 48716⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48715, rho 48716⟩
        ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48728, rho 48729⟩ := by
  obtain ⟨r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339⟩ := seg52In1_rows77 rho h
  unfold Seg52.relationRow4327 at r4327

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4327

  unfold Seg52.relationRow4328 at r4328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4328

  unfold Seg52.relationRow4329 at r4329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4329

  unfold Seg52.relationRow4330 at r4330

  unfold Seg52.relationRow4331 at r4331

  unfold Seg52.relationRow4332 at r4332

  unfold Seg52.relationRow4333 at r4333

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4333

  unfold Seg52.relationRow4334 at r4334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4334

  unfold Seg52.relationRow4335 at r4335

  unfold Seg52.relationRow4336 at r4336

  unfold Seg52.relationRow4337 at r4337

  unfold Seg52.relationRow4338 at r4338

  unfold Seg52.relationRow4339 at r4339

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX78 rho = seg52In1AccX77 rho + rho 48723 := by
    unfold seg52In1AccX78 seg52In1AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 77]

    ring

  have hnexty : seg52In1AccY78 rho = seg52In1AccY77 rho + rho 48724 := by
    unfold seg52In1AccY78 seg52In1AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 77]

    ring

  have ha0 : (rho 48715 + rho 48716) * (seg52In1AccX77 rho + seg52In1AccY77 rho) = rho 48717 := by
    unfold seg52In1AccX77 seg52In1AccY77
    linear_combination r4327
  have ha1 : rho 48716 * seg52In1AccX77 rho = rho 48718 := by
    unfold seg52In1AccX77
    linear_combination r4328
  have ha2 : rho 48715 * seg52In1AccY77 rho = rho 48719 := by
    unfold seg52In1AccY77
    linear_combination r4329
  have ha3 : 3021 * rho 48718 * rho 48719 = rho 48720 := by
    linear_combination r4330
  have ha4 : rho 48721 * (1 + rho 48720) = rho 48718 + rho 48719 := by
    linear_combination r4331
  have ha5 : rho 48722 * (1 - rho 48720) = rho 48717 - rho 48718 - rho 48719 := by
    linear_combination r4332
  have haddx :
      rho 48721 * (1 + 3021 * (rho 48716 * seg52In1AccX77 rho) * (rho 48715 * seg52In1AccY77 rho)) =
        rho 48716 * seg52In1AccX77 rho + rho 48715 * seg52In1AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48722 * (1 - 3021 * (rho 48716 * seg52In1AccX77 rho) * (rho 48715 * seg52In1AccY77 rho)) =
        (-1) * (rho 48716 * seg52In1AccX77 rho) - rho 48715 * seg52In1AccY77 rho +
          (seg52In1AccY77 rho - seg52In1AccX77 rho * (-1)) * (rho 48715 + rho 48716) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48722 * (1 - rho 48720) = rho 48717 - rho 48718 - rho 48719 := ha5
      _ = (-1) * rho 48718 - rho 48719 + (seg52In1AccY77 rho - seg52In1AccX77 rho * (-1)) *
          (rho 48715 + rho 48716) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX78 rho = seg52In1AccX77 rho - Bool.toZMod bit * (seg52In1AccX77 rho - rho 48721) := by
    have hd : rho 48723 = Bool.toZMod bit * (rho 48721 - seg52In1AccX77 rho) := by
      rw [← hbit]
      unfold seg52In1AccX77
      linear_combination -r4333
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY78 rho = seg52In1AccY77 rho - Bool.toZMod bit * (seg52In1AccY77 rho - rho 48722) := by
    have hd : rho 48724 = Bool.toZMod bit * (rho 48722 - seg52In1AccY77 rho) := by
      rw [← hbit]
      unfold seg52In1AccY77
      linear_combination -r4334
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48715 * rho 48716 = rho 48725 := by linear_combination r4335
  have hd1 : rho 48715 * rho 48715 = rho 48726 := by linear_combination r4336
  have hd2 : rho 48716 * rho 48716 = rho 48727 := by linear_combination r4337
  have hd3 : rho 48728 * (rho 48716 * rho 48716 + rho 48715 * rho 48715 * (-1)) =
      2 * (rho 48715 * rho 48716) := by
    rw [hd0, hd1, hd2]
    linear_combination r4338
  have hd4 : rho 48729 * (2 - (rho 48716 * rho 48716 + rho 48715 * rho 48715 * (-1))) =
      rho 48716 * rho 48716 - rho 48715 * rho 48715 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4339
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX77 rho, seg52In1AccY77 rho⟩ ⟨rho 48715, rho 48716⟩
    ⟨rho 48721, rho 48722⟩ ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48728, rho 48729⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4340 rho ∧ Seg52.relationRow4341 rho ∧ Seg52.relationRow4342 rho ∧ Seg52.relationRow4343 rho ∧ Seg52.relationRow4344 rho ∧ Seg52.relationRow4345 rho ∧ Seg52.relationRow4346 rho ∧ Seg52.relationRow4347 rho ∧ Seg52.relationRow4348 rho ∧ Seg52.relationRow4349 rho ∧ Seg52.relationRow4350 rho ∧ Seg52.relationRow4351 rho ∧ Seg52.relationRow4352 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352⟩

theorem seg52In1_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47672 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48728, rho 48729⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48728, rho 48729⟩
        ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48741, rho 48742⟩ := by
  obtain ⟨r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352⟩ := seg52In1_rows78 rho h
  unfold Seg52.relationRow4340 at r4340

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4340

  unfold Seg52.relationRow4341 at r4341

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4341

  unfold Seg52.relationRow4342 at r4342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4342

  unfold Seg52.relationRow4343 at r4343

  unfold Seg52.relationRow4344 at r4344

  unfold Seg52.relationRow4345 at r4345

  unfold Seg52.relationRow4346 at r4346

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4346

  unfold Seg52.relationRow4347 at r4347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4347

  unfold Seg52.relationRow4348 at r4348

  unfold Seg52.relationRow4349 at r4349

  unfold Seg52.relationRow4350 at r4350

  unfold Seg52.relationRow4351 at r4351

  unfold Seg52.relationRow4352 at r4352

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX79 rho = seg52In1AccX78 rho + rho 48736 := by
    unfold seg52In1AccX79 seg52In1AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 78]

    ring

  have hnexty : seg52In1AccY79 rho = seg52In1AccY78 rho + rho 48737 := by
    unfold seg52In1AccY79 seg52In1AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 78]

    ring

  have ha0 : (rho 48728 + rho 48729) * (seg52In1AccX78 rho + seg52In1AccY78 rho) = rho 48730 := by
    unfold seg52In1AccX78 seg52In1AccY78
    linear_combination r4340
  have ha1 : rho 48729 * seg52In1AccX78 rho = rho 48731 := by
    unfold seg52In1AccX78
    linear_combination r4341
  have ha2 : rho 48728 * seg52In1AccY78 rho = rho 48732 := by
    unfold seg52In1AccY78
    linear_combination r4342
  have ha3 : 3021 * rho 48731 * rho 48732 = rho 48733 := by
    linear_combination r4343
  have ha4 : rho 48734 * (1 + rho 48733) = rho 48731 + rho 48732 := by
    linear_combination r4344
  have ha5 : rho 48735 * (1 - rho 48733) = rho 48730 - rho 48731 - rho 48732 := by
    linear_combination r4345
  have haddx :
      rho 48734 * (1 + 3021 * (rho 48729 * seg52In1AccX78 rho) * (rho 48728 * seg52In1AccY78 rho)) =
        rho 48729 * seg52In1AccX78 rho + rho 48728 * seg52In1AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48735 * (1 - 3021 * (rho 48729 * seg52In1AccX78 rho) * (rho 48728 * seg52In1AccY78 rho)) =
        (-1) * (rho 48729 * seg52In1AccX78 rho) - rho 48728 * seg52In1AccY78 rho +
          (seg52In1AccY78 rho - seg52In1AccX78 rho * (-1)) * (rho 48728 + rho 48729) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48735 * (1 - rho 48733) = rho 48730 - rho 48731 - rho 48732 := ha5
      _ = (-1) * rho 48731 - rho 48732 + (seg52In1AccY78 rho - seg52In1AccX78 rho * (-1)) *
          (rho 48728 + rho 48729) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX79 rho = seg52In1AccX78 rho - Bool.toZMod bit * (seg52In1AccX78 rho - rho 48734) := by
    have hd : rho 48736 = Bool.toZMod bit * (rho 48734 - seg52In1AccX78 rho) := by
      rw [← hbit]
      unfold seg52In1AccX78
      linear_combination -r4346
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY79 rho = seg52In1AccY78 rho - Bool.toZMod bit * (seg52In1AccY78 rho - rho 48735) := by
    have hd : rho 48737 = Bool.toZMod bit * (rho 48735 - seg52In1AccY78 rho) := by
      rw [← hbit]
      unfold seg52In1AccY78
      linear_combination -r4347
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48728 * rho 48729 = rho 48738 := by linear_combination r4348
  have hd1 : rho 48728 * rho 48728 = rho 48739 := by linear_combination r4349
  have hd2 : rho 48729 * rho 48729 = rho 48740 := by linear_combination r4350
  have hd3 : rho 48741 * (rho 48729 * rho 48729 + rho 48728 * rho 48728 * (-1)) =
      2 * (rho 48728 * rho 48729) := by
    rw [hd0, hd1, hd2]
    linear_combination r4351
  have hd4 : rho 48742 * (2 - (rho 48729 * rho 48729 + rho 48728 * rho 48728 * (-1))) =
      rho 48729 * rho 48729 - rho 48728 * rho 48728 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4352
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX78 rho, seg52In1AccY78 rho⟩ ⟨rho 48728, rho 48729⟩
    ⟨rho 48734, rho 48735⟩ ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48741, rho 48742⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4353 rho ∧ Seg52.relationRow4354 rho ∧ Seg52.relationRow4355 rho ∧ Seg52.relationRow4356 rho ∧ Seg52.relationRow4357 rho ∧ Seg52.relationRow4358 rho ∧ Seg52.relationRow4359 rho ∧ Seg52.relationRow4360 rho ∧ Seg52.relationRow4361 rho ∧ Seg52.relationRow4362 rho ∧ Seg52.relationRow4363 rho ∧ Seg52.relationRow4364 rho ∧ Seg52.relationRow4365 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365⟩

theorem seg52In1_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47673 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48741, rho 48742⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48741, rho 48742⟩
        ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48754, rho 48755⟩ := by
  obtain ⟨r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365⟩ := seg52In1_rows79 rho h
  unfold Seg52.relationRow4353 at r4353

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4353

  unfold Seg52.relationRow4354 at r4354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4354

  unfold Seg52.relationRow4355 at r4355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4355

  unfold Seg52.relationRow4356 at r4356

  unfold Seg52.relationRow4357 at r4357

  unfold Seg52.relationRow4358 at r4358

  unfold Seg52.relationRow4359 at r4359

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4359

  unfold Seg52.relationRow4360 at r4360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4360

  unfold Seg52.relationRow4361 at r4361

  unfold Seg52.relationRow4362 at r4362

  unfold Seg52.relationRow4363 at r4363

  unfold Seg52.relationRow4364 at r4364

  unfold Seg52.relationRow4365 at r4365

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX80 rho = seg52In1AccX79 rho + rho 48749 := by
    unfold seg52In1AccX80 seg52In1AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 79]

    ring

  have hnexty : seg52In1AccY80 rho = seg52In1AccY79 rho + rho 48750 := by
    unfold seg52In1AccY80 seg52In1AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 79]

    ring

  have ha0 : (rho 48741 + rho 48742) * (seg52In1AccX79 rho + seg52In1AccY79 rho) = rho 48743 := by
    unfold seg52In1AccX79 seg52In1AccY79
    linear_combination r4353
  have ha1 : rho 48742 * seg52In1AccX79 rho = rho 48744 := by
    unfold seg52In1AccX79
    linear_combination r4354
  have ha2 : rho 48741 * seg52In1AccY79 rho = rho 48745 := by
    unfold seg52In1AccY79
    linear_combination r4355
  have ha3 : 3021 * rho 48744 * rho 48745 = rho 48746 := by
    linear_combination r4356
  have ha4 : rho 48747 * (1 + rho 48746) = rho 48744 + rho 48745 := by
    linear_combination r4357
  have ha5 : rho 48748 * (1 - rho 48746) = rho 48743 - rho 48744 - rho 48745 := by
    linear_combination r4358
  have haddx :
      rho 48747 * (1 + 3021 * (rho 48742 * seg52In1AccX79 rho) * (rho 48741 * seg52In1AccY79 rho)) =
        rho 48742 * seg52In1AccX79 rho + rho 48741 * seg52In1AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48748 * (1 - 3021 * (rho 48742 * seg52In1AccX79 rho) * (rho 48741 * seg52In1AccY79 rho)) =
        (-1) * (rho 48742 * seg52In1AccX79 rho) - rho 48741 * seg52In1AccY79 rho +
          (seg52In1AccY79 rho - seg52In1AccX79 rho * (-1)) * (rho 48741 + rho 48742) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48748 * (1 - rho 48746) = rho 48743 - rho 48744 - rho 48745 := ha5
      _ = (-1) * rho 48744 - rho 48745 + (seg52In1AccY79 rho - seg52In1AccX79 rho * (-1)) *
          (rho 48741 + rho 48742) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX80 rho = seg52In1AccX79 rho - Bool.toZMod bit * (seg52In1AccX79 rho - rho 48747) := by
    have hd : rho 48749 = Bool.toZMod bit * (rho 48747 - seg52In1AccX79 rho) := by
      rw [← hbit]
      unfold seg52In1AccX79
      linear_combination -r4359
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY80 rho = seg52In1AccY79 rho - Bool.toZMod bit * (seg52In1AccY79 rho - rho 48748) := by
    have hd : rho 48750 = Bool.toZMod bit * (rho 48748 - seg52In1AccY79 rho) := by
      rw [← hbit]
      unfold seg52In1AccY79
      linear_combination -r4360
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48741 * rho 48742 = rho 48751 := by linear_combination r4361
  have hd1 : rho 48741 * rho 48741 = rho 48752 := by linear_combination r4362
  have hd2 : rho 48742 * rho 48742 = rho 48753 := by linear_combination r4363
  have hd3 : rho 48754 * (rho 48742 * rho 48742 + rho 48741 * rho 48741 * (-1)) =
      2 * (rho 48741 * rho 48742) := by
    rw [hd0, hd1, hd2]
    linear_combination r4364
  have hd4 : rho 48755 * (2 - (rho 48742 * rho 48742 + rho 48741 * rho 48741 * (-1))) =
      rho 48742 * rho 48742 - rho 48741 * rho 48741 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4365
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX79 rho, seg52In1AccY79 rho⟩ ⟨rho 48741, rho 48742⟩
    ⟨rho 48747, rho 48748⟩ ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48754, rho 48755⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4366 rho ∧ Seg52.relationRow4367 rho ∧ Seg52.relationRow4368 rho ∧ Seg52.relationRow4369 rho ∧ Seg52.relationRow4370 rho ∧ Seg52.relationRow4371 rho ∧ Seg52.relationRow4372 rho ∧ Seg52.relationRow4373 rho ∧ Seg52.relationRow4374 rho ∧ Seg52.relationRow4375 rho ∧ Seg52.relationRow4376 rho ∧ Seg52.relationRow4377 rho ∧ Seg52.relationRow4378 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378⟩

theorem seg52In1_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47674 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48754, rho 48755⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48754, rho 48755⟩
        ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48767, rho 48768⟩ := by
  obtain ⟨r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378⟩ := seg52In1_rows80 rho h
  unfold Seg52.relationRow4366 at r4366

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4366

  unfold Seg52.relationRow4367 at r4367

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4367

  unfold Seg52.relationRow4368 at r4368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4368

  unfold Seg52.relationRow4369 at r4369

  unfold Seg52.relationRow4370 at r4370

  unfold Seg52.relationRow4371 at r4371

  unfold Seg52.relationRow4372 at r4372

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4372

  unfold Seg52.relationRow4373 at r4373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4373

  unfold Seg52.relationRow4374 at r4374

  unfold Seg52.relationRow4375 at r4375

  unfold Seg52.relationRow4376 at r4376

  unfold Seg52.relationRow4377 at r4377

  unfold Seg52.relationRow4378 at r4378

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX81 rho = seg52In1AccX80 rho + rho 48762 := by
    unfold seg52In1AccX81 seg52In1AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 80]

    ring

  have hnexty : seg52In1AccY81 rho = seg52In1AccY80 rho + rho 48763 := by
    unfold seg52In1AccY81 seg52In1AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 80]

    ring

  have ha0 : (rho 48754 + rho 48755) * (seg52In1AccX80 rho + seg52In1AccY80 rho) = rho 48756 := by
    unfold seg52In1AccX80 seg52In1AccY80
    linear_combination r4366
  have ha1 : rho 48755 * seg52In1AccX80 rho = rho 48757 := by
    unfold seg52In1AccX80
    linear_combination r4367
  have ha2 : rho 48754 * seg52In1AccY80 rho = rho 48758 := by
    unfold seg52In1AccY80
    linear_combination r4368
  have ha3 : 3021 * rho 48757 * rho 48758 = rho 48759 := by
    linear_combination r4369
  have ha4 : rho 48760 * (1 + rho 48759) = rho 48757 + rho 48758 := by
    linear_combination r4370
  have ha5 : rho 48761 * (1 - rho 48759) = rho 48756 - rho 48757 - rho 48758 := by
    linear_combination r4371
  have haddx :
      rho 48760 * (1 + 3021 * (rho 48755 * seg52In1AccX80 rho) * (rho 48754 * seg52In1AccY80 rho)) =
        rho 48755 * seg52In1AccX80 rho + rho 48754 * seg52In1AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48761 * (1 - 3021 * (rho 48755 * seg52In1AccX80 rho) * (rho 48754 * seg52In1AccY80 rho)) =
        (-1) * (rho 48755 * seg52In1AccX80 rho) - rho 48754 * seg52In1AccY80 rho +
          (seg52In1AccY80 rho - seg52In1AccX80 rho * (-1)) * (rho 48754 + rho 48755) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48761 * (1 - rho 48759) = rho 48756 - rho 48757 - rho 48758 := ha5
      _ = (-1) * rho 48757 - rho 48758 + (seg52In1AccY80 rho - seg52In1AccX80 rho * (-1)) *
          (rho 48754 + rho 48755) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX81 rho = seg52In1AccX80 rho - Bool.toZMod bit * (seg52In1AccX80 rho - rho 48760) := by
    have hd : rho 48762 = Bool.toZMod bit * (rho 48760 - seg52In1AccX80 rho) := by
      rw [← hbit]
      unfold seg52In1AccX80
      linear_combination -r4372
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY81 rho = seg52In1AccY80 rho - Bool.toZMod bit * (seg52In1AccY80 rho - rho 48761) := by
    have hd : rho 48763 = Bool.toZMod bit * (rho 48761 - seg52In1AccY80 rho) := by
      rw [← hbit]
      unfold seg52In1AccY80
      linear_combination -r4373
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48754 * rho 48755 = rho 48764 := by linear_combination r4374
  have hd1 : rho 48754 * rho 48754 = rho 48765 := by linear_combination r4375
  have hd2 : rho 48755 * rho 48755 = rho 48766 := by linear_combination r4376
  have hd3 : rho 48767 * (rho 48755 * rho 48755 + rho 48754 * rho 48754 * (-1)) =
      2 * (rho 48754 * rho 48755) := by
    rw [hd0, hd1, hd2]
    linear_combination r4377
  have hd4 : rho 48768 * (2 - (rho 48755 * rho 48755 + rho 48754 * rho 48754 * (-1))) =
      rho 48755 * rho 48755 - rho 48754 * rho 48754 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4378
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX80 rho, seg52In1AccY80 rho⟩ ⟨rho 48754, rho 48755⟩
    ⟨rho 48760, rho 48761⟩ ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48767, rho 48768⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4379 rho ∧ Seg52.relationRow4380 rho ∧ Seg52.relationRow4381 rho ∧ Seg52.relationRow4382 rho ∧ Seg52.relationRow4383 rho ∧ Seg52.relationRow4384 rho ∧ Seg52.relationRow4385 rho ∧ Seg52.relationRow4386 rho ∧ Seg52.relationRow4387 rho ∧ Seg52.relationRow4388 rho ∧ Seg52.relationRow4389 rho ∧ Seg52.relationRow4390 rho ∧ Seg52.relationRow4391 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, _, _, _, _, _, _, _, _⟩

  exact ⟨r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391⟩

theorem seg52In1_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47675 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48767, rho 48768⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48767, rho 48768⟩
        ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48780, rho 48781⟩ := by
  obtain ⟨r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391⟩ := seg52In1_rows81 rho h
  unfold Seg52.relationRow4379 at r4379

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4379

  unfold Seg52.relationRow4380 at r4380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4380

  unfold Seg52.relationRow4381 at r4381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4381

  unfold Seg52.relationRow4382 at r4382

  unfold Seg52.relationRow4383 at r4383

  unfold Seg52.relationRow4384 at r4384

  unfold Seg52.relationRow4385 at r4385

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4385

  unfold Seg52.relationRow4386 at r4386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4386

  unfold Seg52.relationRow4387 at r4387

  unfold Seg52.relationRow4388 at r4388

  unfold Seg52.relationRow4389 at r4389

  unfold Seg52.relationRow4390 at r4390

  unfold Seg52.relationRow4391 at r4391

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX82 rho = seg52In1AccX81 rho + rho 48775 := by
    unfold seg52In1AccX82 seg52In1AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 81]

    ring

  have hnexty : seg52In1AccY82 rho = seg52In1AccY81 rho + rho 48776 := by
    unfold seg52In1AccY82 seg52In1AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 81]

    ring

  have ha0 : (rho 48767 + rho 48768) * (seg52In1AccX81 rho + seg52In1AccY81 rho) = rho 48769 := by
    unfold seg52In1AccX81 seg52In1AccY81
    linear_combination r4379
  have ha1 : rho 48768 * seg52In1AccX81 rho = rho 48770 := by
    unfold seg52In1AccX81
    linear_combination r4380
  have ha2 : rho 48767 * seg52In1AccY81 rho = rho 48771 := by
    unfold seg52In1AccY81
    linear_combination r4381
  have ha3 : 3021 * rho 48770 * rho 48771 = rho 48772 := by
    linear_combination r4382
  have ha4 : rho 48773 * (1 + rho 48772) = rho 48770 + rho 48771 := by
    linear_combination r4383
  have ha5 : rho 48774 * (1 - rho 48772) = rho 48769 - rho 48770 - rho 48771 := by
    linear_combination r4384
  have haddx :
      rho 48773 * (1 + 3021 * (rho 48768 * seg52In1AccX81 rho) * (rho 48767 * seg52In1AccY81 rho)) =
        rho 48768 * seg52In1AccX81 rho + rho 48767 * seg52In1AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48774 * (1 - 3021 * (rho 48768 * seg52In1AccX81 rho) * (rho 48767 * seg52In1AccY81 rho)) =
        (-1) * (rho 48768 * seg52In1AccX81 rho) - rho 48767 * seg52In1AccY81 rho +
          (seg52In1AccY81 rho - seg52In1AccX81 rho * (-1)) * (rho 48767 + rho 48768) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48774 * (1 - rho 48772) = rho 48769 - rho 48770 - rho 48771 := ha5
      _ = (-1) * rho 48770 - rho 48771 + (seg52In1AccY81 rho - seg52In1AccX81 rho * (-1)) *
          (rho 48767 + rho 48768) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX82 rho = seg52In1AccX81 rho - Bool.toZMod bit * (seg52In1AccX81 rho - rho 48773) := by
    have hd : rho 48775 = Bool.toZMod bit * (rho 48773 - seg52In1AccX81 rho) := by
      rw [← hbit]
      unfold seg52In1AccX81
      linear_combination -r4385
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY82 rho = seg52In1AccY81 rho - Bool.toZMod bit * (seg52In1AccY81 rho - rho 48774) := by
    have hd : rho 48776 = Bool.toZMod bit * (rho 48774 - seg52In1AccY81 rho) := by
      rw [← hbit]
      unfold seg52In1AccY81
      linear_combination -r4386
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48767 * rho 48768 = rho 48777 := by linear_combination r4387
  have hd1 : rho 48767 * rho 48767 = rho 48778 := by linear_combination r4388
  have hd2 : rho 48768 * rho 48768 = rho 48779 := by linear_combination r4389
  have hd3 : rho 48780 * (rho 48768 * rho 48768 + rho 48767 * rho 48767 * (-1)) =
      2 * (rho 48767 * rho 48768) := by
    rw [hd0, hd1, hd2]
    linear_combination r4390
  have hd4 : rho 48781 * (2 - (rho 48768 * rho 48768 + rho 48767 * rho 48767 * (-1))) =
      rho 48768 * rho 48768 - rho 48767 * rho 48767 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4391
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX81 rho, seg52In1AccY81 rho⟩ ⟨rho 48767, rho 48768⟩
    ⟨rho 48773, rho 48774⟩ ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48780, rho 48781⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4392 rho ∧ Seg52.relationRow4393 rho ∧ Seg52.relationRow4394 rho ∧ Seg52.relationRow4395 rho ∧ Seg52.relationRow4396 rho ∧ Seg52.relationRow4397 rho ∧ Seg52.relationRow4398 rho ∧ Seg52.relationRow4399 rho ∧ Seg52.relationRow4400 rho ∧ Seg52.relationRow4401 rho ∧ Seg52.relationRow4402 rho ∧ Seg52.relationRow4403 rho ∧ Seg52.relationRow4404 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p54, p55, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404⟩

theorem seg52In1_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47676 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48780, rho 48781⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48780, rho 48781⟩
        ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48793, rho 48794⟩ := by
  obtain ⟨r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404⟩ := seg52In1_rows82 rho h
  unfold Seg52.relationRow4392 at r4392

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4392

  unfold Seg52.relationRow4393 at r4393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4393

  unfold Seg52.relationRow4394 at r4394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4394

  unfold Seg52.relationRow4395 at r4395

  unfold Seg52.relationRow4396 at r4396

  unfold Seg52.relationRow4397 at r4397

  unfold Seg52.relationRow4398 at r4398

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4398

  unfold Seg52.relationRow4399 at r4399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4399

  unfold Seg52.relationRow4400 at r4400

  unfold Seg52.relationRow4401 at r4401

  unfold Seg52.relationRow4402 at r4402

  unfold Seg52.relationRow4403 at r4403

  unfold Seg52.relationRow4404 at r4404

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX83 rho = seg52In1AccX82 rho + rho 48788 := by
    unfold seg52In1AccX83 seg52In1AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 82]

    ring

  have hnexty : seg52In1AccY83 rho = seg52In1AccY82 rho + rho 48789 := by
    unfold seg52In1AccY83 seg52In1AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 82]

    ring

  have ha0 : (rho 48780 + rho 48781) * (seg52In1AccX82 rho + seg52In1AccY82 rho) = rho 48782 := by
    unfold seg52In1AccX82 seg52In1AccY82
    linear_combination r4392
  have ha1 : rho 48781 * seg52In1AccX82 rho = rho 48783 := by
    unfold seg52In1AccX82
    linear_combination r4393
  have ha2 : rho 48780 * seg52In1AccY82 rho = rho 48784 := by
    unfold seg52In1AccY82
    linear_combination r4394
  have ha3 : 3021 * rho 48783 * rho 48784 = rho 48785 := by
    linear_combination r4395
  have ha4 : rho 48786 * (1 + rho 48785) = rho 48783 + rho 48784 := by
    linear_combination r4396
  have ha5 : rho 48787 * (1 - rho 48785) = rho 48782 - rho 48783 - rho 48784 := by
    linear_combination r4397
  have haddx :
      rho 48786 * (1 + 3021 * (rho 48781 * seg52In1AccX82 rho) * (rho 48780 * seg52In1AccY82 rho)) =
        rho 48781 * seg52In1AccX82 rho + rho 48780 * seg52In1AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48787 * (1 - 3021 * (rho 48781 * seg52In1AccX82 rho) * (rho 48780 * seg52In1AccY82 rho)) =
        (-1) * (rho 48781 * seg52In1AccX82 rho) - rho 48780 * seg52In1AccY82 rho +
          (seg52In1AccY82 rho - seg52In1AccX82 rho * (-1)) * (rho 48780 + rho 48781) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48787 * (1 - rho 48785) = rho 48782 - rho 48783 - rho 48784 := ha5
      _ = (-1) * rho 48783 - rho 48784 + (seg52In1AccY82 rho - seg52In1AccX82 rho * (-1)) *
          (rho 48780 + rho 48781) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX83 rho = seg52In1AccX82 rho - Bool.toZMod bit * (seg52In1AccX82 rho - rho 48786) := by
    have hd : rho 48788 = Bool.toZMod bit * (rho 48786 - seg52In1AccX82 rho) := by
      rw [← hbit]
      unfold seg52In1AccX82
      linear_combination -r4398
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY83 rho = seg52In1AccY82 rho - Bool.toZMod bit * (seg52In1AccY82 rho - rho 48787) := by
    have hd : rho 48789 = Bool.toZMod bit * (rho 48787 - seg52In1AccY82 rho) := by
      rw [← hbit]
      unfold seg52In1AccY82
      linear_combination -r4399
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48780 * rho 48781 = rho 48790 := by linear_combination r4400
  have hd1 : rho 48780 * rho 48780 = rho 48791 := by linear_combination r4401
  have hd2 : rho 48781 * rho 48781 = rho 48792 := by linear_combination r4402
  have hd3 : rho 48793 * (rho 48781 * rho 48781 + rho 48780 * rho 48780 * (-1)) =
      2 * (rho 48780 * rho 48781) := by
    rw [hd0, hd1, hd2]
    linear_combination r4403
  have hd4 : rho 48794 * (2 - (rho 48781 * rho 48781 + rho 48780 * rho 48780 * (-1))) =
      rho 48781 * rho 48781 - rho 48780 * rho 48780 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4404
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX82 rho, seg52In1AccY82 rho⟩ ⟨rho 48780, rho 48781⟩
    ⟨rho 48786, rho 48787⟩ ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48793, rho 48794⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4405 rho ∧ Seg52.relationRow4406 rho ∧ Seg52.relationRow4407 rho ∧ Seg52.relationRow4408 rho ∧ Seg52.relationRow4409 rho ∧ Seg52.relationRow4410 rho ∧ Seg52.relationRow4411 rho ∧ Seg52.relationRow4412 rho ∧ Seg52.relationRow4413 rho ∧ Seg52.relationRow4414 rho ∧ Seg52.relationRow4415 rho ∧ Seg52.relationRow4416 rho ∧ Seg52.relationRow4417 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p55, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨_, _, _, _, _, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417⟩

theorem seg52In1_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47677 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48793, rho 48794⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48793, rho 48794⟩
        ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48806, rho 48807⟩ := by
  obtain ⟨r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417⟩ := seg52In1_rows83 rho h
  unfold Seg52.relationRow4405 at r4405

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4405

  unfold Seg52.relationRow4406 at r4406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4406

  unfold Seg52.relationRow4407 at r4407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4407

  unfold Seg52.relationRow4408 at r4408

  unfold Seg52.relationRow4409 at r4409

  unfold Seg52.relationRow4410 at r4410

  unfold Seg52.relationRow4411 at r4411

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4411

  unfold Seg52.relationRow4412 at r4412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4412

  unfold Seg52.relationRow4413 at r4413

  unfold Seg52.relationRow4414 at r4414

  unfold Seg52.relationRow4415 at r4415

  unfold Seg52.relationRow4416 at r4416

  unfold Seg52.relationRow4417 at r4417

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX84 rho = seg52In1AccX83 rho + rho 48801 := by
    unfold seg52In1AccX84 seg52In1AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 83]

    ring

  have hnexty : seg52In1AccY84 rho = seg52In1AccY83 rho + rho 48802 := by
    unfold seg52In1AccY84 seg52In1AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 83]

    ring

  have ha0 : (rho 48793 + rho 48794) * (seg52In1AccX83 rho + seg52In1AccY83 rho) = rho 48795 := by
    unfold seg52In1AccX83 seg52In1AccY83
    linear_combination r4405
  have ha1 : rho 48794 * seg52In1AccX83 rho = rho 48796 := by
    unfold seg52In1AccX83
    linear_combination r4406
  have ha2 : rho 48793 * seg52In1AccY83 rho = rho 48797 := by
    unfold seg52In1AccY83
    linear_combination r4407
  have ha3 : 3021 * rho 48796 * rho 48797 = rho 48798 := by
    linear_combination r4408
  have ha4 : rho 48799 * (1 + rho 48798) = rho 48796 + rho 48797 := by
    linear_combination r4409
  have ha5 : rho 48800 * (1 - rho 48798) = rho 48795 - rho 48796 - rho 48797 := by
    linear_combination r4410
  have haddx :
      rho 48799 * (1 + 3021 * (rho 48794 * seg52In1AccX83 rho) * (rho 48793 * seg52In1AccY83 rho)) =
        rho 48794 * seg52In1AccX83 rho + rho 48793 * seg52In1AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48800 * (1 - 3021 * (rho 48794 * seg52In1AccX83 rho) * (rho 48793 * seg52In1AccY83 rho)) =
        (-1) * (rho 48794 * seg52In1AccX83 rho) - rho 48793 * seg52In1AccY83 rho +
          (seg52In1AccY83 rho - seg52In1AccX83 rho * (-1)) * (rho 48793 + rho 48794) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48800 * (1 - rho 48798) = rho 48795 - rho 48796 - rho 48797 := ha5
      _ = (-1) * rho 48796 - rho 48797 + (seg52In1AccY83 rho - seg52In1AccX83 rho * (-1)) *
          (rho 48793 + rho 48794) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX84 rho = seg52In1AccX83 rho - Bool.toZMod bit * (seg52In1AccX83 rho - rho 48799) := by
    have hd : rho 48801 = Bool.toZMod bit * (rho 48799 - seg52In1AccX83 rho) := by
      rw [← hbit]
      unfold seg52In1AccX83
      linear_combination -r4411
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY84 rho = seg52In1AccY83 rho - Bool.toZMod bit * (seg52In1AccY83 rho - rho 48800) := by
    have hd : rho 48802 = Bool.toZMod bit * (rho 48800 - seg52In1AccY83 rho) := by
      rw [← hbit]
      unfold seg52In1AccY83
      linear_combination -r4412
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48793 * rho 48794 = rho 48803 := by linear_combination r4413
  have hd1 : rho 48793 * rho 48793 = rho 48804 := by linear_combination r4414
  have hd2 : rho 48794 * rho 48794 = rho 48805 := by linear_combination r4415
  have hd3 : rho 48806 * (rho 48794 * rho 48794 + rho 48793 * rho 48793 * (-1)) =
      2 * (rho 48793 * rho 48794) := by
    rw [hd0, hd1, hd2]
    linear_combination r4416
  have hd4 : rho 48807 * (2 - (rho 48794 * rho 48794 + rho 48793 * rho 48793 * (-1))) =
      rho 48794 * rho 48794 - rho 48793 * rho 48793 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4417
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX83 rho, seg52In1AccY83 rho⟩ ⟨rho 48793, rho 48794⟩
    ⟨rho 48799, rho 48800⟩ ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48806, rho 48807⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4418 rho ∧ Seg52.relationRow4419 rho ∧ Seg52.relationRow4420 rho ∧ Seg52.relationRow4421 rho ∧ Seg52.relationRow4422 rho ∧ Seg52.relationRow4423 rho ∧ Seg52.relationRow4424 rho ∧ Seg52.relationRow4425 rho ∧ Seg52.relationRow4426 rho ∧ Seg52.relationRow4427 rho ∧ Seg52.relationRow4428 rho ∧ Seg52.relationRow4429 rho ∧ Seg52.relationRow4430 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p55, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430⟩

theorem seg52In1_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47678 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48806, rho 48807⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48806, rho 48807⟩
        ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48819, rho 48820⟩ := by
  obtain ⟨r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430⟩ := seg52In1_rows84 rho h
  unfold Seg52.relationRow4418 at r4418

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4418

  unfold Seg52.relationRow4419 at r4419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4419

  unfold Seg52.relationRow4420 at r4420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4420

  unfold Seg52.relationRow4421 at r4421

  unfold Seg52.relationRow4422 at r4422

  unfold Seg52.relationRow4423 at r4423

  unfold Seg52.relationRow4424 at r4424

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4424

  unfold Seg52.relationRow4425 at r4425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4425

  unfold Seg52.relationRow4426 at r4426

  unfold Seg52.relationRow4427 at r4427

  unfold Seg52.relationRow4428 at r4428

  unfold Seg52.relationRow4429 at r4429

  unfold Seg52.relationRow4430 at r4430

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX85 rho = seg52In1AccX84 rho + rho 48814 := by
    unfold seg52In1AccX85 seg52In1AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 84]

    ring

  have hnexty : seg52In1AccY85 rho = seg52In1AccY84 rho + rho 48815 := by
    unfold seg52In1AccY85 seg52In1AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 84]

    ring

  have ha0 : (rho 48806 + rho 48807) * (seg52In1AccX84 rho + seg52In1AccY84 rho) = rho 48808 := by
    unfold seg52In1AccX84 seg52In1AccY84
    linear_combination r4418
  have ha1 : rho 48807 * seg52In1AccX84 rho = rho 48809 := by
    unfold seg52In1AccX84
    linear_combination r4419
  have ha2 : rho 48806 * seg52In1AccY84 rho = rho 48810 := by
    unfold seg52In1AccY84
    linear_combination r4420
  have ha3 : 3021 * rho 48809 * rho 48810 = rho 48811 := by
    linear_combination r4421
  have ha4 : rho 48812 * (1 + rho 48811) = rho 48809 + rho 48810 := by
    linear_combination r4422
  have ha5 : rho 48813 * (1 - rho 48811) = rho 48808 - rho 48809 - rho 48810 := by
    linear_combination r4423
  have haddx :
      rho 48812 * (1 + 3021 * (rho 48807 * seg52In1AccX84 rho) * (rho 48806 * seg52In1AccY84 rho)) =
        rho 48807 * seg52In1AccX84 rho + rho 48806 * seg52In1AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48813 * (1 - 3021 * (rho 48807 * seg52In1AccX84 rho) * (rho 48806 * seg52In1AccY84 rho)) =
        (-1) * (rho 48807 * seg52In1AccX84 rho) - rho 48806 * seg52In1AccY84 rho +
          (seg52In1AccY84 rho - seg52In1AccX84 rho * (-1)) * (rho 48806 + rho 48807) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48813 * (1 - rho 48811) = rho 48808 - rho 48809 - rho 48810 := ha5
      _ = (-1) * rho 48809 - rho 48810 + (seg52In1AccY84 rho - seg52In1AccX84 rho * (-1)) *
          (rho 48806 + rho 48807) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX85 rho = seg52In1AccX84 rho - Bool.toZMod bit * (seg52In1AccX84 rho - rho 48812) := by
    have hd : rho 48814 = Bool.toZMod bit * (rho 48812 - seg52In1AccX84 rho) := by
      rw [← hbit]
      unfold seg52In1AccX84
      linear_combination -r4424
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY85 rho = seg52In1AccY84 rho - Bool.toZMod bit * (seg52In1AccY84 rho - rho 48813) := by
    have hd : rho 48815 = Bool.toZMod bit * (rho 48813 - seg52In1AccY84 rho) := by
      rw [← hbit]
      unfold seg52In1AccY84
      linear_combination -r4425
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48806 * rho 48807 = rho 48816 := by linear_combination r4426
  have hd1 : rho 48806 * rho 48806 = rho 48817 := by linear_combination r4427
  have hd2 : rho 48807 * rho 48807 = rho 48818 := by linear_combination r4428
  have hd3 : rho 48819 * (rho 48807 * rho 48807 + rho 48806 * rho 48806 * (-1)) =
      2 * (rho 48806 * rho 48807) := by
    rw [hd0, hd1, hd2]
    linear_combination r4429
  have hd4 : rho 48820 * (2 - (rho 48807 * rho 48807 + rho 48806 * rho 48806 * (-1))) =
      rho 48807 * rho 48807 - rho 48806 * rho 48806 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4430
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX84 rho, seg52In1AccY84 rho⟩ ⟨rho 48806, rho 48807⟩
    ⟨rho 48812, rho 48813⟩ ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48819, rho 48820⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4431 rho ∧ Seg52.relationRow4432 rho ∧ Seg52.relationRow4433 rho ∧ Seg52.relationRow4434 rho ∧ Seg52.relationRow4435 rho ∧ Seg52.relationRow4436 rho ∧ Seg52.relationRow4437 rho ∧ Seg52.relationRow4438 rho ∧ Seg52.relationRow4439 rho ∧ Seg52.relationRow4440 rho ∧ Seg52.relationRow4441 rho ∧ Seg52.relationRow4442 rho ∧ Seg52.relationRow4443 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p55, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443⟩

theorem seg52In1_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47679 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48819, rho 48820⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48819, rho 48820⟩
        ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48832, rho 48833⟩ := by
  obtain ⟨r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443⟩ := seg52In1_rows85 rho h
  unfold Seg52.relationRow4431 at r4431

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4431

  unfold Seg52.relationRow4432 at r4432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4432

  unfold Seg52.relationRow4433 at r4433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4433

  unfold Seg52.relationRow4434 at r4434

  unfold Seg52.relationRow4435 at r4435

  unfold Seg52.relationRow4436 at r4436

  unfold Seg52.relationRow4437 at r4437

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4437

  unfold Seg52.relationRow4438 at r4438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4438

  unfold Seg52.relationRow4439 at r4439

  unfold Seg52.relationRow4440 at r4440

  unfold Seg52.relationRow4441 at r4441

  unfold Seg52.relationRow4442 at r4442

  unfold Seg52.relationRow4443 at r4443

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX86 rho = seg52In1AccX85 rho + rho 48827 := by
    unfold seg52In1AccX86 seg52In1AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 85]

    ring

  have hnexty : seg52In1AccY86 rho = seg52In1AccY85 rho + rho 48828 := by
    unfold seg52In1AccY86 seg52In1AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 85]

    ring

  have ha0 : (rho 48819 + rho 48820) * (seg52In1AccX85 rho + seg52In1AccY85 rho) = rho 48821 := by
    unfold seg52In1AccX85 seg52In1AccY85
    linear_combination r4431
  have ha1 : rho 48820 * seg52In1AccX85 rho = rho 48822 := by
    unfold seg52In1AccX85
    linear_combination r4432
  have ha2 : rho 48819 * seg52In1AccY85 rho = rho 48823 := by
    unfold seg52In1AccY85
    linear_combination r4433
  have ha3 : 3021 * rho 48822 * rho 48823 = rho 48824 := by
    linear_combination r4434
  have ha4 : rho 48825 * (1 + rho 48824) = rho 48822 + rho 48823 := by
    linear_combination r4435
  have ha5 : rho 48826 * (1 - rho 48824) = rho 48821 - rho 48822 - rho 48823 := by
    linear_combination r4436
  have haddx :
      rho 48825 * (1 + 3021 * (rho 48820 * seg52In1AccX85 rho) * (rho 48819 * seg52In1AccY85 rho)) =
        rho 48820 * seg52In1AccX85 rho + rho 48819 * seg52In1AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48826 * (1 - 3021 * (rho 48820 * seg52In1AccX85 rho) * (rho 48819 * seg52In1AccY85 rho)) =
        (-1) * (rho 48820 * seg52In1AccX85 rho) - rho 48819 * seg52In1AccY85 rho +
          (seg52In1AccY85 rho - seg52In1AccX85 rho * (-1)) * (rho 48819 + rho 48820) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48826 * (1 - rho 48824) = rho 48821 - rho 48822 - rho 48823 := ha5
      _ = (-1) * rho 48822 - rho 48823 + (seg52In1AccY85 rho - seg52In1AccX85 rho * (-1)) *
          (rho 48819 + rho 48820) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX86 rho = seg52In1AccX85 rho - Bool.toZMod bit * (seg52In1AccX85 rho - rho 48825) := by
    have hd : rho 48827 = Bool.toZMod bit * (rho 48825 - seg52In1AccX85 rho) := by
      rw [← hbit]
      unfold seg52In1AccX85
      linear_combination -r4437
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY86 rho = seg52In1AccY85 rho - Bool.toZMod bit * (seg52In1AccY85 rho - rho 48826) := by
    have hd : rho 48828 = Bool.toZMod bit * (rho 48826 - seg52In1AccY85 rho) := by
      rw [← hbit]
      unfold seg52In1AccY85
      linear_combination -r4438
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48819 * rho 48820 = rho 48829 := by linear_combination r4439
  have hd1 : rho 48819 * rho 48819 = rho 48830 := by linear_combination r4440
  have hd2 : rho 48820 * rho 48820 = rho 48831 := by linear_combination r4441
  have hd3 : rho 48832 * (rho 48820 * rho 48820 + rho 48819 * rho 48819 * (-1)) =
      2 * (rho 48819 * rho 48820) := by
    rw [hd0, hd1, hd2]
    linear_combination r4442
  have hd4 : rho 48833 * (2 - (rho 48820 * rho 48820 + rho 48819 * rho 48819 * (-1))) =
      rho 48820 * rho 48820 - rho 48819 * rho 48819 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4443
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX85 rho, seg52In1AccY85 rho⟩ ⟨rho 48819, rho 48820⟩
    ⟨rho 48825, rho 48826⟩ ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48832, rho 48833⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4444 rho ∧ Seg52.relationRow4445 rho ∧ Seg52.relationRow4446 rho ∧ Seg52.relationRow4447 rho ∧ Seg52.relationRow4448 rho ∧ Seg52.relationRow4449 rho ∧ Seg52.relationRow4450 rho ∧ Seg52.relationRow4451 rho ∧ Seg52.relationRow4452 rho ∧ Seg52.relationRow4453 rho ∧ Seg52.relationRow4454 rho ∧ Seg52.relationRow4455 rho ∧ Seg52.relationRow4456 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p55, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456⟩

theorem seg52In1_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47680 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48832, rho 48833⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48832, rho 48833⟩
        ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48845, rho 48846⟩ := by
  obtain ⟨r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456⟩ := seg52In1_rows86 rho h
  unfold Seg52.relationRow4444 at r4444

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4444

  unfold Seg52.relationRow4445 at r4445

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4445

  unfold Seg52.relationRow4446 at r4446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4446

  unfold Seg52.relationRow4447 at r4447

  unfold Seg52.relationRow4448 at r4448

  unfold Seg52.relationRow4449 at r4449

  unfold Seg52.relationRow4450 at r4450

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4450

  unfold Seg52.relationRow4451 at r4451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4451

  unfold Seg52.relationRow4452 at r4452

  unfold Seg52.relationRow4453 at r4453

  unfold Seg52.relationRow4454 at r4454

  unfold Seg52.relationRow4455 at r4455

  unfold Seg52.relationRow4456 at r4456

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX87 rho = seg52In1AccX86 rho + rho 48840 := by
    unfold seg52In1AccX87 seg52In1AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 86]

    ring

  have hnexty : seg52In1AccY87 rho = seg52In1AccY86 rho + rho 48841 := by
    unfold seg52In1AccY87 seg52In1AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 86]

    ring

  have ha0 : (rho 48832 + rho 48833) * (seg52In1AccX86 rho + seg52In1AccY86 rho) = rho 48834 := by
    unfold seg52In1AccX86 seg52In1AccY86
    linear_combination r4444
  have ha1 : rho 48833 * seg52In1AccX86 rho = rho 48835 := by
    unfold seg52In1AccX86
    linear_combination r4445
  have ha2 : rho 48832 * seg52In1AccY86 rho = rho 48836 := by
    unfold seg52In1AccY86
    linear_combination r4446
  have ha3 : 3021 * rho 48835 * rho 48836 = rho 48837 := by
    linear_combination r4447
  have ha4 : rho 48838 * (1 + rho 48837) = rho 48835 + rho 48836 := by
    linear_combination r4448
  have ha5 : rho 48839 * (1 - rho 48837) = rho 48834 - rho 48835 - rho 48836 := by
    linear_combination r4449
  have haddx :
      rho 48838 * (1 + 3021 * (rho 48833 * seg52In1AccX86 rho) * (rho 48832 * seg52In1AccY86 rho)) =
        rho 48833 * seg52In1AccX86 rho + rho 48832 * seg52In1AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48839 * (1 - 3021 * (rho 48833 * seg52In1AccX86 rho) * (rho 48832 * seg52In1AccY86 rho)) =
        (-1) * (rho 48833 * seg52In1AccX86 rho) - rho 48832 * seg52In1AccY86 rho +
          (seg52In1AccY86 rho - seg52In1AccX86 rho * (-1)) * (rho 48832 + rho 48833) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48839 * (1 - rho 48837) = rho 48834 - rho 48835 - rho 48836 := ha5
      _ = (-1) * rho 48835 - rho 48836 + (seg52In1AccY86 rho - seg52In1AccX86 rho * (-1)) *
          (rho 48832 + rho 48833) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX87 rho = seg52In1AccX86 rho - Bool.toZMod bit * (seg52In1AccX86 rho - rho 48838) := by
    have hd : rho 48840 = Bool.toZMod bit * (rho 48838 - seg52In1AccX86 rho) := by
      rw [← hbit]
      unfold seg52In1AccX86
      linear_combination -r4450
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY87 rho = seg52In1AccY86 rho - Bool.toZMod bit * (seg52In1AccY86 rho - rho 48839) := by
    have hd : rho 48841 = Bool.toZMod bit * (rho 48839 - seg52In1AccY86 rho) := by
      rw [← hbit]
      unfold seg52In1AccY86
      linear_combination -r4451
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48832 * rho 48833 = rho 48842 := by linear_combination r4452
  have hd1 : rho 48832 * rho 48832 = rho 48843 := by linear_combination r4453
  have hd2 : rho 48833 * rho 48833 = rho 48844 := by linear_combination r4454
  have hd3 : rho 48845 * (rho 48833 * rho 48833 + rho 48832 * rho 48832 * (-1)) =
      2 * (rho 48832 * rho 48833) := by
    rw [hd0, hd1, hd2]
    linear_combination r4455
  have hd4 : rho 48846 * (2 - (rho 48833 * rho 48833 + rho 48832 * rho 48832 * (-1))) =
      rho 48833 * rho 48833 - rho 48832 * rho 48832 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4456
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX86 rho, seg52In1AccY86 rho⟩ ⟨rho 48832, rho 48833⟩
    ⟨rho 48838, rho 48839⟩ ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48845, rho 48846⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4457 rho ∧ Seg52.relationRow4458 rho ∧ Seg52.relationRow4459 rho ∧ Seg52.relationRow4460 rho ∧ Seg52.relationRow4461 rho ∧ Seg52.relationRow4462 rho ∧ Seg52.relationRow4463 rho ∧ Seg52.relationRow4464 rho ∧ Seg52.relationRow4465 rho ∧ Seg52.relationRow4466 rho ∧ Seg52.relationRow4467 rho ∧ Seg52.relationRow4468 rho ∧ Seg52.relationRow4469 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p55, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart55 at p55

  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469⟩

theorem seg52In1_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47681 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48845, rho 48846⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48845, rho 48846⟩
        ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48858, rho 48859⟩ := by
  obtain ⟨r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469⟩ := seg52In1_rows87 rho h
  unfold Seg52.relationRow4457 at r4457

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4457

  unfold Seg52.relationRow4458 at r4458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4458

  unfold Seg52.relationRow4459 at r4459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4459

  unfold Seg52.relationRow4460 at r4460

  unfold Seg52.relationRow4461 at r4461

  unfold Seg52.relationRow4462 at r4462

  unfold Seg52.relationRow4463 at r4463

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4463

  unfold Seg52.relationRow4464 at r4464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4464

  unfold Seg52.relationRow4465 at r4465

  unfold Seg52.relationRow4466 at r4466

  unfold Seg52.relationRow4467 at r4467

  unfold Seg52.relationRow4468 at r4468

  unfold Seg52.relationRow4469 at r4469

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX88 rho = seg52In1AccX87 rho + rho 48853 := by
    unfold seg52In1AccX88 seg52In1AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 87]

    ring

  have hnexty : seg52In1AccY88 rho = seg52In1AccY87 rho + rho 48854 := by
    unfold seg52In1AccY88 seg52In1AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 87]

    ring

  have ha0 : (rho 48845 + rho 48846) * (seg52In1AccX87 rho + seg52In1AccY87 rho) = rho 48847 := by
    unfold seg52In1AccX87 seg52In1AccY87
    linear_combination r4457
  have ha1 : rho 48846 * seg52In1AccX87 rho = rho 48848 := by
    unfold seg52In1AccX87
    linear_combination r4458
  have ha2 : rho 48845 * seg52In1AccY87 rho = rho 48849 := by
    unfold seg52In1AccY87
    linear_combination r4459
  have ha3 : 3021 * rho 48848 * rho 48849 = rho 48850 := by
    linear_combination r4460
  have ha4 : rho 48851 * (1 + rho 48850) = rho 48848 + rho 48849 := by
    linear_combination r4461
  have ha5 : rho 48852 * (1 - rho 48850) = rho 48847 - rho 48848 - rho 48849 := by
    linear_combination r4462
  have haddx :
      rho 48851 * (1 + 3021 * (rho 48846 * seg52In1AccX87 rho) * (rho 48845 * seg52In1AccY87 rho)) =
        rho 48846 * seg52In1AccX87 rho + rho 48845 * seg52In1AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48852 * (1 - 3021 * (rho 48846 * seg52In1AccX87 rho) * (rho 48845 * seg52In1AccY87 rho)) =
        (-1) * (rho 48846 * seg52In1AccX87 rho) - rho 48845 * seg52In1AccY87 rho +
          (seg52In1AccY87 rho - seg52In1AccX87 rho * (-1)) * (rho 48845 + rho 48846) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48852 * (1 - rho 48850) = rho 48847 - rho 48848 - rho 48849 := ha5
      _ = (-1) * rho 48848 - rho 48849 + (seg52In1AccY87 rho - seg52In1AccX87 rho * (-1)) *
          (rho 48845 + rho 48846) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX88 rho = seg52In1AccX87 rho - Bool.toZMod bit * (seg52In1AccX87 rho - rho 48851) := by
    have hd : rho 48853 = Bool.toZMod bit * (rho 48851 - seg52In1AccX87 rho) := by
      rw [← hbit]
      unfold seg52In1AccX87
      linear_combination -r4463
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY88 rho = seg52In1AccY87 rho - Bool.toZMod bit * (seg52In1AccY87 rho - rho 48852) := by
    have hd : rho 48854 = Bool.toZMod bit * (rho 48852 - seg52In1AccY87 rho) := by
      rw [← hbit]
      unfold seg52In1AccY87
      linear_combination -r4464
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48845 * rho 48846 = rho 48855 := by linear_combination r4465
  have hd1 : rho 48845 * rho 48845 = rho 48856 := by linear_combination r4466
  have hd2 : rho 48846 * rho 48846 = rho 48857 := by linear_combination r4467
  have hd3 : rho 48858 * (rho 48846 * rho 48846 + rho 48845 * rho 48845 * (-1)) =
      2 * (rho 48845 * rho 48846) := by
    rw [hd0, hd1, hd2]
    linear_combination r4468
  have hd4 : rho 48859 * (2 - (rho 48846 * rho 48846 + rho 48845 * rho 48845 * (-1))) =
      rho 48846 * rho 48846 - rho 48845 * rho 48845 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4469
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX87 rho, seg52In1AccY87 rho⟩ ⟨rho 48845, rho 48846⟩
    ⟨rho 48851, rho 48852⟩ ⟨seg52In1AccX88 rho, seg52In1AccY88 rho⟩ ⟨rho 48858, rho 48859⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg52In1_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg52In1_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg52In1_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg52In1_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg52In1_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg52In1_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg52In1_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg52In1_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg52In1_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg52In1_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
