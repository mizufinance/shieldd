import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4252 rho ∧ Seg45.relationRow4253 rho ∧ Seg45.relationRow4254 rho ∧ Seg45.relationRow4255 rho ∧ Seg45.relationRow4256 rho ∧ Seg45.relationRow4257 rho ∧ Seg45.relationRow4258 rho ∧ Seg45.relationRow4259 rho ∧ Seg45.relationRow4260 rho ∧ Seg45.relationRow4261 rho ∧ Seg45.relationRow4262 rho ∧ Seg45.relationRow4263 rho ∧ Seg45.relationRow4264 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩

theorem seg45_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41047 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩ := by
  obtain ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩ := seg45_rows99 rho h
  unfold Seg45.relationRow4252 at r4252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4252
  unfold Seg45.relationRow4253 at r4253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253
  unfold Seg45.relationRow4254 at r4254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4254
  unfold Seg45.relationRow4255 at r4255
  unfold Seg45.relationRow4256 at r4256
  unfold Seg45.relationRow4257 at r4257
  unfold Seg45.relationRow4258 at r4258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4258
  unfold Seg45.relationRow4259 at r4259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4259
  unfold Seg45.relationRow4260 at r4260
  unfold Seg45.relationRow4261 at r4261
  unfold Seg45.relationRow4262 at r4262
  unfold Seg45.relationRow4263 at r4263
  unfold Seg45.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 41047 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
        ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩ := by
    have hnextx : seg45AccX100 rho = seg45AccX99 rho + rho 42486 := by
      unfold seg45AccX100 seg45AccX99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 99]
      ring
    have hnexty : seg45AccY100 rho = seg45AccY99 rho + rho 42487 := by
      unfold seg45AccY100 seg45AccY99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 99]
      ring
    have ha0 : (rho 42478 + rho 42479) * (seg45AccX99 rho + seg45AccY99 rho) = rho 42480 := by
      unfold seg45AccX99 seg45AccY99
      linear_combination r4252
    have ha1 : rho 42479 * seg45AccX99 rho = rho 42481 := by
      unfold seg45AccX99
      linear_combination r4253
    have ha2 : rho 42478 * seg45AccY99 rho = rho 42482 := by
      unfold seg45AccY99
      linear_combination r4254
    have ha3 : 3021 * rho 42481 * rho 42482 = rho 42483 := by
      linear_combination r4255
    have ha4 : rho 42484 * (1 + rho 42483) = rho 42481 + rho 42482 := by
      linear_combination r4256
    have ha5 : rho 42485 * (1 - rho 42483) = rho 42480 - rho 42481 - rho 42482 := by
      linear_combination r4257
    have haddx :
        rho 42484 * (1 + 3021 * (rho 42479 * seg45AccX99 rho) * (rho 42478 * seg45AccY99 rho)) =
          rho 42479 * seg45AccX99 rho + rho 42478 * seg45AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42485 * (1 - 3021 * (rho 42479 * seg45AccX99 rho) * (rho 42478 * seg45AccY99 rho)) =
          (-1) * (rho 42479 * seg45AccX99 rho) - rho 42478 * seg45AccY99 rho +
            (seg45AccY99 rho - seg45AccX99 rho * (-1)) * (rho 42478 + rho 42479) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42485 * (1 - rho 42483) = rho 42480 - rho 42481 - rho 42482 := ha5
        _ = (-1) * rho 42481 - rho 42482 + (seg45AccY99 rho - seg45AccX99 rho * (-1)) * (rho 42478 + rho 42479) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX100 rho = seg45AccX99 rho - Bool.toZMod bit * (seg45AccX99 rho - rho 42484) := by
      have hd : rho 42486 = Bool.toZMod bit * (rho 42484 - seg45AccX99 rho) := by
        rw [← hbit]
        unfold seg45AccX99
        linear_combination -r4258
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY100 rho = seg45AccY99 rho - Bool.toZMod bit * (seg45AccY99 rho - rho 42485) := by
      have hd : rho 42487 = Bool.toZMod bit * (rho 42485 - seg45AccY99 rho) := by
        rw [← hbit]
        unfold seg45AccY99
        linear_combination -r4259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42478 * rho 42479 = rho 42488 := by linear_combination r4260
    have hd1 : rho 42478 * rho 42478 = rho 42489 := by linear_combination r4261
    have hd2 : rho 42479 * rho 42479 = rho 42490 := by linear_combination r4262
    have hd3 : rho 42491 * (rho 42479 * rho 42479 + rho 42478 * rho 42478 * (-1)) = 2 * (rho 42478 * rho 42479) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 42492 * (2 - (rho 42479 * rho 42479 + rho 42478 * rho 42478 * (-1))) = rho 42479 * rho 42479 - rho 42478 * rho 42478 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX99 rho : Seg45.F), (seg45AccY99 rho : Seg45.F)⟩
      ⟨(rho 42478 : Seg45.F), (rho 42479 : Seg45.F)⟩
      ⟨(rho 42484 : Seg45.F), (rho 42485 : Seg45.F)⟩
      ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
      ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg45_rows100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4265 rho ∧ Seg45.relationRow4266 rho ∧ Seg45.relationRow4267 rho ∧ Seg45.relationRow4268 rho ∧ Seg45.relationRow4269 rho ∧ Seg45.relationRow4270 rho ∧ Seg45.relationRow4271 rho ∧ Seg45.relationRow4272 rho ∧ Seg45.relationRow4273 rho ∧ Seg45.relationRow4274 rho ∧ Seg45.relationRow4275 rho ∧ Seg45.relationRow4276 rho ∧ Seg45.relationRow4277 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩

theorem seg45_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41048 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩ := by
  obtain ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩ := seg45_rows100 rho h
  unfold Seg45.relationRow4265 at r4265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4265
  unfold Seg45.relationRow4266 at r4266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266
  unfold Seg45.relationRow4267 at r4267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4267
  unfold Seg45.relationRow4268 at r4268
  unfold Seg45.relationRow4269 at r4269
  unfold Seg45.relationRow4270 at r4270
  unfold Seg45.relationRow4271 at r4271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4271
  unfold Seg45.relationRow4272 at r4272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4272
  unfold Seg45.relationRow4273 at r4273
  unfold Seg45.relationRow4274 at r4274
  unfold Seg45.relationRow4275 at r4275
  unfold Seg45.relationRow4276 at r4276
  unfold Seg45.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 41048 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
        ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩ := by
    have hnextx : seg45AccX101 rho = seg45AccX100 rho + rho 42499 := by
      unfold seg45AccX101 seg45AccX100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 100]
      ring
    have hnexty : seg45AccY101 rho = seg45AccY100 rho + rho 42500 := by
      unfold seg45AccY101 seg45AccY100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 100]
      ring
    have ha0 : (rho 42491 + rho 42492) * (seg45AccX100 rho + seg45AccY100 rho) = rho 42493 := by
      unfold seg45AccX100 seg45AccY100
      linear_combination r4265
    have ha1 : rho 42492 * seg45AccX100 rho = rho 42494 := by
      unfold seg45AccX100
      linear_combination r4266
    have ha2 : rho 42491 * seg45AccY100 rho = rho 42495 := by
      unfold seg45AccY100
      linear_combination r4267
    have ha3 : 3021 * rho 42494 * rho 42495 = rho 42496 := by
      linear_combination r4268
    have ha4 : rho 42497 * (1 + rho 42496) = rho 42494 + rho 42495 := by
      linear_combination r4269
    have ha5 : rho 42498 * (1 - rho 42496) = rho 42493 - rho 42494 - rho 42495 := by
      linear_combination r4270
    have haddx :
        rho 42497 * (1 + 3021 * (rho 42492 * seg45AccX100 rho) * (rho 42491 * seg45AccY100 rho)) =
          rho 42492 * seg45AccX100 rho + rho 42491 * seg45AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42498 * (1 - 3021 * (rho 42492 * seg45AccX100 rho) * (rho 42491 * seg45AccY100 rho)) =
          (-1) * (rho 42492 * seg45AccX100 rho) - rho 42491 * seg45AccY100 rho +
            (seg45AccY100 rho - seg45AccX100 rho * (-1)) * (rho 42491 + rho 42492) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42498 * (1 - rho 42496) = rho 42493 - rho 42494 - rho 42495 := ha5
        _ = (-1) * rho 42494 - rho 42495 + (seg45AccY100 rho - seg45AccX100 rho * (-1)) * (rho 42491 + rho 42492) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX101 rho = seg45AccX100 rho - Bool.toZMod bit * (seg45AccX100 rho - rho 42497) := by
      have hd : rho 42499 = Bool.toZMod bit * (rho 42497 - seg45AccX100 rho) := by
        rw [← hbit]
        unfold seg45AccX100
        linear_combination -r4271
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY101 rho = seg45AccY100 rho - Bool.toZMod bit * (seg45AccY100 rho - rho 42498) := by
      have hd : rho 42500 = Bool.toZMod bit * (rho 42498 - seg45AccY100 rho) := by
        rw [← hbit]
        unfold seg45AccY100
        linear_combination -r4272
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42491 * rho 42492 = rho 42501 := by linear_combination r4273
    have hd1 : rho 42491 * rho 42491 = rho 42502 := by linear_combination r4274
    have hd2 : rho 42492 * rho 42492 = rho 42503 := by linear_combination r4275
    have hd3 : rho 42504 * (rho 42492 * rho 42492 + rho 42491 * rho 42491 * (-1)) = 2 * (rho 42491 * rho 42492) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 42505 * (2 - (rho 42492 * rho 42492 + rho 42491 * rho 42491 * (-1))) = rho 42492 * rho 42492 - rho 42491 * rho 42491 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX100 rho : Seg45.F), (seg45AccY100 rho : Seg45.F)⟩
      ⟨(rho 42491 : Seg45.F), (rho 42492 : Seg45.F)⟩
      ⟨(rho 42497 : Seg45.F), (rho 42498 : Seg45.F)⟩
      ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
      ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg45_rows101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4278 rho ∧ Seg45.relationRow4279 rho ∧ Seg45.relationRow4280 rho ∧ Seg45.relationRow4281 rho ∧ Seg45.relationRow4282 rho ∧ Seg45.relationRow4283 rho ∧ Seg45.relationRow4284 rho ∧ Seg45.relationRow4285 rho ∧ Seg45.relationRow4286 rho ∧ Seg45.relationRow4287 rho ∧ Seg45.relationRow4288 rho ∧ Seg45.relationRow4289 rho ∧ Seg45.relationRow4290 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩

theorem seg45_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩ := by
  obtain ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩ := seg45_rows101 rho h
  unfold Seg45.relationRow4278 at r4278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4278
  unfold Seg45.relationRow4279 at r4279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279
  unfold Seg45.relationRow4280 at r4280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4280
  unfold Seg45.relationRow4281 at r4281
  unfold Seg45.relationRow4282 at r4282
  unfold Seg45.relationRow4283 at r4283
  unfold Seg45.relationRow4284 at r4284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4284
  unfold Seg45.relationRow4285 at r4285
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4285
  unfold Seg45.relationRow4286 at r4286
  unfold Seg45.relationRow4287 at r4287
  unfold Seg45.relationRow4288 at r4288
  unfold Seg45.relationRow4289 at r4289
  unfold Seg45.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 41049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
        ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩ := by
    have hnextx : seg45AccX102 rho = seg45AccX101 rho + rho 42512 := by
      unfold seg45AccX102 seg45AccX101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 101]
      ring
    have hnexty : seg45AccY102 rho = seg45AccY101 rho + rho 42513 := by
      unfold seg45AccY102 seg45AccY101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 101]
      ring
    have ha0 : (rho 42504 + rho 42505) * (seg45AccX101 rho + seg45AccY101 rho) = rho 42506 := by
      unfold seg45AccX101 seg45AccY101
      linear_combination r4278
    have ha1 : rho 42505 * seg45AccX101 rho = rho 42507 := by
      unfold seg45AccX101
      linear_combination r4279
    have ha2 : rho 42504 * seg45AccY101 rho = rho 42508 := by
      unfold seg45AccY101
      linear_combination r4280
    have ha3 : 3021 * rho 42507 * rho 42508 = rho 42509 := by
      linear_combination r4281
    have ha4 : rho 42510 * (1 + rho 42509) = rho 42507 + rho 42508 := by
      linear_combination r4282
    have ha5 : rho 42511 * (1 - rho 42509) = rho 42506 - rho 42507 - rho 42508 := by
      linear_combination r4283
    have haddx :
        rho 42510 * (1 + 3021 * (rho 42505 * seg45AccX101 rho) * (rho 42504 * seg45AccY101 rho)) =
          rho 42505 * seg45AccX101 rho + rho 42504 * seg45AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42511 * (1 - 3021 * (rho 42505 * seg45AccX101 rho) * (rho 42504 * seg45AccY101 rho)) =
          (-1) * (rho 42505 * seg45AccX101 rho) - rho 42504 * seg45AccY101 rho +
            (seg45AccY101 rho - seg45AccX101 rho * (-1)) * (rho 42504 + rho 42505) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42511 * (1 - rho 42509) = rho 42506 - rho 42507 - rho 42508 := ha5
        _ = (-1) * rho 42507 - rho 42508 + (seg45AccY101 rho - seg45AccX101 rho * (-1)) * (rho 42504 + rho 42505) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX102 rho = seg45AccX101 rho - Bool.toZMod bit * (seg45AccX101 rho - rho 42510) := by
      have hd : rho 42512 = Bool.toZMod bit * (rho 42510 - seg45AccX101 rho) := by
        rw [← hbit]
        unfold seg45AccX101
        linear_combination -r4284
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY102 rho = seg45AccY101 rho - Bool.toZMod bit * (seg45AccY101 rho - rho 42511) := by
      have hd : rho 42513 = Bool.toZMod bit * (rho 42511 - seg45AccY101 rho) := by
        rw [← hbit]
        unfold seg45AccY101
        linear_combination -r4285
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42504 * rho 42505 = rho 42514 := by linear_combination r4286
    have hd1 : rho 42504 * rho 42504 = rho 42515 := by linear_combination r4287
    have hd2 : rho 42505 * rho 42505 = rho 42516 := by linear_combination r4288
    have hd3 : rho 42517 * (rho 42505 * rho 42505 + rho 42504 * rho 42504 * (-1)) = 2 * (rho 42504 * rho 42505) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 42518 * (2 - (rho 42505 * rho 42505 + rho 42504 * rho 42504 * (-1))) = rho 42505 * rho 42505 - rho 42504 * rho 42504 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX101 rho : Seg45.F), (seg45AccY101 rho : Seg45.F)⟩
      ⟨(rho 42504 : Seg45.F), (rho 42505 : Seg45.F)⟩
      ⟨(rho 42510 : Seg45.F), (rho 42511 : Seg45.F)⟩
      ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
      ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg45_rows102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4291 rho ∧ Seg45.relationRow4292 rho ∧ Seg45.relationRow4293 rho ∧ Seg45.relationRow4294 rho ∧ Seg45.relationRow4295 rho ∧ Seg45.relationRow4296 rho ∧ Seg45.relationRow4297 rho ∧ Seg45.relationRow4298 rho ∧ Seg45.relationRow4299 rho ∧ Seg45.relationRow4300 rho ∧ Seg45.relationRow4301 rho ∧ Seg45.relationRow4302 rho ∧ Seg45.relationRow4303 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩

theorem seg45_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩ := by
  obtain ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩ := seg45_rows102 rho h
  unfold Seg45.relationRow4291 at r4291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4291
  unfold Seg45.relationRow4292 at r4292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292
  unfold Seg45.relationRow4293 at r4293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4293
  unfold Seg45.relationRow4294 at r4294
  unfold Seg45.relationRow4295 at r4295
  unfold Seg45.relationRow4296 at r4296
  unfold Seg45.relationRow4297 at r4297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4297
  unfold Seg45.relationRow4298 at r4298
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4298
  unfold Seg45.relationRow4299 at r4299
  unfold Seg45.relationRow4300 at r4300
  unfold Seg45.relationRow4301 at r4301
  unfold Seg45.relationRow4302 at r4302
  unfold Seg45.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 41050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
        ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩ := by
    have hnextx : seg45AccX103 rho = seg45AccX102 rho + rho 42525 := by
      unfold seg45AccX103 seg45AccX102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 102]
      ring
    have hnexty : seg45AccY103 rho = seg45AccY102 rho + rho 42526 := by
      unfold seg45AccY103 seg45AccY102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 102]
      ring
    have ha0 : (rho 42517 + rho 42518) * (seg45AccX102 rho + seg45AccY102 rho) = rho 42519 := by
      unfold seg45AccX102 seg45AccY102
      linear_combination r4291
    have ha1 : rho 42518 * seg45AccX102 rho = rho 42520 := by
      unfold seg45AccX102
      linear_combination r4292
    have ha2 : rho 42517 * seg45AccY102 rho = rho 42521 := by
      unfold seg45AccY102
      linear_combination r4293
    have ha3 : 3021 * rho 42520 * rho 42521 = rho 42522 := by
      linear_combination r4294
    have ha4 : rho 42523 * (1 + rho 42522) = rho 42520 + rho 42521 := by
      linear_combination r4295
    have ha5 : rho 42524 * (1 - rho 42522) = rho 42519 - rho 42520 - rho 42521 := by
      linear_combination r4296
    have haddx :
        rho 42523 * (1 + 3021 * (rho 42518 * seg45AccX102 rho) * (rho 42517 * seg45AccY102 rho)) =
          rho 42518 * seg45AccX102 rho + rho 42517 * seg45AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42524 * (1 - 3021 * (rho 42518 * seg45AccX102 rho) * (rho 42517 * seg45AccY102 rho)) =
          (-1) * (rho 42518 * seg45AccX102 rho) - rho 42517 * seg45AccY102 rho +
            (seg45AccY102 rho - seg45AccX102 rho * (-1)) * (rho 42517 + rho 42518) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42524 * (1 - rho 42522) = rho 42519 - rho 42520 - rho 42521 := ha5
        _ = (-1) * rho 42520 - rho 42521 + (seg45AccY102 rho - seg45AccX102 rho * (-1)) * (rho 42517 + rho 42518) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX103 rho = seg45AccX102 rho - Bool.toZMod bit * (seg45AccX102 rho - rho 42523) := by
      have hd : rho 42525 = Bool.toZMod bit * (rho 42523 - seg45AccX102 rho) := by
        rw [← hbit]
        unfold seg45AccX102
        linear_combination -r4297
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY103 rho = seg45AccY102 rho - Bool.toZMod bit * (seg45AccY102 rho - rho 42524) := by
      have hd : rho 42526 = Bool.toZMod bit * (rho 42524 - seg45AccY102 rho) := by
        rw [← hbit]
        unfold seg45AccY102
        linear_combination -r4298
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42517 * rho 42518 = rho 42527 := by linear_combination r4299
    have hd1 : rho 42517 * rho 42517 = rho 42528 := by linear_combination r4300
    have hd2 : rho 42518 * rho 42518 = rho 42529 := by linear_combination r4301
    have hd3 : rho 42530 * (rho 42518 * rho 42518 + rho 42517 * rho 42517 * (-1)) = 2 * (rho 42517 * rho 42518) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 42531 * (2 - (rho 42518 * rho 42518 + rho 42517 * rho 42517 * (-1))) = rho 42518 * rho 42518 - rho 42517 * rho 42517 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX102 rho : Seg45.F), (seg45AccY102 rho : Seg45.F)⟩
      ⟨(rho 42517 : Seg45.F), (rho 42518 : Seg45.F)⟩
      ⟨(rho 42523 : Seg45.F), (rho 42524 : Seg45.F)⟩
      ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
      ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg45_rows103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4304 rho ∧ Seg45.relationRow4305 rho ∧ Seg45.relationRow4306 rho ∧ Seg45.relationRow4307 rho ∧ Seg45.relationRow4308 rho ∧ Seg45.relationRow4309 rho ∧ Seg45.relationRow4310 rho ∧ Seg45.relationRow4311 rho ∧ Seg45.relationRow4312 rho ∧ Seg45.relationRow4313 rho ∧ Seg45.relationRow4314 rho ∧ Seg45.relationRow4315 rho ∧ Seg45.relationRow4316 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  exact ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩

theorem seg45_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩ := by
  obtain ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩ := seg45_rows103 rho h
  unfold Seg45.relationRow4304 at r4304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4304
  unfold Seg45.relationRow4305 at r4305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305
  unfold Seg45.relationRow4306 at r4306
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4306
  unfold Seg45.relationRow4307 at r4307
  unfold Seg45.relationRow4308 at r4308
  unfold Seg45.relationRow4309 at r4309
  unfold Seg45.relationRow4310 at r4310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4310
  unfold Seg45.relationRow4311 at r4311
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4311
  unfold Seg45.relationRow4312 at r4312
  unfold Seg45.relationRow4313 at r4313
  unfold Seg45.relationRow4314 at r4314
  unfold Seg45.relationRow4315 at r4315
  unfold Seg45.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 41051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
        ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩ := by
    have hnextx : seg45AccX104 rho = seg45AccX103 rho + rho 42538 := by
      unfold seg45AccX104 seg45AccX103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 103]
      ring
    have hnexty : seg45AccY104 rho = seg45AccY103 rho + rho 42539 := by
      unfold seg45AccY104 seg45AccY103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 103]
      ring
    have ha0 : (rho 42530 + rho 42531) * (seg45AccX103 rho + seg45AccY103 rho) = rho 42532 := by
      unfold seg45AccX103 seg45AccY103
      linear_combination r4304
    have ha1 : rho 42531 * seg45AccX103 rho = rho 42533 := by
      unfold seg45AccX103
      linear_combination r4305
    have ha2 : rho 42530 * seg45AccY103 rho = rho 42534 := by
      unfold seg45AccY103
      linear_combination r4306
    have ha3 : 3021 * rho 42533 * rho 42534 = rho 42535 := by
      linear_combination r4307
    have ha4 : rho 42536 * (1 + rho 42535) = rho 42533 + rho 42534 := by
      linear_combination r4308
    have ha5 : rho 42537 * (1 - rho 42535) = rho 42532 - rho 42533 - rho 42534 := by
      linear_combination r4309
    have haddx :
        rho 42536 * (1 + 3021 * (rho 42531 * seg45AccX103 rho) * (rho 42530 * seg45AccY103 rho)) =
          rho 42531 * seg45AccX103 rho + rho 42530 * seg45AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42537 * (1 - 3021 * (rho 42531 * seg45AccX103 rho) * (rho 42530 * seg45AccY103 rho)) =
          (-1) * (rho 42531 * seg45AccX103 rho) - rho 42530 * seg45AccY103 rho +
            (seg45AccY103 rho - seg45AccX103 rho * (-1)) * (rho 42530 + rho 42531) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42537 * (1 - rho 42535) = rho 42532 - rho 42533 - rho 42534 := ha5
        _ = (-1) * rho 42533 - rho 42534 + (seg45AccY103 rho - seg45AccX103 rho * (-1)) * (rho 42530 + rho 42531) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX104 rho = seg45AccX103 rho - Bool.toZMod bit * (seg45AccX103 rho - rho 42536) := by
      have hd : rho 42538 = Bool.toZMod bit * (rho 42536 - seg45AccX103 rho) := by
        rw [← hbit]
        unfold seg45AccX103
        linear_combination -r4310
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY104 rho = seg45AccY103 rho - Bool.toZMod bit * (seg45AccY103 rho - rho 42537) := by
      have hd : rho 42539 = Bool.toZMod bit * (rho 42537 - seg45AccY103 rho) := by
        rw [← hbit]
        unfold seg45AccY103
        linear_combination -r4311
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42530 * rho 42531 = rho 42540 := by linear_combination r4312
    have hd1 : rho 42530 * rho 42530 = rho 42541 := by linear_combination r4313
    have hd2 : rho 42531 * rho 42531 = rho 42542 := by linear_combination r4314
    have hd3 : rho 42543 * (rho 42531 * rho 42531 + rho 42530 * rho 42530 * (-1)) = 2 * (rho 42530 * rho 42531) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 42544 * (2 - (rho 42531 * rho 42531 + rho 42530 * rho 42530 * (-1))) = rho 42531 * rho 42531 - rho 42530 * rho 42530 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX103 rho : Seg45.F), (seg45AccY103 rho : Seg45.F)⟩
      ⟨(rho 42530 : Seg45.F), (rho 42531 : Seg45.F)⟩
      ⟨(rho 42536 : Seg45.F), (rho 42537 : Seg45.F)⟩
      ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
      ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg45_rows104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4317 rho ∧ Seg45.relationRow4318 rho ∧ Seg45.relationRow4319 rho ∧ Seg45.relationRow4320 rho ∧ Seg45.relationRow4321 rho ∧ Seg45.relationRow4322 rho ∧ Seg45.relationRow4323 rho ∧ Seg45.relationRow4324 rho ∧ Seg45.relationRow4325 rho ∧ Seg45.relationRow4326 rho ∧ Seg45.relationRow4327 rho ∧ Seg45.relationRow4328 rho ∧ Seg45.relationRow4329 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩

theorem seg45_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩ := by
  obtain ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩ := seg45_rows104 rho h
  unfold Seg45.relationRow4317 at r4317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4317
  unfold Seg45.relationRow4318 at r4318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318
  unfold Seg45.relationRow4319 at r4319
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4319
  unfold Seg45.relationRow4320 at r4320
  unfold Seg45.relationRow4321 at r4321
  unfold Seg45.relationRow4322 at r4322
  unfold Seg45.relationRow4323 at r4323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4323
  unfold Seg45.relationRow4324 at r4324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4324
  unfold Seg45.relationRow4325 at r4325
  unfold Seg45.relationRow4326 at r4326
  unfold Seg45.relationRow4327 at r4327
  unfold Seg45.relationRow4328 at r4328
  unfold Seg45.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 41052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
        ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩ := by
    have hnextx : seg45AccX105 rho = seg45AccX104 rho + rho 42551 := by
      unfold seg45AccX105 seg45AccX104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 104]
      ring
    have hnexty : seg45AccY105 rho = seg45AccY104 rho + rho 42552 := by
      unfold seg45AccY105 seg45AccY104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 104]
      ring
    have ha0 : (rho 42543 + rho 42544) * (seg45AccX104 rho + seg45AccY104 rho) = rho 42545 := by
      unfold seg45AccX104 seg45AccY104
      linear_combination r4317
    have ha1 : rho 42544 * seg45AccX104 rho = rho 42546 := by
      unfold seg45AccX104
      linear_combination r4318
    have ha2 : rho 42543 * seg45AccY104 rho = rho 42547 := by
      unfold seg45AccY104
      linear_combination r4319
    have ha3 : 3021 * rho 42546 * rho 42547 = rho 42548 := by
      linear_combination r4320
    have ha4 : rho 42549 * (1 + rho 42548) = rho 42546 + rho 42547 := by
      linear_combination r4321
    have ha5 : rho 42550 * (1 - rho 42548) = rho 42545 - rho 42546 - rho 42547 := by
      linear_combination r4322
    have haddx :
        rho 42549 * (1 + 3021 * (rho 42544 * seg45AccX104 rho) * (rho 42543 * seg45AccY104 rho)) =
          rho 42544 * seg45AccX104 rho + rho 42543 * seg45AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42550 * (1 - 3021 * (rho 42544 * seg45AccX104 rho) * (rho 42543 * seg45AccY104 rho)) =
          (-1) * (rho 42544 * seg45AccX104 rho) - rho 42543 * seg45AccY104 rho +
            (seg45AccY104 rho - seg45AccX104 rho * (-1)) * (rho 42543 + rho 42544) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42550 * (1 - rho 42548) = rho 42545 - rho 42546 - rho 42547 := ha5
        _ = (-1) * rho 42546 - rho 42547 + (seg45AccY104 rho - seg45AccX104 rho * (-1)) * (rho 42543 + rho 42544) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX105 rho = seg45AccX104 rho - Bool.toZMod bit * (seg45AccX104 rho - rho 42549) := by
      have hd : rho 42551 = Bool.toZMod bit * (rho 42549 - seg45AccX104 rho) := by
        rw [← hbit]
        unfold seg45AccX104
        linear_combination -r4323
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY105 rho = seg45AccY104 rho - Bool.toZMod bit * (seg45AccY104 rho - rho 42550) := by
      have hd : rho 42552 = Bool.toZMod bit * (rho 42550 - seg45AccY104 rho) := by
        rw [← hbit]
        unfold seg45AccY104
        linear_combination -r4324
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42543 * rho 42544 = rho 42553 := by linear_combination r4325
    have hd1 : rho 42543 * rho 42543 = rho 42554 := by linear_combination r4326
    have hd2 : rho 42544 * rho 42544 = rho 42555 := by linear_combination r4327
    have hd3 : rho 42556 * (rho 42544 * rho 42544 + rho 42543 * rho 42543 * (-1)) = 2 * (rho 42543 * rho 42544) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 42557 * (2 - (rho 42544 * rho 42544 + rho 42543 * rho 42543 * (-1))) = rho 42544 * rho 42544 - rho 42543 * rho 42543 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX104 rho : Seg45.F), (seg45AccY104 rho : Seg45.F)⟩
      ⟨(rho 42543 : Seg45.F), (rho 42544 : Seg45.F)⟩
      ⟨(rho 42549 : Seg45.F), (rho 42550 : Seg45.F)⟩
      ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
      ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg45_rows105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4330 rho ∧ Seg45.relationRow4331 rho ∧ Seg45.relationRow4332 rho ∧ Seg45.relationRow4333 rho ∧ Seg45.relationRow4334 rho ∧ Seg45.relationRow4335 rho ∧ Seg45.relationRow4336 rho ∧ Seg45.relationRow4337 rho ∧ Seg45.relationRow4338 rho ∧ Seg45.relationRow4339 rho ∧ Seg45.relationRow4340 rho ∧ Seg45.relationRow4341 rho ∧ Seg45.relationRow4342 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩

theorem seg45_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩ := by
  obtain ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩ := seg45_rows105 rho h
  unfold Seg45.relationRow4330 at r4330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4330
  unfold Seg45.relationRow4331 at r4331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331
  unfold Seg45.relationRow4332 at r4332
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4332
  unfold Seg45.relationRow4333 at r4333
  unfold Seg45.relationRow4334 at r4334
  unfold Seg45.relationRow4335 at r4335
  unfold Seg45.relationRow4336 at r4336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4336
  unfold Seg45.relationRow4337 at r4337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4337
  unfold Seg45.relationRow4338 at r4338
  unfold Seg45.relationRow4339 at r4339
  unfold Seg45.relationRow4340 at r4340
  unfold Seg45.relationRow4341 at r4341
  unfold Seg45.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 41053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
        ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩ := by
    have hnextx : seg45AccX106 rho = seg45AccX105 rho + rho 42564 := by
      unfold seg45AccX106 seg45AccX105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 105]
      ring
    have hnexty : seg45AccY106 rho = seg45AccY105 rho + rho 42565 := by
      unfold seg45AccY106 seg45AccY105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 105]
      ring
    have ha0 : (rho 42556 + rho 42557) * (seg45AccX105 rho + seg45AccY105 rho) = rho 42558 := by
      unfold seg45AccX105 seg45AccY105
      linear_combination r4330
    have ha1 : rho 42557 * seg45AccX105 rho = rho 42559 := by
      unfold seg45AccX105
      linear_combination r4331
    have ha2 : rho 42556 * seg45AccY105 rho = rho 42560 := by
      unfold seg45AccY105
      linear_combination r4332
    have ha3 : 3021 * rho 42559 * rho 42560 = rho 42561 := by
      linear_combination r4333
    have ha4 : rho 42562 * (1 + rho 42561) = rho 42559 + rho 42560 := by
      linear_combination r4334
    have ha5 : rho 42563 * (1 - rho 42561) = rho 42558 - rho 42559 - rho 42560 := by
      linear_combination r4335
    have haddx :
        rho 42562 * (1 + 3021 * (rho 42557 * seg45AccX105 rho) * (rho 42556 * seg45AccY105 rho)) =
          rho 42557 * seg45AccX105 rho + rho 42556 * seg45AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42563 * (1 - 3021 * (rho 42557 * seg45AccX105 rho) * (rho 42556 * seg45AccY105 rho)) =
          (-1) * (rho 42557 * seg45AccX105 rho) - rho 42556 * seg45AccY105 rho +
            (seg45AccY105 rho - seg45AccX105 rho * (-1)) * (rho 42556 + rho 42557) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42563 * (1 - rho 42561) = rho 42558 - rho 42559 - rho 42560 := ha5
        _ = (-1) * rho 42559 - rho 42560 + (seg45AccY105 rho - seg45AccX105 rho * (-1)) * (rho 42556 + rho 42557) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX106 rho = seg45AccX105 rho - Bool.toZMod bit * (seg45AccX105 rho - rho 42562) := by
      have hd : rho 42564 = Bool.toZMod bit * (rho 42562 - seg45AccX105 rho) := by
        rw [← hbit]
        unfold seg45AccX105
        linear_combination -r4336
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY106 rho = seg45AccY105 rho - Bool.toZMod bit * (seg45AccY105 rho - rho 42563) := by
      have hd : rho 42565 = Bool.toZMod bit * (rho 42563 - seg45AccY105 rho) := by
        rw [← hbit]
        unfold seg45AccY105
        linear_combination -r4337
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42556 * rho 42557 = rho 42566 := by linear_combination r4338
    have hd1 : rho 42556 * rho 42556 = rho 42567 := by linear_combination r4339
    have hd2 : rho 42557 * rho 42557 = rho 42568 := by linear_combination r4340
    have hd3 : rho 42569 * (rho 42557 * rho 42557 + rho 42556 * rho 42556 * (-1)) = 2 * (rho 42556 * rho 42557) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 42570 * (2 - (rho 42557 * rho 42557 + rho 42556 * rho 42556 * (-1))) = rho 42557 * rho 42557 - rho 42556 * rho 42556 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX105 rho : Seg45.F), (seg45AccY105 rho : Seg45.F)⟩
      ⟨(rho 42556 : Seg45.F), (rho 42557 : Seg45.F)⟩
      ⟨(rho 42562 : Seg45.F), (rho 42563 : Seg45.F)⟩
      ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
      ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg45_rows106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4343 rho ∧ Seg45.relationRow4344 rho ∧ Seg45.relationRow4345 rho ∧ Seg45.relationRow4346 rho ∧ Seg45.relationRow4347 rho ∧ Seg45.relationRow4348 rho ∧ Seg45.relationRow4349 rho ∧ Seg45.relationRow4350 rho ∧ Seg45.relationRow4351 rho ∧ Seg45.relationRow4352 rho ∧ Seg45.relationRow4353 rho ∧ Seg45.relationRow4354 rho ∧ Seg45.relationRow4355 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩

theorem seg45_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩ := by
  obtain ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩ := seg45_rows106 rho h
  unfold Seg45.relationRow4343 at r4343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4343
  unfold Seg45.relationRow4344 at r4344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344
  unfold Seg45.relationRow4345 at r4345
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4345
  unfold Seg45.relationRow4346 at r4346
  unfold Seg45.relationRow4347 at r4347
  unfold Seg45.relationRow4348 at r4348
  unfold Seg45.relationRow4349 at r4349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4349
  unfold Seg45.relationRow4350 at r4350
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4350
  unfold Seg45.relationRow4351 at r4351
  unfold Seg45.relationRow4352 at r4352
  unfold Seg45.relationRow4353 at r4353
  unfold Seg45.relationRow4354 at r4354
  unfold Seg45.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 41054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
        ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩ := by
    have hnextx : seg45AccX107 rho = seg45AccX106 rho + rho 42577 := by
      unfold seg45AccX107 seg45AccX106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 106]
      ring
    have hnexty : seg45AccY107 rho = seg45AccY106 rho + rho 42578 := by
      unfold seg45AccY107 seg45AccY106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 106]
      ring
    have ha0 : (rho 42569 + rho 42570) * (seg45AccX106 rho + seg45AccY106 rho) = rho 42571 := by
      unfold seg45AccX106 seg45AccY106
      linear_combination r4343
    have ha1 : rho 42570 * seg45AccX106 rho = rho 42572 := by
      unfold seg45AccX106
      linear_combination r4344
    have ha2 : rho 42569 * seg45AccY106 rho = rho 42573 := by
      unfold seg45AccY106
      linear_combination r4345
    have ha3 : 3021 * rho 42572 * rho 42573 = rho 42574 := by
      linear_combination r4346
    have ha4 : rho 42575 * (1 + rho 42574) = rho 42572 + rho 42573 := by
      linear_combination r4347
    have ha5 : rho 42576 * (1 - rho 42574) = rho 42571 - rho 42572 - rho 42573 := by
      linear_combination r4348
    have haddx :
        rho 42575 * (1 + 3021 * (rho 42570 * seg45AccX106 rho) * (rho 42569 * seg45AccY106 rho)) =
          rho 42570 * seg45AccX106 rho + rho 42569 * seg45AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42576 * (1 - 3021 * (rho 42570 * seg45AccX106 rho) * (rho 42569 * seg45AccY106 rho)) =
          (-1) * (rho 42570 * seg45AccX106 rho) - rho 42569 * seg45AccY106 rho +
            (seg45AccY106 rho - seg45AccX106 rho * (-1)) * (rho 42569 + rho 42570) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42576 * (1 - rho 42574) = rho 42571 - rho 42572 - rho 42573 := ha5
        _ = (-1) * rho 42572 - rho 42573 + (seg45AccY106 rho - seg45AccX106 rho * (-1)) * (rho 42569 + rho 42570) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX107 rho = seg45AccX106 rho - Bool.toZMod bit * (seg45AccX106 rho - rho 42575) := by
      have hd : rho 42577 = Bool.toZMod bit * (rho 42575 - seg45AccX106 rho) := by
        rw [← hbit]
        unfold seg45AccX106
        linear_combination -r4349
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY107 rho = seg45AccY106 rho - Bool.toZMod bit * (seg45AccY106 rho - rho 42576) := by
      have hd : rho 42578 = Bool.toZMod bit * (rho 42576 - seg45AccY106 rho) := by
        rw [← hbit]
        unfold seg45AccY106
        linear_combination -r4350
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42569 * rho 42570 = rho 42579 := by linear_combination r4351
    have hd1 : rho 42569 * rho 42569 = rho 42580 := by linear_combination r4352
    have hd2 : rho 42570 * rho 42570 = rho 42581 := by linear_combination r4353
    have hd3 : rho 42582 * (rho 42570 * rho 42570 + rho 42569 * rho 42569 * (-1)) = 2 * (rho 42569 * rho 42570) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 42583 * (2 - (rho 42570 * rho 42570 + rho 42569 * rho 42569 * (-1))) = rho 42570 * rho 42570 - rho 42569 * rho 42569 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX106 rho : Seg45.F), (seg45AccY106 rho : Seg45.F)⟩
      ⟨(rho 42569 : Seg45.F), (rho 42570 : Seg45.F)⟩
      ⟨(rho 42575 : Seg45.F), (rho 42576 : Seg45.F)⟩
      ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
      ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg45_rows107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4356 rho ∧ Seg45.relationRow4357 rho ∧ Seg45.relationRow4358 rho ∧ Seg45.relationRow4359 rho ∧ Seg45.relationRow4360 rho ∧ Seg45.relationRow4361 rho ∧ Seg45.relationRow4362 rho ∧ Seg45.relationRow4363 rho ∧ Seg45.relationRow4364 rho ∧ Seg45.relationRow4365 rho ∧ Seg45.relationRow4366 rho ∧ Seg45.relationRow4367 rho ∧ Seg45.relationRow4368 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩

theorem seg45_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩ := by
  obtain ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩ := seg45_rows107 rho h
  unfold Seg45.relationRow4356 at r4356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4356
  unfold Seg45.relationRow4357 at r4357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4357
  unfold Seg45.relationRow4358 at r4358
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4358
  unfold Seg45.relationRow4359 at r4359
  unfold Seg45.relationRow4360 at r4360
  unfold Seg45.relationRow4361 at r4361
  unfold Seg45.relationRow4362 at r4362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4362
  unfold Seg45.relationRow4363 at r4363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4363
  unfold Seg45.relationRow4364 at r4364
  unfold Seg45.relationRow4365 at r4365
  unfold Seg45.relationRow4366 at r4366
  unfold Seg45.relationRow4367 at r4367
  unfold Seg45.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 41055 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
        ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩ := by
    have hnextx : seg45AccX108 rho = seg45AccX107 rho + rho 42590 := by
      unfold seg45AccX108 seg45AccX107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 107]
      ring
    have hnexty : seg45AccY108 rho = seg45AccY107 rho + rho 42591 := by
      unfold seg45AccY108 seg45AccY107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 107]
      ring
    have ha0 : (rho 42582 + rho 42583) * (seg45AccX107 rho + seg45AccY107 rho) = rho 42584 := by
      unfold seg45AccX107 seg45AccY107
      linear_combination r4356
    have ha1 : rho 42583 * seg45AccX107 rho = rho 42585 := by
      unfold seg45AccX107
      linear_combination r4357
    have ha2 : rho 42582 * seg45AccY107 rho = rho 42586 := by
      unfold seg45AccY107
      linear_combination r4358
    have ha3 : 3021 * rho 42585 * rho 42586 = rho 42587 := by
      linear_combination r4359
    have ha4 : rho 42588 * (1 + rho 42587) = rho 42585 + rho 42586 := by
      linear_combination r4360
    have ha5 : rho 42589 * (1 - rho 42587) = rho 42584 - rho 42585 - rho 42586 := by
      linear_combination r4361
    have haddx :
        rho 42588 * (1 + 3021 * (rho 42583 * seg45AccX107 rho) * (rho 42582 * seg45AccY107 rho)) =
          rho 42583 * seg45AccX107 rho + rho 42582 * seg45AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42589 * (1 - 3021 * (rho 42583 * seg45AccX107 rho) * (rho 42582 * seg45AccY107 rho)) =
          (-1) * (rho 42583 * seg45AccX107 rho) - rho 42582 * seg45AccY107 rho +
            (seg45AccY107 rho - seg45AccX107 rho * (-1)) * (rho 42582 + rho 42583) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42589 * (1 - rho 42587) = rho 42584 - rho 42585 - rho 42586 := ha5
        _ = (-1) * rho 42585 - rho 42586 + (seg45AccY107 rho - seg45AccX107 rho * (-1)) * (rho 42582 + rho 42583) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX108 rho = seg45AccX107 rho - Bool.toZMod bit * (seg45AccX107 rho - rho 42588) := by
      have hd : rho 42590 = Bool.toZMod bit * (rho 42588 - seg45AccX107 rho) := by
        rw [← hbit]
        unfold seg45AccX107
        linear_combination -r4362
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY108 rho = seg45AccY107 rho - Bool.toZMod bit * (seg45AccY107 rho - rho 42589) := by
      have hd : rho 42591 = Bool.toZMod bit * (rho 42589 - seg45AccY107 rho) := by
        rw [← hbit]
        unfold seg45AccY107
        linear_combination -r4363
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42582 * rho 42583 = rho 42592 := by linear_combination r4364
    have hd1 : rho 42582 * rho 42582 = rho 42593 := by linear_combination r4365
    have hd2 : rho 42583 * rho 42583 = rho 42594 := by linear_combination r4366
    have hd3 : rho 42595 * (rho 42583 * rho 42583 + rho 42582 * rho 42582 * (-1)) = 2 * (rho 42582 * rho 42583) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 42596 * (2 - (rho 42583 * rho 42583 + rho 42582 * rho 42582 * (-1))) = rho 42583 * rho 42583 - rho 42582 * rho 42582 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX107 rho : Seg45.F), (seg45AccY107 rho : Seg45.F)⟩
      ⟨(rho 42582 : Seg45.F), (rho 42583 : Seg45.F)⟩
      ⟨(rho 42588 : Seg45.F), (rho 42589 : Seg45.F)⟩
      ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
      ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg45_rows108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4369 rho ∧ Seg45.relationRow4370 rho ∧ Seg45.relationRow4371 rho ∧ Seg45.relationRow4372 rho ∧ Seg45.relationRow4373 rho ∧ Seg45.relationRow4374 rho ∧ Seg45.relationRow4375 rho ∧ Seg45.relationRow4376 rho ∧ Seg45.relationRow4377 rho ∧ Seg45.relationRow4378 rho ∧ Seg45.relationRow4379 rho ∧ Seg45.relationRow4380 rho ∧ Seg45.relationRow4381 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩

theorem seg45_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩ := by
  obtain ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩ := seg45_rows108 rho h
  unfold Seg45.relationRow4369 at r4369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4369
  unfold Seg45.relationRow4370 at r4370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4370
  unfold Seg45.relationRow4371 at r4371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4371
  unfold Seg45.relationRow4372 at r4372
  unfold Seg45.relationRow4373 at r4373
  unfold Seg45.relationRow4374 at r4374
  unfold Seg45.relationRow4375 at r4375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4375
  unfold Seg45.relationRow4376 at r4376
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4376
  unfold Seg45.relationRow4377 at r4377
  unfold Seg45.relationRow4378 at r4378
  unfold Seg45.relationRow4379 at r4379
  unfold Seg45.relationRow4380 at r4380
  unfold Seg45.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 41056 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
        ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩ := by
    have hnextx : seg45AccX109 rho = seg45AccX108 rho + rho 42603 := by
      unfold seg45AccX109 seg45AccX108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 108]
      ring
    have hnexty : seg45AccY109 rho = seg45AccY108 rho + rho 42604 := by
      unfold seg45AccY109 seg45AccY108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 108]
      ring
    have ha0 : (rho 42595 + rho 42596) * (seg45AccX108 rho + seg45AccY108 rho) = rho 42597 := by
      unfold seg45AccX108 seg45AccY108
      linear_combination r4369
    have ha1 : rho 42596 * seg45AccX108 rho = rho 42598 := by
      unfold seg45AccX108
      linear_combination r4370
    have ha2 : rho 42595 * seg45AccY108 rho = rho 42599 := by
      unfold seg45AccY108
      linear_combination r4371
    have ha3 : 3021 * rho 42598 * rho 42599 = rho 42600 := by
      linear_combination r4372
    have ha4 : rho 42601 * (1 + rho 42600) = rho 42598 + rho 42599 := by
      linear_combination r4373
    have ha5 : rho 42602 * (1 - rho 42600) = rho 42597 - rho 42598 - rho 42599 := by
      linear_combination r4374
    have haddx :
        rho 42601 * (1 + 3021 * (rho 42596 * seg45AccX108 rho) * (rho 42595 * seg45AccY108 rho)) =
          rho 42596 * seg45AccX108 rho + rho 42595 * seg45AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42602 * (1 - 3021 * (rho 42596 * seg45AccX108 rho) * (rho 42595 * seg45AccY108 rho)) =
          (-1) * (rho 42596 * seg45AccX108 rho) - rho 42595 * seg45AccY108 rho +
            (seg45AccY108 rho - seg45AccX108 rho * (-1)) * (rho 42595 + rho 42596) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42602 * (1 - rho 42600) = rho 42597 - rho 42598 - rho 42599 := ha5
        _ = (-1) * rho 42598 - rho 42599 + (seg45AccY108 rho - seg45AccX108 rho * (-1)) * (rho 42595 + rho 42596) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX109 rho = seg45AccX108 rho - Bool.toZMod bit * (seg45AccX108 rho - rho 42601) := by
      have hd : rho 42603 = Bool.toZMod bit * (rho 42601 - seg45AccX108 rho) := by
        rw [← hbit]
        unfold seg45AccX108
        linear_combination -r4375
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY109 rho = seg45AccY108 rho - Bool.toZMod bit * (seg45AccY108 rho - rho 42602) := by
      have hd : rho 42604 = Bool.toZMod bit * (rho 42602 - seg45AccY108 rho) := by
        rw [← hbit]
        unfold seg45AccY108
        linear_combination -r4376
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42595 * rho 42596 = rho 42605 := by linear_combination r4377
    have hd1 : rho 42595 * rho 42595 = rho 42606 := by linear_combination r4378
    have hd2 : rho 42596 * rho 42596 = rho 42607 := by linear_combination r4379
    have hd3 : rho 42608 * (rho 42596 * rho 42596 + rho 42595 * rho 42595 * (-1)) = 2 * (rho 42595 * rho 42596) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 42609 * (2 - (rho 42596 * rho 42596 + rho 42595 * rho 42595 * (-1))) = rho 42596 * rho 42596 - rho 42595 * rho 42595 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX108 rho : Seg45.F), (seg45AccY108 rho : Seg45.F)⟩
      ⟨(rho 42595 : Seg45.F), (rho 42596 : Seg45.F)⟩
      ⟨(rho 42601 : Seg45.F), (rho 42602 : Seg45.F)⟩
      ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
      ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg45_rows109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4382 rho ∧ Seg45.relationRow4383 rho ∧ Seg45.relationRow4384 rho ∧ Seg45.relationRow4385 rho ∧ Seg45.relationRow4386 rho ∧ Seg45.relationRow4387 rho ∧ Seg45.relationRow4388 rho ∧ Seg45.relationRow4389 rho ∧ Seg45.relationRow4390 rho ∧ Seg45.relationRow4391 rho ∧ Seg45.relationRow4392 rho ∧ Seg45.relationRow4393 rho ∧ Seg45.relationRow4394 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  exact ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩

theorem seg45_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩ := by
  obtain ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩ := seg45_rows109 rho h
  unfold Seg45.relationRow4382 at r4382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4382
  unfold Seg45.relationRow4383 at r4383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4383
  unfold Seg45.relationRow4384 at r4384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4384
  unfold Seg45.relationRow4385 at r4385
  unfold Seg45.relationRow4386 at r4386
  unfold Seg45.relationRow4387 at r4387
  unfold Seg45.relationRow4388 at r4388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4388
  unfold Seg45.relationRow4389 at r4389
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4389
  unfold Seg45.relationRow4390 at r4390
  unfold Seg45.relationRow4391 at r4391
  unfold Seg45.relationRow4392 at r4392
  unfold Seg45.relationRow4393 at r4393
  unfold Seg45.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 41057 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
        ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
        ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
        ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩ := by
    have hnextx : seg45AccX110 rho = seg45AccX109 rho + rho 42616 := by
      unfold seg45AccX110 seg45AccX109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 109]
      ring
    have hnexty : seg45AccY110 rho = seg45AccY109 rho + rho 42617 := by
      unfold seg45AccY110 seg45AccY109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 109]
      ring
    have ha0 : (rho 42608 + rho 42609) * (seg45AccX109 rho + seg45AccY109 rho) = rho 42610 := by
      unfold seg45AccX109 seg45AccY109
      linear_combination r4382
    have ha1 : rho 42609 * seg45AccX109 rho = rho 42611 := by
      unfold seg45AccX109
      linear_combination r4383
    have ha2 : rho 42608 * seg45AccY109 rho = rho 42612 := by
      unfold seg45AccY109
      linear_combination r4384
    have ha3 : 3021 * rho 42611 * rho 42612 = rho 42613 := by
      linear_combination r4385
    have ha4 : rho 42614 * (1 + rho 42613) = rho 42611 + rho 42612 := by
      linear_combination r4386
    have ha5 : rho 42615 * (1 - rho 42613) = rho 42610 - rho 42611 - rho 42612 := by
      linear_combination r4387
    have haddx :
        rho 42614 * (1 + 3021 * (rho 42609 * seg45AccX109 rho) * (rho 42608 * seg45AccY109 rho)) =
          rho 42609 * seg45AccX109 rho + rho 42608 * seg45AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42615 * (1 - 3021 * (rho 42609 * seg45AccX109 rho) * (rho 42608 * seg45AccY109 rho)) =
          (-1) * (rho 42609 * seg45AccX109 rho) - rho 42608 * seg45AccY109 rho +
            (seg45AccY109 rho - seg45AccX109 rho * (-1)) * (rho 42608 + rho 42609) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42615 * (1 - rho 42613) = rho 42610 - rho 42611 - rho 42612 := ha5
        _ = (-1) * rho 42611 - rho 42612 + (seg45AccY109 rho - seg45AccX109 rho * (-1)) * (rho 42608 + rho 42609) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX110 rho = seg45AccX109 rho - Bool.toZMod bit * (seg45AccX109 rho - rho 42614) := by
      have hd : rho 42616 = Bool.toZMod bit * (rho 42614 - seg45AccX109 rho) := by
        rw [← hbit]
        unfold seg45AccX109
        linear_combination -r4388
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY110 rho = seg45AccY109 rho - Bool.toZMod bit * (seg45AccY109 rho - rho 42615) := by
      have hd : rho 42617 = Bool.toZMod bit * (rho 42615 - seg45AccY109 rho) := by
        rw [← hbit]
        unfold seg45AccY109
        linear_combination -r4389
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42608 * rho 42609 = rho 42618 := by linear_combination r4390
    have hd1 : rho 42608 * rho 42608 = rho 42619 := by linear_combination r4391
    have hd2 : rho 42609 * rho 42609 = rho 42620 := by linear_combination r4392
    have hd3 : rho 42621 * (rho 42609 * rho 42609 + rho 42608 * rho 42608 * (-1)) = 2 * (rho 42608 * rho 42609) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 42622 * (2 - (rho 42609 * rho 42609 + rho 42608 * rho 42608 * (-1))) = rho 42609 * rho 42609 - rho 42608 * rho 42608 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX109 rho : Seg45.F), (seg45AccY109 rho : Seg45.F)⟩
      ⟨(rho 42608 : Seg45.F), (rho 42609 : Seg45.F)⟩
      ⟨(rho 42614 : Seg45.F), (rho 42615 : Seg45.F)⟩
      ⟨(seg45AccX110 rho : Seg45.F), (seg45AccY110 rho : Seg45.F)⟩
      ⟨(rho 42621 : Seg45.F), (rho 42622 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg45_hstep_c9 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg45_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg45_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg45_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg45_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg45_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg45_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg45_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg45_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg45_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg45_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
