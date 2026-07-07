import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4259 rho ∧ Seg52.relationRow4260 rho ∧ Seg52.relationRow4261 rho ∧ Seg52.relationRow4262 rho ∧ Seg52.relationRow4263 rho ∧ Seg52.relationRow4264 rho ∧ Seg52.relationRow4265 rho ∧ Seg52.relationRow4266 rho ∧ Seg52.relationRow4267 rho ∧ Seg52.relationRow4268 rho ∧ Seg52.relationRow4269 rho ∧ Seg52.relationRow4270 rho ∧ Seg52.relationRow4271 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271⟩

theorem seg52In1_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48647, rho 48648⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 48647, rho 48648⟩
        ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 48660, rho 48661⟩ := by
  obtain ⟨r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271⟩ := seg52In1_rows121 rho h
  unfold Seg52.relationRow4259 at r4259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4259

  unfold Seg52.relationRow4260 at r4260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4260

  unfold Seg52.relationRow4261 at r4261

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4261

  unfold Seg52.relationRow4262 at r4262

  unfold Seg52.relationRow4263 at r4263

  unfold Seg52.relationRow4264 at r4264

  unfold Seg52.relationRow4265 at r4265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4265

  unfold Seg52.relationRow4266 at r4266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266

  unfold Seg52.relationRow4267 at r4267

  unfold Seg52.relationRow4268 at r4268

  unfold Seg52.relationRow4269 at r4269

  unfold Seg52.relationRow4270 at r4270

  unfold Seg52.relationRow4271 at r4271

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX122 rho = seg52In1AccX121 rho + rho 48655 := by
    unfold seg52In1AccX122 seg52In1AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 121]

    ring

  have hnexty : seg52In1AccY122 rho = seg52In1AccY121 rho + rho 48656 := by
    unfold seg52In1AccY122 seg52In1AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 121]

    ring

  have ha0 : (rho 48647 + rho 48648) * (seg52In1AccX121 rho + seg52In1AccY121 rho) = rho 48649 := by
    unfold seg52In1AccX121 seg52In1AccY121
    linear_combination r4259
  have ha1 : rho 48648 * seg52In1AccX121 rho = rho 48650 := by
    unfold seg52In1AccX121
    linear_combination r4260
  have ha2 : rho 48647 * seg52In1AccY121 rho = rho 48651 := by
    unfold seg52In1AccY121
    linear_combination r4261
  have ha3 : 3021 * rho 48650 * rho 48651 = rho 48652 := by
    linear_combination r4262
  have ha4 : rho 48653 * (1 + rho 48652) = rho 48650 + rho 48651 := by
    linear_combination r4263
  have ha5 : rho 48654 * (1 - rho 48652) = rho 48649 - rho 48650 - rho 48651 := by
    linear_combination r4264
  have haddx :
      rho 48653 * (1 + 3021 * (rho 48648 * seg52In1AccX121 rho) * (rho 48647 * seg52In1AccY121 rho)) =
        rho 48648 * seg52In1AccX121 rho + rho 48647 * seg52In1AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48654 * (1 - 3021 * (rho 48648 * seg52In1AccX121 rho) * (rho 48647 * seg52In1AccY121 rho)) =
        (-1) * (rho 48648 * seg52In1AccX121 rho) - rho 48647 * seg52In1AccY121 rho +
          (seg52In1AccY121 rho - seg52In1AccX121 rho * (-1)) * (rho 48647 + rho 48648) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48654 * (1 - rho 48652) = rho 48649 - rho 48650 - rho 48651 := ha5
      _ = (-1) * rho 48650 - rho 48651 + (seg52In1AccY121 rho - seg52In1AccX121 rho * (-1)) *
          (rho 48647 + rho 48648) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX122 rho = seg52In1AccX121 rho - Bool.toZMod bit * (seg52In1AccX121 rho - rho 48653) := by
    have hd : rho 48655 = Bool.toZMod bit * (rho 48653 - seg52In1AccX121 rho) := by
      rw [← hbit]
      unfold seg52In1AccX121
      linear_combination -r4265
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY122 rho = seg52In1AccY121 rho - Bool.toZMod bit * (seg52In1AccY121 rho - rho 48654) := by
    have hd : rho 48656 = Bool.toZMod bit * (rho 48654 - seg52In1AccY121 rho) := by
      rw [← hbit]
      unfold seg52In1AccY121
      linear_combination -r4266
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48647 * rho 48648 = rho 48657 := by linear_combination r4267
  have hd1 : rho 48647 * rho 48647 = rho 48658 := by linear_combination r4268
  have hd2 : rho 48648 * rho 48648 = rho 48659 := by linear_combination r4269
  have hd3 : rho 48660 * (rho 48648 * rho 48648 + rho 48647 * rho 48647 * (-1)) =
      2 * (rho 48647 * rho 48648) := by
    rw [hd0, hd1, hd2]
    linear_combination r4270
  have hd4 : rho 48661 * (2 - (rho 48648 * rho 48648 + rho 48647 * rho 48647 * (-1))) =
      rho 48648 * rho 48648 - rho 48647 * rho 48647 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4271
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 48647, rho 48648⟩
    ⟨rho 48653, rho 48654⟩ ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 48660, rho 48661⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4272 rho ∧ Seg52.relationRow4273 rho ∧ Seg52.relationRow4274 rho ∧ Seg52.relationRow4275 rho ∧ Seg52.relationRow4276 rho ∧ Seg52.relationRow4277 rho ∧ Seg52.relationRow4278 rho ∧ Seg52.relationRow4279 rho ∧ Seg52.relationRow4280 rho ∧ Seg52.relationRow4281 rho ∧ Seg52.relationRow4282 rho ∧ Seg52.relationRow4283 rho ∧ Seg52.relationRow4284 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284⟩

theorem seg52In1_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48660, rho 48661⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 48660, rho 48661⟩
        ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 48673, rho 48674⟩ := by
  obtain ⟨r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284⟩ := seg52In1_rows122 rho h
  unfold Seg52.relationRow4272 at r4272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4272

  unfold Seg52.relationRow4273 at r4273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4273

  unfold Seg52.relationRow4274 at r4274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4274

  unfold Seg52.relationRow4275 at r4275

  unfold Seg52.relationRow4276 at r4276

  unfold Seg52.relationRow4277 at r4277

  unfold Seg52.relationRow4278 at r4278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4278

  unfold Seg52.relationRow4279 at r4279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279

  unfold Seg52.relationRow4280 at r4280

  unfold Seg52.relationRow4281 at r4281

  unfold Seg52.relationRow4282 at r4282

  unfold Seg52.relationRow4283 at r4283

  unfold Seg52.relationRow4284 at r4284

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX123 rho = seg52In1AccX122 rho + rho 48668 := by
    unfold seg52In1AccX123 seg52In1AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 122]

    ring

  have hnexty : seg52In1AccY123 rho = seg52In1AccY122 rho + rho 48669 := by
    unfold seg52In1AccY123 seg52In1AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 122]

    ring

  have ha0 : (rho 48660 + rho 48661) * (seg52In1AccX122 rho + seg52In1AccY122 rho) = rho 48662 := by
    unfold seg52In1AccX122 seg52In1AccY122
    linear_combination r4272
  have ha1 : rho 48661 * seg52In1AccX122 rho = rho 48663 := by
    unfold seg52In1AccX122
    linear_combination r4273
  have ha2 : rho 48660 * seg52In1AccY122 rho = rho 48664 := by
    unfold seg52In1AccY122
    linear_combination r4274
  have ha3 : 3021 * rho 48663 * rho 48664 = rho 48665 := by
    linear_combination r4275
  have ha4 : rho 48666 * (1 + rho 48665) = rho 48663 + rho 48664 := by
    linear_combination r4276
  have ha5 : rho 48667 * (1 - rho 48665) = rho 48662 - rho 48663 - rho 48664 := by
    linear_combination r4277
  have haddx :
      rho 48666 * (1 + 3021 * (rho 48661 * seg52In1AccX122 rho) * (rho 48660 * seg52In1AccY122 rho)) =
        rho 48661 * seg52In1AccX122 rho + rho 48660 * seg52In1AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48667 * (1 - 3021 * (rho 48661 * seg52In1AccX122 rho) * (rho 48660 * seg52In1AccY122 rho)) =
        (-1) * (rho 48661 * seg52In1AccX122 rho) - rho 48660 * seg52In1AccY122 rho +
          (seg52In1AccY122 rho - seg52In1AccX122 rho * (-1)) * (rho 48660 + rho 48661) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48667 * (1 - rho 48665) = rho 48662 - rho 48663 - rho 48664 := ha5
      _ = (-1) * rho 48663 - rho 48664 + (seg52In1AccY122 rho - seg52In1AccX122 rho * (-1)) *
          (rho 48660 + rho 48661) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX123 rho = seg52In1AccX122 rho - Bool.toZMod bit * (seg52In1AccX122 rho - rho 48666) := by
    have hd : rho 48668 = Bool.toZMod bit * (rho 48666 - seg52In1AccX122 rho) := by
      rw [← hbit]
      unfold seg52In1AccX122
      linear_combination -r4278
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY123 rho = seg52In1AccY122 rho - Bool.toZMod bit * (seg52In1AccY122 rho - rho 48667) := by
    have hd : rho 48669 = Bool.toZMod bit * (rho 48667 - seg52In1AccY122 rho) := by
      rw [← hbit]
      unfold seg52In1AccY122
      linear_combination -r4279
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48660 * rho 48661 = rho 48670 := by linear_combination r4280
  have hd1 : rho 48660 * rho 48660 = rho 48671 := by linear_combination r4281
  have hd2 : rho 48661 * rho 48661 = rho 48672 := by linear_combination r4282
  have hd3 : rho 48673 * (rho 48661 * rho 48661 + rho 48660 * rho 48660 * (-1)) =
      2 * (rho 48660 * rho 48661) := by
    rw [hd0, hd1, hd2]
    linear_combination r4283
  have hd4 : rho 48674 * (2 - (rho 48661 * rho 48661 + rho 48660 * rho 48660 * (-1))) =
      rho 48661 * rho 48661 - rho 48660 * rho 48660 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4284
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 48660, rho 48661⟩
    ⟨rho 48666, rho 48667⟩ ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 48673, rho 48674⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4285 rho ∧ Seg52.relationRow4286 rho ∧ Seg52.relationRow4287 rho ∧ Seg52.relationRow4288 rho ∧ Seg52.relationRow4289 rho ∧ Seg52.relationRow4290 rho ∧ Seg52.relationRow4291 rho ∧ Seg52.relationRow4292 rho ∧ Seg52.relationRow4293 rho ∧ Seg52.relationRow4294 rho ∧ Seg52.relationRow4295 rho ∧ Seg52.relationRow4296 rho ∧ Seg52.relationRow4297 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297⟩

theorem seg52In1_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48673, rho 48674⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 48673, rho 48674⟩
        ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 48686, rho 48687⟩ := by
  obtain ⟨r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297⟩ := seg52In1_rows123 rho h
  unfold Seg52.relationRow4285 at r4285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4285

  unfold Seg52.relationRow4286 at r4286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4286

  unfold Seg52.relationRow4287 at r4287

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4287

  unfold Seg52.relationRow4288 at r4288

  unfold Seg52.relationRow4289 at r4289

  unfold Seg52.relationRow4290 at r4290

  unfold Seg52.relationRow4291 at r4291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4291

  unfold Seg52.relationRow4292 at r4292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292

  unfold Seg52.relationRow4293 at r4293

  unfold Seg52.relationRow4294 at r4294

  unfold Seg52.relationRow4295 at r4295

  unfold Seg52.relationRow4296 at r4296

  unfold Seg52.relationRow4297 at r4297

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX124 rho = seg52In1AccX123 rho + rho 48681 := by
    unfold seg52In1AccX124 seg52In1AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 123]

    ring

  have hnexty : seg52In1AccY124 rho = seg52In1AccY123 rho + rho 48682 := by
    unfold seg52In1AccY124 seg52In1AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 123]

    ring

  have ha0 : (rho 48673 + rho 48674) * (seg52In1AccX123 rho + seg52In1AccY123 rho) = rho 48675 := by
    unfold seg52In1AccX123 seg52In1AccY123
    linear_combination r4285
  have ha1 : rho 48674 * seg52In1AccX123 rho = rho 48676 := by
    unfold seg52In1AccX123
    linear_combination r4286
  have ha2 : rho 48673 * seg52In1AccY123 rho = rho 48677 := by
    unfold seg52In1AccY123
    linear_combination r4287
  have ha3 : 3021 * rho 48676 * rho 48677 = rho 48678 := by
    linear_combination r4288
  have ha4 : rho 48679 * (1 + rho 48678) = rho 48676 + rho 48677 := by
    linear_combination r4289
  have ha5 : rho 48680 * (1 - rho 48678) = rho 48675 - rho 48676 - rho 48677 := by
    linear_combination r4290
  have haddx :
      rho 48679 * (1 + 3021 * (rho 48674 * seg52In1AccX123 rho) * (rho 48673 * seg52In1AccY123 rho)) =
        rho 48674 * seg52In1AccX123 rho + rho 48673 * seg52In1AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48680 * (1 - 3021 * (rho 48674 * seg52In1AccX123 rho) * (rho 48673 * seg52In1AccY123 rho)) =
        (-1) * (rho 48674 * seg52In1AccX123 rho) - rho 48673 * seg52In1AccY123 rho +
          (seg52In1AccY123 rho - seg52In1AccX123 rho * (-1)) * (rho 48673 + rho 48674) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48680 * (1 - rho 48678) = rho 48675 - rho 48676 - rho 48677 := ha5
      _ = (-1) * rho 48676 - rho 48677 + (seg52In1AccY123 rho - seg52In1AccX123 rho * (-1)) *
          (rho 48673 + rho 48674) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX124 rho = seg52In1AccX123 rho - Bool.toZMod bit * (seg52In1AccX123 rho - rho 48679) := by
    have hd : rho 48681 = Bool.toZMod bit * (rho 48679 - seg52In1AccX123 rho) := by
      rw [← hbit]
      unfold seg52In1AccX123
      linear_combination -r4291
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY124 rho = seg52In1AccY123 rho - Bool.toZMod bit * (seg52In1AccY123 rho - rho 48680) := by
    have hd : rho 48682 = Bool.toZMod bit * (rho 48680 - seg52In1AccY123 rho) := by
      rw [← hbit]
      unfold seg52In1AccY123
      linear_combination -r4292
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48673 * rho 48674 = rho 48683 := by linear_combination r4293
  have hd1 : rho 48673 * rho 48673 = rho 48684 := by linear_combination r4294
  have hd2 : rho 48674 * rho 48674 = rho 48685 := by linear_combination r4295
  have hd3 : rho 48686 * (rho 48674 * rho 48674 + rho 48673 * rho 48673 * (-1)) =
      2 * (rho 48673 * rho 48674) := by
    rw [hd0, hd1, hd2]
    linear_combination r4296
  have hd4 : rho 48687 * (2 - (rho 48674 * rho 48674 + rho 48673 * rho 48673 * (-1))) =
      rho 48674 * rho 48674 - rho 48673 * rho 48673 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4297
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 48673, rho 48674⟩
    ⟨rho 48679, rho 48680⟩ ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 48686, rho 48687⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4298 rho ∧ Seg52.relationRow4299 rho ∧ Seg52.relationRow4300 rho ∧ Seg52.relationRow4301 rho ∧ Seg52.relationRow4302 rho ∧ Seg52.relationRow4303 rho ∧ Seg52.relationRow4304 rho ∧ Seg52.relationRow4305 rho ∧ Seg52.relationRow4306 rho ∧ Seg52.relationRow4307 rho ∧ Seg52.relationRow4308 rho ∧ Seg52.relationRow4309 rho ∧ Seg52.relationRow4310 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310⟩

theorem seg52In1_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48686, rho 48687⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 48686, rho 48687⟩
        ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 48699, rho 48700⟩ := by
  obtain ⟨r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310⟩ := seg52In1_rows124 rho h
  unfold Seg52.relationRow4298 at r4298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4298

  unfold Seg52.relationRow4299 at r4299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4299

  unfold Seg52.relationRow4300 at r4300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4300

  unfold Seg52.relationRow4301 at r4301

  unfold Seg52.relationRow4302 at r4302

  unfold Seg52.relationRow4303 at r4303

  unfold Seg52.relationRow4304 at r4304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4304

  unfold Seg52.relationRow4305 at r4305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305

  unfold Seg52.relationRow4306 at r4306

  unfold Seg52.relationRow4307 at r4307

  unfold Seg52.relationRow4308 at r4308

  unfold Seg52.relationRow4309 at r4309

  unfold Seg52.relationRow4310 at r4310

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX125 rho = seg52In1AccX124 rho + rho 48694 := by
    unfold seg52In1AccX125 seg52In1AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 124]

    ring

  have hnexty : seg52In1AccY125 rho = seg52In1AccY124 rho + rho 48695 := by
    unfold seg52In1AccY125 seg52In1AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 124]

    ring

  have ha0 : (rho 48686 + rho 48687) * (seg52In1AccX124 rho + seg52In1AccY124 rho) = rho 48688 := by
    unfold seg52In1AccX124 seg52In1AccY124
    linear_combination r4298
  have ha1 : rho 48687 * seg52In1AccX124 rho = rho 48689 := by
    unfold seg52In1AccX124
    linear_combination r4299
  have ha2 : rho 48686 * seg52In1AccY124 rho = rho 48690 := by
    unfold seg52In1AccY124
    linear_combination r4300
  have ha3 : 3021 * rho 48689 * rho 48690 = rho 48691 := by
    linear_combination r4301
  have ha4 : rho 48692 * (1 + rho 48691) = rho 48689 + rho 48690 := by
    linear_combination r4302
  have ha5 : rho 48693 * (1 - rho 48691) = rho 48688 - rho 48689 - rho 48690 := by
    linear_combination r4303
  have haddx :
      rho 48692 * (1 + 3021 * (rho 48687 * seg52In1AccX124 rho) * (rho 48686 * seg52In1AccY124 rho)) =
        rho 48687 * seg52In1AccX124 rho + rho 48686 * seg52In1AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48693 * (1 - 3021 * (rho 48687 * seg52In1AccX124 rho) * (rho 48686 * seg52In1AccY124 rho)) =
        (-1) * (rho 48687 * seg52In1AccX124 rho) - rho 48686 * seg52In1AccY124 rho +
          (seg52In1AccY124 rho - seg52In1AccX124 rho * (-1)) * (rho 48686 + rho 48687) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48693 * (1 - rho 48691) = rho 48688 - rho 48689 - rho 48690 := ha5
      _ = (-1) * rho 48689 - rho 48690 + (seg52In1AccY124 rho - seg52In1AccX124 rho * (-1)) *
          (rho 48686 + rho 48687) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX125 rho = seg52In1AccX124 rho - Bool.toZMod bit * (seg52In1AccX124 rho - rho 48692) := by
    have hd : rho 48694 = Bool.toZMod bit * (rho 48692 - seg52In1AccX124 rho) := by
      rw [← hbit]
      unfold seg52In1AccX124
      linear_combination -r4304
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY125 rho = seg52In1AccY124 rho - Bool.toZMod bit * (seg52In1AccY124 rho - rho 48693) := by
    have hd : rho 48695 = Bool.toZMod bit * (rho 48693 - seg52In1AccY124 rho) := by
      rw [← hbit]
      unfold seg52In1AccY124
      linear_combination -r4305
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48686 * rho 48687 = rho 48696 := by linear_combination r4306
  have hd1 : rho 48686 * rho 48686 = rho 48697 := by linear_combination r4307
  have hd2 : rho 48687 * rho 48687 = rho 48698 := by linear_combination r4308
  have hd3 : rho 48699 * (rho 48687 * rho 48687 + rho 48686 * rho 48686 * (-1)) =
      2 * (rho 48686 * rho 48687) := by
    rw [hd0, hd1, hd2]
    linear_combination r4309
  have hd4 : rho 48700 * (2 - (rho 48687 * rho 48687 + rho 48686 * rho 48686 * (-1))) =
      rho 48687 * rho 48687 - rho 48686 * rho 48686 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4310
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 48686, rho 48687⟩
    ⟨rho 48692, rho 48693⟩ ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 48699, rho 48700⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4311 rho ∧ Seg52.relationRow4312 rho ∧ Seg52.relationRow4313 rho ∧ Seg52.relationRow4314 rho ∧ Seg52.relationRow4315 rho ∧ Seg52.relationRow4316 rho ∧ Seg52.relationRow4317 rho ∧ Seg52.relationRow4318 rho ∧ Seg52.relationRow4319 rho ∧ Seg52.relationRow4320 rho ∧ Seg52.relationRow4321 rho ∧ Seg52.relationRow4322 rho ∧ Seg52.relationRow4323 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p53, p54, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨r4320, r4321, r4322, r4323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323⟩

theorem seg52In1_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48699, rho 48700⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 48699, rho 48700⟩
        ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 48712, rho 48713⟩ := by
  obtain ⟨r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323⟩ := seg52In1_rows125 rho h
  unfold Seg52.relationRow4311 at r4311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4311

  unfold Seg52.relationRow4312 at r4312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4312

  unfold Seg52.relationRow4313 at r4313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4313

  unfold Seg52.relationRow4314 at r4314

  unfold Seg52.relationRow4315 at r4315

  unfold Seg52.relationRow4316 at r4316

  unfold Seg52.relationRow4317 at r4317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4317

  unfold Seg52.relationRow4318 at r4318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318

  unfold Seg52.relationRow4319 at r4319

  unfold Seg52.relationRow4320 at r4320

  unfold Seg52.relationRow4321 at r4321

  unfold Seg52.relationRow4322 at r4322

  unfold Seg52.relationRow4323 at r4323

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX126 rho = seg52In1AccX125 rho + rho 48707 := by
    unfold seg52In1AccX126 seg52In1AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 125]

    ring

  have hnexty : seg52In1AccY126 rho = seg52In1AccY125 rho + rho 48708 := by
    unfold seg52In1AccY126 seg52In1AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 125]

    ring

  have ha0 : (rho 48699 + rho 48700) * (seg52In1AccX125 rho + seg52In1AccY125 rho) = rho 48701 := by
    unfold seg52In1AccX125 seg52In1AccY125
    linear_combination r4311
  have ha1 : rho 48700 * seg52In1AccX125 rho = rho 48702 := by
    unfold seg52In1AccX125
    linear_combination r4312
  have ha2 : rho 48699 * seg52In1AccY125 rho = rho 48703 := by
    unfold seg52In1AccY125
    linear_combination r4313
  have ha3 : 3021 * rho 48702 * rho 48703 = rho 48704 := by
    linear_combination r4314
  have ha4 : rho 48705 * (1 + rho 48704) = rho 48702 + rho 48703 := by
    linear_combination r4315
  have ha5 : rho 48706 * (1 - rho 48704) = rho 48701 - rho 48702 - rho 48703 := by
    linear_combination r4316
  have haddx :
      rho 48705 * (1 + 3021 * (rho 48700 * seg52In1AccX125 rho) * (rho 48699 * seg52In1AccY125 rho)) =
        rho 48700 * seg52In1AccX125 rho + rho 48699 * seg52In1AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48706 * (1 - 3021 * (rho 48700 * seg52In1AccX125 rho) * (rho 48699 * seg52In1AccY125 rho)) =
        (-1) * (rho 48700 * seg52In1AccX125 rho) - rho 48699 * seg52In1AccY125 rho +
          (seg52In1AccY125 rho - seg52In1AccX125 rho * (-1)) * (rho 48699 + rho 48700) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48706 * (1 - rho 48704) = rho 48701 - rho 48702 - rho 48703 := ha5
      _ = (-1) * rho 48702 - rho 48703 + (seg52In1AccY125 rho - seg52In1AccX125 rho * (-1)) *
          (rho 48699 + rho 48700) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX126 rho = seg52In1AccX125 rho - Bool.toZMod bit * (seg52In1AccX125 rho - rho 48705) := by
    have hd : rho 48707 = Bool.toZMod bit * (rho 48705 - seg52In1AccX125 rho) := by
      rw [← hbit]
      unfold seg52In1AccX125
      linear_combination -r4317
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY126 rho = seg52In1AccY125 rho - Bool.toZMod bit * (seg52In1AccY125 rho - rho 48706) := by
    have hd : rho 48708 = Bool.toZMod bit * (rho 48706 - seg52In1AccY125 rho) := by
      rw [← hbit]
      unfold seg52In1AccY125
      linear_combination -r4318
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48699 * rho 48700 = rho 48709 := by linear_combination r4319
  have hd1 : rho 48699 * rho 48699 = rho 48710 := by linear_combination r4320
  have hd2 : rho 48700 * rho 48700 = rho 48711 := by linear_combination r4321
  have hd3 : rho 48712 * (rho 48700 * rho 48700 + rho 48699 * rho 48699 * (-1)) =
      2 * (rho 48699 * rho 48700) := by
    rw [hd0, hd1, hd2]
    linear_combination r4322
  have hd4 : rho 48713 * (2 - (rho 48700 * rho 48700 + rho 48699 * rho 48699 * (-1))) =
      rho 48700 * rho 48700 - rho 48699 * rho 48699 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4323
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 48699, rho 48700⟩
    ⟨rho 48705, rho 48706⟩ ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 48712, rho 48713⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4324 rho ∧ Seg52.relationRow4325 rho ∧ Seg52.relationRow4326 rho ∧ Seg52.relationRow4327 rho ∧ Seg52.relationRow4328 rho ∧ Seg52.relationRow4329 rho ∧ Seg52.relationRow4330 rho ∧ Seg52.relationRow4331 rho ∧ Seg52.relationRow4332 rho ∧ Seg52.relationRow4333 rho ∧ Seg52.relationRow4334 rho ∧ Seg52.relationRow4335 rho ∧ Seg52.relationRow4336 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336⟩

theorem seg52In1_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48712, rho 48713⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 48712, rho 48713⟩
        ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 48725, rho 48726⟩ := by
  obtain ⟨r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336⟩ := seg52In1_rows126 rho h
  unfold Seg52.relationRow4324 at r4324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4324

  unfold Seg52.relationRow4325 at r4325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4325

  unfold Seg52.relationRow4326 at r4326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4326

  unfold Seg52.relationRow4327 at r4327

  unfold Seg52.relationRow4328 at r4328

  unfold Seg52.relationRow4329 at r4329

  unfold Seg52.relationRow4330 at r4330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4330

  unfold Seg52.relationRow4331 at r4331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331

  unfold Seg52.relationRow4332 at r4332

  unfold Seg52.relationRow4333 at r4333

  unfold Seg52.relationRow4334 at r4334

  unfold Seg52.relationRow4335 at r4335

  unfold Seg52.relationRow4336 at r4336

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX127 rho = seg52In1AccX126 rho + rho 48720 := by
    unfold seg52In1AccX127 seg52In1AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 126]

    ring

  have hnexty : seg52In1AccY127 rho = seg52In1AccY126 rho + rho 48721 := by
    unfold seg52In1AccY127 seg52In1AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 126]

    ring

  have ha0 : (rho 48712 + rho 48713) * (seg52In1AccX126 rho + seg52In1AccY126 rho) = rho 48714 := by
    unfold seg52In1AccX126 seg52In1AccY126
    linear_combination r4324
  have ha1 : rho 48713 * seg52In1AccX126 rho = rho 48715 := by
    unfold seg52In1AccX126
    linear_combination r4325
  have ha2 : rho 48712 * seg52In1AccY126 rho = rho 48716 := by
    unfold seg52In1AccY126
    linear_combination r4326
  have ha3 : 3021 * rho 48715 * rho 48716 = rho 48717 := by
    linear_combination r4327
  have ha4 : rho 48718 * (1 + rho 48717) = rho 48715 + rho 48716 := by
    linear_combination r4328
  have ha5 : rho 48719 * (1 - rho 48717) = rho 48714 - rho 48715 - rho 48716 := by
    linear_combination r4329
  have haddx :
      rho 48718 * (1 + 3021 * (rho 48713 * seg52In1AccX126 rho) * (rho 48712 * seg52In1AccY126 rho)) =
        rho 48713 * seg52In1AccX126 rho + rho 48712 * seg52In1AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48719 * (1 - 3021 * (rho 48713 * seg52In1AccX126 rho) * (rho 48712 * seg52In1AccY126 rho)) =
        (-1) * (rho 48713 * seg52In1AccX126 rho) - rho 48712 * seg52In1AccY126 rho +
          (seg52In1AccY126 rho - seg52In1AccX126 rho * (-1)) * (rho 48712 + rho 48713) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48719 * (1 - rho 48717) = rho 48714 - rho 48715 - rho 48716 := ha5
      _ = (-1) * rho 48715 - rho 48716 + (seg52In1AccY126 rho - seg52In1AccX126 rho * (-1)) *
          (rho 48712 + rho 48713) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX127 rho = seg52In1AccX126 rho - Bool.toZMod bit * (seg52In1AccX126 rho - rho 48718) := by
    have hd : rho 48720 = Bool.toZMod bit * (rho 48718 - seg52In1AccX126 rho) := by
      rw [← hbit]
      unfold seg52In1AccX126
      linear_combination -r4330
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY127 rho = seg52In1AccY126 rho - Bool.toZMod bit * (seg52In1AccY126 rho - rho 48719) := by
    have hd : rho 48721 = Bool.toZMod bit * (rho 48719 - seg52In1AccY126 rho) := by
      rw [← hbit]
      unfold seg52In1AccY126
      linear_combination -r4331
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48712 * rho 48713 = rho 48722 := by linear_combination r4332
  have hd1 : rho 48712 * rho 48712 = rho 48723 := by linear_combination r4333
  have hd2 : rho 48713 * rho 48713 = rho 48724 := by linear_combination r4334
  have hd3 : rho 48725 * (rho 48713 * rho 48713 + rho 48712 * rho 48712 * (-1)) =
      2 * (rho 48712 * rho 48713) := by
    rw [hd0, hd1, hd2]
    linear_combination r4335
  have hd4 : rho 48726 * (2 - (rho 48713 * rho 48713 + rho 48712 * rho 48712 * (-1))) =
      rho 48713 * rho 48713 - rho 48712 * rho 48712 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4336
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 48712, rho 48713⟩
    ⟨rho 48718, rho 48719⟩ ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 48725, rho 48726⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4337 rho ∧ Seg52.relationRow4338 rho ∧ Seg52.relationRow4339 rho ∧ Seg52.relationRow4340 rho ∧ Seg52.relationRow4341 rho ∧ Seg52.relationRow4342 rho ∧ Seg52.relationRow4343 rho ∧ Seg52.relationRow4344 rho ∧ Seg52.relationRow4345 rho ∧ Seg52.relationRow4346 rho ∧ Seg52.relationRow4347 rho ∧ Seg52.relationRow4348 rho ∧ Seg52.relationRow4349 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349⟩

theorem seg52In1_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48725, rho 48726⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 48725, rho 48726⟩
        ⟨seg52In1AccX128 rho, seg52In1AccY128 rho⟩ ⟨rho 48738, rho 48739⟩ := by
  obtain ⟨r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349⟩ := seg52In1_rows127 rho h
  unfold Seg52.relationRow4337 at r4337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4337

  unfold Seg52.relationRow4338 at r4338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4338

  unfold Seg52.relationRow4339 at r4339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4339

  unfold Seg52.relationRow4340 at r4340

  unfold Seg52.relationRow4341 at r4341

  unfold Seg52.relationRow4342 at r4342

  unfold Seg52.relationRow4343 at r4343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4343

  unfold Seg52.relationRow4344 at r4344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344

  unfold Seg52.relationRow4345 at r4345

  unfold Seg52.relationRow4346 at r4346

  unfold Seg52.relationRow4347 at r4347

  unfold Seg52.relationRow4348 at r4348

  unfold Seg52.relationRow4349 at r4349

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX128 rho = seg52In1AccX127 rho + rho 48733 := by
    unfold seg52In1AccX128 seg52In1AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 127]

    ring

  have hnexty : seg52In1AccY128 rho = seg52In1AccY127 rho + rho 48734 := by
    unfold seg52In1AccY128 seg52In1AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 127]

    ring

  have ha0 : (rho 48725 + rho 48726) * (seg52In1AccX127 rho + seg52In1AccY127 rho) = rho 48727 := by
    unfold seg52In1AccX127 seg52In1AccY127
    linear_combination r4337
  have ha1 : rho 48726 * seg52In1AccX127 rho = rho 48728 := by
    unfold seg52In1AccX127
    linear_combination r4338
  have ha2 : rho 48725 * seg52In1AccY127 rho = rho 48729 := by
    unfold seg52In1AccY127
    linear_combination r4339
  have ha3 : 3021 * rho 48728 * rho 48729 = rho 48730 := by
    linear_combination r4340
  have ha4 : rho 48731 * (1 + rho 48730) = rho 48728 + rho 48729 := by
    linear_combination r4341
  have ha5 : rho 48732 * (1 - rho 48730) = rho 48727 - rho 48728 - rho 48729 := by
    linear_combination r4342
  have haddx :
      rho 48731 * (1 + 3021 * (rho 48726 * seg52In1AccX127 rho) * (rho 48725 * seg52In1AccY127 rho)) =
        rho 48726 * seg52In1AccX127 rho + rho 48725 * seg52In1AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48732 * (1 - 3021 * (rho 48726 * seg52In1AccX127 rho) * (rho 48725 * seg52In1AccY127 rho)) =
        (-1) * (rho 48726 * seg52In1AccX127 rho) - rho 48725 * seg52In1AccY127 rho +
          (seg52In1AccY127 rho - seg52In1AccX127 rho * (-1)) * (rho 48725 + rho 48726) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48732 * (1 - rho 48730) = rho 48727 - rho 48728 - rho 48729 := ha5
      _ = (-1) * rho 48728 - rho 48729 + (seg52In1AccY127 rho - seg52In1AccX127 rho * (-1)) *
          (rho 48725 + rho 48726) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX128 rho = seg52In1AccX127 rho - Bool.toZMod bit * (seg52In1AccX127 rho - rho 48731) := by
    have hd : rho 48733 = Bool.toZMod bit * (rho 48731 - seg52In1AccX127 rho) := by
      rw [← hbit]
      unfold seg52In1AccX127
      linear_combination -r4343
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY128 rho = seg52In1AccY127 rho - Bool.toZMod bit * (seg52In1AccY127 rho - rho 48732) := by
    have hd : rho 48734 = Bool.toZMod bit * (rho 48732 - seg52In1AccY127 rho) := by
      rw [← hbit]
      unfold seg52In1AccY127
      linear_combination -r4344
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48725 * rho 48726 = rho 48735 := by linear_combination r4345
  have hd1 : rho 48725 * rho 48725 = rho 48736 := by linear_combination r4346
  have hd2 : rho 48726 * rho 48726 = rho 48737 := by linear_combination r4347
  have hd3 : rho 48738 * (rho 48726 * rho 48726 + rho 48725 * rho 48725 * (-1)) =
      2 * (rho 48725 * rho 48726) := by
    rw [hd0, hd1, hd2]
    linear_combination r4348
  have hd4 : rho 48739 * (2 - (rho 48726 * rho 48726 + rho 48725 * rho 48725 * (-1))) =
      rho 48726 * rho 48726 - rho 48725 * rho 48725 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4349
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 48725, rho 48726⟩
    ⟨rho 48731, rho 48732⟩ ⟨seg52In1AccX128 rho, seg52In1AccY128 rho⟩ ⟨rho 48738, rho 48739⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg52In1_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg52In1_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg52In1_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg52In1_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg52In1_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg52In1_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
