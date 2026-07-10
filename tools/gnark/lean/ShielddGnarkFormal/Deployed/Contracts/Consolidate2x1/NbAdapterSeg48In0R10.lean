import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows110 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2329 rho ∧ Seg48.relationRow2330 rho ∧ Seg48.relationRow2331 rho ∧ Seg48.relationRow2332 rho ∧ Seg48.relationRow2333 rho ∧ Seg48.relationRow2334 rho ∧ Seg48.relationRow2335 rho ∧ Seg48.relationRow2336 rho ∧ Seg48.relationRow2337 rho ∧ Seg48.relationRow2338 rho ∧ Seg48.relationRow2339 rho ∧ Seg48.relationRow2340 rho ∧ Seg48.relationRow2341 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341⟩

theorem seg48In0_rung110 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33646 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX110 rho, seg48In0AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35086, rho 35087⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX110 rho, seg48In0AccY110 rho⟩ ⟨rho 35086, rho 35087⟩
        ⟨seg48In0AccX111 rho, seg48In0AccY111 rho⟩ ⟨rho 35099, rho 35100⟩ := by
  obtain ⟨r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341⟩ := seg48In0_rows110 rho h
  unfold Seg48.relationRow2329 at r2329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2329

  unfold Seg48.relationRow2330 at r2330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2330

  unfold Seg48.relationRow2331 at r2331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2331

  unfold Seg48.relationRow2332 at r2332

  unfold Seg48.relationRow2333 at r2333

  unfold Seg48.relationRow2334 at r2334

  unfold Seg48.relationRow2335 at r2335

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2335

  unfold Seg48.relationRow2336 at r2336

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2336

  unfold Seg48.relationRow2337 at r2337

  unfold Seg48.relationRow2338 at r2338

  unfold Seg48.relationRow2339 at r2339

  unfold Seg48.relationRow2340 at r2340

  unfold Seg48.relationRow2341 at r2341

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX111 rho = seg48In0AccX110 rho + rho 35094 := by
    unfold seg48In0AccX111 seg48In0AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 110]

    ring

  have hnexty : seg48In0AccY111 rho = seg48In0AccY110 rho + rho 35095 := by
    unfold seg48In0AccY111 seg48In0AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 110]

    ring

  have ha0 : (rho 35086 + rho 35087) * (seg48In0AccX110 rho + seg48In0AccY110 rho) = rho 35088 := by
    unfold seg48In0AccX110 seg48In0AccY110
    linear_combination r2329
  have ha1 : rho 35087 * seg48In0AccX110 rho = rho 35089 := by
    unfold seg48In0AccX110
    linear_combination r2330
  have ha2 : rho 35086 * seg48In0AccY110 rho = rho 35090 := by
    unfold seg48In0AccY110
    linear_combination r2331
  have ha3 : 3021 * rho 35089 * rho 35090 = rho 35091 := by
    linear_combination r2332
  have ha4 : rho 35092 * (1 + rho 35091) = rho 35089 + rho 35090 := by
    linear_combination r2333
  have ha5 : rho 35093 * (1 - rho 35091) = rho 35088 - rho 35089 - rho 35090 := by
    linear_combination r2334
  have haddx :
      rho 35092 * (1 + 3021 * (rho 35087 * seg48In0AccX110 rho) * (rho 35086 * seg48In0AccY110 rho)) =
        rho 35087 * seg48In0AccX110 rho + rho 35086 * seg48In0AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35093 * (1 - 3021 * (rho 35087 * seg48In0AccX110 rho) * (rho 35086 * seg48In0AccY110 rho)) =
        (-1) * (rho 35087 * seg48In0AccX110 rho) - rho 35086 * seg48In0AccY110 rho +
          (seg48In0AccY110 rho - seg48In0AccX110 rho * (-1)) * (rho 35086 + rho 35087) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35093 * (1 - rho 35091) = rho 35088 - rho 35089 - rho 35090 := ha5
      _ = (-1) * rho 35089 - rho 35090 + (seg48In0AccY110 rho - seg48In0AccX110 rho * (-1)) *
          (rho 35086 + rho 35087) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX111 rho = seg48In0AccX110 rho - Bool.toZMod bit * (seg48In0AccX110 rho - rho 35092) := by
    have hd : rho 35094 = Bool.toZMod bit * (rho 35092 - seg48In0AccX110 rho) := by
      rw [← hbit]
      unfold seg48In0AccX110
      linear_combination -r2335
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY111 rho = seg48In0AccY110 rho - Bool.toZMod bit * (seg48In0AccY110 rho - rho 35093) := by
    have hd : rho 35095 = Bool.toZMod bit * (rho 35093 - seg48In0AccY110 rho) := by
      rw [← hbit]
      unfold seg48In0AccY110
      linear_combination -r2336
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35086 * rho 35087 = rho 35096 := by linear_combination r2337
  have hd1 : rho 35086 * rho 35086 = rho 35097 := by linear_combination r2338
  have hd2 : rho 35087 * rho 35087 = rho 35098 := by linear_combination r2339
  have hd3 : rho 35099 * (rho 35087 * rho 35087 + rho 35086 * rho 35086 * (-1)) =
      2 * (rho 35086 * rho 35087) := by
    rw [hd0, hd1, hd2]
    linear_combination r2340
  have hd4 : rho 35100 * (2 - (rho 35087 * rho 35087 + rho 35086 * rho 35086 * (-1))) =
      rho 35087 * rho 35087 - rho 35086 * rho 35086 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2341
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX110 rho, seg48In0AccY110 rho⟩ ⟨rho 35086, rho 35087⟩
    ⟨rho 35092, rho 35093⟩ ⟨seg48In0AccX111 rho, seg48In0AccY111 rho⟩ ⟨rho 35099, rho 35100⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows111 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2342 rho ∧ Seg48.relationRow2343 rho ∧ Seg48.relationRow2344 rho ∧ Seg48.relationRow2345 rho ∧ Seg48.relationRow2346 rho ∧ Seg48.relationRow2347 rho ∧ Seg48.relationRow2348 rho ∧ Seg48.relationRow2349 rho ∧ Seg48.relationRow2350 rho ∧ Seg48.relationRow2351 rho ∧ Seg48.relationRow2352 rho ∧ Seg48.relationRow2353 rho ∧ Seg48.relationRow2354 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354⟩

theorem seg48In0_rung111 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33647 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX111 rho, seg48In0AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35099, rho 35100⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX111 rho, seg48In0AccY111 rho⟩ ⟨rho 35099, rho 35100⟩
        ⟨seg48In0AccX112 rho, seg48In0AccY112 rho⟩ ⟨rho 35112, rho 35113⟩ := by
  obtain ⟨r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354⟩ := seg48In0_rows111 rho h
  unfold Seg48.relationRow2342 at r2342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2342

  unfold Seg48.relationRow2343 at r2343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2343

  unfold Seg48.relationRow2344 at r2344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2344

  unfold Seg48.relationRow2345 at r2345

  unfold Seg48.relationRow2346 at r2346

  unfold Seg48.relationRow2347 at r2347

  unfold Seg48.relationRow2348 at r2348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2348

  unfold Seg48.relationRow2349 at r2349

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2349

  unfold Seg48.relationRow2350 at r2350

  unfold Seg48.relationRow2351 at r2351

  unfold Seg48.relationRow2352 at r2352

  unfold Seg48.relationRow2353 at r2353

  unfold Seg48.relationRow2354 at r2354

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX112 rho = seg48In0AccX111 rho + rho 35107 := by
    unfold seg48In0AccX112 seg48In0AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 111]

    ring

  have hnexty : seg48In0AccY112 rho = seg48In0AccY111 rho + rho 35108 := by
    unfold seg48In0AccY112 seg48In0AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 111]

    ring

  have ha0 : (rho 35099 + rho 35100) * (seg48In0AccX111 rho + seg48In0AccY111 rho) = rho 35101 := by
    unfold seg48In0AccX111 seg48In0AccY111
    linear_combination r2342
  have ha1 : rho 35100 * seg48In0AccX111 rho = rho 35102 := by
    unfold seg48In0AccX111
    linear_combination r2343
  have ha2 : rho 35099 * seg48In0AccY111 rho = rho 35103 := by
    unfold seg48In0AccY111
    linear_combination r2344
  have ha3 : 3021 * rho 35102 * rho 35103 = rho 35104 := by
    linear_combination r2345
  have ha4 : rho 35105 * (1 + rho 35104) = rho 35102 + rho 35103 := by
    linear_combination r2346
  have ha5 : rho 35106 * (1 - rho 35104) = rho 35101 - rho 35102 - rho 35103 := by
    linear_combination r2347
  have haddx :
      rho 35105 * (1 + 3021 * (rho 35100 * seg48In0AccX111 rho) * (rho 35099 * seg48In0AccY111 rho)) =
        rho 35100 * seg48In0AccX111 rho + rho 35099 * seg48In0AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35106 * (1 - 3021 * (rho 35100 * seg48In0AccX111 rho) * (rho 35099 * seg48In0AccY111 rho)) =
        (-1) * (rho 35100 * seg48In0AccX111 rho) - rho 35099 * seg48In0AccY111 rho +
          (seg48In0AccY111 rho - seg48In0AccX111 rho * (-1)) * (rho 35099 + rho 35100) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35106 * (1 - rho 35104) = rho 35101 - rho 35102 - rho 35103 := ha5
      _ = (-1) * rho 35102 - rho 35103 + (seg48In0AccY111 rho - seg48In0AccX111 rho * (-1)) *
          (rho 35099 + rho 35100) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX112 rho = seg48In0AccX111 rho - Bool.toZMod bit * (seg48In0AccX111 rho - rho 35105) := by
    have hd : rho 35107 = Bool.toZMod bit * (rho 35105 - seg48In0AccX111 rho) := by
      rw [← hbit]
      unfold seg48In0AccX111
      linear_combination -r2348
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY112 rho = seg48In0AccY111 rho - Bool.toZMod bit * (seg48In0AccY111 rho - rho 35106) := by
    have hd : rho 35108 = Bool.toZMod bit * (rho 35106 - seg48In0AccY111 rho) := by
      rw [← hbit]
      unfold seg48In0AccY111
      linear_combination -r2349
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35099 * rho 35100 = rho 35109 := by linear_combination r2350
  have hd1 : rho 35099 * rho 35099 = rho 35110 := by linear_combination r2351
  have hd2 : rho 35100 * rho 35100 = rho 35111 := by linear_combination r2352
  have hd3 : rho 35112 * (rho 35100 * rho 35100 + rho 35099 * rho 35099 * (-1)) =
      2 * (rho 35099 * rho 35100) := by
    rw [hd0, hd1, hd2]
    linear_combination r2353
  have hd4 : rho 35113 * (2 - (rho 35100 * rho 35100 + rho 35099 * rho 35099 * (-1))) =
      rho 35100 * rho 35100 - rho 35099 * rho 35099 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2354
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX111 rho, seg48In0AccY111 rho⟩ ⟨rho 35099, rho 35100⟩
    ⟨rho 35105, rho 35106⟩ ⟨seg48In0AccX112 rho, seg48In0AccY112 rho⟩ ⟨rho 35112, rho 35113⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows112 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2355 rho ∧ Seg48.relationRow2356 rho ∧ Seg48.relationRow2357 rho ∧ Seg48.relationRow2358 rho ∧ Seg48.relationRow2359 rho ∧ Seg48.relationRow2360 rho ∧ Seg48.relationRow2361 rho ∧ Seg48.relationRow2362 rho ∧ Seg48.relationRow2363 rho ∧ Seg48.relationRow2364 rho ∧ Seg48.relationRow2365 rho ∧ Seg48.relationRow2366 rho ∧ Seg48.relationRow2367 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367⟩

theorem seg48In0_rung112 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33648 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX112 rho, seg48In0AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35112, rho 35113⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX112 rho, seg48In0AccY112 rho⟩ ⟨rho 35112, rho 35113⟩
        ⟨seg48In0AccX113 rho, seg48In0AccY113 rho⟩ ⟨rho 35125, rho 35126⟩ := by
  obtain ⟨r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367⟩ := seg48In0_rows112 rho h
  unfold Seg48.relationRow2355 at r2355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2355

  unfold Seg48.relationRow2356 at r2356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2356

  unfold Seg48.relationRow2357 at r2357

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2357

  unfold Seg48.relationRow2358 at r2358

  unfold Seg48.relationRow2359 at r2359

  unfold Seg48.relationRow2360 at r2360

  unfold Seg48.relationRow2361 at r2361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2361

  unfold Seg48.relationRow2362 at r2362

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2362

  unfold Seg48.relationRow2363 at r2363

  unfold Seg48.relationRow2364 at r2364

  unfold Seg48.relationRow2365 at r2365

  unfold Seg48.relationRow2366 at r2366

  unfold Seg48.relationRow2367 at r2367

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX113 rho = seg48In0AccX112 rho + rho 35120 := by
    unfold seg48In0AccX113 seg48In0AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 112]

    ring

  have hnexty : seg48In0AccY113 rho = seg48In0AccY112 rho + rho 35121 := by
    unfold seg48In0AccY113 seg48In0AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 112]

    ring

  have ha0 : (rho 35112 + rho 35113) * (seg48In0AccX112 rho + seg48In0AccY112 rho) = rho 35114 := by
    unfold seg48In0AccX112 seg48In0AccY112
    linear_combination r2355
  have ha1 : rho 35113 * seg48In0AccX112 rho = rho 35115 := by
    unfold seg48In0AccX112
    linear_combination r2356
  have ha2 : rho 35112 * seg48In0AccY112 rho = rho 35116 := by
    unfold seg48In0AccY112
    linear_combination r2357
  have ha3 : 3021 * rho 35115 * rho 35116 = rho 35117 := by
    linear_combination r2358
  have ha4 : rho 35118 * (1 + rho 35117) = rho 35115 + rho 35116 := by
    linear_combination r2359
  have ha5 : rho 35119 * (1 - rho 35117) = rho 35114 - rho 35115 - rho 35116 := by
    linear_combination r2360
  have haddx :
      rho 35118 * (1 + 3021 * (rho 35113 * seg48In0AccX112 rho) * (rho 35112 * seg48In0AccY112 rho)) =
        rho 35113 * seg48In0AccX112 rho + rho 35112 * seg48In0AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35119 * (1 - 3021 * (rho 35113 * seg48In0AccX112 rho) * (rho 35112 * seg48In0AccY112 rho)) =
        (-1) * (rho 35113 * seg48In0AccX112 rho) - rho 35112 * seg48In0AccY112 rho +
          (seg48In0AccY112 rho - seg48In0AccX112 rho * (-1)) * (rho 35112 + rho 35113) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35119 * (1 - rho 35117) = rho 35114 - rho 35115 - rho 35116 := ha5
      _ = (-1) * rho 35115 - rho 35116 + (seg48In0AccY112 rho - seg48In0AccX112 rho * (-1)) *
          (rho 35112 + rho 35113) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX113 rho = seg48In0AccX112 rho - Bool.toZMod bit * (seg48In0AccX112 rho - rho 35118) := by
    have hd : rho 35120 = Bool.toZMod bit * (rho 35118 - seg48In0AccX112 rho) := by
      rw [← hbit]
      unfold seg48In0AccX112
      linear_combination -r2361
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY113 rho = seg48In0AccY112 rho - Bool.toZMod bit * (seg48In0AccY112 rho - rho 35119) := by
    have hd : rho 35121 = Bool.toZMod bit * (rho 35119 - seg48In0AccY112 rho) := by
      rw [← hbit]
      unfold seg48In0AccY112
      linear_combination -r2362
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35112 * rho 35113 = rho 35122 := by linear_combination r2363
  have hd1 : rho 35112 * rho 35112 = rho 35123 := by linear_combination r2364
  have hd2 : rho 35113 * rho 35113 = rho 35124 := by linear_combination r2365
  have hd3 : rho 35125 * (rho 35113 * rho 35113 + rho 35112 * rho 35112 * (-1)) =
      2 * (rho 35112 * rho 35113) := by
    rw [hd0, hd1, hd2]
    linear_combination r2366
  have hd4 : rho 35126 * (2 - (rho 35113 * rho 35113 + rho 35112 * rho 35112 * (-1))) =
      rho 35113 * rho 35113 - rho 35112 * rho 35112 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2367
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX112 rho, seg48In0AccY112 rho⟩ ⟨rho 35112, rho 35113⟩
    ⟨rho 35118, rho 35119⟩ ⟨seg48In0AccX113 rho, seg48In0AccY113 rho⟩ ⟨rho 35125, rho 35126⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows113 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2368 rho ∧ Seg48.relationRow2369 rho ∧ Seg48.relationRow2370 rho ∧ Seg48.relationRow2371 rho ∧ Seg48.relationRow2372 rho ∧ Seg48.relationRow2373 rho ∧ Seg48.relationRow2374 rho ∧ Seg48.relationRow2375 rho ∧ Seg48.relationRow2376 rho ∧ Seg48.relationRow2377 rho ∧ Seg48.relationRow2378 rho ∧ Seg48.relationRow2379 rho ∧ Seg48.relationRow2380 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380⟩

theorem seg48In0_rung113 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33649 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX113 rho, seg48In0AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35125, rho 35126⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX113 rho, seg48In0AccY113 rho⟩ ⟨rho 35125, rho 35126⟩
        ⟨seg48In0AccX114 rho, seg48In0AccY114 rho⟩ ⟨rho 35138, rho 35139⟩ := by
  obtain ⟨r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380⟩ := seg48In0_rows113 rho h
  unfold Seg48.relationRow2368 at r2368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2368

  unfold Seg48.relationRow2369 at r2369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2369

  unfold Seg48.relationRow2370 at r2370

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2370

  unfold Seg48.relationRow2371 at r2371

  unfold Seg48.relationRow2372 at r2372

  unfold Seg48.relationRow2373 at r2373

  unfold Seg48.relationRow2374 at r2374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2374

  unfold Seg48.relationRow2375 at r2375

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2375

  unfold Seg48.relationRow2376 at r2376

  unfold Seg48.relationRow2377 at r2377

  unfold Seg48.relationRow2378 at r2378

  unfold Seg48.relationRow2379 at r2379

  unfold Seg48.relationRow2380 at r2380

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX114 rho = seg48In0AccX113 rho + rho 35133 := by
    unfold seg48In0AccX114 seg48In0AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 113]

    ring

  have hnexty : seg48In0AccY114 rho = seg48In0AccY113 rho + rho 35134 := by
    unfold seg48In0AccY114 seg48In0AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 113]

    ring

  have ha0 : (rho 35125 + rho 35126) * (seg48In0AccX113 rho + seg48In0AccY113 rho) = rho 35127 := by
    unfold seg48In0AccX113 seg48In0AccY113
    linear_combination r2368
  have ha1 : rho 35126 * seg48In0AccX113 rho = rho 35128 := by
    unfold seg48In0AccX113
    linear_combination r2369
  have ha2 : rho 35125 * seg48In0AccY113 rho = rho 35129 := by
    unfold seg48In0AccY113
    linear_combination r2370
  have ha3 : 3021 * rho 35128 * rho 35129 = rho 35130 := by
    linear_combination r2371
  have ha4 : rho 35131 * (1 + rho 35130) = rho 35128 + rho 35129 := by
    linear_combination r2372
  have ha5 : rho 35132 * (1 - rho 35130) = rho 35127 - rho 35128 - rho 35129 := by
    linear_combination r2373
  have haddx :
      rho 35131 * (1 + 3021 * (rho 35126 * seg48In0AccX113 rho) * (rho 35125 * seg48In0AccY113 rho)) =
        rho 35126 * seg48In0AccX113 rho + rho 35125 * seg48In0AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35132 * (1 - 3021 * (rho 35126 * seg48In0AccX113 rho) * (rho 35125 * seg48In0AccY113 rho)) =
        (-1) * (rho 35126 * seg48In0AccX113 rho) - rho 35125 * seg48In0AccY113 rho +
          (seg48In0AccY113 rho - seg48In0AccX113 rho * (-1)) * (rho 35125 + rho 35126) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35132 * (1 - rho 35130) = rho 35127 - rho 35128 - rho 35129 := ha5
      _ = (-1) * rho 35128 - rho 35129 + (seg48In0AccY113 rho - seg48In0AccX113 rho * (-1)) *
          (rho 35125 + rho 35126) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX114 rho = seg48In0AccX113 rho - Bool.toZMod bit * (seg48In0AccX113 rho - rho 35131) := by
    have hd : rho 35133 = Bool.toZMod bit * (rho 35131 - seg48In0AccX113 rho) := by
      rw [← hbit]
      unfold seg48In0AccX113
      linear_combination -r2374
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY114 rho = seg48In0AccY113 rho - Bool.toZMod bit * (seg48In0AccY113 rho - rho 35132) := by
    have hd : rho 35134 = Bool.toZMod bit * (rho 35132 - seg48In0AccY113 rho) := by
      rw [← hbit]
      unfold seg48In0AccY113
      linear_combination -r2375
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35125 * rho 35126 = rho 35135 := by linear_combination r2376
  have hd1 : rho 35125 * rho 35125 = rho 35136 := by linear_combination r2377
  have hd2 : rho 35126 * rho 35126 = rho 35137 := by linear_combination r2378
  have hd3 : rho 35138 * (rho 35126 * rho 35126 + rho 35125 * rho 35125 * (-1)) =
      2 * (rho 35125 * rho 35126) := by
    rw [hd0, hd1, hd2]
    linear_combination r2379
  have hd4 : rho 35139 * (2 - (rho 35126 * rho 35126 + rho 35125 * rho 35125 * (-1))) =
      rho 35126 * rho 35126 - rho 35125 * rho 35125 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2380
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX113 rho, seg48In0AccY113 rho⟩ ⟨rho 35125, rho 35126⟩
    ⟨rho 35131, rho 35132⟩ ⟨seg48In0AccX114 rho, seg48In0AccY114 rho⟩ ⟨rho 35138, rho 35139⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows114 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2381 rho ∧ Seg48.relationRow2382 rho ∧ Seg48.relationRow2383 rho ∧ Seg48.relationRow2384 rho ∧ Seg48.relationRow2385 rho ∧ Seg48.relationRow2386 rho ∧ Seg48.relationRow2387 rho ∧ Seg48.relationRow2388 rho ∧ Seg48.relationRow2389 rho ∧ Seg48.relationRow2390 rho ∧ Seg48.relationRow2391 rho ∧ Seg48.relationRow2392 rho ∧ Seg48.relationRow2393 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, _, _, _, _, _, _⟩

  exact ⟨r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393⟩

theorem seg48In0_rung114 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33650 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX114 rho, seg48In0AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35138, rho 35139⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX114 rho, seg48In0AccY114 rho⟩ ⟨rho 35138, rho 35139⟩
        ⟨seg48In0AccX115 rho, seg48In0AccY115 rho⟩ ⟨rho 35151, rho 35152⟩ := by
  obtain ⟨r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393⟩ := seg48In0_rows114 rho h
  unfold Seg48.relationRow2381 at r2381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2381

  unfold Seg48.relationRow2382 at r2382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2382

  unfold Seg48.relationRow2383 at r2383

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2383

  unfold Seg48.relationRow2384 at r2384

  unfold Seg48.relationRow2385 at r2385

  unfold Seg48.relationRow2386 at r2386

  unfold Seg48.relationRow2387 at r2387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2387

  unfold Seg48.relationRow2388 at r2388

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2388

  unfold Seg48.relationRow2389 at r2389

  unfold Seg48.relationRow2390 at r2390

  unfold Seg48.relationRow2391 at r2391

  unfold Seg48.relationRow2392 at r2392

  unfold Seg48.relationRow2393 at r2393

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX115 rho = seg48In0AccX114 rho + rho 35146 := by
    unfold seg48In0AccX115 seg48In0AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 114]

    ring

  have hnexty : seg48In0AccY115 rho = seg48In0AccY114 rho + rho 35147 := by
    unfold seg48In0AccY115 seg48In0AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 114]

    ring

  have ha0 : (rho 35138 + rho 35139) * (seg48In0AccX114 rho + seg48In0AccY114 rho) = rho 35140 := by
    unfold seg48In0AccX114 seg48In0AccY114
    linear_combination r2381
  have ha1 : rho 35139 * seg48In0AccX114 rho = rho 35141 := by
    unfold seg48In0AccX114
    linear_combination r2382
  have ha2 : rho 35138 * seg48In0AccY114 rho = rho 35142 := by
    unfold seg48In0AccY114
    linear_combination r2383
  have ha3 : 3021 * rho 35141 * rho 35142 = rho 35143 := by
    linear_combination r2384
  have ha4 : rho 35144 * (1 + rho 35143) = rho 35141 + rho 35142 := by
    linear_combination r2385
  have ha5 : rho 35145 * (1 - rho 35143) = rho 35140 - rho 35141 - rho 35142 := by
    linear_combination r2386
  have haddx :
      rho 35144 * (1 + 3021 * (rho 35139 * seg48In0AccX114 rho) * (rho 35138 * seg48In0AccY114 rho)) =
        rho 35139 * seg48In0AccX114 rho + rho 35138 * seg48In0AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35145 * (1 - 3021 * (rho 35139 * seg48In0AccX114 rho) * (rho 35138 * seg48In0AccY114 rho)) =
        (-1) * (rho 35139 * seg48In0AccX114 rho) - rho 35138 * seg48In0AccY114 rho +
          (seg48In0AccY114 rho - seg48In0AccX114 rho * (-1)) * (rho 35138 + rho 35139) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35145 * (1 - rho 35143) = rho 35140 - rho 35141 - rho 35142 := ha5
      _ = (-1) * rho 35141 - rho 35142 + (seg48In0AccY114 rho - seg48In0AccX114 rho * (-1)) *
          (rho 35138 + rho 35139) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX115 rho = seg48In0AccX114 rho - Bool.toZMod bit * (seg48In0AccX114 rho - rho 35144) := by
    have hd : rho 35146 = Bool.toZMod bit * (rho 35144 - seg48In0AccX114 rho) := by
      rw [← hbit]
      unfold seg48In0AccX114
      linear_combination -r2387
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY115 rho = seg48In0AccY114 rho - Bool.toZMod bit * (seg48In0AccY114 rho - rho 35145) := by
    have hd : rho 35147 = Bool.toZMod bit * (rho 35145 - seg48In0AccY114 rho) := by
      rw [← hbit]
      unfold seg48In0AccY114
      linear_combination -r2388
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35138 * rho 35139 = rho 35148 := by linear_combination r2389
  have hd1 : rho 35138 * rho 35138 = rho 35149 := by linear_combination r2390
  have hd2 : rho 35139 * rho 35139 = rho 35150 := by linear_combination r2391
  have hd3 : rho 35151 * (rho 35139 * rho 35139 + rho 35138 * rho 35138 * (-1)) =
      2 * (rho 35138 * rho 35139) := by
    rw [hd0, hd1, hd2]
    linear_combination r2392
  have hd4 : rho 35152 * (2 - (rho 35139 * rho 35139 + rho 35138 * rho 35138 * (-1))) =
      rho 35139 * rho 35139 - rho 35138 * rho 35138 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2393
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX114 rho, seg48In0AccY114 rho⟩ ⟨rho 35138, rho 35139⟩
    ⟨rho 35144, rho 35145⟩ ⟨seg48In0AccX115 rho, seg48In0AccY115 rho⟩ ⟨rho 35151, rho 35152⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows115 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2394 rho ∧ Seg48.relationRow2395 rho ∧ Seg48.relationRow2396 rho ∧ Seg48.relationRow2397 rho ∧ Seg48.relationRow2398 rho ∧ Seg48.relationRow2399 rho ∧ Seg48.relationRow2400 rho ∧ Seg48.relationRow2401 rho ∧ Seg48.relationRow2402 rho ∧ Seg48.relationRow2403 rho ∧ Seg48.relationRow2404 rho ∧ Seg48.relationRow2405 rho ∧ Seg48.relationRow2406 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2394, r2395, r2396, r2397, r2398, r2399⟩

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨r2400, r2401, r2402, r2403, r2404, r2405, r2406, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2394, r2395, r2396, r2397, r2398, r2399, r2400, r2401, r2402, r2403, r2404, r2405, r2406⟩

theorem seg48In0_rung115 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33651 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX115 rho, seg48In0AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35151, rho 35152⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX115 rho, seg48In0AccY115 rho⟩ ⟨rho 35151, rho 35152⟩
        ⟨seg48In0AccX116 rho, seg48In0AccY116 rho⟩ ⟨rho 35164, rho 35165⟩ := by
  obtain ⟨r2394, r2395, r2396, r2397, r2398, r2399, r2400, r2401, r2402, r2403, r2404, r2405, r2406⟩ := seg48In0_rows115 rho h
  unfold Seg48.relationRow2394 at r2394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2394

  unfold Seg48.relationRow2395 at r2395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2395

  unfold Seg48.relationRow2396 at r2396

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2396

  unfold Seg48.relationRow2397 at r2397

  unfold Seg48.relationRow2398 at r2398

  unfold Seg48.relationRow2399 at r2399

  unfold Seg48.relationRow2400 at r2400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2400

  unfold Seg48.relationRow2401 at r2401

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2401

  unfold Seg48.relationRow2402 at r2402

  unfold Seg48.relationRow2403 at r2403

  unfold Seg48.relationRow2404 at r2404

  unfold Seg48.relationRow2405 at r2405

  unfold Seg48.relationRow2406 at r2406

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX116 rho = seg48In0AccX115 rho + rho 35159 := by
    unfold seg48In0AccX116 seg48In0AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 115]

    ring

  have hnexty : seg48In0AccY116 rho = seg48In0AccY115 rho + rho 35160 := by
    unfold seg48In0AccY116 seg48In0AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 115]

    ring

  have ha0 : (rho 35151 + rho 35152) * (seg48In0AccX115 rho + seg48In0AccY115 rho) = rho 35153 := by
    unfold seg48In0AccX115 seg48In0AccY115
    linear_combination r2394
  have ha1 : rho 35152 * seg48In0AccX115 rho = rho 35154 := by
    unfold seg48In0AccX115
    linear_combination r2395
  have ha2 : rho 35151 * seg48In0AccY115 rho = rho 35155 := by
    unfold seg48In0AccY115
    linear_combination r2396
  have ha3 : 3021 * rho 35154 * rho 35155 = rho 35156 := by
    linear_combination r2397
  have ha4 : rho 35157 * (1 + rho 35156) = rho 35154 + rho 35155 := by
    linear_combination r2398
  have ha5 : rho 35158 * (1 - rho 35156) = rho 35153 - rho 35154 - rho 35155 := by
    linear_combination r2399
  have haddx :
      rho 35157 * (1 + 3021 * (rho 35152 * seg48In0AccX115 rho) * (rho 35151 * seg48In0AccY115 rho)) =
        rho 35152 * seg48In0AccX115 rho + rho 35151 * seg48In0AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35158 * (1 - 3021 * (rho 35152 * seg48In0AccX115 rho) * (rho 35151 * seg48In0AccY115 rho)) =
        (-1) * (rho 35152 * seg48In0AccX115 rho) - rho 35151 * seg48In0AccY115 rho +
          (seg48In0AccY115 rho - seg48In0AccX115 rho * (-1)) * (rho 35151 + rho 35152) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35158 * (1 - rho 35156) = rho 35153 - rho 35154 - rho 35155 := ha5
      _ = (-1) * rho 35154 - rho 35155 + (seg48In0AccY115 rho - seg48In0AccX115 rho * (-1)) *
          (rho 35151 + rho 35152) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX116 rho = seg48In0AccX115 rho - Bool.toZMod bit * (seg48In0AccX115 rho - rho 35157) := by
    have hd : rho 35159 = Bool.toZMod bit * (rho 35157 - seg48In0AccX115 rho) := by
      rw [← hbit]
      unfold seg48In0AccX115
      linear_combination -r2400
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY116 rho = seg48In0AccY115 rho - Bool.toZMod bit * (seg48In0AccY115 rho - rho 35158) := by
    have hd : rho 35160 = Bool.toZMod bit * (rho 35158 - seg48In0AccY115 rho) := by
      rw [← hbit]
      unfold seg48In0AccY115
      linear_combination -r2401
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35151 * rho 35152 = rho 35161 := by linear_combination r2402
  have hd1 : rho 35151 * rho 35151 = rho 35162 := by linear_combination r2403
  have hd2 : rho 35152 * rho 35152 = rho 35163 := by linear_combination r2404
  have hd3 : rho 35164 * (rho 35152 * rho 35152 + rho 35151 * rho 35151 * (-1)) =
      2 * (rho 35151 * rho 35152) := by
    rw [hd0, hd1, hd2]
    linear_combination r2405
  have hd4 : rho 35165 * (2 - (rho 35152 * rho 35152 + rho 35151 * rho 35151 * (-1))) =
      rho 35152 * rho 35152 - rho 35151 * rho 35151 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2406
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX115 rho, seg48In0AccY115 rho⟩ ⟨rho 35151, rho 35152⟩
    ⟨rho 35157, rho 35158⟩ ⟨seg48In0AccX116 rho, seg48In0AccY116 rho⟩ ⟨rho 35164, rho 35165⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows116 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2407 rho ∧ Seg48.relationRow2408 rho ∧ Seg48.relationRow2409 rho ∧ Seg48.relationRow2410 rho ∧ Seg48.relationRow2411 rho ∧ Seg48.relationRow2412 rho ∧ Seg48.relationRow2413 rho ∧ Seg48.relationRow2414 rho ∧ Seg48.relationRow2415 rho ∧ Seg48.relationRow2416 rho ∧ Seg48.relationRow2417 rho ∧ Seg48.relationRow2418 rho ∧ Seg48.relationRow2419 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419⟩

theorem seg48In0_rung116 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33652 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX116 rho, seg48In0AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35164, rho 35165⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX116 rho, seg48In0AccY116 rho⟩ ⟨rho 35164, rho 35165⟩
        ⟨seg48In0AccX117 rho, seg48In0AccY117 rho⟩ ⟨rho 35177, rho 35178⟩ := by
  obtain ⟨r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419⟩ := seg48In0_rows116 rho h
  unfold Seg48.relationRow2407 at r2407

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2407

  unfold Seg48.relationRow2408 at r2408

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2408

  unfold Seg48.relationRow2409 at r2409

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2409

  unfold Seg48.relationRow2410 at r2410

  unfold Seg48.relationRow2411 at r2411

  unfold Seg48.relationRow2412 at r2412

  unfold Seg48.relationRow2413 at r2413

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2413

  unfold Seg48.relationRow2414 at r2414

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2414

  unfold Seg48.relationRow2415 at r2415

  unfold Seg48.relationRow2416 at r2416

  unfold Seg48.relationRow2417 at r2417

  unfold Seg48.relationRow2418 at r2418

  unfold Seg48.relationRow2419 at r2419

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX117 rho = seg48In0AccX116 rho + rho 35172 := by
    unfold seg48In0AccX117 seg48In0AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 116]

    ring

  have hnexty : seg48In0AccY117 rho = seg48In0AccY116 rho + rho 35173 := by
    unfold seg48In0AccY117 seg48In0AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 116]

    ring

  have ha0 : (rho 35164 + rho 35165) * (seg48In0AccX116 rho + seg48In0AccY116 rho) = rho 35166 := by
    unfold seg48In0AccX116 seg48In0AccY116
    linear_combination r2407
  have ha1 : rho 35165 * seg48In0AccX116 rho = rho 35167 := by
    unfold seg48In0AccX116
    linear_combination r2408
  have ha2 : rho 35164 * seg48In0AccY116 rho = rho 35168 := by
    unfold seg48In0AccY116
    linear_combination r2409
  have ha3 : 3021 * rho 35167 * rho 35168 = rho 35169 := by
    linear_combination r2410
  have ha4 : rho 35170 * (1 + rho 35169) = rho 35167 + rho 35168 := by
    linear_combination r2411
  have ha5 : rho 35171 * (1 - rho 35169) = rho 35166 - rho 35167 - rho 35168 := by
    linear_combination r2412
  have haddx :
      rho 35170 * (1 + 3021 * (rho 35165 * seg48In0AccX116 rho) * (rho 35164 * seg48In0AccY116 rho)) =
        rho 35165 * seg48In0AccX116 rho + rho 35164 * seg48In0AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35171 * (1 - 3021 * (rho 35165 * seg48In0AccX116 rho) * (rho 35164 * seg48In0AccY116 rho)) =
        (-1) * (rho 35165 * seg48In0AccX116 rho) - rho 35164 * seg48In0AccY116 rho +
          (seg48In0AccY116 rho - seg48In0AccX116 rho * (-1)) * (rho 35164 + rho 35165) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35171 * (1 - rho 35169) = rho 35166 - rho 35167 - rho 35168 := ha5
      _ = (-1) * rho 35167 - rho 35168 + (seg48In0AccY116 rho - seg48In0AccX116 rho * (-1)) *
          (rho 35164 + rho 35165) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX117 rho = seg48In0AccX116 rho - Bool.toZMod bit * (seg48In0AccX116 rho - rho 35170) := by
    have hd : rho 35172 = Bool.toZMod bit * (rho 35170 - seg48In0AccX116 rho) := by
      rw [← hbit]
      unfold seg48In0AccX116
      linear_combination -r2413
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY117 rho = seg48In0AccY116 rho - Bool.toZMod bit * (seg48In0AccY116 rho - rho 35171) := by
    have hd : rho 35173 = Bool.toZMod bit * (rho 35171 - seg48In0AccY116 rho) := by
      rw [← hbit]
      unfold seg48In0AccY116
      linear_combination -r2414
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35164 * rho 35165 = rho 35174 := by linear_combination r2415
  have hd1 : rho 35164 * rho 35164 = rho 35175 := by linear_combination r2416
  have hd2 : rho 35165 * rho 35165 = rho 35176 := by linear_combination r2417
  have hd3 : rho 35177 * (rho 35165 * rho 35165 + rho 35164 * rho 35164 * (-1)) =
      2 * (rho 35164 * rho 35165) := by
    rw [hd0, hd1, hd2]
    linear_combination r2418
  have hd4 : rho 35178 * (2 - (rho 35165 * rho 35165 + rho 35164 * rho 35164 * (-1))) =
      rho 35165 * rho 35165 - rho 35164 * rho 35164 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2419
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX116 rho, seg48In0AccY116 rho⟩ ⟨rho 35164, rho 35165⟩
    ⟨rho 35170, rho 35171⟩ ⟨seg48In0AccX117 rho, seg48In0AccY117 rho⟩ ⟨rho 35177, rho 35178⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows117 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2420 rho ∧ Seg48.relationRow2421 rho ∧ Seg48.relationRow2422 rho ∧ Seg48.relationRow2423 rho ∧ Seg48.relationRow2424 rho ∧ Seg48.relationRow2425 rho ∧ Seg48.relationRow2426 rho ∧ Seg48.relationRow2427 rho ∧ Seg48.relationRow2428 rho ∧ Seg48.relationRow2429 rho ∧ Seg48.relationRow2430 rho ∧ Seg48.relationRow2431 rho ∧ Seg48.relationRow2432 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432⟩

theorem seg48In0_rung117 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33653 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX117 rho, seg48In0AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35177, rho 35178⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX117 rho, seg48In0AccY117 rho⟩ ⟨rho 35177, rho 35178⟩
        ⟨seg48In0AccX118 rho, seg48In0AccY118 rho⟩ ⟨rho 35190, rho 35191⟩ := by
  obtain ⟨r2420, r2421, r2422, r2423, r2424, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432⟩ := seg48In0_rows117 rho h
  unfold Seg48.relationRow2420 at r2420

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2420

  unfold Seg48.relationRow2421 at r2421

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2421

  unfold Seg48.relationRow2422 at r2422

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2422

  unfold Seg48.relationRow2423 at r2423

  unfold Seg48.relationRow2424 at r2424

  unfold Seg48.relationRow2425 at r2425

  unfold Seg48.relationRow2426 at r2426

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2426

  unfold Seg48.relationRow2427 at r2427

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2427

  unfold Seg48.relationRow2428 at r2428

  unfold Seg48.relationRow2429 at r2429

  unfold Seg48.relationRow2430 at r2430

  unfold Seg48.relationRow2431 at r2431

  unfold Seg48.relationRow2432 at r2432

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX118 rho = seg48In0AccX117 rho + rho 35185 := by
    unfold seg48In0AccX118 seg48In0AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 117]

    ring

  have hnexty : seg48In0AccY118 rho = seg48In0AccY117 rho + rho 35186 := by
    unfold seg48In0AccY118 seg48In0AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 117]

    ring

  have ha0 : (rho 35177 + rho 35178) * (seg48In0AccX117 rho + seg48In0AccY117 rho) = rho 35179 := by
    unfold seg48In0AccX117 seg48In0AccY117
    linear_combination r2420
  have ha1 : rho 35178 * seg48In0AccX117 rho = rho 35180 := by
    unfold seg48In0AccX117
    linear_combination r2421
  have ha2 : rho 35177 * seg48In0AccY117 rho = rho 35181 := by
    unfold seg48In0AccY117
    linear_combination r2422
  have ha3 : 3021 * rho 35180 * rho 35181 = rho 35182 := by
    linear_combination r2423
  have ha4 : rho 35183 * (1 + rho 35182) = rho 35180 + rho 35181 := by
    linear_combination r2424
  have ha5 : rho 35184 * (1 - rho 35182) = rho 35179 - rho 35180 - rho 35181 := by
    linear_combination r2425
  have haddx :
      rho 35183 * (1 + 3021 * (rho 35178 * seg48In0AccX117 rho) * (rho 35177 * seg48In0AccY117 rho)) =
        rho 35178 * seg48In0AccX117 rho + rho 35177 * seg48In0AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35184 * (1 - 3021 * (rho 35178 * seg48In0AccX117 rho) * (rho 35177 * seg48In0AccY117 rho)) =
        (-1) * (rho 35178 * seg48In0AccX117 rho) - rho 35177 * seg48In0AccY117 rho +
          (seg48In0AccY117 rho - seg48In0AccX117 rho * (-1)) * (rho 35177 + rho 35178) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35184 * (1 - rho 35182) = rho 35179 - rho 35180 - rho 35181 := ha5
      _ = (-1) * rho 35180 - rho 35181 + (seg48In0AccY117 rho - seg48In0AccX117 rho * (-1)) *
          (rho 35177 + rho 35178) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX118 rho = seg48In0AccX117 rho - Bool.toZMod bit * (seg48In0AccX117 rho - rho 35183) := by
    have hd : rho 35185 = Bool.toZMod bit * (rho 35183 - seg48In0AccX117 rho) := by
      rw [← hbit]
      unfold seg48In0AccX117
      linear_combination -r2426
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY118 rho = seg48In0AccY117 rho - Bool.toZMod bit * (seg48In0AccY117 rho - rho 35184) := by
    have hd : rho 35186 = Bool.toZMod bit * (rho 35184 - seg48In0AccY117 rho) := by
      rw [← hbit]
      unfold seg48In0AccY117
      linear_combination -r2427
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35177 * rho 35178 = rho 35187 := by linear_combination r2428
  have hd1 : rho 35177 * rho 35177 = rho 35188 := by linear_combination r2429
  have hd2 : rho 35178 * rho 35178 = rho 35189 := by linear_combination r2430
  have hd3 : rho 35190 * (rho 35178 * rho 35178 + rho 35177 * rho 35177 * (-1)) =
      2 * (rho 35177 * rho 35178) := by
    rw [hd0, hd1, hd2]
    linear_combination r2431
  have hd4 : rho 35191 * (2 - (rho 35178 * rho 35178 + rho 35177 * rho 35177 * (-1))) =
      rho 35178 * rho 35178 - rho 35177 * rho 35177 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2432
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX117 rho, seg48In0AccY117 rho⟩ ⟨rho 35177, rho 35178⟩
    ⟨rho 35183, rho 35184⟩ ⟨seg48In0AccX118 rho, seg48In0AccY118 rho⟩ ⟨rho 35190, rho 35191⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows118 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2433 rho ∧ Seg48.relationRow2434 rho ∧ Seg48.relationRow2435 rho ∧ Seg48.relationRow2436 rho ∧ Seg48.relationRow2437 rho ∧ Seg48.relationRow2438 rho ∧ Seg48.relationRow2439 rho ∧ Seg48.relationRow2440 rho ∧ Seg48.relationRow2441 rho ∧ Seg48.relationRow2442 rho ∧ Seg48.relationRow2443 rho ∧ Seg48.relationRow2444 rho ∧ Seg48.relationRow2445 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445⟩

theorem seg48In0_rung118 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33654 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX118 rho, seg48In0AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35190, rho 35191⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX118 rho, seg48In0AccY118 rho⟩ ⟨rho 35190, rho 35191⟩
        ⟨seg48In0AccX119 rho, seg48In0AccY119 rho⟩ ⟨rho 35203, rho 35204⟩ := by
  obtain ⟨r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445⟩ := seg48In0_rows118 rho h
  unfold Seg48.relationRow2433 at r2433

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2433

  unfold Seg48.relationRow2434 at r2434

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2434

  unfold Seg48.relationRow2435 at r2435

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2435

  unfold Seg48.relationRow2436 at r2436

  unfold Seg48.relationRow2437 at r2437

  unfold Seg48.relationRow2438 at r2438

  unfold Seg48.relationRow2439 at r2439

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2439

  unfold Seg48.relationRow2440 at r2440

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2440

  unfold Seg48.relationRow2441 at r2441

  unfold Seg48.relationRow2442 at r2442

  unfold Seg48.relationRow2443 at r2443

  unfold Seg48.relationRow2444 at r2444

  unfold Seg48.relationRow2445 at r2445

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX119 rho = seg48In0AccX118 rho + rho 35198 := by
    unfold seg48In0AccX119 seg48In0AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 118]

    ring

  have hnexty : seg48In0AccY119 rho = seg48In0AccY118 rho + rho 35199 := by
    unfold seg48In0AccY119 seg48In0AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 118]

    ring

  have ha0 : (rho 35190 + rho 35191) * (seg48In0AccX118 rho + seg48In0AccY118 rho) = rho 35192 := by
    unfold seg48In0AccX118 seg48In0AccY118
    linear_combination r2433
  have ha1 : rho 35191 * seg48In0AccX118 rho = rho 35193 := by
    unfold seg48In0AccX118
    linear_combination r2434
  have ha2 : rho 35190 * seg48In0AccY118 rho = rho 35194 := by
    unfold seg48In0AccY118
    linear_combination r2435
  have ha3 : 3021 * rho 35193 * rho 35194 = rho 35195 := by
    linear_combination r2436
  have ha4 : rho 35196 * (1 + rho 35195) = rho 35193 + rho 35194 := by
    linear_combination r2437
  have ha5 : rho 35197 * (1 - rho 35195) = rho 35192 - rho 35193 - rho 35194 := by
    linear_combination r2438
  have haddx :
      rho 35196 * (1 + 3021 * (rho 35191 * seg48In0AccX118 rho) * (rho 35190 * seg48In0AccY118 rho)) =
        rho 35191 * seg48In0AccX118 rho + rho 35190 * seg48In0AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35197 * (1 - 3021 * (rho 35191 * seg48In0AccX118 rho) * (rho 35190 * seg48In0AccY118 rho)) =
        (-1) * (rho 35191 * seg48In0AccX118 rho) - rho 35190 * seg48In0AccY118 rho +
          (seg48In0AccY118 rho - seg48In0AccX118 rho * (-1)) * (rho 35190 + rho 35191) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35197 * (1 - rho 35195) = rho 35192 - rho 35193 - rho 35194 := ha5
      _ = (-1) * rho 35193 - rho 35194 + (seg48In0AccY118 rho - seg48In0AccX118 rho * (-1)) *
          (rho 35190 + rho 35191) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX119 rho = seg48In0AccX118 rho - Bool.toZMod bit * (seg48In0AccX118 rho - rho 35196) := by
    have hd : rho 35198 = Bool.toZMod bit * (rho 35196 - seg48In0AccX118 rho) := by
      rw [← hbit]
      unfold seg48In0AccX118
      linear_combination -r2439
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY119 rho = seg48In0AccY118 rho - Bool.toZMod bit * (seg48In0AccY118 rho - rho 35197) := by
    have hd : rho 35199 = Bool.toZMod bit * (rho 35197 - seg48In0AccY118 rho) := by
      rw [← hbit]
      unfold seg48In0AccY118
      linear_combination -r2440
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35190 * rho 35191 = rho 35200 := by linear_combination r2441
  have hd1 : rho 35190 * rho 35190 = rho 35201 := by linear_combination r2442
  have hd2 : rho 35191 * rho 35191 = rho 35202 := by linear_combination r2443
  have hd3 : rho 35203 * (rho 35191 * rho 35191 + rho 35190 * rho 35190 * (-1)) =
      2 * (rho 35190 * rho 35191) := by
    rw [hd0, hd1, hd2]
    linear_combination r2444
  have hd4 : rho 35204 * (2 - (rho 35191 * rho 35191 + rho 35190 * rho 35190 * (-1))) =
      rho 35191 * rho 35191 - rho 35190 * rho 35190 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2445
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX118 rho, seg48In0AccY118 rho⟩ ⟨rho 35190, rho 35191⟩
    ⟨rho 35196, rho 35197⟩ ⟨seg48In0AccX119 rho, seg48In0AccY119 rho⟩ ⟨rho 35203, rho 35204⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows119 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2446 rho ∧ Seg48.relationRow2447 rho ∧ Seg48.relationRow2448 rho ∧ Seg48.relationRow2449 rho ∧ Seg48.relationRow2450 rho ∧ Seg48.relationRow2451 rho ∧ Seg48.relationRow2452 rho ∧ Seg48.relationRow2453 rho ∧ Seg48.relationRow2454 rho ∧ Seg48.relationRow2455 rho ∧ Seg48.relationRow2456 rho ∧ Seg48.relationRow2457 rho ∧ Seg48.relationRow2458 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458⟩

theorem seg48In0_rung119 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33655 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX119 rho, seg48In0AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35203, rho 35204⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX119 rho, seg48In0AccY119 rho⟩ ⟨rho 35203, rho 35204⟩
        ⟨seg48In0AccX120 rho, seg48In0AccY120 rho⟩ ⟨rho 35216, rho 35217⟩ := by
  obtain ⟨r2446, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458⟩ := seg48In0_rows119 rho h
  unfold Seg48.relationRow2446 at r2446

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2446

  unfold Seg48.relationRow2447 at r2447

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2447

  unfold Seg48.relationRow2448 at r2448

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2448

  unfold Seg48.relationRow2449 at r2449

  unfold Seg48.relationRow2450 at r2450

  unfold Seg48.relationRow2451 at r2451

  unfold Seg48.relationRow2452 at r2452

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2452

  unfold Seg48.relationRow2453 at r2453

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2453

  unfold Seg48.relationRow2454 at r2454

  unfold Seg48.relationRow2455 at r2455

  unfold Seg48.relationRow2456 at r2456

  unfold Seg48.relationRow2457 at r2457

  unfold Seg48.relationRow2458 at r2458

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX120 rho = seg48In0AccX119 rho + rho 35211 := by
    unfold seg48In0AccX120 seg48In0AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 119]

    ring

  have hnexty : seg48In0AccY120 rho = seg48In0AccY119 rho + rho 35212 := by
    unfold seg48In0AccY120 seg48In0AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 119]

    ring

  have ha0 : (rho 35203 + rho 35204) * (seg48In0AccX119 rho + seg48In0AccY119 rho) = rho 35205 := by
    unfold seg48In0AccX119 seg48In0AccY119
    linear_combination r2446
  have ha1 : rho 35204 * seg48In0AccX119 rho = rho 35206 := by
    unfold seg48In0AccX119
    linear_combination r2447
  have ha2 : rho 35203 * seg48In0AccY119 rho = rho 35207 := by
    unfold seg48In0AccY119
    linear_combination r2448
  have ha3 : 3021 * rho 35206 * rho 35207 = rho 35208 := by
    linear_combination r2449
  have ha4 : rho 35209 * (1 + rho 35208) = rho 35206 + rho 35207 := by
    linear_combination r2450
  have ha5 : rho 35210 * (1 - rho 35208) = rho 35205 - rho 35206 - rho 35207 := by
    linear_combination r2451
  have haddx :
      rho 35209 * (1 + 3021 * (rho 35204 * seg48In0AccX119 rho) * (rho 35203 * seg48In0AccY119 rho)) =
        rho 35204 * seg48In0AccX119 rho + rho 35203 * seg48In0AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35210 * (1 - 3021 * (rho 35204 * seg48In0AccX119 rho) * (rho 35203 * seg48In0AccY119 rho)) =
        (-1) * (rho 35204 * seg48In0AccX119 rho) - rho 35203 * seg48In0AccY119 rho +
          (seg48In0AccY119 rho - seg48In0AccX119 rho * (-1)) * (rho 35203 + rho 35204) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35210 * (1 - rho 35208) = rho 35205 - rho 35206 - rho 35207 := ha5
      _ = (-1) * rho 35206 - rho 35207 + (seg48In0AccY119 rho - seg48In0AccX119 rho * (-1)) *
          (rho 35203 + rho 35204) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX120 rho = seg48In0AccX119 rho - Bool.toZMod bit * (seg48In0AccX119 rho - rho 35209) := by
    have hd : rho 35211 = Bool.toZMod bit * (rho 35209 - seg48In0AccX119 rho) := by
      rw [← hbit]
      unfold seg48In0AccX119
      linear_combination -r2452
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY120 rho = seg48In0AccY119 rho - Bool.toZMod bit * (seg48In0AccY119 rho - rho 35210) := by
    have hd : rho 35212 = Bool.toZMod bit * (rho 35210 - seg48In0AccY119 rho) := by
      rw [← hbit]
      unfold seg48In0AccY119
      linear_combination -r2453
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35203 * rho 35204 = rho 35213 := by linear_combination r2454
  have hd1 : rho 35203 * rho 35203 = rho 35214 := by linear_combination r2455
  have hd2 : rho 35204 * rho 35204 = rho 35215 := by linear_combination r2456
  have hd3 : rho 35216 * (rho 35204 * rho 35204 + rho 35203 * rho 35203 * (-1)) =
      2 * (rho 35203 * rho 35204) := by
    rw [hd0, hd1, hd2]
    linear_combination r2457
  have hd4 : rho 35217 * (2 - (rho 35204 * rho 35204 + rho 35203 * rho 35203 * (-1))) =
      rho 35204 * rho 35204 - rho 35203 * rho 35203 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2458
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX119 rho, seg48In0AccY119 rho⟩ ⟨rho 35203, rho 35204⟩
    ⟨rho 35209, rho 35210⟩ ⟨seg48In0AccX120 rho, seg48In0AccY120 rho⟩ ⟨rho 35216, rho 35217⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows120 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2459 rho ∧ Seg48.relationRow2460 rho ∧ Seg48.relationRow2461 rho ∧ Seg48.relationRow2462 rho ∧ Seg48.relationRow2463 rho ∧ Seg48.relationRow2464 rho ∧ Seg48.relationRow2465 rho ∧ Seg48.relationRow2466 rho ∧ Seg48.relationRow2467 rho ∧ Seg48.relationRow2468 rho ∧ Seg48.relationRow2469 rho ∧ Seg48.relationRow2470 rho ∧ Seg48.relationRow2471 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart30 at p30

  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471, _, _, _, _, _, _, _, _⟩

  exact ⟨r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471⟩

theorem seg48In0_rung120 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33656 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX120 rho, seg48In0AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35216, rho 35217⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX120 rho, seg48In0AccY120 rho⟩ ⟨rho 35216, rho 35217⟩
        ⟨seg48In0AccX121 rho, seg48In0AccY121 rho⟩ ⟨rho 35229, rho 35230⟩ := by
  obtain ⟨r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, r2469, r2470, r2471⟩ := seg48In0_rows120 rho h
  unfold Seg48.relationRow2459 at r2459

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2459

  unfold Seg48.relationRow2460 at r2460

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2460

  unfold Seg48.relationRow2461 at r2461

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2461

  unfold Seg48.relationRow2462 at r2462

  unfold Seg48.relationRow2463 at r2463

  unfold Seg48.relationRow2464 at r2464

  unfold Seg48.relationRow2465 at r2465

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2465

  unfold Seg48.relationRow2466 at r2466

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2466

  unfold Seg48.relationRow2467 at r2467

  unfold Seg48.relationRow2468 at r2468

  unfold Seg48.relationRow2469 at r2469

  unfold Seg48.relationRow2470 at r2470

  unfold Seg48.relationRow2471 at r2471

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX121 rho = seg48In0AccX120 rho + rho 35224 := by
    unfold seg48In0AccX121 seg48In0AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 120]

    ring

  have hnexty : seg48In0AccY121 rho = seg48In0AccY120 rho + rho 35225 := by
    unfold seg48In0AccY121 seg48In0AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 120]

    ring

  have ha0 : (rho 35216 + rho 35217) * (seg48In0AccX120 rho + seg48In0AccY120 rho) = rho 35218 := by
    unfold seg48In0AccX120 seg48In0AccY120
    linear_combination r2459
  have ha1 : rho 35217 * seg48In0AccX120 rho = rho 35219 := by
    unfold seg48In0AccX120
    linear_combination r2460
  have ha2 : rho 35216 * seg48In0AccY120 rho = rho 35220 := by
    unfold seg48In0AccY120
    linear_combination r2461
  have ha3 : 3021 * rho 35219 * rho 35220 = rho 35221 := by
    linear_combination r2462
  have ha4 : rho 35222 * (1 + rho 35221) = rho 35219 + rho 35220 := by
    linear_combination r2463
  have ha5 : rho 35223 * (1 - rho 35221) = rho 35218 - rho 35219 - rho 35220 := by
    linear_combination r2464
  have haddx :
      rho 35222 * (1 + 3021 * (rho 35217 * seg48In0AccX120 rho) * (rho 35216 * seg48In0AccY120 rho)) =
        rho 35217 * seg48In0AccX120 rho + rho 35216 * seg48In0AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35223 * (1 - 3021 * (rho 35217 * seg48In0AccX120 rho) * (rho 35216 * seg48In0AccY120 rho)) =
        (-1) * (rho 35217 * seg48In0AccX120 rho) - rho 35216 * seg48In0AccY120 rho +
          (seg48In0AccY120 rho - seg48In0AccX120 rho * (-1)) * (rho 35216 + rho 35217) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35223 * (1 - rho 35221) = rho 35218 - rho 35219 - rho 35220 := ha5
      _ = (-1) * rho 35219 - rho 35220 + (seg48In0AccY120 rho - seg48In0AccX120 rho * (-1)) *
          (rho 35216 + rho 35217) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX121 rho = seg48In0AccX120 rho - Bool.toZMod bit * (seg48In0AccX120 rho - rho 35222) := by
    have hd : rho 35224 = Bool.toZMod bit * (rho 35222 - seg48In0AccX120 rho) := by
      rw [← hbit]
      unfold seg48In0AccX120
      linear_combination -r2465
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY121 rho = seg48In0AccY120 rho - Bool.toZMod bit * (seg48In0AccY120 rho - rho 35223) := by
    have hd : rho 35225 = Bool.toZMod bit * (rho 35223 - seg48In0AccY120 rho) := by
      rw [← hbit]
      unfold seg48In0AccY120
      linear_combination -r2466
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35216 * rho 35217 = rho 35226 := by linear_combination r2467
  have hd1 : rho 35216 * rho 35216 = rho 35227 := by linear_combination r2468
  have hd2 : rho 35217 * rho 35217 = rho 35228 := by linear_combination r2469
  have hd3 : rho 35229 * (rho 35217 * rho 35217 + rho 35216 * rho 35216 * (-1)) =
      2 * (rho 35216 * rho 35217) := by
    rw [hd0, hd1, hd2]
    linear_combination r2470
  have hd4 : rho 35230 * (2 - (rho 35217 * rho 35217 + rho 35216 * rho 35216 * (-1))) =
      rho 35217 * rho 35217 - rho 35216 * rho 35216 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2471
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX120 rho, seg48In0AccY120 rho⟩ ⟨rho 35216, rho 35217⟩
    ⟨rho 35222, rho 35223⟩ ⟨seg48In0AccX121 rho, seg48In0AccY121 rho⟩ ⟨rho 35229, rho 35230⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c10 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg48In0_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg48In0_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg48In0_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg48In0_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg48In0_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg48In0_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg48In0_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg48In0_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg48In0_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg48In0_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
