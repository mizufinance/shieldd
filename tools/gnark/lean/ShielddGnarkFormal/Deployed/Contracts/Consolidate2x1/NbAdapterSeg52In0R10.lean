import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2329 rho ∧ Seg52.relationRow2330 rho ∧ Seg52.relationRow2331 rho ∧ Seg52.relationRow2332 rho ∧ Seg52.relationRow2333 rho ∧ Seg52.relationRow2334 rho ∧ Seg52.relationRow2335 rho ∧ Seg52.relationRow2336 rho ∧ Seg52.relationRow2337 rho ∧ Seg52.relationRow2338 rho ∧ Seg52.relationRow2339 rho ∧ Seg52.relationRow2340 rho ∧ Seg52.relationRow2341 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341⟩

theorem seg52In0_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45278 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46718, rho 46719⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 46718, rho 46719⟩
        ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 46731, rho 46732⟩ := by
  obtain ⟨r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341⟩ := seg52In0_rows110 rho h
  unfold Seg52.relationRow2329 at r2329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2329

  unfold Seg52.relationRow2330 at r2330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2330

  unfold Seg52.relationRow2331 at r2331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2331

  unfold Seg52.relationRow2332 at r2332

  unfold Seg52.relationRow2333 at r2333

  unfold Seg52.relationRow2334 at r2334

  unfold Seg52.relationRow2335 at r2335

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2335

  unfold Seg52.relationRow2336 at r2336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2336

  unfold Seg52.relationRow2337 at r2337

  unfold Seg52.relationRow2338 at r2338

  unfold Seg52.relationRow2339 at r2339

  unfold Seg52.relationRow2340 at r2340

  unfold Seg52.relationRow2341 at r2341

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX111 rho = seg52In0AccX110 rho + rho 46726 := by
    unfold seg52In0AccX111 seg52In0AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 110]

    ring

  have hnexty : seg52In0AccY111 rho = seg52In0AccY110 rho + rho 46727 := by
    unfold seg52In0AccY111 seg52In0AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 110]

    ring

  have ha0 : (rho 46718 + rho 46719) * (seg52In0AccX110 rho + seg52In0AccY110 rho) = rho 46720 := by
    unfold seg52In0AccX110 seg52In0AccY110
    linear_combination r2329
  have ha1 : rho 46719 * seg52In0AccX110 rho = rho 46721 := by
    unfold seg52In0AccX110
    linear_combination r2330
  have ha2 : rho 46718 * seg52In0AccY110 rho = rho 46722 := by
    unfold seg52In0AccY110
    linear_combination r2331
  have ha3 : 3021 * rho 46721 * rho 46722 = rho 46723 := by
    linear_combination r2332
  have ha4 : rho 46724 * (1 + rho 46723) = rho 46721 + rho 46722 := by
    linear_combination r2333
  have ha5 : rho 46725 * (1 - rho 46723) = rho 46720 - rho 46721 - rho 46722 := by
    linear_combination r2334
  have haddx :
      rho 46724 * (1 + 3021 * (rho 46719 * seg52In0AccX110 rho) * (rho 46718 * seg52In0AccY110 rho)) =
        rho 46719 * seg52In0AccX110 rho + rho 46718 * seg52In0AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46725 * (1 - 3021 * (rho 46719 * seg52In0AccX110 rho) * (rho 46718 * seg52In0AccY110 rho)) =
        (-1) * (rho 46719 * seg52In0AccX110 rho) - rho 46718 * seg52In0AccY110 rho +
          (seg52In0AccY110 rho - seg52In0AccX110 rho * (-1)) * (rho 46718 + rho 46719) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46725 * (1 - rho 46723) = rho 46720 - rho 46721 - rho 46722 := ha5
      _ = (-1) * rho 46721 - rho 46722 + (seg52In0AccY110 rho - seg52In0AccX110 rho * (-1)) *
          (rho 46718 + rho 46719) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX111 rho = seg52In0AccX110 rho - Bool.toZMod bit * (seg52In0AccX110 rho - rho 46724) := by
    have hd : rho 46726 = Bool.toZMod bit * (rho 46724 - seg52In0AccX110 rho) := by
      rw [← hbit]
      unfold seg52In0AccX110
      linear_combination -r2335
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY111 rho = seg52In0AccY110 rho - Bool.toZMod bit * (seg52In0AccY110 rho - rho 46725) := by
    have hd : rho 46727 = Bool.toZMod bit * (rho 46725 - seg52In0AccY110 rho) := by
      rw [← hbit]
      unfold seg52In0AccY110
      linear_combination -r2336
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46718 * rho 46719 = rho 46728 := by linear_combination r2337
  have hd1 : rho 46718 * rho 46718 = rho 46729 := by linear_combination r2338
  have hd2 : rho 46719 * rho 46719 = rho 46730 := by linear_combination r2339
  have hd3 : rho 46731 * (rho 46719 * rho 46719 + rho 46718 * rho 46718 * (-1)) =
      2 * (rho 46718 * rho 46719) := by
    rw [hd0, hd1, hd2]
    linear_combination r2340
  have hd4 : rho 46732 * (2 - (rho 46719 * rho 46719 + rho 46718 * rho 46718 * (-1))) =
      rho 46719 * rho 46719 - rho 46718 * rho 46718 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2341
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 46718, rho 46719⟩
    ⟨rho 46724, rho 46725⟩ ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 46731, rho 46732⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2342 rho ∧ Seg52.relationRow2343 rho ∧ Seg52.relationRow2344 rho ∧ Seg52.relationRow2345 rho ∧ Seg52.relationRow2346 rho ∧ Seg52.relationRow2347 rho ∧ Seg52.relationRow2348 rho ∧ Seg52.relationRow2349 rho ∧ Seg52.relationRow2350 rho ∧ Seg52.relationRow2351 rho ∧ Seg52.relationRow2352 rho ∧ Seg52.relationRow2353 rho ∧ Seg52.relationRow2354 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354⟩

theorem seg52In0_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45279 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46731, rho 46732⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 46731, rho 46732⟩
        ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 46744, rho 46745⟩ := by
  obtain ⟨r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354⟩ := seg52In0_rows111 rho h
  unfold Seg52.relationRow2342 at r2342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2342

  unfold Seg52.relationRow2343 at r2343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2343

  unfold Seg52.relationRow2344 at r2344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2344

  unfold Seg52.relationRow2345 at r2345

  unfold Seg52.relationRow2346 at r2346

  unfold Seg52.relationRow2347 at r2347

  unfold Seg52.relationRow2348 at r2348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2348

  unfold Seg52.relationRow2349 at r2349

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2349

  unfold Seg52.relationRow2350 at r2350

  unfold Seg52.relationRow2351 at r2351

  unfold Seg52.relationRow2352 at r2352

  unfold Seg52.relationRow2353 at r2353

  unfold Seg52.relationRow2354 at r2354

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX112 rho = seg52In0AccX111 rho + rho 46739 := by
    unfold seg52In0AccX112 seg52In0AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 111]

    ring

  have hnexty : seg52In0AccY112 rho = seg52In0AccY111 rho + rho 46740 := by
    unfold seg52In0AccY112 seg52In0AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 111]

    ring

  have ha0 : (rho 46731 + rho 46732) * (seg52In0AccX111 rho + seg52In0AccY111 rho) = rho 46733 := by
    unfold seg52In0AccX111 seg52In0AccY111
    linear_combination r2342
  have ha1 : rho 46732 * seg52In0AccX111 rho = rho 46734 := by
    unfold seg52In0AccX111
    linear_combination r2343
  have ha2 : rho 46731 * seg52In0AccY111 rho = rho 46735 := by
    unfold seg52In0AccY111
    linear_combination r2344
  have ha3 : 3021 * rho 46734 * rho 46735 = rho 46736 := by
    linear_combination r2345
  have ha4 : rho 46737 * (1 + rho 46736) = rho 46734 + rho 46735 := by
    linear_combination r2346
  have ha5 : rho 46738 * (1 - rho 46736) = rho 46733 - rho 46734 - rho 46735 := by
    linear_combination r2347
  have haddx :
      rho 46737 * (1 + 3021 * (rho 46732 * seg52In0AccX111 rho) * (rho 46731 * seg52In0AccY111 rho)) =
        rho 46732 * seg52In0AccX111 rho + rho 46731 * seg52In0AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46738 * (1 - 3021 * (rho 46732 * seg52In0AccX111 rho) * (rho 46731 * seg52In0AccY111 rho)) =
        (-1) * (rho 46732 * seg52In0AccX111 rho) - rho 46731 * seg52In0AccY111 rho +
          (seg52In0AccY111 rho - seg52In0AccX111 rho * (-1)) * (rho 46731 + rho 46732) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46738 * (1 - rho 46736) = rho 46733 - rho 46734 - rho 46735 := ha5
      _ = (-1) * rho 46734 - rho 46735 + (seg52In0AccY111 rho - seg52In0AccX111 rho * (-1)) *
          (rho 46731 + rho 46732) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX112 rho = seg52In0AccX111 rho - Bool.toZMod bit * (seg52In0AccX111 rho - rho 46737) := by
    have hd : rho 46739 = Bool.toZMod bit * (rho 46737 - seg52In0AccX111 rho) := by
      rw [← hbit]
      unfold seg52In0AccX111
      linear_combination -r2348
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY112 rho = seg52In0AccY111 rho - Bool.toZMod bit * (seg52In0AccY111 rho - rho 46738) := by
    have hd : rho 46740 = Bool.toZMod bit * (rho 46738 - seg52In0AccY111 rho) := by
      rw [← hbit]
      unfold seg52In0AccY111
      linear_combination -r2349
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46731 * rho 46732 = rho 46741 := by linear_combination r2350
  have hd1 : rho 46731 * rho 46731 = rho 46742 := by linear_combination r2351
  have hd2 : rho 46732 * rho 46732 = rho 46743 := by linear_combination r2352
  have hd3 : rho 46744 * (rho 46732 * rho 46732 + rho 46731 * rho 46731 * (-1)) =
      2 * (rho 46731 * rho 46732) := by
    rw [hd0, hd1, hd2]
    linear_combination r2353
  have hd4 : rho 46745 * (2 - (rho 46732 * rho 46732 + rho 46731 * rho 46731 * (-1))) =
      rho 46732 * rho 46732 - rho 46731 * rho 46731 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2354
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 46731, rho 46732⟩
    ⟨rho 46737, rho 46738⟩ ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 46744, rho 46745⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2355 rho ∧ Seg52.relationRow2356 rho ∧ Seg52.relationRow2357 rho ∧ Seg52.relationRow2358 rho ∧ Seg52.relationRow2359 rho ∧ Seg52.relationRow2360 rho ∧ Seg52.relationRow2361 rho ∧ Seg52.relationRow2362 rho ∧ Seg52.relationRow2363 rho ∧ Seg52.relationRow2364 rho ∧ Seg52.relationRow2365 rho ∧ Seg52.relationRow2366 rho ∧ Seg52.relationRow2367 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367⟩

theorem seg52In0_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45280 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46744, rho 46745⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 46744, rho 46745⟩
        ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 46757, rho 46758⟩ := by
  obtain ⟨r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367⟩ := seg52In0_rows112 rho h
  unfold Seg52.relationRow2355 at r2355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2355

  unfold Seg52.relationRow2356 at r2356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2356

  unfold Seg52.relationRow2357 at r2357

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2357

  unfold Seg52.relationRow2358 at r2358

  unfold Seg52.relationRow2359 at r2359

  unfold Seg52.relationRow2360 at r2360

  unfold Seg52.relationRow2361 at r2361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2361

  unfold Seg52.relationRow2362 at r2362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2362

  unfold Seg52.relationRow2363 at r2363

  unfold Seg52.relationRow2364 at r2364

  unfold Seg52.relationRow2365 at r2365

  unfold Seg52.relationRow2366 at r2366

  unfold Seg52.relationRow2367 at r2367

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX113 rho = seg52In0AccX112 rho + rho 46752 := by
    unfold seg52In0AccX113 seg52In0AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 112]

    ring

  have hnexty : seg52In0AccY113 rho = seg52In0AccY112 rho + rho 46753 := by
    unfold seg52In0AccY113 seg52In0AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 112]

    ring

  have ha0 : (rho 46744 + rho 46745) * (seg52In0AccX112 rho + seg52In0AccY112 rho) = rho 46746 := by
    unfold seg52In0AccX112 seg52In0AccY112
    linear_combination r2355
  have ha1 : rho 46745 * seg52In0AccX112 rho = rho 46747 := by
    unfold seg52In0AccX112
    linear_combination r2356
  have ha2 : rho 46744 * seg52In0AccY112 rho = rho 46748 := by
    unfold seg52In0AccY112
    linear_combination r2357
  have ha3 : 3021 * rho 46747 * rho 46748 = rho 46749 := by
    linear_combination r2358
  have ha4 : rho 46750 * (1 + rho 46749) = rho 46747 + rho 46748 := by
    linear_combination r2359
  have ha5 : rho 46751 * (1 - rho 46749) = rho 46746 - rho 46747 - rho 46748 := by
    linear_combination r2360
  have haddx :
      rho 46750 * (1 + 3021 * (rho 46745 * seg52In0AccX112 rho) * (rho 46744 * seg52In0AccY112 rho)) =
        rho 46745 * seg52In0AccX112 rho + rho 46744 * seg52In0AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46751 * (1 - 3021 * (rho 46745 * seg52In0AccX112 rho) * (rho 46744 * seg52In0AccY112 rho)) =
        (-1) * (rho 46745 * seg52In0AccX112 rho) - rho 46744 * seg52In0AccY112 rho +
          (seg52In0AccY112 rho - seg52In0AccX112 rho * (-1)) * (rho 46744 + rho 46745) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46751 * (1 - rho 46749) = rho 46746 - rho 46747 - rho 46748 := ha5
      _ = (-1) * rho 46747 - rho 46748 + (seg52In0AccY112 rho - seg52In0AccX112 rho * (-1)) *
          (rho 46744 + rho 46745) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX113 rho = seg52In0AccX112 rho - Bool.toZMod bit * (seg52In0AccX112 rho - rho 46750) := by
    have hd : rho 46752 = Bool.toZMod bit * (rho 46750 - seg52In0AccX112 rho) := by
      rw [← hbit]
      unfold seg52In0AccX112
      linear_combination -r2361
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY113 rho = seg52In0AccY112 rho - Bool.toZMod bit * (seg52In0AccY112 rho - rho 46751) := by
    have hd : rho 46753 = Bool.toZMod bit * (rho 46751 - seg52In0AccY112 rho) := by
      rw [← hbit]
      unfold seg52In0AccY112
      linear_combination -r2362
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46744 * rho 46745 = rho 46754 := by linear_combination r2363
  have hd1 : rho 46744 * rho 46744 = rho 46755 := by linear_combination r2364
  have hd2 : rho 46745 * rho 46745 = rho 46756 := by linear_combination r2365
  have hd3 : rho 46757 * (rho 46745 * rho 46745 + rho 46744 * rho 46744 * (-1)) =
      2 * (rho 46744 * rho 46745) := by
    rw [hd0, hd1, hd2]
    linear_combination r2366
  have hd4 : rho 46758 * (2 - (rho 46745 * rho 46745 + rho 46744 * rho 46744 * (-1))) =
      rho 46745 * rho 46745 - rho 46744 * rho 46744 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2367
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 46744, rho 46745⟩
    ⟨rho 46750, rho 46751⟩ ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 46757, rho 46758⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2368 rho ∧ Seg52.relationRow2369 rho ∧ Seg52.relationRow2370 rho ∧ Seg52.relationRow2371 rho ∧ Seg52.relationRow2372 rho ∧ Seg52.relationRow2373 rho ∧ Seg52.relationRow2374 rho ∧ Seg52.relationRow2375 rho ∧ Seg52.relationRow2376 rho ∧ Seg52.relationRow2377 rho ∧ Seg52.relationRow2378 rho ∧ Seg52.relationRow2379 rho ∧ Seg52.relationRow2380 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380⟩

theorem seg52In0_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45281 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46757, rho 46758⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 46757, rho 46758⟩
        ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 46770, rho 46771⟩ := by
  obtain ⟨r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380⟩ := seg52In0_rows113 rho h
  unfold Seg52.relationRow2368 at r2368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2368

  unfold Seg52.relationRow2369 at r2369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2369

  unfold Seg52.relationRow2370 at r2370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2370

  unfold Seg52.relationRow2371 at r2371

  unfold Seg52.relationRow2372 at r2372

  unfold Seg52.relationRow2373 at r2373

  unfold Seg52.relationRow2374 at r2374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2374

  unfold Seg52.relationRow2375 at r2375

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2375

  unfold Seg52.relationRow2376 at r2376

  unfold Seg52.relationRow2377 at r2377

  unfold Seg52.relationRow2378 at r2378

  unfold Seg52.relationRow2379 at r2379

  unfold Seg52.relationRow2380 at r2380

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX114 rho = seg52In0AccX113 rho + rho 46765 := by
    unfold seg52In0AccX114 seg52In0AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 113]

    ring

  have hnexty : seg52In0AccY114 rho = seg52In0AccY113 rho + rho 46766 := by
    unfold seg52In0AccY114 seg52In0AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 113]

    ring

  have ha0 : (rho 46757 + rho 46758) * (seg52In0AccX113 rho + seg52In0AccY113 rho) = rho 46759 := by
    unfold seg52In0AccX113 seg52In0AccY113
    linear_combination r2368
  have ha1 : rho 46758 * seg52In0AccX113 rho = rho 46760 := by
    unfold seg52In0AccX113
    linear_combination r2369
  have ha2 : rho 46757 * seg52In0AccY113 rho = rho 46761 := by
    unfold seg52In0AccY113
    linear_combination r2370
  have ha3 : 3021 * rho 46760 * rho 46761 = rho 46762 := by
    linear_combination r2371
  have ha4 : rho 46763 * (1 + rho 46762) = rho 46760 + rho 46761 := by
    linear_combination r2372
  have ha5 : rho 46764 * (1 - rho 46762) = rho 46759 - rho 46760 - rho 46761 := by
    linear_combination r2373
  have haddx :
      rho 46763 * (1 + 3021 * (rho 46758 * seg52In0AccX113 rho) * (rho 46757 * seg52In0AccY113 rho)) =
        rho 46758 * seg52In0AccX113 rho + rho 46757 * seg52In0AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46764 * (1 - 3021 * (rho 46758 * seg52In0AccX113 rho) * (rho 46757 * seg52In0AccY113 rho)) =
        (-1) * (rho 46758 * seg52In0AccX113 rho) - rho 46757 * seg52In0AccY113 rho +
          (seg52In0AccY113 rho - seg52In0AccX113 rho * (-1)) * (rho 46757 + rho 46758) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46764 * (1 - rho 46762) = rho 46759 - rho 46760 - rho 46761 := ha5
      _ = (-1) * rho 46760 - rho 46761 + (seg52In0AccY113 rho - seg52In0AccX113 rho * (-1)) *
          (rho 46757 + rho 46758) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX114 rho = seg52In0AccX113 rho - Bool.toZMod bit * (seg52In0AccX113 rho - rho 46763) := by
    have hd : rho 46765 = Bool.toZMod bit * (rho 46763 - seg52In0AccX113 rho) := by
      rw [← hbit]
      unfold seg52In0AccX113
      linear_combination -r2374
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY114 rho = seg52In0AccY113 rho - Bool.toZMod bit * (seg52In0AccY113 rho - rho 46764) := by
    have hd : rho 46766 = Bool.toZMod bit * (rho 46764 - seg52In0AccY113 rho) := by
      rw [← hbit]
      unfold seg52In0AccY113
      linear_combination -r2375
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46757 * rho 46758 = rho 46767 := by linear_combination r2376
  have hd1 : rho 46757 * rho 46757 = rho 46768 := by linear_combination r2377
  have hd2 : rho 46758 * rho 46758 = rho 46769 := by linear_combination r2378
  have hd3 : rho 46770 * (rho 46758 * rho 46758 + rho 46757 * rho 46757 * (-1)) =
      2 * (rho 46757 * rho 46758) := by
    rw [hd0, hd1, hd2]
    linear_combination r2379
  have hd4 : rho 46771 * (2 - (rho 46758 * rho 46758 + rho 46757 * rho 46757 * (-1))) =
      rho 46758 * rho 46758 - rho 46757 * rho 46757 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2380
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 46757, rho 46758⟩
    ⟨rho 46763, rho 46764⟩ ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 46770, rho 46771⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2381 rho ∧ Seg52.relationRow2382 rho ∧ Seg52.relationRow2383 rho ∧ Seg52.relationRow2384 rho ∧ Seg52.relationRow2385 rho ∧ Seg52.relationRow2386 rho ∧ Seg52.relationRow2387 rho ∧ Seg52.relationRow2388 rho ∧ Seg52.relationRow2389 rho ∧ Seg52.relationRow2390 rho ∧ Seg52.relationRow2391 rho ∧ Seg52.relationRow2392 rho ∧ Seg52.relationRow2393 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, _, _, _, _, _, _⟩

  exact ⟨r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393⟩

theorem seg52In0_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45282 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46770, rho 46771⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 46770, rho 46771⟩
        ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 46783, rho 46784⟩ := by
  obtain ⟨r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393⟩ := seg52In0_rows114 rho h
  unfold Seg52.relationRow2381 at r2381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2381

  unfold Seg52.relationRow2382 at r2382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2382

  unfold Seg52.relationRow2383 at r2383

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2383

  unfold Seg52.relationRow2384 at r2384

  unfold Seg52.relationRow2385 at r2385

  unfold Seg52.relationRow2386 at r2386

  unfold Seg52.relationRow2387 at r2387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2387

  unfold Seg52.relationRow2388 at r2388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2388

  unfold Seg52.relationRow2389 at r2389

  unfold Seg52.relationRow2390 at r2390

  unfold Seg52.relationRow2391 at r2391

  unfold Seg52.relationRow2392 at r2392

  unfold Seg52.relationRow2393 at r2393

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX115 rho = seg52In0AccX114 rho + rho 46778 := by
    unfold seg52In0AccX115 seg52In0AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 114]

    ring

  have hnexty : seg52In0AccY115 rho = seg52In0AccY114 rho + rho 46779 := by
    unfold seg52In0AccY115 seg52In0AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 114]

    ring

  have ha0 : (rho 46770 + rho 46771) * (seg52In0AccX114 rho + seg52In0AccY114 rho) = rho 46772 := by
    unfold seg52In0AccX114 seg52In0AccY114
    linear_combination r2381
  have ha1 : rho 46771 * seg52In0AccX114 rho = rho 46773 := by
    unfold seg52In0AccX114
    linear_combination r2382
  have ha2 : rho 46770 * seg52In0AccY114 rho = rho 46774 := by
    unfold seg52In0AccY114
    linear_combination r2383
  have ha3 : 3021 * rho 46773 * rho 46774 = rho 46775 := by
    linear_combination r2384
  have ha4 : rho 46776 * (1 + rho 46775) = rho 46773 + rho 46774 := by
    linear_combination r2385
  have ha5 : rho 46777 * (1 - rho 46775) = rho 46772 - rho 46773 - rho 46774 := by
    linear_combination r2386
  have haddx :
      rho 46776 * (1 + 3021 * (rho 46771 * seg52In0AccX114 rho) * (rho 46770 * seg52In0AccY114 rho)) =
        rho 46771 * seg52In0AccX114 rho + rho 46770 * seg52In0AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46777 * (1 - 3021 * (rho 46771 * seg52In0AccX114 rho) * (rho 46770 * seg52In0AccY114 rho)) =
        (-1) * (rho 46771 * seg52In0AccX114 rho) - rho 46770 * seg52In0AccY114 rho +
          (seg52In0AccY114 rho - seg52In0AccX114 rho * (-1)) * (rho 46770 + rho 46771) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46777 * (1 - rho 46775) = rho 46772 - rho 46773 - rho 46774 := ha5
      _ = (-1) * rho 46773 - rho 46774 + (seg52In0AccY114 rho - seg52In0AccX114 rho * (-1)) *
          (rho 46770 + rho 46771) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX115 rho = seg52In0AccX114 rho - Bool.toZMod bit * (seg52In0AccX114 rho - rho 46776) := by
    have hd : rho 46778 = Bool.toZMod bit * (rho 46776 - seg52In0AccX114 rho) := by
      rw [← hbit]
      unfold seg52In0AccX114
      linear_combination -r2387
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY115 rho = seg52In0AccY114 rho - Bool.toZMod bit * (seg52In0AccY114 rho - rho 46777) := by
    have hd : rho 46779 = Bool.toZMod bit * (rho 46777 - seg52In0AccY114 rho) := by
      rw [← hbit]
      unfold seg52In0AccY114
      linear_combination -r2388
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46770 * rho 46771 = rho 46780 := by linear_combination r2389
  have hd1 : rho 46770 * rho 46770 = rho 46781 := by linear_combination r2390
  have hd2 : rho 46771 * rho 46771 = rho 46782 := by linear_combination r2391
  have hd3 : rho 46783 * (rho 46771 * rho 46771 + rho 46770 * rho 46770 * (-1)) =
      2 * (rho 46770 * rho 46771) := by
    rw [hd0, hd1, hd2]
    linear_combination r2392
  have hd4 : rho 46784 * (2 - (rho 46771 * rho 46771 + rho 46770 * rho 46770 * (-1))) =
      rho 46771 * rho 46771 - rho 46770 * rho 46770 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2393
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 46770, rho 46771⟩
    ⟨rho 46776, rho 46777⟩ ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 46783, rho 46784⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2394 rho ∧ Seg52.relationRow2395 rho ∧ Seg52.relationRow2396 rho ∧ Seg52.relationRow2397 rho ∧ Seg52.relationRow2398 rho ∧ Seg52.relationRow2399 rho ∧ Seg52.relationRow2400 rho ∧ Seg52.relationRow2401 rho ∧ Seg52.relationRow2402 rho ∧ Seg52.relationRow2403 rho ∧ Seg52.relationRow2404 rho ∧ Seg52.relationRow2405 rho ∧ Seg52.relationRow2406 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2394, r2395, r2396, r2397, r2398, r2399⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨r2400, r2401, r2402, r2403, r2404, r2405, r2406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2394, r2395, r2396, r2397, r2398, r2399, r2400, r2401, r2402, r2403, r2404, r2405, r2406⟩

theorem seg52In0_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45283 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46783, rho 46784⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 46783, rho 46784⟩
        ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 46796, rho 46797⟩ := by
  obtain ⟨r2394, r2395, r2396, r2397, r2398, r2399, r2400, r2401, r2402, r2403, r2404, r2405, r2406⟩ := seg52In0_rows115 rho h
  unfold Seg52.relationRow2394 at r2394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2394

  unfold Seg52.relationRow2395 at r2395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2395

  unfold Seg52.relationRow2396 at r2396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2396

  unfold Seg52.relationRow2397 at r2397

  unfold Seg52.relationRow2398 at r2398

  unfold Seg52.relationRow2399 at r2399

  unfold Seg52.relationRow2400 at r2400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2400

  unfold Seg52.relationRow2401 at r2401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2401

  unfold Seg52.relationRow2402 at r2402

  unfold Seg52.relationRow2403 at r2403

  unfold Seg52.relationRow2404 at r2404

  unfold Seg52.relationRow2405 at r2405

  unfold Seg52.relationRow2406 at r2406

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX116 rho = seg52In0AccX115 rho + rho 46791 := by
    unfold seg52In0AccX116 seg52In0AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 115]

    ring

  have hnexty : seg52In0AccY116 rho = seg52In0AccY115 rho + rho 46792 := by
    unfold seg52In0AccY116 seg52In0AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 115]

    ring

  have ha0 : (rho 46783 + rho 46784) * (seg52In0AccX115 rho + seg52In0AccY115 rho) = rho 46785 := by
    unfold seg52In0AccX115 seg52In0AccY115
    linear_combination r2394
  have ha1 : rho 46784 * seg52In0AccX115 rho = rho 46786 := by
    unfold seg52In0AccX115
    linear_combination r2395
  have ha2 : rho 46783 * seg52In0AccY115 rho = rho 46787 := by
    unfold seg52In0AccY115
    linear_combination r2396
  have ha3 : 3021 * rho 46786 * rho 46787 = rho 46788 := by
    linear_combination r2397
  have ha4 : rho 46789 * (1 + rho 46788) = rho 46786 + rho 46787 := by
    linear_combination r2398
  have ha5 : rho 46790 * (1 - rho 46788) = rho 46785 - rho 46786 - rho 46787 := by
    linear_combination r2399
  have haddx :
      rho 46789 * (1 + 3021 * (rho 46784 * seg52In0AccX115 rho) * (rho 46783 * seg52In0AccY115 rho)) =
        rho 46784 * seg52In0AccX115 rho + rho 46783 * seg52In0AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46790 * (1 - 3021 * (rho 46784 * seg52In0AccX115 rho) * (rho 46783 * seg52In0AccY115 rho)) =
        (-1) * (rho 46784 * seg52In0AccX115 rho) - rho 46783 * seg52In0AccY115 rho +
          (seg52In0AccY115 rho - seg52In0AccX115 rho * (-1)) * (rho 46783 + rho 46784) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46790 * (1 - rho 46788) = rho 46785 - rho 46786 - rho 46787 := ha5
      _ = (-1) * rho 46786 - rho 46787 + (seg52In0AccY115 rho - seg52In0AccX115 rho * (-1)) *
          (rho 46783 + rho 46784) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX116 rho = seg52In0AccX115 rho - Bool.toZMod bit * (seg52In0AccX115 rho - rho 46789) := by
    have hd : rho 46791 = Bool.toZMod bit * (rho 46789 - seg52In0AccX115 rho) := by
      rw [← hbit]
      unfold seg52In0AccX115
      linear_combination -r2400
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY116 rho = seg52In0AccY115 rho - Bool.toZMod bit * (seg52In0AccY115 rho - rho 46790) := by
    have hd : rho 46792 = Bool.toZMod bit * (rho 46790 - seg52In0AccY115 rho) := by
      rw [← hbit]
      unfold seg52In0AccY115
      linear_combination -r2401
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46783 * rho 46784 = rho 46793 := by linear_combination r2402
  have hd1 : rho 46783 * rho 46783 = rho 46794 := by linear_combination r2403
  have hd2 : rho 46784 * rho 46784 = rho 46795 := by linear_combination r2404
  have hd3 : rho 46796 * (rho 46784 * rho 46784 + rho 46783 * rho 46783 * (-1)) =
      2 * (rho 46783 * rho 46784) := by
    rw [hd0, hd1, hd2]
    linear_combination r2405
  have hd4 : rho 46797 * (2 - (rho 46784 * rho 46784 + rho 46783 * rho 46783 * (-1))) =
      rho 46784 * rho 46784 - rho 46783 * rho 46783 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2406
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 46783, rho 46784⟩
    ⟨rho 46789, rho 46790⟩ ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 46796, rho 46797⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2407 rho ∧ Seg52.relationRow2408 rho ∧ Seg52.relationRow2409 rho ∧ Seg52.relationRow2410 rho ∧ Seg52.relationRow2411 rho ∧ Seg52.relationRow2412 rho ∧ Seg52.relationRow2413 rho ∧ Seg52.relationRow2414 rho ∧ Seg52.relationRow2415 rho ∧ Seg52.relationRow2416 rho ∧ Seg52.relationRow2417 rho ∧ Seg52.relationRow2418 rho ∧ Seg52.relationRow2419 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419⟩

theorem seg52In0_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45284 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46796, rho 46797⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 46796, rho 46797⟩
        ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 46809, rho 46810⟩ := by
  obtain ⟨r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419⟩ := seg52In0_rows116 rho h
  unfold Seg52.relationRow2407 at r2407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2407

  unfold Seg52.relationRow2408 at r2408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2408

  unfold Seg52.relationRow2409 at r2409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2409

  unfold Seg52.relationRow2410 at r2410

  unfold Seg52.relationRow2411 at r2411

  unfold Seg52.relationRow2412 at r2412

  unfold Seg52.relationRow2413 at r2413

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2413

  unfold Seg52.relationRow2414 at r2414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2414

  unfold Seg52.relationRow2415 at r2415

  unfold Seg52.relationRow2416 at r2416

  unfold Seg52.relationRow2417 at r2417

  unfold Seg52.relationRow2418 at r2418

  unfold Seg52.relationRow2419 at r2419

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX117 rho = seg52In0AccX116 rho + rho 46804 := by
    unfold seg52In0AccX117 seg52In0AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 116]

    ring

  have hnexty : seg52In0AccY117 rho = seg52In0AccY116 rho + rho 46805 := by
    unfold seg52In0AccY117 seg52In0AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 116]

    ring

  have ha0 : (rho 46796 + rho 46797) * (seg52In0AccX116 rho + seg52In0AccY116 rho) = rho 46798 := by
    unfold seg52In0AccX116 seg52In0AccY116
    linear_combination r2407
  have ha1 : rho 46797 * seg52In0AccX116 rho = rho 46799 := by
    unfold seg52In0AccX116
    linear_combination r2408
  have ha2 : rho 46796 * seg52In0AccY116 rho = rho 46800 := by
    unfold seg52In0AccY116
    linear_combination r2409
  have ha3 : 3021 * rho 46799 * rho 46800 = rho 46801 := by
    linear_combination r2410
  have ha4 : rho 46802 * (1 + rho 46801) = rho 46799 + rho 46800 := by
    linear_combination r2411
  have ha5 : rho 46803 * (1 - rho 46801) = rho 46798 - rho 46799 - rho 46800 := by
    linear_combination r2412
  have haddx :
      rho 46802 * (1 + 3021 * (rho 46797 * seg52In0AccX116 rho) * (rho 46796 * seg52In0AccY116 rho)) =
        rho 46797 * seg52In0AccX116 rho + rho 46796 * seg52In0AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46803 * (1 - 3021 * (rho 46797 * seg52In0AccX116 rho) * (rho 46796 * seg52In0AccY116 rho)) =
        (-1) * (rho 46797 * seg52In0AccX116 rho) - rho 46796 * seg52In0AccY116 rho +
          (seg52In0AccY116 rho - seg52In0AccX116 rho * (-1)) * (rho 46796 + rho 46797) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46803 * (1 - rho 46801) = rho 46798 - rho 46799 - rho 46800 := ha5
      _ = (-1) * rho 46799 - rho 46800 + (seg52In0AccY116 rho - seg52In0AccX116 rho * (-1)) *
          (rho 46796 + rho 46797) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX117 rho = seg52In0AccX116 rho - Bool.toZMod bit * (seg52In0AccX116 rho - rho 46802) := by
    have hd : rho 46804 = Bool.toZMod bit * (rho 46802 - seg52In0AccX116 rho) := by
      rw [← hbit]
      unfold seg52In0AccX116
      linear_combination -r2413
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY117 rho = seg52In0AccY116 rho - Bool.toZMod bit * (seg52In0AccY116 rho - rho 46803) := by
    have hd : rho 46805 = Bool.toZMod bit * (rho 46803 - seg52In0AccY116 rho) := by
      rw [← hbit]
      unfold seg52In0AccY116
      linear_combination -r2414
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46796 * rho 46797 = rho 46806 := by linear_combination r2415
  have hd1 : rho 46796 * rho 46796 = rho 46807 := by linear_combination r2416
  have hd2 : rho 46797 * rho 46797 = rho 46808 := by linear_combination r2417
  have hd3 : rho 46809 * (rho 46797 * rho 46797 + rho 46796 * rho 46796 * (-1)) =
      2 * (rho 46796 * rho 46797) := by
    rw [hd0, hd1, hd2]
    linear_combination r2418
  have hd4 : rho 46810 * (2 - (rho 46797 * rho 46797 + rho 46796 * rho 46796 * (-1))) =
      rho 46797 * rho 46797 - rho 46796 * rho 46796 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2419
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 46796, rho 46797⟩
    ⟨rho 46802, rho 46803⟩ ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 46809, rho 46810⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2420 rho ∧ Seg52.relationRow2421 rho ∧ Seg52.relationRow2422 rho ∧ Seg52.relationRow2423 rho ∧ Seg52.relationRow2424 rho ∧ Seg52.relationRow2425 rho ∧ Seg52.relationRow2426 rho ∧ Seg52.relationRow2427 rho ∧ Seg52.relationRow2428 rho ∧ Seg52.relationRow2429 rho ∧ Seg52.relationRow2430 rho ∧ Seg52.relationRow2431 rho ∧ Seg52.relationRow2432 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432⟩

theorem seg52In0_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45285 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46809, rho 46810⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 46809, rho 46810⟩
        ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 46822, rho 46823⟩ := by
  obtain ⟨r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432⟩ := seg52In0_rows117 rho h
  unfold Seg52.relationRow2420 at r2420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2420

  unfold Seg52.relationRow2421 at r2421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2421

  unfold Seg52.relationRow2422 at r2422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2422

  unfold Seg52.relationRow2423 at r2423

  unfold Seg52.relationRow2424 at r2424

  unfold Seg52.relationRow2425 at r2425

  unfold Seg52.relationRow2426 at r2426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2426

  unfold Seg52.relationRow2427 at r2427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2427

  unfold Seg52.relationRow2428 at r2428

  unfold Seg52.relationRow2429 at r2429

  unfold Seg52.relationRow2430 at r2430

  unfold Seg52.relationRow2431 at r2431

  unfold Seg52.relationRow2432 at r2432

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX118 rho = seg52In0AccX117 rho + rho 46817 := by
    unfold seg52In0AccX118 seg52In0AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 117]

    ring

  have hnexty : seg52In0AccY118 rho = seg52In0AccY117 rho + rho 46818 := by
    unfold seg52In0AccY118 seg52In0AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 117]

    ring

  have ha0 : (rho 46809 + rho 46810) * (seg52In0AccX117 rho + seg52In0AccY117 rho) = rho 46811 := by
    unfold seg52In0AccX117 seg52In0AccY117
    linear_combination r2420
  have ha1 : rho 46810 * seg52In0AccX117 rho = rho 46812 := by
    unfold seg52In0AccX117
    linear_combination r2421
  have ha2 : rho 46809 * seg52In0AccY117 rho = rho 46813 := by
    unfold seg52In0AccY117
    linear_combination r2422
  have ha3 : 3021 * rho 46812 * rho 46813 = rho 46814 := by
    linear_combination r2423
  have ha4 : rho 46815 * (1 + rho 46814) = rho 46812 + rho 46813 := by
    linear_combination r2424
  have ha5 : rho 46816 * (1 - rho 46814) = rho 46811 - rho 46812 - rho 46813 := by
    linear_combination r2425
  have haddx :
      rho 46815 * (1 + 3021 * (rho 46810 * seg52In0AccX117 rho) * (rho 46809 * seg52In0AccY117 rho)) =
        rho 46810 * seg52In0AccX117 rho + rho 46809 * seg52In0AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46816 * (1 - 3021 * (rho 46810 * seg52In0AccX117 rho) * (rho 46809 * seg52In0AccY117 rho)) =
        (-1) * (rho 46810 * seg52In0AccX117 rho) - rho 46809 * seg52In0AccY117 rho +
          (seg52In0AccY117 rho - seg52In0AccX117 rho * (-1)) * (rho 46809 + rho 46810) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46816 * (1 - rho 46814) = rho 46811 - rho 46812 - rho 46813 := ha5
      _ = (-1) * rho 46812 - rho 46813 + (seg52In0AccY117 rho - seg52In0AccX117 rho * (-1)) *
          (rho 46809 + rho 46810) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX118 rho = seg52In0AccX117 rho - Bool.toZMod bit * (seg52In0AccX117 rho - rho 46815) := by
    have hd : rho 46817 = Bool.toZMod bit * (rho 46815 - seg52In0AccX117 rho) := by
      rw [← hbit]
      unfold seg52In0AccX117
      linear_combination -r2426
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY118 rho = seg52In0AccY117 rho - Bool.toZMod bit * (seg52In0AccY117 rho - rho 46816) := by
    have hd : rho 46818 = Bool.toZMod bit * (rho 46816 - seg52In0AccY117 rho) := by
      rw [← hbit]
      unfold seg52In0AccY117
      linear_combination -r2427
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46809 * rho 46810 = rho 46819 := by linear_combination r2428
  have hd1 : rho 46809 * rho 46809 = rho 46820 := by linear_combination r2429
  have hd2 : rho 46810 * rho 46810 = rho 46821 := by linear_combination r2430
  have hd3 : rho 46822 * (rho 46810 * rho 46810 + rho 46809 * rho 46809 * (-1)) =
      2 * (rho 46809 * rho 46810) := by
    rw [hd0, hd1, hd2]
    linear_combination r2431
  have hd4 : rho 46823 * (2 - (rho 46810 * rho 46810 + rho 46809 * rho 46809 * (-1))) =
      rho 46810 * rho 46810 - rho 46809 * rho 46809 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2432
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 46809, rho 46810⟩
    ⟨rho 46815, rho 46816⟩ ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 46822, rho 46823⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2433 rho ∧ Seg52.relationRow2434 rho ∧ Seg52.relationRow2435 rho ∧ Seg52.relationRow2436 rho ∧ Seg52.relationRow2437 rho ∧ Seg52.relationRow2438 rho ∧ Seg52.relationRow2439 rho ∧ Seg52.relationRow2440 rho ∧ Seg52.relationRow2441 rho ∧ Seg52.relationRow2442 rho ∧ Seg52.relationRow2443 rho ∧ Seg52.relationRow2444 rho ∧ Seg52.relationRow2445 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445⟩

theorem seg52In0_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45286 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46822, rho 46823⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 46822, rho 46823⟩
        ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 46835, rho 46836⟩ := by
  obtain ⟨r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445⟩ := seg52In0_rows118 rho h
  unfold Seg52.relationRow2433 at r2433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2433

  unfold Seg52.relationRow2434 at r2434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2434

  unfold Seg52.relationRow2435 at r2435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2435

  unfold Seg52.relationRow2436 at r2436

  unfold Seg52.relationRow2437 at r2437

  unfold Seg52.relationRow2438 at r2438

  unfold Seg52.relationRow2439 at r2439

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2439

  unfold Seg52.relationRow2440 at r2440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2440

  unfold Seg52.relationRow2441 at r2441

  unfold Seg52.relationRow2442 at r2442

  unfold Seg52.relationRow2443 at r2443

  unfold Seg52.relationRow2444 at r2444

  unfold Seg52.relationRow2445 at r2445

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX119 rho = seg52In0AccX118 rho + rho 46830 := by
    unfold seg52In0AccX119 seg52In0AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 118]

    ring

  have hnexty : seg52In0AccY119 rho = seg52In0AccY118 rho + rho 46831 := by
    unfold seg52In0AccY119 seg52In0AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 118]

    ring

  have ha0 : (rho 46822 + rho 46823) * (seg52In0AccX118 rho + seg52In0AccY118 rho) = rho 46824 := by
    unfold seg52In0AccX118 seg52In0AccY118
    linear_combination r2433
  have ha1 : rho 46823 * seg52In0AccX118 rho = rho 46825 := by
    unfold seg52In0AccX118
    linear_combination r2434
  have ha2 : rho 46822 * seg52In0AccY118 rho = rho 46826 := by
    unfold seg52In0AccY118
    linear_combination r2435
  have ha3 : 3021 * rho 46825 * rho 46826 = rho 46827 := by
    linear_combination r2436
  have ha4 : rho 46828 * (1 + rho 46827) = rho 46825 + rho 46826 := by
    linear_combination r2437
  have ha5 : rho 46829 * (1 - rho 46827) = rho 46824 - rho 46825 - rho 46826 := by
    linear_combination r2438
  have haddx :
      rho 46828 * (1 + 3021 * (rho 46823 * seg52In0AccX118 rho) * (rho 46822 * seg52In0AccY118 rho)) =
        rho 46823 * seg52In0AccX118 rho + rho 46822 * seg52In0AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46829 * (1 - 3021 * (rho 46823 * seg52In0AccX118 rho) * (rho 46822 * seg52In0AccY118 rho)) =
        (-1) * (rho 46823 * seg52In0AccX118 rho) - rho 46822 * seg52In0AccY118 rho +
          (seg52In0AccY118 rho - seg52In0AccX118 rho * (-1)) * (rho 46822 + rho 46823) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46829 * (1 - rho 46827) = rho 46824 - rho 46825 - rho 46826 := ha5
      _ = (-1) * rho 46825 - rho 46826 + (seg52In0AccY118 rho - seg52In0AccX118 rho * (-1)) *
          (rho 46822 + rho 46823) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX119 rho = seg52In0AccX118 rho - Bool.toZMod bit * (seg52In0AccX118 rho - rho 46828) := by
    have hd : rho 46830 = Bool.toZMod bit * (rho 46828 - seg52In0AccX118 rho) := by
      rw [← hbit]
      unfold seg52In0AccX118
      linear_combination -r2439
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY119 rho = seg52In0AccY118 rho - Bool.toZMod bit * (seg52In0AccY118 rho - rho 46829) := by
    have hd : rho 46831 = Bool.toZMod bit * (rho 46829 - seg52In0AccY118 rho) := by
      rw [← hbit]
      unfold seg52In0AccY118
      linear_combination -r2440
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46822 * rho 46823 = rho 46832 := by linear_combination r2441
  have hd1 : rho 46822 * rho 46822 = rho 46833 := by linear_combination r2442
  have hd2 : rho 46823 * rho 46823 = rho 46834 := by linear_combination r2443
  have hd3 : rho 46835 * (rho 46823 * rho 46823 + rho 46822 * rho 46822 * (-1)) =
      2 * (rho 46822 * rho 46823) := by
    rw [hd0, hd1, hd2]
    linear_combination r2444
  have hd4 : rho 46836 * (2 - (rho 46823 * rho 46823 + rho 46822 * rho 46822 * (-1))) =
      rho 46823 * rho 46823 - rho 46822 * rho 46822 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2445
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 46822, rho 46823⟩
    ⟨rho 46828, rho 46829⟩ ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 46835, rho 46836⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2446 rho ∧ Seg52.relationRow2447 rho ∧ Seg52.relationRow2448 rho ∧ Seg52.relationRow2449 rho ∧ Seg52.relationRow2450 rho ∧ Seg52.relationRow2451 rho ∧ Seg52.relationRow2452 rho ∧ Seg52.relationRow2453 rho ∧ Seg52.relationRow2454 rho ∧ Seg52.relationRow2455 rho ∧ Seg52.relationRow2456 rho ∧ Seg52.relationRow2457 rho ∧ Seg52.relationRow2458 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458⟩

theorem seg52In0_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45287 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46835, rho 46836⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 46835, rho 46836⟩
        ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 46848, rho 46849⟩ := by
  obtain ⟨r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458⟩ := seg52In0_rows119 rho h
  unfold Seg52.relationRow2446 at r2446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2446

  unfold Seg52.relationRow2447 at r2447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2447

  unfold Seg52.relationRow2448 at r2448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2448

  unfold Seg52.relationRow2449 at r2449

  unfold Seg52.relationRow2450 at r2450

  unfold Seg52.relationRow2451 at r2451

  unfold Seg52.relationRow2452 at r2452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2452

  unfold Seg52.relationRow2453 at r2453

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2453

  unfold Seg52.relationRow2454 at r2454

  unfold Seg52.relationRow2455 at r2455

  unfold Seg52.relationRow2456 at r2456

  unfold Seg52.relationRow2457 at r2457

  unfold Seg52.relationRow2458 at r2458

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX120 rho = seg52In0AccX119 rho + rho 46843 := by
    unfold seg52In0AccX120 seg52In0AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 119]

    ring

  have hnexty : seg52In0AccY120 rho = seg52In0AccY119 rho + rho 46844 := by
    unfold seg52In0AccY120 seg52In0AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 119]

    ring

  have ha0 : (rho 46835 + rho 46836) * (seg52In0AccX119 rho + seg52In0AccY119 rho) = rho 46837 := by
    unfold seg52In0AccX119 seg52In0AccY119
    linear_combination r2446
  have ha1 : rho 46836 * seg52In0AccX119 rho = rho 46838 := by
    unfold seg52In0AccX119
    linear_combination r2447
  have ha2 : rho 46835 * seg52In0AccY119 rho = rho 46839 := by
    unfold seg52In0AccY119
    linear_combination r2448
  have ha3 : 3021 * rho 46838 * rho 46839 = rho 46840 := by
    linear_combination r2449
  have ha4 : rho 46841 * (1 + rho 46840) = rho 46838 + rho 46839 := by
    linear_combination r2450
  have ha5 : rho 46842 * (1 - rho 46840) = rho 46837 - rho 46838 - rho 46839 := by
    linear_combination r2451
  have haddx :
      rho 46841 * (1 + 3021 * (rho 46836 * seg52In0AccX119 rho) * (rho 46835 * seg52In0AccY119 rho)) =
        rho 46836 * seg52In0AccX119 rho + rho 46835 * seg52In0AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46842 * (1 - 3021 * (rho 46836 * seg52In0AccX119 rho) * (rho 46835 * seg52In0AccY119 rho)) =
        (-1) * (rho 46836 * seg52In0AccX119 rho) - rho 46835 * seg52In0AccY119 rho +
          (seg52In0AccY119 rho - seg52In0AccX119 rho * (-1)) * (rho 46835 + rho 46836) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46842 * (1 - rho 46840) = rho 46837 - rho 46838 - rho 46839 := ha5
      _ = (-1) * rho 46838 - rho 46839 + (seg52In0AccY119 rho - seg52In0AccX119 rho * (-1)) *
          (rho 46835 + rho 46836) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX120 rho = seg52In0AccX119 rho - Bool.toZMod bit * (seg52In0AccX119 rho - rho 46841) := by
    have hd : rho 46843 = Bool.toZMod bit * (rho 46841 - seg52In0AccX119 rho) := by
      rw [← hbit]
      unfold seg52In0AccX119
      linear_combination -r2452
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY120 rho = seg52In0AccY119 rho - Bool.toZMod bit * (seg52In0AccY119 rho - rho 46842) := by
    have hd : rho 46844 = Bool.toZMod bit * (rho 46842 - seg52In0AccY119 rho) := by
      rw [← hbit]
      unfold seg52In0AccY119
      linear_combination -r2453
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46835 * rho 46836 = rho 46845 := by linear_combination r2454
  have hd1 : rho 46835 * rho 46835 = rho 46846 := by linear_combination r2455
  have hd2 : rho 46836 * rho 46836 = rho 46847 := by linear_combination r2456
  have hd3 : rho 46848 * (rho 46836 * rho 46836 + rho 46835 * rho 46835 * (-1)) =
      2 * (rho 46835 * rho 46836) := by
    rw [hd0, hd1, hd2]
    linear_combination r2457
  have hd4 : rho 46849 * (2 - (rho 46836 * rho 46836 + rho 46835 * rho 46835 * (-1))) =
      rho 46836 * rho 46836 - rho 46835 * rho 46835 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2458
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 46835, rho 46836⟩
    ⟨rho 46841, rho 46842⟩ ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 46848, rho 46849⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2459 rho ∧ Seg52.relationRow2460 rho ∧ Seg52.relationRow2461 rho ∧ Seg52.relationRow2462 rho ∧ Seg52.relationRow2463 rho ∧ Seg52.relationRow2464 rho ∧ Seg52.relationRow2465 rho ∧ Seg52.relationRow2466 rho ∧ Seg52.relationRow2467 rho ∧ Seg52.relationRow2468 rho ∧ Seg52.relationRow2469 rho ∧ Seg52.relationRow2470 rho ∧ Seg52.relationRow2471 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471, _, _, _, _, _, _, _, _⟩

  exact ⟨r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471⟩

theorem seg52In0_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45288 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46848, rho 46849⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 46848, rho 46849⟩
        ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 46861, rho 46862⟩ := by
  obtain ⟨r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471⟩ := seg52In0_rows120 rho h
  unfold Seg52.relationRow2459 at r2459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2459

  unfold Seg52.relationRow2460 at r2460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2460

  unfold Seg52.relationRow2461 at r2461

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2461

  unfold Seg52.relationRow2462 at r2462

  unfold Seg52.relationRow2463 at r2463

  unfold Seg52.relationRow2464 at r2464

  unfold Seg52.relationRow2465 at r2465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2465

  unfold Seg52.relationRow2466 at r2466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2466

  unfold Seg52.relationRow2467 at r2467

  unfold Seg52.relationRow2468 at r2468

  unfold Seg52.relationRow2469 at r2469

  unfold Seg52.relationRow2470 at r2470

  unfold Seg52.relationRow2471 at r2471

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX121 rho = seg52In0AccX120 rho + rho 46856 := by
    unfold seg52In0AccX121 seg52In0AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 120]

    ring

  have hnexty : seg52In0AccY121 rho = seg52In0AccY120 rho + rho 46857 := by
    unfold seg52In0AccY121 seg52In0AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 120]

    ring

  have ha0 : (rho 46848 + rho 46849) * (seg52In0AccX120 rho + seg52In0AccY120 rho) = rho 46850 := by
    unfold seg52In0AccX120 seg52In0AccY120
    linear_combination r2459
  have ha1 : rho 46849 * seg52In0AccX120 rho = rho 46851 := by
    unfold seg52In0AccX120
    linear_combination r2460
  have ha2 : rho 46848 * seg52In0AccY120 rho = rho 46852 := by
    unfold seg52In0AccY120
    linear_combination r2461
  have ha3 : 3021 * rho 46851 * rho 46852 = rho 46853 := by
    linear_combination r2462
  have ha4 : rho 46854 * (1 + rho 46853) = rho 46851 + rho 46852 := by
    linear_combination r2463
  have ha5 : rho 46855 * (1 - rho 46853) = rho 46850 - rho 46851 - rho 46852 := by
    linear_combination r2464
  have haddx :
      rho 46854 * (1 + 3021 * (rho 46849 * seg52In0AccX120 rho) * (rho 46848 * seg52In0AccY120 rho)) =
        rho 46849 * seg52In0AccX120 rho + rho 46848 * seg52In0AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46855 * (1 - 3021 * (rho 46849 * seg52In0AccX120 rho) * (rho 46848 * seg52In0AccY120 rho)) =
        (-1) * (rho 46849 * seg52In0AccX120 rho) - rho 46848 * seg52In0AccY120 rho +
          (seg52In0AccY120 rho - seg52In0AccX120 rho * (-1)) * (rho 46848 + rho 46849) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46855 * (1 - rho 46853) = rho 46850 - rho 46851 - rho 46852 := ha5
      _ = (-1) * rho 46851 - rho 46852 + (seg52In0AccY120 rho - seg52In0AccX120 rho * (-1)) *
          (rho 46848 + rho 46849) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX121 rho = seg52In0AccX120 rho - Bool.toZMod bit * (seg52In0AccX120 rho - rho 46854) := by
    have hd : rho 46856 = Bool.toZMod bit * (rho 46854 - seg52In0AccX120 rho) := by
      rw [← hbit]
      unfold seg52In0AccX120
      linear_combination -r2465
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY121 rho = seg52In0AccY120 rho - Bool.toZMod bit * (seg52In0AccY120 rho - rho 46855) := by
    have hd : rho 46857 = Bool.toZMod bit * (rho 46855 - seg52In0AccY120 rho) := by
      rw [← hbit]
      unfold seg52In0AccY120
      linear_combination -r2466
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46848 * rho 46849 = rho 46858 := by linear_combination r2467
  have hd1 : rho 46848 * rho 46848 = rho 46859 := by linear_combination r2468
  have hd2 : rho 46849 * rho 46849 = rho 46860 := by linear_combination r2469
  have hd3 : rho 46861 * (rho 46849 * rho 46849 + rho 46848 * rho 46848 * (-1)) =
      2 * (rho 46848 * rho 46849) := by
    rw [hd0, hd1, hd2]
    linear_combination r2470
  have hd4 : rho 46862 * (2 - (rho 46849 * rho 46849 + rho 46848 * rho 46848 * (-1))) =
      rho 46849 * rho 46849 - rho 46848 * rho 46848 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2471
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 46848, rho 46849⟩
    ⟨rho 46854, rho 46855⟩ ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 46861, rho 46862⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg52In0_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg52In0_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg52In0_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg52In0_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg52In0_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg52In0_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg52In0_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg52In0_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg52In0_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg52In0_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
