import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1328 rho ∧ Seg52.relationRow1329 rho ∧ Seg52.relationRow1330 rho ∧ Seg52.relationRow1331 rho ∧ Seg52.relationRow1332 rho ∧ Seg52.relationRow1333 rho ∧ Seg52.relationRow1334 rho ∧ Seg52.relationRow1335 rho ∧ Seg52.relationRow1336 rho ∧ Seg52.relationRow1337 rho ∧ Seg52.relationRow1338 rho ∧ Seg52.relationRow1339 rho ∧ Seg52.relationRow1340 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p16, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340⟩

theorem seg52In0_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45201 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45717, rho 45718⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 45717, rho 45718⟩
        ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 45730, rho 45731⟩ := by
  obtain ⟨r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340⟩ := seg52In0_rows33 rho h
  unfold Seg52.relationRow1328 at r1328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1328

  unfold Seg52.relationRow1329 at r1329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1329

  unfold Seg52.relationRow1330 at r1330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1330

  unfold Seg52.relationRow1331 at r1331

  unfold Seg52.relationRow1332 at r1332

  unfold Seg52.relationRow1333 at r1333

  unfold Seg52.relationRow1334 at r1334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1334

  unfold Seg52.relationRow1335 at r1335

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1335

  unfold Seg52.relationRow1336 at r1336

  unfold Seg52.relationRow1337 at r1337

  unfold Seg52.relationRow1338 at r1338

  unfold Seg52.relationRow1339 at r1339

  unfold Seg52.relationRow1340 at r1340

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX34 rho = seg52In0AccX33 rho + rho 45725 := by
    unfold seg52In0AccX34 seg52In0AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 33]

    ring

  have hnexty : seg52In0AccY34 rho = seg52In0AccY33 rho + rho 45726 := by
    unfold seg52In0AccY34 seg52In0AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 33]

    ring

  have ha0 : (rho 45717 + rho 45718) * (seg52In0AccX33 rho + seg52In0AccY33 rho) = rho 45719 := by
    unfold seg52In0AccX33 seg52In0AccY33
    linear_combination r1328
  have ha1 : rho 45718 * seg52In0AccX33 rho = rho 45720 := by
    unfold seg52In0AccX33
    linear_combination r1329
  have ha2 : rho 45717 * seg52In0AccY33 rho = rho 45721 := by
    unfold seg52In0AccY33
    linear_combination r1330
  have ha3 : 3021 * rho 45720 * rho 45721 = rho 45722 := by
    linear_combination r1331
  have ha4 : rho 45723 * (1 + rho 45722) = rho 45720 + rho 45721 := by
    linear_combination r1332
  have ha5 : rho 45724 * (1 - rho 45722) = rho 45719 - rho 45720 - rho 45721 := by
    linear_combination r1333
  have haddx :
      rho 45723 * (1 + 3021 * (rho 45718 * seg52In0AccX33 rho) * (rho 45717 * seg52In0AccY33 rho)) =
        rho 45718 * seg52In0AccX33 rho + rho 45717 * seg52In0AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45724 * (1 - 3021 * (rho 45718 * seg52In0AccX33 rho) * (rho 45717 * seg52In0AccY33 rho)) =
        (-1) * (rho 45718 * seg52In0AccX33 rho) - rho 45717 * seg52In0AccY33 rho +
          (seg52In0AccY33 rho - seg52In0AccX33 rho * (-1)) * (rho 45717 + rho 45718) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45724 * (1 - rho 45722) = rho 45719 - rho 45720 - rho 45721 := ha5
      _ = (-1) * rho 45720 - rho 45721 + (seg52In0AccY33 rho - seg52In0AccX33 rho * (-1)) *
          (rho 45717 + rho 45718) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX34 rho = seg52In0AccX33 rho - Bool.toZMod bit * (seg52In0AccX33 rho - rho 45723) := by
    have hd : rho 45725 = Bool.toZMod bit * (rho 45723 - seg52In0AccX33 rho) := by
      rw [← hbit]
      unfold seg52In0AccX33
      linear_combination -r1334
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY34 rho = seg52In0AccY33 rho - Bool.toZMod bit * (seg52In0AccY33 rho - rho 45724) := by
    have hd : rho 45726 = Bool.toZMod bit * (rho 45724 - seg52In0AccY33 rho) := by
      rw [← hbit]
      unfold seg52In0AccY33
      linear_combination -r1335
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45717 * rho 45718 = rho 45727 := by linear_combination r1336
  have hd1 : rho 45717 * rho 45717 = rho 45728 := by linear_combination r1337
  have hd2 : rho 45718 * rho 45718 = rho 45729 := by linear_combination r1338
  have hd3 : rho 45730 * (rho 45718 * rho 45718 + rho 45717 * rho 45717 * (-1)) =
      2 * (rho 45717 * rho 45718) := by
    rw [hd0, hd1, hd2]
    linear_combination r1339
  have hd4 : rho 45731 * (2 - (rho 45718 * rho 45718 + rho 45717 * rho 45717 * (-1))) =
      rho 45718 * rho 45718 - rho 45717 * rho 45717 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1340
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 45717, rho 45718⟩
    ⟨rho 45723, rho 45724⟩ ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 45730, rho 45731⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1341 rho ∧ Seg52.relationRow1342 rho ∧ Seg52.relationRow1343 rho ∧ Seg52.relationRow1344 rho ∧ Seg52.relationRow1345 rho ∧ Seg52.relationRow1346 rho ∧ Seg52.relationRow1347 rho ∧ Seg52.relationRow1348 rho ∧ Seg52.relationRow1349 rho ∧ Seg52.relationRow1350 rho ∧ Seg52.relationRow1351 rho ∧ Seg52.relationRow1352 rho ∧ Seg52.relationRow1353 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p16, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, _, _, _, _, _, _⟩

  exact ⟨r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353⟩

theorem seg52In0_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45202 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45730, rho 45731⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 45730, rho 45731⟩
        ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 45743, rho 45744⟩ := by
  obtain ⟨r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353⟩ := seg52In0_rows34 rho h
  unfold Seg52.relationRow1341 at r1341

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1341

  unfold Seg52.relationRow1342 at r1342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1342

  unfold Seg52.relationRow1343 at r1343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1343

  unfold Seg52.relationRow1344 at r1344

  unfold Seg52.relationRow1345 at r1345

  unfold Seg52.relationRow1346 at r1346

  unfold Seg52.relationRow1347 at r1347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1347

  unfold Seg52.relationRow1348 at r1348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1348

  unfold Seg52.relationRow1349 at r1349

  unfold Seg52.relationRow1350 at r1350

  unfold Seg52.relationRow1351 at r1351

  unfold Seg52.relationRow1352 at r1352

  unfold Seg52.relationRow1353 at r1353

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX35 rho = seg52In0AccX34 rho + rho 45738 := by
    unfold seg52In0AccX35 seg52In0AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 34]

    ring

  have hnexty : seg52In0AccY35 rho = seg52In0AccY34 rho + rho 45739 := by
    unfold seg52In0AccY35 seg52In0AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 34]

    ring

  have ha0 : (rho 45730 + rho 45731) * (seg52In0AccX34 rho + seg52In0AccY34 rho) = rho 45732 := by
    unfold seg52In0AccX34 seg52In0AccY34
    linear_combination r1341
  have ha1 : rho 45731 * seg52In0AccX34 rho = rho 45733 := by
    unfold seg52In0AccX34
    linear_combination r1342
  have ha2 : rho 45730 * seg52In0AccY34 rho = rho 45734 := by
    unfold seg52In0AccY34
    linear_combination r1343
  have ha3 : 3021 * rho 45733 * rho 45734 = rho 45735 := by
    linear_combination r1344
  have ha4 : rho 45736 * (1 + rho 45735) = rho 45733 + rho 45734 := by
    linear_combination r1345
  have ha5 : rho 45737 * (1 - rho 45735) = rho 45732 - rho 45733 - rho 45734 := by
    linear_combination r1346
  have haddx :
      rho 45736 * (1 + 3021 * (rho 45731 * seg52In0AccX34 rho) * (rho 45730 * seg52In0AccY34 rho)) =
        rho 45731 * seg52In0AccX34 rho + rho 45730 * seg52In0AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45737 * (1 - 3021 * (rho 45731 * seg52In0AccX34 rho) * (rho 45730 * seg52In0AccY34 rho)) =
        (-1) * (rho 45731 * seg52In0AccX34 rho) - rho 45730 * seg52In0AccY34 rho +
          (seg52In0AccY34 rho - seg52In0AccX34 rho * (-1)) * (rho 45730 + rho 45731) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45737 * (1 - rho 45735) = rho 45732 - rho 45733 - rho 45734 := ha5
      _ = (-1) * rho 45733 - rho 45734 + (seg52In0AccY34 rho - seg52In0AccX34 rho * (-1)) *
          (rho 45730 + rho 45731) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX35 rho = seg52In0AccX34 rho - Bool.toZMod bit * (seg52In0AccX34 rho - rho 45736) := by
    have hd : rho 45738 = Bool.toZMod bit * (rho 45736 - seg52In0AccX34 rho) := by
      rw [← hbit]
      unfold seg52In0AccX34
      linear_combination -r1347
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY35 rho = seg52In0AccY34 rho - Bool.toZMod bit * (seg52In0AccY34 rho - rho 45737) := by
    have hd : rho 45739 = Bool.toZMod bit * (rho 45737 - seg52In0AccY34 rho) := by
      rw [← hbit]
      unfold seg52In0AccY34
      linear_combination -r1348
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45730 * rho 45731 = rho 45740 := by linear_combination r1349
  have hd1 : rho 45730 * rho 45730 = rho 45741 := by linear_combination r1350
  have hd2 : rho 45731 * rho 45731 = rho 45742 := by linear_combination r1351
  have hd3 : rho 45743 * (rho 45731 * rho 45731 + rho 45730 * rho 45730 * (-1)) =
      2 * (rho 45730 * rho 45731) := by
    rw [hd0, hd1, hd2]
    linear_combination r1352
  have hd4 : rho 45744 * (2 - (rho 45731 * rho 45731 + rho 45730 * rho 45730 * (-1))) =
      rho 45731 * rho 45731 - rho 45730 * rho 45730 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1353
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 45730, rho 45731⟩
    ⟨rho 45736, rho 45737⟩ ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 45743, rho 45744⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1354 rho ∧ Seg52.relationRow1355 rho ∧ Seg52.relationRow1356 rho ∧ Seg52.relationRow1357 rho ∧ Seg52.relationRow1358 rho ∧ Seg52.relationRow1359 rho ∧ Seg52.relationRow1360 rho ∧ Seg52.relationRow1361 rho ∧ Seg52.relationRow1362 rho ∧ Seg52.relationRow1363 rho ∧ Seg52.relationRow1364 rho ∧ Seg52.relationRow1365 rho ∧ Seg52.relationRow1366 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p16, p17, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1354, r1355, r1356, r1357, r1358, r1359⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1354, r1355, r1356, r1357, r1358, r1359, r1360, r1361, r1362, r1363, r1364, r1365, r1366⟩

theorem seg52In0_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45203 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45743, rho 45744⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 45743, rho 45744⟩
        ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 45756, rho 45757⟩ := by
  obtain ⟨r1354, r1355, r1356, r1357, r1358, r1359, r1360, r1361, r1362, r1363, r1364, r1365, r1366⟩ := seg52In0_rows35 rho h
  unfold Seg52.relationRow1354 at r1354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1354

  unfold Seg52.relationRow1355 at r1355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1355

  unfold Seg52.relationRow1356 at r1356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1356

  unfold Seg52.relationRow1357 at r1357

  unfold Seg52.relationRow1358 at r1358

  unfold Seg52.relationRow1359 at r1359

  unfold Seg52.relationRow1360 at r1360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1360

  unfold Seg52.relationRow1361 at r1361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1361

  unfold Seg52.relationRow1362 at r1362

  unfold Seg52.relationRow1363 at r1363

  unfold Seg52.relationRow1364 at r1364

  unfold Seg52.relationRow1365 at r1365

  unfold Seg52.relationRow1366 at r1366

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX36 rho = seg52In0AccX35 rho + rho 45751 := by
    unfold seg52In0AccX36 seg52In0AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 35]

    ring

  have hnexty : seg52In0AccY36 rho = seg52In0AccY35 rho + rho 45752 := by
    unfold seg52In0AccY36 seg52In0AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 35]

    ring

  have ha0 : (rho 45743 + rho 45744) * (seg52In0AccX35 rho + seg52In0AccY35 rho) = rho 45745 := by
    unfold seg52In0AccX35 seg52In0AccY35
    linear_combination r1354
  have ha1 : rho 45744 * seg52In0AccX35 rho = rho 45746 := by
    unfold seg52In0AccX35
    linear_combination r1355
  have ha2 : rho 45743 * seg52In0AccY35 rho = rho 45747 := by
    unfold seg52In0AccY35
    linear_combination r1356
  have ha3 : 3021 * rho 45746 * rho 45747 = rho 45748 := by
    linear_combination r1357
  have ha4 : rho 45749 * (1 + rho 45748) = rho 45746 + rho 45747 := by
    linear_combination r1358
  have ha5 : rho 45750 * (1 - rho 45748) = rho 45745 - rho 45746 - rho 45747 := by
    linear_combination r1359
  have haddx :
      rho 45749 * (1 + 3021 * (rho 45744 * seg52In0AccX35 rho) * (rho 45743 * seg52In0AccY35 rho)) =
        rho 45744 * seg52In0AccX35 rho + rho 45743 * seg52In0AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45750 * (1 - 3021 * (rho 45744 * seg52In0AccX35 rho) * (rho 45743 * seg52In0AccY35 rho)) =
        (-1) * (rho 45744 * seg52In0AccX35 rho) - rho 45743 * seg52In0AccY35 rho +
          (seg52In0AccY35 rho - seg52In0AccX35 rho * (-1)) * (rho 45743 + rho 45744) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45750 * (1 - rho 45748) = rho 45745 - rho 45746 - rho 45747 := ha5
      _ = (-1) * rho 45746 - rho 45747 + (seg52In0AccY35 rho - seg52In0AccX35 rho * (-1)) *
          (rho 45743 + rho 45744) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX36 rho = seg52In0AccX35 rho - Bool.toZMod bit * (seg52In0AccX35 rho - rho 45749) := by
    have hd : rho 45751 = Bool.toZMod bit * (rho 45749 - seg52In0AccX35 rho) := by
      rw [← hbit]
      unfold seg52In0AccX35
      linear_combination -r1360
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY36 rho = seg52In0AccY35 rho - Bool.toZMod bit * (seg52In0AccY35 rho - rho 45750) := by
    have hd : rho 45752 = Bool.toZMod bit * (rho 45750 - seg52In0AccY35 rho) := by
      rw [← hbit]
      unfold seg52In0AccY35
      linear_combination -r1361
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45743 * rho 45744 = rho 45753 := by linear_combination r1362
  have hd1 : rho 45743 * rho 45743 = rho 45754 := by linear_combination r1363
  have hd2 : rho 45744 * rho 45744 = rho 45755 := by linear_combination r1364
  have hd3 : rho 45756 * (rho 45744 * rho 45744 + rho 45743 * rho 45743 * (-1)) =
      2 * (rho 45743 * rho 45744) := by
    rw [hd0, hd1, hd2]
    linear_combination r1365
  have hd4 : rho 45757 * (2 - (rho 45744 * rho 45744 + rho 45743 * rho 45743 * (-1))) =
      rho 45744 * rho 45744 - rho 45743 * rho 45743 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1366
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 45743, rho 45744⟩
    ⟨rho 45749, rho 45750⟩ ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 45756, rho 45757⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1367 rho ∧ Seg52.relationRow1368 rho ∧ Seg52.relationRow1369 rho ∧ Seg52.relationRow1370 rho ∧ Seg52.relationRow1371 rho ∧ Seg52.relationRow1372 rho ∧ Seg52.relationRow1373 rho ∧ Seg52.relationRow1374 rho ∧ Seg52.relationRow1375 rho ∧ Seg52.relationRow1376 rho ∧ Seg52.relationRow1377 rho ∧ Seg52.relationRow1378 rho ∧ Seg52.relationRow1379 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379⟩

theorem seg52In0_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45204 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45756, rho 45757⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 45756, rho 45757⟩
        ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 45769, rho 45770⟩ := by
  obtain ⟨r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379⟩ := seg52In0_rows36 rho h
  unfold Seg52.relationRow1367 at r1367

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1367

  unfold Seg52.relationRow1368 at r1368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1368

  unfold Seg52.relationRow1369 at r1369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1369

  unfold Seg52.relationRow1370 at r1370

  unfold Seg52.relationRow1371 at r1371

  unfold Seg52.relationRow1372 at r1372

  unfold Seg52.relationRow1373 at r1373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1373

  unfold Seg52.relationRow1374 at r1374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1374

  unfold Seg52.relationRow1375 at r1375

  unfold Seg52.relationRow1376 at r1376

  unfold Seg52.relationRow1377 at r1377

  unfold Seg52.relationRow1378 at r1378

  unfold Seg52.relationRow1379 at r1379

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX37 rho = seg52In0AccX36 rho + rho 45764 := by
    unfold seg52In0AccX37 seg52In0AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 36]

    ring

  have hnexty : seg52In0AccY37 rho = seg52In0AccY36 rho + rho 45765 := by
    unfold seg52In0AccY37 seg52In0AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 36]

    ring

  have ha0 : (rho 45756 + rho 45757) * (seg52In0AccX36 rho + seg52In0AccY36 rho) = rho 45758 := by
    unfold seg52In0AccX36 seg52In0AccY36
    linear_combination r1367
  have ha1 : rho 45757 * seg52In0AccX36 rho = rho 45759 := by
    unfold seg52In0AccX36
    linear_combination r1368
  have ha2 : rho 45756 * seg52In0AccY36 rho = rho 45760 := by
    unfold seg52In0AccY36
    linear_combination r1369
  have ha3 : 3021 * rho 45759 * rho 45760 = rho 45761 := by
    linear_combination r1370
  have ha4 : rho 45762 * (1 + rho 45761) = rho 45759 + rho 45760 := by
    linear_combination r1371
  have ha5 : rho 45763 * (1 - rho 45761) = rho 45758 - rho 45759 - rho 45760 := by
    linear_combination r1372
  have haddx :
      rho 45762 * (1 + 3021 * (rho 45757 * seg52In0AccX36 rho) * (rho 45756 * seg52In0AccY36 rho)) =
        rho 45757 * seg52In0AccX36 rho + rho 45756 * seg52In0AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45763 * (1 - 3021 * (rho 45757 * seg52In0AccX36 rho) * (rho 45756 * seg52In0AccY36 rho)) =
        (-1) * (rho 45757 * seg52In0AccX36 rho) - rho 45756 * seg52In0AccY36 rho +
          (seg52In0AccY36 rho - seg52In0AccX36 rho * (-1)) * (rho 45756 + rho 45757) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45763 * (1 - rho 45761) = rho 45758 - rho 45759 - rho 45760 := ha5
      _ = (-1) * rho 45759 - rho 45760 + (seg52In0AccY36 rho - seg52In0AccX36 rho * (-1)) *
          (rho 45756 + rho 45757) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX37 rho = seg52In0AccX36 rho - Bool.toZMod bit * (seg52In0AccX36 rho - rho 45762) := by
    have hd : rho 45764 = Bool.toZMod bit * (rho 45762 - seg52In0AccX36 rho) := by
      rw [← hbit]
      unfold seg52In0AccX36
      linear_combination -r1373
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY37 rho = seg52In0AccY36 rho - Bool.toZMod bit * (seg52In0AccY36 rho - rho 45763) := by
    have hd : rho 45765 = Bool.toZMod bit * (rho 45763 - seg52In0AccY36 rho) := by
      rw [← hbit]
      unfold seg52In0AccY36
      linear_combination -r1374
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45756 * rho 45757 = rho 45766 := by linear_combination r1375
  have hd1 : rho 45756 * rho 45756 = rho 45767 := by linear_combination r1376
  have hd2 : rho 45757 * rho 45757 = rho 45768 := by linear_combination r1377
  have hd3 : rho 45769 * (rho 45757 * rho 45757 + rho 45756 * rho 45756 * (-1)) =
      2 * (rho 45756 * rho 45757) := by
    rw [hd0, hd1, hd2]
    linear_combination r1378
  have hd4 : rho 45770 * (2 - (rho 45757 * rho 45757 + rho 45756 * rho 45756 * (-1))) =
      rho 45757 * rho 45757 - rho 45756 * rho 45756 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1379
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 45756, rho 45757⟩
    ⟨rho 45762, rho 45763⟩ ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 45769, rho 45770⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1380 rho ∧ Seg52.relationRow1381 rho ∧ Seg52.relationRow1382 rho ∧ Seg52.relationRow1383 rho ∧ Seg52.relationRow1384 rho ∧ Seg52.relationRow1385 rho ∧ Seg52.relationRow1386 rho ∧ Seg52.relationRow1387 rho ∧ Seg52.relationRow1388 rho ∧ Seg52.relationRow1389 rho ∧ Seg52.relationRow1390 rho ∧ Seg52.relationRow1391 rho ∧ Seg52.relationRow1392 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392⟩

theorem seg52In0_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45205 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45769, rho 45770⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 45769, rho 45770⟩
        ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 45782, rho 45783⟩ := by
  obtain ⟨r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392⟩ := seg52In0_rows37 rho h
  unfold Seg52.relationRow1380 at r1380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1380

  unfold Seg52.relationRow1381 at r1381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1381

  unfold Seg52.relationRow1382 at r1382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1382

  unfold Seg52.relationRow1383 at r1383

  unfold Seg52.relationRow1384 at r1384

  unfold Seg52.relationRow1385 at r1385

  unfold Seg52.relationRow1386 at r1386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1386

  unfold Seg52.relationRow1387 at r1387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1387

  unfold Seg52.relationRow1388 at r1388

  unfold Seg52.relationRow1389 at r1389

  unfold Seg52.relationRow1390 at r1390

  unfold Seg52.relationRow1391 at r1391

  unfold Seg52.relationRow1392 at r1392

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX38 rho = seg52In0AccX37 rho + rho 45777 := by
    unfold seg52In0AccX38 seg52In0AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 37]

    ring

  have hnexty : seg52In0AccY38 rho = seg52In0AccY37 rho + rho 45778 := by
    unfold seg52In0AccY38 seg52In0AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 37]

    ring

  have ha0 : (rho 45769 + rho 45770) * (seg52In0AccX37 rho + seg52In0AccY37 rho) = rho 45771 := by
    unfold seg52In0AccX37 seg52In0AccY37
    linear_combination r1380
  have ha1 : rho 45770 * seg52In0AccX37 rho = rho 45772 := by
    unfold seg52In0AccX37
    linear_combination r1381
  have ha2 : rho 45769 * seg52In0AccY37 rho = rho 45773 := by
    unfold seg52In0AccY37
    linear_combination r1382
  have ha3 : 3021 * rho 45772 * rho 45773 = rho 45774 := by
    linear_combination r1383
  have ha4 : rho 45775 * (1 + rho 45774) = rho 45772 + rho 45773 := by
    linear_combination r1384
  have ha5 : rho 45776 * (1 - rho 45774) = rho 45771 - rho 45772 - rho 45773 := by
    linear_combination r1385
  have haddx :
      rho 45775 * (1 + 3021 * (rho 45770 * seg52In0AccX37 rho) * (rho 45769 * seg52In0AccY37 rho)) =
        rho 45770 * seg52In0AccX37 rho + rho 45769 * seg52In0AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45776 * (1 - 3021 * (rho 45770 * seg52In0AccX37 rho) * (rho 45769 * seg52In0AccY37 rho)) =
        (-1) * (rho 45770 * seg52In0AccX37 rho) - rho 45769 * seg52In0AccY37 rho +
          (seg52In0AccY37 rho - seg52In0AccX37 rho * (-1)) * (rho 45769 + rho 45770) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45776 * (1 - rho 45774) = rho 45771 - rho 45772 - rho 45773 := ha5
      _ = (-1) * rho 45772 - rho 45773 + (seg52In0AccY37 rho - seg52In0AccX37 rho * (-1)) *
          (rho 45769 + rho 45770) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX38 rho = seg52In0AccX37 rho - Bool.toZMod bit * (seg52In0AccX37 rho - rho 45775) := by
    have hd : rho 45777 = Bool.toZMod bit * (rho 45775 - seg52In0AccX37 rho) := by
      rw [← hbit]
      unfold seg52In0AccX37
      linear_combination -r1386
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY38 rho = seg52In0AccY37 rho - Bool.toZMod bit * (seg52In0AccY37 rho - rho 45776) := by
    have hd : rho 45778 = Bool.toZMod bit * (rho 45776 - seg52In0AccY37 rho) := by
      rw [← hbit]
      unfold seg52In0AccY37
      linear_combination -r1387
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45769 * rho 45770 = rho 45779 := by linear_combination r1388
  have hd1 : rho 45769 * rho 45769 = rho 45780 := by linear_combination r1389
  have hd2 : rho 45770 * rho 45770 = rho 45781 := by linear_combination r1390
  have hd3 : rho 45782 * (rho 45770 * rho 45770 + rho 45769 * rho 45769 * (-1)) =
      2 * (rho 45769 * rho 45770) := by
    rw [hd0, hd1, hd2]
    linear_combination r1391
  have hd4 : rho 45783 * (2 - (rho 45770 * rho 45770 + rho 45769 * rho 45769 * (-1))) =
      rho 45770 * rho 45770 - rho 45769 * rho 45769 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1392
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 45769, rho 45770⟩
    ⟨rho 45775, rho 45776⟩ ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 45782, rho 45783⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1393 rho ∧ Seg52.relationRow1394 rho ∧ Seg52.relationRow1395 rho ∧ Seg52.relationRow1396 rho ∧ Seg52.relationRow1397 rho ∧ Seg52.relationRow1398 rho ∧ Seg52.relationRow1399 rho ∧ Seg52.relationRow1400 rho ∧ Seg52.relationRow1401 rho ∧ Seg52.relationRow1402 rho ∧ Seg52.relationRow1403 rho ∧ Seg52.relationRow1404 rho ∧ Seg52.relationRow1405 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405⟩

theorem seg52In0_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45206 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45782, rho 45783⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 45782, rho 45783⟩
        ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 45795, rho 45796⟩ := by
  obtain ⟨r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405⟩ := seg52In0_rows38 rho h
  unfold Seg52.relationRow1393 at r1393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1393

  unfold Seg52.relationRow1394 at r1394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1394

  unfold Seg52.relationRow1395 at r1395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1395

  unfold Seg52.relationRow1396 at r1396

  unfold Seg52.relationRow1397 at r1397

  unfold Seg52.relationRow1398 at r1398

  unfold Seg52.relationRow1399 at r1399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1399

  unfold Seg52.relationRow1400 at r1400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1400

  unfold Seg52.relationRow1401 at r1401

  unfold Seg52.relationRow1402 at r1402

  unfold Seg52.relationRow1403 at r1403

  unfold Seg52.relationRow1404 at r1404

  unfold Seg52.relationRow1405 at r1405

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX39 rho = seg52In0AccX38 rho + rho 45790 := by
    unfold seg52In0AccX39 seg52In0AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 38]

    ring

  have hnexty : seg52In0AccY39 rho = seg52In0AccY38 rho + rho 45791 := by
    unfold seg52In0AccY39 seg52In0AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 38]

    ring

  have ha0 : (rho 45782 + rho 45783) * (seg52In0AccX38 rho + seg52In0AccY38 rho) = rho 45784 := by
    unfold seg52In0AccX38 seg52In0AccY38
    linear_combination r1393
  have ha1 : rho 45783 * seg52In0AccX38 rho = rho 45785 := by
    unfold seg52In0AccX38
    linear_combination r1394
  have ha2 : rho 45782 * seg52In0AccY38 rho = rho 45786 := by
    unfold seg52In0AccY38
    linear_combination r1395
  have ha3 : 3021 * rho 45785 * rho 45786 = rho 45787 := by
    linear_combination r1396
  have ha4 : rho 45788 * (1 + rho 45787) = rho 45785 + rho 45786 := by
    linear_combination r1397
  have ha5 : rho 45789 * (1 - rho 45787) = rho 45784 - rho 45785 - rho 45786 := by
    linear_combination r1398
  have haddx :
      rho 45788 * (1 + 3021 * (rho 45783 * seg52In0AccX38 rho) * (rho 45782 * seg52In0AccY38 rho)) =
        rho 45783 * seg52In0AccX38 rho + rho 45782 * seg52In0AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45789 * (1 - 3021 * (rho 45783 * seg52In0AccX38 rho) * (rho 45782 * seg52In0AccY38 rho)) =
        (-1) * (rho 45783 * seg52In0AccX38 rho) - rho 45782 * seg52In0AccY38 rho +
          (seg52In0AccY38 rho - seg52In0AccX38 rho * (-1)) * (rho 45782 + rho 45783) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45789 * (1 - rho 45787) = rho 45784 - rho 45785 - rho 45786 := ha5
      _ = (-1) * rho 45785 - rho 45786 + (seg52In0AccY38 rho - seg52In0AccX38 rho * (-1)) *
          (rho 45782 + rho 45783) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX39 rho = seg52In0AccX38 rho - Bool.toZMod bit * (seg52In0AccX38 rho - rho 45788) := by
    have hd : rho 45790 = Bool.toZMod bit * (rho 45788 - seg52In0AccX38 rho) := by
      rw [← hbit]
      unfold seg52In0AccX38
      linear_combination -r1399
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY39 rho = seg52In0AccY38 rho - Bool.toZMod bit * (seg52In0AccY38 rho - rho 45789) := by
    have hd : rho 45791 = Bool.toZMod bit * (rho 45789 - seg52In0AccY38 rho) := by
      rw [← hbit]
      unfold seg52In0AccY38
      linear_combination -r1400
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45782 * rho 45783 = rho 45792 := by linear_combination r1401
  have hd1 : rho 45782 * rho 45782 = rho 45793 := by linear_combination r1402
  have hd2 : rho 45783 * rho 45783 = rho 45794 := by linear_combination r1403
  have hd3 : rho 45795 * (rho 45783 * rho 45783 + rho 45782 * rho 45782 * (-1)) =
      2 * (rho 45782 * rho 45783) := by
    rw [hd0, hd1, hd2]
    linear_combination r1404
  have hd4 : rho 45796 * (2 - (rho 45783 * rho 45783 + rho 45782 * rho 45782 * (-1))) =
      rho 45783 * rho 45783 - rho 45782 * rho 45782 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1405
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 45782, rho 45783⟩
    ⟨rho 45788, rho 45789⟩ ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 45795, rho 45796⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1406 rho ∧ Seg52.relationRow1407 rho ∧ Seg52.relationRow1408 rho ∧ Seg52.relationRow1409 rho ∧ Seg52.relationRow1410 rho ∧ Seg52.relationRow1411 rho ∧ Seg52.relationRow1412 rho ∧ Seg52.relationRow1413 rho ∧ Seg52.relationRow1414 rho ∧ Seg52.relationRow1415 rho ∧ Seg52.relationRow1416 rho ∧ Seg52.relationRow1417 rho ∧ Seg52.relationRow1418 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418⟩

theorem seg52In0_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45207 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45795, rho 45796⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 45795, rho 45796⟩
        ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 45808, rho 45809⟩ := by
  obtain ⟨r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418⟩ := seg52In0_rows39 rho h
  unfold Seg52.relationRow1406 at r1406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1406

  unfold Seg52.relationRow1407 at r1407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1407

  unfold Seg52.relationRow1408 at r1408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1408

  unfold Seg52.relationRow1409 at r1409

  unfold Seg52.relationRow1410 at r1410

  unfold Seg52.relationRow1411 at r1411

  unfold Seg52.relationRow1412 at r1412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1412

  unfold Seg52.relationRow1413 at r1413

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1413

  unfold Seg52.relationRow1414 at r1414

  unfold Seg52.relationRow1415 at r1415

  unfold Seg52.relationRow1416 at r1416

  unfold Seg52.relationRow1417 at r1417

  unfold Seg52.relationRow1418 at r1418

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX40 rho = seg52In0AccX39 rho + rho 45803 := by
    unfold seg52In0AccX40 seg52In0AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 39]

    ring

  have hnexty : seg52In0AccY40 rho = seg52In0AccY39 rho + rho 45804 := by
    unfold seg52In0AccY40 seg52In0AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 39]

    ring

  have ha0 : (rho 45795 + rho 45796) * (seg52In0AccX39 rho + seg52In0AccY39 rho) = rho 45797 := by
    unfold seg52In0AccX39 seg52In0AccY39
    linear_combination r1406
  have ha1 : rho 45796 * seg52In0AccX39 rho = rho 45798 := by
    unfold seg52In0AccX39
    linear_combination r1407
  have ha2 : rho 45795 * seg52In0AccY39 rho = rho 45799 := by
    unfold seg52In0AccY39
    linear_combination r1408
  have ha3 : 3021 * rho 45798 * rho 45799 = rho 45800 := by
    linear_combination r1409
  have ha4 : rho 45801 * (1 + rho 45800) = rho 45798 + rho 45799 := by
    linear_combination r1410
  have ha5 : rho 45802 * (1 - rho 45800) = rho 45797 - rho 45798 - rho 45799 := by
    linear_combination r1411
  have haddx :
      rho 45801 * (1 + 3021 * (rho 45796 * seg52In0AccX39 rho) * (rho 45795 * seg52In0AccY39 rho)) =
        rho 45796 * seg52In0AccX39 rho + rho 45795 * seg52In0AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45802 * (1 - 3021 * (rho 45796 * seg52In0AccX39 rho) * (rho 45795 * seg52In0AccY39 rho)) =
        (-1) * (rho 45796 * seg52In0AccX39 rho) - rho 45795 * seg52In0AccY39 rho +
          (seg52In0AccY39 rho - seg52In0AccX39 rho * (-1)) * (rho 45795 + rho 45796) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45802 * (1 - rho 45800) = rho 45797 - rho 45798 - rho 45799 := ha5
      _ = (-1) * rho 45798 - rho 45799 + (seg52In0AccY39 rho - seg52In0AccX39 rho * (-1)) *
          (rho 45795 + rho 45796) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX40 rho = seg52In0AccX39 rho - Bool.toZMod bit * (seg52In0AccX39 rho - rho 45801) := by
    have hd : rho 45803 = Bool.toZMod bit * (rho 45801 - seg52In0AccX39 rho) := by
      rw [← hbit]
      unfold seg52In0AccX39
      linear_combination -r1412
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY40 rho = seg52In0AccY39 rho - Bool.toZMod bit * (seg52In0AccY39 rho - rho 45802) := by
    have hd : rho 45804 = Bool.toZMod bit * (rho 45802 - seg52In0AccY39 rho) := by
      rw [← hbit]
      unfold seg52In0AccY39
      linear_combination -r1413
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45795 * rho 45796 = rho 45805 := by linear_combination r1414
  have hd1 : rho 45795 * rho 45795 = rho 45806 := by linear_combination r1415
  have hd2 : rho 45796 * rho 45796 = rho 45807 := by linear_combination r1416
  have hd3 : rho 45808 * (rho 45796 * rho 45796 + rho 45795 * rho 45795 * (-1)) =
      2 * (rho 45795 * rho 45796) := by
    rw [hd0, hd1, hd2]
    linear_combination r1417
  have hd4 : rho 45809 * (2 - (rho 45796 * rho 45796 + rho 45795 * rho 45795 * (-1))) =
      rho 45796 * rho 45796 - rho 45795 * rho 45795 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1418
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 45795, rho 45796⟩
    ⟨rho 45801, rho 45802⟩ ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 45808, rho 45809⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1419 rho ∧ Seg52.relationRow1420 rho ∧ Seg52.relationRow1421 rho ∧ Seg52.relationRow1422 rho ∧ Seg52.relationRow1423 rho ∧ Seg52.relationRow1424 rho ∧ Seg52.relationRow1425 rho ∧ Seg52.relationRow1426 rho ∧ Seg52.relationRow1427 rho ∧ Seg52.relationRow1428 rho ∧ Seg52.relationRow1429 rho ∧ Seg52.relationRow1430 rho ∧ Seg52.relationRow1431 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, _, _, _, _, _, _, _, _⟩

  exact ⟨r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431⟩

theorem seg52In0_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45208 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45808, rho 45809⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 45808, rho 45809⟩
        ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 45821, rho 45822⟩ := by
  obtain ⟨r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431⟩ := seg52In0_rows40 rho h
  unfold Seg52.relationRow1419 at r1419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1419

  unfold Seg52.relationRow1420 at r1420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1420

  unfold Seg52.relationRow1421 at r1421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1421

  unfold Seg52.relationRow1422 at r1422

  unfold Seg52.relationRow1423 at r1423

  unfold Seg52.relationRow1424 at r1424

  unfold Seg52.relationRow1425 at r1425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1425

  unfold Seg52.relationRow1426 at r1426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1426

  unfold Seg52.relationRow1427 at r1427

  unfold Seg52.relationRow1428 at r1428

  unfold Seg52.relationRow1429 at r1429

  unfold Seg52.relationRow1430 at r1430

  unfold Seg52.relationRow1431 at r1431

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX41 rho = seg52In0AccX40 rho + rho 45816 := by
    unfold seg52In0AccX41 seg52In0AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 40]

    ring

  have hnexty : seg52In0AccY41 rho = seg52In0AccY40 rho + rho 45817 := by
    unfold seg52In0AccY41 seg52In0AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 40]

    ring

  have ha0 : (rho 45808 + rho 45809) * (seg52In0AccX40 rho + seg52In0AccY40 rho) = rho 45810 := by
    unfold seg52In0AccX40 seg52In0AccY40
    linear_combination r1419
  have ha1 : rho 45809 * seg52In0AccX40 rho = rho 45811 := by
    unfold seg52In0AccX40
    linear_combination r1420
  have ha2 : rho 45808 * seg52In0AccY40 rho = rho 45812 := by
    unfold seg52In0AccY40
    linear_combination r1421
  have ha3 : 3021 * rho 45811 * rho 45812 = rho 45813 := by
    linear_combination r1422
  have ha4 : rho 45814 * (1 + rho 45813) = rho 45811 + rho 45812 := by
    linear_combination r1423
  have ha5 : rho 45815 * (1 - rho 45813) = rho 45810 - rho 45811 - rho 45812 := by
    linear_combination r1424
  have haddx :
      rho 45814 * (1 + 3021 * (rho 45809 * seg52In0AccX40 rho) * (rho 45808 * seg52In0AccY40 rho)) =
        rho 45809 * seg52In0AccX40 rho + rho 45808 * seg52In0AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45815 * (1 - 3021 * (rho 45809 * seg52In0AccX40 rho) * (rho 45808 * seg52In0AccY40 rho)) =
        (-1) * (rho 45809 * seg52In0AccX40 rho) - rho 45808 * seg52In0AccY40 rho +
          (seg52In0AccY40 rho - seg52In0AccX40 rho * (-1)) * (rho 45808 + rho 45809) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45815 * (1 - rho 45813) = rho 45810 - rho 45811 - rho 45812 := ha5
      _ = (-1) * rho 45811 - rho 45812 + (seg52In0AccY40 rho - seg52In0AccX40 rho * (-1)) *
          (rho 45808 + rho 45809) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX41 rho = seg52In0AccX40 rho - Bool.toZMod bit * (seg52In0AccX40 rho - rho 45814) := by
    have hd : rho 45816 = Bool.toZMod bit * (rho 45814 - seg52In0AccX40 rho) := by
      rw [← hbit]
      unfold seg52In0AccX40
      linear_combination -r1425
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY41 rho = seg52In0AccY40 rho - Bool.toZMod bit * (seg52In0AccY40 rho - rho 45815) := by
    have hd : rho 45817 = Bool.toZMod bit * (rho 45815 - seg52In0AccY40 rho) := by
      rw [← hbit]
      unfold seg52In0AccY40
      linear_combination -r1426
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45808 * rho 45809 = rho 45818 := by linear_combination r1427
  have hd1 : rho 45808 * rho 45808 = rho 45819 := by linear_combination r1428
  have hd2 : rho 45809 * rho 45809 = rho 45820 := by linear_combination r1429
  have hd3 : rho 45821 * (rho 45809 * rho 45809 + rho 45808 * rho 45808 * (-1)) =
      2 * (rho 45808 * rho 45809) := by
    rw [hd0, hd1, hd2]
    linear_combination r1430
  have hd4 : rho 45822 * (2 - (rho 45809 * rho 45809 + rho 45808 * rho 45808 * (-1))) =
      rho 45809 * rho 45809 - rho 45808 * rho 45808 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1431
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 45808, rho 45809⟩
    ⟨rho 45814, rho 45815⟩ ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 45821, rho 45822⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1432 rho ∧ Seg52.relationRow1433 rho ∧ Seg52.relationRow1434 rho ∧ Seg52.relationRow1435 rho ∧ Seg52.relationRow1436 rho ∧ Seg52.relationRow1437 rho ∧ Seg52.relationRow1438 rho ∧ Seg52.relationRow1439 rho ∧ Seg52.relationRow1440 rho ∧ Seg52.relationRow1441 rho ∧ Seg52.relationRow1442 rho ∧ Seg52.relationRow1443 rho ∧ Seg52.relationRow1444 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p17, p18, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439, r1440, r1441, r1442, r1443, r1444⟩

theorem seg52In0_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45209 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45821, rho 45822⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 45821, rho 45822⟩
        ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 45834, rho 45835⟩ := by
  obtain ⟨r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439, r1440, r1441, r1442, r1443, r1444⟩ := seg52In0_rows41 rho h
  unfold Seg52.relationRow1432 at r1432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1432

  unfold Seg52.relationRow1433 at r1433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1433

  unfold Seg52.relationRow1434 at r1434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1434

  unfold Seg52.relationRow1435 at r1435

  unfold Seg52.relationRow1436 at r1436

  unfold Seg52.relationRow1437 at r1437

  unfold Seg52.relationRow1438 at r1438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1438

  unfold Seg52.relationRow1439 at r1439

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1439

  unfold Seg52.relationRow1440 at r1440

  unfold Seg52.relationRow1441 at r1441

  unfold Seg52.relationRow1442 at r1442

  unfold Seg52.relationRow1443 at r1443

  unfold Seg52.relationRow1444 at r1444

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX42 rho = seg52In0AccX41 rho + rho 45829 := by
    unfold seg52In0AccX42 seg52In0AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 41]

    ring

  have hnexty : seg52In0AccY42 rho = seg52In0AccY41 rho + rho 45830 := by
    unfold seg52In0AccY42 seg52In0AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 41]

    ring

  have ha0 : (rho 45821 + rho 45822) * (seg52In0AccX41 rho + seg52In0AccY41 rho) = rho 45823 := by
    unfold seg52In0AccX41 seg52In0AccY41
    linear_combination r1432
  have ha1 : rho 45822 * seg52In0AccX41 rho = rho 45824 := by
    unfold seg52In0AccX41
    linear_combination r1433
  have ha2 : rho 45821 * seg52In0AccY41 rho = rho 45825 := by
    unfold seg52In0AccY41
    linear_combination r1434
  have ha3 : 3021 * rho 45824 * rho 45825 = rho 45826 := by
    linear_combination r1435
  have ha4 : rho 45827 * (1 + rho 45826) = rho 45824 + rho 45825 := by
    linear_combination r1436
  have ha5 : rho 45828 * (1 - rho 45826) = rho 45823 - rho 45824 - rho 45825 := by
    linear_combination r1437
  have haddx :
      rho 45827 * (1 + 3021 * (rho 45822 * seg52In0AccX41 rho) * (rho 45821 * seg52In0AccY41 rho)) =
        rho 45822 * seg52In0AccX41 rho + rho 45821 * seg52In0AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45828 * (1 - 3021 * (rho 45822 * seg52In0AccX41 rho) * (rho 45821 * seg52In0AccY41 rho)) =
        (-1) * (rho 45822 * seg52In0AccX41 rho) - rho 45821 * seg52In0AccY41 rho +
          (seg52In0AccY41 rho - seg52In0AccX41 rho * (-1)) * (rho 45821 + rho 45822) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45828 * (1 - rho 45826) = rho 45823 - rho 45824 - rho 45825 := ha5
      _ = (-1) * rho 45824 - rho 45825 + (seg52In0AccY41 rho - seg52In0AccX41 rho * (-1)) *
          (rho 45821 + rho 45822) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX42 rho = seg52In0AccX41 rho - Bool.toZMod bit * (seg52In0AccX41 rho - rho 45827) := by
    have hd : rho 45829 = Bool.toZMod bit * (rho 45827 - seg52In0AccX41 rho) := by
      rw [← hbit]
      unfold seg52In0AccX41
      linear_combination -r1438
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY42 rho = seg52In0AccY41 rho - Bool.toZMod bit * (seg52In0AccY41 rho - rho 45828) := by
    have hd : rho 45830 = Bool.toZMod bit * (rho 45828 - seg52In0AccY41 rho) := by
      rw [← hbit]
      unfold seg52In0AccY41
      linear_combination -r1439
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45821 * rho 45822 = rho 45831 := by linear_combination r1440
  have hd1 : rho 45821 * rho 45821 = rho 45832 := by linear_combination r1441
  have hd2 : rho 45822 * rho 45822 = rho 45833 := by linear_combination r1442
  have hd3 : rho 45834 * (rho 45822 * rho 45822 + rho 45821 * rho 45821 * (-1)) =
      2 * (rho 45821 * rho 45822) := by
    rw [hd0, hd1, hd2]
    linear_combination r1443
  have hd4 : rho 45835 * (2 - (rho 45822 * rho 45822 + rho 45821 * rho 45821 * (-1))) =
      rho 45822 * rho 45822 - rho 45821 * rho 45821 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1444
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 45821, rho 45822⟩
    ⟨rho 45827, rho 45828⟩ ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 45834, rho 45835⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1445 rho ∧ Seg52.relationRow1446 rho ∧ Seg52.relationRow1447 rho ∧ Seg52.relationRow1448 rho ∧ Seg52.relationRow1449 rho ∧ Seg52.relationRow1450 rho ∧ Seg52.relationRow1451 rho ∧ Seg52.relationRow1452 rho ∧ Seg52.relationRow1453 rho ∧ Seg52.relationRow1454 rho ∧ Seg52.relationRow1455 rho ∧ Seg52.relationRow1456 rho ∧ Seg52.relationRow1457 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p18, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457⟩

theorem seg52In0_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45210 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45834, rho 45835⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 45834, rho 45835⟩
        ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 45847, rho 45848⟩ := by
  obtain ⟨r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457⟩ := seg52In0_rows42 rho h
  unfold Seg52.relationRow1445 at r1445

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1445

  unfold Seg52.relationRow1446 at r1446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1446

  unfold Seg52.relationRow1447 at r1447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1447

  unfold Seg52.relationRow1448 at r1448

  unfold Seg52.relationRow1449 at r1449

  unfold Seg52.relationRow1450 at r1450

  unfold Seg52.relationRow1451 at r1451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1451

  unfold Seg52.relationRow1452 at r1452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1452

  unfold Seg52.relationRow1453 at r1453

  unfold Seg52.relationRow1454 at r1454

  unfold Seg52.relationRow1455 at r1455

  unfold Seg52.relationRow1456 at r1456

  unfold Seg52.relationRow1457 at r1457

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX43 rho = seg52In0AccX42 rho + rho 45842 := by
    unfold seg52In0AccX43 seg52In0AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 42]

    ring

  have hnexty : seg52In0AccY43 rho = seg52In0AccY42 rho + rho 45843 := by
    unfold seg52In0AccY43 seg52In0AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 42]

    ring

  have ha0 : (rho 45834 + rho 45835) * (seg52In0AccX42 rho + seg52In0AccY42 rho) = rho 45836 := by
    unfold seg52In0AccX42 seg52In0AccY42
    linear_combination r1445
  have ha1 : rho 45835 * seg52In0AccX42 rho = rho 45837 := by
    unfold seg52In0AccX42
    linear_combination r1446
  have ha2 : rho 45834 * seg52In0AccY42 rho = rho 45838 := by
    unfold seg52In0AccY42
    linear_combination r1447
  have ha3 : 3021 * rho 45837 * rho 45838 = rho 45839 := by
    linear_combination r1448
  have ha4 : rho 45840 * (1 + rho 45839) = rho 45837 + rho 45838 := by
    linear_combination r1449
  have ha5 : rho 45841 * (1 - rho 45839) = rho 45836 - rho 45837 - rho 45838 := by
    linear_combination r1450
  have haddx :
      rho 45840 * (1 + 3021 * (rho 45835 * seg52In0AccX42 rho) * (rho 45834 * seg52In0AccY42 rho)) =
        rho 45835 * seg52In0AccX42 rho + rho 45834 * seg52In0AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45841 * (1 - 3021 * (rho 45835 * seg52In0AccX42 rho) * (rho 45834 * seg52In0AccY42 rho)) =
        (-1) * (rho 45835 * seg52In0AccX42 rho) - rho 45834 * seg52In0AccY42 rho +
          (seg52In0AccY42 rho - seg52In0AccX42 rho * (-1)) * (rho 45834 + rho 45835) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45841 * (1 - rho 45839) = rho 45836 - rho 45837 - rho 45838 := ha5
      _ = (-1) * rho 45837 - rho 45838 + (seg52In0AccY42 rho - seg52In0AccX42 rho * (-1)) *
          (rho 45834 + rho 45835) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX43 rho = seg52In0AccX42 rho - Bool.toZMod bit * (seg52In0AccX42 rho - rho 45840) := by
    have hd : rho 45842 = Bool.toZMod bit * (rho 45840 - seg52In0AccX42 rho) := by
      rw [← hbit]
      unfold seg52In0AccX42
      linear_combination -r1451
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY43 rho = seg52In0AccY42 rho - Bool.toZMod bit * (seg52In0AccY42 rho - rho 45841) := by
    have hd : rho 45843 = Bool.toZMod bit * (rho 45841 - seg52In0AccY42 rho) := by
      rw [← hbit]
      unfold seg52In0AccY42
      linear_combination -r1452
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45834 * rho 45835 = rho 45844 := by linear_combination r1453
  have hd1 : rho 45834 * rho 45834 = rho 45845 := by linear_combination r1454
  have hd2 : rho 45835 * rho 45835 = rho 45846 := by linear_combination r1455
  have hd3 : rho 45847 * (rho 45835 * rho 45835 + rho 45834 * rho 45834 * (-1)) =
      2 * (rho 45834 * rho 45835) := by
    rw [hd0, hd1, hd2]
    linear_combination r1456
  have hd4 : rho 45848 * (2 - (rho 45835 * rho 45835 + rho 45834 * rho 45834 * (-1))) =
      rho 45835 * rho 45835 - rho 45834 * rho 45834 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1457
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 45834, rho 45835⟩
    ⟨rho 45840, rho 45841⟩ ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 45847, rho 45848⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1458 rho ∧ Seg52.relationRow1459 rho ∧ Seg52.relationRow1460 rho ∧ Seg52.relationRow1461 rho ∧ Seg52.relationRow1462 rho ∧ Seg52.relationRow1463 rho ∧ Seg52.relationRow1464 rho ∧ Seg52.relationRow1465 rho ∧ Seg52.relationRow1466 rho ∧ Seg52.relationRow1467 rho ∧ Seg52.relationRow1468 rho ∧ Seg52.relationRow1469 rho ∧ Seg52.relationRow1470 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p18, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470⟩

theorem seg52In0_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45211 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45847, rho 45848⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 45847, rho 45848⟩
        ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 45860, rho 45861⟩ := by
  obtain ⟨r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470⟩ := seg52In0_rows43 rho h
  unfold Seg52.relationRow1458 at r1458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1458

  unfold Seg52.relationRow1459 at r1459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1459

  unfold Seg52.relationRow1460 at r1460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1460

  unfold Seg52.relationRow1461 at r1461

  unfold Seg52.relationRow1462 at r1462

  unfold Seg52.relationRow1463 at r1463

  unfold Seg52.relationRow1464 at r1464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1464

  unfold Seg52.relationRow1465 at r1465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1465

  unfold Seg52.relationRow1466 at r1466

  unfold Seg52.relationRow1467 at r1467

  unfold Seg52.relationRow1468 at r1468

  unfold Seg52.relationRow1469 at r1469

  unfold Seg52.relationRow1470 at r1470

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX44 rho = seg52In0AccX43 rho + rho 45855 := by
    unfold seg52In0AccX44 seg52In0AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 43]

    ring

  have hnexty : seg52In0AccY44 rho = seg52In0AccY43 rho + rho 45856 := by
    unfold seg52In0AccY44 seg52In0AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 43]

    ring

  have ha0 : (rho 45847 + rho 45848) * (seg52In0AccX43 rho + seg52In0AccY43 rho) = rho 45849 := by
    unfold seg52In0AccX43 seg52In0AccY43
    linear_combination r1458
  have ha1 : rho 45848 * seg52In0AccX43 rho = rho 45850 := by
    unfold seg52In0AccX43
    linear_combination r1459
  have ha2 : rho 45847 * seg52In0AccY43 rho = rho 45851 := by
    unfold seg52In0AccY43
    linear_combination r1460
  have ha3 : 3021 * rho 45850 * rho 45851 = rho 45852 := by
    linear_combination r1461
  have ha4 : rho 45853 * (1 + rho 45852) = rho 45850 + rho 45851 := by
    linear_combination r1462
  have ha5 : rho 45854 * (1 - rho 45852) = rho 45849 - rho 45850 - rho 45851 := by
    linear_combination r1463
  have haddx :
      rho 45853 * (1 + 3021 * (rho 45848 * seg52In0AccX43 rho) * (rho 45847 * seg52In0AccY43 rho)) =
        rho 45848 * seg52In0AccX43 rho + rho 45847 * seg52In0AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45854 * (1 - 3021 * (rho 45848 * seg52In0AccX43 rho) * (rho 45847 * seg52In0AccY43 rho)) =
        (-1) * (rho 45848 * seg52In0AccX43 rho) - rho 45847 * seg52In0AccY43 rho +
          (seg52In0AccY43 rho - seg52In0AccX43 rho * (-1)) * (rho 45847 + rho 45848) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45854 * (1 - rho 45852) = rho 45849 - rho 45850 - rho 45851 := ha5
      _ = (-1) * rho 45850 - rho 45851 + (seg52In0AccY43 rho - seg52In0AccX43 rho * (-1)) *
          (rho 45847 + rho 45848) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX44 rho = seg52In0AccX43 rho - Bool.toZMod bit * (seg52In0AccX43 rho - rho 45853) := by
    have hd : rho 45855 = Bool.toZMod bit * (rho 45853 - seg52In0AccX43 rho) := by
      rw [← hbit]
      unfold seg52In0AccX43
      linear_combination -r1464
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY44 rho = seg52In0AccY43 rho - Bool.toZMod bit * (seg52In0AccY43 rho - rho 45854) := by
    have hd : rho 45856 = Bool.toZMod bit * (rho 45854 - seg52In0AccY43 rho) := by
      rw [← hbit]
      unfold seg52In0AccY43
      linear_combination -r1465
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45847 * rho 45848 = rho 45857 := by linear_combination r1466
  have hd1 : rho 45847 * rho 45847 = rho 45858 := by linear_combination r1467
  have hd2 : rho 45848 * rho 45848 = rho 45859 := by linear_combination r1468
  have hd3 : rho 45860 * (rho 45848 * rho 45848 + rho 45847 * rho 45847 * (-1)) =
      2 * (rho 45847 * rho 45848) := by
    rw [hd0, hd1, hd2]
    linear_combination r1469
  have hd4 : rho 45861 * (2 - (rho 45848 * rho 45848 + rho 45847 * rho 45847 * (-1))) =
      rho 45848 * rho 45848 - rho 45847 * rho 45847 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1470
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 45847, rho 45848⟩
    ⟨rho 45853, rho 45854⟩ ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 45860, rho 45861⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg52In0_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg52In0_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg52In0_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg52In0_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg52In0_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg52In0_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg52In0_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg52In0_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg52In0_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg52In0_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
