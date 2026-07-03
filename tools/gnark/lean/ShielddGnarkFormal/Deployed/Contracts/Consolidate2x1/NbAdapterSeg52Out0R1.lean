import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5262 rho ∧ Seg52.relationRow5263 rho ∧ Seg52.relationRow5264 rho ∧ Seg52.relationRow5265 rho ∧ Seg52.relationRow5266 rho ∧ Seg52.relationRow5267 rho ∧ Seg52.relationRow5268 rho ∧ Seg52.relationRow5269 rho ∧ Seg52.relationRow5270 rho ∧ Seg52.relationRow5271 rho ∧ Seg52.relationRow5272 rho ∧ Seg52.relationRow5273 rho ∧ Seg52.relationRow5274 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, _, _, _, _, _⟩

  exact ⟨r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274⟩

theorem seg52Out0_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49397 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49649, rho 49650⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49649, rho 49650⟩
        ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49662, rho 49663⟩ := by
  obtain ⟨r5262, r5263, r5264, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274⟩ := seg52Out0_rows11 rho h
  unfold Seg52.relationRow5262 at r5262

  unfold Seg52.relationRow5263 at r5263

  unfold Seg52.relationRow5264 at r5264

  unfold Seg52.relationRow5265 at r5265

  unfold Seg52.relationRow5266 at r5266

  unfold Seg52.relationRow5267 at r5267

  unfold Seg52.relationRow5268 at r5268

  unfold Seg52.relationRow5269 at r5269

  unfold Seg52.relationRow5270 at r5270

  unfold Seg52.relationRow5271 at r5271

  unfold Seg52.relationRow5272 at r5272

  unfold Seg52.relationRow5273 at r5273

  unfold Seg52.relationRow5274 at r5274

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX12 rho = seg52Out0AccX11 rho + rho 49657 := by
    unfold seg52Out0AccX12 seg52Out0AccX11
    ring

  have hnexty : seg52Out0AccY12 rho = seg52Out0AccY11 rho + rho 49658 := by
    unfold seg52Out0AccY12 seg52Out0AccY11
    ring

  have ha0 : (rho 49649 + rho 49650) * (seg52Out0AccX11 rho + seg52Out0AccY11 rho) = rho 49651 := by
    unfold seg52Out0AccX11 seg52Out0AccY11
    linear_combination r5262
  have ha1 : rho 49650 * seg52Out0AccX11 rho = rho 49652 := by
    unfold seg52Out0AccX11
    linear_combination r5263
  have ha2 : rho 49649 * seg52Out0AccY11 rho = rho 49653 := by
    unfold seg52Out0AccY11
    linear_combination r5264
  have ha3 : 3021 * rho 49652 * rho 49653 = rho 49654 := by
    linear_combination r5265
  have ha4 : rho 49655 * (1 + rho 49654) = rho 49652 + rho 49653 := by
    linear_combination r5266
  have ha5 : rho 49656 * (1 - rho 49654) = rho 49651 - rho 49652 - rho 49653 := by
    linear_combination r5267
  have haddx :
      rho 49655 * (1 + 3021 * (rho 49650 * seg52Out0AccX11 rho) * (rho 49649 * seg52Out0AccY11 rho)) =
        rho 49650 * seg52Out0AccX11 rho + rho 49649 * seg52Out0AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49656 * (1 - 3021 * (rho 49650 * seg52Out0AccX11 rho) * (rho 49649 * seg52Out0AccY11 rho)) =
        (-1) * (rho 49650 * seg52Out0AccX11 rho) - rho 49649 * seg52Out0AccY11 rho +
          (seg52Out0AccY11 rho - seg52Out0AccX11 rho * (-1)) * (rho 49649 + rho 49650) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49656 * (1 - rho 49654) = rho 49651 - rho 49652 - rho 49653 := ha5
      _ = (-1) * rho 49652 - rho 49653 + (seg52Out0AccY11 rho - seg52Out0AccX11 rho * (-1)) *
          (rho 49649 + rho 49650) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX12 rho = seg52Out0AccX11 rho - Bool.toZMod bit * (seg52Out0AccX11 rho - rho 49655) := by
    have hd : rho 49657 = Bool.toZMod bit * (rho 49655 - seg52Out0AccX11 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX11
      linear_combination -r5268
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY12 rho = seg52Out0AccY11 rho - Bool.toZMod bit * (seg52Out0AccY11 rho - rho 49656) := by
    have hd : rho 49658 = Bool.toZMod bit * (rho 49656 - seg52Out0AccY11 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY11
      linear_combination -r5269
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49649 * rho 49650 = rho 49659 := by linear_combination r5270
  have hd1 : rho 49649 * rho 49649 = rho 49660 := by linear_combination r5271
  have hd2 : rho 49650 * rho 49650 = rho 49661 := by linear_combination r5272
  have hd3 : rho 49662 * (rho 49650 * rho 49650 + rho 49649 * rho 49649 * (-1)) =
      2 * (rho 49649 * rho 49650) := by
    rw [hd0, hd1, hd2]
    linear_combination r5273
  have hd4 : rho 49663 * (2 - (rho 49650 * rho 49650 + rho 49649 * rho 49649 * (-1))) =
      rho 49650 * rho 49650 - rho 49649 * rho 49649 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5274
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49649, rho 49650⟩
    ⟨rho 49655, rho 49656⟩ ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49662, rho 49663⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5275 rho ∧ Seg52.relationRow5276 rho ∧ Seg52.relationRow5277 rho ∧ Seg52.relationRow5278 rho ∧ Seg52.relationRow5279 rho ∧ Seg52.relationRow5280 rho ∧ Seg52.relationRow5281 rho ∧ Seg52.relationRow5282 rho ∧ Seg52.relationRow5283 rho ∧ Seg52.relationRow5284 rho ∧ Seg52.relationRow5285 rho ∧ Seg52.relationRow5286 rho ∧ Seg52.relationRow5287 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, p66, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5275, r5276, r5277, r5278, r5279⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5275, r5276, r5277, r5278, r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287⟩

theorem seg52Out0_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49398 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49662, rho 49663⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49662, rho 49663⟩
        ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49675, rho 49676⟩ := by
  obtain ⟨r5275, r5276, r5277, r5278, r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287⟩ := seg52Out0_rows12 rho h
  unfold Seg52.relationRow5275 at r5275

  unfold Seg52.relationRow5276 at r5276

  unfold Seg52.relationRow5277 at r5277

  unfold Seg52.relationRow5278 at r5278

  unfold Seg52.relationRow5279 at r5279

  unfold Seg52.relationRow5280 at r5280

  unfold Seg52.relationRow5281 at r5281

  unfold Seg52.relationRow5282 at r5282

  unfold Seg52.relationRow5283 at r5283

  unfold Seg52.relationRow5284 at r5284

  unfold Seg52.relationRow5285 at r5285

  unfold Seg52.relationRow5286 at r5286

  unfold Seg52.relationRow5287 at r5287

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX13 rho = seg52Out0AccX12 rho + rho 49670 := by
    unfold seg52Out0AccX13 seg52Out0AccX12
    ring

  have hnexty : seg52Out0AccY13 rho = seg52Out0AccY12 rho + rho 49671 := by
    unfold seg52Out0AccY13 seg52Out0AccY12
    ring

  have ha0 : (rho 49662 + rho 49663) * (seg52Out0AccX12 rho + seg52Out0AccY12 rho) = rho 49664 := by
    unfold seg52Out0AccX12 seg52Out0AccY12
    linear_combination r5275
  have ha1 : rho 49663 * seg52Out0AccX12 rho = rho 49665 := by
    unfold seg52Out0AccX12
    linear_combination r5276
  have ha2 : rho 49662 * seg52Out0AccY12 rho = rho 49666 := by
    unfold seg52Out0AccY12
    linear_combination r5277
  have ha3 : 3021 * rho 49665 * rho 49666 = rho 49667 := by
    linear_combination r5278
  have ha4 : rho 49668 * (1 + rho 49667) = rho 49665 + rho 49666 := by
    linear_combination r5279
  have ha5 : rho 49669 * (1 - rho 49667) = rho 49664 - rho 49665 - rho 49666 := by
    linear_combination r5280
  have haddx :
      rho 49668 * (1 + 3021 * (rho 49663 * seg52Out0AccX12 rho) * (rho 49662 * seg52Out0AccY12 rho)) =
        rho 49663 * seg52Out0AccX12 rho + rho 49662 * seg52Out0AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49669 * (1 - 3021 * (rho 49663 * seg52Out0AccX12 rho) * (rho 49662 * seg52Out0AccY12 rho)) =
        (-1) * (rho 49663 * seg52Out0AccX12 rho) - rho 49662 * seg52Out0AccY12 rho +
          (seg52Out0AccY12 rho - seg52Out0AccX12 rho * (-1)) * (rho 49662 + rho 49663) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49669 * (1 - rho 49667) = rho 49664 - rho 49665 - rho 49666 := ha5
      _ = (-1) * rho 49665 - rho 49666 + (seg52Out0AccY12 rho - seg52Out0AccX12 rho * (-1)) *
          (rho 49662 + rho 49663) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX13 rho = seg52Out0AccX12 rho - Bool.toZMod bit * (seg52Out0AccX12 rho - rho 49668) := by
    have hd : rho 49670 = Bool.toZMod bit * (rho 49668 - seg52Out0AccX12 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX12
      linear_combination -r5281
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY13 rho = seg52Out0AccY12 rho - Bool.toZMod bit * (seg52Out0AccY12 rho - rho 49669) := by
    have hd : rho 49671 = Bool.toZMod bit * (rho 49669 - seg52Out0AccY12 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY12
      linear_combination -r5282
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49662 * rho 49663 = rho 49672 := by linear_combination r5283
  have hd1 : rho 49662 * rho 49662 = rho 49673 := by linear_combination r5284
  have hd2 : rho 49663 * rho 49663 = rho 49674 := by linear_combination r5285
  have hd3 : rho 49675 * (rho 49663 * rho 49663 + rho 49662 * rho 49662 * (-1)) =
      2 * (rho 49662 * rho 49663) := by
    rw [hd0, hd1, hd2]
    linear_combination r5286
  have hd4 : rho 49676 * (2 - (rho 49663 * rho 49663 + rho 49662 * rho 49662 * (-1))) =
      rho 49663 * rho 49663 - rho 49662 * rho 49662 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5287
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49662, rho 49663⟩
    ⟨rho 49668, rho 49669⟩ ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49675, rho 49676⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5288 rho ∧ Seg52.relationRow5289 rho ∧ Seg52.relationRow5290 rho ∧ Seg52.relationRow5291 rho ∧ Seg52.relationRow5292 rho ∧ Seg52.relationRow5293 rho ∧ Seg52.relationRow5294 rho ∧ Seg52.relationRow5295 rho ∧ Seg52.relationRow5296 rho ∧ Seg52.relationRow5297 rho ∧ Seg52.relationRow5298 rho ∧ Seg52.relationRow5299 rho ∧ Seg52.relationRow5300 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300⟩

theorem seg52Out0_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49399 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49675, rho 49676⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49675, rho 49676⟩
        ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49688, rho 49689⟩ := by
  obtain ⟨r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300⟩ := seg52Out0_rows13 rho h
  unfold Seg52.relationRow5288 at r5288

  unfold Seg52.relationRow5289 at r5289

  unfold Seg52.relationRow5290 at r5290

  unfold Seg52.relationRow5291 at r5291

  unfold Seg52.relationRow5292 at r5292

  unfold Seg52.relationRow5293 at r5293

  unfold Seg52.relationRow5294 at r5294

  unfold Seg52.relationRow5295 at r5295

  unfold Seg52.relationRow5296 at r5296

  unfold Seg52.relationRow5297 at r5297

  unfold Seg52.relationRow5298 at r5298

  unfold Seg52.relationRow5299 at r5299

  unfold Seg52.relationRow5300 at r5300

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX14 rho = seg52Out0AccX13 rho + rho 49683 := by
    unfold seg52Out0AccX14 seg52Out0AccX13
    ring

  have hnexty : seg52Out0AccY14 rho = seg52Out0AccY13 rho + rho 49684 := by
    unfold seg52Out0AccY14 seg52Out0AccY13
    ring

  have ha0 : (rho 49675 + rho 49676) * (seg52Out0AccX13 rho + seg52Out0AccY13 rho) = rho 49677 := by
    unfold seg52Out0AccX13 seg52Out0AccY13
    linear_combination r5288
  have ha1 : rho 49676 * seg52Out0AccX13 rho = rho 49678 := by
    unfold seg52Out0AccX13
    linear_combination r5289
  have ha2 : rho 49675 * seg52Out0AccY13 rho = rho 49679 := by
    unfold seg52Out0AccY13
    linear_combination r5290
  have ha3 : 3021 * rho 49678 * rho 49679 = rho 49680 := by
    linear_combination r5291
  have ha4 : rho 49681 * (1 + rho 49680) = rho 49678 + rho 49679 := by
    linear_combination r5292
  have ha5 : rho 49682 * (1 - rho 49680) = rho 49677 - rho 49678 - rho 49679 := by
    linear_combination r5293
  have haddx :
      rho 49681 * (1 + 3021 * (rho 49676 * seg52Out0AccX13 rho) * (rho 49675 * seg52Out0AccY13 rho)) =
        rho 49676 * seg52Out0AccX13 rho + rho 49675 * seg52Out0AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49682 * (1 - 3021 * (rho 49676 * seg52Out0AccX13 rho) * (rho 49675 * seg52Out0AccY13 rho)) =
        (-1) * (rho 49676 * seg52Out0AccX13 rho) - rho 49675 * seg52Out0AccY13 rho +
          (seg52Out0AccY13 rho - seg52Out0AccX13 rho * (-1)) * (rho 49675 + rho 49676) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49682 * (1 - rho 49680) = rho 49677 - rho 49678 - rho 49679 := ha5
      _ = (-1) * rho 49678 - rho 49679 + (seg52Out0AccY13 rho - seg52Out0AccX13 rho * (-1)) *
          (rho 49675 + rho 49676) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX14 rho = seg52Out0AccX13 rho - Bool.toZMod bit * (seg52Out0AccX13 rho - rho 49681) := by
    have hd : rho 49683 = Bool.toZMod bit * (rho 49681 - seg52Out0AccX13 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX13
      linear_combination -r5294
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY14 rho = seg52Out0AccY13 rho - Bool.toZMod bit * (seg52Out0AccY13 rho - rho 49682) := by
    have hd : rho 49684 = Bool.toZMod bit * (rho 49682 - seg52Out0AccY13 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY13
      linear_combination -r5295
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49675 * rho 49676 = rho 49685 := by linear_combination r5296
  have hd1 : rho 49675 * rho 49675 = rho 49686 := by linear_combination r5297
  have hd2 : rho 49676 * rho 49676 = rho 49687 := by linear_combination r5298
  have hd3 : rho 49688 * (rho 49676 * rho 49676 + rho 49675 * rho 49675 * (-1)) =
      2 * (rho 49675 * rho 49676) := by
    rw [hd0, hd1, hd2]
    linear_combination r5299
  have hd4 : rho 49689 * (2 - (rho 49676 * rho 49676 + rho 49675 * rho 49675 * (-1))) =
      rho 49676 * rho 49676 - rho 49675 * rho 49675 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5300
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49675, rho 49676⟩
    ⟨rho 49681, rho 49682⟩ ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49688, rho 49689⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5301 rho ∧ Seg52.relationRow5302 rho ∧ Seg52.relationRow5303 rho ∧ Seg52.relationRow5304 rho ∧ Seg52.relationRow5305 rho ∧ Seg52.relationRow5306 rho ∧ Seg52.relationRow5307 rho ∧ Seg52.relationRow5308 rho ∧ Seg52.relationRow5309 rho ∧ Seg52.relationRow5310 rho ∧ Seg52.relationRow5311 rho ∧ Seg52.relationRow5312 rho ∧ Seg52.relationRow5313 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, r5311, r5312, r5313, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, r5311, r5312, r5313⟩

theorem seg52Out0_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49400 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49688, rho 49689⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49688, rho 49689⟩
        ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49701, rho 49702⟩ := by
  obtain ⟨r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, r5310, r5311, r5312, r5313⟩ := seg52Out0_rows14 rho h
  unfold Seg52.relationRow5301 at r5301

  unfold Seg52.relationRow5302 at r5302

  unfold Seg52.relationRow5303 at r5303

  unfold Seg52.relationRow5304 at r5304

  unfold Seg52.relationRow5305 at r5305

  unfold Seg52.relationRow5306 at r5306

  unfold Seg52.relationRow5307 at r5307

  unfold Seg52.relationRow5308 at r5308

  unfold Seg52.relationRow5309 at r5309

  unfold Seg52.relationRow5310 at r5310

  unfold Seg52.relationRow5311 at r5311

  unfold Seg52.relationRow5312 at r5312

  unfold Seg52.relationRow5313 at r5313

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX15 rho = seg52Out0AccX14 rho + rho 49696 := by
    unfold seg52Out0AccX15 seg52Out0AccX14
    ring

  have hnexty : seg52Out0AccY15 rho = seg52Out0AccY14 rho + rho 49697 := by
    unfold seg52Out0AccY15 seg52Out0AccY14
    ring

  have ha0 : (rho 49688 + rho 49689) * (seg52Out0AccX14 rho + seg52Out0AccY14 rho) = rho 49690 := by
    unfold seg52Out0AccX14 seg52Out0AccY14
    linear_combination r5301
  have ha1 : rho 49689 * seg52Out0AccX14 rho = rho 49691 := by
    unfold seg52Out0AccX14
    linear_combination r5302
  have ha2 : rho 49688 * seg52Out0AccY14 rho = rho 49692 := by
    unfold seg52Out0AccY14
    linear_combination r5303
  have ha3 : 3021 * rho 49691 * rho 49692 = rho 49693 := by
    linear_combination r5304
  have ha4 : rho 49694 * (1 + rho 49693) = rho 49691 + rho 49692 := by
    linear_combination r5305
  have ha5 : rho 49695 * (1 - rho 49693) = rho 49690 - rho 49691 - rho 49692 := by
    linear_combination r5306
  have haddx :
      rho 49694 * (1 + 3021 * (rho 49689 * seg52Out0AccX14 rho) * (rho 49688 * seg52Out0AccY14 rho)) =
        rho 49689 * seg52Out0AccX14 rho + rho 49688 * seg52Out0AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49695 * (1 - 3021 * (rho 49689 * seg52Out0AccX14 rho) * (rho 49688 * seg52Out0AccY14 rho)) =
        (-1) * (rho 49689 * seg52Out0AccX14 rho) - rho 49688 * seg52Out0AccY14 rho +
          (seg52Out0AccY14 rho - seg52Out0AccX14 rho * (-1)) * (rho 49688 + rho 49689) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49695 * (1 - rho 49693) = rho 49690 - rho 49691 - rho 49692 := ha5
      _ = (-1) * rho 49691 - rho 49692 + (seg52Out0AccY14 rho - seg52Out0AccX14 rho * (-1)) *
          (rho 49688 + rho 49689) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX15 rho = seg52Out0AccX14 rho - Bool.toZMod bit * (seg52Out0AccX14 rho - rho 49694) := by
    have hd : rho 49696 = Bool.toZMod bit * (rho 49694 - seg52Out0AccX14 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX14
      linear_combination -r5307
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY15 rho = seg52Out0AccY14 rho - Bool.toZMod bit * (seg52Out0AccY14 rho - rho 49695) := by
    have hd : rho 49697 = Bool.toZMod bit * (rho 49695 - seg52Out0AccY14 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY14
      linear_combination -r5308
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49688 * rho 49689 = rho 49698 := by linear_combination r5309
  have hd1 : rho 49688 * rho 49688 = rho 49699 := by linear_combination r5310
  have hd2 : rho 49689 * rho 49689 = rho 49700 := by linear_combination r5311
  have hd3 : rho 49701 * (rho 49689 * rho 49689 + rho 49688 * rho 49688 * (-1)) =
      2 * (rho 49688 * rho 49689) := by
    rw [hd0, hd1, hd2]
    linear_combination r5312
  have hd4 : rho 49702 * (2 - (rho 49689 * rho 49689 + rho 49688 * rho 49688 * (-1))) =
      rho 49689 * rho 49689 - rho 49688 * rho 49688 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5313
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49688, rho 49689⟩
    ⟨rho 49694, rho 49695⟩ ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49701, rho 49702⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5314 rho ∧ Seg52.relationRow5315 rho ∧ Seg52.relationRow5316 rho ∧ Seg52.relationRow5317 rho ∧ Seg52.relationRow5318 rho ∧ Seg52.relationRow5319 rho ∧ Seg52.relationRow5320 rho ∧ Seg52.relationRow5321 rho ∧ Seg52.relationRow5322 rho ∧ Seg52.relationRow5323 rho ∧ Seg52.relationRow5324 rho ∧ Seg52.relationRow5325 rho ∧ Seg52.relationRow5326 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326⟩

theorem seg52Out0_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49401 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49701, rho 49702⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49701, rho 49702⟩
        ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49714, rho 49715⟩ := by
  obtain ⟨r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326⟩ := seg52Out0_rows15 rho h
  unfold Seg52.relationRow5314 at r5314

  unfold Seg52.relationRow5315 at r5315

  unfold Seg52.relationRow5316 at r5316

  unfold Seg52.relationRow5317 at r5317

  unfold Seg52.relationRow5318 at r5318

  unfold Seg52.relationRow5319 at r5319

  unfold Seg52.relationRow5320 at r5320

  unfold Seg52.relationRow5321 at r5321

  unfold Seg52.relationRow5322 at r5322

  unfold Seg52.relationRow5323 at r5323

  unfold Seg52.relationRow5324 at r5324

  unfold Seg52.relationRow5325 at r5325

  unfold Seg52.relationRow5326 at r5326

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX16 rho = seg52Out0AccX15 rho + rho 49709 := by
    unfold seg52Out0AccX16 seg52Out0AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 49514 13]

    ring

  have hnexty : seg52Out0AccY16 rho = seg52Out0AccY15 rho + rho 49710 := by
    unfold seg52Out0AccY16 seg52Out0AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 49515 13]

    ring

  have ha0 : (rho 49701 + rho 49702) * (seg52Out0AccX15 rho + seg52Out0AccY15 rho) = rho 49703 := by
    unfold seg52Out0AccX15 seg52Out0AccY15
    linear_combination r5314
  have ha1 : rho 49702 * seg52Out0AccX15 rho = rho 49704 := by
    unfold seg52Out0AccX15
    linear_combination r5315
  have ha2 : rho 49701 * seg52Out0AccY15 rho = rho 49705 := by
    unfold seg52Out0AccY15
    linear_combination r5316
  have ha3 : 3021 * rho 49704 * rho 49705 = rho 49706 := by
    linear_combination r5317
  have ha4 : rho 49707 * (1 + rho 49706) = rho 49704 + rho 49705 := by
    linear_combination r5318
  have ha5 : rho 49708 * (1 - rho 49706) = rho 49703 - rho 49704 - rho 49705 := by
    linear_combination r5319
  have haddx :
      rho 49707 * (1 + 3021 * (rho 49702 * seg52Out0AccX15 rho) * (rho 49701 * seg52Out0AccY15 rho)) =
        rho 49702 * seg52Out0AccX15 rho + rho 49701 * seg52Out0AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49708 * (1 - 3021 * (rho 49702 * seg52Out0AccX15 rho) * (rho 49701 * seg52Out0AccY15 rho)) =
        (-1) * (rho 49702 * seg52Out0AccX15 rho) - rho 49701 * seg52Out0AccY15 rho +
          (seg52Out0AccY15 rho - seg52Out0AccX15 rho * (-1)) * (rho 49701 + rho 49702) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49708 * (1 - rho 49706) = rho 49703 - rho 49704 - rho 49705 := ha5
      _ = (-1) * rho 49704 - rho 49705 + (seg52Out0AccY15 rho - seg52Out0AccX15 rho * (-1)) *
          (rho 49701 + rho 49702) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX16 rho = seg52Out0AccX15 rho - Bool.toZMod bit * (seg52Out0AccX15 rho - rho 49707) := by
    have hd : rho 49709 = Bool.toZMod bit * (rho 49707 - seg52Out0AccX15 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX15
      linear_combination -r5320
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY16 rho = seg52Out0AccY15 rho - Bool.toZMod bit * (seg52Out0AccY15 rho - rho 49708) := by
    have hd : rho 49710 = Bool.toZMod bit * (rho 49708 - seg52Out0AccY15 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY15
      linear_combination -r5321
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49701 * rho 49702 = rho 49711 := by linear_combination r5322
  have hd1 : rho 49701 * rho 49701 = rho 49712 := by linear_combination r5323
  have hd2 : rho 49702 * rho 49702 = rho 49713 := by linear_combination r5324
  have hd3 : rho 49714 * (rho 49702 * rho 49702 + rho 49701 * rho 49701 * (-1)) =
      2 * (rho 49701 * rho 49702) := by
    rw [hd0, hd1, hd2]
    linear_combination r5325
  have hd4 : rho 49715 * (2 - (rho 49702 * rho 49702 + rho 49701 * rho 49701 * (-1))) =
      rho 49702 * rho 49702 - rho 49701 * rho 49701 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5326
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49701, rho 49702⟩
    ⟨rho 49707, rho 49708⟩ ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49714, rho 49715⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5327 rho ∧ Seg52.relationRow5328 rho ∧ Seg52.relationRow5329 rho ∧ Seg52.relationRow5330 rho ∧ Seg52.relationRow5331 rho ∧ Seg52.relationRow5332 rho ∧ Seg52.relationRow5333 rho ∧ Seg52.relationRow5334 rho ∧ Seg52.relationRow5335 rho ∧ Seg52.relationRow5336 rho ∧ Seg52.relationRow5337 rho ∧ Seg52.relationRow5338 rho ∧ Seg52.relationRow5339 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339⟩

theorem seg52Out0_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49402 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49714, rho 49715⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49714, rho 49715⟩
        ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49727, rho 49728⟩ := by
  obtain ⟨r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339⟩ := seg52Out0_rows16 rho h
  unfold Seg52.relationRow5327 at r5327

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5327

  unfold Seg52.relationRow5328 at r5328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328

  unfold Seg52.relationRow5329 at r5329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329

  unfold Seg52.relationRow5330 at r5330

  unfold Seg52.relationRow5331 at r5331

  unfold Seg52.relationRow5332 at r5332

  unfold Seg52.relationRow5333 at r5333

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5333

  unfold Seg52.relationRow5334 at r5334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5334

  unfold Seg52.relationRow5335 at r5335

  unfold Seg52.relationRow5336 at r5336

  unfold Seg52.relationRow5337 at r5337

  unfold Seg52.relationRow5338 at r5338

  unfold Seg52.relationRow5339 at r5339

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX17 rho = seg52Out0AccX16 rho + rho 49722 := by
    unfold seg52Out0AccX17 seg52Out0AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 16]

    ring

  have hnexty : seg52Out0AccY17 rho = seg52Out0AccY16 rho + rho 49723 := by
    unfold seg52Out0AccY17 seg52Out0AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 16]

    ring

  have ha0 : (rho 49714 + rho 49715) * (seg52Out0AccX16 rho + seg52Out0AccY16 rho) = rho 49716 := by
    unfold seg52Out0AccX16 seg52Out0AccY16
    linear_combination r5327
  have ha1 : rho 49715 * seg52Out0AccX16 rho = rho 49717 := by
    unfold seg52Out0AccX16
    linear_combination r5328
  have ha2 : rho 49714 * seg52Out0AccY16 rho = rho 49718 := by
    unfold seg52Out0AccY16
    linear_combination r5329
  have ha3 : 3021 * rho 49717 * rho 49718 = rho 49719 := by
    linear_combination r5330
  have ha4 : rho 49720 * (1 + rho 49719) = rho 49717 + rho 49718 := by
    linear_combination r5331
  have ha5 : rho 49721 * (1 - rho 49719) = rho 49716 - rho 49717 - rho 49718 := by
    linear_combination r5332
  have haddx :
      rho 49720 * (1 + 3021 * (rho 49715 * seg52Out0AccX16 rho) * (rho 49714 * seg52Out0AccY16 rho)) =
        rho 49715 * seg52Out0AccX16 rho + rho 49714 * seg52Out0AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49721 * (1 - 3021 * (rho 49715 * seg52Out0AccX16 rho) * (rho 49714 * seg52Out0AccY16 rho)) =
        (-1) * (rho 49715 * seg52Out0AccX16 rho) - rho 49714 * seg52Out0AccY16 rho +
          (seg52Out0AccY16 rho - seg52Out0AccX16 rho * (-1)) * (rho 49714 + rho 49715) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49721 * (1 - rho 49719) = rho 49716 - rho 49717 - rho 49718 := ha5
      _ = (-1) * rho 49717 - rho 49718 + (seg52Out0AccY16 rho - seg52Out0AccX16 rho * (-1)) *
          (rho 49714 + rho 49715) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX17 rho = seg52Out0AccX16 rho - Bool.toZMod bit * (seg52Out0AccX16 rho - rho 49720) := by
    have hd : rho 49722 = Bool.toZMod bit * (rho 49720 - seg52Out0AccX16 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX16
      linear_combination -r5333
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY17 rho = seg52Out0AccY16 rho - Bool.toZMod bit * (seg52Out0AccY16 rho - rho 49721) := by
    have hd : rho 49723 = Bool.toZMod bit * (rho 49721 - seg52Out0AccY16 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY16
      linear_combination -r5334
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49714 * rho 49715 = rho 49724 := by linear_combination r5335
  have hd1 : rho 49714 * rho 49714 = rho 49725 := by linear_combination r5336
  have hd2 : rho 49715 * rho 49715 = rho 49726 := by linear_combination r5337
  have hd3 : rho 49727 * (rho 49715 * rho 49715 + rho 49714 * rho 49714 * (-1)) =
      2 * (rho 49714 * rho 49715) := by
    rw [hd0, hd1, hd2]
    linear_combination r5338
  have hd4 : rho 49728 * (2 - (rho 49715 * rho 49715 + rho 49714 * rho 49714 * (-1))) =
      rho 49715 * rho 49715 - rho 49714 * rho 49714 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5339
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49714, rho 49715⟩
    ⟨rho 49720, rho 49721⟩ ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49727, rho 49728⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5340 rho ∧ Seg52.relationRow5341 rho ∧ Seg52.relationRow5342 rho ∧ Seg52.relationRow5343 rho ∧ Seg52.relationRow5344 rho ∧ Seg52.relationRow5345 rho ∧ Seg52.relationRow5346 rho ∧ Seg52.relationRow5347 rho ∧ Seg52.relationRow5348 rho ∧ Seg52.relationRow5349 rho ∧ Seg52.relationRow5350 rho ∧ Seg52.relationRow5351 rho ∧ Seg52.relationRow5352 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352, _, _, _, _, _, _, _⟩

  exact ⟨r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352⟩

theorem seg52Out0_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49403 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49727, rho 49728⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49727, rho 49728⟩
        ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49740, rho 49741⟩ := by
  obtain ⟨r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352⟩ := seg52Out0_rows17 rho h
  unfold Seg52.relationRow5340 at r5340

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5340

  unfold Seg52.relationRow5341 at r5341

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5341

  unfold Seg52.relationRow5342 at r5342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5342

  unfold Seg52.relationRow5343 at r5343

  unfold Seg52.relationRow5344 at r5344

  unfold Seg52.relationRow5345 at r5345

  unfold Seg52.relationRow5346 at r5346

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5346

  unfold Seg52.relationRow5347 at r5347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5347

  unfold Seg52.relationRow5348 at r5348

  unfold Seg52.relationRow5349 at r5349

  unfold Seg52.relationRow5350 at r5350

  unfold Seg52.relationRow5351 at r5351

  unfold Seg52.relationRow5352 at r5352

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX18 rho = seg52Out0AccX17 rho + rho 49735 := by
    unfold seg52Out0AccX18 seg52Out0AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 17]

    ring

  have hnexty : seg52Out0AccY18 rho = seg52Out0AccY17 rho + rho 49736 := by
    unfold seg52Out0AccY18 seg52Out0AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 17]

    ring

  have ha0 : (rho 49727 + rho 49728) * (seg52Out0AccX17 rho + seg52Out0AccY17 rho) = rho 49729 := by
    unfold seg52Out0AccX17 seg52Out0AccY17
    linear_combination r5340
  have ha1 : rho 49728 * seg52Out0AccX17 rho = rho 49730 := by
    unfold seg52Out0AccX17
    linear_combination r5341
  have ha2 : rho 49727 * seg52Out0AccY17 rho = rho 49731 := by
    unfold seg52Out0AccY17
    linear_combination r5342
  have ha3 : 3021 * rho 49730 * rho 49731 = rho 49732 := by
    linear_combination r5343
  have ha4 : rho 49733 * (1 + rho 49732) = rho 49730 + rho 49731 := by
    linear_combination r5344
  have ha5 : rho 49734 * (1 - rho 49732) = rho 49729 - rho 49730 - rho 49731 := by
    linear_combination r5345
  have haddx :
      rho 49733 * (1 + 3021 * (rho 49728 * seg52Out0AccX17 rho) * (rho 49727 * seg52Out0AccY17 rho)) =
        rho 49728 * seg52Out0AccX17 rho + rho 49727 * seg52Out0AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49734 * (1 - 3021 * (rho 49728 * seg52Out0AccX17 rho) * (rho 49727 * seg52Out0AccY17 rho)) =
        (-1) * (rho 49728 * seg52Out0AccX17 rho) - rho 49727 * seg52Out0AccY17 rho +
          (seg52Out0AccY17 rho - seg52Out0AccX17 rho * (-1)) * (rho 49727 + rho 49728) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49734 * (1 - rho 49732) = rho 49729 - rho 49730 - rho 49731 := ha5
      _ = (-1) * rho 49730 - rho 49731 + (seg52Out0AccY17 rho - seg52Out0AccX17 rho * (-1)) *
          (rho 49727 + rho 49728) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX18 rho = seg52Out0AccX17 rho - Bool.toZMod bit * (seg52Out0AccX17 rho - rho 49733) := by
    have hd : rho 49735 = Bool.toZMod bit * (rho 49733 - seg52Out0AccX17 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX17
      linear_combination -r5346
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY18 rho = seg52Out0AccY17 rho - Bool.toZMod bit * (seg52Out0AccY17 rho - rho 49734) := by
    have hd : rho 49736 = Bool.toZMod bit * (rho 49734 - seg52Out0AccY17 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY17
      linear_combination -r5347
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49727 * rho 49728 = rho 49737 := by linear_combination r5348
  have hd1 : rho 49727 * rho 49727 = rho 49738 := by linear_combination r5349
  have hd2 : rho 49728 * rho 49728 = rho 49739 := by linear_combination r5350
  have hd3 : rho 49740 * (rho 49728 * rho 49728 + rho 49727 * rho 49727 * (-1)) =
      2 * (rho 49727 * rho 49728) := by
    rw [hd0, hd1, hd2]
    linear_combination r5351
  have hd4 : rho 49741 * (2 - (rho 49728 * rho 49728 + rho 49727 * rho 49727 * (-1))) =
      rho 49728 * rho 49728 - rho 49727 * rho 49727 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5352
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49727, rho 49728⟩
    ⟨rho 49733, rho 49734⟩ ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49740, rho 49741⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5353 rho ∧ Seg52.relationRow5354 rho ∧ Seg52.relationRow5355 rho ∧ Seg52.relationRow5356 rho ∧ Seg52.relationRow5357 rho ∧ Seg52.relationRow5358 rho ∧ Seg52.relationRow5359 rho ∧ Seg52.relationRow5360 rho ∧ Seg52.relationRow5361 rho ∧ Seg52.relationRow5362 rho ∧ Seg52.relationRow5363 rho ∧ Seg52.relationRow5364 rho ∧ Seg52.relationRow5365 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart66 at p66

  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨r5360, r5361, r5362, r5363, r5364, r5365, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362, r5363, r5364, r5365⟩

theorem seg52Out0_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49404 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49740, rho 49741⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49740, rho 49741⟩
        ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49753, rho 49754⟩ := by
  obtain ⟨r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362, r5363, r5364, r5365⟩ := seg52Out0_rows18 rho h
  unfold Seg52.relationRow5353 at r5353

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5353

  unfold Seg52.relationRow5354 at r5354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5354

  unfold Seg52.relationRow5355 at r5355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5355

  unfold Seg52.relationRow5356 at r5356

  unfold Seg52.relationRow5357 at r5357

  unfold Seg52.relationRow5358 at r5358

  unfold Seg52.relationRow5359 at r5359

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5359

  unfold Seg52.relationRow5360 at r5360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5360

  unfold Seg52.relationRow5361 at r5361

  unfold Seg52.relationRow5362 at r5362

  unfold Seg52.relationRow5363 at r5363

  unfold Seg52.relationRow5364 at r5364

  unfold Seg52.relationRow5365 at r5365

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX19 rho = seg52Out0AccX18 rho + rho 49748 := by
    unfold seg52Out0AccX19 seg52Out0AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 18]

    ring

  have hnexty : seg52Out0AccY19 rho = seg52Out0AccY18 rho + rho 49749 := by
    unfold seg52Out0AccY19 seg52Out0AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 18]

    ring

  have ha0 : (rho 49740 + rho 49741) * (seg52Out0AccX18 rho + seg52Out0AccY18 rho) = rho 49742 := by
    unfold seg52Out0AccX18 seg52Out0AccY18
    linear_combination r5353
  have ha1 : rho 49741 * seg52Out0AccX18 rho = rho 49743 := by
    unfold seg52Out0AccX18
    linear_combination r5354
  have ha2 : rho 49740 * seg52Out0AccY18 rho = rho 49744 := by
    unfold seg52Out0AccY18
    linear_combination r5355
  have ha3 : 3021 * rho 49743 * rho 49744 = rho 49745 := by
    linear_combination r5356
  have ha4 : rho 49746 * (1 + rho 49745) = rho 49743 + rho 49744 := by
    linear_combination r5357
  have ha5 : rho 49747 * (1 - rho 49745) = rho 49742 - rho 49743 - rho 49744 := by
    linear_combination r5358
  have haddx :
      rho 49746 * (1 + 3021 * (rho 49741 * seg52Out0AccX18 rho) * (rho 49740 * seg52Out0AccY18 rho)) =
        rho 49741 * seg52Out0AccX18 rho + rho 49740 * seg52Out0AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49747 * (1 - 3021 * (rho 49741 * seg52Out0AccX18 rho) * (rho 49740 * seg52Out0AccY18 rho)) =
        (-1) * (rho 49741 * seg52Out0AccX18 rho) - rho 49740 * seg52Out0AccY18 rho +
          (seg52Out0AccY18 rho - seg52Out0AccX18 rho * (-1)) * (rho 49740 + rho 49741) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49747 * (1 - rho 49745) = rho 49742 - rho 49743 - rho 49744 := ha5
      _ = (-1) * rho 49743 - rho 49744 + (seg52Out0AccY18 rho - seg52Out0AccX18 rho * (-1)) *
          (rho 49740 + rho 49741) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX19 rho = seg52Out0AccX18 rho - Bool.toZMod bit * (seg52Out0AccX18 rho - rho 49746) := by
    have hd : rho 49748 = Bool.toZMod bit * (rho 49746 - seg52Out0AccX18 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX18
      linear_combination -r5359
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY19 rho = seg52Out0AccY18 rho - Bool.toZMod bit * (seg52Out0AccY18 rho - rho 49747) := by
    have hd : rho 49749 = Bool.toZMod bit * (rho 49747 - seg52Out0AccY18 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY18
      linear_combination -r5360
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49740 * rho 49741 = rho 49750 := by linear_combination r5361
  have hd1 : rho 49740 * rho 49740 = rho 49751 := by linear_combination r5362
  have hd2 : rho 49741 * rho 49741 = rho 49752 := by linear_combination r5363
  have hd3 : rho 49753 * (rho 49741 * rho 49741 + rho 49740 * rho 49740 * (-1)) =
      2 * (rho 49740 * rho 49741) := by
    rw [hd0, hd1, hd2]
    linear_combination r5364
  have hd4 : rho 49754 * (2 - (rho 49741 * rho 49741 + rho 49740 * rho 49740 * (-1))) =
      rho 49741 * rho 49741 - rho 49740 * rho 49740 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5365
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49740, rho 49741⟩
    ⟨rho 49746, rho 49747⟩ ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49753, rho 49754⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5366 rho ∧ Seg52.relationRow5367 rho ∧ Seg52.relationRow5368 rho ∧ Seg52.relationRow5369 rho ∧ Seg52.relationRow5370 rho ∧ Seg52.relationRow5371 rho ∧ Seg52.relationRow5372 rho ∧ Seg52.relationRow5373 rho ∧ Seg52.relationRow5374 rho ∧ Seg52.relationRow5375 rho ∧ Seg52.relationRow5376 rho ∧ Seg52.relationRow5377 rho ∧ Seg52.relationRow5378 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, r5377, r5378, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, r5377, r5378⟩

theorem seg52Out0_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49405 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49753, rho 49754⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49753, rho 49754⟩
        ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49766, rho 49767⟩ := by
  obtain ⟨r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, r5377, r5378⟩ := seg52Out0_rows19 rho h
  unfold Seg52.relationRow5366 at r5366

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5366

  unfold Seg52.relationRow5367 at r5367

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5367

  unfold Seg52.relationRow5368 at r5368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5368

  unfold Seg52.relationRow5369 at r5369

  unfold Seg52.relationRow5370 at r5370

  unfold Seg52.relationRow5371 at r5371

  unfold Seg52.relationRow5372 at r5372

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5372

  unfold Seg52.relationRow5373 at r5373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5373

  unfold Seg52.relationRow5374 at r5374

  unfold Seg52.relationRow5375 at r5375

  unfold Seg52.relationRow5376 at r5376

  unfold Seg52.relationRow5377 at r5377

  unfold Seg52.relationRow5378 at r5378

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX20 rho = seg52Out0AccX19 rho + rho 49761 := by
    unfold seg52Out0AccX20 seg52Out0AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 19]

    ring

  have hnexty : seg52Out0AccY20 rho = seg52Out0AccY19 rho + rho 49762 := by
    unfold seg52Out0AccY20 seg52Out0AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 19]

    ring

  have ha0 : (rho 49753 + rho 49754) * (seg52Out0AccX19 rho + seg52Out0AccY19 rho) = rho 49755 := by
    unfold seg52Out0AccX19 seg52Out0AccY19
    linear_combination r5366
  have ha1 : rho 49754 * seg52Out0AccX19 rho = rho 49756 := by
    unfold seg52Out0AccX19
    linear_combination r5367
  have ha2 : rho 49753 * seg52Out0AccY19 rho = rho 49757 := by
    unfold seg52Out0AccY19
    linear_combination r5368
  have ha3 : 3021 * rho 49756 * rho 49757 = rho 49758 := by
    linear_combination r5369
  have ha4 : rho 49759 * (1 + rho 49758) = rho 49756 + rho 49757 := by
    linear_combination r5370
  have ha5 : rho 49760 * (1 - rho 49758) = rho 49755 - rho 49756 - rho 49757 := by
    linear_combination r5371
  have haddx :
      rho 49759 * (1 + 3021 * (rho 49754 * seg52Out0AccX19 rho) * (rho 49753 * seg52Out0AccY19 rho)) =
        rho 49754 * seg52Out0AccX19 rho + rho 49753 * seg52Out0AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49760 * (1 - 3021 * (rho 49754 * seg52Out0AccX19 rho) * (rho 49753 * seg52Out0AccY19 rho)) =
        (-1) * (rho 49754 * seg52Out0AccX19 rho) - rho 49753 * seg52Out0AccY19 rho +
          (seg52Out0AccY19 rho - seg52Out0AccX19 rho * (-1)) * (rho 49753 + rho 49754) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49760 * (1 - rho 49758) = rho 49755 - rho 49756 - rho 49757 := ha5
      _ = (-1) * rho 49756 - rho 49757 + (seg52Out0AccY19 rho - seg52Out0AccX19 rho * (-1)) *
          (rho 49753 + rho 49754) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX20 rho = seg52Out0AccX19 rho - Bool.toZMod bit * (seg52Out0AccX19 rho - rho 49759) := by
    have hd : rho 49761 = Bool.toZMod bit * (rho 49759 - seg52Out0AccX19 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX19
      linear_combination -r5372
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY20 rho = seg52Out0AccY19 rho - Bool.toZMod bit * (seg52Out0AccY19 rho - rho 49760) := by
    have hd : rho 49762 = Bool.toZMod bit * (rho 49760 - seg52Out0AccY19 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY19
      linear_combination -r5373
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49753 * rho 49754 = rho 49763 := by linear_combination r5374
  have hd1 : rho 49753 * rho 49753 = rho 49764 := by linear_combination r5375
  have hd2 : rho 49754 * rho 49754 = rho 49765 := by linear_combination r5376
  have hd3 : rho 49766 * (rho 49754 * rho 49754 + rho 49753 * rho 49753 * (-1)) =
      2 * (rho 49753 * rho 49754) := by
    rw [hd0, hd1, hd2]
    linear_combination r5377
  have hd4 : rho 49767 * (2 - (rho 49754 * rho 49754 + rho 49753 * rho 49753 * (-1))) =
      rho 49754 * rho 49754 - rho 49753 * rho 49753 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5378
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49753, rho 49754⟩
    ⟨rho 49759, rho 49760⟩ ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49766, rho 49767⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5379 rho ∧ Seg52.relationRow5380 rho ∧ Seg52.relationRow5381 rho ∧ Seg52.relationRow5382 rho ∧ Seg52.relationRow5383 rho ∧ Seg52.relationRow5384 rho ∧ Seg52.relationRow5385 rho ∧ Seg52.relationRow5386 rho ∧ Seg52.relationRow5387 rho ∧ Seg52.relationRow5388 rho ∧ Seg52.relationRow5389 rho ∧ Seg52.relationRow5390 rho ∧ Seg52.relationRow5391 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, r5391, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, r5391⟩

theorem seg52Out0_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49406 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49766, rho 49767⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49766, rho 49767⟩
        ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49779, rho 49780⟩ := by
  obtain ⟨r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, r5391⟩ := seg52Out0_rows20 rho h
  unfold Seg52.relationRow5379 at r5379

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5379

  unfold Seg52.relationRow5380 at r5380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5380

  unfold Seg52.relationRow5381 at r5381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5381

  unfold Seg52.relationRow5382 at r5382

  unfold Seg52.relationRow5383 at r5383

  unfold Seg52.relationRow5384 at r5384

  unfold Seg52.relationRow5385 at r5385

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5385

  unfold Seg52.relationRow5386 at r5386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5386

  unfold Seg52.relationRow5387 at r5387

  unfold Seg52.relationRow5388 at r5388

  unfold Seg52.relationRow5389 at r5389

  unfold Seg52.relationRow5390 at r5390

  unfold Seg52.relationRow5391 at r5391

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX21 rho = seg52Out0AccX20 rho + rho 49774 := by
    unfold seg52Out0AccX21 seg52Out0AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 20]

    ring

  have hnexty : seg52Out0AccY21 rho = seg52Out0AccY20 rho + rho 49775 := by
    unfold seg52Out0AccY21 seg52Out0AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 20]

    ring

  have ha0 : (rho 49766 + rho 49767) * (seg52Out0AccX20 rho + seg52Out0AccY20 rho) = rho 49768 := by
    unfold seg52Out0AccX20 seg52Out0AccY20
    linear_combination r5379
  have ha1 : rho 49767 * seg52Out0AccX20 rho = rho 49769 := by
    unfold seg52Out0AccX20
    linear_combination r5380
  have ha2 : rho 49766 * seg52Out0AccY20 rho = rho 49770 := by
    unfold seg52Out0AccY20
    linear_combination r5381
  have ha3 : 3021 * rho 49769 * rho 49770 = rho 49771 := by
    linear_combination r5382
  have ha4 : rho 49772 * (1 + rho 49771) = rho 49769 + rho 49770 := by
    linear_combination r5383
  have ha5 : rho 49773 * (1 - rho 49771) = rho 49768 - rho 49769 - rho 49770 := by
    linear_combination r5384
  have haddx :
      rho 49772 * (1 + 3021 * (rho 49767 * seg52Out0AccX20 rho) * (rho 49766 * seg52Out0AccY20 rho)) =
        rho 49767 * seg52Out0AccX20 rho + rho 49766 * seg52Out0AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49773 * (1 - 3021 * (rho 49767 * seg52Out0AccX20 rho) * (rho 49766 * seg52Out0AccY20 rho)) =
        (-1) * (rho 49767 * seg52Out0AccX20 rho) - rho 49766 * seg52Out0AccY20 rho +
          (seg52Out0AccY20 rho - seg52Out0AccX20 rho * (-1)) * (rho 49766 + rho 49767) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49773 * (1 - rho 49771) = rho 49768 - rho 49769 - rho 49770 := ha5
      _ = (-1) * rho 49769 - rho 49770 + (seg52Out0AccY20 rho - seg52Out0AccX20 rho * (-1)) *
          (rho 49766 + rho 49767) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX21 rho = seg52Out0AccX20 rho - Bool.toZMod bit * (seg52Out0AccX20 rho - rho 49772) := by
    have hd : rho 49774 = Bool.toZMod bit * (rho 49772 - seg52Out0AccX20 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX20
      linear_combination -r5385
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY21 rho = seg52Out0AccY20 rho - Bool.toZMod bit * (seg52Out0AccY20 rho - rho 49773) := by
    have hd : rho 49775 = Bool.toZMod bit * (rho 49773 - seg52Out0AccY20 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY20
      linear_combination -r5386
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49766 * rho 49767 = rho 49776 := by linear_combination r5387
  have hd1 : rho 49766 * rho 49766 = rho 49777 := by linear_combination r5388
  have hd2 : rho 49767 * rho 49767 = rho 49778 := by linear_combination r5389
  have hd3 : rho 49779 * (rho 49767 * rho 49767 + rho 49766 * rho 49766 * (-1)) =
      2 * (rho 49766 * rho 49767) := by
    rw [hd0, hd1, hd2]
    linear_combination r5390
  have hd4 : rho 49780 * (2 - (rho 49767 * rho 49767 + rho 49766 * rho 49766 * (-1))) =
      rho 49767 * rho 49767 - rho 49766 * rho 49766 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5391
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49766, rho 49767⟩
    ⟨rho 49772, rho 49773⟩ ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49779, rho 49780⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5392 rho ∧ Seg52.relationRow5393 rho ∧ Seg52.relationRow5394 rho ∧ Seg52.relationRow5395 rho ∧ Seg52.relationRow5396 rho ∧ Seg52.relationRow5397 rho ∧ Seg52.relationRow5398 rho ∧ Seg52.relationRow5399 rho ∧ Seg52.relationRow5400 rho ∧ Seg52.relationRow5401 rho ∧ Seg52.relationRow5402 rho ∧ Seg52.relationRow5403 rho ∧ Seg52.relationRow5404 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart67 at p67

  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩

theorem seg52Out0_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49407 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49779, rho 49780⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49779, rho 49780⟩
        ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49792, rho 49793⟩ := by
  obtain ⟨r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩ := seg52Out0_rows21 rho h
  unfold Seg52.relationRow5392 at r5392

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5392

  unfold Seg52.relationRow5393 at r5393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5393

  unfold Seg52.relationRow5394 at r5394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5394

  unfold Seg52.relationRow5395 at r5395

  unfold Seg52.relationRow5396 at r5396

  unfold Seg52.relationRow5397 at r5397

  unfold Seg52.relationRow5398 at r5398

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5398

  unfold Seg52.relationRow5399 at r5399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5399

  unfold Seg52.relationRow5400 at r5400

  unfold Seg52.relationRow5401 at r5401

  unfold Seg52.relationRow5402 at r5402

  unfold Seg52.relationRow5403 at r5403

  unfold Seg52.relationRow5404 at r5404

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX22 rho = seg52Out0AccX21 rho + rho 49787 := by
    unfold seg52Out0AccX22 seg52Out0AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 21]

    ring

  have hnexty : seg52Out0AccY22 rho = seg52Out0AccY21 rho + rho 49788 := by
    unfold seg52Out0AccY22 seg52Out0AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 21]

    ring

  have ha0 : (rho 49779 + rho 49780) * (seg52Out0AccX21 rho + seg52Out0AccY21 rho) = rho 49781 := by
    unfold seg52Out0AccX21 seg52Out0AccY21
    linear_combination r5392
  have ha1 : rho 49780 * seg52Out0AccX21 rho = rho 49782 := by
    unfold seg52Out0AccX21
    linear_combination r5393
  have ha2 : rho 49779 * seg52Out0AccY21 rho = rho 49783 := by
    unfold seg52Out0AccY21
    linear_combination r5394
  have ha3 : 3021 * rho 49782 * rho 49783 = rho 49784 := by
    linear_combination r5395
  have ha4 : rho 49785 * (1 + rho 49784) = rho 49782 + rho 49783 := by
    linear_combination r5396
  have ha5 : rho 49786 * (1 - rho 49784) = rho 49781 - rho 49782 - rho 49783 := by
    linear_combination r5397
  have haddx :
      rho 49785 * (1 + 3021 * (rho 49780 * seg52Out0AccX21 rho) * (rho 49779 * seg52Out0AccY21 rho)) =
        rho 49780 * seg52Out0AccX21 rho + rho 49779 * seg52Out0AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49786 * (1 - 3021 * (rho 49780 * seg52Out0AccX21 rho) * (rho 49779 * seg52Out0AccY21 rho)) =
        (-1) * (rho 49780 * seg52Out0AccX21 rho) - rho 49779 * seg52Out0AccY21 rho +
          (seg52Out0AccY21 rho - seg52Out0AccX21 rho * (-1)) * (rho 49779 + rho 49780) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49786 * (1 - rho 49784) = rho 49781 - rho 49782 - rho 49783 := ha5
      _ = (-1) * rho 49782 - rho 49783 + (seg52Out0AccY21 rho - seg52Out0AccX21 rho * (-1)) *
          (rho 49779 + rho 49780) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX22 rho = seg52Out0AccX21 rho - Bool.toZMod bit * (seg52Out0AccX21 rho - rho 49785) := by
    have hd : rho 49787 = Bool.toZMod bit * (rho 49785 - seg52Out0AccX21 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX21
      linear_combination -r5398
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY22 rho = seg52Out0AccY21 rho - Bool.toZMod bit * (seg52Out0AccY21 rho - rho 49786) := by
    have hd : rho 49788 = Bool.toZMod bit * (rho 49786 - seg52Out0AccY21 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY21
      linear_combination -r5399
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49779 * rho 49780 = rho 49789 := by linear_combination r5400
  have hd1 : rho 49779 * rho 49779 = rho 49790 := by linear_combination r5401
  have hd2 : rho 49780 * rho 49780 = rho 49791 := by linear_combination r5402
  have hd3 : rho 49792 * (rho 49780 * rho 49780 + rho 49779 * rho 49779 * (-1)) =
      2 * (rho 49779 * rho 49780) := by
    rw [hd0, hd1, hd2]
    linear_combination r5403
  have hd4 : rho 49793 * (2 - (rho 49780 * rho 49780 + rho 49779 * rho 49779 * (-1))) =
      rho 49780 * rho 49780 - rho 49779 * rho 49779 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5404
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49779, rho 49780⟩
    ⟨rho 49785, rho 49786⟩ ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49792, rho 49793⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg52Out0_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg52Out0_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg52Out0_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg52Out0_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg52Out0_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg52Out0_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg52Out0_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg52Out0_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg52Out0_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg52Out0_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
