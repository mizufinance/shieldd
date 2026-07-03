import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2254 rho ∧ Seg52.relationRow2255 rho ∧ Seg52.relationRow2256 rho ∧ Seg52.relationRow2257 rho ∧ Seg52.relationRow2258 rho ∧ Seg52.relationRow2259 rho ∧ Seg52.relationRow2260 rho ∧ Seg52.relationRow2261 rho ∧ Seg52.relationRow2262 rho ∧ Seg52.relationRow2263 rho ∧ Seg52.relationRow2264 rho ∧ Seg52.relationRow2265 rho ∧ Seg52.relationRow2266 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266⟩

theorem seg52In0_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45863 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46643, rho 46644⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46643, rho 46644⟩
        ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46656, rho 46657⟩ := by
  obtain ⟨r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266⟩ := seg52In0_rows55 rho h
  unfold Seg52.relationRow2254 at r2254

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2254

  unfold Seg52.relationRow2255 at r2255

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2255

  unfold Seg52.relationRow2256 at r2256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2256

  unfold Seg52.relationRow2257 at r2257

  unfold Seg52.relationRow2258 at r2258

  unfold Seg52.relationRow2259 at r2259

  unfold Seg52.relationRow2260 at r2260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2260

  unfold Seg52.relationRow2261 at r2261

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2261

  unfold Seg52.relationRow2262 at r2262

  unfold Seg52.relationRow2263 at r2263

  unfold Seg52.relationRow2264 at r2264

  unfold Seg52.relationRow2265 at r2265

  unfold Seg52.relationRow2266 at r2266

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX56 rho = seg52In0AccX55 rho + rho 46651 := by
    unfold seg52In0AccX56 seg52In0AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 55]

    ring

  have hnexty : seg52In0AccY56 rho = seg52In0AccY55 rho + rho 46652 := by
    unfold seg52In0AccY56 seg52In0AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 55]

    ring

  have ha0 : (rho 46643 + rho 46644) * (seg52In0AccX55 rho + seg52In0AccY55 rho) = rho 46645 := by
    unfold seg52In0AccX55 seg52In0AccY55
    linear_combination r2254
  have ha1 : rho 46644 * seg52In0AccX55 rho = rho 46646 := by
    unfold seg52In0AccX55
    linear_combination r2255
  have ha2 : rho 46643 * seg52In0AccY55 rho = rho 46647 := by
    unfold seg52In0AccY55
    linear_combination r2256
  have ha3 : 3021 * rho 46646 * rho 46647 = rho 46648 := by
    linear_combination r2257
  have ha4 : rho 46649 * (1 + rho 46648) = rho 46646 + rho 46647 := by
    linear_combination r2258
  have ha5 : rho 46650 * (1 - rho 46648) = rho 46645 - rho 46646 - rho 46647 := by
    linear_combination r2259
  have haddx :
      rho 46649 * (1 + 3021 * (rho 46644 * seg52In0AccX55 rho) * (rho 46643 * seg52In0AccY55 rho)) =
        rho 46644 * seg52In0AccX55 rho + rho 46643 * seg52In0AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46650 * (1 - 3021 * (rho 46644 * seg52In0AccX55 rho) * (rho 46643 * seg52In0AccY55 rho)) =
        (-1) * (rho 46644 * seg52In0AccX55 rho) - rho 46643 * seg52In0AccY55 rho +
          (seg52In0AccY55 rho - seg52In0AccX55 rho * (-1)) * (rho 46643 + rho 46644) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46650 * (1 - rho 46648) = rho 46645 - rho 46646 - rho 46647 := ha5
      _ = (-1) * rho 46646 - rho 46647 + (seg52In0AccY55 rho - seg52In0AccX55 rho * (-1)) *
          (rho 46643 + rho 46644) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX56 rho = seg52In0AccX55 rho - Bool.toZMod bit * (seg52In0AccX55 rho - rho 46649) := by
    have hd : rho 46651 = Bool.toZMod bit * (rho 46649 - seg52In0AccX55 rho) := by
      rw [← hbit]
      unfold seg52In0AccX55
      linear_combination -r2260
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY56 rho = seg52In0AccY55 rho - Bool.toZMod bit * (seg52In0AccY55 rho - rho 46650) := by
    have hd : rho 46652 = Bool.toZMod bit * (rho 46650 - seg52In0AccY55 rho) := by
      rw [← hbit]
      unfold seg52In0AccY55
      linear_combination -r2261
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46643 * rho 46644 = rho 46653 := by linear_combination r2262
  have hd1 : rho 46643 * rho 46643 = rho 46654 := by linear_combination r2263
  have hd2 : rho 46644 * rho 46644 = rho 46655 := by linear_combination r2264
  have hd3 : rho 46656 * (rho 46644 * rho 46644 + rho 46643 * rho 46643 * (-1)) =
      2 * (rho 46643 * rho 46644) := by
    rw [hd0, hd1, hd2]
    linear_combination r2265
  have hd4 : rho 46657 * (2 - (rho 46644 * rho 46644 + rho 46643 * rho 46643 * (-1))) =
      rho 46644 * rho 46644 - rho 46643 * rho 46643 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2266
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46643, rho 46644⟩
    ⟨rho 46649, rho 46650⟩ ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46656, rho 46657⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2267 rho ∧ Seg52.relationRow2268 rho ∧ Seg52.relationRow2269 rho ∧ Seg52.relationRow2270 rho ∧ Seg52.relationRow2271 rho ∧ Seg52.relationRow2272 rho ∧ Seg52.relationRow2273 rho ∧ Seg52.relationRow2274 rho ∧ Seg52.relationRow2275 rho ∧ Seg52.relationRow2276 rho ∧ Seg52.relationRow2277 rho ∧ Seg52.relationRow2278 rho ∧ Seg52.relationRow2279 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279⟩

theorem seg52In0_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45864 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46656, rho 46657⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46656, rho 46657⟩
        ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46669, rho 46670⟩ := by
  obtain ⟨r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279⟩ := seg52In0_rows56 rho h
  unfold Seg52.relationRow2267 at r2267

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2267

  unfold Seg52.relationRow2268 at r2268

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2268

  unfold Seg52.relationRow2269 at r2269

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2269

  unfold Seg52.relationRow2270 at r2270

  unfold Seg52.relationRow2271 at r2271

  unfold Seg52.relationRow2272 at r2272

  unfold Seg52.relationRow2273 at r2273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2273

  unfold Seg52.relationRow2274 at r2274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2274

  unfold Seg52.relationRow2275 at r2275

  unfold Seg52.relationRow2276 at r2276

  unfold Seg52.relationRow2277 at r2277

  unfold Seg52.relationRow2278 at r2278

  unfold Seg52.relationRow2279 at r2279

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX57 rho = seg52In0AccX56 rho + rho 46664 := by
    unfold seg52In0AccX57 seg52In0AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 56]

    ring

  have hnexty : seg52In0AccY57 rho = seg52In0AccY56 rho + rho 46665 := by
    unfold seg52In0AccY57 seg52In0AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 56]

    ring

  have ha0 : (rho 46656 + rho 46657) * (seg52In0AccX56 rho + seg52In0AccY56 rho) = rho 46658 := by
    unfold seg52In0AccX56 seg52In0AccY56
    linear_combination r2267
  have ha1 : rho 46657 * seg52In0AccX56 rho = rho 46659 := by
    unfold seg52In0AccX56
    linear_combination r2268
  have ha2 : rho 46656 * seg52In0AccY56 rho = rho 46660 := by
    unfold seg52In0AccY56
    linear_combination r2269
  have ha3 : 3021 * rho 46659 * rho 46660 = rho 46661 := by
    linear_combination r2270
  have ha4 : rho 46662 * (1 + rho 46661) = rho 46659 + rho 46660 := by
    linear_combination r2271
  have ha5 : rho 46663 * (1 - rho 46661) = rho 46658 - rho 46659 - rho 46660 := by
    linear_combination r2272
  have haddx :
      rho 46662 * (1 + 3021 * (rho 46657 * seg52In0AccX56 rho) * (rho 46656 * seg52In0AccY56 rho)) =
        rho 46657 * seg52In0AccX56 rho + rho 46656 * seg52In0AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46663 * (1 - 3021 * (rho 46657 * seg52In0AccX56 rho) * (rho 46656 * seg52In0AccY56 rho)) =
        (-1) * (rho 46657 * seg52In0AccX56 rho) - rho 46656 * seg52In0AccY56 rho +
          (seg52In0AccY56 rho - seg52In0AccX56 rho * (-1)) * (rho 46656 + rho 46657) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46663 * (1 - rho 46661) = rho 46658 - rho 46659 - rho 46660 := ha5
      _ = (-1) * rho 46659 - rho 46660 + (seg52In0AccY56 rho - seg52In0AccX56 rho * (-1)) *
          (rho 46656 + rho 46657) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX57 rho = seg52In0AccX56 rho - Bool.toZMod bit * (seg52In0AccX56 rho - rho 46662) := by
    have hd : rho 46664 = Bool.toZMod bit * (rho 46662 - seg52In0AccX56 rho) := by
      rw [← hbit]
      unfold seg52In0AccX56
      linear_combination -r2273
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY57 rho = seg52In0AccY56 rho - Bool.toZMod bit * (seg52In0AccY56 rho - rho 46663) := by
    have hd : rho 46665 = Bool.toZMod bit * (rho 46663 - seg52In0AccY56 rho) := by
      rw [← hbit]
      unfold seg52In0AccY56
      linear_combination -r2274
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46656 * rho 46657 = rho 46666 := by linear_combination r2275
  have hd1 : rho 46656 * rho 46656 = rho 46667 := by linear_combination r2276
  have hd2 : rho 46657 * rho 46657 = rho 46668 := by linear_combination r2277
  have hd3 : rho 46669 * (rho 46657 * rho 46657 + rho 46656 * rho 46656 * (-1)) =
      2 * (rho 46656 * rho 46657) := by
    rw [hd0, hd1, hd2]
    linear_combination r2278
  have hd4 : rho 46670 * (2 - (rho 46657 * rho 46657 + rho 46656 * rho 46656 * (-1))) =
      rho 46657 * rho 46657 - rho 46656 * rho 46656 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2279
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX56 rho, seg52In0AccY56 rho⟩ ⟨rho 46656, rho 46657⟩
    ⟨rho 46662, rho 46663⟩ ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46669, rho 46670⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2280 rho ∧ Seg52.relationRow2281 rho ∧ Seg52.relationRow2282 rho ∧ Seg52.relationRow2283 rho ∧ Seg52.relationRow2284 rho ∧ Seg52.relationRow2285 rho ∧ Seg52.relationRow2286 rho ∧ Seg52.relationRow2287 rho ∧ Seg52.relationRow2288 rho ∧ Seg52.relationRow2289 rho ∧ Seg52.relationRow2290 rho ∧ Seg52.relationRow2291 rho ∧ Seg52.relationRow2292 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292⟩

theorem seg52In0_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45865 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46669, rho 46670⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46669, rho 46670⟩
        ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46682, rho 46683⟩ := by
  obtain ⟨r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292⟩ := seg52In0_rows57 rho h
  unfold Seg52.relationRow2280 at r2280

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2280

  unfold Seg52.relationRow2281 at r2281

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2281

  unfold Seg52.relationRow2282 at r2282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2282

  unfold Seg52.relationRow2283 at r2283

  unfold Seg52.relationRow2284 at r2284

  unfold Seg52.relationRow2285 at r2285

  unfold Seg52.relationRow2286 at r2286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2286

  unfold Seg52.relationRow2287 at r2287

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2287

  unfold Seg52.relationRow2288 at r2288

  unfold Seg52.relationRow2289 at r2289

  unfold Seg52.relationRow2290 at r2290

  unfold Seg52.relationRow2291 at r2291

  unfold Seg52.relationRow2292 at r2292

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX58 rho = seg52In0AccX57 rho + rho 46677 := by
    unfold seg52In0AccX58 seg52In0AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 57]

    ring

  have hnexty : seg52In0AccY58 rho = seg52In0AccY57 rho + rho 46678 := by
    unfold seg52In0AccY58 seg52In0AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 57]

    ring

  have ha0 : (rho 46669 + rho 46670) * (seg52In0AccX57 rho + seg52In0AccY57 rho) = rho 46671 := by
    unfold seg52In0AccX57 seg52In0AccY57
    linear_combination r2280
  have ha1 : rho 46670 * seg52In0AccX57 rho = rho 46672 := by
    unfold seg52In0AccX57
    linear_combination r2281
  have ha2 : rho 46669 * seg52In0AccY57 rho = rho 46673 := by
    unfold seg52In0AccY57
    linear_combination r2282
  have ha3 : 3021 * rho 46672 * rho 46673 = rho 46674 := by
    linear_combination r2283
  have ha4 : rho 46675 * (1 + rho 46674) = rho 46672 + rho 46673 := by
    linear_combination r2284
  have ha5 : rho 46676 * (1 - rho 46674) = rho 46671 - rho 46672 - rho 46673 := by
    linear_combination r2285
  have haddx :
      rho 46675 * (1 + 3021 * (rho 46670 * seg52In0AccX57 rho) * (rho 46669 * seg52In0AccY57 rho)) =
        rho 46670 * seg52In0AccX57 rho + rho 46669 * seg52In0AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46676 * (1 - 3021 * (rho 46670 * seg52In0AccX57 rho) * (rho 46669 * seg52In0AccY57 rho)) =
        (-1) * (rho 46670 * seg52In0AccX57 rho) - rho 46669 * seg52In0AccY57 rho +
          (seg52In0AccY57 rho - seg52In0AccX57 rho * (-1)) * (rho 46669 + rho 46670) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46676 * (1 - rho 46674) = rho 46671 - rho 46672 - rho 46673 := ha5
      _ = (-1) * rho 46672 - rho 46673 + (seg52In0AccY57 rho - seg52In0AccX57 rho * (-1)) *
          (rho 46669 + rho 46670) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX58 rho = seg52In0AccX57 rho - Bool.toZMod bit * (seg52In0AccX57 rho - rho 46675) := by
    have hd : rho 46677 = Bool.toZMod bit * (rho 46675 - seg52In0AccX57 rho) := by
      rw [← hbit]
      unfold seg52In0AccX57
      linear_combination -r2286
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY58 rho = seg52In0AccY57 rho - Bool.toZMod bit * (seg52In0AccY57 rho - rho 46676) := by
    have hd : rho 46678 = Bool.toZMod bit * (rho 46676 - seg52In0AccY57 rho) := by
      rw [← hbit]
      unfold seg52In0AccY57
      linear_combination -r2287
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46669 * rho 46670 = rho 46679 := by linear_combination r2288
  have hd1 : rho 46669 * rho 46669 = rho 46680 := by linear_combination r2289
  have hd2 : rho 46670 * rho 46670 = rho 46681 := by linear_combination r2290
  have hd3 : rho 46682 * (rho 46670 * rho 46670 + rho 46669 * rho 46669 * (-1)) =
      2 * (rho 46669 * rho 46670) := by
    rw [hd0, hd1, hd2]
    linear_combination r2291
  have hd4 : rho 46683 * (2 - (rho 46670 * rho 46670 + rho 46669 * rho 46669 * (-1))) =
      rho 46670 * rho 46670 - rho 46669 * rho 46669 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2292
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX57 rho, seg52In0AccY57 rho⟩ ⟨rho 46669, rho 46670⟩
    ⟨rho 46675, rho 46676⟩ ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46682, rho 46683⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2293 rho ∧ Seg52.relationRow2294 rho ∧ Seg52.relationRow2295 rho ∧ Seg52.relationRow2296 rho ∧ Seg52.relationRow2297 rho ∧ Seg52.relationRow2298 rho ∧ Seg52.relationRow2299 rho ∧ Seg52.relationRow2300 rho ∧ Seg52.relationRow2301 rho ∧ Seg52.relationRow2302 rho ∧ Seg52.relationRow2303 rho ∧ Seg52.relationRow2304 rho ∧ Seg52.relationRow2305 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305⟩

theorem seg52In0_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45866 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46682, rho 46683⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46682, rho 46683⟩
        ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46695, rho 46696⟩ := by
  obtain ⟨r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305⟩ := seg52In0_rows58 rho h
  unfold Seg52.relationRow2293 at r2293

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2293

  unfold Seg52.relationRow2294 at r2294

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2294

  unfold Seg52.relationRow2295 at r2295

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2295

  unfold Seg52.relationRow2296 at r2296

  unfold Seg52.relationRow2297 at r2297

  unfold Seg52.relationRow2298 at r2298

  unfold Seg52.relationRow2299 at r2299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2299

  unfold Seg52.relationRow2300 at r2300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2300

  unfold Seg52.relationRow2301 at r2301

  unfold Seg52.relationRow2302 at r2302

  unfold Seg52.relationRow2303 at r2303

  unfold Seg52.relationRow2304 at r2304

  unfold Seg52.relationRow2305 at r2305

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX59 rho = seg52In0AccX58 rho + rho 46690 := by
    unfold seg52In0AccX59 seg52In0AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 58]

    ring

  have hnexty : seg52In0AccY59 rho = seg52In0AccY58 rho + rho 46691 := by
    unfold seg52In0AccY59 seg52In0AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 58]

    ring

  have ha0 : (rho 46682 + rho 46683) * (seg52In0AccX58 rho + seg52In0AccY58 rho) = rho 46684 := by
    unfold seg52In0AccX58 seg52In0AccY58
    linear_combination r2293
  have ha1 : rho 46683 * seg52In0AccX58 rho = rho 46685 := by
    unfold seg52In0AccX58
    linear_combination r2294
  have ha2 : rho 46682 * seg52In0AccY58 rho = rho 46686 := by
    unfold seg52In0AccY58
    linear_combination r2295
  have ha3 : 3021 * rho 46685 * rho 46686 = rho 46687 := by
    linear_combination r2296
  have ha4 : rho 46688 * (1 + rho 46687) = rho 46685 + rho 46686 := by
    linear_combination r2297
  have ha5 : rho 46689 * (1 - rho 46687) = rho 46684 - rho 46685 - rho 46686 := by
    linear_combination r2298
  have haddx :
      rho 46688 * (1 + 3021 * (rho 46683 * seg52In0AccX58 rho) * (rho 46682 * seg52In0AccY58 rho)) =
        rho 46683 * seg52In0AccX58 rho + rho 46682 * seg52In0AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46689 * (1 - 3021 * (rho 46683 * seg52In0AccX58 rho) * (rho 46682 * seg52In0AccY58 rho)) =
        (-1) * (rho 46683 * seg52In0AccX58 rho) - rho 46682 * seg52In0AccY58 rho +
          (seg52In0AccY58 rho - seg52In0AccX58 rho * (-1)) * (rho 46682 + rho 46683) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46689 * (1 - rho 46687) = rho 46684 - rho 46685 - rho 46686 := ha5
      _ = (-1) * rho 46685 - rho 46686 + (seg52In0AccY58 rho - seg52In0AccX58 rho * (-1)) *
          (rho 46682 + rho 46683) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX59 rho = seg52In0AccX58 rho - Bool.toZMod bit * (seg52In0AccX58 rho - rho 46688) := by
    have hd : rho 46690 = Bool.toZMod bit * (rho 46688 - seg52In0AccX58 rho) := by
      rw [← hbit]
      unfold seg52In0AccX58
      linear_combination -r2299
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY59 rho = seg52In0AccY58 rho - Bool.toZMod bit * (seg52In0AccY58 rho - rho 46689) := by
    have hd : rho 46691 = Bool.toZMod bit * (rho 46689 - seg52In0AccY58 rho) := by
      rw [← hbit]
      unfold seg52In0AccY58
      linear_combination -r2300
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46682 * rho 46683 = rho 46692 := by linear_combination r2301
  have hd1 : rho 46682 * rho 46682 = rho 46693 := by linear_combination r2302
  have hd2 : rho 46683 * rho 46683 = rho 46694 := by linear_combination r2303
  have hd3 : rho 46695 * (rho 46683 * rho 46683 + rho 46682 * rho 46682 * (-1)) =
      2 * (rho 46682 * rho 46683) := by
    rw [hd0, hd1, hd2]
    linear_combination r2304
  have hd4 : rho 46696 * (2 - (rho 46683 * rho 46683 + rho 46682 * rho 46682 * (-1))) =
      rho 46683 * rho 46683 - rho 46682 * rho 46682 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2305
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX58 rho, seg52In0AccY58 rho⟩ ⟨rho 46682, rho 46683⟩
    ⟨rho 46688, rho 46689⟩ ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46695, rho 46696⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2306 rho ∧ Seg52.relationRow2307 rho ∧ Seg52.relationRow2308 rho ∧ Seg52.relationRow2309 rho ∧ Seg52.relationRow2310 rho ∧ Seg52.relationRow2311 rho ∧ Seg52.relationRow2312 rho ∧ Seg52.relationRow2313 rho ∧ Seg52.relationRow2314 rho ∧ Seg52.relationRow2315 rho ∧ Seg52.relationRow2316 rho ∧ Seg52.relationRow2317 rho ∧ Seg52.relationRow2318 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318, _⟩

  exact ⟨r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318⟩

theorem seg52In0_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45867 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46695, rho 46696⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46695, rho 46696⟩
        ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46708, rho 46709⟩ := by
  obtain ⟨r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318⟩ := seg52In0_rows59 rho h
  unfold Seg52.relationRow2306 at r2306

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2306

  unfold Seg52.relationRow2307 at r2307

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2307

  unfold Seg52.relationRow2308 at r2308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2308

  unfold Seg52.relationRow2309 at r2309

  unfold Seg52.relationRow2310 at r2310

  unfold Seg52.relationRow2311 at r2311

  unfold Seg52.relationRow2312 at r2312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2312

  unfold Seg52.relationRow2313 at r2313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2313

  unfold Seg52.relationRow2314 at r2314

  unfold Seg52.relationRow2315 at r2315

  unfold Seg52.relationRow2316 at r2316

  unfold Seg52.relationRow2317 at r2317

  unfold Seg52.relationRow2318 at r2318

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX60 rho = seg52In0AccX59 rho + rho 46703 := by
    unfold seg52In0AccX60 seg52In0AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 59]

    ring

  have hnexty : seg52In0AccY60 rho = seg52In0AccY59 rho + rho 46704 := by
    unfold seg52In0AccY60 seg52In0AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 59]

    ring

  have ha0 : (rho 46695 + rho 46696) * (seg52In0AccX59 rho + seg52In0AccY59 rho) = rho 46697 := by
    unfold seg52In0AccX59 seg52In0AccY59
    linear_combination r2306
  have ha1 : rho 46696 * seg52In0AccX59 rho = rho 46698 := by
    unfold seg52In0AccX59
    linear_combination r2307
  have ha2 : rho 46695 * seg52In0AccY59 rho = rho 46699 := by
    unfold seg52In0AccY59
    linear_combination r2308
  have ha3 : 3021 * rho 46698 * rho 46699 = rho 46700 := by
    linear_combination r2309
  have ha4 : rho 46701 * (1 + rho 46700) = rho 46698 + rho 46699 := by
    linear_combination r2310
  have ha5 : rho 46702 * (1 - rho 46700) = rho 46697 - rho 46698 - rho 46699 := by
    linear_combination r2311
  have haddx :
      rho 46701 * (1 + 3021 * (rho 46696 * seg52In0AccX59 rho) * (rho 46695 * seg52In0AccY59 rho)) =
        rho 46696 * seg52In0AccX59 rho + rho 46695 * seg52In0AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46702 * (1 - 3021 * (rho 46696 * seg52In0AccX59 rho) * (rho 46695 * seg52In0AccY59 rho)) =
        (-1) * (rho 46696 * seg52In0AccX59 rho) - rho 46695 * seg52In0AccY59 rho +
          (seg52In0AccY59 rho - seg52In0AccX59 rho * (-1)) * (rho 46695 + rho 46696) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46702 * (1 - rho 46700) = rho 46697 - rho 46698 - rho 46699 := ha5
      _ = (-1) * rho 46698 - rho 46699 + (seg52In0AccY59 rho - seg52In0AccX59 rho * (-1)) *
          (rho 46695 + rho 46696) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX60 rho = seg52In0AccX59 rho - Bool.toZMod bit * (seg52In0AccX59 rho - rho 46701) := by
    have hd : rho 46703 = Bool.toZMod bit * (rho 46701 - seg52In0AccX59 rho) := by
      rw [← hbit]
      unfold seg52In0AccX59
      linear_combination -r2312
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY60 rho = seg52In0AccY59 rho - Bool.toZMod bit * (seg52In0AccY59 rho - rho 46702) := by
    have hd : rho 46704 = Bool.toZMod bit * (rho 46702 - seg52In0AccY59 rho) := by
      rw [← hbit]
      unfold seg52In0AccY59
      linear_combination -r2313
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46695 * rho 46696 = rho 46705 := by linear_combination r2314
  have hd1 : rho 46695 * rho 46695 = rho 46706 := by linear_combination r2315
  have hd2 : rho 46696 * rho 46696 = rho 46707 := by linear_combination r2316
  have hd3 : rho 46708 * (rho 46696 * rho 46696 + rho 46695 * rho 46695 * (-1)) =
      2 * (rho 46695 * rho 46696) := by
    rw [hd0, hd1, hd2]
    linear_combination r2317
  have hd4 : rho 46709 * (2 - (rho 46696 * rho 46696 + rho 46695 * rho 46695 * (-1))) =
      rho 46696 * rho 46696 - rho 46695 * rho 46695 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2318
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX59 rho, seg52In0AccY59 rho⟩ ⟨rho 46695, rho 46696⟩
    ⟨rho 46701, rho 46702⟩ ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46708, rho 46709⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2319 rho ∧ Seg52.relationRow2320 rho ∧ Seg52.relationRow2321 rho ∧ Seg52.relationRow2322 rho ∧ Seg52.relationRow2323 rho ∧ Seg52.relationRow2324 rho ∧ Seg52.relationRow2325 rho ∧ Seg52.relationRow2326 rho ∧ Seg52.relationRow2327 rho ∧ Seg52.relationRow2328 rho ∧ Seg52.relationRow2329 rho ∧ Seg52.relationRow2330 rho ∧ Seg52.relationRow2331 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2319⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2319, r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331⟩

theorem seg52In0_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45868 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46708, rho 46709⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46708, rho 46709⟩
        ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46721, rho 46722⟩ := by
  obtain ⟨r2319, r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331⟩ := seg52In0_rows60 rho h
  unfold Seg52.relationRow2319 at r2319

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2319

  unfold Seg52.relationRow2320 at r2320

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2320

  unfold Seg52.relationRow2321 at r2321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2321

  unfold Seg52.relationRow2322 at r2322

  unfold Seg52.relationRow2323 at r2323

  unfold Seg52.relationRow2324 at r2324

  unfold Seg52.relationRow2325 at r2325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2325

  unfold Seg52.relationRow2326 at r2326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2326

  unfold Seg52.relationRow2327 at r2327

  unfold Seg52.relationRow2328 at r2328

  unfold Seg52.relationRow2329 at r2329

  unfold Seg52.relationRow2330 at r2330

  unfold Seg52.relationRow2331 at r2331

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX61 rho = seg52In0AccX60 rho + rho 46716 := by
    unfold seg52In0AccX61 seg52In0AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 60]

    ring

  have hnexty : seg52In0AccY61 rho = seg52In0AccY60 rho + rho 46717 := by
    unfold seg52In0AccY61 seg52In0AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 60]

    ring

  have ha0 : (rho 46708 + rho 46709) * (seg52In0AccX60 rho + seg52In0AccY60 rho) = rho 46710 := by
    unfold seg52In0AccX60 seg52In0AccY60
    linear_combination r2319
  have ha1 : rho 46709 * seg52In0AccX60 rho = rho 46711 := by
    unfold seg52In0AccX60
    linear_combination r2320
  have ha2 : rho 46708 * seg52In0AccY60 rho = rho 46712 := by
    unfold seg52In0AccY60
    linear_combination r2321
  have ha3 : 3021 * rho 46711 * rho 46712 = rho 46713 := by
    linear_combination r2322
  have ha4 : rho 46714 * (1 + rho 46713) = rho 46711 + rho 46712 := by
    linear_combination r2323
  have ha5 : rho 46715 * (1 - rho 46713) = rho 46710 - rho 46711 - rho 46712 := by
    linear_combination r2324
  have haddx :
      rho 46714 * (1 + 3021 * (rho 46709 * seg52In0AccX60 rho) * (rho 46708 * seg52In0AccY60 rho)) =
        rho 46709 * seg52In0AccX60 rho + rho 46708 * seg52In0AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46715 * (1 - 3021 * (rho 46709 * seg52In0AccX60 rho) * (rho 46708 * seg52In0AccY60 rho)) =
        (-1) * (rho 46709 * seg52In0AccX60 rho) - rho 46708 * seg52In0AccY60 rho +
          (seg52In0AccY60 rho - seg52In0AccX60 rho * (-1)) * (rho 46708 + rho 46709) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46715 * (1 - rho 46713) = rho 46710 - rho 46711 - rho 46712 := ha5
      _ = (-1) * rho 46711 - rho 46712 + (seg52In0AccY60 rho - seg52In0AccX60 rho * (-1)) *
          (rho 46708 + rho 46709) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX61 rho = seg52In0AccX60 rho - Bool.toZMod bit * (seg52In0AccX60 rho - rho 46714) := by
    have hd : rho 46716 = Bool.toZMod bit * (rho 46714 - seg52In0AccX60 rho) := by
      rw [← hbit]
      unfold seg52In0AccX60
      linear_combination -r2325
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY61 rho = seg52In0AccY60 rho - Bool.toZMod bit * (seg52In0AccY60 rho - rho 46715) := by
    have hd : rho 46717 = Bool.toZMod bit * (rho 46715 - seg52In0AccY60 rho) := by
      rw [← hbit]
      unfold seg52In0AccY60
      linear_combination -r2326
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46708 * rho 46709 = rho 46718 := by linear_combination r2327
  have hd1 : rho 46708 * rho 46708 = rho 46719 := by linear_combination r2328
  have hd2 : rho 46709 * rho 46709 = rho 46720 := by linear_combination r2329
  have hd3 : rho 46721 * (rho 46709 * rho 46709 + rho 46708 * rho 46708 * (-1)) =
      2 * (rho 46708 * rho 46709) := by
    rw [hd0, hd1, hd2]
    linear_combination r2330
  have hd4 : rho 46722 * (2 - (rho 46709 * rho 46709 + rho 46708 * rho 46708 * (-1))) =
      rho 46709 * rho 46709 - rho 46708 * rho 46708 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2331
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX60 rho, seg52In0AccY60 rho⟩ ⟨rho 46708, rho 46709⟩
    ⟨rho 46714, rho 46715⟩ ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46721, rho 46722⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2332 rho ∧ Seg52.relationRow2333 rho ∧ Seg52.relationRow2334 rho ∧ Seg52.relationRow2335 rho ∧ Seg52.relationRow2336 rho ∧ Seg52.relationRow2337 rho ∧ Seg52.relationRow2338 rho ∧ Seg52.relationRow2339 rho ∧ Seg52.relationRow2340 rho ∧ Seg52.relationRow2341 rho ∧ Seg52.relationRow2342 rho ∧ Seg52.relationRow2343 rho ∧ Seg52.relationRow2344 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344⟩

theorem seg52In0_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45869 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46721, rho 46722⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46721, rho 46722⟩
        ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46734, rho 46735⟩ := by
  obtain ⟨r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344⟩ := seg52In0_rows61 rho h
  unfold Seg52.relationRow2332 at r2332

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2332

  unfold Seg52.relationRow2333 at r2333

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2333

  unfold Seg52.relationRow2334 at r2334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2334

  unfold Seg52.relationRow2335 at r2335

  unfold Seg52.relationRow2336 at r2336

  unfold Seg52.relationRow2337 at r2337

  unfold Seg52.relationRow2338 at r2338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2338

  unfold Seg52.relationRow2339 at r2339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2339

  unfold Seg52.relationRow2340 at r2340

  unfold Seg52.relationRow2341 at r2341

  unfold Seg52.relationRow2342 at r2342

  unfold Seg52.relationRow2343 at r2343

  unfold Seg52.relationRow2344 at r2344

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX62 rho = seg52In0AccX61 rho + rho 46729 := by
    unfold seg52In0AccX62 seg52In0AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 61]

    ring

  have hnexty : seg52In0AccY62 rho = seg52In0AccY61 rho + rho 46730 := by
    unfold seg52In0AccY62 seg52In0AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 61]

    ring

  have ha0 : (rho 46721 + rho 46722) * (seg52In0AccX61 rho + seg52In0AccY61 rho) = rho 46723 := by
    unfold seg52In0AccX61 seg52In0AccY61
    linear_combination r2332
  have ha1 : rho 46722 * seg52In0AccX61 rho = rho 46724 := by
    unfold seg52In0AccX61
    linear_combination r2333
  have ha2 : rho 46721 * seg52In0AccY61 rho = rho 46725 := by
    unfold seg52In0AccY61
    linear_combination r2334
  have ha3 : 3021 * rho 46724 * rho 46725 = rho 46726 := by
    linear_combination r2335
  have ha4 : rho 46727 * (1 + rho 46726) = rho 46724 + rho 46725 := by
    linear_combination r2336
  have ha5 : rho 46728 * (1 - rho 46726) = rho 46723 - rho 46724 - rho 46725 := by
    linear_combination r2337
  have haddx :
      rho 46727 * (1 + 3021 * (rho 46722 * seg52In0AccX61 rho) * (rho 46721 * seg52In0AccY61 rho)) =
        rho 46722 * seg52In0AccX61 rho + rho 46721 * seg52In0AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46728 * (1 - 3021 * (rho 46722 * seg52In0AccX61 rho) * (rho 46721 * seg52In0AccY61 rho)) =
        (-1) * (rho 46722 * seg52In0AccX61 rho) - rho 46721 * seg52In0AccY61 rho +
          (seg52In0AccY61 rho - seg52In0AccX61 rho * (-1)) * (rho 46721 + rho 46722) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46728 * (1 - rho 46726) = rho 46723 - rho 46724 - rho 46725 := ha5
      _ = (-1) * rho 46724 - rho 46725 + (seg52In0AccY61 rho - seg52In0AccX61 rho * (-1)) *
          (rho 46721 + rho 46722) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX62 rho = seg52In0AccX61 rho - Bool.toZMod bit * (seg52In0AccX61 rho - rho 46727) := by
    have hd : rho 46729 = Bool.toZMod bit * (rho 46727 - seg52In0AccX61 rho) := by
      rw [← hbit]
      unfold seg52In0AccX61
      linear_combination -r2338
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY62 rho = seg52In0AccY61 rho - Bool.toZMod bit * (seg52In0AccY61 rho - rho 46728) := by
    have hd : rho 46730 = Bool.toZMod bit * (rho 46728 - seg52In0AccY61 rho) := by
      rw [← hbit]
      unfold seg52In0AccY61
      linear_combination -r2339
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46721 * rho 46722 = rho 46731 := by linear_combination r2340
  have hd1 : rho 46721 * rho 46721 = rho 46732 := by linear_combination r2341
  have hd2 : rho 46722 * rho 46722 = rho 46733 := by linear_combination r2342
  have hd3 : rho 46734 * (rho 46722 * rho 46722 + rho 46721 * rho 46721 * (-1)) =
      2 * (rho 46721 * rho 46722) := by
    rw [hd0, hd1, hd2]
    linear_combination r2343
  have hd4 : rho 46735 * (2 - (rho 46722 * rho 46722 + rho 46721 * rho 46721 * (-1))) =
      rho 46722 * rho 46722 - rho 46721 * rho 46721 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2344
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX61 rho, seg52In0AccY61 rho⟩ ⟨rho 46721, rho 46722⟩
    ⟨rho 46727, rho 46728⟩ ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46734, rho 46735⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2345 rho ∧ Seg52.relationRow2346 rho ∧ Seg52.relationRow2347 rho ∧ Seg52.relationRow2348 rho ∧ Seg52.relationRow2349 rho ∧ Seg52.relationRow2350 rho ∧ Seg52.relationRow2351 rho ∧ Seg52.relationRow2352 rho ∧ Seg52.relationRow2353 rho ∧ Seg52.relationRow2354 rho ∧ Seg52.relationRow2355 rho ∧ Seg52.relationRow2356 rho ∧ Seg52.relationRow2357 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357⟩

theorem seg52In0_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45870 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46734, rho 46735⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46734, rho 46735⟩
        ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46747, rho 46748⟩ := by
  obtain ⟨r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357⟩ := seg52In0_rows62 rho h
  unfold Seg52.relationRow2345 at r2345

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2345

  unfold Seg52.relationRow2346 at r2346

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2346

  unfold Seg52.relationRow2347 at r2347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2347

  unfold Seg52.relationRow2348 at r2348

  unfold Seg52.relationRow2349 at r2349

  unfold Seg52.relationRow2350 at r2350

  unfold Seg52.relationRow2351 at r2351

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2351

  unfold Seg52.relationRow2352 at r2352

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2352

  unfold Seg52.relationRow2353 at r2353

  unfold Seg52.relationRow2354 at r2354

  unfold Seg52.relationRow2355 at r2355

  unfold Seg52.relationRow2356 at r2356

  unfold Seg52.relationRow2357 at r2357

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX63 rho = seg52In0AccX62 rho + rho 46742 := by
    unfold seg52In0AccX63 seg52In0AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 62]

    ring

  have hnexty : seg52In0AccY63 rho = seg52In0AccY62 rho + rho 46743 := by
    unfold seg52In0AccY63 seg52In0AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 62]

    ring

  have ha0 : (rho 46734 + rho 46735) * (seg52In0AccX62 rho + seg52In0AccY62 rho) = rho 46736 := by
    unfold seg52In0AccX62 seg52In0AccY62
    linear_combination r2345
  have ha1 : rho 46735 * seg52In0AccX62 rho = rho 46737 := by
    unfold seg52In0AccX62
    linear_combination r2346
  have ha2 : rho 46734 * seg52In0AccY62 rho = rho 46738 := by
    unfold seg52In0AccY62
    linear_combination r2347
  have ha3 : 3021 * rho 46737 * rho 46738 = rho 46739 := by
    linear_combination r2348
  have ha4 : rho 46740 * (1 + rho 46739) = rho 46737 + rho 46738 := by
    linear_combination r2349
  have ha5 : rho 46741 * (1 - rho 46739) = rho 46736 - rho 46737 - rho 46738 := by
    linear_combination r2350
  have haddx :
      rho 46740 * (1 + 3021 * (rho 46735 * seg52In0AccX62 rho) * (rho 46734 * seg52In0AccY62 rho)) =
        rho 46735 * seg52In0AccX62 rho + rho 46734 * seg52In0AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46741 * (1 - 3021 * (rho 46735 * seg52In0AccX62 rho) * (rho 46734 * seg52In0AccY62 rho)) =
        (-1) * (rho 46735 * seg52In0AccX62 rho) - rho 46734 * seg52In0AccY62 rho +
          (seg52In0AccY62 rho - seg52In0AccX62 rho * (-1)) * (rho 46734 + rho 46735) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46741 * (1 - rho 46739) = rho 46736 - rho 46737 - rho 46738 := ha5
      _ = (-1) * rho 46737 - rho 46738 + (seg52In0AccY62 rho - seg52In0AccX62 rho * (-1)) *
          (rho 46734 + rho 46735) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX63 rho = seg52In0AccX62 rho - Bool.toZMod bit * (seg52In0AccX62 rho - rho 46740) := by
    have hd : rho 46742 = Bool.toZMod bit * (rho 46740 - seg52In0AccX62 rho) := by
      rw [← hbit]
      unfold seg52In0AccX62
      linear_combination -r2351
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY63 rho = seg52In0AccY62 rho - Bool.toZMod bit * (seg52In0AccY62 rho - rho 46741) := by
    have hd : rho 46743 = Bool.toZMod bit * (rho 46741 - seg52In0AccY62 rho) := by
      rw [← hbit]
      unfold seg52In0AccY62
      linear_combination -r2352
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46734 * rho 46735 = rho 46744 := by linear_combination r2353
  have hd1 : rho 46734 * rho 46734 = rho 46745 := by linear_combination r2354
  have hd2 : rho 46735 * rho 46735 = rho 46746 := by linear_combination r2355
  have hd3 : rho 46747 * (rho 46735 * rho 46735 + rho 46734 * rho 46734 * (-1)) =
      2 * (rho 46734 * rho 46735) := by
    rw [hd0, hd1, hd2]
    linear_combination r2356
  have hd4 : rho 46748 * (2 - (rho 46735 * rho 46735 + rho 46734 * rho 46734 * (-1))) =
      rho 46735 * rho 46735 - rho 46734 * rho 46734 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2357
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX62 rho, seg52In0AccY62 rho⟩ ⟨rho 46734, rho 46735⟩
    ⟨rho 46740, rho 46741⟩ ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46747, rho 46748⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2358 rho ∧ Seg52.relationRow2359 rho ∧ Seg52.relationRow2360 rho ∧ Seg52.relationRow2361 rho ∧ Seg52.relationRow2362 rho ∧ Seg52.relationRow2363 rho ∧ Seg52.relationRow2364 rho ∧ Seg52.relationRow2365 rho ∧ Seg52.relationRow2366 rho ∧ Seg52.relationRow2367 rho ∧ Seg52.relationRow2368 rho ∧ Seg52.relationRow2369 rho ∧ Seg52.relationRow2370 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370⟩

theorem seg52In0_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45871 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46747, rho 46748⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46747, rho 46748⟩
        ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46760, rho 46761⟩ := by
  obtain ⟨r2358, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370⟩ := seg52In0_rows63 rho h
  unfold Seg52.relationRow2358 at r2358

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2358

  unfold Seg52.relationRow2359 at r2359

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2359

  unfold Seg52.relationRow2360 at r2360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2360

  unfold Seg52.relationRow2361 at r2361

  unfold Seg52.relationRow2362 at r2362

  unfold Seg52.relationRow2363 at r2363

  unfold Seg52.relationRow2364 at r2364

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2364

  unfold Seg52.relationRow2365 at r2365

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2365

  unfold Seg52.relationRow2366 at r2366

  unfold Seg52.relationRow2367 at r2367

  unfold Seg52.relationRow2368 at r2368

  unfold Seg52.relationRow2369 at r2369

  unfold Seg52.relationRow2370 at r2370

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX64 rho = seg52In0AccX63 rho + rho 46755 := by
    unfold seg52In0AccX64 seg52In0AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 63]

    ring

  have hnexty : seg52In0AccY64 rho = seg52In0AccY63 rho + rho 46756 := by
    unfold seg52In0AccY64 seg52In0AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 63]

    ring

  have ha0 : (rho 46747 + rho 46748) * (seg52In0AccX63 rho + seg52In0AccY63 rho) = rho 46749 := by
    unfold seg52In0AccX63 seg52In0AccY63
    linear_combination r2358
  have ha1 : rho 46748 * seg52In0AccX63 rho = rho 46750 := by
    unfold seg52In0AccX63
    linear_combination r2359
  have ha2 : rho 46747 * seg52In0AccY63 rho = rho 46751 := by
    unfold seg52In0AccY63
    linear_combination r2360
  have ha3 : 3021 * rho 46750 * rho 46751 = rho 46752 := by
    linear_combination r2361
  have ha4 : rho 46753 * (1 + rho 46752) = rho 46750 + rho 46751 := by
    linear_combination r2362
  have ha5 : rho 46754 * (1 - rho 46752) = rho 46749 - rho 46750 - rho 46751 := by
    linear_combination r2363
  have haddx :
      rho 46753 * (1 + 3021 * (rho 46748 * seg52In0AccX63 rho) * (rho 46747 * seg52In0AccY63 rho)) =
        rho 46748 * seg52In0AccX63 rho + rho 46747 * seg52In0AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46754 * (1 - 3021 * (rho 46748 * seg52In0AccX63 rho) * (rho 46747 * seg52In0AccY63 rho)) =
        (-1) * (rho 46748 * seg52In0AccX63 rho) - rho 46747 * seg52In0AccY63 rho +
          (seg52In0AccY63 rho - seg52In0AccX63 rho * (-1)) * (rho 46747 + rho 46748) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46754 * (1 - rho 46752) = rho 46749 - rho 46750 - rho 46751 := ha5
      _ = (-1) * rho 46750 - rho 46751 + (seg52In0AccY63 rho - seg52In0AccX63 rho * (-1)) *
          (rho 46747 + rho 46748) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX64 rho = seg52In0AccX63 rho - Bool.toZMod bit * (seg52In0AccX63 rho - rho 46753) := by
    have hd : rho 46755 = Bool.toZMod bit * (rho 46753 - seg52In0AccX63 rho) := by
      rw [← hbit]
      unfold seg52In0AccX63
      linear_combination -r2364
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY64 rho = seg52In0AccY63 rho - Bool.toZMod bit * (seg52In0AccY63 rho - rho 46754) := by
    have hd : rho 46756 = Bool.toZMod bit * (rho 46754 - seg52In0AccY63 rho) := by
      rw [← hbit]
      unfold seg52In0AccY63
      linear_combination -r2365
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46747 * rho 46748 = rho 46757 := by linear_combination r2366
  have hd1 : rho 46747 * rho 46747 = rho 46758 := by linear_combination r2367
  have hd2 : rho 46748 * rho 46748 = rho 46759 := by linear_combination r2368
  have hd3 : rho 46760 * (rho 46748 * rho 46748 + rho 46747 * rho 46747 * (-1)) =
      2 * (rho 46747 * rho 46748) := by
    rw [hd0, hd1, hd2]
    linear_combination r2369
  have hd4 : rho 46761 * (2 - (rho 46748 * rho 46748 + rho 46747 * rho 46747 * (-1))) =
      rho 46748 * rho 46748 - rho 46747 * rho 46747 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2370
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX63 rho, seg52In0AccY63 rho⟩ ⟨rho 46747, rho 46748⟩
    ⟨rho 46753, rho 46754⟩ ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46760, rho 46761⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2371 rho ∧ Seg52.relationRow2372 rho ∧ Seg52.relationRow2373 rho ∧ Seg52.relationRow2374 rho ∧ Seg52.relationRow2375 rho ∧ Seg52.relationRow2376 rho ∧ Seg52.relationRow2377 rho ∧ Seg52.relationRow2378 rho ∧ Seg52.relationRow2379 rho ∧ Seg52.relationRow2380 rho ∧ Seg52.relationRow2381 rho ∧ Seg52.relationRow2382 rho ∧ Seg52.relationRow2383 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, r2381, r2382, r2383, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, r2381, r2382, r2383⟩

theorem seg52In0_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45872 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46760, rho 46761⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46760, rho 46761⟩
        ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46773, rho 46774⟩ := by
  obtain ⟨r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, r2381, r2382, r2383⟩ := seg52In0_rows64 rho h
  unfold Seg52.relationRow2371 at r2371

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2371

  unfold Seg52.relationRow2372 at r2372

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2372

  unfold Seg52.relationRow2373 at r2373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2373

  unfold Seg52.relationRow2374 at r2374

  unfold Seg52.relationRow2375 at r2375

  unfold Seg52.relationRow2376 at r2376

  unfold Seg52.relationRow2377 at r2377

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2377

  unfold Seg52.relationRow2378 at r2378

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2378

  unfold Seg52.relationRow2379 at r2379

  unfold Seg52.relationRow2380 at r2380

  unfold Seg52.relationRow2381 at r2381

  unfold Seg52.relationRow2382 at r2382

  unfold Seg52.relationRow2383 at r2383

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX65 rho = seg52In0AccX64 rho + rho 46768 := by
    unfold seg52In0AccX65 seg52In0AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 64]

    ring

  have hnexty : seg52In0AccY65 rho = seg52In0AccY64 rho + rho 46769 := by
    unfold seg52In0AccY65 seg52In0AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 64]

    ring

  have ha0 : (rho 46760 + rho 46761) * (seg52In0AccX64 rho + seg52In0AccY64 rho) = rho 46762 := by
    unfold seg52In0AccX64 seg52In0AccY64
    linear_combination r2371
  have ha1 : rho 46761 * seg52In0AccX64 rho = rho 46763 := by
    unfold seg52In0AccX64
    linear_combination r2372
  have ha2 : rho 46760 * seg52In0AccY64 rho = rho 46764 := by
    unfold seg52In0AccY64
    linear_combination r2373
  have ha3 : 3021 * rho 46763 * rho 46764 = rho 46765 := by
    linear_combination r2374
  have ha4 : rho 46766 * (1 + rho 46765) = rho 46763 + rho 46764 := by
    linear_combination r2375
  have ha5 : rho 46767 * (1 - rho 46765) = rho 46762 - rho 46763 - rho 46764 := by
    linear_combination r2376
  have haddx :
      rho 46766 * (1 + 3021 * (rho 46761 * seg52In0AccX64 rho) * (rho 46760 * seg52In0AccY64 rho)) =
        rho 46761 * seg52In0AccX64 rho + rho 46760 * seg52In0AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46767 * (1 - 3021 * (rho 46761 * seg52In0AccX64 rho) * (rho 46760 * seg52In0AccY64 rho)) =
        (-1) * (rho 46761 * seg52In0AccX64 rho) - rho 46760 * seg52In0AccY64 rho +
          (seg52In0AccY64 rho - seg52In0AccX64 rho * (-1)) * (rho 46760 + rho 46761) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46767 * (1 - rho 46765) = rho 46762 - rho 46763 - rho 46764 := ha5
      _ = (-1) * rho 46763 - rho 46764 + (seg52In0AccY64 rho - seg52In0AccX64 rho * (-1)) *
          (rho 46760 + rho 46761) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX65 rho = seg52In0AccX64 rho - Bool.toZMod bit * (seg52In0AccX64 rho - rho 46766) := by
    have hd : rho 46768 = Bool.toZMod bit * (rho 46766 - seg52In0AccX64 rho) := by
      rw [← hbit]
      unfold seg52In0AccX64
      linear_combination -r2377
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY65 rho = seg52In0AccY64 rho - Bool.toZMod bit * (seg52In0AccY64 rho - rho 46767) := by
    have hd : rho 46769 = Bool.toZMod bit * (rho 46767 - seg52In0AccY64 rho) := by
      rw [← hbit]
      unfold seg52In0AccY64
      linear_combination -r2378
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46760 * rho 46761 = rho 46770 := by linear_combination r2379
  have hd1 : rho 46760 * rho 46760 = rho 46771 := by linear_combination r2380
  have hd2 : rho 46761 * rho 46761 = rho 46772 := by linear_combination r2381
  have hd3 : rho 46773 * (rho 46761 * rho 46761 + rho 46760 * rho 46760 * (-1)) =
      2 * (rho 46760 * rho 46761) := by
    rw [hd0, hd1, hd2]
    linear_combination r2382
  have hd4 : rho 46774 * (2 - (rho 46761 * rho 46761 + rho 46760 * rho 46760 * (-1))) =
      rho 46761 * rho 46761 - rho 46760 * rho 46760 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2383
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX64 rho, seg52In0AccY64 rho⟩ ⟨rho 46760, rho 46761⟩
    ⟨rho 46766, rho 46767⟩ ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46773, rho 46774⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2384 rho ∧ Seg52.relationRow2385 rho ∧ Seg52.relationRow2386 rho ∧ Seg52.relationRow2387 rho ∧ Seg52.relationRow2388 rho ∧ Seg52.relationRow2389 rho ∧ Seg52.relationRow2390 rho ∧ Seg52.relationRow2391 rho ∧ Seg52.relationRow2392 rho ∧ Seg52.relationRow2393 rho ∧ Seg52.relationRow2394 rho ∧ Seg52.relationRow2395 rho ∧ Seg52.relationRow2396 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396, _, _, _⟩

  exact ⟨r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396⟩

theorem seg52In0_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45873 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46773, rho 46774⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46773, rho 46774⟩
        ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46786, rho 46787⟩ := by
  obtain ⟨r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396⟩ := seg52In0_rows65 rho h
  unfold Seg52.relationRow2384 at r2384

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2384

  unfold Seg52.relationRow2385 at r2385

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2385

  unfold Seg52.relationRow2386 at r2386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2386

  unfold Seg52.relationRow2387 at r2387

  unfold Seg52.relationRow2388 at r2388

  unfold Seg52.relationRow2389 at r2389

  unfold Seg52.relationRow2390 at r2390

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2390

  unfold Seg52.relationRow2391 at r2391

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2391

  unfold Seg52.relationRow2392 at r2392

  unfold Seg52.relationRow2393 at r2393

  unfold Seg52.relationRow2394 at r2394

  unfold Seg52.relationRow2395 at r2395

  unfold Seg52.relationRow2396 at r2396

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX66 rho = seg52In0AccX65 rho + rho 46781 := by
    unfold seg52In0AccX66 seg52In0AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 65]

    ring

  have hnexty : seg52In0AccY66 rho = seg52In0AccY65 rho + rho 46782 := by
    unfold seg52In0AccY66 seg52In0AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 65]

    ring

  have ha0 : (rho 46773 + rho 46774) * (seg52In0AccX65 rho + seg52In0AccY65 rho) = rho 46775 := by
    unfold seg52In0AccX65 seg52In0AccY65
    linear_combination r2384
  have ha1 : rho 46774 * seg52In0AccX65 rho = rho 46776 := by
    unfold seg52In0AccX65
    linear_combination r2385
  have ha2 : rho 46773 * seg52In0AccY65 rho = rho 46777 := by
    unfold seg52In0AccY65
    linear_combination r2386
  have ha3 : 3021 * rho 46776 * rho 46777 = rho 46778 := by
    linear_combination r2387
  have ha4 : rho 46779 * (1 + rho 46778) = rho 46776 + rho 46777 := by
    linear_combination r2388
  have ha5 : rho 46780 * (1 - rho 46778) = rho 46775 - rho 46776 - rho 46777 := by
    linear_combination r2389
  have haddx :
      rho 46779 * (1 + 3021 * (rho 46774 * seg52In0AccX65 rho) * (rho 46773 * seg52In0AccY65 rho)) =
        rho 46774 * seg52In0AccX65 rho + rho 46773 * seg52In0AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46780 * (1 - 3021 * (rho 46774 * seg52In0AccX65 rho) * (rho 46773 * seg52In0AccY65 rho)) =
        (-1) * (rho 46774 * seg52In0AccX65 rho) - rho 46773 * seg52In0AccY65 rho +
          (seg52In0AccY65 rho - seg52In0AccX65 rho * (-1)) * (rho 46773 + rho 46774) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46780 * (1 - rho 46778) = rho 46775 - rho 46776 - rho 46777 := ha5
      _ = (-1) * rho 46776 - rho 46777 + (seg52In0AccY65 rho - seg52In0AccX65 rho * (-1)) *
          (rho 46773 + rho 46774) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX66 rho = seg52In0AccX65 rho - Bool.toZMod bit * (seg52In0AccX65 rho - rho 46779) := by
    have hd : rho 46781 = Bool.toZMod bit * (rho 46779 - seg52In0AccX65 rho) := by
      rw [← hbit]
      unfold seg52In0AccX65
      linear_combination -r2390
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY66 rho = seg52In0AccY65 rho - Bool.toZMod bit * (seg52In0AccY65 rho - rho 46780) := by
    have hd : rho 46782 = Bool.toZMod bit * (rho 46780 - seg52In0AccY65 rho) := by
      rw [← hbit]
      unfold seg52In0AccY65
      linear_combination -r2391
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46773 * rho 46774 = rho 46783 := by linear_combination r2392
  have hd1 : rho 46773 * rho 46773 = rho 46784 := by linear_combination r2393
  have hd2 : rho 46774 * rho 46774 = rho 46785 := by linear_combination r2394
  have hd3 : rho 46786 * (rho 46774 * rho 46774 + rho 46773 * rho 46773 * (-1)) =
      2 * (rho 46773 * rho 46774) := by
    rw [hd0, hd1, hd2]
    linear_combination r2395
  have hd4 : rho 46787 * (2 - (rho 46774 * rho 46774 + rho 46773 * rho 46773 * (-1))) =
      rho 46774 * rho 46774 - rho 46773 * rho 46773 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2396
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX65 rho, seg52In0AccY65 rho⟩ ⟨rho 46773, rho 46774⟩
    ⟨rho 46779, rho 46780⟩ ⟨seg52In0AccX66 rho, seg52In0AccY66 rho⟩ ⟨rho 46786, rho 46787⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg52In0_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg52In0_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg52In0_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg52In0_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg52In0_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg52In0_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg52In0_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg52In0_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg52In0_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg52In0_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
