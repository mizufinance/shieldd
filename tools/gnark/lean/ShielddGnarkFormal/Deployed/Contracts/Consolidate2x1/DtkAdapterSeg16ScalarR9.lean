import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4252 rho ∧ Seg16.relationRow4253 rho ∧ Seg16.relationRow4254 rho ∧ Seg16.relationRow4255 rho ∧ Seg16.relationRow4256 rho ∧ Seg16.relationRow4257 rho ∧ Seg16.relationRow4258 rho ∧ Seg16.relationRow4259 rho ∧ Seg16.relationRow4260 rho ∧ Seg16.relationRow4261 rho ∧ Seg16.relationRow4262 rho ∧ Seg16.relationRow4263 rho ∧ Seg16.relationRow4264 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩

theorem seg16_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15391 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩ := by
  obtain ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩ := seg16_rows99 rho h
  unfold Seg16.relationRow4252 at r4252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4252
  unfold Seg16.relationRow4253 at r4253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253
  unfold Seg16.relationRow4254 at r4254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4254
  unfold Seg16.relationRow4255 at r4255
  unfold Seg16.relationRow4256 at r4256
  unfold Seg16.relationRow4257 at r4257
  unfold Seg16.relationRow4258 at r4258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4258
  unfold Seg16.relationRow4259 at r4259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4259
  unfold Seg16.relationRow4260 at r4260
  unfold Seg16.relationRow4261 at r4261
  unfold Seg16.relationRow4262 at r4262
  unfold Seg16.relationRow4263 at r4263
  unfold Seg16.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 15391 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩ := by
    have hnextx : seg16AccX100 rho = seg16AccX99 rho + rho 16830 := by
      unfold seg16AccX100 seg16AccX99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 99]
      ring
    have hnexty : seg16AccY100 rho = seg16AccY99 rho + rho 16831 := by
      unfold seg16AccY100 seg16AccY99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 99]
      ring
    have ha0 : (rho 16822 + rho 16823) * (seg16AccX99 rho + seg16AccY99 rho) = rho 16824 := by
      unfold seg16AccX99 seg16AccY99
      linear_combination r4252
    have ha1 : rho 16823 * seg16AccX99 rho = rho 16825 := by
      unfold seg16AccX99
      linear_combination r4253
    have ha2 : rho 16822 * seg16AccY99 rho = rho 16826 := by
      unfold seg16AccY99
      linear_combination r4254
    have ha3 : 3021 * rho 16825 * rho 16826 = rho 16827 := by
      linear_combination r4255
    have ha4 : rho 16828 * (1 + rho 16827) = rho 16825 + rho 16826 := by
      linear_combination r4256
    have ha5 : rho 16829 * (1 - rho 16827) = rho 16824 - rho 16825 - rho 16826 := by
      linear_combination r4257
    have haddx :
        rho 16828 * (1 + 3021 * (rho 16823 * seg16AccX99 rho) * (rho 16822 * seg16AccY99 rho)) =
          rho 16823 * seg16AccX99 rho + rho 16822 * seg16AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16829 * (1 - 3021 * (rho 16823 * seg16AccX99 rho) * (rho 16822 * seg16AccY99 rho)) =
          (-1) * (rho 16823 * seg16AccX99 rho) - rho 16822 * seg16AccY99 rho +
            (seg16AccY99 rho - seg16AccX99 rho * (-1)) * (rho 16822 + rho 16823) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16829 * (1 - rho 16827) = rho 16824 - rho 16825 - rho 16826 := ha5
        _ = (-1) * rho 16825 - rho 16826 + (seg16AccY99 rho - seg16AccX99 rho * (-1)) * (rho 16822 + rho 16823) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX100 rho = seg16AccX99 rho - Bool.toZMod bit * (seg16AccX99 rho - rho 16828) := by
      have hd : rho 16830 = Bool.toZMod bit * (rho 16828 - seg16AccX99 rho) := by
        rw [← hbit]
        unfold seg16AccX99
        linear_combination -r4258
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY100 rho = seg16AccY99 rho - Bool.toZMod bit * (seg16AccY99 rho - rho 16829) := by
      have hd : rho 16831 = Bool.toZMod bit * (rho 16829 - seg16AccY99 rho) := by
        rw [← hbit]
        unfold seg16AccY99
        linear_combination -r4259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16822 * rho 16823 = rho 16832 := by linear_combination r4260
    have hd1 : rho 16822 * rho 16822 = rho 16833 := by linear_combination r4261
    have hd2 : rho 16823 * rho 16823 = rho 16834 := by linear_combination r4262
    have hd3 : rho 16835 * (rho 16823 * rho 16823 + rho 16822 * rho 16822 * (-1)) = 2 * (rho 16822 * rho 16823) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 16836 * (2 - (rho 16823 * rho 16823 + rho 16822 * rho 16822 * (-1))) = rho 16823 * rho 16823 - rho 16822 * rho 16822 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
      ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
      ⟨(rho 16828 : Seg16.F), (rho 16829 : Seg16.F)⟩
      ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
      ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg16_rows100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4265 rho ∧ Seg16.relationRow4266 rho ∧ Seg16.relationRow4267 rho ∧ Seg16.relationRow4268 rho ∧ Seg16.relationRow4269 rho ∧ Seg16.relationRow4270 rho ∧ Seg16.relationRow4271 rho ∧ Seg16.relationRow4272 rho ∧ Seg16.relationRow4273 rho ∧ Seg16.relationRow4274 rho ∧ Seg16.relationRow4275 rho ∧ Seg16.relationRow4276 rho ∧ Seg16.relationRow4277 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩

theorem seg16_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15392 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩ := by
  obtain ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩ := seg16_rows100 rho h
  unfold Seg16.relationRow4265 at r4265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4265
  unfold Seg16.relationRow4266 at r4266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266
  unfold Seg16.relationRow4267 at r4267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4267
  unfold Seg16.relationRow4268 at r4268
  unfold Seg16.relationRow4269 at r4269
  unfold Seg16.relationRow4270 at r4270
  unfold Seg16.relationRow4271 at r4271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4271
  unfold Seg16.relationRow4272 at r4272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4272
  unfold Seg16.relationRow4273 at r4273
  unfold Seg16.relationRow4274 at r4274
  unfold Seg16.relationRow4275 at r4275
  unfold Seg16.relationRow4276 at r4276
  unfold Seg16.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 15392 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
        ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩ := by
    have hnextx : seg16AccX101 rho = seg16AccX100 rho + rho 16843 := by
      unfold seg16AccX101 seg16AccX100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 100]
      ring
    have hnexty : seg16AccY101 rho = seg16AccY100 rho + rho 16844 := by
      unfold seg16AccY101 seg16AccY100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 100]
      ring
    have ha0 : (rho 16835 + rho 16836) * (seg16AccX100 rho + seg16AccY100 rho) = rho 16837 := by
      unfold seg16AccX100 seg16AccY100
      linear_combination r4265
    have ha1 : rho 16836 * seg16AccX100 rho = rho 16838 := by
      unfold seg16AccX100
      linear_combination r4266
    have ha2 : rho 16835 * seg16AccY100 rho = rho 16839 := by
      unfold seg16AccY100
      linear_combination r4267
    have ha3 : 3021 * rho 16838 * rho 16839 = rho 16840 := by
      linear_combination r4268
    have ha4 : rho 16841 * (1 + rho 16840) = rho 16838 + rho 16839 := by
      linear_combination r4269
    have ha5 : rho 16842 * (1 - rho 16840) = rho 16837 - rho 16838 - rho 16839 := by
      linear_combination r4270
    have haddx :
        rho 16841 * (1 + 3021 * (rho 16836 * seg16AccX100 rho) * (rho 16835 * seg16AccY100 rho)) =
          rho 16836 * seg16AccX100 rho + rho 16835 * seg16AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16842 * (1 - 3021 * (rho 16836 * seg16AccX100 rho) * (rho 16835 * seg16AccY100 rho)) =
          (-1) * (rho 16836 * seg16AccX100 rho) - rho 16835 * seg16AccY100 rho +
            (seg16AccY100 rho - seg16AccX100 rho * (-1)) * (rho 16835 + rho 16836) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16842 * (1 - rho 16840) = rho 16837 - rho 16838 - rho 16839 := ha5
        _ = (-1) * rho 16838 - rho 16839 + (seg16AccY100 rho - seg16AccX100 rho * (-1)) * (rho 16835 + rho 16836) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX101 rho = seg16AccX100 rho - Bool.toZMod bit * (seg16AccX100 rho - rho 16841) := by
      have hd : rho 16843 = Bool.toZMod bit * (rho 16841 - seg16AccX100 rho) := by
        rw [← hbit]
        unfold seg16AccX100
        linear_combination -r4271
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY101 rho = seg16AccY100 rho - Bool.toZMod bit * (seg16AccY100 rho - rho 16842) := by
      have hd : rho 16844 = Bool.toZMod bit * (rho 16842 - seg16AccY100 rho) := by
        rw [← hbit]
        unfold seg16AccY100
        linear_combination -r4272
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16835 * rho 16836 = rho 16845 := by linear_combination r4273
    have hd1 : rho 16835 * rho 16835 = rho 16846 := by linear_combination r4274
    have hd2 : rho 16836 * rho 16836 = rho 16847 := by linear_combination r4275
    have hd3 : rho 16848 * (rho 16836 * rho 16836 + rho 16835 * rho 16835 * (-1)) = 2 * (rho 16835 * rho 16836) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 16849 * (2 - (rho 16836 * rho 16836 + rho 16835 * rho 16835 * (-1))) = rho 16836 * rho 16836 - rho 16835 * rho 16835 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX100 rho : Seg16.F), (seg16AccY100 rho : Seg16.F)⟩
      ⟨(rho 16835 : Seg16.F), (rho 16836 : Seg16.F)⟩
      ⟨(rho 16841 : Seg16.F), (rho 16842 : Seg16.F)⟩
      ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
      ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg16_rows101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4278 rho ∧ Seg16.relationRow4279 rho ∧ Seg16.relationRow4280 rho ∧ Seg16.relationRow4281 rho ∧ Seg16.relationRow4282 rho ∧ Seg16.relationRow4283 rho ∧ Seg16.relationRow4284 rho ∧ Seg16.relationRow4285 rho ∧ Seg16.relationRow4286 rho ∧ Seg16.relationRow4287 rho ∧ Seg16.relationRow4288 rho ∧ Seg16.relationRow4289 rho ∧ Seg16.relationRow4290 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩

theorem seg16_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15393 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩ := by
  obtain ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩ := seg16_rows101 rho h
  unfold Seg16.relationRow4278 at r4278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4278
  unfold Seg16.relationRow4279 at r4279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279
  unfold Seg16.relationRow4280 at r4280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4280
  unfold Seg16.relationRow4281 at r4281
  unfold Seg16.relationRow4282 at r4282
  unfold Seg16.relationRow4283 at r4283
  unfold Seg16.relationRow4284 at r4284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4284
  unfold Seg16.relationRow4285 at r4285
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4285
  unfold Seg16.relationRow4286 at r4286
  unfold Seg16.relationRow4287 at r4287
  unfold Seg16.relationRow4288 at r4288
  unfold Seg16.relationRow4289 at r4289
  unfold Seg16.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 15393 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
        ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩ := by
    have hnextx : seg16AccX102 rho = seg16AccX101 rho + rho 16856 := by
      unfold seg16AccX102 seg16AccX101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 101]
      ring
    have hnexty : seg16AccY102 rho = seg16AccY101 rho + rho 16857 := by
      unfold seg16AccY102 seg16AccY101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 101]
      ring
    have ha0 : (rho 16848 + rho 16849) * (seg16AccX101 rho + seg16AccY101 rho) = rho 16850 := by
      unfold seg16AccX101 seg16AccY101
      linear_combination r4278
    have ha1 : rho 16849 * seg16AccX101 rho = rho 16851 := by
      unfold seg16AccX101
      linear_combination r4279
    have ha2 : rho 16848 * seg16AccY101 rho = rho 16852 := by
      unfold seg16AccY101
      linear_combination r4280
    have ha3 : 3021 * rho 16851 * rho 16852 = rho 16853 := by
      linear_combination r4281
    have ha4 : rho 16854 * (1 + rho 16853) = rho 16851 + rho 16852 := by
      linear_combination r4282
    have ha5 : rho 16855 * (1 - rho 16853) = rho 16850 - rho 16851 - rho 16852 := by
      linear_combination r4283
    have haddx :
        rho 16854 * (1 + 3021 * (rho 16849 * seg16AccX101 rho) * (rho 16848 * seg16AccY101 rho)) =
          rho 16849 * seg16AccX101 rho + rho 16848 * seg16AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16855 * (1 - 3021 * (rho 16849 * seg16AccX101 rho) * (rho 16848 * seg16AccY101 rho)) =
          (-1) * (rho 16849 * seg16AccX101 rho) - rho 16848 * seg16AccY101 rho +
            (seg16AccY101 rho - seg16AccX101 rho * (-1)) * (rho 16848 + rho 16849) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16855 * (1 - rho 16853) = rho 16850 - rho 16851 - rho 16852 := ha5
        _ = (-1) * rho 16851 - rho 16852 + (seg16AccY101 rho - seg16AccX101 rho * (-1)) * (rho 16848 + rho 16849) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX102 rho = seg16AccX101 rho - Bool.toZMod bit * (seg16AccX101 rho - rho 16854) := by
      have hd : rho 16856 = Bool.toZMod bit * (rho 16854 - seg16AccX101 rho) := by
        rw [← hbit]
        unfold seg16AccX101
        linear_combination -r4284
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY102 rho = seg16AccY101 rho - Bool.toZMod bit * (seg16AccY101 rho - rho 16855) := by
      have hd : rho 16857 = Bool.toZMod bit * (rho 16855 - seg16AccY101 rho) := by
        rw [← hbit]
        unfold seg16AccY101
        linear_combination -r4285
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16848 * rho 16849 = rho 16858 := by linear_combination r4286
    have hd1 : rho 16848 * rho 16848 = rho 16859 := by linear_combination r4287
    have hd2 : rho 16849 * rho 16849 = rho 16860 := by linear_combination r4288
    have hd3 : rho 16861 * (rho 16849 * rho 16849 + rho 16848 * rho 16848 * (-1)) = 2 * (rho 16848 * rho 16849) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 16862 * (2 - (rho 16849 * rho 16849 + rho 16848 * rho 16848 * (-1))) = rho 16849 * rho 16849 - rho 16848 * rho 16848 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX101 rho : Seg16.F), (seg16AccY101 rho : Seg16.F)⟩
      ⟨(rho 16848 : Seg16.F), (rho 16849 : Seg16.F)⟩
      ⟨(rho 16854 : Seg16.F), (rho 16855 : Seg16.F)⟩
      ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
      ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg16_rows102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4291 rho ∧ Seg16.relationRow4292 rho ∧ Seg16.relationRow4293 rho ∧ Seg16.relationRow4294 rho ∧ Seg16.relationRow4295 rho ∧ Seg16.relationRow4296 rho ∧ Seg16.relationRow4297 rho ∧ Seg16.relationRow4298 rho ∧ Seg16.relationRow4299 rho ∧ Seg16.relationRow4300 rho ∧ Seg16.relationRow4301 rho ∧ Seg16.relationRow4302 rho ∧ Seg16.relationRow4303 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩

theorem seg16_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15394 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩ := by
  obtain ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩ := seg16_rows102 rho h
  unfold Seg16.relationRow4291 at r4291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4291
  unfold Seg16.relationRow4292 at r4292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292
  unfold Seg16.relationRow4293 at r4293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4293
  unfold Seg16.relationRow4294 at r4294
  unfold Seg16.relationRow4295 at r4295
  unfold Seg16.relationRow4296 at r4296
  unfold Seg16.relationRow4297 at r4297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4297
  unfold Seg16.relationRow4298 at r4298
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4298
  unfold Seg16.relationRow4299 at r4299
  unfold Seg16.relationRow4300 at r4300
  unfold Seg16.relationRow4301 at r4301
  unfold Seg16.relationRow4302 at r4302
  unfold Seg16.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 15394 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
        ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩ := by
    have hnextx : seg16AccX103 rho = seg16AccX102 rho + rho 16869 := by
      unfold seg16AccX103 seg16AccX102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 102]
      ring
    have hnexty : seg16AccY103 rho = seg16AccY102 rho + rho 16870 := by
      unfold seg16AccY103 seg16AccY102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 102]
      ring
    have ha0 : (rho 16861 + rho 16862) * (seg16AccX102 rho + seg16AccY102 rho) = rho 16863 := by
      unfold seg16AccX102 seg16AccY102
      linear_combination r4291
    have ha1 : rho 16862 * seg16AccX102 rho = rho 16864 := by
      unfold seg16AccX102
      linear_combination r4292
    have ha2 : rho 16861 * seg16AccY102 rho = rho 16865 := by
      unfold seg16AccY102
      linear_combination r4293
    have ha3 : 3021 * rho 16864 * rho 16865 = rho 16866 := by
      linear_combination r4294
    have ha4 : rho 16867 * (1 + rho 16866) = rho 16864 + rho 16865 := by
      linear_combination r4295
    have ha5 : rho 16868 * (1 - rho 16866) = rho 16863 - rho 16864 - rho 16865 := by
      linear_combination r4296
    have haddx :
        rho 16867 * (1 + 3021 * (rho 16862 * seg16AccX102 rho) * (rho 16861 * seg16AccY102 rho)) =
          rho 16862 * seg16AccX102 rho + rho 16861 * seg16AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16868 * (1 - 3021 * (rho 16862 * seg16AccX102 rho) * (rho 16861 * seg16AccY102 rho)) =
          (-1) * (rho 16862 * seg16AccX102 rho) - rho 16861 * seg16AccY102 rho +
            (seg16AccY102 rho - seg16AccX102 rho * (-1)) * (rho 16861 + rho 16862) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16868 * (1 - rho 16866) = rho 16863 - rho 16864 - rho 16865 := ha5
        _ = (-1) * rho 16864 - rho 16865 + (seg16AccY102 rho - seg16AccX102 rho * (-1)) * (rho 16861 + rho 16862) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX103 rho = seg16AccX102 rho - Bool.toZMod bit * (seg16AccX102 rho - rho 16867) := by
      have hd : rho 16869 = Bool.toZMod bit * (rho 16867 - seg16AccX102 rho) := by
        rw [← hbit]
        unfold seg16AccX102
        linear_combination -r4297
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY103 rho = seg16AccY102 rho - Bool.toZMod bit * (seg16AccY102 rho - rho 16868) := by
      have hd : rho 16870 = Bool.toZMod bit * (rho 16868 - seg16AccY102 rho) := by
        rw [← hbit]
        unfold seg16AccY102
        linear_combination -r4298
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16861 * rho 16862 = rho 16871 := by linear_combination r4299
    have hd1 : rho 16861 * rho 16861 = rho 16872 := by linear_combination r4300
    have hd2 : rho 16862 * rho 16862 = rho 16873 := by linear_combination r4301
    have hd3 : rho 16874 * (rho 16862 * rho 16862 + rho 16861 * rho 16861 * (-1)) = 2 * (rho 16861 * rho 16862) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 16875 * (2 - (rho 16862 * rho 16862 + rho 16861 * rho 16861 * (-1))) = rho 16862 * rho 16862 - rho 16861 * rho 16861 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX102 rho : Seg16.F), (seg16AccY102 rho : Seg16.F)⟩
      ⟨(rho 16861 : Seg16.F), (rho 16862 : Seg16.F)⟩
      ⟨(rho 16867 : Seg16.F), (rho 16868 : Seg16.F)⟩
      ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
      ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg16_rows103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4304 rho ∧ Seg16.relationRow4305 rho ∧ Seg16.relationRow4306 rho ∧ Seg16.relationRow4307 rho ∧ Seg16.relationRow4308 rho ∧ Seg16.relationRow4309 rho ∧ Seg16.relationRow4310 rho ∧ Seg16.relationRow4311 rho ∧ Seg16.relationRow4312 rho ∧ Seg16.relationRow4313 rho ∧ Seg16.relationRow4314 rho ∧ Seg16.relationRow4315 rho ∧ Seg16.relationRow4316 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  exact ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩

theorem seg16_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15395 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩ := by
  obtain ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩ := seg16_rows103 rho h
  unfold Seg16.relationRow4304 at r4304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4304
  unfold Seg16.relationRow4305 at r4305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305
  unfold Seg16.relationRow4306 at r4306
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4306
  unfold Seg16.relationRow4307 at r4307
  unfold Seg16.relationRow4308 at r4308
  unfold Seg16.relationRow4309 at r4309
  unfold Seg16.relationRow4310 at r4310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4310
  unfold Seg16.relationRow4311 at r4311
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4311
  unfold Seg16.relationRow4312 at r4312
  unfold Seg16.relationRow4313 at r4313
  unfold Seg16.relationRow4314 at r4314
  unfold Seg16.relationRow4315 at r4315
  unfold Seg16.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 15395 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
        ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩ := by
    have hnextx : seg16AccX104 rho = seg16AccX103 rho + rho 16882 := by
      unfold seg16AccX104 seg16AccX103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 103]
      ring
    have hnexty : seg16AccY104 rho = seg16AccY103 rho + rho 16883 := by
      unfold seg16AccY104 seg16AccY103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 103]
      ring
    have ha0 : (rho 16874 + rho 16875) * (seg16AccX103 rho + seg16AccY103 rho) = rho 16876 := by
      unfold seg16AccX103 seg16AccY103
      linear_combination r4304
    have ha1 : rho 16875 * seg16AccX103 rho = rho 16877 := by
      unfold seg16AccX103
      linear_combination r4305
    have ha2 : rho 16874 * seg16AccY103 rho = rho 16878 := by
      unfold seg16AccY103
      linear_combination r4306
    have ha3 : 3021 * rho 16877 * rho 16878 = rho 16879 := by
      linear_combination r4307
    have ha4 : rho 16880 * (1 + rho 16879) = rho 16877 + rho 16878 := by
      linear_combination r4308
    have ha5 : rho 16881 * (1 - rho 16879) = rho 16876 - rho 16877 - rho 16878 := by
      linear_combination r4309
    have haddx :
        rho 16880 * (1 + 3021 * (rho 16875 * seg16AccX103 rho) * (rho 16874 * seg16AccY103 rho)) =
          rho 16875 * seg16AccX103 rho + rho 16874 * seg16AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16881 * (1 - 3021 * (rho 16875 * seg16AccX103 rho) * (rho 16874 * seg16AccY103 rho)) =
          (-1) * (rho 16875 * seg16AccX103 rho) - rho 16874 * seg16AccY103 rho +
            (seg16AccY103 rho - seg16AccX103 rho * (-1)) * (rho 16874 + rho 16875) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16881 * (1 - rho 16879) = rho 16876 - rho 16877 - rho 16878 := ha5
        _ = (-1) * rho 16877 - rho 16878 + (seg16AccY103 rho - seg16AccX103 rho * (-1)) * (rho 16874 + rho 16875) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX104 rho = seg16AccX103 rho - Bool.toZMod bit * (seg16AccX103 rho - rho 16880) := by
      have hd : rho 16882 = Bool.toZMod bit * (rho 16880 - seg16AccX103 rho) := by
        rw [← hbit]
        unfold seg16AccX103
        linear_combination -r4310
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY104 rho = seg16AccY103 rho - Bool.toZMod bit * (seg16AccY103 rho - rho 16881) := by
      have hd : rho 16883 = Bool.toZMod bit * (rho 16881 - seg16AccY103 rho) := by
        rw [← hbit]
        unfold seg16AccY103
        linear_combination -r4311
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16874 * rho 16875 = rho 16884 := by linear_combination r4312
    have hd1 : rho 16874 * rho 16874 = rho 16885 := by linear_combination r4313
    have hd2 : rho 16875 * rho 16875 = rho 16886 := by linear_combination r4314
    have hd3 : rho 16887 * (rho 16875 * rho 16875 + rho 16874 * rho 16874 * (-1)) = 2 * (rho 16874 * rho 16875) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 16888 * (2 - (rho 16875 * rho 16875 + rho 16874 * rho 16874 * (-1))) = rho 16875 * rho 16875 - rho 16874 * rho 16874 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX103 rho : Seg16.F), (seg16AccY103 rho : Seg16.F)⟩
      ⟨(rho 16874 : Seg16.F), (rho 16875 : Seg16.F)⟩
      ⟨(rho 16880 : Seg16.F), (rho 16881 : Seg16.F)⟩
      ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
      ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg16_rows104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4317 rho ∧ Seg16.relationRow4318 rho ∧ Seg16.relationRow4319 rho ∧ Seg16.relationRow4320 rho ∧ Seg16.relationRow4321 rho ∧ Seg16.relationRow4322 rho ∧ Seg16.relationRow4323 rho ∧ Seg16.relationRow4324 rho ∧ Seg16.relationRow4325 rho ∧ Seg16.relationRow4326 rho ∧ Seg16.relationRow4327 rho ∧ Seg16.relationRow4328 rho ∧ Seg16.relationRow4329 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩

theorem seg16_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15396 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩ := by
  obtain ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩ := seg16_rows104 rho h
  unfold Seg16.relationRow4317 at r4317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4317
  unfold Seg16.relationRow4318 at r4318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318
  unfold Seg16.relationRow4319 at r4319
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4319
  unfold Seg16.relationRow4320 at r4320
  unfold Seg16.relationRow4321 at r4321
  unfold Seg16.relationRow4322 at r4322
  unfold Seg16.relationRow4323 at r4323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4323
  unfold Seg16.relationRow4324 at r4324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4324
  unfold Seg16.relationRow4325 at r4325
  unfold Seg16.relationRow4326 at r4326
  unfold Seg16.relationRow4327 at r4327
  unfold Seg16.relationRow4328 at r4328
  unfold Seg16.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 15396 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
        ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩ := by
    have hnextx : seg16AccX105 rho = seg16AccX104 rho + rho 16895 := by
      unfold seg16AccX105 seg16AccX104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 104]
      ring
    have hnexty : seg16AccY105 rho = seg16AccY104 rho + rho 16896 := by
      unfold seg16AccY105 seg16AccY104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 104]
      ring
    have ha0 : (rho 16887 + rho 16888) * (seg16AccX104 rho + seg16AccY104 rho) = rho 16889 := by
      unfold seg16AccX104 seg16AccY104
      linear_combination r4317
    have ha1 : rho 16888 * seg16AccX104 rho = rho 16890 := by
      unfold seg16AccX104
      linear_combination r4318
    have ha2 : rho 16887 * seg16AccY104 rho = rho 16891 := by
      unfold seg16AccY104
      linear_combination r4319
    have ha3 : 3021 * rho 16890 * rho 16891 = rho 16892 := by
      linear_combination r4320
    have ha4 : rho 16893 * (1 + rho 16892) = rho 16890 + rho 16891 := by
      linear_combination r4321
    have ha5 : rho 16894 * (1 - rho 16892) = rho 16889 - rho 16890 - rho 16891 := by
      linear_combination r4322
    have haddx :
        rho 16893 * (1 + 3021 * (rho 16888 * seg16AccX104 rho) * (rho 16887 * seg16AccY104 rho)) =
          rho 16888 * seg16AccX104 rho + rho 16887 * seg16AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16894 * (1 - 3021 * (rho 16888 * seg16AccX104 rho) * (rho 16887 * seg16AccY104 rho)) =
          (-1) * (rho 16888 * seg16AccX104 rho) - rho 16887 * seg16AccY104 rho +
            (seg16AccY104 rho - seg16AccX104 rho * (-1)) * (rho 16887 + rho 16888) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16894 * (1 - rho 16892) = rho 16889 - rho 16890 - rho 16891 := ha5
        _ = (-1) * rho 16890 - rho 16891 + (seg16AccY104 rho - seg16AccX104 rho * (-1)) * (rho 16887 + rho 16888) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX105 rho = seg16AccX104 rho - Bool.toZMod bit * (seg16AccX104 rho - rho 16893) := by
      have hd : rho 16895 = Bool.toZMod bit * (rho 16893 - seg16AccX104 rho) := by
        rw [← hbit]
        unfold seg16AccX104
        linear_combination -r4323
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY105 rho = seg16AccY104 rho - Bool.toZMod bit * (seg16AccY104 rho - rho 16894) := by
      have hd : rho 16896 = Bool.toZMod bit * (rho 16894 - seg16AccY104 rho) := by
        rw [← hbit]
        unfold seg16AccY104
        linear_combination -r4324
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16887 * rho 16888 = rho 16897 := by linear_combination r4325
    have hd1 : rho 16887 * rho 16887 = rho 16898 := by linear_combination r4326
    have hd2 : rho 16888 * rho 16888 = rho 16899 := by linear_combination r4327
    have hd3 : rho 16900 * (rho 16888 * rho 16888 + rho 16887 * rho 16887 * (-1)) = 2 * (rho 16887 * rho 16888) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 16901 * (2 - (rho 16888 * rho 16888 + rho 16887 * rho 16887 * (-1))) = rho 16888 * rho 16888 - rho 16887 * rho 16887 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX104 rho : Seg16.F), (seg16AccY104 rho : Seg16.F)⟩
      ⟨(rho 16887 : Seg16.F), (rho 16888 : Seg16.F)⟩
      ⟨(rho 16893 : Seg16.F), (rho 16894 : Seg16.F)⟩
      ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
      ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg16_rows105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4330 rho ∧ Seg16.relationRow4331 rho ∧ Seg16.relationRow4332 rho ∧ Seg16.relationRow4333 rho ∧ Seg16.relationRow4334 rho ∧ Seg16.relationRow4335 rho ∧ Seg16.relationRow4336 rho ∧ Seg16.relationRow4337 rho ∧ Seg16.relationRow4338 rho ∧ Seg16.relationRow4339 rho ∧ Seg16.relationRow4340 rho ∧ Seg16.relationRow4341 rho ∧ Seg16.relationRow4342 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩

theorem seg16_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15397 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩ := by
  obtain ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩ := seg16_rows105 rho h
  unfold Seg16.relationRow4330 at r4330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4330
  unfold Seg16.relationRow4331 at r4331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331
  unfold Seg16.relationRow4332 at r4332
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4332
  unfold Seg16.relationRow4333 at r4333
  unfold Seg16.relationRow4334 at r4334
  unfold Seg16.relationRow4335 at r4335
  unfold Seg16.relationRow4336 at r4336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4336
  unfold Seg16.relationRow4337 at r4337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4337
  unfold Seg16.relationRow4338 at r4338
  unfold Seg16.relationRow4339 at r4339
  unfold Seg16.relationRow4340 at r4340
  unfold Seg16.relationRow4341 at r4341
  unfold Seg16.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 15397 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
        ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩ := by
    have hnextx : seg16AccX106 rho = seg16AccX105 rho + rho 16908 := by
      unfold seg16AccX106 seg16AccX105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 105]
      ring
    have hnexty : seg16AccY106 rho = seg16AccY105 rho + rho 16909 := by
      unfold seg16AccY106 seg16AccY105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 105]
      ring
    have ha0 : (rho 16900 + rho 16901) * (seg16AccX105 rho + seg16AccY105 rho) = rho 16902 := by
      unfold seg16AccX105 seg16AccY105
      linear_combination r4330
    have ha1 : rho 16901 * seg16AccX105 rho = rho 16903 := by
      unfold seg16AccX105
      linear_combination r4331
    have ha2 : rho 16900 * seg16AccY105 rho = rho 16904 := by
      unfold seg16AccY105
      linear_combination r4332
    have ha3 : 3021 * rho 16903 * rho 16904 = rho 16905 := by
      linear_combination r4333
    have ha4 : rho 16906 * (1 + rho 16905) = rho 16903 + rho 16904 := by
      linear_combination r4334
    have ha5 : rho 16907 * (1 - rho 16905) = rho 16902 - rho 16903 - rho 16904 := by
      linear_combination r4335
    have haddx :
        rho 16906 * (1 + 3021 * (rho 16901 * seg16AccX105 rho) * (rho 16900 * seg16AccY105 rho)) =
          rho 16901 * seg16AccX105 rho + rho 16900 * seg16AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16907 * (1 - 3021 * (rho 16901 * seg16AccX105 rho) * (rho 16900 * seg16AccY105 rho)) =
          (-1) * (rho 16901 * seg16AccX105 rho) - rho 16900 * seg16AccY105 rho +
            (seg16AccY105 rho - seg16AccX105 rho * (-1)) * (rho 16900 + rho 16901) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16907 * (1 - rho 16905) = rho 16902 - rho 16903 - rho 16904 := ha5
        _ = (-1) * rho 16903 - rho 16904 + (seg16AccY105 rho - seg16AccX105 rho * (-1)) * (rho 16900 + rho 16901) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX106 rho = seg16AccX105 rho - Bool.toZMod bit * (seg16AccX105 rho - rho 16906) := by
      have hd : rho 16908 = Bool.toZMod bit * (rho 16906 - seg16AccX105 rho) := by
        rw [← hbit]
        unfold seg16AccX105
        linear_combination -r4336
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY106 rho = seg16AccY105 rho - Bool.toZMod bit * (seg16AccY105 rho - rho 16907) := by
      have hd : rho 16909 = Bool.toZMod bit * (rho 16907 - seg16AccY105 rho) := by
        rw [← hbit]
        unfold seg16AccY105
        linear_combination -r4337
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16900 * rho 16901 = rho 16910 := by linear_combination r4338
    have hd1 : rho 16900 * rho 16900 = rho 16911 := by linear_combination r4339
    have hd2 : rho 16901 * rho 16901 = rho 16912 := by linear_combination r4340
    have hd3 : rho 16913 * (rho 16901 * rho 16901 + rho 16900 * rho 16900 * (-1)) = 2 * (rho 16900 * rho 16901) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 16914 * (2 - (rho 16901 * rho 16901 + rho 16900 * rho 16900 * (-1))) = rho 16901 * rho 16901 - rho 16900 * rho 16900 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX105 rho : Seg16.F), (seg16AccY105 rho : Seg16.F)⟩
      ⟨(rho 16900 : Seg16.F), (rho 16901 : Seg16.F)⟩
      ⟨(rho 16906 : Seg16.F), (rho 16907 : Seg16.F)⟩
      ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
      ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg16_rows106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4343 rho ∧ Seg16.relationRow4344 rho ∧ Seg16.relationRow4345 rho ∧ Seg16.relationRow4346 rho ∧ Seg16.relationRow4347 rho ∧ Seg16.relationRow4348 rho ∧ Seg16.relationRow4349 rho ∧ Seg16.relationRow4350 rho ∧ Seg16.relationRow4351 rho ∧ Seg16.relationRow4352 rho ∧ Seg16.relationRow4353 rho ∧ Seg16.relationRow4354 rho ∧ Seg16.relationRow4355 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩

theorem seg16_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15398 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩ := by
  obtain ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩ := seg16_rows106 rho h
  unfold Seg16.relationRow4343 at r4343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4343
  unfold Seg16.relationRow4344 at r4344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344
  unfold Seg16.relationRow4345 at r4345
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4345
  unfold Seg16.relationRow4346 at r4346
  unfold Seg16.relationRow4347 at r4347
  unfold Seg16.relationRow4348 at r4348
  unfold Seg16.relationRow4349 at r4349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4349
  unfold Seg16.relationRow4350 at r4350
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4350
  unfold Seg16.relationRow4351 at r4351
  unfold Seg16.relationRow4352 at r4352
  unfold Seg16.relationRow4353 at r4353
  unfold Seg16.relationRow4354 at r4354
  unfold Seg16.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 15398 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
        ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩ := by
    have hnextx : seg16AccX107 rho = seg16AccX106 rho + rho 16921 := by
      unfold seg16AccX107 seg16AccX106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 106]
      ring
    have hnexty : seg16AccY107 rho = seg16AccY106 rho + rho 16922 := by
      unfold seg16AccY107 seg16AccY106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 106]
      ring
    have ha0 : (rho 16913 + rho 16914) * (seg16AccX106 rho + seg16AccY106 rho) = rho 16915 := by
      unfold seg16AccX106 seg16AccY106
      linear_combination r4343
    have ha1 : rho 16914 * seg16AccX106 rho = rho 16916 := by
      unfold seg16AccX106
      linear_combination r4344
    have ha2 : rho 16913 * seg16AccY106 rho = rho 16917 := by
      unfold seg16AccY106
      linear_combination r4345
    have ha3 : 3021 * rho 16916 * rho 16917 = rho 16918 := by
      linear_combination r4346
    have ha4 : rho 16919 * (1 + rho 16918) = rho 16916 + rho 16917 := by
      linear_combination r4347
    have ha5 : rho 16920 * (1 - rho 16918) = rho 16915 - rho 16916 - rho 16917 := by
      linear_combination r4348
    have haddx :
        rho 16919 * (1 + 3021 * (rho 16914 * seg16AccX106 rho) * (rho 16913 * seg16AccY106 rho)) =
          rho 16914 * seg16AccX106 rho + rho 16913 * seg16AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16920 * (1 - 3021 * (rho 16914 * seg16AccX106 rho) * (rho 16913 * seg16AccY106 rho)) =
          (-1) * (rho 16914 * seg16AccX106 rho) - rho 16913 * seg16AccY106 rho +
            (seg16AccY106 rho - seg16AccX106 rho * (-1)) * (rho 16913 + rho 16914) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16920 * (1 - rho 16918) = rho 16915 - rho 16916 - rho 16917 := ha5
        _ = (-1) * rho 16916 - rho 16917 + (seg16AccY106 rho - seg16AccX106 rho * (-1)) * (rho 16913 + rho 16914) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX107 rho = seg16AccX106 rho - Bool.toZMod bit * (seg16AccX106 rho - rho 16919) := by
      have hd : rho 16921 = Bool.toZMod bit * (rho 16919 - seg16AccX106 rho) := by
        rw [← hbit]
        unfold seg16AccX106
        linear_combination -r4349
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY107 rho = seg16AccY106 rho - Bool.toZMod bit * (seg16AccY106 rho - rho 16920) := by
      have hd : rho 16922 = Bool.toZMod bit * (rho 16920 - seg16AccY106 rho) := by
        rw [← hbit]
        unfold seg16AccY106
        linear_combination -r4350
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16913 * rho 16914 = rho 16923 := by linear_combination r4351
    have hd1 : rho 16913 * rho 16913 = rho 16924 := by linear_combination r4352
    have hd2 : rho 16914 * rho 16914 = rho 16925 := by linear_combination r4353
    have hd3 : rho 16926 * (rho 16914 * rho 16914 + rho 16913 * rho 16913 * (-1)) = 2 * (rho 16913 * rho 16914) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 16927 * (2 - (rho 16914 * rho 16914 + rho 16913 * rho 16913 * (-1))) = rho 16914 * rho 16914 - rho 16913 * rho 16913 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX106 rho : Seg16.F), (seg16AccY106 rho : Seg16.F)⟩
      ⟨(rho 16913 : Seg16.F), (rho 16914 : Seg16.F)⟩
      ⟨(rho 16919 : Seg16.F), (rho 16920 : Seg16.F)⟩
      ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
      ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg16_rows107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4356 rho ∧ Seg16.relationRow4357 rho ∧ Seg16.relationRow4358 rho ∧ Seg16.relationRow4359 rho ∧ Seg16.relationRow4360 rho ∧ Seg16.relationRow4361 rho ∧ Seg16.relationRow4362 rho ∧ Seg16.relationRow4363 rho ∧ Seg16.relationRow4364 rho ∧ Seg16.relationRow4365 rho ∧ Seg16.relationRow4366 rho ∧ Seg16.relationRow4367 rho ∧ Seg16.relationRow4368 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩

theorem seg16_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15399 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩ := by
  obtain ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩ := seg16_rows107 rho h
  unfold Seg16.relationRow4356 at r4356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4356
  unfold Seg16.relationRow4357 at r4357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4357
  unfold Seg16.relationRow4358 at r4358
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4358
  unfold Seg16.relationRow4359 at r4359
  unfold Seg16.relationRow4360 at r4360
  unfold Seg16.relationRow4361 at r4361
  unfold Seg16.relationRow4362 at r4362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4362
  unfold Seg16.relationRow4363 at r4363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4363
  unfold Seg16.relationRow4364 at r4364
  unfold Seg16.relationRow4365 at r4365
  unfold Seg16.relationRow4366 at r4366
  unfold Seg16.relationRow4367 at r4367
  unfold Seg16.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 15399 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
        ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩ := by
    have hnextx : seg16AccX108 rho = seg16AccX107 rho + rho 16934 := by
      unfold seg16AccX108 seg16AccX107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 107]
      ring
    have hnexty : seg16AccY108 rho = seg16AccY107 rho + rho 16935 := by
      unfold seg16AccY108 seg16AccY107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 107]
      ring
    have ha0 : (rho 16926 + rho 16927) * (seg16AccX107 rho + seg16AccY107 rho) = rho 16928 := by
      unfold seg16AccX107 seg16AccY107
      linear_combination r4356
    have ha1 : rho 16927 * seg16AccX107 rho = rho 16929 := by
      unfold seg16AccX107
      linear_combination r4357
    have ha2 : rho 16926 * seg16AccY107 rho = rho 16930 := by
      unfold seg16AccY107
      linear_combination r4358
    have ha3 : 3021 * rho 16929 * rho 16930 = rho 16931 := by
      linear_combination r4359
    have ha4 : rho 16932 * (1 + rho 16931) = rho 16929 + rho 16930 := by
      linear_combination r4360
    have ha5 : rho 16933 * (1 - rho 16931) = rho 16928 - rho 16929 - rho 16930 := by
      linear_combination r4361
    have haddx :
        rho 16932 * (1 + 3021 * (rho 16927 * seg16AccX107 rho) * (rho 16926 * seg16AccY107 rho)) =
          rho 16927 * seg16AccX107 rho + rho 16926 * seg16AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16933 * (1 - 3021 * (rho 16927 * seg16AccX107 rho) * (rho 16926 * seg16AccY107 rho)) =
          (-1) * (rho 16927 * seg16AccX107 rho) - rho 16926 * seg16AccY107 rho +
            (seg16AccY107 rho - seg16AccX107 rho * (-1)) * (rho 16926 + rho 16927) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16933 * (1 - rho 16931) = rho 16928 - rho 16929 - rho 16930 := ha5
        _ = (-1) * rho 16929 - rho 16930 + (seg16AccY107 rho - seg16AccX107 rho * (-1)) * (rho 16926 + rho 16927) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX108 rho = seg16AccX107 rho - Bool.toZMod bit * (seg16AccX107 rho - rho 16932) := by
      have hd : rho 16934 = Bool.toZMod bit * (rho 16932 - seg16AccX107 rho) := by
        rw [← hbit]
        unfold seg16AccX107
        linear_combination -r4362
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY108 rho = seg16AccY107 rho - Bool.toZMod bit * (seg16AccY107 rho - rho 16933) := by
      have hd : rho 16935 = Bool.toZMod bit * (rho 16933 - seg16AccY107 rho) := by
        rw [← hbit]
        unfold seg16AccY107
        linear_combination -r4363
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16926 * rho 16927 = rho 16936 := by linear_combination r4364
    have hd1 : rho 16926 * rho 16926 = rho 16937 := by linear_combination r4365
    have hd2 : rho 16927 * rho 16927 = rho 16938 := by linear_combination r4366
    have hd3 : rho 16939 * (rho 16927 * rho 16927 + rho 16926 * rho 16926 * (-1)) = 2 * (rho 16926 * rho 16927) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 16940 * (2 - (rho 16927 * rho 16927 + rho 16926 * rho 16926 * (-1))) = rho 16927 * rho 16927 - rho 16926 * rho 16926 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX107 rho : Seg16.F), (seg16AccY107 rho : Seg16.F)⟩
      ⟨(rho 16926 : Seg16.F), (rho 16927 : Seg16.F)⟩
      ⟨(rho 16932 : Seg16.F), (rho 16933 : Seg16.F)⟩
      ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
      ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg16_rows108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4369 rho ∧ Seg16.relationRow4370 rho ∧ Seg16.relationRow4371 rho ∧ Seg16.relationRow4372 rho ∧ Seg16.relationRow4373 rho ∧ Seg16.relationRow4374 rho ∧ Seg16.relationRow4375 rho ∧ Seg16.relationRow4376 rho ∧ Seg16.relationRow4377 rho ∧ Seg16.relationRow4378 rho ∧ Seg16.relationRow4379 rho ∧ Seg16.relationRow4380 rho ∧ Seg16.relationRow4381 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩

theorem seg16_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15400 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩ := by
  obtain ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩ := seg16_rows108 rho h
  unfold Seg16.relationRow4369 at r4369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4369
  unfold Seg16.relationRow4370 at r4370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4370
  unfold Seg16.relationRow4371 at r4371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4371
  unfold Seg16.relationRow4372 at r4372
  unfold Seg16.relationRow4373 at r4373
  unfold Seg16.relationRow4374 at r4374
  unfold Seg16.relationRow4375 at r4375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4375
  unfold Seg16.relationRow4376 at r4376
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4376
  unfold Seg16.relationRow4377 at r4377
  unfold Seg16.relationRow4378 at r4378
  unfold Seg16.relationRow4379 at r4379
  unfold Seg16.relationRow4380 at r4380
  unfold Seg16.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 15400 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
        ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩ := by
    have hnextx : seg16AccX109 rho = seg16AccX108 rho + rho 16947 := by
      unfold seg16AccX109 seg16AccX108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 108]
      ring
    have hnexty : seg16AccY109 rho = seg16AccY108 rho + rho 16948 := by
      unfold seg16AccY109 seg16AccY108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 108]
      ring
    have ha0 : (rho 16939 + rho 16940) * (seg16AccX108 rho + seg16AccY108 rho) = rho 16941 := by
      unfold seg16AccX108 seg16AccY108
      linear_combination r4369
    have ha1 : rho 16940 * seg16AccX108 rho = rho 16942 := by
      unfold seg16AccX108
      linear_combination r4370
    have ha2 : rho 16939 * seg16AccY108 rho = rho 16943 := by
      unfold seg16AccY108
      linear_combination r4371
    have ha3 : 3021 * rho 16942 * rho 16943 = rho 16944 := by
      linear_combination r4372
    have ha4 : rho 16945 * (1 + rho 16944) = rho 16942 + rho 16943 := by
      linear_combination r4373
    have ha5 : rho 16946 * (1 - rho 16944) = rho 16941 - rho 16942 - rho 16943 := by
      linear_combination r4374
    have haddx :
        rho 16945 * (1 + 3021 * (rho 16940 * seg16AccX108 rho) * (rho 16939 * seg16AccY108 rho)) =
          rho 16940 * seg16AccX108 rho + rho 16939 * seg16AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16946 * (1 - 3021 * (rho 16940 * seg16AccX108 rho) * (rho 16939 * seg16AccY108 rho)) =
          (-1) * (rho 16940 * seg16AccX108 rho) - rho 16939 * seg16AccY108 rho +
            (seg16AccY108 rho - seg16AccX108 rho * (-1)) * (rho 16939 + rho 16940) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16946 * (1 - rho 16944) = rho 16941 - rho 16942 - rho 16943 := ha5
        _ = (-1) * rho 16942 - rho 16943 + (seg16AccY108 rho - seg16AccX108 rho * (-1)) * (rho 16939 + rho 16940) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX109 rho = seg16AccX108 rho - Bool.toZMod bit * (seg16AccX108 rho - rho 16945) := by
      have hd : rho 16947 = Bool.toZMod bit * (rho 16945 - seg16AccX108 rho) := by
        rw [← hbit]
        unfold seg16AccX108
        linear_combination -r4375
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY109 rho = seg16AccY108 rho - Bool.toZMod bit * (seg16AccY108 rho - rho 16946) := by
      have hd : rho 16948 = Bool.toZMod bit * (rho 16946 - seg16AccY108 rho) := by
        rw [← hbit]
        unfold seg16AccY108
        linear_combination -r4376
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16939 * rho 16940 = rho 16949 := by linear_combination r4377
    have hd1 : rho 16939 * rho 16939 = rho 16950 := by linear_combination r4378
    have hd2 : rho 16940 * rho 16940 = rho 16951 := by linear_combination r4379
    have hd3 : rho 16952 * (rho 16940 * rho 16940 + rho 16939 * rho 16939 * (-1)) = 2 * (rho 16939 * rho 16940) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 16953 * (2 - (rho 16940 * rho 16940 + rho 16939 * rho 16939 * (-1))) = rho 16940 * rho 16940 - rho 16939 * rho 16939 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX108 rho : Seg16.F), (seg16AccY108 rho : Seg16.F)⟩
      ⟨(rho 16939 : Seg16.F), (rho 16940 : Seg16.F)⟩
      ⟨(rho 16945 : Seg16.F), (rho 16946 : Seg16.F)⟩
      ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
      ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg16_rows109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4382 rho ∧ Seg16.relationRow4383 rho ∧ Seg16.relationRow4384 rho ∧ Seg16.relationRow4385 rho ∧ Seg16.relationRow4386 rho ∧ Seg16.relationRow4387 rho ∧ Seg16.relationRow4388 rho ∧ Seg16.relationRow4389 rho ∧ Seg16.relationRow4390 rho ∧ Seg16.relationRow4391 rho ∧ Seg16.relationRow4392 rho ∧ Seg16.relationRow4393 rho ∧ Seg16.relationRow4394 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  exact ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩

theorem seg16_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15401 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩ := by
  obtain ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩ := seg16_rows109 rho h
  unfold Seg16.relationRow4382 at r4382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4382
  unfold Seg16.relationRow4383 at r4383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4383
  unfold Seg16.relationRow4384 at r4384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4384
  unfold Seg16.relationRow4385 at r4385
  unfold Seg16.relationRow4386 at r4386
  unfold Seg16.relationRow4387 at r4387
  unfold Seg16.relationRow4388 at r4388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4388
  unfold Seg16.relationRow4389 at r4389
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4389
  unfold Seg16.relationRow4390 at r4390
  unfold Seg16.relationRow4391 at r4391
  unfold Seg16.relationRow4392 at r4392
  unfold Seg16.relationRow4393 at r4393
  unfold Seg16.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 15401 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
        ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩ := by
    have hnextx : seg16AccX110 rho = seg16AccX109 rho + rho 16960 := by
      unfold seg16AccX110 seg16AccX109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 109]
      ring
    have hnexty : seg16AccY110 rho = seg16AccY109 rho + rho 16961 := by
      unfold seg16AccY110 seg16AccY109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 109]
      ring
    have ha0 : (rho 16952 + rho 16953) * (seg16AccX109 rho + seg16AccY109 rho) = rho 16954 := by
      unfold seg16AccX109 seg16AccY109
      linear_combination r4382
    have ha1 : rho 16953 * seg16AccX109 rho = rho 16955 := by
      unfold seg16AccX109
      linear_combination r4383
    have ha2 : rho 16952 * seg16AccY109 rho = rho 16956 := by
      unfold seg16AccY109
      linear_combination r4384
    have ha3 : 3021 * rho 16955 * rho 16956 = rho 16957 := by
      linear_combination r4385
    have ha4 : rho 16958 * (1 + rho 16957) = rho 16955 + rho 16956 := by
      linear_combination r4386
    have ha5 : rho 16959 * (1 - rho 16957) = rho 16954 - rho 16955 - rho 16956 := by
      linear_combination r4387
    have haddx :
        rho 16958 * (1 + 3021 * (rho 16953 * seg16AccX109 rho) * (rho 16952 * seg16AccY109 rho)) =
          rho 16953 * seg16AccX109 rho + rho 16952 * seg16AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16959 * (1 - 3021 * (rho 16953 * seg16AccX109 rho) * (rho 16952 * seg16AccY109 rho)) =
          (-1) * (rho 16953 * seg16AccX109 rho) - rho 16952 * seg16AccY109 rho +
            (seg16AccY109 rho - seg16AccX109 rho * (-1)) * (rho 16952 + rho 16953) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16959 * (1 - rho 16957) = rho 16954 - rho 16955 - rho 16956 := ha5
        _ = (-1) * rho 16955 - rho 16956 + (seg16AccY109 rho - seg16AccX109 rho * (-1)) * (rho 16952 + rho 16953) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX110 rho = seg16AccX109 rho - Bool.toZMod bit * (seg16AccX109 rho - rho 16958) := by
      have hd : rho 16960 = Bool.toZMod bit * (rho 16958 - seg16AccX109 rho) := by
        rw [← hbit]
        unfold seg16AccX109
        linear_combination -r4388
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY110 rho = seg16AccY109 rho - Bool.toZMod bit * (seg16AccY109 rho - rho 16959) := by
      have hd : rho 16961 = Bool.toZMod bit * (rho 16959 - seg16AccY109 rho) := by
        rw [← hbit]
        unfold seg16AccY109
        linear_combination -r4389
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16952 * rho 16953 = rho 16962 := by linear_combination r4390
    have hd1 : rho 16952 * rho 16952 = rho 16963 := by linear_combination r4391
    have hd2 : rho 16953 * rho 16953 = rho 16964 := by linear_combination r4392
    have hd3 : rho 16965 * (rho 16953 * rho 16953 + rho 16952 * rho 16952 * (-1)) = 2 * (rho 16952 * rho 16953) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 16966 * (2 - (rho 16953 * rho 16953 + rho 16952 * rho 16952 * (-1))) = rho 16953 * rho 16953 - rho 16952 * rho 16952 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX109 rho : Seg16.F), (seg16AccY109 rho : Seg16.F)⟩
      ⟨(rho 16952 : Seg16.F), (rho 16953 : Seg16.F)⟩
      ⟨(rho 16958 : Seg16.F), (rho 16959 : Seg16.F)⟩
      ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
      ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg16_hstep_c9 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg16_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg16_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg16_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg16_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg16_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg16_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg16_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg16_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg16_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg16_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
