import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1328 rho ∧ Seg48.relationRow1329 rho ∧ Seg48.relationRow1330 rho ∧ Seg48.relationRow1331 rho ∧ Seg48.relationRow1332 rho ∧ Seg48.relationRow1333 rho ∧ Seg48.relationRow1334 rho ∧ Seg48.relationRow1335 rho ∧ Seg48.relationRow1336 rho ∧ Seg48.relationRow1337 rho ∧ Seg48.relationRow1338 rho ∧ Seg48.relationRow1339 rho ∧ Seg48.relationRow1340 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340⟩

theorem seg48In0_rung33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33569 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX33 rho, seg48In0AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34085, rho 34086⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX33 rho, seg48In0AccY33 rho⟩ ⟨rho 34085, rho 34086⟩
        ⟨seg48In0AccX34 rho, seg48In0AccY34 rho⟩ ⟨rho 34098, rho 34099⟩ := by
  obtain ⟨r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340⟩ := seg48In0_rows33 rho h
  unfold Seg48.relationRow1328 at r1328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1328

  unfold Seg48.relationRow1329 at r1329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1329

  unfold Seg48.relationRow1330 at r1330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1330

  unfold Seg48.relationRow1331 at r1331

  unfold Seg48.relationRow1332 at r1332

  unfold Seg48.relationRow1333 at r1333

  unfold Seg48.relationRow1334 at r1334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1334

  unfold Seg48.relationRow1335 at r1335

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1335

  unfold Seg48.relationRow1336 at r1336

  unfold Seg48.relationRow1337 at r1337

  unfold Seg48.relationRow1338 at r1338

  unfold Seg48.relationRow1339 at r1339

  unfold Seg48.relationRow1340 at r1340

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX34 rho = seg48In0AccX33 rho + rho 34093 := by
    unfold seg48In0AccX34 seg48In0AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 33]

    ring

  have hnexty : seg48In0AccY34 rho = seg48In0AccY33 rho + rho 34094 := by
    unfold seg48In0AccY34 seg48In0AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 33]

    ring

  have ha0 : (rho 34085 + rho 34086) * (seg48In0AccX33 rho + seg48In0AccY33 rho) = rho 34087 := by
    unfold seg48In0AccX33 seg48In0AccY33
    linear_combination r1328
  have ha1 : rho 34086 * seg48In0AccX33 rho = rho 34088 := by
    unfold seg48In0AccX33
    linear_combination r1329
  have ha2 : rho 34085 * seg48In0AccY33 rho = rho 34089 := by
    unfold seg48In0AccY33
    linear_combination r1330
  have ha3 : 3021 * rho 34088 * rho 34089 = rho 34090 := by
    linear_combination r1331
  have ha4 : rho 34091 * (1 + rho 34090) = rho 34088 + rho 34089 := by
    linear_combination r1332
  have ha5 : rho 34092 * (1 - rho 34090) = rho 34087 - rho 34088 - rho 34089 := by
    linear_combination r1333
  have haddx :
      rho 34091 * (1 + 3021 * (rho 34086 * seg48In0AccX33 rho) * (rho 34085 * seg48In0AccY33 rho)) =
        rho 34086 * seg48In0AccX33 rho + rho 34085 * seg48In0AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34092 * (1 - 3021 * (rho 34086 * seg48In0AccX33 rho) * (rho 34085 * seg48In0AccY33 rho)) =
        (-1) * (rho 34086 * seg48In0AccX33 rho) - rho 34085 * seg48In0AccY33 rho +
          (seg48In0AccY33 rho - seg48In0AccX33 rho * (-1)) * (rho 34085 + rho 34086) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34092 * (1 - rho 34090) = rho 34087 - rho 34088 - rho 34089 := ha5
      _ = (-1) * rho 34088 - rho 34089 + (seg48In0AccY33 rho - seg48In0AccX33 rho * (-1)) *
          (rho 34085 + rho 34086) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX34 rho = seg48In0AccX33 rho - Bool.toZMod bit * (seg48In0AccX33 rho - rho 34091) := by
    have hd : rho 34093 = Bool.toZMod bit * (rho 34091 - seg48In0AccX33 rho) := by
      rw [← hbit]
      unfold seg48In0AccX33
      linear_combination -r1334
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY34 rho = seg48In0AccY33 rho - Bool.toZMod bit * (seg48In0AccY33 rho - rho 34092) := by
    have hd : rho 34094 = Bool.toZMod bit * (rho 34092 - seg48In0AccY33 rho) := by
      rw [← hbit]
      unfold seg48In0AccY33
      linear_combination -r1335
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34085 * rho 34086 = rho 34095 := by linear_combination r1336
  have hd1 : rho 34085 * rho 34085 = rho 34096 := by linear_combination r1337
  have hd2 : rho 34086 * rho 34086 = rho 34097 := by linear_combination r1338
  have hd3 : rho 34098 * (rho 34086 * rho 34086 + rho 34085 * rho 34085 * (-1)) =
      2 * (rho 34085 * rho 34086) := by
    rw [hd0, hd1, hd2]
    linear_combination r1339
  have hd4 : rho 34099 * (2 - (rho 34086 * rho 34086 + rho 34085 * rho 34085 * (-1))) =
      rho 34086 * rho 34086 - rho 34085 * rho 34085 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1340
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX33 rho, seg48In0AccY33 rho⟩ ⟨rho 34085, rho 34086⟩
    ⟨rho 34091, rho 34092⟩ ⟨seg48In0AccX34 rho, seg48In0AccY34 rho⟩ ⟨rho 34098, rho 34099⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1341 rho ∧ Seg48.relationRow1342 rho ∧ Seg48.relationRow1343 rho ∧ Seg48.relationRow1344 rho ∧ Seg48.relationRow1345 rho ∧ Seg48.relationRow1346 rho ∧ Seg48.relationRow1347 rho ∧ Seg48.relationRow1348 rho ∧ Seg48.relationRow1349 rho ∧ Seg48.relationRow1350 rho ∧ Seg48.relationRow1351 rho ∧ Seg48.relationRow1352 rho ∧ Seg48.relationRow1353 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353, _, _, _, _, _, _⟩

  exact ⟨r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353⟩

theorem seg48In0_rung34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33570 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX34 rho, seg48In0AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34098, rho 34099⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX34 rho, seg48In0AccY34 rho⟩ ⟨rho 34098, rho 34099⟩
        ⟨seg48In0AccX35 rho, seg48In0AccY35 rho⟩ ⟨rho 34111, rho 34112⟩ := by
  obtain ⟨r1341, r1342, r1343, r1344, r1345, r1346, r1347, r1348, r1349, r1350, r1351, r1352, r1353⟩ := seg48In0_rows34 rho h
  unfold Seg48.relationRow1341 at r1341

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1341

  unfold Seg48.relationRow1342 at r1342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1342

  unfold Seg48.relationRow1343 at r1343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1343

  unfold Seg48.relationRow1344 at r1344

  unfold Seg48.relationRow1345 at r1345

  unfold Seg48.relationRow1346 at r1346

  unfold Seg48.relationRow1347 at r1347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1347

  unfold Seg48.relationRow1348 at r1348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1348

  unfold Seg48.relationRow1349 at r1349

  unfold Seg48.relationRow1350 at r1350

  unfold Seg48.relationRow1351 at r1351

  unfold Seg48.relationRow1352 at r1352

  unfold Seg48.relationRow1353 at r1353

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX35 rho = seg48In0AccX34 rho + rho 34106 := by
    unfold seg48In0AccX35 seg48In0AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 34]

    ring

  have hnexty : seg48In0AccY35 rho = seg48In0AccY34 rho + rho 34107 := by
    unfold seg48In0AccY35 seg48In0AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 34]

    ring

  have ha0 : (rho 34098 + rho 34099) * (seg48In0AccX34 rho + seg48In0AccY34 rho) = rho 34100 := by
    unfold seg48In0AccX34 seg48In0AccY34
    linear_combination r1341
  have ha1 : rho 34099 * seg48In0AccX34 rho = rho 34101 := by
    unfold seg48In0AccX34
    linear_combination r1342
  have ha2 : rho 34098 * seg48In0AccY34 rho = rho 34102 := by
    unfold seg48In0AccY34
    linear_combination r1343
  have ha3 : 3021 * rho 34101 * rho 34102 = rho 34103 := by
    linear_combination r1344
  have ha4 : rho 34104 * (1 + rho 34103) = rho 34101 + rho 34102 := by
    linear_combination r1345
  have ha5 : rho 34105 * (1 - rho 34103) = rho 34100 - rho 34101 - rho 34102 := by
    linear_combination r1346
  have haddx :
      rho 34104 * (1 + 3021 * (rho 34099 * seg48In0AccX34 rho) * (rho 34098 * seg48In0AccY34 rho)) =
        rho 34099 * seg48In0AccX34 rho + rho 34098 * seg48In0AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34105 * (1 - 3021 * (rho 34099 * seg48In0AccX34 rho) * (rho 34098 * seg48In0AccY34 rho)) =
        (-1) * (rho 34099 * seg48In0AccX34 rho) - rho 34098 * seg48In0AccY34 rho +
          (seg48In0AccY34 rho - seg48In0AccX34 rho * (-1)) * (rho 34098 + rho 34099) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34105 * (1 - rho 34103) = rho 34100 - rho 34101 - rho 34102 := ha5
      _ = (-1) * rho 34101 - rho 34102 + (seg48In0AccY34 rho - seg48In0AccX34 rho * (-1)) *
          (rho 34098 + rho 34099) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX35 rho = seg48In0AccX34 rho - Bool.toZMod bit * (seg48In0AccX34 rho - rho 34104) := by
    have hd : rho 34106 = Bool.toZMod bit * (rho 34104 - seg48In0AccX34 rho) := by
      rw [← hbit]
      unfold seg48In0AccX34
      linear_combination -r1347
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY35 rho = seg48In0AccY34 rho - Bool.toZMod bit * (seg48In0AccY34 rho - rho 34105) := by
    have hd : rho 34107 = Bool.toZMod bit * (rho 34105 - seg48In0AccY34 rho) := by
      rw [← hbit]
      unfold seg48In0AccY34
      linear_combination -r1348
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34098 * rho 34099 = rho 34108 := by linear_combination r1349
  have hd1 : rho 34098 * rho 34098 = rho 34109 := by linear_combination r1350
  have hd2 : rho 34099 * rho 34099 = rho 34110 := by linear_combination r1351
  have hd3 : rho 34111 * (rho 34099 * rho 34099 + rho 34098 * rho 34098 * (-1)) =
      2 * (rho 34098 * rho 34099) := by
    rw [hd0, hd1, hd2]
    linear_combination r1352
  have hd4 : rho 34112 * (2 - (rho 34099 * rho 34099 + rho 34098 * rho 34098 * (-1))) =
      rho 34099 * rho 34099 - rho 34098 * rho 34098 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1353
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX34 rho, seg48In0AccY34 rho⟩ ⟨rho 34098, rho 34099⟩
    ⟨rho 34104, rho 34105⟩ ⟨seg48In0AccX35 rho, seg48In0AccY35 rho⟩ ⟨rho 34111, rho 34112⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1354 rho ∧ Seg48.relationRow1355 rho ∧ Seg48.relationRow1356 rho ∧ Seg48.relationRow1357 rho ∧ Seg48.relationRow1358 rho ∧ Seg48.relationRow1359 rho ∧ Seg48.relationRow1360 rho ∧ Seg48.relationRow1361 rho ∧ Seg48.relationRow1362 rho ∧ Seg48.relationRow1363 rho ∧ Seg48.relationRow1364 rho ∧ Seg48.relationRow1365 rho ∧ Seg48.relationRow1366 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1354, r1355, r1356, r1357, r1358, r1359⟩

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1354, r1355, r1356, r1357, r1358, r1359, r1360, r1361, r1362, r1363, r1364, r1365, r1366⟩

theorem seg48In0_rung35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33571 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX35 rho, seg48In0AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34111, rho 34112⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX35 rho, seg48In0AccY35 rho⟩ ⟨rho 34111, rho 34112⟩
        ⟨seg48In0AccX36 rho, seg48In0AccY36 rho⟩ ⟨rho 34124, rho 34125⟩ := by
  obtain ⟨r1354, r1355, r1356, r1357, r1358, r1359, r1360, r1361, r1362, r1363, r1364, r1365, r1366⟩ := seg48In0_rows35 rho h
  unfold Seg48.relationRow1354 at r1354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1354

  unfold Seg48.relationRow1355 at r1355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1355

  unfold Seg48.relationRow1356 at r1356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1356

  unfold Seg48.relationRow1357 at r1357

  unfold Seg48.relationRow1358 at r1358

  unfold Seg48.relationRow1359 at r1359

  unfold Seg48.relationRow1360 at r1360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1360

  unfold Seg48.relationRow1361 at r1361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1361

  unfold Seg48.relationRow1362 at r1362

  unfold Seg48.relationRow1363 at r1363

  unfold Seg48.relationRow1364 at r1364

  unfold Seg48.relationRow1365 at r1365

  unfold Seg48.relationRow1366 at r1366

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX36 rho = seg48In0AccX35 rho + rho 34119 := by
    unfold seg48In0AccX36 seg48In0AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 35]

    ring

  have hnexty : seg48In0AccY36 rho = seg48In0AccY35 rho + rho 34120 := by
    unfold seg48In0AccY36 seg48In0AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 35]

    ring

  have ha0 : (rho 34111 + rho 34112) * (seg48In0AccX35 rho + seg48In0AccY35 rho) = rho 34113 := by
    unfold seg48In0AccX35 seg48In0AccY35
    linear_combination r1354
  have ha1 : rho 34112 * seg48In0AccX35 rho = rho 34114 := by
    unfold seg48In0AccX35
    linear_combination r1355
  have ha2 : rho 34111 * seg48In0AccY35 rho = rho 34115 := by
    unfold seg48In0AccY35
    linear_combination r1356
  have ha3 : 3021 * rho 34114 * rho 34115 = rho 34116 := by
    linear_combination r1357
  have ha4 : rho 34117 * (1 + rho 34116) = rho 34114 + rho 34115 := by
    linear_combination r1358
  have ha5 : rho 34118 * (1 - rho 34116) = rho 34113 - rho 34114 - rho 34115 := by
    linear_combination r1359
  have haddx :
      rho 34117 * (1 + 3021 * (rho 34112 * seg48In0AccX35 rho) * (rho 34111 * seg48In0AccY35 rho)) =
        rho 34112 * seg48In0AccX35 rho + rho 34111 * seg48In0AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34118 * (1 - 3021 * (rho 34112 * seg48In0AccX35 rho) * (rho 34111 * seg48In0AccY35 rho)) =
        (-1) * (rho 34112 * seg48In0AccX35 rho) - rho 34111 * seg48In0AccY35 rho +
          (seg48In0AccY35 rho - seg48In0AccX35 rho * (-1)) * (rho 34111 + rho 34112) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34118 * (1 - rho 34116) = rho 34113 - rho 34114 - rho 34115 := ha5
      _ = (-1) * rho 34114 - rho 34115 + (seg48In0AccY35 rho - seg48In0AccX35 rho * (-1)) *
          (rho 34111 + rho 34112) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX36 rho = seg48In0AccX35 rho - Bool.toZMod bit * (seg48In0AccX35 rho - rho 34117) := by
    have hd : rho 34119 = Bool.toZMod bit * (rho 34117 - seg48In0AccX35 rho) := by
      rw [← hbit]
      unfold seg48In0AccX35
      linear_combination -r1360
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY36 rho = seg48In0AccY35 rho - Bool.toZMod bit * (seg48In0AccY35 rho - rho 34118) := by
    have hd : rho 34120 = Bool.toZMod bit * (rho 34118 - seg48In0AccY35 rho) := by
      rw [← hbit]
      unfold seg48In0AccY35
      linear_combination -r1361
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34111 * rho 34112 = rho 34121 := by linear_combination r1362
  have hd1 : rho 34111 * rho 34111 = rho 34122 := by linear_combination r1363
  have hd2 : rho 34112 * rho 34112 = rho 34123 := by linear_combination r1364
  have hd3 : rho 34124 * (rho 34112 * rho 34112 + rho 34111 * rho 34111 * (-1)) =
      2 * (rho 34111 * rho 34112) := by
    rw [hd0, hd1, hd2]
    linear_combination r1365
  have hd4 : rho 34125 * (2 - (rho 34112 * rho 34112 + rho 34111 * rho 34111 * (-1))) =
      rho 34112 * rho 34112 - rho 34111 * rho 34111 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1366
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX35 rho, seg48In0AccY35 rho⟩ ⟨rho 34111, rho 34112⟩
    ⟨rho 34117, rho 34118⟩ ⟨seg48In0AccX36 rho, seg48In0AccY36 rho⟩ ⟨rho 34124, rho 34125⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1367 rho ∧ Seg48.relationRow1368 rho ∧ Seg48.relationRow1369 rho ∧ Seg48.relationRow1370 rho ∧ Seg48.relationRow1371 rho ∧ Seg48.relationRow1372 rho ∧ Seg48.relationRow1373 rho ∧ Seg48.relationRow1374 rho ∧ Seg48.relationRow1375 rho ∧ Seg48.relationRow1376 rho ∧ Seg48.relationRow1377 rho ∧ Seg48.relationRow1378 rho ∧ Seg48.relationRow1379 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379⟩

theorem seg48In0_rung36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33572 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX36 rho, seg48In0AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34124, rho 34125⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX36 rho, seg48In0AccY36 rho⟩ ⟨rho 34124, rho 34125⟩
        ⟨seg48In0AccX37 rho, seg48In0AccY37 rho⟩ ⟨rho 34137, rho 34138⟩ := by
  obtain ⟨r1367, r1368, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379⟩ := seg48In0_rows36 rho h
  unfold Seg48.relationRow1367 at r1367

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1367

  unfold Seg48.relationRow1368 at r1368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1368

  unfold Seg48.relationRow1369 at r1369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1369

  unfold Seg48.relationRow1370 at r1370

  unfold Seg48.relationRow1371 at r1371

  unfold Seg48.relationRow1372 at r1372

  unfold Seg48.relationRow1373 at r1373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1373

  unfold Seg48.relationRow1374 at r1374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1374

  unfold Seg48.relationRow1375 at r1375

  unfold Seg48.relationRow1376 at r1376

  unfold Seg48.relationRow1377 at r1377

  unfold Seg48.relationRow1378 at r1378

  unfold Seg48.relationRow1379 at r1379

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX37 rho = seg48In0AccX36 rho + rho 34132 := by
    unfold seg48In0AccX37 seg48In0AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 36]

    ring

  have hnexty : seg48In0AccY37 rho = seg48In0AccY36 rho + rho 34133 := by
    unfold seg48In0AccY37 seg48In0AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 36]

    ring

  have ha0 : (rho 34124 + rho 34125) * (seg48In0AccX36 rho + seg48In0AccY36 rho) = rho 34126 := by
    unfold seg48In0AccX36 seg48In0AccY36
    linear_combination r1367
  have ha1 : rho 34125 * seg48In0AccX36 rho = rho 34127 := by
    unfold seg48In0AccX36
    linear_combination r1368
  have ha2 : rho 34124 * seg48In0AccY36 rho = rho 34128 := by
    unfold seg48In0AccY36
    linear_combination r1369
  have ha3 : 3021 * rho 34127 * rho 34128 = rho 34129 := by
    linear_combination r1370
  have ha4 : rho 34130 * (1 + rho 34129) = rho 34127 + rho 34128 := by
    linear_combination r1371
  have ha5 : rho 34131 * (1 - rho 34129) = rho 34126 - rho 34127 - rho 34128 := by
    linear_combination r1372
  have haddx :
      rho 34130 * (1 + 3021 * (rho 34125 * seg48In0AccX36 rho) * (rho 34124 * seg48In0AccY36 rho)) =
        rho 34125 * seg48In0AccX36 rho + rho 34124 * seg48In0AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34131 * (1 - 3021 * (rho 34125 * seg48In0AccX36 rho) * (rho 34124 * seg48In0AccY36 rho)) =
        (-1) * (rho 34125 * seg48In0AccX36 rho) - rho 34124 * seg48In0AccY36 rho +
          (seg48In0AccY36 rho - seg48In0AccX36 rho * (-1)) * (rho 34124 + rho 34125) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34131 * (1 - rho 34129) = rho 34126 - rho 34127 - rho 34128 := ha5
      _ = (-1) * rho 34127 - rho 34128 + (seg48In0AccY36 rho - seg48In0AccX36 rho * (-1)) *
          (rho 34124 + rho 34125) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX37 rho = seg48In0AccX36 rho - Bool.toZMod bit * (seg48In0AccX36 rho - rho 34130) := by
    have hd : rho 34132 = Bool.toZMod bit * (rho 34130 - seg48In0AccX36 rho) := by
      rw [← hbit]
      unfold seg48In0AccX36
      linear_combination -r1373
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY37 rho = seg48In0AccY36 rho - Bool.toZMod bit * (seg48In0AccY36 rho - rho 34131) := by
    have hd : rho 34133 = Bool.toZMod bit * (rho 34131 - seg48In0AccY36 rho) := by
      rw [← hbit]
      unfold seg48In0AccY36
      linear_combination -r1374
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34124 * rho 34125 = rho 34134 := by linear_combination r1375
  have hd1 : rho 34124 * rho 34124 = rho 34135 := by linear_combination r1376
  have hd2 : rho 34125 * rho 34125 = rho 34136 := by linear_combination r1377
  have hd3 : rho 34137 * (rho 34125 * rho 34125 + rho 34124 * rho 34124 * (-1)) =
      2 * (rho 34124 * rho 34125) := by
    rw [hd0, hd1, hd2]
    linear_combination r1378
  have hd4 : rho 34138 * (2 - (rho 34125 * rho 34125 + rho 34124 * rho 34124 * (-1))) =
      rho 34125 * rho 34125 - rho 34124 * rho 34124 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1379
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX36 rho, seg48In0AccY36 rho⟩ ⟨rho 34124, rho 34125⟩
    ⟨rho 34130, rho 34131⟩ ⟨seg48In0AccX37 rho, seg48In0AccY37 rho⟩ ⟨rho 34137, rho 34138⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1380 rho ∧ Seg48.relationRow1381 rho ∧ Seg48.relationRow1382 rho ∧ Seg48.relationRow1383 rho ∧ Seg48.relationRow1384 rho ∧ Seg48.relationRow1385 rho ∧ Seg48.relationRow1386 rho ∧ Seg48.relationRow1387 rho ∧ Seg48.relationRow1388 rho ∧ Seg48.relationRow1389 rho ∧ Seg48.relationRow1390 rho ∧ Seg48.relationRow1391 rho ∧ Seg48.relationRow1392 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392⟩

theorem seg48In0_rung37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33573 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX37 rho, seg48In0AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34137, rho 34138⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX37 rho, seg48In0AccY37 rho⟩ ⟨rho 34137, rho 34138⟩
        ⟨seg48In0AccX38 rho, seg48In0AccY38 rho⟩ ⟨rho 34150, rho 34151⟩ := by
  obtain ⟨r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, r1391, r1392⟩ := seg48In0_rows37 rho h
  unfold Seg48.relationRow1380 at r1380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1380

  unfold Seg48.relationRow1381 at r1381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1381

  unfold Seg48.relationRow1382 at r1382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1382

  unfold Seg48.relationRow1383 at r1383

  unfold Seg48.relationRow1384 at r1384

  unfold Seg48.relationRow1385 at r1385

  unfold Seg48.relationRow1386 at r1386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1386

  unfold Seg48.relationRow1387 at r1387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1387

  unfold Seg48.relationRow1388 at r1388

  unfold Seg48.relationRow1389 at r1389

  unfold Seg48.relationRow1390 at r1390

  unfold Seg48.relationRow1391 at r1391

  unfold Seg48.relationRow1392 at r1392

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX38 rho = seg48In0AccX37 rho + rho 34145 := by
    unfold seg48In0AccX38 seg48In0AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 37]

    ring

  have hnexty : seg48In0AccY38 rho = seg48In0AccY37 rho + rho 34146 := by
    unfold seg48In0AccY38 seg48In0AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 37]

    ring

  have ha0 : (rho 34137 + rho 34138) * (seg48In0AccX37 rho + seg48In0AccY37 rho) = rho 34139 := by
    unfold seg48In0AccX37 seg48In0AccY37
    linear_combination r1380
  have ha1 : rho 34138 * seg48In0AccX37 rho = rho 34140 := by
    unfold seg48In0AccX37
    linear_combination r1381
  have ha2 : rho 34137 * seg48In0AccY37 rho = rho 34141 := by
    unfold seg48In0AccY37
    linear_combination r1382
  have ha3 : 3021 * rho 34140 * rho 34141 = rho 34142 := by
    linear_combination r1383
  have ha4 : rho 34143 * (1 + rho 34142) = rho 34140 + rho 34141 := by
    linear_combination r1384
  have ha5 : rho 34144 * (1 - rho 34142) = rho 34139 - rho 34140 - rho 34141 := by
    linear_combination r1385
  have haddx :
      rho 34143 * (1 + 3021 * (rho 34138 * seg48In0AccX37 rho) * (rho 34137 * seg48In0AccY37 rho)) =
        rho 34138 * seg48In0AccX37 rho + rho 34137 * seg48In0AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34144 * (1 - 3021 * (rho 34138 * seg48In0AccX37 rho) * (rho 34137 * seg48In0AccY37 rho)) =
        (-1) * (rho 34138 * seg48In0AccX37 rho) - rho 34137 * seg48In0AccY37 rho +
          (seg48In0AccY37 rho - seg48In0AccX37 rho * (-1)) * (rho 34137 + rho 34138) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34144 * (1 - rho 34142) = rho 34139 - rho 34140 - rho 34141 := ha5
      _ = (-1) * rho 34140 - rho 34141 + (seg48In0AccY37 rho - seg48In0AccX37 rho * (-1)) *
          (rho 34137 + rho 34138) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX38 rho = seg48In0AccX37 rho - Bool.toZMod bit * (seg48In0AccX37 rho - rho 34143) := by
    have hd : rho 34145 = Bool.toZMod bit * (rho 34143 - seg48In0AccX37 rho) := by
      rw [← hbit]
      unfold seg48In0AccX37
      linear_combination -r1386
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY38 rho = seg48In0AccY37 rho - Bool.toZMod bit * (seg48In0AccY37 rho - rho 34144) := by
    have hd : rho 34146 = Bool.toZMod bit * (rho 34144 - seg48In0AccY37 rho) := by
      rw [← hbit]
      unfold seg48In0AccY37
      linear_combination -r1387
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34137 * rho 34138 = rho 34147 := by linear_combination r1388
  have hd1 : rho 34137 * rho 34137 = rho 34148 := by linear_combination r1389
  have hd2 : rho 34138 * rho 34138 = rho 34149 := by linear_combination r1390
  have hd3 : rho 34150 * (rho 34138 * rho 34138 + rho 34137 * rho 34137 * (-1)) =
      2 * (rho 34137 * rho 34138) := by
    rw [hd0, hd1, hd2]
    linear_combination r1391
  have hd4 : rho 34151 * (2 - (rho 34138 * rho 34138 + rho 34137 * rho 34137 * (-1))) =
      rho 34138 * rho 34138 - rho 34137 * rho 34137 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1392
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX37 rho, seg48In0AccY37 rho⟩ ⟨rho 34137, rho 34138⟩
    ⟨rho 34143, rho 34144⟩ ⟨seg48In0AccX38 rho, seg48In0AccY38 rho⟩ ⟨rho 34150, rho 34151⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1393 rho ∧ Seg48.relationRow1394 rho ∧ Seg48.relationRow1395 rho ∧ Seg48.relationRow1396 rho ∧ Seg48.relationRow1397 rho ∧ Seg48.relationRow1398 rho ∧ Seg48.relationRow1399 rho ∧ Seg48.relationRow1400 rho ∧ Seg48.relationRow1401 rho ∧ Seg48.relationRow1402 rho ∧ Seg48.relationRow1403 rho ∧ Seg48.relationRow1404 rho ∧ Seg48.relationRow1405 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405⟩

theorem seg48In0_rung38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33574 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX38 rho, seg48In0AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34150, rho 34151⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX38 rho, seg48In0AccY38 rho⟩ ⟨rho 34150, rho 34151⟩
        ⟨seg48In0AccX39 rho, seg48In0AccY39 rho⟩ ⟨rho 34163, rho 34164⟩ := by
  obtain ⟨r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405⟩ := seg48In0_rows38 rho h
  unfold Seg48.relationRow1393 at r1393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1393

  unfold Seg48.relationRow1394 at r1394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1394

  unfold Seg48.relationRow1395 at r1395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1395

  unfold Seg48.relationRow1396 at r1396

  unfold Seg48.relationRow1397 at r1397

  unfold Seg48.relationRow1398 at r1398

  unfold Seg48.relationRow1399 at r1399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1399

  unfold Seg48.relationRow1400 at r1400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1400

  unfold Seg48.relationRow1401 at r1401

  unfold Seg48.relationRow1402 at r1402

  unfold Seg48.relationRow1403 at r1403

  unfold Seg48.relationRow1404 at r1404

  unfold Seg48.relationRow1405 at r1405

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX39 rho = seg48In0AccX38 rho + rho 34158 := by
    unfold seg48In0AccX39 seg48In0AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 38]

    ring

  have hnexty : seg48In0AccY39 rho = seg48In0AccY38 rho + rho 34159 := by
    unfold seg48In0AccY39 seg48In0AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 38]

    ring

  have ha0 : (rho 34150 + rho 34151) * (seg48In0AccX38 rho + seg48In0AccY38 rho) = rho 34152 := by
    unfold seg48In0AccX38 seg48In0AccY38
    linear_combination r1393
  have ha1 : rho 34151 * seg48In0AccX38 rho = rho 34153 := by
    unfold seg48In0AccX38
    linear_combination r1394
  have ha2 : rho 34150 * seg48In0AccY38 rho = rho 34154 := by
    unfold seg48In0AccY38
    linear_combination r1395
  have ha3 : 3021 * rho 34153 * rho 34154 = rho 34155 := by
    linear_combination r1396
  have ha4 : rho 34156 * (1 + rho 34155) = rho 34153 + rho 34154 := by
    linear_combination r1397
  have ha5 : rho 34157 * (1 - rho 34155) = rho 34152 - rho 34153 - rho 34154 := by
    linear_combination r1398
  have haddx :
      rho 34156 * (1 + 3021 * (rho 34151 * seg48In0AccX38 rho) * (rho 34150 * seg48In0AccY38 rho)) =
        rho 34151 * seg48In0AccX38 rho + rho 34150 * seg48In0AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34157 * (1 - 3021 * (rho 34151 * seg48In0AccX38 rho) * (rho 34150 * seg48In0AccY38 rho)) =
        (-1) * (rho 34151 * seg48In0AccX38 rho) - rho 34150 * seg48In0AccY38 rho +
          (seg48In0AccY38 rho - seg48In0AccX38 rho * (-1)) * (rho 34150 + rho 34151) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34157 * (1 - rho 34155) = rho 34152 - rho 34153 - rho 34154 := ha5
      _ = (-1) * rho 34153 - rho 34154 + (seg48In0AccY38 rho - seg48In0AccX38 rho * (-1)) *
          (rho 34150 + rho 34151) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX39 rho = seg48In0AccX38 rho - Bool.toZMod bit * (seg48In0AccX38 rho - rho 34156) := by
    have hd : rho 34158 = Bool.toZMod bit * (rho 34156 - seg48In0AccX38 rho) := by
      rw [← hbit]
      unfold seg48In0AccX38
      linear_combination -r1399
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY39 rho = seg48In0AccY38 rho - Bool.toZMod bit * (seg48In0AccY38 rho - rho 34157) := by
    have hd : rho 34159 = Bool.toZMod bit * (rho 34157 - seg48In0AccY38 rho) := by
      rw [← hbit]
      unfold seg48In0AccY38
      linear_combination -r1400
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34150 * rho 34151 = rho 34160 := by linear_combination r1401
  have hd1 : rho 34150 * rho 34150 = rho 34161 := by linear_combination r1402
  have hd2 : rho 34151 * rho 34151 = rho 34162 := by linear_combination r1403
  have hd3 : rho 34163 * (rho 34151 * rho 34151 + rho 34150 * rho 34150 * (-1)) =
      2 * (rho 34150 * rho 34151) := by
    rw [hd0, hd1, hd2]
    linear_combination r1404
  have hd4 : rho 34164 * (2 - (rho 34151 * rho 34151 + rho 34150 * rho 34150 * (-1))) =
      rho 34151 * rho 34151 - rho 34150 * rho 34150 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1405
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX38 rho, seg48In0AccY38 rho⟩ ⟨rho 34150, rho 34151⟩
    ⟨rho 34156, rho 34157⟩ ⟨seg48In0AccX39 rho, seg48In0AccY39 rho⟩ ⟨rho 34163, rho 34164⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1406 rho ∧ Seg48.relationRow1407 rho ∧ Seg48.relationRow1408 rho ∧ Seg48.relationRow1409 rho ∧ Seg48.relationRow1410 rho ∧ Seg48.relationRow1411 rho ∧ Seg48.relationRow1412 rho ∧ Seg48.relationRow1413 rho ∧ Seg48.relationRow1414 rho ∧ Seg48.relationRow1415 rho ∧ Seg48.relationRow1416 rho ∧ Seg48.relationRow1417 rho ∧ Seg48.relationRow1418 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418⟩

theorem seg48In0_rung39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33575 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX39 rho, seg48In0AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34163, rho 34164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX39 rho, seg48In0AccY39 rho⟩ ⟨rho 34163, rho 34164⟩
        ⟨seg48In0AccX40 rho, seg48In0AccY40 rho⟩ ⟨rho 34176, rho 34177⟩ := by
  obtain ⟨r1406, r1407, r1408, r1409, r1410, r1411, r1412, r1413, r1414, r1415, r1416, r1417, r1418⟩ := seg48In0_rows39 rho h
  unfold Seg48.relationRow1406 at r1406

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1406

  unfold Seg48.relationRow1407 at r1407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1407

  unfold Seg48.relationRow1408 at r1408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1408

  unfold Seg48.relationRow1409 at r1409

  unfold Seg48.relationRow1410 at r1410

  unfold Seg48.relationRow1411 at r1411

  unfold Seg48.relationRow1412 at r1412

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1412

  unfold Seg48.relationRow1413 at r1413

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1413

  unfold Seg48.relationRow1414 at r1414

  unfold Seg48.relationRow1415 at r1415

  unfold Seg48.relationRow1416 at r1416

  unfold Seg48.relationRow1417 at r1417

  unfold Seg48.relationRow1418 at r1418

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX40 rho = seg48In0AccX39 rho + rho 34171 := by
    unfold seg48In0AccX40 seg48In0AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 39]

    ring

  have hnexty : seg48In0AccY40 rho = seg48In0AccY39 rho + rho 34172 := by
    unfold seg48In0AccY40 seg48In0AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 39]

    ring

  have ha0 : (rho 34163 + rho 34164) * (seg48In0AccX39 rho + seg48In0AccY39 rho) = rho 34165 := by
    unfold seg48In0AccX39 seg48In0AccY39
    linear_combination r1406
  have ha1 : rho 34164 * seg48In0AccX39 rho = rho 34166 := by
    unfold seg48In0AccX39
    linear_combination r1407
  have ha2 : rho 34163 * seg48In0AccY39 rho = rho 34167 := by
    unfold seg48In0AccY39
    linear_combination r1408
  have ha3 : 3021 * rho 34166 * rho 34167 = rho 34168 := by
    linear_combination r1409
  have ha4 : rho 34169 * (1 + rho 34168) = rho 34166 + rho 34167 := by
    linear_combination r1410
  have ha5 : rho 34170 * (1 - rho 34168) = rho 34165 - rho 34166 - rho 34167 := by
    linear_combination r1411
  have haddx :
      rho 34169 * (1 + 3021 * (rho 34164 * seg48In0AccX39 rho) * (rho 34163 * seg48In0AccY39 rho)) =
        rho 34164 * seg48In0AccX39 rho + rho 34163 * seg48In0AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34170 * (1 - 3021 * (rho 34164 * seg48In0AccX39 rho) * (rho 34163 * seg48In0AccY39 rho)) =
        (-1) * (rho 34164 * seg48In0AccX39 rho) - rho 34163 * seg48In0AccY39 rho +
          (seg48In0AccY39 rho - seg48In0AccX39 rho * (-1)) * (rho 34163 + rho 34164) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34170 * (1 - rho 34168) = rho 34165 - rho 34166 - rho 34167 := ha5
      _ = (-1) * rho 34166 - rho 34167 + (seg48In0AccY39 rho - seg48In0AccX39 rho * (-1)) *
          (rho 34163 + rho 34164) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX40 rho = seg48In0AccX39 rho - Bool.toZMod bit * (seg48In0AccX39 rho - rho 34169) := by
    have hd : rho 34171 = Bool.toZMod bit * (rho 34169 - seg48In0AccX39 rho) := by
      rw [← hbit]
      unfold seg48In0AccX39
      linear_combination -r1412
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY40 rho = seg48In0AccY39 rho - Bool.toZMod bit * (seg48In0AccY39 rho - rho 34170) := by
    have hd : rho 34172 = Bool.toZMod bit * (rho 34170 - seg48In0AccY39 rho) := by
      rw [← hbit]
      unfold seg48In0AccY39
      linear_combination -r1413
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34163 * rho 34164 = rho 34173 := by linear_combination r1414
  have hd1 : rho 34163 * rho 34163 = rho 34174 := by linear_combination r1415
  have hd2 : rho 34164 * rho 34164 = rho 34175 := by linear_combination r1416
  have hd3 : rho 34176 * (rho 34164 * rho 34164 + rho 34163 * rho 34163 * (-1)) =
      2 * (rho 34163 * rho 34164) := by
    rw [hd0, hd1, hd2]
    linear_combination r1417
  have hd4 : rho 34177 * (2 - (rho 34164 * rho 34164 + rho 34163 * rho 34163 * (-1))) =
      rho 34164 * rho 34164 - rho 34163 * rho 34163 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1418
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX39 rho, seg48In0AccY39 rho⟩ ⟨rho 34163, rho 34164⟩
    ⟨rho 34169, rho 34170⟩ ⟨seg48In0AccX40 rho, seg48In0AccY40 rho⟩ ⟨rho 34176, rho 34177⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1419 rho ∧ Seg48.relationRow1420 rho ∧ Seg48.relationRow1421 rho ∧ Seg48.relationRow1422 rho ∧ Seg48.relationRow1423 rho ∧ Seg48.relationRow1424 rho ∧ Seg48.relationRow1425 rho ∧ Seg48.relationRow1426 rho ∧ Seg48.relationRow1427 rho ∧ Seg48.relationRow1428 rho ∧ Seg48.relationRow1429 rho ∧ Seg48.relationRow1430 rho ∧ Seg48.relationRow1431 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, _, _, _, _, _, _, _, _⟩

  exact ⟨r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431⟩

theorem seg48In0_rung40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33576 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX40 rho, seg48In0AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34176, rho 34177⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX40 rho, seg48In0AccY40 rho⟩ ⟨rho 34176, rho 34177⟩
        ⟨seg48In0AccX41 rho, seg48In0AccY41 rho⟩ ⟨rho 34189, rho 34190⟩ := by
  obtain ⟨r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431⟩ := seg48In0_rows40 rho h
  unfold Seg48.relationRow1419 at r1419

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1419

  unfold Seg48.relationRow1420 at r1420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1420

  unfold Seg48.relationRow1421 at r1421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1421

  unfold Seg48.relationRow1422 at r1422

  unfold Seg48.relationRow1423 at r1423

  unfold Seg48.relationRow1424 at r1424

  unfold Seg48.relationRow1425 at r1425

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1425

  unfold Seg48.relationRow1426 at r1426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1426

  unfold Seg48.relationRow1427 at r1427

  unfold Seg48.relationRow1428 at r1428

  unfold Seg48.relationRow1429 at r1429

  unfold Seg48.relationRow1430 at r1430

  unfold Seg48.relationRow1431 at r1431

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX41 rho = seg48In0AccX40 rho + rho 34184 := by
    unfold seg48In0AccX41 seg48In0AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 40]

    ring

  have hnexty : seg48In0AccY41 rho = seg48In0AccY40 rho + rho 34185 := by
    unfold seg48In0AccY41 seg48In0AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 40]

    ring

  have ha0 : (rho 34176 + rho 34177) * (seg48In0AccX40 rho + seg48In0AccY40 rho) = rho 34178 := by
    unfold seg48In0AccX40 seg48In0AccY40
    linear_combination r1419
  have ha1 : rho 34177 * seg48In0AccX40 rho = rho 34179 := by
    unfold seg48In0AccX40
    linear_combination r1420
  have ha2 : rho 34176 * seg48In0AccY40 rho = rho 34180 := by
    unfold seg48In0AccY40
    linear_combination r1421
  have ha3 : 3021 * rho 34179 * rho 34180 = rho 34181 := by
    linear_combination r1422
  have ha4 : rho 34182 * (1 + rho 34181) = rho 34179 + rho 34180 := by
    linear_combination r1423
  have ha5 : rho 34183 * (1 - rho 34181) = rho 34178 - rho 34179 - rho 34180 := by
    linear_combination r1424
  have haddx :
      rho 34182 * (1 + 3021 * (rho 34177 * seg48In0AccX40 rho) * (rho 34176 * seg48In0AccY40 rho)) =
        rho 34177 * seg48In0AccX40 rho + rho 34176 * seg48In0AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34183 * (1 - 3021 * (rho 34177 * seg48In0AccX40 rho) * (rho 34176 * seg48In0AccY40 rho)) =
        (-1) * (rho 34177 * seg48In0AccX40 rho) - rho 34176 * seg48In0AccY40 rho +
          (seg48In0AccY40 rho - seg48In0AccX40 rho * (-1)) * (rho 34176 + rho 34177) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34183 * (1 - rho 34181) = rho 34178 - rho 34179 - rho 34180 := ha5
      _ = (-1) * rho 34179 - rho 34180 + (seg48In0AccY40 rho - seg48In0AccX40 rho * (-1)) *
          (rho 34176 + rho 34177) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX41 rho = seg48In0AccX40 rho - Bool.toZMod bit * (seg48In0AccX40 rho - rho 34182) := by
    have hd : rho 34184 = Bool.toZMod bit * (rho 34182 - seg48In0AccX40 rho) := by
      rw [← hbit]
      unfold seg48In0AccX40
      linear_combination -r1425
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY41 rho = seg48In0AccY40 rho - Bool.toZMod bit * (seg48In0AccY40 rho - rho 34183) := by
    have hd : rho 34185 = Bool.toZMod bit * (rho 34183 - seg48In0AccY40 rho) := by
      rw [← hbit]
      unfold seg48In0AccY40
      linear_combination -r1426
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34176 * rho 34177 = rho 34186 := by linear_combination r1427
  have hd1 : rho 34176 * rho 34176 = rho 34187 := by linear_combination r1428
  have hd2 : rho 34177 * rho 34177 = rho 34188 := by linear_combination r1429
  have hd3 : rho 34189 * (rho 34177 * rho 34177 + rho 34176 * rho 34176 * (-1)) =
      2 * (rho 34176 * rho 34177) := by
    rw [hd0, hd1, hd2]
    linear_combination r1430
  have hd4 : rho 34190 * (2 - (rho 34177 * rho 34177 + rho 34176 * rho 34176 * (-1))) =
      rho 34177 * rho 34177 - rho 34176 * rho 34176 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1431
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX40 rho, seg48In0AccY40 rho⟩ ⟨rho 34176, rho 34177⟩
    ⟨rho 34182, rho 34183⟩ ⟨seg48In0AccX41 rho, seg48In0AccY41 rho⟩ ⟨rho 34189, rho 34190⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1432 rho ∧ Seg48.relationRow1433 rho ∧ Seg48.relationRow1434 rho ∧ Seg48.relationRow1435 rho ∧ Seg48.relationRow1436 rho ∧ Seg48.relationRow1437 rho ∧ Seg48.relationRow1438 rho ∧ Seg48.relationRow1439 rho ∧ Seg48.relationRow1440 rho ∧ Seg48.relationRow1441 rho ∧ Seg48.relationRow1442 rho ∧ Seg48.relationRow1443 rho ∧ Seg48.relationRow1444 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart17 at p17

  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439⟩

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439, r1440, r1441, r1442, r1443, r1444⟩

theorem seg48In0_rung41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33577 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX41 rho, seg48In0AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34189, rho 34190⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX41 rho, seg48In0AccY41 rho⟩ ⟨rho 34189, rho 34190⟩
        ⟨seg48In0AccX42 rho, seg48In0AccY42 rho⟩ ⟨rho 34202, rho 34203⟩ := by
  obtain ⟨r1432, r1433, r1434, r1435, r1436, r1437, r1438, r1439, r1440, r1441, r1442, r1443, r1444⟩ := seg48In0_rows41 rho h
  unfold Seg48.relationRow1432 at r1432

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1432

  unfold Seg48.relationRow1433 at r1433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1433

  unfold Seg48.relationRow1434 at r1434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1434

  unfold Seg48.relationRow1435 at r1435

  unfold Seg48.relationRow1436 at r1436

  unfold Seg48.relationRow1437 at r1437

  unfold Seg48.relationRow1438 at r1438

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1438

  unfold Seg48.relationRow1439 at r1439

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1439

  unfold Seg48.relationRow1440 at r1440

  unfold Seg48.relationRow1441 at r1441

  unfold Seg48.relationRow1442 at r1442

  unfold Seg48.relationRow1443 at r1443

  unfold Seg48.relationRow1444 at r1444

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX42 rho = seg48In0AccX41 rho + rho 34197 := by
    unfold seg48In0AccX42 seg48In0AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 41]

    ring

  have hnexty : seg48In0AccY42 rho = seg48In0AccY41 rho + rho 34198 := by
    unfold seg48In0AccY42 seg48In0AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 41]

    ring

  have ha0 : (rho 34189 + rho 34190) * (seg48In0AccX41 rho + seg48In0AccY41 rho) = rho 34191 := by
    unfold seg48In0AccX41 seg48In0AccY41
    linear_combination r1432
  have ha1 : rho 34190 * seg48In0AccX41 rho = rho 34192 := by
    unfold seg48In0AccX41
    linear_combination r1433
  have ha2 : rho 34189 * seg48In0AccY41 rho = rho 34193 := by
    unfold seg48In0AccY41
    linear_combination r1434
  have ha3 : 3021 * rho 34192 * rho 34193 = rho 34194 := by
    linear_combination r1435
  have ha4 : rho 34195 * (1 + rho 34194) = rho 34192 + rho 34193 := by
    linear_combination r1436
  have ha5 : rho 34196 * (1 - rho 34194) = rho 34191 - rho 34192 - rho 34193 := by
    linear_combination r1437
  have haddx :
      rho 34195 * (1 + 3021 * (rho 34190 * seg48In0AccX41 rho) * (rho 34189 * seg48In0AccY41 rho)) =
        rho 34190 * seg48In0AccX41 rho + rho 34189 * seg48In0AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34196 * (1 - 3021 * (rho 34190 * seg48In0AccX41 rho) * (rho 34189 * seg48In0AccY41 rho)) =
        (-1) * (rho 34190 * seg48In0AccX41 rho) - rho 34189 * seg48In0AccY41 rho +
          (seg48In0AccY41 rho - seg48In0AccX41 rho * (-1)) * (rho 34189 + rho 34190) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34196 * (1 - rho 34194) = rho 34191 - rho 34192 - rho 34193 := ha5
      _ = (-1) * rho 34192 - rho 34193 + (seg48In0AccY41 rho - seg48In0AccX41 rho * (-1)) *
          (rho 34189 + rho 34190) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX42 rho = seg48In0AccX41 rho - Bool.toZMod bit * (seg48In0AccX41 rho - rho 34195) := by
    have hd : rho 34197 = Bool.toZMod bit * (rho 34195 - seg48In0AccX41 rho) := by
      rw [← hbit]
      unfold seg48In0AccX41
      linear_combination -r1438
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY42 rho = seg48In0AccY41 rho - Bool.toZMod bit * (seg48In0AccY41 rho - rho 34196) := by
    have hd : rho 34198 = Bool.toZMod bit * (rho 34196 - seg48In0AccY41 rho) := by
      rw [← hbit]
      unfold seg48In0AccY41
      linear_combination -r1439
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34189 * rho 34190 = rho 34199 := by linear_combination r1440
  have hd1 : rho 34189 * rho 34189 = rho 34200 := by linear_combination r1441
  have hd2 : rho 34190 * rho 34190 = rho 34201 := by linear_combination r1442
  have hd3 : rho 34202 * (rho 34190 * rho 34190 + rho 34189 * rho 34189 * (-1)) =
      2 * (rho 34189 * rho 34190) := by
    rw [hd0, hd1, hd2]
    linear_combination r1443
  have hd4 : rho 34203 * (2 - (rho 34190 * rho 34190 + rho 34189 * rho 34189 * (-1))) =
      rho 34190 * rho 34190 - rho 34189 * rho 34189 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1444
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX41 rho, seg48In0AccY41 rho⟩ ⟨rho 34189, rho 34190⟩
    ⟨rho 34195, rho 34196⟩ ⟨seg48In0AccX42 rho, seg48In0AccY42 rho⟩ ⟨rho 34202, rho 34203⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1445 rho ∧ Seg48.relationRow1446 rho ∧ Seg48.relationRow1447 rho ∧ Seg48.relationRow1448 rho ∧ Seg48.relationRow1449 rho ∧ Seg48.relationRow1450 rho ∧ Seg48.relationRow1451 rho ∧ Seg48.relationRow1452 rho ∧ Seg48.relationRow1453 rho ∧ Seg48.relationRow1454 rho ∧ Seg48.relationRow1455 rho ∧ Seg48.relationRow1456 rho ∧ Seg48.relationRow1457 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457⟩

theorem seg48In0_rung42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33578 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX42 rho, seg48In0AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34202, rho 34203⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX42 rho, seg48In0AccY42 rho⟩ ⟨rho 34202, rho 34203⟩
        ⟨seg48In0AccX43 rho, seg48In0AccY43 rho⟩ ⟨rho 34215, rho 34216⟩ := by
  obtain ⟨r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457⟩ := seg48In0_rows42 rho h
  unfold Seg48.relationRow1445 at r1445

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1445

  unfold Seg48.relationRow1446 at r1446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1446

  unfold Seg48.relationRow1447 at r1447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1447

  unfold Seg48.relationRow1448 at r1448

  unfold Seg48.relationRow1449 at r1449

  unfold Seg48.relationRow1450 at r1450

  unfold Seg48.relationRow1451 at r1451

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1451

  unfold Seg48.relationRow1452 at r1452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1452

  unfold Seg48.relationRow1453 at r1453

  unfold Seg48.relationRow1454 at r1454

  unfold Seg48.relationRow1455 at r1455

  unfold Seg48.relationRow1456 at r1456

  unfold Seg48.relationRow1457 at r1457

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX43 rho = seg48In0AccX42 rho + rho 34210 := by
    unfold seg48In0AccX43 seg48In0AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 42]

    ring

  have hnexty : seg48In0AccY43 rho = seg48In0AccY42 rho + rho 34211 := by
    unfold seg48In0AccY43 seg48In0AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 42]

    ring

  have ha0 : (rho 34202 + rho 34203) * (seg48In0AccX42 rho + seg48In0AccY42 rho) = rho 34204 := by
    unfold seg48In0AccX42 seg48In0AccY42
    linear_combination r1445
  have ha1 : rho 34203 * seg48In0AccX42 rho = rho 34205 := by
    unfold seg48In0AccX42
    linear_combination r1446
  have ha2 : rho 34202 * seg48In0AccY42 rho = rho 34206 := by
    unfold seg48In0AccY42
    linear_combination r1447
  have ha3 : 3021 * rho 34205 * rho 34206 = rho 34207 := by
    linear_combination r1448
  have ha4 : rho 34208 * (1 + rho 34207) = rho 34205 + rho 34206 := by
    linear_combination r1449
  have ha5 : rho 34209 * (1 - rho 34207) = rho 34204 - rho 34205 - rho 34206 := by
    linear_combination r1450
  have haddx :
      rho 34208 * (1 + 3021 * (rho 34203 * seg48In0AccX42 rho) * (rho 34202 * seg48In0AccY42 rho)) =
        rho 34203 * seg48In0AccX42 rho + rho 34202 * seg48In0AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34209 * (1 - 3021 * (rho 34203 * seg48In0AccX42 rho) * (rho 34202 * seg48In0AccY42 rho)) =
        (-1) * (rho 34203 * seg48In0AccX42 rho) - rho 34202 * seg48In0AccY42 rho +
          (seg48In0AccY42 rho - seg48In0AccX42 rho * (-1)) * (rho 34202 + rho 34203) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34209 * (1 - rho 34207) = rho 34204 - rho 34205 - rho 34206 := ha5
      _ = (-1) * rho 34205 - rho 34206 + (seg48In0AccY42 rho - seg48In0AccX42 rho * (-1)) *
          (rho 34202 + rho 34203) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX43 rho = seg48In0AccX42 rho - Bool.toZMod bit * (seg48In0AccX42 rho - rho 34208) := by
    have hd : rho 34210 = Bool.toZMod bit * (rho 34208 - seg48In0AccX42 rho) := by
      rw [← hbit]
      unfold seg48In0AccX42
      linear_combination -r1451
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY43 rho = seg48In0AccY42 rho - Bool.toZMod bit * (seg48In0AccY42 rho - rho 34209) := by
    have hd : rho 34211 = Bool.toZMod bit * (rho 34209 - seg48In0AccY42 rho) := by
      rw [← hbit]
      unfold seg48In0AccY42
      linear_combination -r1452
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34202 * rho 34203 = rho 34212 := by linear_combination r1453
  have hd1 : rho 34202 * rho 34202 = rho 34213 := by linear_combination r1454
  have hd2 : rho 34203 * rho 34203 = rho 34214 := by linear_combination r1455
  have hd3 : rho 34215 * (rho 34203 * rho 34203 + rho 34202 * rho 34202 * (-1)) =
      2 * (rho 34202 * rho 34203) := by
    rw [hd0, hd1, hd2]
    linear_combination r1456
  have hd4 : rho 34216 * (2 - (rho 34203 * rho 34203 + rho 34202 * rho 34202 * (-1))) =
      rho 34203 * rho 34203 - rho 34202 * rho 34202 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1457
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX42 rho, seg48In0AccY42 rho⟩ ⟨rho 34202, rho 34203⟩
    ⟨rho 34208, rho 34209⟩ ⟨seg48In0AccX43 rho, seg48In0AccY43 rho⟩ ⟨rho 34215, rho 34216⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1458 rho ∧ Seg48.relationRow1459 rho ∧ Seg48.relationRow1460 rho ∧ Seg48.relationRow1461 rho ∧ Seg48.relationRow1462 rho ∧ Seg48.relationRow1463 rho ∧ Seg48.relationRow1464 rho ∧ Seg48.relationRow1465 rho ∧ Seg48.relationRow1466 rho ∧ Seg48.relationRow1467 rho ∧ Seg48.relationRow1468 rho ∧ Seg48.relationRow1469 rho ∧ Seg48.relationRow1470 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart18 at p18

  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470⟩

theorem seg48In0_rung43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33579 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX43 rho, seg48In0AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34215, rho 34216⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX43 rho, seg48In0AccY43 rho⟩ ⟨rho 34215, rho 34216⟩
        ⟨seg48In0AccX44 rho, seg48In0AccY44 rho⟩ ⟨rho 34228, rho 34229⟩ := by
  obtain ⟨r1458, r1459, r1460, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470⟩ := seg48In0_rows43 rho h
  unfold Seg48.relationRow1458 at r1458

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1458

  unfold Seg48.relationRow1459 at r1459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1459

  unfold Seg48.relationRow1460 at r1460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1460

  unfold Seg48.relationRow1461 at r1461

  unfold Seg48.relationRow1462 at r1462

  unfold Seg48.relationRow1463 at r1463

  unfold Seg48.relationRow1464 at r1464

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1464

  unfold Seg48.relationRow1465 at r1465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1465

  unfold Seg48.relationRow1466 at r1466

  unfold Seg48.relationRow1467 at r1467

  unfold Seg48.relationRow1468 at r1468

  unfold Seg48.relationRow1469 at r1469

  unfold Seg48.relationRow1470 at r1470

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX44 rho = seg48In0AccX43 rho + rho 34223 := by
    unfold seg48In0AccX44 seg48In0AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 43]

    ring

  have hnexty : seg48In0AccY44 rho = seg48In0AccY43 rho + rho 34224 := by
    unfold seg48In0AccY44 seg48In0AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 43]

    ring

  have ha0 : (rho 34215 + rho 34216) * (seg48In0AccX43 rho + seg48In0AccY43 rho) = rho 34217 := by
    unfold seg48In0AccX43 seg48In0AccY43
    linear_combination r1458
  have ha1 : rho 34216 * seg48In0AccX43 rho = rho 34218 := by
    unfold seg48In0AccX43
    linear_combination r1459
  have ha2 : rho 34215 * seg48In0AccY43 rho = rho 34219 := by
    unfold seg48In0AccY43
    linear_combination r1460
  have ha3 : 3021 * rho 34218 * rho 34219 = rho 34220 := by
    linear_combination r1461
  have ha4 : rho 34221 * (1 + rho 34220) = rho 34218 + rho 34219 := by
    linear_combination r1462
  have ha5 : rho 34222 * (1 - rho 34220) = rho 34217 - rho 34218 - rho 34219 := by
    linear_combination r1463
  have haddx :
      rho 34221 * (1 + 3021 * (rho 34216 * seg48In0AccX43 rho) * (rho 34215 * seg48In0AccY43 rho)) =
        rho 34216 * seg48In0AccX43 rho + rho 34215 * seg48In0AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34222 * (1 - 3021 * (rho 34216 * seg48In0AccX43 rho) * (rho 34215 * seg48In0AccY43 rho)) =
        (-1) * (rho 34216 * seg48In0AccX43 rho) - rho 34215 * seg48In0AccY43 rho +
          (seg48In0AccY43 rho - seg48In0AccX43 rho * (-1)) * (rho 34215 + rho 34216) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34222 * (1 - rho 34220) = rho 34217 - rho 34218 - rho 34219 := ha5
      _ = (-1) * rho 34218 - rho 34219 + (seg48In0AccY43 rho - seg48In0AccX43 rho * (-1)) *
          (rho 34215 + rho 34216) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX44 rho = seg48In0AccX43 rho - Bool.toZMod bit * (seg48In0AccX43 rho - rho 34221) := by
    have hd : rho 34223 = Bool.toZMod bit * (rho 34221 - seg48In0AccX43 rho) := by
      rw [← hbit]
      unfold seg48In0AccX43
      linear_combination -r1464
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY44 rho = seg48In0AccY43 rho - Bool.toZMod bit * (seg48In0AccY43 rho - rho 34222) := by
    have hd : rho 34224 = Bool.toZMod bit * (rho 34222 - seg48In0AccY43 rho) := by
      rw [← hbit]
      unfold seg48In0AccY43
      linear_combination -r1465
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34215 * rho 34216 = rho 34225 := by linear_combination r1466
  have hd1 : rho 34215 * rho 34215 = rho 34226 := by linear_combination r1467
  have hd2 : rho 34216 * rho 34216 = rho 34227 := by linear_combination r1468
  have hd3 : rho 34228 * (rho 34216 * rho 34216 + rho 34215 * rho 34215 * (-1)) =
      2 * (rho 34215 * rho 34216) := by
    rw [hd0, hd1, hd2]
    linear_combination r1469
  have hd4 : rho 34229 * (2 - (rho 34216 * rho 34216 + rho 34215 * rho 34215 * (-1))) =
      rho 34216 * rho 34216 - rho 34215 * rho 34215 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1470
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX43 rho, seg48In0AccY43 rho⟩ ⟨rho 34215, rho 34216⟩
    ⟨rho 34221, rho 34222⟩ ⟨seg48In0AccX44 rho, seg48In0AccY44 rho⟩ ⟨rho 34228, rho 34229⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c3 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg48In0_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg48In0_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg48In0_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg48In0_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg48In0_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg48In0_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg48In0_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg48In0_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg48In0_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg48In0_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
