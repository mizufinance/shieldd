import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5337 rho ∧ Seg52.relationRow5338 rho ∧ Seg52.relationRow5339 rho ∧ Seg52.relationRow5340 rho ∧ Seg52.relationRow5341 rho ∧ Seg52.relationRow5342 rho ∧ Seg52.relationRow5343 rho ∧ Seg52.relationRow5344 rho ∧ Seg52.relationRow5345 rho ∧ Seg52.relationRow5346 rho ∧ Seg52.relationRow5347 rho ∧ Seg52.relationRow5348 rho ∧ Seg52.relationRow5349 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349⟩

theorem seg52Out0_rung66 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48812 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49724, rho 49725⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 49724, rho 49725⟩
        ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 49737, rho 49738⟩ := by
  obtain ⟨r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349⟩ := seg52Out0_rows66 rho h
  unfold Seg52.relationRow5337 at r5337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337

  unfold Seg52.relationRow5338 at r5338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338

  unfold Seg52.relationRow5339 at r5339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5339

  unfold Seg52.relationRow5340 at r5340

  unfold Seg52.relationRow5341 at r5341

  unfold Seg52.relationRow5342 at r5342

  unfold Seg52.relationRow5343 at r5343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343

  unfold Seg52.relationRow5344 at r5344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5344

  unfold Seg52.relationRow5345 at r5345

  unfold Seg52.relationRow5346 at r5346

  unfold Seg52.relationRow5347 at r5347

  unfold Seg52.relationRow5348 at r5348

  unfold Seg52.relationRow5349 at r5349

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX67 rho = seg52Out0AccX66 rho + rho 49732 := by
    unfold seg52Out0AccX67 seg52Out0AccX66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 66]

    ring

  have hnexty : seg52Out0AccY67 rho = seg52Out0AccY66 rho + rho 49733 := by
    unfold seg52Out0AccY67 seg52Out0AccY66
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 66]

    ring

  have ha0 : (rho 49724 + rho 49725) * (seg52Out0AccX66 rho + seg52Out0AccY66 rho) = rho 49726 := by
    unfold seg52Out0AccX66 seg52Out0AccY66
    linear_combination r5337
  have ha1 : rho 49725 * seg52Out0AccX66 rho = rho 49727 := by
    unfold seg52Out0AccX66
    linear_combination r5338
  have ha2 : rho 49724 * seg52Out0AccY66 rho = rho 49728 := by
    unfold seg52Out0AccY66
    linear_combination r5339
  have ha3 : 3021 * rho 49727 * rho 49728 = rho 49729 := by
    linear_combination r5340
  have ha4 : rho 49730 * (1 + rho 49729) = rho 49727 + rho 49728 := by
    linear_combination r5341
  have ha5 : rho 49731 * (1 - rho 49729) = rho 49726 - rho 49727 - rho 49728 := by
    linear_combination r5342
  have haddx :
      rho 49730 * (1 + 3021 * (rho 49725 * seg52Out0AccX66 rho) * (rho 49724 * seg52Out0AccY66 rho)) =
        rho 49725 * seg52Out0AccX66 rho + rho 49724 * seg52Out0AccY66 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49731 * (1 - 3021 * (rho 49725 * seg52Out0AccX66 rho) * (rho 49724 * seg52Out0AccY66 rho)) =
        (-1) * (rho 49725 * seg52Out0AccX66 rho) - rho 49724 * seg52Out0AccY66 rho +
          (seg52Out0AccY66 rho - seg52Out0AccX66 rho * (-1)) * (rho 49724 + rho 49725) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49731 * (1 - rho 49729) = rho 49726 - rho 49727 - rho 49728 := ha5
      _ = (-1) * rho 49727 - rho 49728 + (seg52Out0AccY66 rho - seg52Out0AccX66 rho * (-1)) *
          (rho 49724 + rho 49725) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX67 rho = seg52Out0AccX66 rho - Bool.toZMod bit * (seg52Out0AccX66 rho - rho 49730) := by
    have hd : rho 49732 = Bool.toZMod bit * (rho 49730 - seg52Out0AccX66 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX66
      linear_combination -r5343
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY67 rho = seg52Out0AccY66 rho - Bool.toZMod bit * (seg52Out0AccY66 rho - rho 49731) := by
    have hd : rho 49733 = Bool.toZMod bit * (rho 49731 - seg52Out0AccY66 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY66
      linear_combination -r5344
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49724 * rho 49725 = rho 49734 := by linear_combination r5345
  have hd1 : rho 49724 * rho 49724 = rho 49735 := by linear_combination r5346
  have hd2 : rho 49725 * rho 49725 = rho 49736 := by linear_combination r5347
  have hd3 : rho 49737 * (rho 49725 * rho 49725 + rho 49724 * rho 49724 * (-1)) =
      2 * (rho 49724 * rho 49725) := by
    rw [hd0, hd1, hd2]
    linear_combination r5348
  have hd4 : rho 49738 * (2 - (rho 49725 * rho 49725 + rho 49724 * rho 49724 * (-1))) =
      rho 49725 * rho 49725 - rho 49724 * rho 49724 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5349
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 49724, rho 49725⟩
    ⟨rho 49730, rho 49731⟩ ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 49737, rho 49738⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5350 rho ∧ Seg52.relationRow5351 rho ∧ Seg52.relationRow5352 rho ∧ Seg52.relationRow5353 rho ∧ Seg52.relationRow5354 rho ∧ Seg52.relationRow5355 rho ∧ Seg52.relationRow5356 rho ∧ Seg52.relationRow5357 rho ∧ Seg52.relationRow5358 rho ∧ Seg52.relationRow5359 rho ∧ Seg52.relationRow5360 rho ∧ Seg52.relationRow5361 rho ∧ Seg52.relationRow5362 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg52Out0_rung67 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48813 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49737, rho 49738⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 49737, rho 49738⟩
        ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 49750, rho 49751⟩ := by
  obtain ⟨r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg52Out0_rows67 rho h
  unfold Seg52.relationRow5350 at r5350

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5350

  unfold Seg52.relationRow5351 at r5351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351

  unfold Seg52.relationRow5352 at r5352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352

  unfold Seg52.relationRow5353 at r5353

  unfold Seg52.relationRow5354 at r5354

  unfold Seg52.relationRow5355 at r5355

  unfold Seg52.relationRow5356 at r5356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356

  unfold Seg52.relationRow5357 at r5357

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357

  unfold Seg52.relationRow5358 at r5358

  unfold Seg52.relationRow5359 at r5359

  unfold Seg52.relationRow5360 at r5360

  unfold Seg52.relationRow5361 at r5361

  unfold Seg52.relationRow5362 at r5362

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX68 rho = seg52Out0AccX67 rho + rho 49745 := by
    unfold seg52Out0AccX68 seg52Out0AccX67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 67]

    ring

  have hnexty : seg52Out0AccY68 rho = seg52Out0AccY67 rho + rho 49746 := by
    unfold seg52Out0AccY68 seg52Out0AccY67
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 67]

    ring

  have ha0 : (rho 49737 + rho 49738) * (seg52Out0AccX67 rho + seg52Out0AccY67 rho) = rho 49739 := by
    unfold seg52Out0AccX67 seg52Out0AccY67
    linear_combination r5350
  have ha1 : rho 49738 * seg52Out0AccX67 rho = rho 49740 := by
    unfold seg52Out0AccX67
    linear_combination r5351
  have ha2 : rho 49737 * seg52Out0AccY67 rho = rho 49741 := by
    unfold seg52Out0AccY67
    linear_combination r5352
  have ha3 : 3021 * rho 49740 * rho 49741 = rho 49742 := by
    linear_combination r5353
  have ha4 : rho 49743 * (1 + rho 49742) = rho 49740 + rho 49741 := by
    linear_combination r5354
  have ha5 : rho 49744 * (1 - rho 49742) = rho 49739 - rho 49740 - rho 49741 := by
    linear_combination r5355
  have haddx :
      rho 49743 * (1 + 3021 * (rho 49738 * seg52Out0AccX67 rho) * (rho 49737 * seg52Out0AccY67 rho)) =
        rho 49738 * seg52Out0AccX67 rho + rho 49737 * seg52Out0AccY67 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49744 * (1 - 3021 * (rho 49738 * seg52Out0AccX67 rho) * (rho 49737 * seg52Out0AccY67 rho)) =
        (-1) * (rho 49738 * seg52Out0AccX67 rho) - rho 49737 * seg52Out0AccY67 rho +
          (seg52Out0AccY67 rho - seg52Out0AccX67 rho * (-1)) * (rho 49737 + rho 49738) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49744 * (1 - rho 49742) = rho 49739 - rho 49740 - rho 49741 := ha5
      _ = (-1) * rho 49740 - rho 49741 + (seg52Out0AccY67 rho - seg52Out0AccX67 rho * (-1)) *
          (rho 49737 + rho 49738) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX68 rho = seg52Out0AccX67 rho - Bool.toZMod bit * (seg52Out0AccX67 rho - rho 49743) := by
    have hd : rho 49745 = Bool.toZMod bit * (rho 49743 - seg52Out0AccX67 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX67
      linear_combination -r5356
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY68 rho = seg52Out0AccY67 rho - Bool.toZMod bit * (seg52Out0AccY67 rho - rho 49744) := by
    have hd : rho 49746 = Bool.toZMod bit * (rho 49744 - seg52Out0AccY67 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY67
      linear_combination -r5357
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49737 * rho 49738 = rho 49747 := by linear_combination r5358
  have hd1 : rho 49737 * rho 49737 = rho 49748 := by linear_combination r5359
  have hd2 : rho 49738 * rho 49738 = rho 49749 := by linear_combination r5360
  have hd3 : rho 49750 * (rho 49738 * rho 49738 + rho 49737 * rho 49737 * (-1)) =
      2 * (rho 49737 * rho 49738) := by
    rw [hd0, hd1, hd2]
    linear_combination r5361
  have hd4 : rho 49751 * (2 - (rho 49738 * rho 49738 + rho 49737 * rho 49737 * (-1))) =
      rho 49738 * rho 49738 - rho 49737 * rho 49737 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5362
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX67 rho, seg52Out0AccY67 rho⟩ ⟨rho 49737, rho 49738⟩
    ⟨rho 49743, rho 49744⟩ ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 49750, rho 49751⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5363 rho ∧ Seg52.relationRow5364 rho ∧ Seg52.relationRow5365 rho ∧ Seg52.relationRow5366 rho ∧ Seg52.relationRow5367 rho ∧ Seg52.relationRow5368 rho ∧ Seg52.relationRow5369 rho ∧ Seg52.relationRow5370 rho ∧ Seg52.relationRow5371 rho ∧ Seg52.relationRow5372 rho ∧ Seg52.relationRow5373 rho ∧ Seg52.relationRow5374 rho ∧ Seg52.relationRow5375 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375⟩

theorem seg52Out0_rung68 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48814 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49750, rho 49751⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 49750, rho 49751⟩
        ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 49763, rho 49764⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375⟩ := seg52Out0_rows68 rho h
  unfold Seg52.relationRow5363 at r5363

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363

  unfold Seg52.relationRow5364 at r5364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5364

  unfold Seg52.relationRow5365 at r5365

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365

  unfold Seg52.relationRow5366 at r5366

  unfold Seg52.relationRow5367 at r5367

  unfold Seg52.relationRow5368 at r5368

  unfold Seg52.relationRow5369 at r5369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5369

  unfold Seg52.relationRow5370 at r5370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370

  unfold Seg52.relationRow5371 at r5371

  unfold Seg52.relationRow5372 at r5372

  unfold Seg52.relationRow5373 at r5373

  unfold Seg52.relationRow5374 at r5374

  unfold Seg52.relationRow5375 at r5375

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX69 rho = seg52Out0AccX68 rho + rho 49758 := by
    unfold seg52Out0AccX69 seg52Out0AccX68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 68]

    ring

  have hnexty : seg52Out0AccY69 rho = seg52Out0AccY68 rho + rho 49759 := by
    unfold seg52Out0AccY69 seg52Out0AccY68
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 68]

    ring

  have ha0 : (rho 49750 + rho 49751) * (seg52Out0AccX68 rho + seg52Out0AccY68 rho) = rho 49752 := by
    unfold seg52Out0AccX68 seg52Out0AccY68
    linear_combination r5363
  have ha1 : rho 49751 * seg52Out0AccX68 rho = rho 49753 := by
    unfold seg52Out0AccX68
    linear_combination r5364
  have ha2 : rho 49750 * seg52Out0AccY68 rho = rho 49754 := by
    unfold seg52Out0AccY68
    linear_combination r5365
  have ha3 : 3021 * rho 49753 * rho 49754 = rho 49755 := by
    linear_combination r5366
  have ha4 : rho 49756 * (1 + rho 49755) = rho 49753 + rho 49754 := by
    linear_combination r5367
  have ha5 : rho 49757 * (1 - rho 49755) = rho 49752 - rho 49753 - rho 49754 := by
    linear_combination r5368
  have haddx :
      rho 49756 * (1 + 3021 * (rho 49751 * seg52Out0AccX68 rho) * (rho 49750 * seg52Out0AccY68 rho)) =
        rho 49751 * seg52Out0AccX68 rho + rho 49750 * seg52Out0AccY68 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49757 * (1 - 3021 * (rho 49751 * seg52Out0AccX68 rho) * (rho 49750 * seg52Out0AccY68 rho)) =
        (-1) * (rho 49751 * seg52Out0AccX68 rho) - rho 49750 * seg52Out0AccY68 rho +
          (seg52Out0AccY68 rho - seg52Out0AccX68 rho * (-1)) * (rho 49750 + rho 49751) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49757 * (1 - rho 49755) = rho 49752 - rho 49753 - rho 49754 := ha5
      _ = (-1) * rho 49753 - rho 49754 + (seg52Out0AccY68 rho - seg52Out0AccX68 rho * (-1)) *
          (rho 49750 + rho 49751) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX69 rho = seg52Out0AccX68 rho - Bool.toZMod bit * (seg52Out0AccX68 rho - rho 49756) := by
    have hd : rho 49758 = Bool.toZMod bit * (rho 49756 - seg52Out0AccX68 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX68
      linear_combination -r5369
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY69 rho = seg52Out0AccY68 rho - Bool.toZMod bit * (seg52Out0AccY68 rho - rho 49757) := by
    have hd : rho 49759 = Bool.toZMod bit * (rho 49757 - seg52Out0AccY68 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY68
      linear_combination -r5370
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49750 * rho 49751 = rho 49760 := by linear_combination r5371
  have hd1 : rho 49750 * rho 49750 = rho 49761 := by linear_combination r5372
  have hd2 : rho 49751 * rho 49751 = rho 49762 := by linear_combination r5373
  have hd3 : rho 49763 * (rho 49751 * rho 49751 + rho 49750 * rho 49750 * (-1)) =
      2 * (rho 49750 * rho 49751) := by
    rw [hd0, hd1, hd2]
    linear_combination r5374
  have hd4 : rho 49764 * (2 - (rho 49751 * rho 49751 + rho 49750 * rho 49750 * (-1))) =
      rho 49751 * rho 49751 - rho 49750 * rho 49750 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5375
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX68 rho, seg52Out0AccY68 rho⟩ ⟨rho 49750, rho 49751⟩
    ⟨rho 49756, rho 49757⟩ ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 49763, rho 49764⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5376 rho ∧ Seg52.relationRow5377 rho ∧ Seg52.relationRow5378 rho ∧ Seg52.relationRow5379 rho ∧ Seg52.relationRow5380 rho ∧ Seg52.relationRow5381 rho ∧ Seg52.relationRow5382 rho ∧ Seg52.relationRow5383 rho ∧ Seg52.relationRow5384 rho ∧ Seg52.relationRow5385 rho ∧ Seg52.relationRow5386 rho ∧ Seg52.relationRow5387 rho ∧ Seg52.relationRow5388 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388⟩

theorem seg52Out0_rung69 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48815 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49763, rho 49764⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 49763, rho 49764⟩
        ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 49776, rho 49777⟩ := by
  obtain ⟨r5376, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388⟩ := seg52Out0_rows69 rho h
  unfold Seg52.relationRow5376 at r5376

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5376

  unfold Seg52.relationRow5377 at r5377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377

  unfold Seg52.relationRow5378 at r5378

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5378

  unfold Seg52.relationRow5379 at r5379

  unfold Seg52.relationRow5380 at r5380

  unfold Seg52.relationRow5381 at r5381

  unfold Seg52.relationRow5382 at r5382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5382

  unfold Seg52.relationRow5383 at r5383

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5383

  unfold Seg52.relationRow5384 at r5384

  unfold Seg52.relationRow5385 at r5385

  unfold Seg52.relationRow5386 at r5386

  unfold Seg52.relationRow5387 at r5387

  unfold Seg52.relationRow5388 at r5388

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX70 rho = seg52Out0AccX69 rho + rho 49771 := by
    unfold seg52Out0AccX70 seg52Out0AccX69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 69]

    ring

  have hnexty : seg52Out0AccY70 rho = seg52Out0AccY69 rho + rho 49772 := by
    unfold seg52Out0AccY70 seg52Out0AccY69
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 69]

    ring

  have ha0 : (rho 49763 + rho 49764) * (seg52Out0AccX69 rho + seg52Out0AccY69 rho) = rho 49765 := by
    unfold seg52Out0AccX69 seg52Out0AccY69
    linear_combination r5376
  have ha1 : rho 49764 * seg52Out0AccX69 rho = rho 49766 := by
    unfold seg52Out0AccX69
    linear_combination r5377
  have ha2 : rho 49763 * seg52Out0AccY69 rho = rho 49767 := by
    unfold seg52Out0AccY69
    linear_combination r5378
  have ha3 : 3021 * rho 49766 * rho 49767 = rho 49768 := by
    linear_combination r5379
  have ha4 : rho 49769 * (1 + rho 49768) = rho 49766 + rho 49767 := by
    linear_combination r5380
  have ha5 : rho 49770 * (1 - rho 49768) = rho 49765 - rho 49766 - rho 49767 := by
    linear_combination r5381
  have haddx :
      rho 49769 * (1 + 3021 * (rho 49764 * seg52Out0AccX69 rho) * (rho 49763 * seg52Out0AccY69 rho)) =
        rho 49764 * seg52Out0AccX69 rho + rho 49763 * seg52Out0AccY69 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49770 * (1 - 3021 * (rho 49764 * seg52Out0AccX69 rho) * (rho 49763 * seg52Out0AccY69 rho)) =
        (-1) * (rho 49764 * seg52Out0AccX69 rho) - rho 49763 * seg52Out0AccY69 rho +
          (seg52Out0AccY69 rho - seg52Out0AccX69 rho * (-1)) * (rho 49763 + rho 49764) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49770 * (1 - rho 49768) = rho 49765 - rho 49766 - rho 49767 := ha5
      _ = (-1) * rho 49766 - rho 49767 + (seg52Out0AccY69 rho - seg52Out0AccX69 rho * (-1)) *
          (rho 49763 + rho 49764) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX70 rho = seg52Out0AccX69 rho - Bool.toZMod bit * (seg52Out0AccX69 rho - rho 49769) := by
    have hd : rho 49771 = Bool.toZMod bit * (rho 49769 - seg52Out0AccX69 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX69
      linear_combination -r5382
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY70 rho = seg52Out0AccY69 rho - Bool.toZMod bit * (seg52Out0AccY69 rho - rho 49770) := by
    have hd : rho 49772 = Bool.toZMod bit * (rho 49770 - seg52Out0AccY69 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY69
      linear_combination -r5383
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49763 * rho 49764 = rho 49773 := by linear_combination r5384
  have hd1 : rho 49763 * rho 49763 = rho 49774 := by linear_combination r5385
  have hd2 : rho 49764 * rho 49764 = rho 49775 := by linear_combination r5386
  have hd3 : rho 49776 * (rho 49764 * rho 49764 + rho 49763 * rho 49763 * (-1)) =
      2 * (rho 49763 * rho 49764) := by
    rw [hd0, hd1, hd2]
    linear_combination r5387
  have hd4 : rho 49777 * (2 - (rho 49764 * rho 49764 + rho 49763 * rho 49763 * (-1))) =
      rho 49764 * rho 49764 - rho 49763 * rho 49763 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5388
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX69 rho, seg52Out0AccY69 rho⟩ ⟨rho 49763, rho 49764⟩
    ⟨rho 49769, rho 49770⟩ ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 49776, rho 49777⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5389 rho ∧ Seg52.relationRow5390 rho ∧ Seg52.relationRow5391 rho ∧ Seg52.relationRow5392 rho ∧ Seg52.relationRow5393 rho ∧ Seg52.relationRow5394 rho ∧ Seg52.relationRow5395 rho ∧ Seg52.relationRow5396 rho ∧ Seg52.relationRow5397 rho ∧ Seg52.relationRow5398 rho ∧ Seg52.relationRow5399 rho ∧ Seg52.relationRow5400 rho ∧ Seg52.relationRow5401 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401⟩

theorem seg52Out0_rung70 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48816 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49776, rho 49777⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 49776, rho 49777⟩
        ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 49789, rho 49790⟩ := by
  obtain ⟨r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401⟩ := seg52Out0_rows70 rho h
  unfold Seg52.relationRow5389 at r5389

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5389

  unfold Seg52.relationRow5390 at r5390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5390

  unfold Seg52.relationRow5391 at r5391

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391

  unfold Seg52.relationRow5392 at r5392

  unfold Seg52.relationRow5393 at r5393

  unfold Seg52.relationRow5394 at r5394

  unfold Seg52.relationRow5395 at r5395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5395

  unfold Seg52.relationRow5396 at r5396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5396

  unfold Seg52.relationRow5397 at r5397

  unfold Seg52.relationRow5398 at r5398

  unfold Seg52.relationRow5399 at r5399

  unfold Seg52.relationRow5400 at r5400

  unfold Seg52.relationRow5401 at r5401

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX71 rho = seg52Out0AccX70 rho + rho 49784 := by
    unfold seg52Out0AccX71 seg52Out0AccX70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 70]

    ring

  have hnexty : seg52Out0AccY71 rho = seg52Out0AccY70 rho + rho 49785 := by
    unfold seg52Out0AccY71 seg52Out0AccY70
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 70]

    ring

  have ha0 : (rho 49776 + rho 49777) * (seg52Out0AccX70 rho + seg52Out0AccY70 rho) = rho 49778 := by
    unfold seg52Out0AccX70 seg52Out0AccY70
    linear_combination r5389
  have ha1 : rho 49777 * seg52Out0AccX70 rho = rho 49779 := by
    unfold seg52Out0AccX70
    linear_combination r5390
  have ha2 : rho 49776 * seg52Out0AccY70 rho = rho 49780 := by
    unfold seg52Out0AccY70
    linear_combination r5391
  have ha3 : 3021 * rho 49779 * rho 49780 = rho 49781 := by
    linear_combination r5392
  have ha4 : rho 49782 * (1 + rho 49781) = rho 49779 + rho 49780 := by
    linear_combination r5393
  have ha5 : rho 49783 * (1 - rho 49781) = rho 49778 - rho 49779 - rho 49780 := by
    linear_combination r5394
  have haddx :
      rho 49782 * (1 + 3021 * (rho 49777 * seg52Out0AccX70 rho) * (rho 49776 * seg52Out0AccY70 rho)) =
        rho 49777 * seg52Out0AccX70 rho + rho 49776 * seg52Out0AccY70 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49783 * (1 - 3021 * (rho 49777 * seg52Out0AccX70 rho) * (rho 49776 * seg52Out0AccY70 rho)) =
        (-1) * (rho 49777 * seg52Out0AccX70 rho) - rho 49776 * seg52Out0AccY70 rho +
          (seg52Out0AccY70 rho - seg52Out0AccX70 rho * (-1)) * (rho 49776 + rho 49777) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49783 * (1 - rho 49781) = rho 49778 - rho 49779 - rho 49780 := ha5
      _ = (-1) * rho 49779 - rho 49780 + (seg52Out0AccY70 rho - seg52Out0AccX70 rho * (-1)) *
          (rho 49776 + rho 49777) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX71 rho = seg52Out0AccX70 rho - Bool.toZMod bit * (seg52Out0AccX70 rho - rho 49782) := by
    have hd : rho 49784 = Bool.toZMod bit * (rho 49782 - seg52Out0AccX70 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX70
      linear_combination -r5395
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY71 rho = seg52Out0AccY70 rho - Bool.toZMod bit * (seg52Out0AccY70 rho - rho 49783) := by
    have hd : rho 49785 = Bool.toZMod bit * (rho 49783 - seg52Out0AccY70 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY70
      linear_combination -r5396
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49776 * rho 49777 = rho 49786 := by linear_combination r5397
  have hd1 : rho 49776 * rho 49776 = rho 49787 := by linear_combination r5398
  have hd2 : rho 49777 * rho 49777 = rho 49788 := by linear_combination r5399
  have hd3 : rho 49789 * (rho 49777 * rho 49777 + rho 49776 * rho 49776 * (-1)) =
      2 * (rho 49776 * rho 49777) := by
    rw [hd0, hd1, hd2]
    linear_combination r5400
  have hd4 : rho 49790 * (2 - (rho 49777 * rho 49777 + rho 49776 * rho 49776 * (-1))) =
      rho 49777 * rho 49777 - rho 49776 * rho 49776 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5401
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX70 rho, seg52Out0AccY70 rho⟩ ⟨rho 49776, rho 49777⟩
    ⟨rho 49782, rho 49783⟩ ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 49789, rho 49790⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5402 rho ∧ Seg52.relationRow5403 rho ∧ Seg52.relationRow5404 rho ∧ Seg52.relationRow5405 rho ∧ Seg52.relationRow5406 rho ∧ Seg52.relationRow5407 rho ∧ Seg52.relationRow5408 rho ∧ Seg52.relationRow5409 rho ∧ Seg52.relationRow5410 rho ∧ Seg52.relationRow5411 rho ∧ Seg52.relationRow5412 rho ∧ Seg52.relationRow5413 rho ∧ Seg52.relationRow5414 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414⟩

theorem seg52Out0_rung71 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48817 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49789, rho 49790⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 49789, rho 49790⟩
        ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 49802, rho 49803⟩ := by
  obtain ⟨r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414⟩ := seg52Out0_rows71 rho h
  unfold Seg52.relationRow5402 at r5402

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5402

  unfold Seg52.relationRow5403 at r5403

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5403

  unfold Seg52.relationRow5404 at r5404

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5404

  unfold Seg52.relationRow5405 at r5405

  unfold Seg52.relationRow5406 at r5406

  unfold Seg52.relationRow5407 at r5407

  unfold Seg52.relationRow5408 at r5408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408

  unfold Seg52.relationRow5409 at r5409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5409

  unfold Seg52.relationRow5410 at r5410

  unfold Seg52.relationRow5411 at r5411

  unfold Seg52.relationRow5412 at r5412

  unfold Seg52.relationRow5413 at r5413

  unfold Seg52.relationRow5414 at r5414

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX72 rho = seg52Out0AccX71 rho + rho 49797 := by
    unfold seg52Out0AccX72 seg52Out0AccX71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 71]

    ring

  have hnexty : seg52Out0AccY72 rho = seg52Out0AccY71 rho + rho 49798 := by
    unfold seg52Out0AccY72 seg52Out0AccY71
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 71]

    ring

  have ha0 : (rho 49789 + rho 49790) * (seg52Out0AccX71 rho + seg52Out0AccY71 rho) = rho 49791 := by
    unfold seg52Out0AccX71 seg52Out0AccY71
    linear_combination r5402
  have ha1 : rho 49790 * seg52Out0AccX71 rho = rho 49792 := by
    unfold seg52Out0AccX71
    linear_combination r5403
  have ha2 : rho 49789 * seg52Out0AccY71 rho = rho 49793 := by
    unfold seg52Out0AccY71
    linear_combination r5404
  have ha3 : 3021 * rho 49792 * rho 49793 = rho 49794 := by
    linear_combination r5405
  have ha4 : rho 49795 * (1 + rho 49794) = rho 49792 + rho 49793 := by
    linear_combination r5406
  have ha5 : rho 49796 * (1 - rho 49794) = rho 49791 - rho 49792 - rho 49793 := by
    linear_combination r5407
  have haddx :
      rho 49795 * (1 + 3021 * (rho 49790 * seg52Out0AccX71 rho) * (rho 49789 * seg52Out0AccY71 rho)) =
        rho 49790 * seg52Out0AccX71 rho + rho 49789 * seg52Out0AccY71 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49796 * (1 - 3021 * (rho 49790 * seg52Out0AccX71 rho) * (rho 49789 * seg52Out0AccY71 rho)) =
        (-1) * (rho 49790 * seg52Out0AccX71 rho) - rho 49789 * seg52Out0AccY71 rho +
          (seg52Out0AccY71 rho - seg52Out0AccX71 rho * (-1)) * (rho 49789 + rho 49790) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49796 * (1 - rho 49794) = rho 49791 - rho 49792 - rho 49793 := ha5
      _ = (-1) * rho 49792 - rho 49793 + (seg52Out0AccY71 rho - seg52Out0AccX71 rho * (-1)) *
          (rho 49789 + rho 49790) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX72 rho = seg52Out0AccX71 rho - Bool.toZMod bit * (seg52Out0AccX71 rho - rho 49795) := by
    have hd : rho 49797 = Bool.toZMod bit * (rho 49795 - seg52Out0AccX71 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX71
      linear_combination -r5408
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY72 rho = seg52Out0AccY71 rho - Bool.toZMod bit * (seg52Out0AccY71 rho - rho 49796) := by
    have hd : rho 49798 = Bool.toZMod bit * (rho 49796 - seg52Out0AccY71 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY71
      linear_combination -r5409
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49789 * rho 49790 = rho 49799 := by linear_combination r5410
  have hd1 : rho 49789 * rho 49789 = rho 49800 := by linear_combination r5411
  have hd2 : rho 49790 * rho 49790 = rho 49801 := by linear_combination r5412
  have hd3 : rho 49802 * (rho 49790 * rho 49790 + rho 49789 * rho 49789 * (-1)) =
      2 * (rho 49789 * rho 49790) := by
    rw [hd0, hd1, hd2]
    linear_combination r5413
  have hd4 : rho 49803 * (2 - (rho 49790 * rho 49790 + rho 49789 * rho 49789 * (-1))) =
      rho 49790 * rho 49790 - rho 49789 * rho 49789 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5414
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX71 rho, seg52Out0AccY71 rho⟩ ⟨rho 49789, rho 49790⟩
    ⟨rho 49795, rho 49796⟩ ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 49802, rho 49803⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5415 rho ∧ Seg52.relationRow5416 rho ∧ Seg52.relationRow5417 rho ∧ Seg52.relationRow5418 rho ∧ Seg52.relationRow5419 rho ∧ Seg52.relationRow5420 rho ∧ Seg52.relationRow5421 rho ∧ Seg52.relationRow5422 rho ∧ Seg52.relationRow5423 rho ∧ Seg52.relationRow5424 rho ∧ Seg52.relationRow5425 rho ∧ Seg52.relationRow5426 rho ∧ Seg52.relationRow5427 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427⟩

theorem seg52Out0_rung72 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48818 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49802, rho 49803⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 49802, rho 49803⟩
        ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 49815, rho 49816⟩ := by
  obtain ⟨r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427⟩ := seg52Out0_rows72 rho h
  unfold Seg52.relationRow5415 at r5415

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5415

  unfold Seg52.relationRow5416 at r5416

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5416

  unfold Seg52.relationRow5417 at r5417

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5417

  unfold Seg52.relationRow5418 at r5418

  unfold Seg52.relationRow5419 at r5419

  unfold Seg52.relationRow5420 at r5420

  unfold Seg52.relationRow5421 at r5421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421

  unfold Seg52.relationRow5422 at r5422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422

  unfold Seg52.relationRow5423 at r5423

  unfold Seg52.relationRow5424 at r5424

  unfold Seg52.relationRow5425 at r5425

  unfold Seg52.relationRow5426 at r5426

  unfold Seg52.relationRow5427 at r5427

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX73 rho = seg52Out0AccX72 rho + rho 49810 := by
    unfold seg52Out0AccX73 seg52Out0AccX72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 72]

    ring

  have hnexty : seg52Out0AccY73 rho = seg52Out0AccY72 rho + rho 49811 := by
    unfold seg52Out0AccY73 seg52Out0AccY72
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 72]

    ring

  have ha0 : (rho 49802 + rho 49803) * (seg52Out0AccX72 rho + seg52Out0AccY72 rho) = rho 49804 := by
    unfold seg52Out0AccX72 seg52Out0AccY72
    linear_combination r5415
  have ha1 : rho 49803 * seg52Out0AccX72 rho = rho 49805 := by
    unfold seg52Out0AccX72
    linear_combination r5416
  have ha2 : rho 49802 * seg52Out0AccY72 rho = rho 49806 := by
    unfold seg52Out0AccY72
    linear_combination r5417
  have ha3 : 3021 * rho 49805 * rho 49806 = rho 49807 := by
    linear_combination r5418
  have ha4 : rho 49808 * (1 + rho 49807) = rho 49805 + rho 49806 := by
    linear_combination r5419
  have ha5 : rho 49809 * (1 - rho 49807) = rho 49804 - rho 49805 - rho 49806 := by
    linear_combination r5420
  have haddx :
      rho 49808 * (1 + 3021 * (rho 49803 * seg52Out0AccX72 rho) * (rho 49802 * seg52Out0AccY72 rho)) =
        rho 49803 * seg52Out0AccX72 rho + rho 49802 * seg52Out0AccY72 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49809 * (1 - 3021 * (rho 49803 * seg52Out0AccX72 rho) * (rho 49802 * seg52Out0AccY72 rho)) =
        (-1) * (rho 49803 * seg52Out0AccX72 rho) - rho 49802 * seg52Out0AccY72 rho +
          (seg52Out0AccY72 rho - seg52Out0AccX72 rho * (-1)) * (rho 49802 + rho 49803) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49809 * (1 - rho 49807) = rho 49804 - rho 49805 - rho 49806 := ha5
      _ = (-1) * rho 49805 - rho 49806 + (seg52Out0AccY72 rho - seg52Out0AccX72 rho * (-1)) *
          (rho 49802 + rho 49803) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX73 rho = seg52Out0AccX72 rho - Bool.toZMod bit * (seg52Out0AccX72 rho - rho 49808) := by
    have hd : rho 49810 = Bool.toZMod bit * (rho 49808 - seg52Out0AccX72 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX72
      linear_combination -r5421
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY73 rho = seg52Out0AccY72 rho - Bool.toZMod bit * (seg52Out0AccY72 rho - rho 49809) := by
    have hd : rho 49811 = Bool.toZMod bit * (rho 49809 - seg52Out0AccY72 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY72
      linear_combination -r5422
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49802 * rho 49803 = rho 49812 := by linear_combination r5423
  have hd1 : rho 49802 * rho 49802 = rho 49813 := by linear_combination r5424
  have hd2 : rho 49803 * rho 49803 = rho 49814 := by linear_combination r5425
  have hd3 : rho 49815 * (rho 49803 * rho 49803 + rho 49802 * rho 49802 * (-1)) =
      2 * (rho 49802 * rho 49803) := by
    rw [hd0, hd1, hd2]
    linear_combination r5426
  have hd4 : rho 49816 * (2 - (rho 49803 * rho 49803 + rho 49802 * rho 49802 * (-1))) =
      rho 49803 * rho 49803 - rho 49802 * rho 49802 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5427
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX72 rho, seg52Out0AccY72 rho⟩ ⟨rho 49802, rho 49803⟩
    ⟨rho 49808, rho 49809⟩ ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 49815, rho 49816⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5428 rho ∧ Seg52.relationRow5429 rho ∧ Seg52.relationRow5430 rho ∧ Seg52.relationRow5431 rho ∧ Seg52.relationRow5432 rho ∧ Seg52.relationRow5433 rho ∧ Seg52.relationRow5434 rho ∧ Seg52.relationRow5435 rho ∧ Seg52.relationRow5436 rho ∧ Seg52.relationRow5437 rho ∧ Seg52.relationRow5438 rho ∧ Seg52.relationRow5439 rho ∧ Seg52.relationRow5440 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩

  unfold Seg52.relationPart68 at p68

  rcases p68 with ⟨r5440, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440⟩

theorem seg52Out0_rung73 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48819 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49815, rho 49816⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 49815, rho 49816⟩
        ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 49828, rho 49829⟩ := by
  obtain ⟨r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440⟩ := seg52Out0_rows73 rho h
  unfold Seg52.relationRow5428 at r5428

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5428

  unfold Seg52.relationRow5429 at r5429

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5429

  unfold Seg52.relationRow5430 at r5430

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5430

  unfold Seg52.relationRow5431 at r5431

  unfold Seg52.relationRow5432 at r5432

  unfold Seg52.relationRow5433 at r5433

  unfold Seg52.relationRow5434 at r5434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5434

  unfold Seg52.relationRow5435 at r5435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435

  unfold Seg52.relationRow5436 at r5436

  unfold Seg52.relationRow5437 at r5437

  unfold Seg52.relationRow5438 at r5438

  unfold Seg52.relationRow5439 at r5439

  unfold Seg52.relationRow5440 at r5440

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX74 rho = seg52Out0AccX73 rho + rho 49823 := by
    unfold seg52Out0AccX74 seg52Out0AccX73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 73]

    ring

  have hnexty : seg52Out0AccY74 rho = seg52Out0AccY73 rho + rho 49824 := by
    unfold seg52Out0AccY74 seg52Out0AccY73
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 73]

    ring

  have ha0 : (rho 49815 + rho 49816) * (seg52Out0AccX73 rho + seg52Out0AccY73 rho) = rho 49817 := by
    unfold seg52Out0AccX73 seg52Out0AccY73
    linear_combination r5428
  have ha1 : rho 49816 * seg52Out0AccX73 rho = rho 49818 := by
    unfold seg52Out0AccX73
    linear_combination r5429
  have ha2 : rho 49815 * seg52Out0AccY73 rho = rho 49819 := by
    unfold seg52Out0AccY73
    linear_combination r5430
  have ha3 : 3021 * rho 49818 * rho 49819 = rho 49820 := by
    linear_combination r5431
  have ha4 : rho 49821 * (1 + rho 49820) = rho 49818 + rho 49819 := by
    linear_combination r5432
  have ha5 : rho 49822 * (1 - rho 49820) = rho 49817 - rho 49818 - rho 49819 := by
    linear_combination r5433
  have haddx :
      rho 49821 * (1 + 3021 * (rho 49816 * seg52Out0AccX73 rho) * (rho 49815 * seg52Out0AccY73 rho)) =
        rho 49816 * seg52Out0AccX73 rho + rho 49815 * seg52Out0AccY73 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49822 * (1 - 3021 * (rho 49816 * seg52Out0AccX73 rho) * (rho 49815 * seg52Out0AccY73 rho)) =
        (-1) * (rho 49816 * seg52Out0AccX73 rho) - rho 49815 * seg52Out0AccY73 rho +
          (seg52Out0AccY73 rho - seg52Out0AccX73 rho * (-1)) * (rho 49815 + rho 49816) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49822 * (1 - rho 49820) = rho 49817 - rho 49818 - rho 49819 := ha5
      _ = (-1) * rho 49818 - rho 49819 + (seg52Out0AccY73 rho - seg52Out0AccX73 rho * (-1)) *
          (rho 49815 + rho 49816) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX74 rho = seg52Out0AccX73 rho - Bool.toZMod bit * (seg52Out0AccX73 rho - rho 49821) := by
    have hd : rho 49823 = Bool.toZMod bit * (rho 49821 - seg52Out0AccX73 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX73
      linear_combination -r5434
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY74 rho = seg52Out0AccY73 rho - Bool.toZMod bit * (seg52Out0AccY73 rho - rho 49822) := by
    have hd : rho 49824 = Bool.toZMod bit * (rho 49822 - seg52Out0AccY73 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY73
      linear_combination -r5435
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49815 * rho 49816 = rho 49825 := by linear_combination r5436
  have hd1 : rho 49815 * rho 49815 = rho 49826 := by linear_combination r5437
  have hd2 : rho 49816 * rho 49816 = rho 49827 := by linear_combination r5438
  have hd3 : rho 49828 * (rho 49816 * rho 49816 + rho 49815 * rho 49815 * (-1)) =
      2 * (rho 49815 * rho 49816) := by
    rw [hd0, hd1, hd2]
    linear_combination r5439
  have hd4 : rho 49829 * (2 - (rho 49816 * rho 49816 + rho 49815 * rho 49815 * (-1))) =
      rho 49816 * rho 49816 - rho 49815 * rho 49815 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5440
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX73 rho, seg52Out0AccY73 rho⟩ ⟨rho 49815, rho 49816⟩
    ⟨rho 49821, rho 49822⟩ ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 49828, rho 49829⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5441 rho ∧ Seg52.relationRow5442 rho ∧ Seg52.relationRow5443 rho ∧ Seg52.relationRow5444 rho ∧ Seg52.relationRow5445 rho ∧ Seg52.relationRow5446 rho ∧ Seg52.relationRow5447 rho ∧ Seg52.relationRow5448 rho ∧ Seg52.relationRow5449 rho ∧ Seg52.relationRow5450 rho ∧ Seg52.relationRow5451 rho ∧ Seg52.relationRow5452 rho ∧ Seg52.relationRow5453 rho := by
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

  rcases p68 with ⟨_, r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453⟩

theorem seg52Out0_rung74 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48820 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49828, rho 49829⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 49828, rho 49829⟩
        ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 49841, rho 49842⟩ := by
  obtain ⟨r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453⟩ := seg52Out0_rows74 rho h
  unfold Seg52.relationRow5441 at r5441

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441

  unfold Seg52.relationRow5442 at r5442

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5442

  unfold Seg52.relationRow5443 at r5443

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5443

  unfold Seg52.relationRow5444 at r5444

  unfold Seg52.relationRow5445 at r5445

  unfold Seg52.relationRow5446 at r5446

  unfold Seg52.relationRow5447 at r5447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447

  unfold Seg52.relationRow5448 at r5448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5448

  unfold Seg52.relationRow5449 at r5449

  unfold Seg52.relationRow5450 at r5450

  unfold Seg52.relationRow5451 at r5451

  unfold Seg52.relationRow5452 at r5452

  unfold Seg52.relationRow5453 at r5453

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX75 rho = seg52Out0AccX74 rho + rho 49836 := by
    unfold seg52Out0AccX75 seg52Out0AccX74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 74]

    ring

  have hnexty : seg52Out0AccY75 rho = seg52Out0AccY74 rho + rho 49837 := by
    unfold seg52Out0AccY75 seg52Out0AccY74
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 74]

    ring

  have ha0 : (rho 49828 + rho 49829) * (seg52Out0AccX74 rho + seg52Out0AccY74 rho) = rho 49830 := by
    unfold seg52Out0AccX74 seg52Out0AccY74
    linear_combination r5441
  have ha1 : rho 49829 * seg52Out0AccX74 rho = rho 49831 := by
    unfold seg52Out0AccX74
    linear_combination r5442
  have ha2 : rho 49828 * seg52Out0AccY74 rho = rho 49832 := by
    unfold seg52Out0AccY74
    linear_combination r5443
  have ha3 : 3021 * rho 49831 * rho 49832 = rho 49833 := by
    linear_combination r5444
  have ha4 : rho 49834 * (1 + rho 49833) = rho 49831 + rho 49832 := by
    linear_combination r5445
  have ha5 : rho 49835 * (1 - rho 49833) = rho 49830 - rho 49831 - rho 49832 := by
    linear_combination r5446
  have haddx :
      rho 49834 * (1 + 3021 * (rho 49829 * seg52Out0AccX74 rho) * (rho 49828 * seg52Out0AccY74 rho)) =
        rho 49829 * seg52Out0AccX74 rho + rho 49828 * seg52Out0AccY74 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49835 * (1 - 3021 * (rho 49829 * seg52Out0AccX74 rho) * (rho 49828 * seg52Out0AccY74 rho)) =
        (-1) * (rho 49829 * seg52Out0AccX74 rho) - rho 49828 * seg52Out0AccY74 rho +
          (seg52Out0AccY74 rho - seg52Out0AccX74 rho * (-1)) * (rho 49828 + rho 49829) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49835 * (1 - rho 49833) = rho 49830 - rho 49831 - rho 49832 := ha5
      _ = (-1) * rho 49831 - rho 49832 + (seg52Out0AccY74 rho - seg52Out0AccX74 rho * (-1)) *
          (rho 49828 + rho 49829) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX75 rho = seg52Out0AccX74 rho - Bool.toZMod bit * (seg52Out0AccX74 rho - rho 49834) := by
    have hd : rho 49836 = Bool.toZMod bit * (rho 49834 - seg52Out0AccX74 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX74
      linear_combination -r5447
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY75 rho = seg52Out0AccY74 rho - Bool.toZMod bit * (seg52Out0AccY74 rho - rho 49835) := by
    have hd : rho 49837 = Bool.toZMod bit * (rho 49835 - seg52Out0AccY74 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY74
      linear_combination -r5448
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49828 * rho 49829 = rho 49838 := by linear_combination r5449
  have hd1 : rho 49828 * rho 49828 = rho 49839 := by linear_combination r5450
  have hd2 : rho 49829 * rho 49829 = rho 49840 := by linear_combination r5451
  have hd3 : rho 49841 * (rho 49829 * rho 49829 + rho 49828 * rho 49828 * (-1)) =
      2 * (rho 49828 * rho 49829) := by
    rw [hd0, hd1, hd2]
    linear_combination r5452
  have hd4 : rho 49842 * (2 - (rho 49829 * rho 49829 + rho 49828 * rho 49828 * (-1))) =
      rho 49829 * rho 49829 - rho 49828 * rho 49828 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5453
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX74 rho, seg52Out0AccY74 rho⟩ ⟨rho 49828, rho 49829⟩
    ⟨rho 49834, rho 49835⟩ ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 49841, rho 49842⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5454 rho ∧ Seg52.relationRow5455 rho ∧ Seg52.relationRow5456 rho ∧ Seg52.relationRow5457 rho ∧ Seg52.relationRow5458 rho ∧ Seg52.relationRow5459 rho ∧ Seg52.relationRow5460 rho ∧ Seg52.relationRow5461 rho ∧ Seg52.relationRow5462 rho ∧ Seg52.relationRow5463 rho ∧ Seg52.relationRow5464 rho ∧ Seg52.relationRow5465 rho ∧ Seg52.relationRow5466 rho := by
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

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466⟩

theorem seg52Out0_rung75 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48821 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49841, rho 49842⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 49841, rho 49842⟩
        ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 49854, rho 49855⟩ := by
  obtain ⟨r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466⟩ := seg52Out0_rows75 rho h
  unfold Seg52.relationRow5454 at r5454

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454

  unfold Seg52.relationRow5455 at r5455

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455

  unfold Seg52.relationRow5456 at r5456

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5456

  unfold Seg52.relationRow5457 at r5457

  unfold Seg52.relationRow5458 at r5458

  unfold Seg52.relationRow5459 at r5459

  unfold Seg52.relationRow5460 at r5460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5460

  unfold Seg52.relationRow5461 at r5461

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461

  unfold Seg52.relationRow5462 at r5462

  unfold Seg52.relationRow5463 at r5463

  unfold Seg52.relationRow5464 at r5464

  unfold Seg52.relationRow5465 at r5465

  unfold Seg52.relationRow5466 at r5466

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX76 rho = seg52Out0AccX75 rho + rho 49849 := by
    unfold seg52Out0AccX76 seg52Out0AccX75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 75]

    ring

  have hnexty : seg52Out0AccY76 rho = seg52Out0AccY75 rho + rho 49850 := by
    unfold seg52Out0AccY76 seg52Out0AccY75
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 75]

    ring

  have ha0 : (rho 49841 + rho 49842) * (seg52Out0AccX75 rho + seg52Out0AccY75 rho) = rho 49843 := by
    unfold seg52Out0AccX75 seg52Out0AccY75
    linear_combination r5454
  have ha1 : rho 49842 * seg52Out0AccX75 rho = rho 49844 := by
    unfold seg52Out0AccX75
    linear_combination r5455
  have ha2 : rho 49841 * seg52Out0AccY75 rho = rho 49845 := by
    unfold seg52Out0AccY75
    linear_combination r5456
  have ha3 : 3021 * rho 49844 * rho 49845 = rho 49846 := by
    linear_combination r5457
  have ha4 : rho 49847 * (1 + rho 49846) = rho 49844 + rho 49845 := by
    linear_combination r5458
  have ha5 : rho 49848 * (1 - rho 49846) = rho 49843 - rho 49844 - rho 49845 := by
    linear_combination r5459
  have haddx :
      rho 49847 * (1 + 3021 * (rho 49842 * seg52Out0AccX75 rho) * (rho 49841 * seg52Out0AccY75 rho)) =
        rho 49842 * seg52Out0AccX75 rho + rho 49841 * seg52Out0AccY75 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49848 * (1 - 3021 * (rho 49842 * seg52Out0AccX75 rho) * (rho 49841 * seg52Out0AccY75 rho)) =
        (-1) * (rho 49842 * seg52Out0AccX75 rho) - rho 49841 * seg52Out0AccY75 rho +
          (seg52Out0AccY75 rho - seg52Out0AccX75 rho * (-1)) * (rho 49841 + rho 49842) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49848 * (1 - rho 49846) = rho 49843 - rho 49844 - rho 49845 := ha5
      _ = (-1) * rho 49844 - rho 49845 + (seg52Out0AccY75 rho - seg52Out0AccX75 rho * (-1)) *
          (rho 49841 + rho 49842) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX76 rho = seg52Out0AccX75 rho - Bool.toZMod bit * (seg52Out0AccX75 rho - rho 49847) := by
    have hd : rho 49849 = Bool.toZMod bit * (rho 49847 - seg52Out0AccX75 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX75
      linear_combination -r5460
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY76 rho = seg52Out0AccY75 rho - Bool.toZMod bit * (seg52Out0AccY75 rho - rho 49848) := by
    have hd : rho 49850 = Bool.toZMod bit * (rho 49848 - seg52Out0AccY75 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY75
      linear_combination -r5461
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49841 * rho 49842 = rho 49851 := by linear_combination r5462
  have hd1 : rho 49841 * rho 49841 = rho 49852 := by linear_combination r5463
  have hd2 : rho 49842 * rho 49842 = rho 49853 := by linear_combination r5464
  have hd3 : rho 49854 * (rho 49842 * rho 49842 + rho 49841 * rho 49841 * (-1)) =
      2 * (rho 49841 * rho 49842) := by
    rw [hd0, hd1, hd2]
    linear_combination r5465
  have hd4 : rho 49855 * (2 - (rho 49842 * rho 49842 + rho 49841 * rho 49841 * (-1))) =
      rho 49842 * rho 49842 - rho 49841 * rho 49841 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5466
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX75 rho, seg52Out0AccY75 rho⟩ ⟨rho 49841, rho 49842⟩
    ⟨rho 49847, rho 49848⟩ ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 49854, rho 49855⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5467 rho ∧ Seg52.relationRow5468 rho ∧ Seg52.relationRow5469 rho ∧ Seg52.relationRow5470 rho ∧ Seg52.relationRow5471 rho ∧ Seg52.relationRow5472 rho ∧ Seg52.relationRow5473 rho ∧ Seg52.relationRow5474 rho ∧ Seg52.relationRow5475 rho ∧ Seg52.relationRow5476 rho ∧ Seg52.relationRow5477 rho ∧ Seg52.relationRow5478 rho ∧ Seg52.relationRow5479 rho := by
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

  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479⟩

theorem seg52Out0_rung76 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48822 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49854, rho 49855⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 49854, rho 49855⟩
        ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 49867, rho 49868⟩ := by
  obtain ⟨r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479⟩ := seg52Out0_rows76 rho h
  unfold Seg52.relationRow5467 at r5467

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5467

  unfold Seg52.relationRow5468 at r5468

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468

  unfold Seg52.relationRow5469 at r5469

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469

  unfold Seg52.relationRow5470 at r5470

  unfold Seg52.relationRow5471 at r5471

  unfold Seg52.relationRow5472 at r5472

  unfold Seg52.relationRow5473 at r5473

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5473

  unfold Seg52.relationRow5474 at r5474

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5474

  unfold Seg52.relationRow5475 at r5475

  unfold Seg52.relationRow5476 at r5476

  unfold Seg52.relationRow5477 at r5477

  unfold Seg52.relationRow5478 at r5478

  unfold Seg52.relationRow5479 at r5479

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX77 rho = seg52Out0AccX76 rho + rho 49862 := by
    unfold seg52Out0AccX77 seg52Out0AccX76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 76]

    ring

  have hnexty : seg52Out0AccY77 rho = seg52Out0AccY76 rho + rho 49863 := by
    unfold seg52Out0AccY77 seg52Out0AccY76
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 76]

    ring

  have ha0 : (rho 49854 + rho 49855) * (seg52Out0AccX76 rho + seg52Out0AccY76 rho) = rho 49856 := by
    unfold seg52Out0AccX76 seg52Out0AccY76
    linear_combination r5467
  have ha1 : rho 49855 * seg52Out0AccX76 rho = rho 49857 := by
    unfold seg52Out0AccX76
    linear_combination r5468
  have ha2 : rho 49854 * seg52Out0AccY76 rho = rho 49858 := by
    unfold seg52Out0AccY76
    linear_combination r5469
  have ha3 : 3021 * rho 49857 * rho 49858 = rho 49859 := by
    linear_combination r5470
  have ha4 : rho 49860 * (1 + rho 49859) = rho 49857 + rho 49858 := by
    linear_combination r5471
  have ha5 : rho 49861 * (1 - rho 49859) = rho 49856 - rho 49857 - rho 49858 := by
    linear_combination r5472
  have haddx :
      rho 49860 * (1 + 3021 * (rho 49855 * seg52Out0AccX76 rho) * (rho 49854 * seg52Out0AccY76 rho)) =
        rho 49855 * seg52Out0AccX76 rho + rho 49854 * seg52Out0AccY76 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49861 * (1 - 3021 * (rho 49855 * seg52Out0AccX76 rho) * (rho 49854 * seg52Out0AccY76 rho)) =
        (-1) * (rho 49855 * seg52Out0AccX76 rho) - rho 49854 * seg52Out0AccY76 rho +
          (seg52Out0AccY76 rho - seg52Out0AccX76 rho * (-1)) * (rho 49854 + rho 49855) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49861 * (1 - rho 49859) = rho 49856 - rho 49857 - rho 49858 := ha5
      _ = (-1) * rho 49857 - rho 49858 + (seg52Out0AccY76 rho - seg52Out0AccX76 rho * (-1)) *
          (rho 49854 + rho 49855) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX77 rho = seg52Out0AccX76 rho - Bool.toZMod bit * (seg52Out0AccX76 rho - rho 49860) := by
    have hd : rho 49862 = Bool.toZMod bit * (rho 49860 - seg52Out0AccX76 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX76
      linear_combination -r5473
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY77 rho = seg52Out0AccY76 rho - Bool.toZMod bit * (seg52Out0AccY76 rho - rho 49861) := by
    have hd : rho 49863 = Bool.toZMod bit * (rho 49861 - seg52Out0AccY76 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY76
      linear_combination -r5474
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49854 * rho 49855 = rho 49864 := by linear_combination r5475
  have hd1 : rho 49854 * rho 49854 = rho 49865 := by linear_combination r5476
  have hd2 : rho 49855 * rho 49855 = rho 49866 := by linear_combination r5477
  have hd3 : rho 49867 * (rho 49855 * rho 49855 + rho 49854 * rho 49854 * (-1)) =
      2 * (rho 49854 * rho 49855) := by
    rw [hd0, hd1, hd2]
    linear_combination r5478
  have hd4 : rho 49868 * (2 - (rho 49855 * rho 49855 + rho 49854 * rho 49854 * (-1))) =
      rho 49855 * rho 49855 - rho 49854 * rho 49854 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5479
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX76 rho, seg52Out0AccY76 rho⟩ ⟨rho 49854, rho 49855⟩
    ⟨rho 49860, rho 49861⟩ ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 49867, rho 49868⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c6 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg52Out0_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg52Out0_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg52Out0_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg52Out0_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg52Out0_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg52Out0_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg52Out0_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg52Out0_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg52Out0_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg52Out0_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
