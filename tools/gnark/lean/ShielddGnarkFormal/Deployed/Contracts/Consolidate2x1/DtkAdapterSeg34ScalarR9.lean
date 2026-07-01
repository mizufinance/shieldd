import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4252 rho ∧ Seg34.relationRow4253 rho ∧ Seg34.relationRow4254 rho ∧ Seg34.relationRow4255 rho ∧ Seg34.relationRow4256 rho ∧ Seg34.relationRow4257 rho ∧ Seg34.relationRow4258 rho ∧ Seg34.relationRow4259 rho ∧ Seg34.relationRow4260 rho ∧ Seg34.relationRow4261 rho ∧ Seg34.relationRow4262 rho ∧ Seg34.relationRow4263 rho ∧ Seg34.relationRow4264 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩

theorem seg34_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34091 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩ := by
  obtain ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩ := seg34_rows99 rho h
  unfold Seg34.relationRow4252 at r4252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4252
  unfold Seg34.relationRow4253 at r4253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253
  unfold Seg34.relationRow4254 at r4254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4254
  unfold Seg34.relationRow4255 at r4255
  unfold Seg34.relationRow4256 at r4256
  unfold Seg34.relationRow4257 at r4257
  unfold Seg34.relationRow4258 at r4258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4258
  unfold Seg34.relationRow4259 at r4259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4259
  unfold Seg34.relationRow4260 at r4260
  unfold Seg34.relationRow4261 at r4261
  unfold Seg34.relationRow4262 at r4262
  unfold Seg34.relationRow4263 at r4263
  unfold Seg34.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 34091 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
        ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩ := by
    have hnextx : seg34AccX100 rho = seg34AccX99 rho + rho 35530 := by
      unfold seg34AccX100 seg34AccX99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 99]
      ring
    have hnexty : seg34AccY100 rho = seg34AccY99 rho + rho 35531 := by
      unfold seg34AccY100 seg34AccY99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 99]
      ring
    have ha0 : (rho 35522 + rho 35523) * (seg34AccX99 rho + seg34AccY99 rho) = rho 35524 := by
      unfold seg34AccX99 seg34AccY99
      linear_combination r4252
    have ha1 : rho 35523 * seg34AccX99 rho = rho 35525 := by
      unfold seg34AccX99
      linear_combination r4253
    have ha2 : rho 35522 * seg34AccY99 rho = rho 35526 := by
      unfold seg34AccY99
      linear_combination r4254
    have ha3 : 3021 * rho 35525 * rho 35526 = rho 35527 := by
      linear_combination r4255
    have ha4 : rho 35528 * (1 + rho 35527) = rho 35525 + rho 35526 := by
      linear_combination r4256
    have ha5 : rho 35529 * (1 - rho 35527) = rho 35524 - rho 35525 - rho 35526 := by
      linear_combination r4257
    have haddx :
        rho 35528 * (1 + 3021 * (rho 35523 * seg34AccX99 rho) * (rho 35522 * seg34AccY99 rho)) =
          rho 35523 * seg34AccX99 rho + rho 35522 * seg34AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35529 * (1 - 3021 * (rho 35523 * seg34AccX99 rho) * (rho 35522 * seg34AccY99 rho)) =
          (-1) * (rho 35523 * seg34AccX99 rho) - rho 35522 * seg34AccY99 rho +
            (seg34AccY99 rho - seg34AccX99 rho * (-1)) * (rho 35522 + rho 35523) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35529 * (1 - rho 35527) = rho 35524 - rho 35525 - rho 35526 := ha5
        _ = (-1) * rho 35525 - rho 35526 + (seg34AccY99 rho - seg34AccX99 rho * (-1)) * (rho 35522 + rho 35523) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX100 rho = seg34AccX99 rho - Bool.toZMod bit * (seg34AccX99 rho - rho 35528) := by
      have hd : rho 35530 = Bool.toZMod bit * (rho 35528 - seg34AccX99 rho) := by
        rw [← hbit]
        unfold seg34AccX99
        linear_combination -r4258
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY100 rho = seg34AccY99 rho - Bool.toZMod bit * (seg34AccY99 rho - rho 35529) := by
      have hd : rho 35531 = Bool.toZMod bit * (rho 35529 - seg34AccY99 rho) := by
        rw [← hbit]
        unfold seg34AccY99
        linear_combination -r4259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35522 * rho 35523 = rho 35532 := by linear_combination r4260
    have hd1 : rho 35522 * rho 35522 = rho 35533 := by linear_combination r4261
    have hd2 : rho 35523 * rho 35523 = rho 35534 := by linear_combination r4262
    have hd3 : rho 35535 * (rho 35523 * rho 35523 + rho 35522 * rho 35522 * (-1)) = 2 * (rho 35522 * rho 35523) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 35536 * (2 - (rho 35523 * rho 35523 + rho 35522 * rho 35522 * (-1))) = rho 35523 * rho 35523 - rho 35522 * rho 35522 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX99 rho : Seg34.F), (seg34AccY99 rho : Seg34.F)⟩
      ⟨(rho 35522 : Seg34.F), (rho 35523 : Seg34.F)⟩
      ⟨(rho 35528 : Seg34.F), (rho 35529 : Seg34.F)⟩
      ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
      ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg34_rows100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4265 rho ∧ Seg34.relationRow4266 rho ∧ Seg34.relationRow4267 rho ∧ Seg34.relationRow4268 rho ∧ Seg34.relationRow4269 rho ∧ Seg34.relationRow4270 rho ∧ Seg34.relationRow4271 rho ∧ Seg34.relationRow4272 rho ∧ Seg34.relationRow4273 rho ∧ Seg34.relationRow4274 rho ∧ Seg34.relationRow4275 rho ∧ Seg34.relationRow4276 rho ∧ Seg34.relationRow4277 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩

theorem seg34_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34092 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩ := by
  obtain ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩ := seg34_rows100 rho h
  unfold Seg34.relationRow4265 at r4265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4265
  unfold Seg34.relationRow4266 at r4266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266
  unfold Seg34.relationRow4267 at r4267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4267
  unfold Seg34.relationRow4268 at r4268
  unfold Seg34.relationRow4269 at r4269
  unfold Seg34.relationRow4270 at r4270
  unfold Seg34.relationRow4271 at r4271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4271
  unfold Seg34.relationRow4272 at r4272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4272
  unfold Seg34.relationRow4273 at r4273
  unfold Seg34.relationRow4274 at r4274
  unfold Seg34.relationRow4275 at r4275
  unfold Seg34.relationRow4276 at r4276
  unfold Seg34.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 34092 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
        ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩ := by
    have hnextx : seg34AccX101 rho = seg34AccX100 rho + rho 35543 := by
      unfold seg34AccX101 seg34AccX100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 100]
      ring
    have hnexty : seg34AccY101 rho = seg34AccY100 rho + rho 35544 := by
      unfold seg34AccY101 seg34AccY100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 100]
      ring
    have ha0 : (rho 35535 + rho 35536) * (seg34AccX100 rho + seg34AccY100 rho) = rho 35537 := by
      unfold seg34AccX100 seg34AccY100
      linear_combination r4265
    have ha1 : rho 35536 * seg34AccX100 rho = rho 35538 := by
      unfold seg34AccX100
      linear_combination r4266
    have ha2 : rho 35535 * seg34AccY100 rho = rho 35539 := by
      unfold seg34AccY100
      linear_combination r4267
    have ha3 : 3021 * rho 35538 * rho 35539 = rho 35540 := by
      linear_combination r4268
    have ha4 : rho 35541 * (1 + rho 35540) = rho 35538 + rho 35539 := by
      linear_combination r4269
    have ha5 : rho 35542 * (1 - rho 35540) = rho 35537 - rho 35538 - rho 35539 := by
      linear_combination r4270
    have haddx :
        rho 35541 * (1 + 3021 * (rho 35536 * seg34AccX100 rho) * (rho 35535 * seg34AccY100 rho)) =
          rho 35536 * seg34AccX100 rho + rho 35535 * seg34AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35542 * (1 - 3021 * (rho 35536 * seg34AccX100 rho) * (rho 35535 * seg34AccY100 rho)) =
          (-1) * (rho 35536 * seg34AccX100 rho) - rho 35535 * seg34AccY100 rho +
            (seg34AccY100 rho - seg34AccX100 rho * (-1)) * (rho 35535 + rho 35536) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35542 * (1 - rho 35540) = rho 35537 - rho 35538 - rho 35539 := ha5
        _ = (-1) * rho 35538 - rho 35539 + (seg34AccY100 rho - seg34AccX100 rho * (-1)) * (rho 35535 + rho 35536) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX101 rho = seg34AccX100 rho - Bool.toZMod bit * (seg34AccX100 rho - rho 35541) := by
      have hd : rho 35543 = Bool.toZMod bit * (rho 35541 - seg34AccX100 rho) := by
        rw [← hbit]
        unfold seg34AccX100
        linear_combination -r4271
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY101 rho = seg34AccY100 rho - Bool.toZMod bit * (seg34AccY100 rho - rho 35542) := by
      have hd : rho 35544 = Bool.toZMod bit * (rho 35542 - seg34AccY100 rho) := by
        rw [← hbit]
        unfold seg34AccY100
        linear_combination -r4272
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35535 * rho 35536 = rho 35545 := by linear_combination r4273
    have hd1 : rho 35535 * rho 35535 = rho 35546 := by linear_combination r4274
    have hd2 : rho 35536 * rho 35536 = rho 35547 := by linear_combination r4275
    have hd3 : rho 35548 * (rho 35536 * rho 35536 + rho 35535 * rho 35535 * (-1)) = 2 * (rho 35535 * rho 35536) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 35549 * (2 - (rho 35536 * rho 35536 + rho 35535 * rho 35535 * (-1))) = rho 35536 * rho 35536 - rho 35535 * rho 35535 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX100 rho : Seg34.F), (seg34AccY100 rho : Seg34.F)⟩
      ⟨(rho 35535 : Seg34.F), (rho 35536 : Seg34.F)⟩
      ⟨(rho 35541 : Seg34.F), (rho 35542 : Seg34.F)⟩
      ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
      ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg34_rows101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4278 rho ∧ Seg34.relationRow4279 rho ∧ Seg34.relationRow4280 rho ∧ Seg34.relationRow4281 rho ∧ Seg34.relationRow4282 rho ∧ Seg34.relationRow4283 rho ∧ Seg34.relationRow4284 rho ∧ Seg34.relationRow4285 rho ∧ Seg34.relationRow4286 rho ∧ Seg34.relationRow4287 rho ∧ Seg34.relationRow4288 rho ∧ Seg34.relationRow4289 rho ∧ Seg34.relationRow4290 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩

theorem seg34_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34093 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩ := by
  obtain ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩ := seg34_rows101 rho h
  unfold Seg34.relationRow4278 at r4278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4278
  unfold Seg34.relationRow4279 at r4279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279
  unfold Seg34.relationRow4280 at r4280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4280
  unfold Seg34.relationRow4281 at r4281
  unfold Seg34.relationRow4282 at r4282
  unfold Seg34.relationRow4283 at r4283
  unfold Seg34.relationRow4284 at r4284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4284
  unfold Seg34.relationRow4285 at r4285
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4285
  unfold Seg34.relationRow4286 at r4286
  unfold Seg34.relationRow4287 at r4287
  unfold Seg34.relationRow4288 at r4288
  unfold Seg34.relationRow4289 at r4289
  unfold Seg34.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 34093 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
        ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩ := by
    have hnextx : seg34AccX102 rho = seg34AccX101 rho + rho 35556 := by
      unfold seg34AccX102 seg34AccX101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 101]
      ring
    have hnexty : seg34AccY102 rho = seg34AccY101 rho + rho 35557 := by
      unfold seg34AccY102 seg34AccY101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 101]
      ring
    have ha0 : (rho 35548 + rho 35549) * (seg34AccX101 rho + seg34AccY101 rho) = rho 35550 := by
      unfold seg34AccX101 seg34AccY101
      linear_combination r4278
    have ha1 : rho 35549 * seg34AccX101 rho = rho 35551 := by
      unfold seg34AccX101
      linear_combination r4279
    have ha2 : rho 35548 * seg34AccY101 rho = rho 35552 := by
      unfold seg34AccY101
      linear_combination r4280
    have ha3 : 3021 * rho 35551 * rho 35552 = rho 35553 := by
      linear_combination r4281
    have ha4 : rho 35554 * (1 + rho 35553) = rho 35551 + rho 35552 := by
      linear_combination r4282
    have ha5 : rho 35555 * (1 - rho 35553) = rho 35550 - rho 35551 - rho 35552 := by
      linear_combination r4283
    have haddx :
        rho 35554 * (1 + 3021 * (rho 35549 * seg34AccX101 rho) * (rho 35548 * seg34AccY101 rho)) =
          rho 35549 * seg34AccX101 rho + rho 35548 * seg34AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35555 * (1 - 3021 * (rho 35549 * seg34AccX101 rho) * (rho 35548 * seg34AccY101 rho)) =
          (-1) * (rho 35549 * seg34AccX101 rho) - rho 35548 * seg34AccY101 rho +
            (seg34AccY101 rho - seg34AccX101 rho * (-1)) * (rho 35548 + rho 35549) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35555 * (1 - rho 35553) = rho 35550 - rho 35551 - rho 35552 := ha5
        _ = (-1) * rho 35551 - rho 35552 + (seg34AccY101 rho - seg34AccX101 rho * (-1)) * (rho 35548 + rho 35549) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX102 rho = seg34AccX101 rho - Bool.toZMod bit * (seg34AccX101 rho - rho 35554) := by
      have hd : rho 35556 = Bool.toZMod bit * (rho 35554 - seg34AccX101 rho) := by
        rw [← hbit]
        unfold seg34AccX101
        linear_combination -r4284
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY102 rho = seg34AccY101 rho - Bool.toZMod bit * (seg34AccY101 rho - rho 35555) := by
      have hd : rho 35557 = Bool.toZMod bit * (rho 35555 - seg34AccY101 rho) := by
        rw [← hbit]
        unfold seg34AccY101
        linear_combination -r4285
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35548 * rho 35549 = rho 35558 := by linear_combination r4286
    have hd1 : rho 35548 * rho 35548 = rho 35559 := by linear_combination r4287
    have hd2 : rho 35549 * rho 35549 = rho 35560 := by linear_combination r4288
    have hd3 : rho 35561 * (rho 35549 * rho 35549 + rho 35548 * rho 35548 * (-1)) = 2 * (rho 35548 * rho 35549) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 35562 * (2 - (rho 35549 * rho 35549 + rho 35548 * rho 35548 * (-1))) = rho 35549 * rho 35549 - rho 35548 * rho 35548 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX101 rho : Seg34.F), (seg34AccY101 rho : Seg34.F)⟩
      ⟨(rho 35548 : Seg34.F), (rho 35549 : Seg34.F)⟩
      ⟨(rho 35554 : Seg34.F), (rho 35555 : Seg34.F)⟩
      ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
      ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg34_rows102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4291 rho ∧ Seg34.relationRow4292 rho ∧ Seg34.relationRow4293 rho ∧ Seg34.relationRow4294 rho ∧ Seg34.relationRow4295 rho ∧ Seg34.relationRow4296 rho ∧ Seg34.relationRow4297 rho ∧ Seg34.relationRow4298 rho ∧ Seg34.relationRow4299 rho ∧ Seg34.relationRow4300 rho ∧ Seg34.relationRow4301 rho ∧ Seg34.relationRow4302 rho ∧ Seg34.relationRow4303 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩

theorem seg34_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34094 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩ := by
  obtain ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩ := seg34_rows102 rho h
  unfold Seg34.relationRow4291 at r4291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4291
  unfold Seg34.relationRow4292 at r4292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292
  unfold Seg34.relationRow4293 at r4293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4293
  unfold Seg34.relationRow4294 at r4294
  unfold Seg34.relationRow4295 at r4295
  unfold Seg34.relationRow4296 at r4296
  unfold Seg34.relationRow4297 at r4297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4297
  unfold Seg34.relationRow4298 at r4298
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4298
  unfold Seg34.relationRow4299 at r4299
  unfold Seg34.relationRow4300 at r4300
  unfold Seg34.relationRow4301 at r4301
  unfold Seg34.relationRow4302 at r4302
  unfold Seg34.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 34094 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
        ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩ := by
    have hnextx : seg34AccX103 rho = seg34AccX102 rho + rho 35569 := by
      unfold seg34AccX103 seg34AccX102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 102]
      ring
    have hnexty : seg34AccY103 rho = seg34AccY102 rho + rho 35570 := by
      unfold seg34AccY103 seg34AccY102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 102]
      ring
    have ha0 : (rho 35561 + rho 35562) * (seg34AccX102 rho + seg34AccY102 rho) = rho 35563 := by
      unfold seg34AccX102 seg34AccY102
      linear_combination r4291
    have ha1 : rho 35562 * seg34AccX102 rho = rho 35564 := by
      unfold seg34AccX102
      linear_combination r4292
    have ha2 : rho 35561 * seg34AccY102 rho = rho 35565 := by
      unfold seg34AccY102
      linear_combination r4293
    have ha3 : 3021 * rho 35564 * rho 35565 = rho 35566 := by
      linear_combination r4294
    have ha4 : rho 35567 * (1 + rho 35566) = rho 35564 + rho 35565 := by
      linear_combination r4295
    have ha5 : rho 35568 * (1 - rho 35566) = rho 35563 - rho 35564 - rho 35565 := by
      linear_combination r4296
    have haddx :
        rho 35567 * (1 + 3021 * (rho 35562 * seg34AccX102 rho) * (rho 35561 * seg34AccY102 rho)) =
          rho 35562 * seg34AccX102 rho + rho 35561 * seg34AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35568 * (1 - 3021 * (rho 35562 * seg34AccX102 rho) * (rho 35561 * seg34AccY102 rho)) =
          (-1) * (rho 35562 * seg34AccX102 rho) - rho 35561 * seg34AccY102 rho +
            (seg34AccY102 rho - seg34AccX102 rho * (-1)) * (rho 35561 + rho 35562) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35568 * (1 - rho 35566) = rho 35563 - rho 35564 - rho 35565 := ha5
        _ = (-1) * rho 35564 - rho 35565 + (seg34AccY102 rho - seg34AccX102 rho * (-1)) * (rho 35561 + rho 35562) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX103 rho = seg34AccX102 rho - Bool.toZMod bit * (seg34AccX102 rho - rho 35567) := by
      have hd : rho 35569 = Bool.toZMod bit * (rho 35567 - seg34AccX102 rho) := by
        rw [← hbit]
        unfold seg34AccX102
        linear_combination -r4297
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY103 rho = seg34AccY102 rho - Bool.toZMod bit * (seg34AccY102 rho - rho 35568) := by
      have hd : rho 35570 = Bool.toZMod bit * (rho 35568 - seg34AccY102 rho) := by
        rw [← hbit]
        unfold seg34AccY102
        linear_combination -r4298
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35561 * rho 35562 = rho 35571 := by linear_combination r4299
    have hd1 : rho 35561 * rho 35561 = rho 35572 := by linear_combination r4300
    have hd2 : rho 35562 * rho 35562 = rho 35573 := by linear_combination r4301
    have hd3 : rho 35574 * (rho 35562 * rho 35562 + rho 35561 * rho 35561 * (-1)) = 2 * (rho 35561 * rho 35562) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 35575 * (2 - (rho 35562 * rho 35562 + rho 35561 * rho 35561 * (-1))) = rho 35562 * rho 35562 - rho 35561 * rho 35561 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX102 rho : Seg34.F), (seg34AccY102 rho : Seg34.F)⟩
      ⟨(rho 35561 : Seg34.F), (rho 35562 : Seg34.F)⟩
      ⟨(rho 35567 : Seg34.F), (rho 35568 : Seg34.F)⟩
      ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
      ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg34_rows103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4304 rho ∧ Seg34.relationRow4305 rho ∧ Seg34.relationRow4306 rho ∧ Seg34.relationRow4307 rho ∧ Seg34.relationRow4308 rho ∧ Seg34.relationRow4309 rho ∧ Seg34.relationRow4310 rho ∧ Seg34.relationRow4311 rho ∧ Seg34.relationRow4312 rho ∧ Seg34.relationRow4313 rho ∧ Seg34.relationRow4314 rho ∧ Seg34.relationRow4315 rho ∧ Seg34.relationRow4316 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  exact ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩

theorem seg34_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34095 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩ := by
  obtain ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩ := seg34_rows103 rho h
  unfold Seg34.relationRow4304 at r4304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4304
  unfold Seg34.relationRow4305 at r4305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305
  unfold Seg34.relationRow4306 at r4306
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4306
  unfold Seg34.relationRow4307 at r4307
  unfold Seg34.relationRow4308 at r4308
  unfold Seg34.relationRow4309 at r4309
  unfold Seg34.relationRow4310 at r4310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4310
  unfold Seg34.relationRow4311 at r4311
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4311
  unfold Seg34.relationRow4312 at r4312
  unfold Seg34.relationRow4313 at r4313
  unfold Seg34.relationRow4314 at r4314
  unfold Seg34.relationRow4315 at r4315
  unfold Seg34.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 34095 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
        ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩ := by
    have hnextx : seg34AccX104 rho = seg34AccX103 rho + rho 35582 := by
      unfold seg34AccX104 seg34AccX103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 103]
      ring
    have hnexty : seg34AccY104 rho = seg34AccY103 rho + rho 35583 := by
      unfold seg34AccY104 seg34AccY103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 103]
      ring
    have ha0 : (rho 35574 + rho 35575) * (seg34AccX103 rho + seg34AccY103 rho) = rho 35576 := by
      unfold seg34AccX103 seg34AccY103
      linear_combination r4304
    have ha1 : rho 35575 * seg34AccX103 rho = rho 35577 := by
      unfold seg34AccX103
      linear_combination r4305
    have ha2 : rho 35574 * seg34AccY103 rho = rho 35578 := by
      unfold seg34AccY103
      linear_combination r4306
    have ha3 : 3021 * rho 35577 * rho 35578 = rho 35579 := by
      linear_combination r4307
    have ha4 : rho 35580 * (1 + rho 35579) = rho 35577 + rho 35578 := by
      linear_combination r4308
    have ha5 : rho 35581 * (1 - rho 35579) = rho 35576 - rho 35577 - rho 35578 := by
      linear_combination r4309
    have haddx :
        rho 35580 * (1 + 3021 * (rho 35575 * seg34AccX103 rho) * (rho 35574 * seg34AccY103 rho)) =
          rho 35575 * seg34AccX103 rho + rho 35574 * seg34AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35581 * (1 - 3021 * (rho 35575 * seg34AccX103 rho) * (rho 35574 * seg34AccY103 rho)) =
          (-1) * (rho 35575 * seg34AccX103 rho) - rho 35574 * seg34AccY103 rho +
            (seg34AccY103 rho - seg34AccX103 rho * (-1)) * (rho 35574 + rho 35575) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35581 * (1 - rho 35579) = rho 35576 - rho 35577 - rho 35578 := ha5
        _ = (-1) * rho 35577 - rho 35578 + (seg34AccY103 rho - seg34AccX103 rho * (-1)) * (rho 35574 + rho 35575) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX104 rho = seg34AccX103 rho - Bool.toZMod bit * (seg34AccX103 rho - rho 35580) := by
      have hd : rho 35582 = Bool.toZMod bit * (rho 35580 - seg34AccX103 rho) := by
        rw [← hbit]
        unfold seg34AccX103
        linear_combination -r4310
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY104 rho = seg34AccY103 rho - Bool.toZMod bit * (seg34AccY103 rho - rho 35581) := by
      have hd : rho 35583 = Bool.toZMod bit * (rho 35581 - seg34AccY103 rho) := by
        rw [← hbit]
        unfold seg34AccY103
        linear_combination -r4311
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35574 * rho 35575 = rho 35584 := by linear_combination r4312
    have hd1 : rho 35574 * rho 35574 = rho 35585 := by linear_combination r4313
    have hd2 : rho 35575 * rho 35575 = rho 35586 := by linear_combination r4314
    have hd3 : rho 35587 * (rho 35575 * rho 35575 + rho 35574 * rho 35574 * (-1)) = 2 * (rho 35574 * rho 35575) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 35588 * (2 - (rho 35575 * rho 35575 + rho 35574 * rho 35574 * (-1))) = rho 35575 * rho 35575 - rho 35574 * rho 35574 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX103 rho : Seg34.F), (seg34AccY103 rho : Seg34.F)⟩
      ⟨(rho 35574 : Seg34.F), (rho 35575 : Seg34.F)⟩
      ⟨(rho 35580 : Seg34.F), (rho 35581 : Seg34.F)⟩
      ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
      ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg34_rows104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4317 rho ∧ Seg34.relationRow4318 rho ∧ Seg34.relationRow4319 rho ∧ Seg34.relationRow4320 rho ∧ Seg34.relationRow4321 rho ∧ Seg34.relationRow4322 rho ∧ Seg34.relationRow4323 rho ∧ Seg34.relationRow4324 rho ∧ Seg34.relationRow4325 rho ∧ Seg34.relationRow4326 rho ∧ Seg34.relationRow4327 rho ∧ Seg34.relationRow4328 rho ∧ Seg34.relationRow4329 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩

theorem seg34_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34096 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩ := by
  obtain ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩ := seg34_rows104 rho h
  unfold Seg34.relationRow4317 at r4317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4317
  unfold Seg34.relationRow4318 at r4318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318
  unfold Seg34.relationRow4319 at r4319
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4319
  unfold Seg34.relationRow4320 at r4320
  unfold Seg34.relationRow4321 at r4321
  unfold Seg34.relationRow4322 at r4322
  unfold Seg34.relationRow4323 at r4323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4323
  unfold Seg34.relationRow4324 at r4324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4324
  unfold Seg34.relationRow4325 at r4325
  unfold Seg34.relationRow4326 at r4326
  unfold Seg34.relationRow4327 at r4327
  unfold Seg34.relationRow4328 at r4328
  unfold Seg34.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 34096 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
        ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩ := by
    have hnextx : seg34AccX105 rho = seg34AccX104 rho + rho 35595 := by
      unfold seg34AccX105 seg34AccX104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 104]
      ring
    have hnexty : seg34AccY105 rho = seg34AccY104 rho + rho 35596 := by
      unfold seg34AccY105 seg34AccY104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 104]
      ring
    have ha0 : (rho 35587 + rho 35588) * (seg34AccX104 rho + seg34AccY104 rho) = rho 35589 := by
      unfold seg34AccX104 seg34AccY104
      linear_combination r4317
    have ha1 : rho 35588 * seg34AccX104 rho = rho 35590 := by
      unfold seg34AccX104
      linear_combination r4318
    have ha2 : rho 35587 * seg34AccY104 rho = rho 35591 := by
      unfold seg34AccY104
      linear_combination r4319
    have ha3 : 3021 * rho 35590 * rho 35591 = rho 35592 := by
      linear_combination r4320
    have ha4 : rho 35593 * (1 + rho 35592) = rho 35590 + rho 35591 := by
      linear_combination r4321
    have ha5 : rho 35594 * (1 - rho 35592) = rho 35589 - rho 35590 - rho 35591 := by
      linear_combination r4322
    have haddx :
        rho 35593 * (1 + 3021 * (rho 35588 * seg34AccX104 rho) * (rho 35587 * seg34AccY104 rho)) =
          rho 35588 * seg34AccX104 rho + rho 35587 * seg34AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35594 * (1 - 3021 * (rho 35588 * seg34AccX104 rho) * (rho 35587 * seg34AccY104 rho)) =
          (-1) * (rho 35588 * seg34AccX104 rho) - rho 35587 * seg34AccY104 rho +
            (seg34AccY104 rho - seg34AccX104 rho * (-1)) * (rho 35587 + rho 35588) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35594 * (1 - rho 35592) = rho 35589 - rho 35590 - rho 35591 := ha5
        _ = (-1) * rho 35590 - rho 35591 + (seg34AccY104 rho - seg34AccX104 rho * (-1)) * (rho 35587 + rho 35588) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX105 rho = seg34AccX104 rho - Bool.toZMod bit * (seg34AccX104 rho - rho 35593) := by
      have hd : rho 35595 = Bool.toZMod bit * (rho 35593 - seg34AccX104 rho) := by
        rw [← hbit]
        unfold seg34AccX104
        linear_combination -r4323
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY105 rho = seg34AccY104 rho - Bool.toZMod bit * (seg34AccY104 rho - rho 35594) := by
      have hd : rho 35596 = Bool.toZMod bit * (rho 35594 - seg34AccY104 rho) := by
        rw [← hbit]
        unfold seg34AccY104
        linear_combination -r4324
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35587 * rho 35588 = rho 35597 := by linear_combination r4325
    have hd1 : rho 35587 * rho 35587 = rho 35598 := by linear_combination r4326
    have hd2 : rho 35588 * rho 35588 = rho 35599 := by linear_combination r4327
    have hd3 : rho 35600 * (rho 35588 * rho 35588 + rho 35587 * rho 35587 * (-1)) = 2 * (rho 35587 * rho 35588) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 35601 * (2 - (rho 35588 * rho 35588 + rho 35587 * rho 35587 * (-1))) = rho 35588 * rho 35588 - rho 35587 * rho 35587 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX104 rho : Seg34.F), (seg34AccY104 rho : Seg34.F)⟩
      ⟨(rho 35587 : Seg34.F), (rho 35588 : Seg34.F)⟩
      ⟨(rho 35593 : Seg34.F), (rho 35594 : Seg34.F)⟩
      ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
      ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg34_rows105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4330 rho ∧ Seg34.relationRow4331 rho ∧ Seg34.relationRow4332 rho ∧ Seg34.relationRow4333 rho ∧ Seg34.relationRow4334 rho ∧ Seg34.relationRow4335 rho ∧ Seg34.relationRow4336 rho ∧ Seg34.relationRow4337 rho ∧ Seg34.relationRow4338 rho ∧ Seg34.relationRow4339 rho ∧ Seg34.relationRow4340 rho ∧ Seg34.relationRow4341 rho ∧ Seg34.relationRow4342 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩

theorem seg34_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34097 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩ := by
  obtain ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩ := seg34_rows105 rho h
  unfold Seg34.relationRow4330 at r4330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4330
  unfold Seg34.relationRow4331 at r4331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331
  unfold Seg34.relationRow4332 at r4332
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4332
  unfold Seg34.relationRow4333 at r4333
  unfold Seg34.relationRow4334 at r4334
  unfold Seg34.relationRow4335 at r4335
  unfold Seg34.relationRow4336 at r4336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4336
  unfold Seg34.relationRow4337 at r4337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4337
  unfold Seg34.relationRow4338 at r4338
  unfold Seg34.relationRow4339 at r4339
  unfold Seg34.relationRow4340 at r4340
  unfold Seg34.relationRow4341 at r4341
  unfold Seg34.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 34097 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
        ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩ := by
    have hnextx : seg34AccX106 rho = seg34AccX105 rho + rho 35608 := by
      unfold seg34AccX106 seg34AccX105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 105]
      ring
    have hnexty : seg34AccY106 rho = seg34AccY105 rho + rho 35609 := by
      unfold seg34AccY106 seg34AccY105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 105]
      ring
    have ha0 : (rho 35600 + rho 35601) * (seg34AccX105 rho + seg34AccY105 rho) = rho 35602 := by
      unfold seg34AccX105 seg34AccY105
      linear_combination r4330
    have ha1 : rho 35601 * seg34AccX105 rho = rho 35603 := by
      unfold seg34AccX105
      linear_combination r4331
    have ha2 : rho 35600 * seg34AccY105 rho = rho 35604 := by
      unfold seg34AccY105
      linear_combination r4332
    have ha3 : 3021 * rho 35603 * rho 35604 = rho 35605 := by
      linear_combination r4333
    have ha4 : rho 35606 * (1 + rho 35605) = rho 35603 + rho 35604 := by
      linear_combination r4334
    have ha5 : rho 35607 * (1 - rho 35605) = rho 35602 - rho 35603 - rho 35604 := by
      linear_combination r4335
    have haddx :
        rho 35606 * (1 + 3021 * (rho 35601 * seg34AccX105 rho) * (rho 35600 * seg34AccY105 rho)) =
          rho 35601 * seg34AccX105 rho + rho 35600 * seg34AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35607 * (1 - 3021 * (rho 35601 * seg34AccX105 rho) * (rho 35600 * seg34AccY105 rho)) =
          (-1) * (rho 35601 * seg34AccX105 rho) - rho 35600 * seg34AccY105 rho +
            (seg34AccY105 rho - seg34AccX105 rho * (-1)) * (rho 35600 + rho 35601) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35607 * (1 - rho 35605) = rho 35602 - rho 35603 - rho 35604 := ha5
        _ = (-1) * rho 35603 - rho 35604 + (seg34AccY105 rho - seg34AccX105 rho * (-1)) * (rho 35600 + rho 35601) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX106 rho = seg34AccX105 rho - Bool.toZMod bit * (seg34AccX105 rho - rho 35606) := by
      have hd : rho 35608 = Bool.toZMod bit * (rho 35606 - seg34AccX105 rho) := by
        rw [← hbit]
        unfold seg34AccX105
        linear_combination -r4336
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY106 rho = seg34AccY105 rho - Bool.toZMod bit * (seg34AccY105 rho - rho 35607) := by
      have hd : rho 35609 = Bool.toZMod bit * (rho 35607 - seg34AccY105 rho) := by
        rw [← hbit]
        unfold seg34AccY105
        linear_combination -r4337
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35600 * rho 35601 = rho 35610 := by linear_combination r4338
    have hd1 : rho 35600 * rho 35600 = rho 35611 := by linear_combination r4339
    have hd2 : rho 35601 * rho 35601 = rho 35612 := by linear_combination r4340
    have hd3 : rho 35613 * (rho 35601 * rho 35601 + rho 35600 * rho 35600 * (-1)) = 2 * (rho 35600 * rho 35601) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 35614 * (2 - (rho 35601 * rho 35601 + rho 35600 * rho 35600 * (-1))) = rho 35601 * rho 35601 - rho 35600 * rho 35600 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX105 rho : Seg34.F), (seg34AccY105 rho : Seg34.F)⟩
      ⟨(rho 35600 : Seg34.F), (rho 35601 : Seg34.F)⟩
      ⟨(rho 35606 : Seg34.F), (rho 35607 : Seg34.F)⟩
      ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
      ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg34_rows106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4343 rho ∧ Seg34.relationRow4344 rho ∧ Seg34.relationRow4345 rho ∧ Seg34.relationRow4346 rho ∧ Seg34.relationRow4347 rho ∧ Seg34.relationRow4348 rho ∧ Seg34.relationRow4349 rho ∧ Seg34.relationRow4350 rho ∧ Seg34.relationRow4351 rho ∧ Seg34.relationRow4352 rho ∧ Seg34.relationRow4353 rho ∧ Seg34.relationRow4354 rho ∧ Seg34.relationRow4355 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩

theorem seg34_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34098 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩ := by
  obtain ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩ := seg34_rows106 rho h
  unfold Seg34.relationRow4343 at r4343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4343
  unfold Seg34.relationRow4344 at r4344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344
  unfold Seg34.relationRow4345 at r4345
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4345
  unfold Seg34.relationRow4346 at r4346
  unfold Seg34.relationRow4347 at r4347
  unfold Seg34.relationRow4348 at r4348
  unfold Seg34.relationRow4349 at r4349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4349
  unfold Seg34.relationRow4350 at r4350
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4350
  unfold Seg34.relationRow4351 at r4351
  unfold Seg34.relationRow4352 at r4352
  unfold Seg34.relationRow4353 at r4353
  unfold Seg34.relationRow4354 at r4354
  unfold Seg34.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 34098 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
        ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩ := by
    have hnextx : seg34AccX107 rho = seg34AccX106 rho + rho 35621 := by
      unfold seg34AccX107 seg34AccX106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 106]
      ring
    have hnexty : seg34AccY107 rho = seg34AccY106 rho + rho 35622 := by
      unfold seg34AccY107 seg34AccY106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 106]
      ring
    have ha0 : (rho 35613 + rho 35614) * (seg34AccX106 rho + seg34AccY106 rho) = rho 35615 := by
      unfold seg34AccX106 seg34AccY106
      linear_combination r4343
    have ha1 : rho 35614 * seg34AccX106 rho = rho 35616 := by
      unfold seg34AccX106
      linear_combination r4344
    have ha2 : rho 35613 * seg34AccY106 rho = rho 35617 := by
      unfold seg34AccY106
      linear_combination r4345
    have ha3 : 3021 * rho 35616 * rho 35617 = rho 35618 := by
      linear_combination r4346
    have ha4 : rho 35619 * (1 + rho 35618) = rho 35616 + rho 35617 := by
      linear_combination r4347
    have ha5 : rho 35620 * (1 - rho 35618) = rho 35615 - rho 35616 - rho 35617 := by
      linear_combination r4348
    have haddx :
        rho 35619 * (1 + 3021 * (rho 35614 * seg34AccX106 rho) * (rho 35613 * seg34AccY106 rho)) =
          rho 35614 * seg34AccX106 rho + rho 35613 * seg34AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35620 * (1 - 3021 * (rho 35614 * seg34AccX106 rho) * (rho 35613 * seg34AccY106 rho)) =
          (-1) * (rho 35614 * seg34AccX106 rho) - rho 35613 * seg34AccY106 rho +
            (seg34AccY106 rho - seg34AccX106 rho * (-1)) * (rho 35613 + rho 35614) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35620 * (1 - rho 35618) = rho 35615 - rho 35616 - rho 35617 := ha5
        _ = (-1) * rho 35616 - rho 35617 + (seg34AccY106 rho - seg34AccX106 rho * (-1)) * (rho 35613 + rho 35614) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX107 rho = seg34AccX106 rho - Bool.toZMod bit * (seg34AccX106 rho - rho 35619) := by
      have hd : rho 35621 = Bool.toZMod bit * (rho 35619 - seg34AccX106 rho) := by
        rw [← hbit]
        unfold seg34AccX106
        linear_combination -r4349
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY107 rho = seg34AccY106 rho - Bool.toZMod bit * (seg34AccY106 rho - rho 35620) := by
      have hd : rho 35622 = Bool.toZMod bit * (rho 35620 - seg34AccY106 rho) := by
        rw [← hbit]
        unfold seg34AccY106
        linear_combination -r4350
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35613 * rho 35614 = rho 35623 := by linear_combination r4351
    have hd1 : rho 35613 * rho 35613 = rho 35624 := by linear_combination r4352
    have hd2 : rho 35614 * rho 35614 = rho 35625 := by linear_combination r4353
    have hd3 : rho 35626 * (rho 35614 * rho 35614 + rho 35613 * rho 35613 * (-1)) = 2 * (rho 35613 * rho 35614) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 35627 * (2 - (rho 35614 * rho 35614 + rho 35613 * rho 35613 * (-1))) = rho 35614 * rho 35614 - rho 35613 * rho 35613 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX106 rho : Seg34.F), (seg34AccY106 rho : Seg34.F)⟩
      ⟨(rho 35613 : Seg34.F), (rho 35614 : Seg34.F)⟩
      ⟨(rho 35619 : Seg34.F), (rho 35620 : Seg34.F)⟩
      ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
      ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg34_rows107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4356 rho ∧ Seg34.relationRow4357 rho ∧ Seg34.relationRow4358 rho ∧ Seg34.relationRow4359 rho ∧ Seg34.relationRow4360 rho ∧ Seg34.relationRow4361 rho ∧ Seg34.relationRow4362 rho ∧ Seg34.relationRow4363 rho ∧ Seg34.relationRow4364 rho ∧ Seg34.relationRow4365 rho ∧ Seg34.relationRow4366 rho ∧ Seg34.relationRow4367 rho ∧ Seg34.relationRow4368 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩

theorem seg34_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34099 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩ := by
  obtain ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩ := seg34_rows107 rho h
  unfold Seg34.relationRow4356 at r4356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4356
  unfold Seg34.relationRow4357 at r4357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4357
  unfold Seg34.relationRow4358 at r4358
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4358
  unfold Seg34.relationRow4359 at r4359
  unfold Seg34.relationRow4360 at r4360
  unfold Seg34.relationRow4361 at r4361
  unfold Seg34.relationRow4362 at r4362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4362
  unfold Seg34.relationRow4363 at r4363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4363
  unfold Seg34.relationRow4364 at r4364
  unfold Seg34.relationRow4365 at r4365
  unfold Seg34.relationRow4366 at r4366
  unfold Seg34.relationRow4367 at r4367
  unfold Seg34.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 34099 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
        ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩ := by
    have hnextx : seg34AccX108 rho = seg34AccX107 rho + rho 35634 := by
      unfold seg34AccX108 seg34AccX107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 107]
      ring
    have hnexty : seg34AccY108 rho = seg34AccY107 rho + rho 35635 := by
      unfold seg34AccY108 seg34AccY107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 107]
      ring
    have ha0 : (rho 35626 + rho 35627) * (seg34AccX107 rho + seg34AccY107 rho) = rho 35628 := by
      unfold seg34AccX107 seg34AccY107
      linear_combination r4356
    have ha1 : rho 35627 * seg34AccX107 rho = rho 35629 := by
      unfold seg34AccX107
      linear_combination r4357
    have ha2 : rho 35626 * seg34AccY107 rho = rho 35630 := by
      unfold seg34AccY107
      linear_combination r4358
    have ha3 : 3021 * rho 35629 * rho 35630 = rho 35631 := by
      linear_combination r4359
    have ha4 : rho 35632 * (1 + rho 35631) = rho 35629 + rho 35630 := by
      linear_combination r4360
    have ha5 : rho 35633 * (1 - rho 35631) = rho 35628 - rho 35629 - rho 35630 := by
      linear_combination r4361
    have haddx :
        rho 35632 * (1 + 3021 * (rho 35627 * seg34AccX107 rho) * (rho 35626 * seg34AccY107 rho)) =
          rho 35627 * seg34AccX107 rho + rho 35626 * seg34AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35633 * (1 - 3021 * (rho 35627 * seg34AccX107 rho) * (rho 35626 * seg34AccY107 rho)) =
          (-1) * (rho 35627 * seg34AccX107 rho) - rho 35626 * seg34AccY107 rho +
            (seg34AccY107 rho - seg34AccX107 rho * (-1)) * (rho 35626 + rho 35627) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35633 * (1 - rho 35631) = rho 35628 - rho 35629 - rho 35630 := ha5
        _ = (-1) * rho 35629 - rho 35630 + (seg34AccY107 rho - seg34AccX107 rho * (-1)) * (rho 35626 + rho 35627) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX108 rho = seg34AccX107 rho - Bool.toZMod bit * (seg34AccX107 rho - rho 35632) := by
      have hd : rho 35634 = Bool.toZMod bit * (rho 35632 - seg34AccX107 rho) := by
        rw [← hbit]
        unfold seg34AccX107
        linear_combination -r4362
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY108 rho = seg34AccY107 rho - Bool.toZMod bit * (seg34AccY107 rho - rho 35633) := by
      have hd : rho 35635 = Bool.toZMod bit * (rho 35633 - seg34AccY107 rho) := by
        rw [← hbit]
        unfold seg34AccY107
        linear_combination -r4363
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35626 * rho 35627 = rho 35636 := by linear_combination r4364
    have hd1 : rho 35626 * rho 35626 = rho 35637 := by linear_combination r4365
    have hd2 : rho 35627 * rho 35627 = rho 35638 := by linear_combination r4366
    have hd3 : rho 35639 * (rho 35627 * rho 35627 + rho 35626 * rho 35626 * (-1)) = 2 * (rho 35626 * rho 35627) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 35640 * (2 - (rho 35627 * rho 35627 + rho 35626 * rho 35626 * (-1))) = rho 35627 * rho 35627 - rho 35626 * rho 35626 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX107 rho : Seg34.F), (seg34AccY107 rho : Seg34.F)⟩
      ⟨(rho 35626 : Seg34.F), (rho 35627 : Seg34.F)⟩
      ⟨(rho 35632 : Seg34.F), (rho 35633 : Seg34.F)⟩
      ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
      ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg34_rows108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4369 rho ∧ Seg34.relationRow4370 rho ∧ Seg34.relationRow4371 rho ∧ Seg34.relationRow4372 rho ∧ Seg34.relationRow4373 rho ∧ Seg34.relationRow4374 rho ∧ Seg34.relationRow4375 rho ∧ Seg34.relationRow4376 rho ∧ Seg34.relationRow4377 rho ∧ Seg34.relationRow4378 rho ∧ Seg34.relationRow4379 rho ∧ Seg34.relationRow4380 rho ∧ Seg34.relationRow4381 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩

theorem seg34_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34100 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩ := by
  obtain ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩ := seg34_rows108 rho h
  unfold Seg34.relationRow4369 at r4369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4369
  unfold Seg34.relationRow4370 at r4370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4370
  unfold Seg34.relationRow4371 at r4371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4371
  unfold Seg34.relationRow4372 at r4372
  unfold Seg34.relationRow4373 at r4373
  unfold Seg34.relationRow4374 at r4374
  unfold Seg34.relationRow4375 at r4375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4375
  unfold Seg34.relationRow4376 at r4376
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4376
  unfold Seg34.relationRow4377 at r4377
  unfold Seg34.relationRow4378 at r4378
  unfold Seg34.relationRow4379 at r4379
  unfold Seg34.relationRow4380 at r4380
  unfold Seg34.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 34100 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
        ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩ := by
    have hnextx : seg34AccX109 rho = seg34AccX108 rho + rho 35647 := by
      unfold seg34AccX109 seg34AccX108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 108]
      ring
    have hnexty : seg34AccY109 rho = seg34AccY108 rho + rho 35648 := by
      unfold seg34AccY109 seg34AccY108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 108]
      ring
    have ha0 : (rho 35639 + rho 35640) * (seg34AccX108 rho + seg34AccY108 rho) = rho 35641 := by
      unfold seg34AccX108 seg34AccY108
      linear_combination r4369
    have ha1 : rho 35640 * seg34AccX108 rho = rho 35642 := by
      unfold seg34AccX108
      linear_combination r4370
    have ha2 : rho 35639 * seg34AccY108 rho = rho 35643 := by
      unfold seg34AccY108
      linear_combination r4371
    have ha3 : 3021 * rho 35642 * rho 35643 = rho 35644 := by
      linear_combination r4372
    have ha4 : rho 35645 * (1 + rho 35644) = rho 35642 + rho 35643 := by
      linear_combination r4373
    have ha5 : rho 35646 * (1 - rho 35644) = rho 35641 - rho 35642 - rho 35643 := by
      linear_combination r4374
    have haddx :
        rho 35645 * (1 + 3021 * (rho 35640 * seg34AccX108 rho) * (rho 35639 * seg34AccY108 rho)) =
          rho 35640 * seg34AccX108 rho + rho 35639 * seg34AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35646 * (1 - 3021 * (rho 35640 * seg34AccX108 rho) * (rho 35639 * seg34AccY108 rho)) =
          (-1) * (rho 35640 * seg34AccX108 rho) - rho 35639 * seg34AccY108 rho +
            (seg34AccY108 rho - seg34AccX108 rho * (-1)) * (rho 35639 + rho 35640) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35646 * (1 - rho 35644) = rho 35641 - rho 35642 - rho 35643 := ha5
        _ = (-1) * rho 35642 - rho 35643 + (seg34AccY108 rho - seg34AccX108 rho * (-1)) * (rho 35639 + rho 35640) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX109 rho = seg34AccX108 rho - Bool.toZMod bit * (seg34AccX108 rho - rho 35645) := by
      have hd : rho 35647 = Bool.toZMod bit * (rho 35645 - seg34AccX108 rho) := by
        rw [← hbit]
        unfold seg34AccX108
        linear_combination -r4375
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY109 rho = seg34AccY108 rho - Bool.toZMod bit * (seg34AccY108 rho - rho 35646) := by
      have hd : rho 35648 = Bool.toZMod bit * (rho 35646 - seg34AccY108 rho) := by
        rw [← hbit]
        unfold seg34AccY108
        linear_combination -r4376
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35639 * rho 35640 = rho 35649 := by linear_combination r4377
    have hd1 : rho 35639 * rho 35639 = rho 35650 := by linear_combination r4378
    have hd2 : rho 35640 * rho 35640 = rho 35651 := by linear_combination r4379
    have hd3 : rho 35652 * (rho 35640 * rho 35640 + rho 35639 * rho 35639 * (-1)) = 2 * (rho 35639 * rho 35640) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 35653 * (2 - (rho 35640 * rho 35640 + rho 35639 * rho 35639 * (-1))) = rho 35640 * rho 35640 - rho 35639 * rho 35639 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX108 rho : Seg34.F), (seg34AccY108 rho : Seg34.F)⟩
      ⟨(rho 35639 : Seg34.F), (rho 35640 : Seg34.F)⟩
      ⟨(rho 35645 : Seg34.F), (rho 35646 : Seg34.F)⟩
      ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
      ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg34_rows109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4382 rho ∧ Seg34.relationRow4383 rho ∧ Seg34.relationRow4384 rho ∧ Seg34.relationRow4385 rho ∧ Seg34.relationRow4386 rho ∧ Seg34.relationRow4387 rho ∧ Seg34.relationRow4388 rho ∧ Seg34.relationRow4389 rho ∧ Seg34.relationRow4390 rho ∧ Seg34.relationRow4391 rho ∧ Seg34.relationRow4392 rho ∧ Seg34.relationRow4393 rho ∧ Seg34.relationRow4394 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  exact ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩

theorem seg34_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34101 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩ := by
  obtain ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩ := seg34_rows109 rho h
  unfold Seg34.relationRow4382 at r4382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4382
  unfold Seg34.relationRow4383 at r4383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4383
  unfold Seg34.relationRow4384 at r4384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4384
  unfold Seg34.relationRow4385 at r4385
  unfold Seg34.relationRow4386 at r4386
  unfold Seg34.relationRow4387 at r4387
  unfold Seg34.relationRow4388 at r4388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4388
  unfold Seg34.relationRow4389 at r4389
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4389
  unfold Seg34.relationRow4390 at r4390
  unfold Seg34.relationRow4391 at r4391
  unfold Seg34.relationRow4392 at r4392
  unfold Seg34.relationRow4393 at r4393
  unfold Seg34.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 34101 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
        ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
        ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
        ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩ := by
    have hnextx : seg34AccX110 rho = seg34AccX109 rho + rho 35660 := by
      unfold seg34AccX110 seg34AccX109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 109]
      ring
    have hnexty : seg34AccY110 rho = seg34AccY109 rho + rho 35661 := by
      unfold seg34AccY110 seg34AccY109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 109]
      ring
    have ha0 : (rho 35652 + rho 35653) * (seg34AccX109 rho + seg34AccY109 rho) = rho 35654 := by
      unfold seg34AccX109 seg34AccY109
      linear_combination r4382
    have ha1 : rho 35653 * seg34AccX109 rho = rho 35655 := by
      unfold seg34AccX109
      linear_combination r4383
    have ha2 : rho 35652 * seg34AccY109 rho = rho 35656 := by
      unfold seg34AccY109
      linear_combination r4384
    have ha3 : 3021 * rho 35655 * rho 35656 = rho 35657 := by
      linear_combination r4385
    have ha4 : rho 35658 * (1 + rho 35657) = rho 35655 + rho 35656 := by
      linear_combination r4386
    have ha5 : rho 35659 * (1 - rho 35657) = rho 35654 - rho 35655 - rho 35656 := by
      linear_combination r4387
    have haddx :
        rho 35658 * (1 + 3021 * (rho 35653 * seg34AccX109 rho) * (rho 35652 * seg34AccY109 rho)) =
          rho 35653 * seg34AccX109 rho + rho 35652 * seg34AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35659 * (1 - 3021 * (rho 35653 * seg34AccX109 rho) * (rho 35652 * seg34AccY109 rho)) =
          (-1) * (rho 35653 * seg34AccX109 rho) - rho 35652 * seg34AccY109 rho +
            (seg34AccY109 rho - seg34AccX109 rho * (-1)) * (rho 35652 + rho 35653) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35659 * (1 - rho 35657) = rho 35654 - rho 35655 - rho 35656 := ha5
        _ = (-1) * rho 35655 - rho 35656 + (seg34AccY109 rho - seg34AccX109 rho * (-1)) * (rho 35652 + rho 35653) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX110 rho = seg34AccX109 rho - Bool.toZMod bit * (seg34AccX109 rho - rho 35658) := by
      have hd : rho 35660 = Bool.toZMod bit * (rho 35658 - seg34AccX109 rho) := by
        rw [← hbit]
        unfold seg34AccX109
        linear_combination -r4388
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY110 rho = seg34AccY109 rho - Bool.toZMod bit * (seg34AccY109 rho - rho 35659) := by
      have hd : rho 35661 = Bool.toZMod bit * (rho 35659 - seg34AccY109 rho) := by
        rw [← hbit]
        unfold seg34AccY109
        linear_combination -r4389
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35652 * rho 35653 = rho 35662 := by linear_combination r4390
    have hd1 : rho 35652 * rho 35652 = rho 35663 := by linear_combination r4391
    have hd2 : rho 35653 * rho 35653 = rho 35664 := by linear_combination r4392
    have hd3 : rho 35665 * (rho 35653 * rho 35653 + rho 35652 * rho 35652 * (-1)) = 2 * (rho 35652 * rho 35653) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 35666 * (2 - (rho 35653 * rho 35653 + rho 35652 * rho 35652 * (-1))) = rho 35653 * rho 35653 - rho 35652 * rho 35652 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX109 rho : Seg34.F), (seg34AccY109 rho : Seg34.F)⟩
      ⟨(rho 35652 : Seg34.F), (rho 35653 : Seg34.F)⟩
      ⟨(rho 35658 : Seg34.F), (rho 35659 : Seg34.F)⟩
      ⟨(seg34AccX110 rho : Seg34.F), (seg34AccY110 rho : Seg34.F)⟩
      ⟨(rho 35665 : Seg34.F), (rho 35666 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg34_hstep_c9 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg34_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg34_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg34_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg34_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg34_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg34_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg34_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg34_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg34_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg34_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
