import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6263 rho ∧ Seg52.relationRow6264 rho ∧ Seg52.relationRow6265 rho ∧ Seg52.relationRow6266 rho ∧ Seg52.relationRow6267 rho ∧ Seg52.relationRow6268 rho ∧ Seg52.relationRow6269 rho ∧ Seg52.relationRow6270 rho ∧ Seg52.relationRow6271 rho ∧ Seg52.relationRow6272 rho ∧ Seg52.relationRow6273 rho ∧ Seg52.relationRow6274 rho ∧ Seg52.relationRow6275 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275⟩

theorem seg52Out0_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49474 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50650, rho 50651⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50650, rho 50651⟩
        ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50663, rho 50664⟩ := by
  obtain ⟨r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, r6273, r6274, r6275⟩ := seg52Out0_rows88 rho h
  unfold Seg52.relationRow6263 at r6263

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6263

  unfold Seg52.relationRow6264 at r6264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6264

  unfold Seg52.relationRow6265 at r6265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6265

  unfold Seg52.relationRow6266 at r6266

  unfold Seg52.relationRow6267 at r6267

  unfold Seg52.relationRow6268 at r6268

  unfold Seg52.relationRow6269 at r6269

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6269

  unfold Seg52.relationRow6270 at r6270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6270

  unfold Seg52.relationRow6271 at r6271

  unfold Seg52.relationRow6272 at r6272

  unfold Seg52.relationRow6273 at r6273

  unfold Seg52.relationRow6274 at r6274

  unfold Seg52.relationRow6275 at r6275

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX89 rho = seg52Out0AccX88 rho + rho 50658 := by
    unfold seg52Out0AccX89 seg52Out0AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 88]

    ring

  have hnexty : seg52Out0AccY89 rho = seg52Out0AccY88 rho + rho 50659 := by
    unfold seg52Out0AccY89 seg52Out0AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 88]

    ring

  have ha0 : (rho 50650 + rho 50651) * (seg52Out0AccX88 rho + seg52Out0AccY88 rho) = rho 50652 := by
    unfold seg52Out0AccX88 seg52Out0AccY88
    linear_combination r6263
  have ha1 : rho 50651 * seg52Out0AccX88 rho = rho 50653 := by
    unfold seg52Out0AccX88
    linear_combination r6264
  have ha2 : rho 50650 * seg52Out0AccY88 rho = rho 50654 := by
    unfold seg52Out0AccY88
    linear_combination r6265
  have ha3 : 3021 * rho 50653 * rho 50654 = rho 50655 := by
    linear_combination r6266
  have ha4 : rho 50656 * (1 + rho 50655) = rho 50653 + rho 50654 := by
    linear_combination r6267
  have ha5 : rho 50657 * (1 - rho 50655) = rho 50652 - rho 50653 - rho 50654 := by
    linear_combination r6268
  have haddx :
      rho 50656 * (1 + 3021 * (rho 50651 * seg52Out0AccX88 rho) * (rho 50650 * seg52Out0AccY88 rho)) =
        rho 50651 * seg52Out0AccX88 rho + rho 50650 * seg52Out0AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50657 * (1 - 3021 * (rho 50651 * seg52Out0AccX88 rho) * (rho 50650 * seg52Out0AccY88 rho)) =
        (-1) * (rho 50651 * seg52Out0AccX88 rho) - rho 50650 * seg52Out0AccY88 rho +
          (seg52Out0AccY88 rho - seg52Out0AccX88 rho * (-1)) * (rho 50650 + rho 50651) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50657 * (1 - rho 50655) = rho 50652 - rho 50653 - rho 50654 := ha5
      _ = (-1) * rho 50653 - rho 50654 + (seg52Out0AccY88 rho - seg52Out0AccX88 rho * (-1)) *
          (rho 50650 + rho 50651) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX89 rho = seg52Out0AccX88 rho - Bool.toZMod bit * (seg52Out0AccX88 rho - rho 50656) := by
    have hd : rho 50658 = Bool.toZMod bit * (rho 50656 - seg52Out0AccX88 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX88
      linear_combination -r6269
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY89 rho = seg52Out0AccY88 rho - Bool.toZMod bit * (seg52Out0AccY88 rho - rho 50657) := by
    have hd : rho 50659 = Bool.toZMod bit * (rho 50657 - seg52Out0AccY88 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY88
      linear_combination -r6270
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50650 * rho 50651 = rho 50660 := by linear_combination r6271
  have hd1 : rho 50650 * rho 50650 = rho 50661 := by linear_combination r6272
  have hd2 : rho 50651 * rho 50651 = rho 50662 := by linear_combination r6273
  have hd3 : rho 50663 * (rho 50651 * rho 50651 + rho 50650 * rho 50650 * (-1)) =
      2 * (rho 50650 * rho 50651) := by
    rw [hd0, hd1, hd2]
    linear_combination r6274
  have hd4 : rho 50664 * (2 - (rho 50651 * rho 50651 + rho 50650 * rho 50650 * (-1))) =
      rho 50651 * rho 50651 - rho 50650 * rho 50650 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6275
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50650, rho 50651⟩
    ⟨rho 50656, rho 50657⟩ ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50663, rho 50664⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6276 rho ∧ Seg52.relationRow6277 rho ∧ Seg52.relationRow6278 rho ∧ Seg52.relationRow6279 rho ∧ Seg52.relationRow6280 rho ∧ Seg52.relationRow6281 rho ∧ Seg52.relationRow6282 rho ∧ Seg52.relationRow6283 rho ∧ Seg52.relationRow6284 rho ∧ Seg52.relationRow6285 rho ∧ Seg52.relationRow6286 rho ∧ Seg52.relationRow6287 rho ∧ Seg52.relationRow6288 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288⟩

theorem seg52Out0_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49475 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50663, rho 50664⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50663, rho 50664⟩
        ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50676, rho 50677⟩ := by
  obtain ⟨r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, r6287, r6288⟩ := seg52Out0_rows89 rho h
  unfold Seg52.relationRow6276 at r6276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6276

  unfold Seg52.relationRow6277 at r6277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6277

  unfold Seg52.relationRow6278 at r6278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6278

  unfold Seg52.relationRow6279 at r6279

  unfold Seg52.relationRow6280 at r6280

  unfold Seg52.relationRow6281 at r6281

  unfold Seg52.relationRow6282 at r6282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6282

  unfold Seg52.relationRow6283 at r6283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6283

  unfold Seg52.relationRow6284 at r6284

  unfold Seg52.relationRow6285 at r6285

  unfold Seg52.relationRow6286 at r6286

  unfold Seg52.relationRow6287 at r6287

  unfold Seg52.relationRow6288 at r6288

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX90 rho = seg52Out0AccX89 rho + rho 50671 := by
    unfold seg52Out0AccX90 seg52Out0AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 89]

    ring

  have hnexty : seg52Out0AccY90 rho = seg52Out0AccY89 rho + rho 50672 := by
    unfold seg52Out0AccY90 seg52Out0AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 89]

    ring

  have ha0 : (rho 50663 + rho 50664) * (seg52Out0AccX89 rho + seg52Out0AccY89 rho) = rho 50665 := by
    unfold seg52Out0AccX89 seg52Out0AccY89
    linear_combination r6276
  have ha1 : rho 50664 * seg52Out0AccX89 rho = rho 50666 := by
    unfold seg52Out0AccX89
    linear_combination r6277
  have ha2 : rho 50663 * seg52Out0AccY89 rho = rho 50667 := by
    unfold seg52Out0AccY89
    linear_combination r6278
  have ha3 : 3021 * rho 50666 * rho 50667 = rho 50668 := by
    linear_combination r6279
  have ha4 : rho 50669 * (1 + rho 50668) = rho 50666 + rho 50667 := by
    linear_combination r6280
  have ha5 : rho 50670 * (1 - rho 50668) = rho 50665 - rho 50666 - rho 50667 := by
    linear_combination r6281
  have haddx :
      rho 50669 * (1 + 3021 * (rho 50664 * seg52Out0AccX89 rho) * (rho 50663 * seg52Out0AccY89 rho)) =
        rho 50664 * seg52Out0AccX89 rho + rho 50663 * seg52Out0AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50670 * (1 - 3021 * (rho 50664 * seg52Out0AccX89 rho) * (rho 50663 * seg52Out0AccY89 rho)) =
        (-1) * (rho 50664 * seg52Out0AccX89 rho) - rho 50663 * seg52Out0AccY89 rho +
          (seg52Out0AccY89 rho - seg52Out0AccX89 rho * (-1)) * (rho 50663 + rho 50664) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50670 * (1 - rho 50668) = rho 50665 - rho 50666 - rho 50667 := ha5
      _ = (-1) * rho 50666 - rho 50667 + (seg52Out0AccY89 rho - seg52Out0AccX89 rho * (-1)) *
          (rho 50663 + rho 50664) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX90 rho = seg52Out0AccX89 rho - Bool.toZMod bit * (seg52Out0AccX89 rho - rho 50669) := by
    have hd : rho 50671 = Bool.toZMod bit * (rho 50669 - seg52Out0AccX89 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX89
      linear_combination -r6282
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY90 rho = seg52Out0AccY89 rho - Bool.toZMod bit * (seg52Out0AccY89 rho - rho 50670) := by
    have hd : rho 50672 = Bool.toZMod bit * (rho 50670 - seg52Out0AccY89 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY89
      linear_combination -r6283
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50663 * rho 50664 = rho 50673 := by linear_combination r6284
  have hd1 : rho 50663 * rho 50663 = rho 50674 := by linear_combination r6285
  have hd2 : rho 50664 * rho 50664 = rho 50675 := by linear_combination r6286
  have hd3 : rho 50676 * (rho 50664 * rho 50664 + rho 50663 * rho 50663 * (-1)) =
      2 * (rho 50663 * rho 50664) := by
    rw [hd0, hd1, hd2]
    linear_combination r6287
  have hd4 : rho 50677 * (2 - (rho 50664 * rho 50664 + rho 50663 * rho 50663 * (-1))) =
      rho 50664 * rho 50664 - rho 50663 * rho 50663 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6288
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50663, rho 50664⟩
    ⟨rho 50669, rho 50670⟩ ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50676, rho 50677⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6289 rho ∧ Seg52.relationRow6290 rho ∧ Seg52.relationRow6291 rho ∧ Seg52.relationRow6292 rho ∧ Seg52.relationRow6293 rho ∧ Seg52.relationRow6294 rho ∧ Seg52.relationRow6295 rho ∧ Seg52.relationRow6296 rho ∧ Seg52.relationRow6297 rho ∧ Seg52.relationRow6298 rho ∧ Seg52.relationRow6299 rho ∧ Seg52.relationRow6300 rho ∧ Seg52.relationRow6301 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301⟩

theorem seg52Out0_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49476 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50676, rho 50677⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50676, rho 50677⟩
        ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50689, rho 50690⟩ := by
  obtain ⟨r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, r6301⟩ := seg52Out0_rows90 rho h
  unfold Seg52.relationRow6289 at r6289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6289

  unfold Seg52.relationRow6290 at r6290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6290

  unfold Seg52.relationRow6291 at r6291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6291

  unfold Seg52.relationRow6292 at r6292

  unfold Seg52.relationRow6293 at r6293

  unfold Seg52.relationRow6294 at r6294

  unfold Seg52.relationRow6295 at r6295

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6295

  unfold Seg52.relationRow6296 at r6296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6296

  unfold Seg52.relationRow6297 at r6297

  unfold Seg52.relationRow6298 at r6298

  unfold Seg52.relationRow6299 at r6299

  unfold Seg52.relationRow6300 at r6300

  unfold Seg52.relationRow6301 at r6301

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX91 rho = seg52Out0AccX90 rho + rho 50684 := by
    unfold seg52Out0AccX91 seg52Out0AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 90]

    ring

  have hnexty : seg52Out0AccY91 rho = seg52Out0AccY90 rho + rho 50685 := by
    unfold seg52Out0AccY91 seg52Out0AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 90]

    ring

  have ha0 : (rho 50676 + rho 50677) * (seg52Out0AccX90 rho + seg52Out0AccY90 rho) = rho 50678 := by
    unfold seg52Out0AccX90 seg52Out0AccY90
    linear_combination r6289
  have ha1 : rho 50677 * seg52Out0AccX90 rho = rho 50679 := by
    unfold seg52Out0AccX90
    linear_combination r6290
  have ha2 : rho 50676 * seg52Out0AccY90 rho = rho 50680 := by
    unfold seg52Out0AccY90
    linear_combination r6291
  have ha3 : 3021 * rho 50679 * rho 50680 = rho 50681 := by
    linear_combination r6292
  have ha4 : rho 50682 * (1 + rho 50681) = rho 50679 + rho 50680 := by
    linear_combination r6293
  have ha5 : rho 50683 * (1 - rho 50681) = rho 50678 - rho 50679 - rho 50680 := by
    linear_combination r6294
  have haddx :
      rho 50682 * (1 + 3021 * (rho 50677 * seg52Out0AccX90 rho) * (rho 50676 * seg52Out0AccY90 rho)) =
        rho 50677 * seg52Out0AccX90 rho + rho 50676 * seg52Out0AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50683 * (1 - 3021 * (rho 50677 * seg52Out0AccX90 rho) * (rho 50676 * seg52Out0AccY90 rho)) =
        (-1) * (rho 50677 * seg52Out0AccX90 rho) - rho 50676 * seg52Out0AccY90 rho +
          (seg52Out0AccY90 rho - seg52Out0AccX90 rho * (-1)) * (rho 50676 + rho 50677) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50683 * (1 - rho 50681) = rho 50678 - rho 50679 - rho 50680 := ha5
      _ = (-1) * rho 50679 - rho 50680 + (seg52Out0AccY90 rho - seg52Out0AccX90 rho * (-1)) *
          (rho 50676 + rho 50677) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX91 rho = seg52Out0AccX90 rho - Bool.toZMod bit * (seg52Out0AccX90 rho - rho 50682) := by
    have hd : rho 50684 = Bool.toZMod bit * (rho 50682 - seg52Out0AccX90 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX90
      linear_combination -r6295
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY91 rho = seg52Out0AccY90 rho - Bool.toZMod bit * (seg52Out0AccY90 rho - rho 50683) := by
    have hd : rho 50685 = Bool.toZMod bit * (rho 50683 - seg52Out0AccY90 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY90
      linear_combination -r6296
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50676 * rho 50677 = rho 50686 := by linear_combination r6297
  have hd1 : rho 50676 * rho 50676 = rho 50687 := by linear_combination r6298
  have hd2 : rho 50677 * rho 50677 = rho 50688 := by linear_combination r6299
  have hd3 : rho 50689 * (rho 50677 * rho 50677 + rho 50676 * rho 50676 * (-1)) =
      2 * (rho 50676 * rho 50677) := by
    rw [hd0, hd1, hd2]
    linear_combination r6300
  have hd4 : rho 50690 * (2 - (rho 50677 * rho 50677 + rho 50676 * rho 50676 * (-1))) =
      rho 50677 * rho 50677 - rho 50676 * rho 50676 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6301
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50676, rho 50677⟩
    ⟨rho 50682, rho 50683⟩ ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50689, rho 50690⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6302 rho ∧ Seg52.relationRow6303 rho ∧ Seg52.relationRow6304 rho ∧ Seg52.relationRow6305 rho ∧ Seg52.relationRow6306 rho ∧ Seg52.relationRow6307 rho ∧ Seg52.relationRow6308 rho ∧ Seg52.relationRow6309 rho ∧ Seg52.relationRow6310 rho ∧ Seg52.relationRow6311 rho ∧ Seg52.relationRow6312 rho ∧ Seg52.relationRow6313 rho ∧ Seg52.relationRow6314 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩

  exact ⟨r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩

theorem seg52Out0_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49477 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50689, rho 50690⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50689, rho 50690⟩
        ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50702, rho 50703⟩ := by
  obtain ⟨r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩ := seg52Out0_rows91 rho h
  unfold Seg52.relationRow6302 at r6302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6302

  unfold Seg52.relationRow6303 at r6303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6303

  unfold Seg52.relationRow6304 at r6304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6304

  unfold Seg52.relationRow6305 at r6305

  unfold Seg52.relationRow6306 at r6306

  unfold Seg52.relationRow6307 at r6307

  unfold Seg52.relationRow6308 at r6308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6308

  unfold Seg52.relationRow6309 at r6309

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6309

  unfold Seg52.relationRow6310 at r6310

  unfold Seg52.relationRow6311 at r6311

  unfold Seg52.relationRow6312 at r6312

  unfold Seg52.relationRow6313 at r6313

  unfold Seg52.relationRow6314 at r6314

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX92 rho = seg52Out0AccX91 rho + rho 50697 := by
    unfold seg52Out0AccX92 seg52Out0AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 91]

    ring

  have hnexty : seg52Out0AccY92 rho = seg52Out0AccY91 rho + rho 50698 := by
    unfold seg52Out0AccY92 seg52Out0AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 91]

    ring

  have ha0 : (rho 50689 + rho 50690) * (seg52Out0AccX91 rho + seg52Out0AccY91 rho) = rho 50691 := by
    unfold seg52Out0AccX91 seg52Out0AccY91
    linear_combination r6302
  have ha1 : rho 50690 * seg52Out0AccX91 rho = rho 50692 := by
    unfold seg52Out0AccX91
    linear_combination r6303
  have ha2 : rho 50689 * seg52Out0AccY91 rho = rho 50693 := by
    unfold seg52Out0AccY91
    linear_combination r6304
  have ha3 : 3021 * rho 50692 * rho 50693 = rho 50694 := by
    linear_combination r6305
  have ha4 : rho 50695 * (1 + rho 50694) = rho 50692 + rho 50693 := by
    linear_combination r6306
  have ha5 : rho 50696 * (1 - rho 50694) = rho 50691 - rho 50692 - rho 50693 := by
    linear_combination r6307
  have haddx :
      rho 50695 * (1 + 3021 * (rho 50690 * seg52Out0AccX91 rho) * (rho 50689 * seg52Out0AccY91 rho)) =
        rho 50690 * seg52Out0AccX91 rho + rho 50689 * seg52Out0AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50696 * (1 - 3021 * (rho 50690 * seg52Out0AccX91 rho) * (rho 50689 * seg52Out0AccY91 rho)) =
        (-1) * (rho 50690 * seg52Out0AccX91 rho) - rho 50689 * seg52Out0AccY91 rho +
          (seg52Out0AccY91 rho - seg52Out0AccX91 rho * (-1)) * (rho 50689 + rho 50690) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50696 * (1 - rho 50694) = rho 50691 - rho 50692 - rho 50693 := ha5
      _ = (-1) * rho 50692 - rho 50693 + (seg52Out0AccY91 rho - seg52Out0AccX91 rho * (-1)) *
          (rho 50689 + rho 50690) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX92 rho = seg52Out0AccX91 rho - Bool.toZMod bit * (seg52Out0AccX91 rho - rho 50695) := by
    have hd : rho 50697 = Bool.toZMod bit * (rho 50695 - seg52Out0AccX91 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX91
      linear_combination -r6308
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY92 rho = seg52Out0AccY91 rho - Bool.toZMod bit * (seg52Out0AccY91 rho - rho 50696) := by
    have hd : rho 50698 = Bool.toZMod bit * (rho 50696 - seg52Out0AccY91 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY91
      linear_combination -r6309
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50689 * rho 50690 = rho 50699 := by linear_combination r6310
  have hd1 : rho 50689 * rho 50689 = rho 50700 := by linear_combination r6311
  have hd2 : rho 50690 * rho 50690 = rho 50701 := by linear_combination r6312
  have hd3 : rho 50702 * (rho 50690 * rho 50690 + rho 50689 * rho 50689 * (-1)) =
      2 * (rho 50689 * rho 50690) := by
    rw [hd0, hd1, hd2]
    linear_combination r6313
  have hd4 : rho 50703 * (2 - (rho 50690 * rho 50690 + rho 50689 * rho 50689 * (-1))) =
      rho 50690 * rho 50690 - rho 50689 * rho 50689 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6314
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50689, rho 50690⟩
    ⟨rho 50695, rho 50696⟩ ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50702, rho 50703⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6315 rho ∧ Seg52.relationRow6316 rho ∧ Seg52.relationRow6317 rho ∧ Seg52.relationRow6318 rho ∧ Seg52.relationRow6319 rho ∧ Seg52.relationRow6320 rho ∧ Seg52.relationRow6321 rho ∧ Seg52.relationRow6322 rho ∧ Seg52.relationRow6323 rho ∧ Seg52.relationRow6324 rho ∧ Seg52.relationRow6325 rho ∧ Seg52.relationRow6326 rho ∧ Seg52.relationRow6327 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327⟩

theorem seg52Out0_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49478 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50702, rho 50703⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50702, rho 50703⟩
        ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50715, rho 50716⟩ := by
  obtain ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327⟩ := seg52Out0_rows92 rho h
  unfold Seg52.relationRow6315 at r6315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6315

  unfold Seg52.relationRow6316 at r6316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6316

  unfold Seg52.relationRow6317 at r6317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6317

  unfold Seg52.relationRow6318 at r6318

  unfold Seg52.relationRow6319 at r6319

  unfold Seg52.relationRow6320 at r6320

  unfold Seg52.relationRow6321 at r6321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6321

  unfold Seg52.relationRow6322 at r6322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6322

  unfold Seg52.relationRow6323 at r6323

  unfold Seg52.relationRow6324 at r6324

  unfold Seg52.relationRow6325 at r6325

  unfold Seg52.relationRow6326 at r6326

  unfold Seg52.relationRow6327 at r6327

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX93 rho = seg52Out0AccX92 rho + rho 50710 := by
    unfold seg52Out0AccX93 seg52Out0AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 92]

    ring

  have hnexty : seg52Out0AccY93 rho = seg52Out0AccY92 rho + rho 50711 := by
    unfold seg52Out0AccY93 seg52Out0AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 92]

    ring

  have ha0 : (rho 50702 + rho 50703) * (seg52Out0AccX92 rho + seg52Out0AccY92 rho) = rho 50704 := by
    unfold seg52Out0AccX92 seg52Out0AccY92
    linear_combination r6315
  have ha1 : rho 50703 * seg52Out0AccX92 rho = rho 50705 := by
    unfold seg52Out0AccX92
    linear_combination r6316
  have ha2 : rho 50702 * seg52Out0AccY92 rho = rho 50706 := by
    unfold seg52Out0AccY92
    linear_combination r6317
  have ha3 : 3021 * rho 50705 * rho 50706 = rho 50707 := by
    linear_combination r6318
  have ha4 : rho 50708 * (1 + rho 50707) = rho 50705 + rho 50706 := by
    linear_combination r6319
  have ha5 : rho 50709 * (1 - rho 50707) = rho 50704 - rho 50705 - rho 50706 := by
    linear_combination r6320
  have haddx :
      rho 50708 * (1 + 3021 * (rho 50703 * seg52Out0AccX92 rho) * (rho 50702 * seg52Out0AccY92 rho)) =
        rho 50703 * seg52Out0AccX92 rho + rho 50702 * seg52Out0AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50709 * (1 - 3021 * (rho 50703 * seg52Out0AccX92 rho) * (rho 50702 * seg52Out0AccY92 rho)) =
        (-1) * (rho 50703 * seg52Out0AccX92 rho) - rho 50702 * seg52Out0AccY92 rho +
          (seg52Out0AccY92 rho - seg52Out0AccX92 rho * (-1)) * (rho 50702 + rho 50703) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50709 * (1 - rho 50707) = rho 50704 - rho 50705 - rho 50706 := ha5
      _ = (-1) * rho 50705 - rho 50706 + (seg52Out0AccY92 rho - seg52Out0AccX92 rho * (-1)) *
          (rho 50702 + rho 50703) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX93 rho = seg52Out0AccX92 rho - Bool.toZMod bit * (seg52Out0AccX92 rho - rho 50708) := by
    have hd : rho 50710 = Bool.toZMod bit * (rho 50708 - seg52Out0AccX92 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX92
      linear_combination -r6321
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY93 rho = seg52Out0AccY92 rho - Bool.toZMod bit * (seg52Out0AccY92 rho - rho 50709) := by
    have hd : rho 50711 = Bool.toZMod bit * (rho 50709 - seg52Out0AccY92 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY92
      linear_combination -r6322
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50702 * rho 50703 = rho 50712 := by linear_combination r6323
  have hd1 : rho 50702 * rho 50702 = rho 50713 := by linear_combination r6324
  have hd2 : rho 50703 * rho 50703 = rho 50714 := by linear_combination r6325
  have hd3 : rho 50715 * (rho 50703 * rho 50703 + rho 50702 * rho 50702 * (-1)) =
      2 * (rho 50702 * rho 50703) := by
    rw [hd0, hd1, hd2]
    linear_combination r6326
  have hd4 : rho 50716 * (2 - (rho 50703 * rho 50703 + rho 50702 * rho 50702 * (-1))) =
      rho 50703 * rho 50703 - rho 50702 * rho 50702 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6327
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50702, rho 50703⟩
    ⟨rho 50708, rho 50709⟩ ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50715, rho 50716⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6328 rho ∧ Seg52.relationRow6329 rho ∧ Seg52.relationRow6330 rho ∧ Seg52.relationRow6331 rho ∧ Seg52.relationRow6332 rho ∧ Seg52.relationRow6333 rho ∧ Seg52.relationRow6334 rho ∧ Seg52.relationRow6335 rho ∧ Seg52.relationRow6336 rho ∧ Seg52.relationRow6337 rho ∧ Seg52.relationRow6338 rho ∧ Seg52.relationRow6339 rho ∧ Seg52.relationRow6340 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340⟩

theorem seg52Out0_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49479 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50715, rho 50716⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50715, rho 50716⟩
        ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50728, rho 50729⟩ := by
  obtain ⟨r6328, r6329, r6330, r6331, r6332, r6333, r6334, r6335, r6336, r6337, r6338, r6339, r6340⟩ := seg52Out0_rows93 rho h
  unfold Seg52.relationRow6328 at r6328

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6328

  unfold Seg52.relationRow6329 at r6329

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6329

  unfold Seg52.relationRow6330 at r6330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6330

  unfold Seg52.relationRow6331 at r6331

  unfold Seg52.relationRow6332 at r6332

  unfold Seg52.relationRow6333 at r6333

  unfold Seg52.relationRow6334 at r6334

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6334

  unfold Seg52.relationRow6335 at r6335

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6335

  unfold Seg52.relationRow6336 at r6336

  unfold Seg52.relationRow6337 at r6337

  unfold Seg52.relationRow6338 at r6338

  unfold Seg52.relationRow6339 at r6339

  unfold Seg52.relationRow6340 at r6340

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX94 rho = seg52Out0AccX93 rho + rho 50723 := by
    unfold seg52Out0AccX94 seg52Out0AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 93]

    ring

  have hnexty : seg52Out0AccY94 rho = seg52Out0AccY93 rho + rho 50724 := by
    unfold seg52Out0AccY94 seg52Out0AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 93]

    ring

  have ha0 : (rho 50715 + rho 50716) * (seg52Out0AccX93 rho + seg52Out0AccY93 rho) = rho 50717 := by
    unfold seg52Out0AccX93 seg52Out0AccY93
    linear_combination r6328
  have ha1 : rho 50716 * seg52Out0AccX93 rho = rho 50718 := by
    unfold seg52Out0AccX93
    linear_combination r6329
  have ha2 : rho 50715 * seg52Out0AccY93 rho = rho 50719 := by
    unfold seg52Out0AccY93
    linear_combination r6330
  have ha3 : 3021 * rho 50718 * rho 50719 = rho 50720 := by
    linear_combination r6331
  have ha4 : rho 50721 * (1 + rho 50720) = rho 50718 + rho 50719 := by
    linear_combination r6332
  have ha5 : rho 50722 * (1 - rho 50720) = rho 50717 - rho 50718 - rho 50719 := by
    linear_combination r6333
  have haddx :
      rho 50721 * (1 + 3021 * (rho 50716 * seg52Out0AccX93 rho) * (rho 50715 * seg52Out0AccY93 rho)) =
        rho 50716 * seg52Out0AccX93 rho + rho 50715 * seg52Out0AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50722 * (1 - 3021 * (rho 50716 * seg52Out0AccX93 rho) * (rho 50715 * seg52Out0AccY93 rho)) =
        (-1) * (rho 50716 * seg52Out0AccX93 rho) - rho 50715 * seg52Out0AccY93 rho +
          (seg52Out0AccY93 rho - seg52Out0AccX93 rho * (-1)) * (rho 50715 + rho 50716) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50722 * (1 - rho 50720) = rho 50717 - rho 50718 - rho 50719 := ha5
      _ = (-1) * rho 50718 - rho 50719 + (seg52Out0AccY93 rho - seg52Out0AccX93 rho * (-1)) *
          (rho 50715 + rho 50716) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX94 rho = seg52Out0AccX93 rho - Bool.toZMod bit * (seg52Out0AccX93 rho - rho 50721) := by
    have hd : rho 50723 = Bool.toZMod bit * (rho 50721 - seg52Out0AccX93 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX93
      linear_combination -r6334
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY94 rho = seg52Out0AccY93 rho - Bool.toZMod bit * (seg52Out0AccY93 rho - rho 50722) := by
    have hd : rho 50724 = Bool.toZMod bit * (rho 50722 - seg52Out0AccY93 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY93
      linear_combination -r6335
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50715 * rho 50716 = rho 50725 := by linear_combination r6336
  have hd1 : rho 50715 * rho 50715 = rho 50726 := by linear_combination r6337
  have hd2 : rho 50716 * rho 50716 = rho 50727 := by linear_combination r6338
  have hd3 : rho 50728 * (rho 50716 * rho 50716 + rho 50715 * rho 50715 * (-1)) =
      2 * (rho 50715 * rho 50716) := by
    rw [hd0, hd1, hd2]
    linear_combination r6339
  have hd4 : rho 50729 * (2 - (rho 50716 * rho 50716 + rho 50715 * rho 50715 * (-1))) =
      rho 50716 * rho 50716 - rho 50715 * rho 50715 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6340
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50715, rho 50716⟩
    ⟨rho 50721, rho 50722⟩ ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50728, rho 50729⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6341 rho ∧ Seg52.relationRow6342 rho ∧ Seg52.relationRow6343 rho ∧ Seg52.relationRow6344 rho ∧ Seg52.relationRow6345 rho ∧ Seg52.relationRow6346 rho ∧ Seg52.relationRow6347 rho ∧ Seg52.relationRow6348 rho ∧ Seg52.relationRow6349 rho ∧ Seg52.relationRow6350 rho ∧ Seg52.relationRow6351 rho ∧ Seg52.relationRow6352 rho ∧ Seg52.relationRow6353 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353⟩

theorem seg52Out0_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49480 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50728, rho 50729⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50728, rho 50729⟩
        ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50741, rho 50742⟩ := by
  obtain ⟨r6341, r6342, r6343, r6344, r6345, r6346, r6347, r6348, r6349, r6350, r6351, r6352, r6353⟩ := seg52Out0_rows94 rho h
  unfold Seg52.relationRow6341 at r6341

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6341

  unfold Seg52.relationRow6342 at r6342

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6342

  unfold Seg52.relationRow6343 at r6343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6343

  unfold Seg52.relationRow6344 at r6344

  unfold Seg52.relationRow6345 at r6345

  unfold Seg52.relationRow6346 at r6346

  unfold Seg52.relationRow6347 at r6347

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6347

  unfold Seg52.relationRow6348 at r6348

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6348

  unfold Seg52.relationRow6349 at r6349

  unfold Seg52.relationRow6350 at r6350

  unfold Seg52.relationRow6351 at r6351

  unfold Seg52.relationRow6352 at r6352

  unfold Seg52.relationRow6353 at r6353

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX95 rho = seg52Out0AccX94 rho + rho 50736 := by
    unfold seg52Out0AccX95 seg52Out0AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 94]

    ring

  have hnexty : seg52Out0AccY95 rho = seg52Out0AccY94 rho + rho 50737 := by
    unfold seg52Out0AccY95 seg52Out0AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 94]

    ring

  have ha0 : (rho 50728 + rho 50729) * (seg52Out0AccX94 rho + seg52Out0AccY94 rho) = rho 50730 := by
    unfold seg52Out0AccX94 seg52Out0AccY94
    linear_combination r6341
  have ha1 : rho 50729 * seg52Out0AccX94 rho = rho 50731 := by
    unfold seg52Out0AccX94
    linear_combination r6342
  have ha2 : rho 50728 * seg52Out0AccY94 rho = rho 50732 := by
    unfold seg52Out0AccY94
    linear_combination r6343
  have ha3 : 3021 * rho 50731 * rho 50732 = rho 50733 := by
    linear_combination r6344
  have ha4 : rho 50734 * (1 + rho 50733) = rho 50731 + rho 50732 := by
    linear_combination r6345
  have ha5 : rho 50735 * (1 - rho 50733) = rho 50730 - rho 50731 - rho 50732 := by
    linear_combination r6346
  have haddx :
      rho 50734 * (1 + 3021 * (rho 50729 * seg52Out0AccX94 rho) * (rho 50728 * seg52Out0AccY94 rho)) =
        rho 50729 * seg52Out0AccX94 rho + rho 50728 * seg52Out0AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50735 * (1 - 3021 * (rho 50729 * seg52Out0AccX94 rho) * (rho 50728 * seg52Out0AccY94 rho)) =
        (-1) * (rho 50729 * seg52Out0AccX94 rho) - rho 50728 * seg52Out0AccY94 rho +
          (seg52Out0AccY94 rho - seg52Out0AccX94 rho * (-1)) * (rho 50728 + rho 50729) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50735 * (1 - rho 50733) = rho 50730 - rho 50731 - rho 50732 := ha5
      _ = (-1) * rho 50731 - rho 50732 + (seg52Out0AccY94 rho - seg52Out0AccX94 rho * (-1)) *
          (rho 50728 + rho 50729) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX95 rho = seg52Out0AccX94 rho - Bool.toZMod bit * (seg52Out0AccX94 rho - rho 50734) := by
    have hd : rho 50736 = Bool.toZMod bit * (rho 50734 - seg52Out0AccX94 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX94
      linear_combination -r6347
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY95 rho = seg52Out0AccY94 rho - Bool.toZMod bit * (seg52Out0AccY94 rho - rho 50735) := by
    have hd : rho 50737 = Bool.toZMod bit * (rho 50735 - seg52Out0AccY94 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY94
      linear_combination -r6348
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50728 * rho 50729 = rho 50738 := by linear_combination r6349
  have hd1 : rho 50728 * rho 50728 = rho 50739 := by linear_combination r6350
  have hd2 : rho 50729 * rho 50729 = rho 50740 := by linear_combination r6351
  have hd3 : rho 50741 * (rho 50729 * rho 50729 + rho 50728 * rho 50728 * (-1)) =
      2 * (rho 50728 * rho 50729) := by
    rw [hd0, hd1, hd2]
    linear_combination r6352
  have hd4 : rho 50742 * (2 - (rho 50729 * rho 50729 + rho 50728 * rho 50728 * (-1))) =
      rho 50729 * rho 50729 - rho 50728 * rho 50728 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6353
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50728, rho 50729⟩
    ⟨rho 50734, rho 50735⟩ ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50741, rho 50742⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6354 rho ∧ Seg52.relationRow6355 rho ∧ Seg52.relationRow6356 rho ∧ Seg52.relationRow6357 rho ∧ Seg52.relationRow6358 rho ∧ Seg52.relationRow6359 rho ∧ Seg52.relationRow6360 rho ∧ Seg52.relationRow6361 rho ∧ Seg52.relationRow6362 rho ∧ Seg52.relationRow6363 rho ∧ Seg52.relationRow6364 rho ∧ Seg52.relationRow6365 rho ∧ Seg52.relationRow6366 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366⟩

theorem seg52Out0_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49481 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50741, rho 50742⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50741, rho 50742⟩
        ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50754, rho 50755⟩ := by
  obtain ⟨r6354, r6355, r6356, r6357, r6358, r6359, r6360, r6361, r6362, r6363, r6364, r6365, r6366⟩ := seg52Out0_rows95 rho h
  unfold Seg52.relationRow6354 at r6354

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6354

  unfold Seg52.relationRow6355 at r6355

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6355

  unfold Seg52.relationRow6356 at r6356

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6356

  unfold Seg52.relationRow6357 at r6357

  unfold Seg52.relationRow6358 at r6358

  unfold Seg52.relationRow6359 at r6359

  unfold Seg52.relationRow6360 at r6360

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6360

  unfold Seg52.relationRow6361 at r6361

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6361

  unfold Seg52.relationRow6362 at r6362

  unfold Seg52.relationRow6363 at r6363

  unfold Seg52.relationRow6364 at r6364

  unfold Seg52.relationRow6365 at r6365

  unfold Seg52.relationRow6366 at r6366

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX96 rho = seg52Out0AccX95 rho + rho 50749 := by
    unfold seg52Out0AccX96 seg52Out0AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 95]

    ring

  have hnexty : seg52Out0AccY96 rho = seg52Out0AccY95 rho + rho 50750 := by
    unfold seg52Out0AccY96 seg52Out0AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 95]

    ring

  have ha0 : (rho 50741 + rho 50742) * (seg52Out0AccX95 rho + seg52Out0AccY95 rho) = rho 50743 := by
    unfold seg52Out0AccX95 seg52Out0AccY95
    linear_combination r6354
  have ha1 : rho 50742 * seg52Out0AccX95 rho = rho 50744 := by
    unfold seg52Out0AccX95
    linear_combination r6355
  have ha2 : rho 50741 * seg52Out0AccY95 rho = rho 50745 := by
    unfold seg52Out0AccY95
    linear_combination r6356
  have ha3 : 3021 * rho 50744 * rho 50745 = rho 50746 := by
    linear_combination r6357
  have ha4 : rho 50747 * (1 + rho 50746) = rho 50744 + rho 50745 := by
    linear_combination r6358
  have ha5 : rho 50748 * (1 - rho 50746) = rho 50743 - rho 50744 - rho 50745 := by
    linear_combination r6359
  have haddx :
      rho 50747 * (1 + 3021 * (rho 50742 * seg52Out0AccX95 rho) * (rho 50741 * seg52Out0AccY95 rho)) =
        rho 50742 * seg52Out0AccX95 rho + rho 50741 * seg52Out0AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50748 * (1 - 3021 * (rho 50742 * seg52Out0AccX95 rho) * (rho 50741 * seg52Out0AccY95 rho)) =
        (-1) * (rho 50742 * seg52Out0AccX95 rho) - rho 50741 * seg52Out0AccY95 rho +
          (seg52Out0AccY95 rho - seg52Out0AccX95 rho * (-1)) * (rho 50741 + rho 50742) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50748 * (1 - rho 50746) = rho 50743 - rho 50744 - rho 50745 := ha5
      _ = (-1) * rho 50744 - rho 50745 + (seg52Out0AccY95 rho - seg52Out0AccX95 rho * (-1)) *
          (rho 50741 + rho 50742) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX96 rho = seg52Out0AccX95 rho - Bool.toZMod bit * (seg52Out0AccX95 rho - rho 50747) := by
    have hd : rho 50749 = Bool.toZMod bit * (rho 50747 - seg52Out0AccX95 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX95
      linear_combination -r6360
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY96 rho = seg52Out0AccY95 rho - Bool.toZMod bit * (seg52Out0AccY95 rho - rho 50748) := by
    have hd : rho 50750 = Bool.toZMod bit * (rho 50748 - seg52Out0AccY95 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY95
      linear_combination -r6361
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50741 * rho 50742 = rho 50751 := by linear_combination r6362
  have hd1 : rho 50741 * rho 50741 = rho 50752 := by linear_combination r6363
  have hd2 : rho 50742 * rho 50742 = rho 50753 := by linear_combination r6364
  have hd3 : rho 50754 * (rho 50742 * rho 50742 + rho 50741 * rho 50741 * (-1)) =
      2 * (rho 50741 * rho 50742) := by
    rw [hd0, hd1, hd2]
    linear_combination r6365
  have hd4 : rho 50755 * (2 - (rho 50742 * rho 50742 + rho 50741 * rho 50741 * (-1))) =
      rho 50742 * rho 50742 - rho 50741 * rho 50741 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6366
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50741, rho 50742⟩
    ⟨rho 50747, rho 50748⟩ ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50754, rho 50755⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6367 rho ∧ Seg52.relationRow6368 rho ∧ Seg52.relationRow6369 rho ∧ Seg52.relationRow6370 rho ∧ Seg52.relationRow6371 rho ∧ Seg52.relationRow6372 rho ∧ Seg52.relationRow6373 rho ∧ Seg52.relationRow6374 rho ∧ Seg52.relationRow6375 rho ∧ Seg52.relationRow6376 rho ∧ Seg52.relationRow6377 rho ∧ Seg52.relationRow6378 rho ∧ Seg52.relationRow6379 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379⟩

theorem seg52Out0_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49482 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50754, rho 50755⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50754, rho 50755⟩
        ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50767, rho 50768⟩ := by
  obtain ⟨r6367, r6368, r6369, r6370, r6371, r6372, r6373, r6374, r6375, r6376, r6377, r6378, r6379⟩ := seg52Out0_rows96 rho h
  unfold Seg52.relationRow6367 at r6367

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6367

  unfold Seg52.relationRow6368 at r6368

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6368

  unfold Seg52.relationRow6369 at r6369

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6369

  unfold Seg52.relationRow6370 at r6370

  unfold Seg52.relationRow6371 at r6371

  unfold Seg52.relationRow6372 at r6372

  unfold Seg52.relationRow6373 at r6373

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6373

  unfold Seg52.relationRow6374 at r6374

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6374

  unfold Seg52.relationRow6375 at r6375

  unfold Seg52.relationRow6376 at r6376

  unfold Seg52.relationRow6377 at r6377

  unfold Seg52.relationRow6378 at r6378

  unfold Seg52.relationRow6379 at r6379

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX97 rho = seg52Out0AccX96 rho + rho 50762 := by
    unfold seg52Out0AccX97 seg52Out0AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 96]

    ring

  have hnexty : seg52Out0AccY97 rho = seg52Out0AccY96 rho + rho 50763 := by
    unfold seg52Out0AccY97 seg52Out0AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 96]

    ring

  have ha0 : (rho 50754 + rho 50755) * (seg52Out0AccX96 rho + seg52Out0AccY96 rho) = rho 50756 := by
    unfold seg52Out0AccX96 seg52Out0AccY96
    linear_combination r6367
  have ha1 : rho 50755 * seg52Out0AccX96 rho = rho 50757 := by
    unfold seg52Out0AccX96
    linear_combination r6368
  have ha2 : rho 50754 * seg52Out0AccY96 rho = rho 50758 := by
    unfold seg52Out0AccY96
    linear_combination r6369
  have ha3 : 3021 * rho 50757 * rho 50758 = rho 50759 := by
    linear_combination r6370
  have ha4 : rho 50760 * (1 + rho 50759) = rho 50757 + rho 50758 := by
    linear_combination r6371
  have ha5 : rho 50761 * (1 - rho 50759) = rho 50756 - rho 50757 - rho 50758 := by
    linear_combination r6372
  have haddx :
      rho 50760 * (1 + 3021 * (rho 50755 * seg52Out0AccX96 rho) * (rho 50754 * seg52Out0AccY96 rho)) =
        rho 50755 * seg52Out0AccX96 rho + rho 50754 * seg52Out0AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50761 * (1 - 3021 * (rho 50755 * seg52Out0AccX96 rho) * (rho 50754 * seg52Out0AccY96 rho)) =
        (-1) * (rho 50755 * seg52Out0AccX96 rho) - rho 50754 * seg52Out0AccY96 rho +
          (seg52Out0AccY96 rho - seg52Out0AccX96 rho * (-1)) * (rho 50754 + rho 50755) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50761 * (1 - rho 50759) = rho 50756 - rho 50757 - rho 50758 := ha5
      _ = (-1) * rho 50757 - rho 50758 + (seg52Out0AccY96 rho - seg52Out0AccX96 rho * (-1)) *
          (rho 50754 + rho 50755) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX97 rho = seg52Out0AccX96 rho - Bool.toZMod bit * (seg52Out0AccX96 rho - rho 50760) := by
    have hd : rho 50762 = Bool.toZMod bit * (rho 50760 - seg52Out0AccX96 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX96
      linear_combination -r6373
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY97 rho = seg52Out0AccY96 rho - Bool.toZMod bit * (seg52Out0AccY96 rho - rho 50761) := by
    have hd : rho 50763 = Bool.toZMod bit * (rho 50761 - seg52Out0AccY96 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY96
      linear_combination -r6374
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50754 * rho 50755 = rho 50764 := by linear_combination r6375
  have hd1 : rho 50754 * rho 50754 = rho 50765 := by linear_combination r6376
  have hd2 : rho 50755 * rho 50755 = rho 50766 := by linear_combination r6377
  have hd3 : rho 50767 * (rho 50755 * rho 50755 + rho 50754 * rho 50754 * (-1)) =
      2 * (rho 50754 * rho 50755) := by
    rw [hd0, hd1, hd2]
    linear_combination r6378
  have hd4 : rho 50768 * (2 - (rho 50755 * rho 50755 + rho 50754 * rho 50754 * (-1))) =
      rho 50755 * rho 50755 - rho 50754 * rho 50754 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6379
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50754, rho 50755⟩
    ⟨rho 50760, rho 50761⟩ ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50767, rho 50768⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6380 rho ∧ Seg52.relationRow6381 rho ∧ Seg52.relationRow6382 rho ∧ Seg52.relationRow6383 rho ∧ Seg52.relationRow6384 rho ∧ Seg52.relationRow6385 rho ∧ Seg52.relationRow6386 rho ∧ Seg52.relationRow6387 rho ∧ Seg52.relationRow6388 rho ∧ Seg52.relationRow6389 rho ∧ Seg52.relationRow6390 rho ∧ Seg52.relationRow6391 rho ∧ Seg52.relationRow6392 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392, _, _, _, _, _, _, _⟩

  exact ⟨r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392⟩

theorem seg52Out0_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49483 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50767, rho 50768⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50767, rho 50768⟩
        ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50780, rho 50781⟩ := by
  obtain ⟨r6380, r6381, r6382, r6383, r6384, r6385, r6386, r6387, r6388, r6389, r6390, r6391, r6392⟩ := seg52Out0_rows97 rho h
  unfold Seg52.relationRow6380 at r6380

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6380

  unfold Seg52.relationRow6381 at r6381

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6381

  unfold Seg52.relationRow6382 at r6382

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6382

  unfold Seg52.relationRow6383 at r6383

  unfold Seg52.relationRow6384 at r6384

  unfold Seg52.relationRow6385 at r6385

  unfold Seg52.relationRow6386 at r6386

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6386

  unfold Seg52.relationRow6387 at r6387

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6387

  unfold Seg52.relationRow6388 at r6388

  unfold Seg52.relationRow6389 at r6389

  unfold Seg52.relationRow6390 at r6390

  unfold Seg52.relationRow6391 at r6391

  unfold Seg52.relationRow6392 at r6392

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX98 rho = seg52Out0AccX97 rho + rho 50775 := by
    unfold seg52Out0AccX98 seg52Out0AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 97]

    ring

  have hnexty : seg52Out0AccY98 rho = seg52Out0AccY97 rho + rho 50776 := by
    unfold seg52Out0AccY98 seg52Out0AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 97]

    ring

  have ha0 : (rho 50767 + rho 50768) * (seg52Out0AccX97 rho + seg52Out0AccY97 rho) = rho 50769 := by
    unfold seg52Out0AccX97 seg52Out0AccY97
    linear_combination r6380
  have ha1 : rho 50768 * seg52Out0AccX97 rho = rho 50770 := by
    unfold seg52Out0AccX97
    linear_combination r6381
  have ha2 : rho 50767 * seg52Out0AccY97 rho = rho 50771 := by
    unfold seg52Out0AccY97
    linear_combination r6382
  have ha3 : 3021 * rho 50770 * rho 50771 = rho 50772 := by
    linear_combination r6383
  have ha4 : rho 50773 * (1 + rho 50772) = rho 50770 + rho 50771 := by
    linear_combination r6384
  have ha5 : rho 50774 * (1 - rho 50772) = rho 50769 - rho 50770 - rho 50771 := by
    linear_combination r6385
  have haddx :
      rho 50773 * (1 + 3021 * (rho 50768 * seg52Out0AccX97 rho) * (rho 50767 * seg52Out0AccY97 rho)) =
        rho 50768 * seg52Out0AccX97 rho + rho 50767 * seg52Out0AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50774 * (1 - 3021 * (rho 50768 * seg52Out0AccX97 rho) * (rho 50767 * seg52Out0AccY97 rho)) =
        (-1) * (rho 50768 * seg52Out0AccX97 rho) - rho 50767 * seg52Out0AccY97 rho +
          (seg52Out0AccY97 rho - seg52Out0AccX97 rho * (-1)) * (rho 50767 + rho 50768) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50774 * (1 - rho 50772) = rho 50769 - rho 50770 - rho 50771 := ha5
      _ = (-1) * rho 50770 - rho 50771 + (seg52Out0AccY97 rho - seg52Out0AccX97 rho * (-1)) *
          (rho 50767 + rho 50768) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX98 rho = seg52Out0AccX97 rho - Bool.toZMod bit * (seg52Out0AccX97 rho - rho 50773) := by
    have hd : rho 50775 = Bool.toZMod bit * (rho 50773 - seg52Out0AccX97 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX97
      linear_combination -r6386
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY98 rho = seg52Out0AccY97 rho - Bool.toZMod bit * (seg52Out0AccY97 rho - rho 50774) := by
    have hd : rho 50776 = Bool.toZMod bit * (rho 50774 - seg52Out0AccY97 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY97
      linear_combination -r6387
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50767 * rho 50768 = rho 50777 := by linear_combination r6388
  have hd1 : rho 50767 * rho 50767 = rho 50778 := by linear_combination r6389
  have hd2 : rho 50768 * rho 50768 = rho 50779 := by linear_combination r6390
  have hd3 : rho 50780 * (rho 50768 * rho 50768 + rho 50767 * rho 50767 * (-1)) =
      2 * (rho 50767 * rho 50768) := by
    rw [hd0, hd1, hd2]
    linear_combination r6391
  have hd4 : rho 50781 * (2 - (rho 50768 * rho 50768 + rho 50767 * rho 50767 * (-1))) =
      rho 50768 * rho 50768 - rho 50767 * rho 50767 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6392
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50767, rho 50768⟩
    ⟨rho 50773, rho 50774⟩ ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50780, rho 50781⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6393 rho ∧ Seg52.relationRow6394 rho ∧ Seg52.relationRow6395 rho ∧ Seg52.relationRow6396 rho ∧ Seg52.relationRow6397 rho ∧ Seg52.relationRow6398 rho ∧ Seg52.relationRow6399 rho ∧ Seg52.relationRow6400 rho ∧ Seg52.relationRow6401 rho ∧ Seg52.relationRow6402 rho ∧ Seg52.relationRow6403 rho ∧ Seg52.relationRow6404 rho ∧ Seg52.relationRow6405 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p79,

    p80, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart79 at p79

  rcases p79 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6393, r6394, r6395, r6396, r6397, r6398, r6399⟩

  unfold Seg52.relationPart80 at p80

  rcases p80 with ⟨r6400, r6401, r6402, r6403, r6404, r6405, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6393, r6394, r6395, r6396, r6397, r6398, r6399, r6400, r6401, r6402, r6403, r6404, r6405⟩

theorem seg52Out0_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49484 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50780, rho 50781⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50780, rho 50781⟩
        ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50793, rho 50794⟩ := by
  obtain ⟨r6393, r6394, r6395, r6396, r6397, r6398, r6399, r6400, r6401, r6402, r6403, r6404, r6405⟩ := seg52Out0_rows98 rho h
  unfold Seg52.relationRow6393 at r6393

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6393

  unfold Seg52.relationRow6394 at r6394

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6394

  unfold Seg52.relationRow6395 at r6395

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6395

  unfold Seg52.relationRow6396 at r6396

  unfold Seg52.relationRow6397 at r6397

  unfold Seg52.relationRow6398 at r6398

  unfold Seg52.relationRow6399 at r6399

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6399

  unfold Seg52.relationRow6400 at r6400

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6400

  unfold Seg52.relationRow6401 at r6401

  unfold Seg52.relationRow6402 at r6402

  unfold Seg52.relationRow6403 at r6403

  unfold Seg52.relationRow6404 at r6404

  unfold Seg52.relationRow6405 at r6405

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX99 rho = seg52Out0AccX98 rho + rho 50788 := by
    unfold seg52Out0AccX99 seg52Out0AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 98]

    ring

  have hnexty : seg52Out0AccY99 rho = seg52Out0AccY98 rho + rho 50789 := by
    unfold seg52Out0AccY99 seg52Out0AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 98]

    ring

  have ha0 : (rho 50780 + rho 50781) * (seg52Out0AccX98 rho + seg52Out0AccY98 rho) = rho 50782 := by
    unfold seg52Out0AccX98 seg52Out0AccY98
    linear_combination r6393
  have ha1 : rho 50781 * seg52Out0AccX98 rho = rho 50783 := by
    unfold seg52Out0AccX98
    linear_combination r6394
  have ha2 : rho 50780 * seg52Out0AccY98 rho = rho 50784 := by
    unfold seg52Out0AccY98
    linear_combination r6395
  have ha3 : 3021 * rho 50783 * rho 50784 = rho 50785 := by
    linear_combination r6396
  have ha4 : rho 50786 * (1 + rho 50785) = rho 50783 + rho 50784 := by
    linear_combination r6397
  have ha5 : rho 50787 * (1 - rho 50785) = rho 50782 - rho 50783 - rho 50784 := by
    linear_combination r6398
  have haddx :
      rho 50786 * (1 + 3021 * (rho 50781 * seg52Out0AccX98 rho) * (rho 50780 * seg52Out0AccY98 rho)) =
        rho 50781 * seg52Out0AccX98 rho + rho 50780 * seg52Out0AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50787 * (1 - 3021 * (rho 50781 * seg52Out0AccX98 rho) * (rho 50780 * seg52Out0AccY98 rho)) =
        (-1) * (rho 50781 * seg52Out0AccX98 rho) - rho 50780 * seg52Out0AccY98 rho +
          (seg52Out0AccY98 rho - seg52Out0AccX98 rho * (-1)) * (rho 50780 + rho 50781) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50787 * (1 - rho 50785) = rho 50782 - rho 50783 - rho 50784 := ha5
      _ = (-1) * rho 50783 - rho 50784 + (seg52Out0AccY98 rho - seg52Out0AccX98 rho * (-1)) *
          (rho 50780 + rho 50781) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX99 rho = seg52Out0AccX98 rho - Bool.toZMod bit * (seg52Out0AccX98 rho - rho 50786) := by
    have hd : rho 50788 = Bool.toZMod bit * (rho 50786 - seg52Out0AccX98 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX98
      linear_combination -r6399
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY99 rho = seg52Out0AccY98 rho - Bool.toZMod bit * (seg52Out0AccY98 rho - rho 50787) := by
    have hd : rho 50789 = Bool.toZMod bit * (rho 50787 - seg52Out0AccY98 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY98
      linear_combination -r6400
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50780 * rho 50781 = rho 50790 := by linear_combination r6401
  have hd1 : rho 50780 * rho 50780 = rho 50791 := by linear_combination r6402
  have hd2 : rho 50781 * rho 50781 = rho 50792 := by linear_combination r6403
  have hd3 : rho 50793 * (rho 50781 * rho 50781 + rho 50780 * rho 50780 * (-1)) =
      2 * (rho 50780 * rho 50781) := by
    rw [hd0, hd1, hd2]
    linear_combination r6404
  have hd4 : rho 50794 * (2 - (rho 50781 * rho 50781 + rho 50780 * rho 50780 * (-1))) =
      rho 50781 * rho 50781 - rho 50780 * rho 50780 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6405
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50780, rho 50781⟩
    ⟨rho 50786, rho 50787⟩ ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50793, rho 50794⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg52Out0_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg52Out0_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg52Out0_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg52Out0_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg52Out0_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg52Out0_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg52Out0_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg52Out0_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg52Out0_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg52Out0_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
