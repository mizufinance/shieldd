import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5337 rho ∧ Seg48.relationRow5338 rho ∧ Seg48.relationRow5339 rho ∧ Seg48.relationRow5340 rho ∧ Seg48.relationRow5341 rho ∧ Seg48.relationRow5342 rho ∧ Seg48.relationRow5343 rho ∧ Seg48.relationRow5344 rho ∧ Seg48.relationRow5345 rho ∧ Seg48.relationRow5346 rho ∧ Seg48.relationRow5347 rho ∧ Seg48.relationRow5348 rho ∧ Seg48.relationRow5349 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349⟩

theorem seg48Out0_rung66 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX66 rho, seg48Out0AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38092, rho 38093⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX66 rho, seg48Out0AccY66 rho⟩ ⟨rho 38092, rho 38093⟩
        ⟨seg48Out0AccX67 rho, seg48Out0AccY67 rho⟩ ⟨rho 38105, rho 38106⟩ := by
  obtain ⟨r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349⟩ := seg48Out0_rows66 rho h
  unfold Seg48.relationRow5337 at r5337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337

  unfold Seg48.relationRow5338 at r5338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338

  unfold Seg48.relationRow5339 at r5339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5339

  unfold Seg48.relationRow5340 at r5340

  unfold Seg48.relationRow5341 at r5341

  unfold Seg48.relationRow5342 at r5342

  unfold Seg48.relationRow5343 at r5343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343

  unfold Seg48.relationRow5344 at r5344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5344

  unfold Seg48.relationRow5345 at r5345

  unfold Seg48.relationRow5346 at r5346

  unfold Seg48.relationRow5347 at r5347

  unfold Seg48.relationRow5348 at r5348

  unfold Seg48.relationRow5349 at r5349

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX67 rho = seg48Out0AccX66 rho + rho 38100 := by
    unfold seg48Out0AccX67 seg48Out0AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 66]

    ring

  have hnexty : seg48Out0AccY67 rho = seg48Out0AccY66 rho + rho 38101 := by
    unfold seg48Out0AccY67 seg48Out0AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 66]

    ring

  have ha0 : (rho 38092 + rho 38093) * (seg48Out0AccX66 rho + seg48Out0AccY66 rho) = rho 38094 := by
    unfold seg48Out0AccX66 seg48Out0AccY66
    linear_combination r5337
  have ha1 : rho 38093 * seg48Out0AccX66 rho = rho 38095 := by
    unfold seg48Out0AccX66
    linear_combination r5338
  have ha2 : rho 38092 * seg48Out0AccY66 rho = rho 38096 := by
    unfold seg48Out0AccY66
    linear_combination r5339
  have ha3 : 3021 * rho 38095 * rho 38096 = rho 38097 := by
    linear_combination r5340
  have ha4 : rho 38098 * (1 + rho 38097) = rho 38095 + rho 38096 := by
    linear_combination r5341
  have ha5 : rho 38099 * (1 - rho 38097) = rho 38094 - rho 38095 - rho 38096 := by
    linear_combination r5342
  have haddx :
      rho 38098 * (1 + 3021 * (rho 38093 * seg48Out0AccX66 rho) * (rho 38092 * seg48Out0AccY66 rho)) =
        rho 38093 * seg48Out0AccX66 rho + rho 38092 * seg48Out0AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38099 * (1 - 3021 * (rho 38093 * seg48Out0AccX66 rho) * (rho 38092 * seg48Out0AccY66 rho)) =
        (-1) * (rho 38093 * seg48Out0AccX66 rho) - rho 38092 * seg48Out0AccY66 rho +
          (seg48Out0AccY66 rho - seg48Out0AccX66 rho * (-1)) * (rho 38092 + rho 38093) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38099 * (1 - rho 38097) = rho 38094 - rho 38095 - rho 38096 := ha5
      _ = (-1) * rho 38095 - rho 38096 + (seg48Out0AccY66 rho - seg48Out0AccX66 rho * (-1)) *
          (rho 38092 + rho 38093) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX67 rho = seg48Out0AccX66 rho - Bool.toZMod bit * (seg48Out0AccX66 rho - rho 38098) := by
    have hd : rho 38100 = Bool.toZMod bit * (rho 38098 - seg48Out0AccX66 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX66
      linear_combination -r5343
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY67 rho = seg48Out0AccY66 rho - Bool.toZMod bit * (seg48Out0AccY66 rho - rho 38099) := by
    have hd : rho 38101 = Bool.toZMod bit * (rho 38099 - seg48Out0AccY66 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY66
      linear_combination -r5344
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38092 * rho 38093 = rho 38102 := by linear_combination r5345
  have hd1 : rho 38092 * rho 38092 = rho 38103 := by linear_combination r5346
  have hd2 : rho 38093 * rho 38093 = rho 38104 := by linear_combination r5347
  have hd3 : rho 38105 * (rho 38093 * rho 38093 + rho 38092 * rho 38092 * (-1)) =
      2 * (rho 38092 * rho 38093) := by
    rw [hd0, hd1, hd2]
    linear_combination r5348
  have hd4 : rho 38106 * (2 - (rho 38093 * rho 38093 + rho 38092 * rho 38092 * (-1))) =
      rho 38093 * rho 38093 - rho 38092 * rho 38092 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5349
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX66 rho, seg48Out0AccY66 rho⟩ ⟨rho 38092, rho 38093⟩
    ⟨rho 38098, rho 38099⟩ ⟨seg48Out0AccX67 rho, seg48Out0AccY67 rho⟩ ⟨rho 38105, rho 38106⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5350 rho ∧ Seg48.relationRow5351 rho ∧ Seg48.relationRow5352 rho ∧ Seg48.relationRow5353 rho ∧ Seg48.relationRow5354 rho ∧ Seg48.relationRow5355 rho ∧ Seg48.relationRow5356 rho ∧ Seg48.relationRow5357 rho ∧ Seg48.relationRow5358 rho ∧ Seg48.relationRow5359 rho ∧ Seg48.relationRow5360 rho ∧ Seg48.relationRow5361 rho ∧ Seg48.relationRow5362 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p66, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg48Out0_rung67 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37181 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX67 rho, seg48Out0AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38105, rho 38106⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX67 rho, seg48Out0AccY67 rho⟩ ⟨rho 38105, rho 38106⟩
        ⟨seg48Out0AccX68 rho, seg48Out0AccY68 rho⟩ ⟨rho 38118, rho 38119⟩ := by
  obtain ⟨r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg48Out0_rows67 rho h
  unfold Seg48.relationRow5350 at r5350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5350

  unfold Seg48.relationRow5351 at r5351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351

  unfold Seg48.relationRow5352 at r5352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352

  unfold Seg48.relationRow5353 at r5353

  unfold Seg48.relationRow5354 at r5354

  unfold Seg48.relationRow5355 at r5355

  unfold Seg48.relationRow5356 at r5356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356

  unfold Seg48.relationRow5357 at r5357

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357

  unfold Seg48.relationRow5358 at r5358

  unfold Seg48.relationRow5359 at r5359

  unfold Seg48.relationRow5360 at r5360

  unfold Seg48.relationRow5361 at r5361

  unfold Seg48.relationRow5362 at r5362

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX68 rho = seg48Out0AccX67 rho + rho 38113 := by
    unfold seg48Out0AccX68 seg48Out0AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 67]

    ring

  have hnexty : seg48Out0AccY68 rho = seg48Out0AccY67 rho + rho 38114 := by
    unfold seg48Out0AccY68 seg48Out0AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 67]

    ring

  have ha0 : (rho 38105 + rho 38106) * (seg48Out0AccX67 rho + seg48Out0AccY67 rho) = rho 38107 := by
    unfold seg48Out0AccX67 seg48Out0AccY67
    linear_combination r5350
  have ha1 : rho 38106 * seg48Out0AccX67 rho = rho 38108 := by
    unfold seg48Out0AccX67
    linear_combination r5351
  have ha2 : rho 38105 * seg48Out0AccY67 rho = rho 38109 := by
    unfold seg48Out0AccY67
    linear_combination r5352
  have ha3 : 3021 * rho 38108 * rho 38109 = rho 38110 := by
    linear_combination r5353
  have ha4 : rho 38111 * (1 + rho 38110) = rho 38108 + rho 38109 := by
    linear_combination r5354
  have ha5 : rho 38112 * (1 - rho 38110) = rho 38107 - rho 38108 - rho 38109 := by
    linear_combination r5355
  have haddx :
      rho 38111 * (1 + 3021 * (rho 38106 * seg48Out0AccX67 rho) * (rho 38105 * seg48Out0AccY67 rho)) =
        rho 38106 * seg48Out0AccX67 rho + rho 38105 * seg48Out0AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38112 * (1 - 3021 * (rho 38106 * seg48Out0AccX67 rho) * (rho 38105 * seg48Out0AccY67 rho)) =
        (-1) * (rho 38106 * seg48Out0AccX67 rho) - rho 38105 * seg48Out0AccY67 rho +
          (seg48Out0AccY67 rho - seg48Out0AccX67 rho * (-1)) * (rho 38105 + rho 38106) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38112 * (1 - rho 38110) = rho 38107 - rho 38108 - rho 38109 := ha5
      _ = (-1) * rho 38108 - rho 38109 + (seg48Out0AccY67 rho - seg48Out0AccX67 rho * (-1)) *
          (rho 38105 + rho 38106) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX68 rho = seg48Out0AccX67 rho - Bool.toZMod bit * (seg48Out0AccX67 rho - rho 38111) := by
    have hd : rho 38113 = Bool.toZMod bit * (rho 38111 - seg48Out0AccX67 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX67
      linear_combination -r5356
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY68 rho = seg48Out0AccY67 rho - Bool.toZMod bit * (seg48Out0AccY67 rho - rho 38112) := by
    have hd : rho 38114 = Bool.toZMod bit * (rho 38112 - seg48Out0AccY67 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY67
      linear_combination -r5357
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38105 * rho 38106 = rho 38115 := by linear_combination r5358
  have hd1 : rho 38105 * rho 38105 = rho 38116 := by linear_combination r5359
  have hd2 : rho 38106 * rho 38106 = rho 38117 := by linear_combination r5360
  have hd3 : rho 38118 * (rho 38106 * rho 38106 + rho 38105 * rho 38105 * (-1)) =
      2 * (rho 38105 * rho 38106) := by
    rw [hd0, hd1, hd2]
    linear_combination r5361
  have hd4 : rho 38119 * (2 - (rho 38106 * rho 38106 + rho 38105 * rho 38105 * (-1))) =
      rho 38106 * rho 38106 - rho 38105 * rho 38105 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5362
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX67 rho, seg48Out0AccY67 rho⟩ ⟨rho 38105, rho 38106⟩
    ⟨rho 38111, rho 38112⟩ ⟨seg48Out0AccX68 rho, seg48Out0AccY68 rho⟩ ⟨rho 38118, rho 38119⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5363 rho ∧ Seg48.relationRow5364 rho ∧ Seg48.relationRow5365 rho ∧ Seg48.relationRow5366 rho ∧ Seg48.relationRow5367 rho ∧ Seg48.relationRow5368 rho ∧ Seg48.relationRow5369 rho ∧ Seg48.relationRow5370 rho ∧ Seg48.relationRow5371 rho ∧ Seg48.relationRow5372 rho ∧ Seg48.relationRow5373 rho ∧ Seg48.relationRow5374 rho ∧ Seg48.relationRow5375 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375⟩

theorem seg48Out0_rung68 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37182 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX68 rho, seg48Out0AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38118, rho 38119⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX68 rho, seg48Out0AccY68 rho⟩ ⟨rho 38118, rho 38119⟩
        ⟨seg48Out0AccX69 rho, seg48Out0AccY69 rho⟩ ⟨rho 38131, rho 38132⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375⟩ := seg48Out0_rows68 rho h
  unfold Seg48.relationRow5363 at r5363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363

  unfold Seg48.relationRow5364 at r5364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5364

  unfold Seg48.relationRow5365 at r5365

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365

  unfold Seg48.relationRow5366 at r5366

  unfold Seg48.relationRow5367 at r5367

  unfold Seg48.relationRow5368 at r5368

  unfold Seg48.relationRow5369 at r5369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5369

  unfold Seg48.relationRow5370 at r5370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370

  unfold Seg48.relationRow5371 at r5371

  unfold Seg48.relationRow5372 at r5372

  unfold Seg48.relationRow5373 at r5373

  unfold Seg48.relationRow5374 at r5374

  unfold Seg48.relationRow5375 at r5375

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX69 rho = seg48Out0AccX68 rho + rho 38126 := by
    unfold seg48Out0AccX69 seg48Out0AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 68]

    ring

  have hnexty : seg48Out0AccY69 rho = seg48Out0AccY68 rho + rho 38127 := by
    unfold seg48Out0AccY69 seg48Out0AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 68]

    ring

  have ha0 : (rho 38118 + rho 38119) * (seg48Out0AccX68 rho + seg48Out0AccY68 rho) = rho 38120 := by
    unfold seg48Out0AccX68 seg48Out0AccY68
    linear_combination r5363
  have ha1 : rho 38119 * seg48Out0AccX68 rho = rho 38121 := by
    unfold seg48Out0AccX68
    linear_combination r5364
  have ha2 : rho 38118 * seg48Out0AccY68 rho = rho 38122 := by
    unfold seg48Out0AccY68
    linear_combination r5365
  have ha3 : 3021 * rho 38121 * rho 38122 = rho 38123 := by
    linear_combination r5366
  have ha4 : rho 38124 * (1 + rho 38123) = rho 38121 + rho 38122 := by
    linear_combination r5367
  have ha5 : rho 38125 * (1 - rho 38123) = rho 38120 - rho 38121 - rho 38122 := by
    linear_combination r5368
  have haddx :
      rho 38124 * (1 + 3021 * (rho 38119 * seg48Out0AccX68 rho) * (rho 38118 * seg48Out0AccY68 rho)) =
        rho 38119 * seg48Out0AccX68 rho + rho 38118 * seg48Out0AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38125 * (1 - 3021 * (rho 38119 * seg48Out0AccX68 rho) * (rho 38118 * seg48Out0AccY68 rho)) =
        (-1) * (rho 38119 * seg48Out0AccX68 rho) - rho 38118 * seg48Out0AccY68 rho +
          (seg48Out0AccY68 rho - seg48Out0AccX68 rho * (-1)) * (rho 38118 + rho 38119) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38125 * (1 - rho 38123) = rho 38120 - rho 38121 - rho 38122 := ha5
      _ = (-1) * rho 38121 - rho 38122 + (seg48Out0AccY68 rho - seg48Out0AccX68 rho * (-1)) *
          (rho 38118 + rho 38119) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX69 rho = seg48Out0AccX68 rho - Bool.toZMod bit * (seg48Out0AccX68 rho - rho 38124) := by
    have hd : rho 38126 = Bool.toZMod bit * (rho 38124 - seg48Out0AccX68 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX68
      linear_combination -r5369
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY69 rho = seg48Out0AccY68 rho - Bool.toZMod bit * (seg48Out0AccY68 rho - rho 38125) := by
    have hd : rho 38127 = Bool.toZMod bit * (rho 38125 - seg48Out0AccY68 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY68
      linear_combination -r5370
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38118 * rho 38119 = rho 38128 := by linear_combination r5371
  have hd1 : rho 38118 * rho 38118 = rho 38129 := by linear_combination r5372
  have hd2 : rho 38119 * rho 38119 = rho 38130 := by linear_combination r5373
  have hd3 : rho 38131 * (rho 38119 * rho 38119 + rho 38118 * rho 38118 * (-1)) =
      2 * (rho 38118 * rho 38119) := by
    rw [hd0, hd1, hd2]
    linear_combination r5374
  have hd4 : rho 38132 * (2 - (rho 38119 * rho 38119 + rho 38118 * rho 38118 * (-1))) =
      rho 38119 * rho 38119 - rho 38118 * rho 38118 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5375
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX68 rho, seg48Out0AccY68 rho⟩ ⟨rho 38118, rho 38119⟩
    ⟨rho 38124, rho 38125⟩ ⟨seg48Out0AccX69 rho, seg48Out0AccY69 rho⟩ ⟨rho 38131, rho 38132⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5376 rho ∧ Seg48.relationRow5377 rho ∧ Seg48.relationRow5378 rho ∧ Seg48.relationRow5379 rho ∧ Seg48.relationRow5380 rho ∧ Seg48.relationRow5381 rho ∧ Seg48.relationRow5382 rho ∧ Seg48.relationRow5383 rho ∧ Seg48.relationRow5384 rho ∧ Seg48.relationRow5385 rho ∧ Seg48.relationRow5386 rho ∧ Seg48.relationRow5387 rho ∧ Seg48.relationRow5388 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388⟩

theorem seg48Out0_rung69 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37183 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX69 rho, seg48Out0AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38131, rho 38132⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX69 rho, seg48Out0AccY69 rho⟩ ⟨rho 38131, rho 38132⟩
        ⟨seg48Out0AccX70 rho, seg48Out0AccY70 rho⟩ ⟨rho 38144, rho 38145⟩ := by
  obtain ⟨r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388⟩ := seg48Out0_rows69 rho h
  unfold Seg48.relationRow5376 at r5376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5376

  unfold Seg48.relationRow5377 at r5377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377

  unfold Seg48.relationRow5378 at r5378

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5378

  unfold Seg48.relationRow5379 at r5379

  unfold Seg48.relationRow5380 at r5380

  unfold Seg48.relationRow5381 at r5381

  unfold Seg48.relationRow5382 at r5382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5382

  unfold Seg48.relationRow5383 at r5383

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5383

  unfold Seg48.relationRow5384 at r5384

  unfold Seg48.relationRow5385 at r5385

  unfold Seg48.relationRow5386 at r5386

  unfold Seg48.relationRow5387 at r5387

  unfold Seg48.relationRow5388 at r5388

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX70 rho = seg48Out0AccX69 rho + rho 38139 := by
    unfold seg48Out0AccX70 seg48Out0AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 69]

    ring

  have hnexty : seg48Out0AccY70 rho = seg48Out0AccY69 rho + rho 38140 := by
    unfold seg48Out0AccY70 seg48Out0AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 69]

    ring

  have ha0 : (rho 38131 + rho 38132) * (seg48Out0AccX69 rho + seg48Out0AccY69 rho) = rho 38133 := by
    unfold seg48Out0AccX69 seg48Out0AccY69
    linear_combination r5376
  have ha1 : rho 38132 * seg48Out0AccX69 rho = rho 38134 := by
    unfold seg48Out0AccX69
    linear_combination r5377
  have ha2 : rho 38131 * seg48Out0AccY69 rho = rho 38135 := by
    unfold seg48Out0AccY69
    linear_combination r5378
  have ha3 : 3021 * rho 38134 * rho 38135 = rho 38136 := by
    linear_combination r5379
  have ha4 : rho 38137 * (1 + rho 38136) = rho 38134 + rho 38135 := by
    linear_combination r5380
  have ha5 : rho 38138 * (1 - rho 38136) = rho 38133 - rho 38134 - rho 38135 := by
    linear_combination r5381
  have haddx :
      rho 38137 * (1 + 3021 * (rho 38132 * seg48Out0AccX69 rho) * (rho 38131 * seg48Out0AccY69 rho)) =
        rho 38132 * seg48Out0AccX69 rho + rho 38131 * seg48Out0AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38138 * (1 - 3021 * (rho 38132 * seg48Out0AccX69 rho) * (rho 38131 * seg48Out0AccY69 rho)) =
        (-1) * (rho 38132 * seg48Out0AccX69 rho) - rho 38131 * seg48Out0AccY69 rho +
          (seg48Out0AccY69 rho - seg48Out0AccX69 rho * (-1)) * (rho 38131 + rho 38132) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38138 * (1 - rho 38136) = rho 38133 - rho 38134 - rho 38135 := ha5
      _ = (-1) * rho 38134 - rho 38135 + (seg48Out0AccY69 rho - seg48Out0AccX69 rho * (-1)) *
          (rho 38131 + rho 38132) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX70 rho = seg48Out0AccX69 rho - Bool.toZMod bit * (seg48Out0AccX69 rho - rho 38137) := by
    have hd : rho 38139 = Bool.toZMod bit * (rho 38137 - seg48Out0AccX69 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX69
      linear_combination -r5382
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY70 rho = seg48Out0AccY69 rho - Bool.toZMod bit * (seg48Out0AccY69 rho - rho 38138) := by
    have hd : rho 38140 = Bool.toZMod bit * (rho 38138 - seg48Out0AccY69 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY69
      linear_combination -r5383
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38131 * rho 38132 = rho 38141 := by linear_combination r5384
  have hd1 : rho 38131 * rho 38131 = rho 38142 := by linear_combination r5385
  have hd2 : rho 38132 * rho 38132 = rho 38143 := by linear_combination r5386
  have hd3 : rho 38144 * (rho 38132 * rho 38132 + rho 38131 * rho 38131 * (-1)) =
      2 * (rho 38131 * rho 38132) := by
    rw [hd0, hd1, hd2]
    linear_combination r5387
  have hd4 : rho 38145 * (2 - (rho 38132 * rho 38132 + rho 38131 * rho 38131 * (-1))) =
      rho 38132 * rho 38132 - rho 38131 * rho 38131 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5388
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX69 rho, seg48Out0AccY69 rho⟩ ⟨rho 38131, rho 38132⟩
    ⟨rho 38137, rho 38138⟩ ⟨seg48Out0AccX70 rho, seg48Out0AccY70 rho⟩ ⟨rho 38144, rho 38145⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5389 rho ∧ Seg48.relationRow5390 rho ∧ Seg48.relationRow5391 rho ∧ Seg48.relationRow5392 rho ∧ Seg48.relationRow5393 rho ∧ Seg48.relationRow5394 rho ∧ Seg48.relationRow5395 rho ∧ Seg48.relationRow5396 rho ∧ Seg48.relationRow5397 rho ∧ Seg48.relationRow5398 rho ∧ Seg48.relationRow5399 rho ∧ Seg48.relationRow5400 rho ∧ Seg48.relationRow5401 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401⟩

theorem seg48Out0_rung70 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37184 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX70 rho, seg48Out0AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38144, rho 38145⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX70 rho, seg48Out0AccY70 rho⟩ ⟨rho 38144, rho 38145⟩
        ⟨seg48Out0AccX71 rho, seg48Out0AccY71 rho⟩ ⟨rho 38157, rho 38158⟩ := by
  obtain ⟨r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401⟩ := seg48Out0_rows70 rho h
  unfold Seg48.relationRow5389 at r5389

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5389

  unfold Seg48.relationRow5390 at r5390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5390

  unfold Seg48.relationRow5391 at r5391

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391

  unfold Seg48.relationRow5392 at r5392

  unfold Seg48.relationRow5393 at r5393

  unfold Seg48.relationRow5394 at r5394

  unfold Seg48.relationRow5395 at r5395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5395

  unfold Seg48.relationRow5396 at r5396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5396

  unfold Seg48.relationRow5397 at r5397

  unfold Seg48.relationRow5398 at r5398

  unfold Seg48.relationRow5399 at r5399

  unfold Seg48.relationRow5400 at r5400

  unfold Seg48.relationRow5401 at r5401

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX71 rho = seg48Out0AccX70 rho + rho 38152 := by
    unfold seg48Out0AccX71 seg48Out0AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 70]

    ring

  have hnexty : seg48Out0AccY71 rho = seg48Out0AccY70 rho + rho 38153 := by
    unfold seg48Out0AccY71 seg48Out0AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 70]

    ring

  have ha0 : (rho 38144 + rho 38145) * (seg48Out0AccX70 rho + seg48Out0AccY70 rho) = rho 38146 := by
    unfold seg48Out0AccX70 seg48Out0AccY70
    linear_combination r5389
  have ha1 : rho 38145 * seg48Out0AccX70 rho = rho 38147 := by
    unfold seg48Out0AccX70
    linear_combination r5390
  have ha2 : rho 38144 * seg48Out0AccY70 rho = rho 38148 := by
    unfold seg48Out0AccY70
    linear_combination r5391
  have ha3 : 3021 * rho 38147 * rho 38148 = rho 38149 := by
    linear_combination r5392
  have ha4 : rho 38150 * (1 + rho 38149) = rho 38147 + rho 38148 := by
    linear_combination r5393
  have ha5 : rho 38151 * (1 - rho 38149) = rho 38146 - rho 38147 - rho 38148 := by
    linear_combination r5394
  have haddx :
      rho 38150 * (1 + 3021 * (rho 38145 * seg48Out0AccX70 rho) * (rho 38144 * seg48Out0AccY70 rho)) =
        rho 38145 * seg48Out0AccX70 rho + rho 38144 * seg48Out0AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38151 * (1 - 3021 * (rho 38145 * seg48Out0AccX70 rho) * (rho 38144 * seg48Out0AccY70 rho)) =
        (-1) * (rho 38145 * seg48Out0AccX70 rho) - rho 38144 * seg48Out0AccY70 rho +
          (seg48Out0AccY70 rho - seg48Out0AccX70 rho * (-1)) * (rho 38144 + rho 38145) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38151 * (1 - rho 38149) = rho 38146 - rho 38147 - rho 38148 := ha5
      _ = (-1) * rho 38147 - rho 38148 + (seg48Out0AccY70 rho - seg48Out0AccX70 rho * (-1)) *
          (rho 38144 + rho 38145) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX71 rho = seg48Out0AccX70 rho - Bool.toZMod bit * (seg48Out0AccX70 rho - rho 38150) := by
    have hd : rho 38152 = Bool.toZMod bit * (rho 38150 - seg48Out0AccX70 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX70
      linear_combination -r5395
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY71 rho = seg48Out0AccY70 rho - Bool.toZMod bit * (seg48Out0AccY70 rho - rho 38151) := by
    have hd : rho 38153 = Bool.toZMod bit * (rho 38151 - seg48Out0AccY70 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY70
      linear_combination -r5396
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38144 * rho 38145 = rho 38154 := by linear_combination r5397
  have hd1 : rho 38144 * rho 38144 = rho 38155 := by linear_combination r5398
  have hd2 : rho 38145 * rho 38145 = rho 38156 := by linear_combination r5399
  have hd3 : rho 38157 * (rho 38145 * rho 38145 + rho 38144 * rho 38144 * (-1)) =
      2 * (rho 38144 * rho 38145) := by
    rw [hd0, hd1, hd2]
    linear_combination r5400
  have hd4 : rho 38158 * (2 - (rho 38145 * rho 38145 + rho 38144 * rho 38144 * (-1))) =
      rho 38145 * rho 38145 - rho 38144 * rho 38144 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5401
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX70 rho, seg48Out0AccY70 rho⟩ ⟨rho 38144, rho 38145⟩
    ⟨rho 38150, rho 38151⟩ ⟨seg48Out0AccX71 rho, seg48Out0AccY71 rho⟩ ⟨rho 38157, rho 38158⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5402 rho ∧ Seg48.relationRow5403 rho ∧ Seg48.relationRow5404 rho ∧ Seg48.relationRow5405 rho ∧ Seg48.relationRow5406 rho ∧ Seg48.relationRow5407 rho ∧ Seg48.relationRow5408 rho ∧ Seg48.relationRow5409 rho ∧ Seg48.relationRow5410 rho ∧ Seg48.relationRow5411 rho ∧ Seg48.relationRow5412 rho ∧ Seg48.relationRow5413 rho ∧ Seg48.relationRow5414 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414⟩

theorem seg48Out0_rung71 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37185 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX71 rho, seg48Out0AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38157, rho 38158⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX71 rho, seg48Out0AccY71 rho⟩ ⟨rho 38157, rho 38158⟩
        ⟨seg48Out0AccX72 rho, seg48Out0AccY72 rho⟩ ⟨rho 38170, rho 38171⟩ := by
  obtain ⟨r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414⟩ := seg48Out0_rows71 rho h
  unfold Seg48.relationRow5402 at r5402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5402

  unfold Seg48.relationRow5403 at r5403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5403

  unfold Seg48.relationRow5404 at r5404

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5404

  unfold Seg48.relationRow5405 at r5405

  unfold Seg48.relationRow5406 at r5406

  unfold Seg48.relationRow5407 at r5407

  unfold Seg48.relationRow5408 at r5408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408

  unfold Seg48.relationRow5409 at r5409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5409

  unfold Seg48.relationRow5410 at r5410

  unfold Seg48.relationRow5411 at r5411

  unfold Seg48.relationRow5412 at r5412

  unfold Seg48.relationRow5413 at r5413

  unfold Seg48.relationRow5414 at r5414

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX72 rho = seg48Out0AccX71 rho + rho 38165 := by
    unfold seg48Out0AccX72 seg48Out0AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 71]

    ring

  have hnexty : seg48Out0AccY72 rho = seg48Out0AccY71 rho + rho 38166 := by
    unfold seg48Out0AccY72 seg48Out0AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 71]

    ring

  have ha0 : (rho 38157 + rho 38158) * (seg48Out0AccX71 rho + seg48Out0AccY71 rho) = rho 38159 := by
    unfold seg48Out0AccX71 seg48Out0AccY71
    linear_combination r5402
  have ha1 : rho 38158 * seg48Out0AccX71 rho = rho 38160 := by
    unfold seg48Out0AccX71
    linear_combination r5403
  have ha2 : rho 38157 * seg48Out0AccY71 rho = rho 38161 := by
    unfold seg48Out0AccY71
    linear_combination r5404
  have ha3 : 3021 * rho 38160 * rho 38161 = rho 38162 := by
    linear_combination r5405
  have ha4 : rho 38163 * (1 + rho 38162) = rho 38160 + rho 38161 := by
    linear_combination r5406
  have ha5 : rho 38164 * (1 - rho 38162) = rho 38159 - rho 38160 - rho 38161 := by
    linear_combination r5407
  have haddx :
      rho 38163 * (1 + 3021 * (rho 38158 * seg48Out0AccX71 rho) * (rho 38157 * seg48Out0AccY71 rho)) =
        rho 38158 * seg48Out0AccX71 rho + rho 38157 * seg48Out0AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38164 * (1 - 3021 * (rho 38158 * seg48Out0AccX71 rho) * (rho 38157 * seg48Out0AccY71 rho)) =
        (-1) * (rho 38158 * seg48Out0AccX71 rho) - rho 38157 * seg48Out0AccY71 rho +
          (seg48Out0AccY71 rho - seg48Out0AccX71 rho * (-1)) * (rho 38157 + rho 38158) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38164 * (1 - rho 38162) = rho 38159 - rho 38160 - rho 38161 := ha5
      _ = (-1) * rho 38160 - rho 38161 + (seg48Out0AccY71 rho - seg48Out0AccX71 rho * (-1)) *
          (rho 38157 + rho 38158) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX72 rho = seg48Out0AccX71 rho - Bool.toZMod bit * (seg48Out0AccX71 rho - rho 38163) := by
    have hd : rho 38165 = Bool.toZMod bit * (rho 38163 - seg48Out0AccX71 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX71
      linear_combination -r5408
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY72 rho = seg48Out0AccY71 rho - Bool.toZMod bit * (seg48Out0AccY71 rho - rho 38164) := by
    have hd : rho 38166 = Bool.toZMod bit * (rho 38164 - seg48Out0AccY71 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY71
      linear_combination -r5409
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38157 * rho 38158 = rho 38167 := by linear_combination r5410
  have hd1 : rho 38157 * rho 38157 = rho 38168 := by linear_combination r5411
  have hd2 : rho 38158 * rho 38158 = rho 38169 := by linear_combination r5412
  have hd3 : rho 38170 * (rho 38158 * rho 38158 + rho 38157 * rho 38157 * (-1)) =
      2 * (rho 38157 * rho 38158) := by
    rw [hd0, hd1, hd2]
    linear_combination r5413
  have hd4 : rho 38171 * (2 - (rho 38158 * rho 38158 + rho 38157 * rho 38157 * (-1))) =
      rho 38158 * rho 38158 - rho 38157 * rho 38157 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5414
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX71 rho, seg48Out0AccY71 rho⟩ ⟨rho 38157, rho 38158⟩
    ⟨rho 38163, rho 38164⟩ ⟨seg48Out0AccX72 rho, seg48Out0AccY72 rho⟩ ⟨rho 38170, rho 38171⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5415 rho ∧ Seg48.relationRow5416 rho ∧ Seg48.relationRow5417 rho ∧ Seg48.relationRow5418 rho ∧ Seg48.relationRow5419 rho ∧ Seg48.relationRow5420 rho ∧ Seg48.relationRow5421 rho ∧ Seg48.relationRow5422 rho ∧ Seg48.relationRow5423 rho ∧ Seg48.relationRow5424 rho ∧ Seg48.relationRow5425 rho ∧ Seg48.relationRow5426 rho ∧ Seg48.relationRow5427 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427⟩

theorem seg48Out0_rung72 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37186 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX72 rho, seg48Out0AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38170, rho 38171⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX72 rho, seg48Out0AccY72 rho⟩ ⟨rho 38170, rho 38171⟩
        ⟨seg48Out0AccX73 rho, seg48Out0AccY73 rho⟩ ⟨rho 38183, rho 38184⟩ := by
  obtain ⟨r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427⟩ := seg48Out0_rows72 rho h
  unfold Seg48.relationRow5415 at r5415

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5415

  unfold Seg48.relationRow5416 at r5416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5416

  unfold Seg48.relationRow5417 at r5417

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5417

  unfold Seg48.relationRow5418 at r5418

  unfold Seg48.relationRow5419 at r5419

  unfold Seg48.relationRow5420 at r5420

  unfold Seg48.relationRow5421 at r5421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421

  unfold Seg48.relationRow5422 at r5422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422

  unfold Seg48.relationRow5423 at r5423

  unfold Seg48.relationRow5424 at r5424

  unfold Seg48.relationRow5425 at r5425

  unfold Seg48.relationRow5426 at r5426

  unfold Seg48.relationRow5427 at r5427

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX73 rho = seg48Out0AccX72 rho + rho 38178 := by
    unfold seg48Out0AccX73 seg48Out0AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 72]

    ring

  have hnexty : seg48Out0AccY73 rho = seg48Out0AccY72 rho + rho 38179 := by
    unfold seg48Out0AccY73 seg48Out0AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 72]

    ring

  have ha0 : (rho 38170 + rho 38171) * (seg48Out0AccX72 rho + seg48Out0AccY72 rho) = rho 38172 := by
    unfold seg48Out0AccX72 seg48Out0AccY72
    linear_combination r5415
  have ha1 : rho 38171 * seg48Out0AccX72 rho = rho 38173 := by
    unfold seg48Out0AccX72
    linear_combination r5416
  have ha2 : rho 38170 * seg48Out0AccY72 rho = rho 38174 := by
    unfold seg48Out0AccY72
    linear_combination r5417
  have ha3 : 3021 * rho 38173 * rho 38174 = rho 38175 := by
    linear_combination r5418
  have ha4 : rho 38176 * (1 + rho 38175) = rho 38173 + rho 38174 := by
    linear_combination r5419
  have ha5 : rho 38177 * (1 - rho 38175) = rho 38172 - rho 38173 - rho 38174 := by
    linear_combination r5420
  have haddx :
      rho 38176 * (1 + 3021 * (rho 38171 * seg48Out0AccX72 rho) * (rho 38170 * seg48Out0AccY72 rho)) =
        rho 38171 * seg48Out0AccX72 rho + rho 38170 * seg48Out0AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38177 * (1 - 3021 * (rho 38171 * seg48Out0AccX72 rho) * (rho 38170 * seg48Out0AccY72 rho)) =
        (-1) * (rho 38171 * seg48Out0AccX72 rho) - rho 38170 * seg48Out0AccY72 rho +
          (seg48Out0AccY72 rho - seg48Out0AccX72 rho * (-1)) * (rho 38170 + rho 38171) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38177 * (1 - rho 38175) = rho 38172 - rho 38173 - rho 38174 := ha5
      _ = (-1) * rho 38173 - rho 38174 + (seg48Out0AccY72 rho - seg48Out0AccX72 rho * (-1)) *
          (rho 38170 + rho 38171) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX73 rho = seg48Out0AccX72 rho - Bool.toZMod bit * (seg48Out0AccX72 rho - rho 38176) := by
    have hd : rho 38178 = Bool.toZMod bit * (rho 38176 - seg48Out0AccX72 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX72
      linear_combination -r5421
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY73 rho = seg48Out0AccY72 rho - Bool.toZMod bit * (seg48Out0AccY72 rho - rho 38177) := by
    have hd : rho 38179 = Bool.toZMod bit * (rho 38177 - seg48Out0AccY72 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY72
      linear_combination -r5422
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38170 * rho 38171 = rho 38180 := by linear_combination r5423
  have hd1 : rho 38170 * rho 38170 = rho 38181 := by linear_combination r5424
  have hd2 : rho 38171 * rho 38171 = rho 38182 := by linear_combination r5425
  have hd3 : rho 38183 * (rho 38171 * rho 38171 + rho 38170 * rho 38170 * (-1)) =
      2 * (rho 38170 * rho 38171) := by
    rw [hd0, hd1, hd2]
    linear_combination r5426
  have hd4 : rho 38184 * (2 - (rho 38171 * rho 38171 + rho 38170 * rho 38170 * (-1))) =
      rho 38171 * rho 38171 - rho 38170 * rho 38170 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5427
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX72 rho, seg48Out0AccY72 rho⟩ ⟨rho 38170, rho 38171⟩
    ⟨rho 38176, rho 38177⟩ ⟨seg48Out0AccX73 rho, seg48Out0AccY73 rho⟩ ⟨rho 38183, rho 38184⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5428 rho ∧ Seg48.relationRow5429 rho ∧ Seg48.relationRow5430 rho ∧ Seg48.relationRow5431 rho ∧ Seg48.relationRow5432 rho ∧ Seg48.relationRow5433 rho ∧ Seg48.relationRow5434 rho ∧ Seg48.relationRow5435 rho ∧ Seg48.relationRow5436 rho ∧ Seg48.relationRow5437 rho ∧ Seg48.relationRow5438 rho ∧ Seg48.relationRow5439 rho ∧ Seg48.relationRow5440 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p67, p68, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩

  unfold Seg48.relationPart68 at p68

  rcases p68 with ⟨r5440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440⟩

theorem seg48Out0_rung73 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37187 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX73 rho, seg48Out0AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38183, rho 38184⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX73 rho, seg48Out0AccY73 rho⟩ ⟨rho 38183, rho 38184⟩
        ⟨seg48Out0AccX74 rho, seg48Out0AccY74 rho⟩ ⟨rho 38196, rho 38197⟩ := by
  obtain ⟨r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440⟩ := seg48Out0_rows73 rho h
  unfold Seg48.relationRow5428 at r5428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5428

  unfold Seg48.relationRow5429 at r5429

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5429

  unfold Seg48.relationRow5430 at r5430

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5430

  unfold Seg48.relationRow5431 at r5431

  unfold Seg48.relationRow5432 at r5432

  unfold Seg48.relationRow5433 at r5433

  unfold Seg48.relationRow5434 at r5434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5434

  unfold Seg48.relationRow5435 at r5435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435

  unfold Seg48.relationRow5436 at r5436

  unfold Seg48.relationRow5437 at r5437

  unfold Seg48.relationRow5438 at r5438

  unfold Seg48.relationRow5439 at r5439

  unfold Seg48.relationRow5440 at r5440

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX74 rho = seg48Out0AccX73 rho + rho 38191 := by
    unfold seg48Out0AccX74 seg48Out0AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 73]

    ring

  have hnexty : seg48Out0AccY74 rho = seg48Out0AccY73 rho + rho 38192 := by
    unfold seg48Out0AccY74 seg48Out0AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 73]

    ring

  have ha0 : (rho 38183 + rho 38184) * (seg48Out0AccX73 rho + seg48Out0AccY73 rho) = rho 38185 := by
    unfold seg48Out0AccX73 seg48Out0AccY73
    linear_combination r5428
  have ha1 : rho 38184 * seg48Out0AccX73 rho = rho 38186 := by
    unfold seg48Out0AccX73
    linear_combination r5429
  have ha2 : rho 38183 * seg48Out0AccY73 rho = rho 38187 := by
    unfold seg48Out0AccY73
    linear_combination r5430
  have ha3 : 3021 * rho 38186 * rho 38187 = rho 38188 := by
    linear_combination r5431
  have ha4 : rho 38189 * (1 + rho 38188) = rho 38186 + rho 38187 := by
    linear_combination r5432
  have ha5 : rho 38190 * (1 - rho 38188) = rho 38185 - rho 38186 - rho 38187 := by
    linear_combination r5433
  have haddx :
      rho 38189 * (1 + 3021 * (rho 38184 * seg48Out0AccX73 rho) * (rho 38183 * seg48Out0AccY73 rho)) =
        rho 38184 * seg48Out0AccX73 rho + rho 38183 * seg48Out0AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38190 * (1 - 3021 * (rho 38184 * seg48Out0AccX73 rho) * (rho 38183 * seg48Out0AccY73 rho)) =
        (-1) * (rho 38184 * seg48Out0AccX73 rho) - rho 38183 * seg48Out0AccY73 rho +
          (seg48Out0AccY73 rho - seg48Out0AccX73 rho * (-1)) * (rho 38183 + rho 38184) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38190 * (1 - rho 38188) = rho 38185 - rho 38186 - rho 38187 := ha5
      _ = (-1) * rho 38186 - rho 38187 + (seg48Out0AccY73 rho - seg48Out0AccX73 rho * (-1)) *
          (rho 38183 + rho 38184) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX74 rho = seg48Out0AccX73 rho - Bool.toZMod bit * (seg48Out0AccX73 rho - rho 38189) := by
    have hd : rho 38191 = Bool.toZMod bit * (rho 38189 - seg48Out0AccX73 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX73
      linear_combination -r5434
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY74 rho = seg48Out0AccY73 rho - Bool.toZMod bit * (seg48Out0AccY73 rho - rho 38190) := by
    have hd : rho 38192 = Bool.toZMod bit * (rho 38190 - seg48Out0AccY73 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY73
      linear_combination -r5435
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38183 * rho 38184 = rho 38193 := by linear_combination r5436
  have hd1 : rho 38183 * rho 38183 = rho 38194 := by linear_combination r5437
  have hd2 : rho 38184 * rho 38184 = rho 38195 := by linear_combination r5438
  have hd3 : rho 38196 * (rho 38184 * rho 38184 + rho 38183 * rho 38183 * (-1)) =
      2 * (rho 38183 * rho 38184) := by
    rw [hd0, hd1, hd2]
    linear_combination r5439
  have hd4 : rho 38197 * (2 - (rho 38184 * rho 38184 + rho 38183 * rho 38183 * (-1))) =
      rho 38184 * rho 38184 - rho 38183 * rho 38183 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5440
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX73 rho, seg48Out0AccY73 rho⟩ ⟨rho 38183, rho 38184⟩
    ⟨rho 38189, rho 38190⟩ ⟨seg48Out0AccX74 rho, seg48Out0AccY74 rho⟩ ⟨rho 38196, rho 38197⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5441 rho ∧ Seg48.relationRow5442 rho ∧ Seg48.relationRow5443 rho ∧ Seg48.relationRow5444 rho ∧ Seg48.relationRow5445 rho ∧ Seg48.relationRow5446 rho ∧ Seg48.relationRow5447 rho ∧ Seg48.relationRow5448 rho ∧ Seg48.relationRow5449 rho ∧ Seg48.relationRow5450 rho ∧ Seg48.relationRow5451 rho ∧ Seg48.relationRow5452 rho ∧ Seg48.relationRow5453 rho := by
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

  rcases p68 with ⟨_, r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453⟩

theorem seg48Out0_rung74 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37188 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX74 rho, seg48Out0AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38196, rho 38197⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX74 rho, seg48Out0AccY74 rho⟩ ⟨rho 38196, rho 38197⟩
        ⟨seg48Out0AccX75 rho, seg48Out0AccY75 rho⟩ ⟨rho 38209, rho 38210⟩ := by
  obtain ⟨r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453⟩ := seg48Out0_rows74 rho h
  unfold Seg48.relationRow5441 at r5441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441

  unfold Seg48.relationRow5442 at r5442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5442

  unfold Seg48.relationRow5443 at r5443

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5443

  unfold Seg48.relationRow5444 at r5444

  unfold Seg48.relationRow5445 at r5445

  unfold Seg48.relationRow5446 at r5446

  unfold Seg48.relationRow5447 at r5447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447

  unfold Seg48.relationRow5448 at r5448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5448

  unfold Seg48.relationRow5449 at r5449

  unfold Seg48.relationRow5450 at r5450

  unfold Seg48.relationRow5451 at r5451

  unfold Seg48.relationRow5452 at r5452

  unfold Seg48.relationRow5453 at r5453

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX75 rho = seg48Out0AccX74 rho + rho 38204 := by
    unfold seg48Out0AccX75 seg48Out0AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 74]

    ring

  have hnexty : seg48Out0AccY75 rho = seg48Out0AccY74 rho + rho 38205 := by
    unfold seg48Out0AccY75 seg48Out0AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 74]

    ring

  have ha0 : (rho 38196 + rho 38197) * (seg48Out0AccX74 rho + seg48Out0AccY74 rho) = rho 38198 := by
    unfold seg48Out0AccX74 seg48Out0AccY74
    linear_combination r5441
  have ha1 : rho 38197 * seg48Out0AccX74 rho = rho 38199 := by
    unfold seg48Out0AccX74
    linear_combination r5442
  have ha2 : rho 38196 * seg48Out0AccY74 rho = rho 38200 := by
    unfold seg48Out0AccY74
    linear_combination r5443
  have ha3 : 3021 * rho 38199 * rho 38200 = rho 38201 := by
    linear_combination r5444
  have ha4 : rho 38202 * (1 + rho 38201) = rho 38199 + rho 38200 := by
    linear_combination r5445
  have ha5 : rho 38203 * (1 - rho 38201) = rho 38198 - rho 38199 - rho 38200 := by
    linear_combination r5446
  have haddx :
      rho 38202 * (1 + 3021 * (rho 38197 * seg48Out0AccX74 rho) * (rho 38196 * seg48Out0AccY74 rho)) =
        rho 38197 * seg48Out0AccX74 rho + rho 38196 * seg48Out0AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38203 * (1 - 3021 * (rho 38197 * seg48Out0AccX74 rho) * (rho 38196 * seg48Out0AccY74 rho)) =
        (-1) * (rho 38197 * seg48Out0AccX74 rho) - rho 38196 * seg48Out0AccY74 rho +
          (seg48Out0AccY74 rho - seg48Out0AccX74 rho * (-1)) * (rho 38196 + rho 38197) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38203 * (1 - rho 38201) = rho 38198 - rho 38199 - rho 38200 := ha5
      _ = (-1) * rho 38199 - rho 38200 + (seg48Out0AccY74 rho - seg48Out0AccX74 rho * (-1)) *
          (rho 38196 + rho 38197) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX75 rho = seg48Out0AccX74 rho - Bool.toZMod bit * (seg48Out0AccX74 rho - rho 38202) := by
    have hd : rho 38204 = Bool.toZMod bit * (rho 38202 - seg48Out0AccX74 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX74
      linear_combination -r5447
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY75 rho = seg48Out0AccY74 rho - Bool.toZMod bit * (seg48Out0AccY74 rho - rho 38203) := by
    have hd : rho 38205 = Bool.toZMod bit * (rho 38203 - seg48Out0AccY74 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY74
      linear_combination -r5448
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38196 * rho 38197 = rho 38206 := by linear_combination r5449
  have hd1 : rho 38196 * rho 38196 = rho 38207 := by linear_combination r5450
  have hd2 : rho 38197 * rho 38197 = rho 38208 := by linear_combination r5451
  have hd3 : rho 38209 * (rho 38197 * rho 38197 + rho 38196 * rho 38196 * (-1)) =
      2 * (rho 38196 * rho 38197) := by
    rw [hd0, hd1, hd2]
    linear_combination r5452
  have hd4 : rho 38210 * (2 - (rho 38197 * rho 38197 + rho 38196 * rho 38196 * (-1))) =
      rho 38197 * rho 38197 - rho 38196 * rho 38196 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5453
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX74 rho, seg48Out0AccY74 rho⟩ ⟨rho 38196, rho 38197⟩
    ⟨rho 38202, rho 38203⟩ ⟨seg48Out0AccX75 rho, seg48Out0AccY75 rho⟩ ⟨rho 38209, rho 38210⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5454 rho ∧ Seg48.relationRow5455 rho ∧ Seg48.relationRow5456 rho ∧ Seg48.relationRow5457 rho ∧ Seg48.relationRow5458 rho ∧ Seg48.relationRow5459 rho ∧ Seg48.relationRow5460 rho ∧ Seg48.relationRow5461 rho ∧ Seg48.relationRow5462 rho ∧ Seg48.relationRow5463 rho ∧ Seg48.relationRow5464 rho ∧ Seg48.relationRow5465 rho ∧ Seg48.relationRow5466 rho := by
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

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466⟩

theorem seg48Out0_rung75 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37189 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX75 rho, seg48Out0AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38209, rho 38210⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX75 rho, seg48Out0AccY75 rho⟩ ⟨rho 38209, rho 38210⟩
        ⟨seg48Out0AccX76 rho, seg48Out0AccY76 rho⟩ ⟨rho 38222, rho 38223⟩ := by
  obtain ⟨r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466⟩ := seg48Out0_rows75 rho h
  unfold Seg48.relationRow5454 at r5454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454

  unfold Seg48.relationRow5455 at r5455

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455

  unfold Seg48.relationRow5456 at r5456

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5456

  unfold Seg48.relationRow5457 at r5457

  unfold Seg48.relationRow5458 at r5458

  unfold Seg48.relationRow5459 at r5459

  unfold Seg48.relationRow5460 at r5460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5460

  unfold Seg48.relationRow5461 at r5461

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461

  unfold Seg48.relationRow5462 at r5462

  unfold Seg48.relationRow5463 at r5463

  unfold Seg48.relationRow5464 at r5464

  unfold Seg48.relationRow5465 at r5465

  unfold Seg48.relationRow5466 at r5466

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX76 rho = seg48Out0AccX75 rho + rho 38217 := by
    unfold seg48Out0AccX76 seg48Out0AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 75]

    ring

  have hnexty : seg48Out0AccY76 rho = seg48Out0AccY75 rho + rho 38218 := by
    unfold seg48Out0AccY76 seg48Out0AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 75]

    ring

  have ha0 : (rho 38209 + rho 38210) * (seg48Out0AccX75 rho + seg48Out0AccY75 rho) = rho 38211 := by
    unfold seg48Out0AccX75 seg48Out0AccY75
    linear_combination r5454
  have ha1 : rho 38210 * seg48Out0AccX75 rho = rho 38212 := by
    unfold seg48Out0AccX75
    linear_combination r5455
  have ha2 : rho 38209 * seg48Out0AccY75 rho = rho 38213 := by
    unfold seg48Out0AccY75
    linear_combination r5456
  have ha3 : 3021 * rho 38212 * rho 38213 = rho 38214 := by
    linear_combination r5457
  have ha4 : rho 38215 * (1 + rho 38214) = rho 38212 + rho 38213 := by
    linear_combination r5458
  have ha5 : rho 38216 * (1 - rho 38214) = rho 38211 - rho 38212 - rho 38213 := by
    linear_combination r5459
  have haddx :
      rho 38215 * (1 + 3021 * (rho 38210 * seg48Out0AccX75 rho) * (rho 38209 * seg48Out0AccY75 rho)) =
        rho 38210 * seg48Out0AccX75 rho + rho 38209 * seg48Out0AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38216 * (1 - 3021 * (rho 38210 * seg48Out0AccX75 rho) * (rho 38209 * seg48Out0AccY75 rho)) =
        (-1) * (rho 38210 * seg48Out0AccX75 rho) - rho 38209 * seg48Out0AccY75 rho +
          (seg48Out0AccY75 rho - seg48Out0AccX75 rho * (-1)) * (rho 38209 + rho 38210) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38216 * (1 - rho 38214) = rho 38211 - rho 38212 - rho 38213 := ha5
      _ = (-1) * rho 38212 - rho 38213 + (seg48Out0AccY75 rho - seg48Out0AccX75 rho * (-1)) *
          (rho 38209 + rho 38210) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX76 rho = seg48Out0AccX75 rho - Bool.toZMod bit * (seg48Out0AccX75 rho - rho 38215) := by
    have hd : rho 38217 = Bool.toZMod bit * (rho 38215 - seg48Out0AccX75 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX75
      linear_combination -r5460
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY76 rho = seg48Out0AccY75 rho - Bool.toZMod bit * (seg48Out0AccY75 rho - rho 38216) := by
    have hd : rho 38218 = Bool.toZMod bit * (rho 38216 - seg48Out0AccY75 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY75
      linear_combination -r5461
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38209 * rho 38210 = rho 38219 := by linear_combination r5462
  have hd1 : rho 38209 * rho 38209 = rho 38220 := by linear_combination r5463
  have hd2 : rho 38210 * rho 38210 = rho 38221 := by linear_combination r5464
  have hd3 : rho 38222 * (rho 38210 * rho 38210 + rho 38209 * rho 38209 * (-1)) =
      2 * (rho 38209 * rho 38210) := by
    rw [hd0, hd1, hd2]
    linear_combination r5465
  have hd4 : rho 38223 * (2 - (rho 38210 * rho 38210 + rho 38209 * rho 38209 * (-1))) =
      rho 38210 * rho 38210 - rho 38209 * rho 38209 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5466
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX75 rho, seg48Out0AccY75 rho⟩ ⟨rho 38209, rho 38210⟩
    ⟨rho 38215, rho 38216⟩ ⟨seg48Out0AccX76 rho, seg48Out0AccY76 rho⟩ ⟨rho 38222, rho 38223⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5467 rho ∧ Seg48.relationRow5468 rho ∧ Seg48.relationRow5469 rho ∧ Seg48.relationRow5470 rho ∧ Seg48.relationRow5471 rho ∧ Seg48.relationRow5472 rho ∧ Seg48.relationRow5473 rho ∧ Seg48.relationRow5474 rho ∧ Seg48.relationRow5475 rho ∧ Seg48.relationRow5476 rho ∧ Seg48.relationRow5477 rho ∧ Seg48.relationRow5478 rho ∧ Seg48.relationRow5479 rho := by
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

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479⟩

theorem seg48Out0_rung76 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37190 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX76 rho, seg48Out0AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38222, rho 38223⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX76 rho, seg48Out0AccY76 rho⟩ ⟨rho 38222, rho 38223⟩
        ⟨seg48Out0AccX77 rho, seg48Out0AccY77 rho⟩ ⟨rho 38235, rho 38236⟩ := by
  obtain ⟨r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479⟩ := seg48Out0_rows76 rho h
  unfold Seg48.relationRow5467 at r5467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5467

  unfold Seg48.relationRow5468 at r5468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468

  unfold Seg48.relationRow5469 at r5469

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469

  unfold Seg48.relationRow5470 at r5470

  unfold Seg48.relationRow5471 at r5471

  unfold Seg48.relationRow5472 at r5472

  unfold Seg48.relationRow5473 at r5473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5473

  unfold Seg48.relationRow5474 at r5474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5474

  unfold Seg48.relationRow5475 at r5475

  unfold Seg48.relationRow5476 at r5476

  unfold Seg48.relationRow5477 at r5477

  unfold Seg48.relationRow5478 at r5478

  unfold Seg48.relationRow5479 at r5479

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX77 rho = seg48Out0AccX76 rho + rho 38230 := by
    unfold seg48Out0AccX77 seg48Out0AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 76]

    ring

  have hnexty : seg48Out0AccY77 rho = seg48Out0AccY76 rho + rho 38231 := by
    unfold seg48Out0AccY77 seg48Out0AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 76]

    ring

  have ha0 : (rho 38222 + rho 38223) * (seg48Out0AccX76 rho + seg48Out0AccY76 rho) = rho 38224 := by
    unfold seg48Out0AccX76 seg48Out0AccY76
    linear_combination r5467
  have ha1 : rho 38223 * seg48Out0AccX76 rho = rho 38225 := by
    unfold seg48Out0AccX76
    linear_combination r5468
  have ha2 : rho 38222 * seg48Out0AccY76 rho = rho 38226 := by
    unfold seg48Out0AccY76
    linear_combination r5469
  have ha3 : 3021 * rho 38225 * rho 38226 = rho 38227 := by
    linear_combination r5470
  have ha4 : rho 38228 * (1 + rho 38227) = rho 38225 + rho 38226 := by
    linear_combination r5471
  have ha5 : rho 38229 * (1 - rho 38227) = rho 38224 - rho 38225 - rho 38226 := by
    linear_combination r5472
  have haddx :
      rho 38228 * (1 + 3021 * (rho 38223 * seg48Out0AccX76 rho) * (rho 38222 * seg48Out0AccY76 rho)) =
        rho 38223 * seg48Out0AccX76 rho + rho 38222 * seg48Out0AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38229 * (1 - 3021 * (rho 38223 * seg48Out0AccX76 rho) * (rho 38222 * seg48Out0AccY76 rho)) =
        (-1) * (rho 38223 * seg48Out0AccX76 rho) - rho 38222 * seg48Out0AccY76 rho +
          (seg48Out0AccY76 rho - seg48Out0AccX76 rho * (-1)) * (rho 38222 + rho 38223) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38229 * (1 - rho 38227) = rho 38224 - rho 38225 - rho 38226 := ha5
      _ = (-1) * rho 38225 - rho 38226 + (seg48Out0AccY76 rho - seg48Out0AccX76 rho * (-1)) *
          (rho 38222 + rho 38223) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX77 rho = seg48Out0AccX76 rho - Bool.toZMod bit * (seg48Out0AccX76 rho - rho 38228) := by
    have hd : rho 38230 = Bool.toZMod bit * (rho 38228 - seg48Out0AccX76 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX76
      linear_combination -r5473
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY77 rho = seg48Out0AccY76 rho - Bool.toZMod bit * (seg48Out0AccY76 rho - rho 38229) := by
    have hd : rho 38231 = Bool.toZMod bit * (rho 38229 - seg48Out0AccY76 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY76
      linear_combination -r5474
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38222 * rho 38223 = rho 38232 := by linear_combination r5475
  have hd1 : rho 38222 * rho 38222 = rho 38233 := by linear_combination r5476
  have hd2 : rho 38223 * rho 38223 = rho 38234 := by linear_combination r5477
  have hd3 : rho 38235 * (rho 38223 * rho 38223 + rho 38222 * rho 38222 * (-1)) =
      2 * (rho 38222 * rho 38223) := by
    rw [hd0, hd1, hd2]
    linear_combination r5478
  have hd4 : rho 38236 * (2 - (rho 38223 * rho 38223 + rho 38222 * rho 38222 * (-1))) =
      rho 38223 * rho 38223 - rho 38222 * rho 38222 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5479
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX76 rho, seg48Out0AccY76 rho⟩ ⟨rho 38222, rho 38223⟩
    ⟨rho 38228, rho 38229⟩ ⟨seg48Out0AccX77 rho, seg48Out0AccY77 rho⟩ ⟨rho 38235, rho 38236⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c6 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg48Out0_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg48Out0_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg48Out0_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg48Out0_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg48Out0_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg48Out0_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg48Out0_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg48Out0_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg48Out0_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg48Out0_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
