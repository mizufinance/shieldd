import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4259 rho ∧ Seg48.relationRow4260 rho ∧ Seg48.relationRow4261 rho ∧ Seg48.relationRow4262 rho ∧ Seg48.relationRow4263 rho ∧ Seg48.relationRow4264 rho ∧ Seg48.relationRow4265 rho ∧ Seg48.relationRow4266 rho ∧ Seg48.relationRow4267 rho ∧ Seg48.relationRow4268 rho ∧ Seg48.relationRow4269 rho ∧ Seg48.relationRow4270 rho ∧ Seg48.relationRow4271 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271⟩

theorem seg48In1_rung121 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35443 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX121 rho, seg48In1AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37015, rho 37016⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX121 rho, seg48In1AccY121 rho⟩ ⟨rho 37015, rho 37016⟩
        ⟨seg48In1AccX122 rho, seg48In1AccY122 rho⟩ ⟨rho 37028, rho 37029⟩ := by
  obtain ⟨r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271⟩ := seg48In1_rows121 rho h
  unfold Seg48.relationRow4259 at r4259

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4259

  unfold Seg48.relationRow4260 at r4260

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4260

  unfold Seg48.relationRow4261 at r4261

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4261

  unfold Seg48.relationRow4262 at r4262

  unfold Seg48.relationRow4263 at r4263

  unfold Seg48.relationRow4264 at r4264

  unfold Seg48.relationRow4265 at r4265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4265

  unfold Seg48.relationRow4266 at r4266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266

  unfold Seg48.relationRow4267 at r4267

  unfold Seg48.relationRow4268 at r4268

  unfold Seg48.relationRow4269 at r4269

  unfold Seg48.relationRow4270 at r4270

  unfold Seg48.relationRow4271 at r4271

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX122 rho = seg48In1AccX121 rho + rho 37023 := by
    unfold seg48In1AccX122 seg48In1AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 121]

    ring

  have hnexty : seg48In1AccY122 rho = seg48In1AccY121 rho + rho 37024 := by
    unfold seg48In1AccY122 seg48In1AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 121]

    ring

  have ha0 : (rho 37015 + rho 37016) * (seg48In1AccX121 rho + seg48In1AccY121 rho) = rho 37017 := by
    unfold seg48In1AccX121 seg48In1AccY121
    linear_combination r4259
  have ha1 : rho 37016 * seg48In1AccX121 rho = rho 37018 := by
    unfold seg48In1AccX121
    linear_combination r4260
  have ha2 : rho 37015 * seg48In1AccY121 rho = rho 37019 := by
    unfold seg48In1AccY121
    linear_combination r4261
  have ha3 : 3021 * rho 37018 * rho 37019 = rho 37020 := by
    linear_combination r4262
  have ha4 : rho 37021 * (1 + rho 37020) = rho 37018 + rho 37019 := by
    linear_combination r4263
  have ha5 : rho 37022 * (1 - rho 37020) = rho 37017 - rho 37018 - rho 37019 := by
    linear_combination r4264
  have haddx :
      rho 37021 * (1 + 3021 * (rho 37016 * seg48In1AccX121 rho) * (rho 37015 * seg48In1AccY121 rho)) =
        rho 37016 * seg48In1AccX121 rho + rho 37015 * seg48In1AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37022 * (1 - 3021 * (rho 37016 * seg48In1AccX121 rho) * (rho 37015 * seg48In1AccY121 rho)) =
        (-1) * (rho 37016 * seg48In1AccX121 rho) - rho 37015 * seg48In1AccY121 rho +
          (seg48In1AccY121 rho - seg48In1AccX121 rho * (-1)) * (rho 37015 + rho 37016) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37022 * (1 - rho 37020) = rho 37017 - rho 37018 - rho 37019 := ha5
      _ = (-1) * rho 37018 - rho 37019 + (seg48In1AccY121 rho - seg48In1AccX121 rho * (-1)) *
          (rho 37015 + rho 37016) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX122 rho = seg48In1AccX121 rho - Bool.toZMod bit * (seg48In1AccX121 rho - rho 37021) := by
    have hd : rho 37023 = Bool.toZMod bit * (rho 37021 - seg48In1AccX121 rho) := by
      rw [← hbit]
      unfold seg48In1AccX121
      linear_combination -r4265
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY122 rho = seg48In1AccY121 rho - Bool.toZMod bit * (seg48In1AccY121 rho - rho 37022) := by
    have hd : rho 37024 = Bool.toZMod bit * (rho 37022 - seg48In1AccY121 rho) := by
      rw [← hbit]
      unfold seg48In1AccY121
      linear_combination -r4266
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37015 * rho 37016 = rho 37025 := by linear_combination r4267
  have hd1 : rho 37015 * rho 37015 = rho 37026 := by linear_combination r4268
  have hd2 : rho 37016 * rho 37016 = rho 37027 := by linear_combination r4269
  have hd3 : rho 37028 * (rho 37016 * rho 37016 + rho 37015 * rho 37015 * (-1)) =
      2 * (rho 37015 * rho 37016) := by
    rw [hd0, hd1, hd2]
    linear_combination r4270
  have hd4 : rho 37029 * (2 - (rho 37016 * rho 37016 + rho 37015 * rho 37015 * (-1))) =
      rho 37016 * rho 37016 - rho 37015 * rho 37015 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4271
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX121 rho, seg48In1AccY121 rho⟩ ⟨rho 37015, rho 37016⟩
    ⟨rho 37021, rho 37022⟩ ⟨seg48In1AccX122 rho, seg48In1AccY122 rho⟩ ⟨rho 37028, rho 37029⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4272 rho ∧ Seg48.relationRow4273 rho ∧ Seg48.relationRow4274 rho ∧ Seg48.relationRow4275 rho ∧ Seg48.relationRow4276 rho ∧ Seg48.relationRow4277 rho ∧ Seg48.relationRow4278 rho ∧ Seg48.relationRow4279 rho ∧ Seg48.relationRow4280 rho ∧ Seg48.relationRow4281 rho ∧ Seg48.relationRow4282 rho ∧ Seg48.relationRow4283 rho ∧ Seg48.relationRow4284 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284⟩

theorem seg48In1_rung122 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35444 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX122 rho, seg48In1AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37028, rho 37029⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX122 rho, seg48In1AccY122 rho⟩ ⟨rho 37028, rho 37029⟩
        ⟨seg48In1AccX123 rho, seg48In1AccY123 rho⟩ ⟨rho 37041, rho 37042⟩ := by
  obtain ⟨r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284⟩ := seg48In1_rows122 rho h
  unfold Seg48.relationRow4272 at r4272

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4272

  unfold Seg48.relationRow4273 at r4273

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4273

  unfold Seg48.relationRow4274 at r4274

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4274

  unfold Seg48.relationRow4275 at r4275

  unfold Seg48.relationRow4276 at r4276

  unfold Seg48.relationRow4277 at r4277

  unfold Seg48.relationRow4278 at r4278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4278

  unfold Seg48.relationRow4279 at r4279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279

  unfold Seg48.relationRow4280 at r4280

  unfold Seg48.relationRow4281 at r4281

  unfold Seg48.relationRow4282 at r4282

  unfold Seg48.relationRow4283 at r4283

  unfold Seg48.relationRow4284 at r4284

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX123 rho = seg48In1AccX122 rho + rho 37036 := by
    unfold seg48In1AccX123 seg48In1AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 122]

    ring

  have hnexty : seg48In1AccY123 rho = seg48In1AccY122 rho + rho 37037 := by
    unfold seg48In1AccY123 seg48In1AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 122]

    ring

  have ha0 : (rho 37028 + rho 37029) * (seg48In1AccX122 rho + seg48In1AccY122 rho) = rho 37030 := by
    unfold seg48In1AccX122 seg48In1AccY122
    linear_combination r4272
  have ha1 : rho 37029 * seg48In1AccX122 rho = rho 37031 := by
    unfold seg48In1AccX122
    linear_combination r4273
  have ha2 : rho 37028 * seg48In1AccY122 rho = rho 37032 := by
    unfold seg48In1AccY122
    linear_combination r4274
  have ha3 : 3021 * rho 37031 * rho 37032 = rho 37033 := by
    linear_combination r4275
  have ha4 : rho 37034 * (1 + rho 37033) = rho 37031 + rho 37032 := by
    linear_combination r4276
  have ha5 : rho 37035 * (1 - rho 37033) = rho 37030 - rho 37031 - rho 37032 := by
    linear_combination r4277
  have haddx :
      rho 37034 * (1 + 3021 * (rho 37029 * seg48In1AccX122 rho) * (rho 37028 * seg48In1AccY122 rho)) =
        rho 37029 * seg48In1AccX122 rho + rho 37028 * seg48In1AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37035 * (1 - 3021 * (rho 37029 * seg48In1AccX122 rho) * (rho 37028 * seg48In1AccY122 rho)) =
        (-1) * (rho 37029 * seg48In1AccX122 rho) - rho 37028 * seg48In1AccY122 rho +
          (seg48In1AccY122 rho - seg48In1AccX122 rho * (-1)) * (rho 37028 + rho 37029) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37035 * (1 - rho 37033) = rho 37030 - rho 37031 - rho 37032 := ha5
      _ = (-1) * rho 37031 - rho 37032 + (seg48In1AccY122 rho - seg48In1AccX122 rho * (-1)) *
          (rho 37028 + rho 37029) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX123 rho = seg48In1AccX122 rho - Bool.toZMod bit * (seg48In1AccX122 rho - rho 37034) := by
    have hd : rho 37036 = Bool.toZMod bit * (rho 37034 - seg48In1AccX122 rho) := by
      rw [← hbit]
      unfold seg48In1AccX122
      linear_combination -r4278
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY123 rho = seg48In1AccY122 rho - Bool.toZMod bit * (seg48In1AccY122 rho - rho 37035) := by
    have hd : rho 37037 = Bool.toZMod bit * (rho 37035 - seg48In1AccY122 rho) := by
      rw [← hbit]
      unfold seg48In1AccY122
      linear_combination -r4279
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37028 * rho 37029 = rho 37038 := by linear_combination r4280
  have hd1 : rho 37028 * rho 37028 = rho 37039 := by linear_combination r4281
  have hd2 : rho 37029 * rho 37029 = rho 37040 := by linear_combination r4282
  have hd3 : rho 37041 * (rho 37029 * rho 37029 + rho 37028 * rho 37028 * (-1)) =
      2 * (rho 37028 * rho 37029) := by
    rw [hd0, hd1, hd2]
    linear_combination r4283
  have hd4 : rho 37042 * (2 - (rho 37029 * rho 37029 + rho 37028 * rho 37028 * (-1))) =
      rho 37029 * rho 37029 - rho 37028 * rho 37028 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4284
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX122 rho, seg48In1AccY122 rho⟩ ⟨rho 37028, rho 37029⟩
    ⟨rho 37034, rho 37035⟩ ⟨seg48In1AccX123 rho, seg48In1AccY123 rho⟩ ⟨rho 37041, rho 37042⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4285 rho ∧ Seg48.relationRow4286 rho ∧ Seg48.relationRow4287 rho ∧ Seg48.relationRow4288 rho ∧ Seg48.relationRow4289 rho ∧ Seg48.relationRow4290 rho ∧ Seg48.relationRow4291 rho ∧ Seg48.relationRow4292 rho ∧ Seg48.relationRow4293 rho ∧ Seg48.relationRow4294 rho ∧ Seg48.relationRow4295 rho ∧ Seg48.relationRow4296 rho ∧ Seg48.relationRow4297 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297⟩

theorem seg48In1_rung123 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35445 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX123 rho, seg48In1AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37041, rho 37042⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX123 rho, seg48In1AccY123 rho⟩ ⟨rho 37041, rho 37042⟩
        ⟨seg48In1AccX124 rho, seg48In1AccY124 rho⟩ ⟨rho 37054, rho 37055⟩ := by
  obtain ⟨r4285, r4286, r4287, r4288, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297⟩ := seg48In1_rows123 rho h
  unfold Seg48.relationRow4285 at r4285

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4285

  unfold Seg48.relationRow4286 at r4286

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4286

  unfold Seg48.relationRow4287 at r4287

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4287

  unfold Seg48.relationRow4288 at r4288

  unfold Seg48.relationRow4289 at r4289

  unfold Seg48.relationRow4290 at r4290

  unfold Seg48.relationRow4291 at r4291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4291

  unfold Seg48.relationRow4292 at r4292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292

  unfold Seg48.relationRow4293 at r4293

  unfold Seg48.relationRow4294 at r4294

  unfold Seg48.relationRow4295 at r4295

  unfold Seg48.relationRow4296 at r4296

  unfold Seg48.relationRow4297 at r4297

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX124 rho = seg48In1AccX123 rho + rho 37049 := by
    unfold seg48In1AccX124 seg48In1AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 123]

    ring

  have hnexty : seg48In1AccY124 rho = seg48In1AccY123 rho + rho 37050 := by
    unfold seg48In1AccY124 seg48In1AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 123]

    ring

  have ha0 : (rho 37041 + rho 37042) * (seg48In1AccX123 rho + seg48In1AccY123 rho) = rho 37043 := by
    unfold seg48In1AccX123 seg48In1AccY123
    linear_combination r4285
  have ha1 : rho 37042 * seg48In1AccX123 rho = rho 37044 := by
    unfold seg48In1AccX123
    linear_combination r4286
  have ha2 : rho 37041 * seg48In1AccY123 rho = rho 37045 := by
    unfold seg48In1AccY123
    linear_combination r4287
  have ha3 : 3021 * rho 37044 * rho 37045 = rho 37046 := by
    linear_combination r4288
  have ha4 : rho 37047 * (1 + rho 37046) = rho 37044 + rho 37045 := by
    linear_combination r4289
  have ha5 : rho 37048 * (1 - rho 37046) = rho 37043 - rho 37044 - rho 37045 := by
    linear_combination r4290
  have haddx :
      rho 37047 * (1 + 3021 * (rho 37042 * seg48In1AccX123 rho) * (rho 37041 * seg48In1AccY123 rho)) =
        rho 37042 * seg48In1AccX123 rho + rho 37041 * seg48In1AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37048 * (1 - 3021 * (rho 37042 * seg48In1AccX123 rho) * (rho 37041 * seg48In1AccY123 rho)) =
        (-1) * (rho 37042 * seg48In1AccX123 rho) - rho 37041 * seg48In1AccY123 rho +
          (seg48In1AccY123 rho - seg48In1AccX123 rho * (-1)) * (rho 37041 + rho 37042) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37048 * (1 - rho 37046) = rho 37043 - rho 37044 - rho 37045 := ha5
      _ = (-1) * rho 37044 - rho 37045 + (seg48In1AccY123 rho - seg48In1AccX123 rho * (-1)) *
          (rho 37041 + rho 37042) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX124 rho = seg48In1AccX123 rho - Bool.toZMod bit * (seg48In1AccX123 rho - rho 37047) := by
    have hd : rho 37049 = Bool.toZMod bit * (rho 37047 - seg48In1AccX123 rho) := by
      rw [← hbit]
      unfold seg48In1AccX123
      linear_combination -r4291
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY124 rho = seg48In1AccY123 rho - Bool.toZMod bit * (seg48In1AccY123 rho - rho 37048) := by
    have hd : rho 37050 = Bool.toZMod bit * (rho 37048 - seg48In1AccY123 rho) := by
      rw [← hbit]
      unfold seg48In1AccY123
      linear_combination -r4292
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37041 * rho 37042 = rho 37051 := by linear_combination r4293
  have hd1 : rho 37041 * rho 37041 = rho 37052 := by linear_combination r4294
  have hd2 : rho 37042 * rho 37042 = rho 37053 := by linear_combination r4295
  have hd3 : rho 37054 * (rho 37042 * rho 37042 + rho 37041 * rho 37041 * (-1)) =
      2 * (rho 37041 * rho 37042) := by
    rw [hd0, hd1, hd2]
    linear_combination r4296
  have hd4 : rho 37055 * (2 - (rho 37042 * rho 37042 + rho 37041 * rho 37041 * (-1))) =
      rho 37042 * rho 37042 - rho 37041 * rho 37041 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4297
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX123 rho, seg48In1AccY123 rho⟩ ⟨rho 37041, rho 37042⟩
    ⟨rho 37047, rho 37048⟩ ⟨seg48In1AccX124 rho, seg48In1AccY124 rho⟩ ⟨rho 37054, rho 37055⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4298 rho ∧ Seg48.relationRow4299 rho ∧ Seg48.relationRow4300 rho ∧ Seg48.relationRow4301 rho ∧ Seg48.relationRow4302 rho ∧ Seg48.relationRow4303 rho ∧ Seg48.relationRow4304 rho ∧ Seg48.relationRow4305 rho ∧ Seg48.relationRow4306 rho ∧ Seg48.relationRow4307 rho ∧ Seg48.relationRow4308 rho ∧ Seg48.relationRow4309 rho ∧ Seg48.relationRow4310 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310⟩

theorem seg48In1_rung124 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35446 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX124 rho, seg48In1AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37054, rho 37055⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX124 rho, seg48In1AccY124 rho⟩ ⟨rho 37054, rho 37055⟩
        ⟨seg48In1AccX125 rho, seg48In1AccY125 rho⟩ ⟨rho 37067, rho 37068⟩ := by
  obtain ⟨r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310⟩ := seg48In1_rows124 rho h
  unfold Seg48.relationRow4298 at r4298

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4298

  unfold Seg48.relationRow4299 at r4299

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4299

  unfold Seg48.relationRow4300 at r4300

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4300

  unfold Seg48.relationRow4301 at r4301

  unfold Seg48.relationRow4302 at r4302

  unfold Seg48.relationRow4303 at r4303

  unfold Seg48.relationRow4304 at r4304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4304

  unfold Seg48.relationRow4305 at r4305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305

  unfold Seg48.relationRow4306 at r4306

  unfold Seg48.relationRow4307 at r4307

  unfold Seg48.relationRow4308 at r4308

  unfold Seg48.relationRow4309 at r4309

  unfold Seg48.relationRow4310 at r4310

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX125 rho = seg48In1AccX124 rho + rho 37062 := by
    unfold seg48In1AccX125 seg48In1AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 124]

    ring

  have hnexty : seg48In1AccY125 rho = seg48In1AccY124 rho + rho 37063 := by
    unfold seg48In1AccY125 seg48In1AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 124]

    ring

  have ha0 : (rho 37054 + rho 37055) * (seg48In1AccX124 rho + seg48In1AccY124 rho) = rho 37056 := by
    unfold seg48In1AccX124 seg48In1AccY124
    linear_combination r4298
  have ha1 : rho 37055 * seg48In1AccX124 rho = rho 37057 := by
    unfold seg48In1AccX124
    linear_combination r4299
  have ha2 : rho 37054 * seg48In1AccY124 rho = rho 37058 := by
    unfold seg48In1AccY124
    linear_combination r4300
  have ha3 : 3021 * rho 37057 * rho 37058 = rho 37059 := by
    linear_combination r4301
  have ha4 : rho 37060 * (1 + rho 37059) = rho 37057 + rho 37058 := by
    linear_combination r4302
  have ha5 : rho 37061 * (1 - rho 37059) = rho 37056 - rho 37057 - rho 37058 := by
    linear_combination r4303
  have haddx :
      rho 37060 * (1 + 3021 * (rho 37055 * seg48In1AccX124 rho) * (rho 37054 * seg48In1AccY124 rho)) =
        rho 37055 * seg48In1AccX124 rho + rho 37054 * seg48In1AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37061 * (1 - 3021 * (rho 37055 * seg48In1AccX124 rho) * (rho 37054 * seg48In1AccY124 rho)) =
        (-1) * (rho 37055 * seg48In1AccX124 rho) - rho 37054 * seg48In1AccY124 rho +
          (seg48In1AccY124 rho - seg48In1AccX124 rho * (-1)) * (rho 37054 + rho 37055) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37061 * (1 - rho 37059) = rho 37056 - rho 37057 - rho 37058 := ha5
      _ = (-1) * rho 37057 - rho 37058 + (seg48In1AccY124 rho - seg48In1AccX124 rho * (-1)) *
          (rho 37054 + rho 37055) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX125 rho = seg48In1AccX124 rho - Bool.toZMod bit * (seg48In1AccX124 rho - rho 37060) := by
    have hd : rho 37062 = Bool.toZMod bit * (rho 37060 - seg48In1AccX124 rho) := by
      rw [← hbit]
      unfold seg48In1AccX124
      linear_combination -r4304
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY125 rho = seg48In1AccY124 rho - Bool.toZMod bit * (seg48In1AccY124 rho - rho 37061) := by
    have hd : rho 37063 = Bool.toZMod bit * (rho 37061 - seg48In1AccY124 rho) := by
      rw [← hbit]
      unfold seg48In1AccY124
      linear_combination -r4305
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37054 * rho 37055 = rho 37064 := by linear_combination r4306
  have hd1 : rho 37054 * rho 37054 = rho 37065 := by linear_combination r4307
  have hd2 : rho 37055 * rho 37055 = rho 37066 := by linear_combination r4308
  have hd3 : rho 37067 * (rho 37055 * rho 37055 + rho 37054 * rho 37054 * (-1)) =
      2 * (rho 37054 * rho 37055) := by
    rw [hd0, hd1, hd2]
    linear_combination r4309
  have hd4 : rho 37068 * (2 - (rho 37055 * rho 37055 + rho 37054 * rho 37054 * (-1))) =
      rho 37055 * rho 37055 - rho 37054 * rho 37054 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4310
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX124 rho, seg48In1AccY124 rho⟩ ⟨rho 37054, rho 37055⟩
    ⟨rho 37060, rho 37061⟩ ⟨seg48In1AccX125 rho, seg48In1AccY125 rho⟩ ⟨rho 37067, rho 37068⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4311 rho ∧ Seg48.relationRow4312 rho ∧ Seg48.relationRow4313 rho ∧ Seg48.relationRow4314 rho ∧ Seg48.relationRow4315 rho ∧ Seg48.relationRow4316 rho ∧ Seg48.relationRow4317 rho ∧ Seg48.relationRow4318 rho ∧ Seg48.relationRow4319 rho ∧ Seg48.relationRow4320 rho ∧ Seg48.relationRow4321 rho ∧ Seg48.relationRow4322 rho ∧ Seg48.relationRow4323 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart53 at p53

  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩

  unfold Seg48.relationPart54 at p54

  rcases p54 with ⟨r4320, r4321, r4322, r4323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323⟩

theorem seg48In1_rung125 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35447 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX125 rho, seg48In1AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37067, rho 37068⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX125 rho, seg48In1AccY125 rho⟩ ⟨rho 37067, rho 37068⟩
        ⟨seg48In1AccX126 rho, seg48In1AccY126 rho⟩ ⟨rho 37080, rho 37081⟩ := by
  obtain ⟨r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319, r4320, r4321, r4322, r4323⟩ := seg48In1_rows125 rho h
  unfold Seg48.relationRow4311 at r4311

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4311

  unfold Seg48.relationRow4312 at r4312

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4312

  unfold Seg48.relationRow4313 at r4313

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4313

  unfold Seg48.relationRow4314 at r4314

  unfold Seg48.relationRow4315 at r4315

  unfold Seg48.relationRow4316 at r4316

  unfold Seg48.relationRow4317 at r4317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4317

  unfold Seg48.relationRow4318 at r4318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318

  unfold Seg48.relationRow4319 at r4319

  unfold Seg48.relationRow4320 at r4320

  unfold Seg48.relationRow4321 at r4321

  unfold Seg48.relationRow4322 at r4322

  unfold Seg48.relationRow4323 at r4323

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX126 rho = seg48In1AccX125 rho + rho 37075 := by
    unfold seg48In1AccX126 seg48In1AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 125]

    ring

  have hnexty : seg48In1AccY126 rho = seg48In1AccY125 rho + rho 37076 := by
    unfold seg48In1AccY126 seg48In1AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 125]

    ring

  have ha0 : (rho 37067 + rho 37068) * (seg48In1AccX125 rho + seg48In1AccY125 rho) = rho 37069 := by
    unfold seg48In1AccX125 seg48In1AccY125
    linear_combination r4311
  have ha1 : rho 37068 * seg48In1AccX125 rho = rho 37070 := by
    unfold seg48In1AccX125
    linear_combination r4312
  have ha2 : rho 37067 * seg48In1AccY125 rho = rho 37071 := by
    unfold seg48In1AccY125
    linear_combination r4313
  have ha3 : 3021 * rho 37070 * rho 37071 = rho 37072 := by
    linear_combination r4314
  have ha4 : rho 37073 * (1 + rho 37072) = rho 37070 + rho 37071 := by
    linear_combination r4315
  have ha5 : rho 37074 * (1 - rho 37072) = rho 37069 - rho 37070 - rho 37071 := by
    linear_combination r4316
  have haddx :
      rho 37073 * (1 + 3021 * (rho 37068 * seg48In1AccX125 rho) * (rho 37067 * seg48In1AccY125 rho)) =
        rho 37068 * seg48In1AccX125 rho + rho 37067 * seg48In1AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37074 * (1 - 3021 * (rho 37068 * seg48In1AccX125 rho) * (rho 37067 * seg48In1AccY125 rho)) =
        (-1) * (rho 37068 * seg48In1AccX125 rho) - rho 37067 * seg48In1AccY125 rho +
          (seg48In1AccY125 rho - seg48In1AccX125 rho * (-1)) * (rho 37067 + rho 37068) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37074 * (1 - rho 37072) = rho 37069 - rho 37070 - rho 37071 := ha5
      _ = (-1) * rho 37070 - rho 37071 + (seg48In1AccY125 rho - seg48In1AccX125 rho * (-1)) *
          (rho 37067 + rho 37068) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX126 rho = seg48In1AccX125 rho - Bool.toZMod bit * (seg48In1AccX125 rho - rho 37073) := by
    have hd : rho 37075 = Bool.toZMod bit * (rho 37073 - seg48In1AccX125 rho) := by
      rw [← hbit]
      unfold seg48In1AccX125
      linear_combination -r4317
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY126 rho = seg48In1AccY125 rho - Bool.toZMod bit * (seg48In1AccY125 rho - rho 37074) := by
    have hd : rho 37076 = Bool.toZMod bit * (rho 37074 - seg48In1AccY125 rho) := by
      rw [← hbit]
      unfold seg48In1AccY125
      linear_combination -r4318
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37067 * rho 37068 = rho 37077 := by linear_combination r4319
  have hd1 : rho 37067 * rho 37067 = rho 37078 := by linear_combination r4320
  have hd2 : rho 37068 * rho 37068 = rho 37079 := by linear_combination r4321
  have hd3 : rho 37080 * (rho 37068 * rho 37068 + rho 37067 * rho 37067 * (-1)) =
      2 * (rho 37067 * rho 37068) := by
    rw [hd0, hd1, hd2]
    linear_combination r4322
  have hd4 : rho 37081 * (2 - (rho 37068 * rho 37068 + rho 37067 * rho 37067 * (-1))) =
      rho 37068 * rho 37068 - rho 37067 * rho 37067 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4323
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX125 rho, seg48In1AccY125 rho⟩ ⟨rho 37067, rho 37068⟩
    ⟨rho 37073, rho 37074⟩ ⟨seg48In1AccX126 rho, seg48In1AccY126 rho⟩ ⟨rho 37080, rho 37081⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4324 rho ∧ Seg48.relationRow4325 rho ∧ Seg48.relationRow4326 rho ∧ Seg48.relationRow4327 rho ∧ Seg48.relationRow4328 rho ∧ Seg48.relationRow4329 rho ∧ Seg48.relationRow4330 rho ∧ Seg48.relationRow4331 rho ∧ Seg48.relationRow4332 rho ∧ Seg48.relationRow4333 rho ∧ Seg48.relationRow4334 rho ∧ Seg48.relationRow4335 rho ∧ Seg48.relationRow4336 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336⟩

theorem seg48In1_rung126 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35448 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX126 rho, seg48In1AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37080, rho 37081⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX126 rho, seg48In1AccY126 rho⟩ ⟨rho 37080, rho 37081⟩
        ⟨seg48In1AccX127 rho, seg48In1AccY127 rho⟩ ⟨rho 37093, rho 37094⟩ := by
  obtain ⟨r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336⟩ := seg48In1_rows126 rho h
  unfold Seg48.relationRow4324 at r4324

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4324

  unfold Seg48.relationRow4325 at r4325

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4325

  unfold Seg48.relationRow4326 at r4326

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4326

  unfold Seg48.relationRow4327 at r4327

  unfold Seg48.relationRow4328 at r4328

  unfold Seg48.relationRow4329 at r4329

  unfold Seg48.relationRow4330 at r4330

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4330

  unfold Seg48.relationRow4331 at r4331

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331

  unfold Seg48.relationRow4332 at r4332

  unfold Seg48.relationRow4333 at r4333

  unfold Seg48.relationRow4334 at r4334

  unfold Seg48.relationRow4335 at r4335

  unfold Seg48.relationRow4336 at r4336

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX127 rho = seg48In1AccX126 rho + rho 37088 := by
    unfold seg48In1AccX127 seg48In1AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 126]

    ring

  have hnexty : seg48In1AccY127 rho = seg48In1AccY126 rho + rho 37089 := by
    unfold seg48In1AccY127 seg48In1AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 126]

    ring

  have ha0 : (rho 37080 + rho 37081) * (seg48In1AccX126 rho + seg48In1AccY126 rho) = rho 37082 := by
    unfold seg48In1AccX126 seg48In1AccY126
    linear_combination r4324
  have ha1 : rho 37081 * seg48In1AccX126 rho = rho 37083 := by
    unfold seg48In1AccX126
    linear_combination r4325
  have ha2 : rho 37080 * seg48In1AccY126 rho = rho 37084 := by
    unfold seg48In1AccY126
    linear_combination r4326
  have ha3 : 3021 * rho 37083 * rho 37084 = rho 37085 := by
    linear_combination r4327
  have ha4 : rho 37086 * (1 + rho 37085) = rho 37083 + rho 37084 := by
    linear_combination r4328
  have ha5 : rho 37087 * (1 - rho 37085) = rho 37082 - rho 37083 - rho 37084 := by
    linear_combination r4329
  have haddx :
      rho 37086 * (1 + 3021 * (rho 37081 * seg48In1AccX126 rho) * (rho 37080 * seg48In1AccY126 rho)) =
        rho 37081 * seg48In1AccX126 rho + rho 37080 * seg48In1AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37087 * (1 - 3021 * (rho 37081 * seg48In1AccX126 rho) * (rho 37080 * seg48In1AccY126 rho)) =
        (-1) * (rho 37081 * seg48In1AccX126 rho) - rho 37080 * seg48In1AccY126 rho +
          (seg48In1AccY126 rho - seg48In1AccX126 rho * (-1)) * (rho 37080 + rho 37081) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37087 * (1 - rho 37085) = rho 37082 - rho 37083 - rho 37084 := ha5
      _ = (-1) * rho 37083 - rho 37084 + (seg48In1AccY126 rho - seg48In1AccX126 rho * (-1)) *
          (rho 37080 + rho 37081) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX127 rho = seg48In1AccX126 rho - Bool.toZMod bit * (seg48In1AccX126 rho - rho 37086) := by
    have hd : rho 37088 = Bool.toZMod bit * (rho 37086 - seg48In1AccX126 rho) := by
      rw [← hbit]
      unfold seg48In1AccX126
      linear_combination -r4330
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY127 rho = seg48In1AccY126 rho - Bool.toZMod bit * (seg48In1AccY126 rho - rho 37087) := by
    have hd : rho 37089 = Bool.toZMod bit * (rho 37087 - seg48In1AccY126 rho) := by
      rw [← hbit]
      unfold seg48In1AccY126
      linear_combination -r4331
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37080 * rho 37081 = rho 37090 := by linear_combination r4332
  have hd1 : rho 37080 * rho 37080 = rho 37091 := by linear_combination r4333
  have hd2 : rho 37081 * rho 37081 = rho 37092 := by linear_combination r4334
  have hd3 : rho 37093 * (rho 37081 * rho 37081 + rho 37080 * rho 37080 * (-1)) =
      2 * (rho 37080 * rho 37081) := by
    rw [hd0, hd1, hd2]
    linear_combination r4335
  have hd4 : rho 37094 * (2 - (rho 37081 * rho 37081 + rho 37080 * rho 37080 * (-1))) =
      rho 37081 * rho 37081 - rho 37080 * rho 37080 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4336
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX126 rho, seg48In1AccY126 rho⟩ ⟨rho 37080, rho 37081⟩
    ⟨rho 37086, rho 37087⟩ ⟨seg48In1AccX127 rho, seg48In1AccY127 rho⟩ ⟨rho 37093, rho 37094⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4337 rho ∧ Seg48.relationRow4338 rho ∧ Seg48.relationRow4339 rho ∧ Seg48.relationRow4340 rho ∧ Seg48.relationRow4341 rho ∧ Seg48.relationRow4342 rho ∧ Seg48.relationRow4343 rho ∧ Seg48.relationRow4344 rho ∧ Seg48.relationRow4345 rho ∧ Seg48.relationRow4346 rho ∧ Seg48.relationRow4347 rho ∧ Seg48.relationRow4348 rho ∧ Seg48.relationRow4349 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart54 at p54

  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349⟩

theorem seg48In1_rung127 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35449 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX127 rho, seg48In1AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37093, rho 37094⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX127 rho, seg48In1AccY127 rho⟩ ⟨rho 37093, rho 37094⟩
        ⟨seg48In1AccX128 rho, seg48In1AccY128 rho⟩ ⟨rho 37106, rho 37107⟩ := by
  obtain ⟨r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349⟩ := seg48In1_rows127 rho h
  unfold Seg48.relationRow4337 at r4337

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4337

  unfold Seg48.relationRow4338 at r4338

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4338

  unfold Seg48.relationRow4339 at r4339

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4339

  unfold Seg48.relationRow4340 at r4340

  unfold Seg48.relationRow4341 at r4341

  unfold Seg48.relationRow4342 at r4342

  unfold Seg48.relationRow4343 at r4343

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4343

  unfold Seg48.relationRow4344 at r4344

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344

  unfold Seg48.relationRow4345 at r4345

  unfold Seg48.relationRow4346 at r4346

  unfold Seg48.relationRow4347 at r4347

  unfold Seg48.relationRow4348 at r4348

  unfold Seg48.relationRow4349 at r4349

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX128 rho = seg48In1AccX127 rho + rho 37101 := by
    unfold seg48In1AccX128 seg48In1AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 127]

    ring

  have hnexty : seg48In1AccY128 rho = seg48In1AccY127 rho + rho 37102 := by
    unfold seg48In1AccY128 seg48In1AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 127]

    ring

  have ha0 : (rho 37093 + rho 37094) * (seg48In1AccX127 rho + seg48In1AccY127 rho) = rho 37095 := by
    unfold seg48In1AccX127 seg48In1AccY127
    linear_combination r4337
  have ha1 : rho 37094 * seg48In1AccX127 rho = rho 37096 := by
    unfold seg48In1AccX127
    linear_combination r4338
  have ha2 : rho 37093 * seg48In1AccY127 rho = rho 37097 := by
    unfold seg48In1AccY127
    linear_combination r4339
  have ha3 : 3021 * rho 37096 * rho 37097 = rho 37098 := by
    linear_combination r4340
  have ha4 : rho 37099 * (1 + rho 37098) = rho 37096 + rho 37097 := by
    linear_combination r4341
  have ha5 : rho 37100 * (1 - rho 37098) = rho 37095 - rho 37096 - rho 37097 := by
    linear_combination r4342
  have haddx :
      rho 37099 * (1 + 3021 * (rho 37094 * seg48In1AccX127 rho) * (rho 37093 * seg48In1AccY127 rho)) =
        rho 37094 * seg48In1AccX127 rho + rho 37093 * seg48In1AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37100 * (1 - 3021 * (rho 37094 * seg48In1AccX127 rho) * (rho 37093 * seg48In1AccY127 rho)) =
        (-1) * (rho 37094 * seg48In1AccX127 rho) - rho 37093 * seg48In1AccY127 rho +
          (seg48In1AccY127 rho - seg48In1AccX127 rho * (-1)) * (rho 37093 + rho 37094) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37100 * (1 - rho 37098) = rho 37095 - rho 37096 - rho 37097 := ha5
      _ = (-1) * rho 37096 - rho 37097 + (seg48In1AccY127 rho - seg48In1AccX127 rho * (-1)) *
          (rho 37093 + rho 37094) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX128 rho = seg48In1AccX127 rho - Bool.toZMod bit * (seg48In1AccX127 rho - rho 37099) := by
    have hd : rho 37101 = Bool.toZMod bit * (rho 37099 - seg48In1AccX127 rho) := by
      rw [← hbit]
      unfold seg48In1AccX127
      linear_combination -r4343
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY128 rho = seg48In1AccY127 rho - Bool.toZMod bit * (seg48In1AccY127 rho - rho 37100) := by
    have hd : rho 37102 = Bool.toZMod bit * (rho 37100 - seg48In1AccY127 rho) := by
      rw [← hbit]
      unfold seg48In1AccY127
      linear_combination -r4344
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37093 * rho 37094 = rho 37103 := by linear_combination r4345
  have hd1 : rho 37093 * rho 37093 = rho 37104 := by linear_combination r4346
  have hd2 : rho 37094 * rho 37094 = rho 37105 := by linear_combination r4347
  have hd3 : rho 37106 * (rho 37094 * rho 37094 + rho 37093 * rho 37093 * (-1)) =
      2 * (rho 37093 * rho 37094) := by
    rw [hd0, hd1, hd2]
    linear_combination r4348
  have hd4 : rho 37107 * (2 - (rho 37094 * rho 37094 + rho 37093 * rho 37093 * (-1))) =
      rho 37094 * rho 37094 - rho 37093 * rho 37093 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4349
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX127 rho, seg48In1AccY127 rho⟩ ⟨rho 37093, rho 37094⟩
    ⟨rho 37099, rho 37100⟩ ⟨seg48In1AccX128 rho, seg48In1AccY128 rho⟩ ⟨rho 37106, rho 37107⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c11 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg48In1_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg48In1_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg48In1_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg48In1_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg48In1_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg48In1_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
