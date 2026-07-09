import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4252 rho ∧ Seg5.relationRow4253 rho ∧ Seg5.relationRow4254 rho ∧ Seg5.relationRow4255 rho ∧ Seg5.relationRow4256 rho ∧ Seg5.relationRow4257 rho ∧ Seg5.relationRow4258 rho ∧ Seg5.relationRow4259 rho ∧ Seg5.relationRow4260 rho ∧ Seg5.relationRow4261 rho ∧ Seg5.relationRow4262 rho ∧ Seg5.relationRow4263 rho ∧ Seg5.relationRow4264 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩

theorem seg5_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2514 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩
        ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩
        ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩
        ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩ := by
  obtain ⟨r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264⟩ := seg5_rows99 rho h
  unfold Seg5.relationRow4252 at r4252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4252
  unfold Seg5.relationRow4253 at r4253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253
  unfold Seg5.relationRow4254 at r4254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4254
  unfold Seg5.relationRow4255 at r4255
  unfold Seg5.relationRow4256 at r4256
  unfold Seg5.relationRow4257 at r4257
  unfold Seg5.relationRow4258 at r4258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4258
  unfold Seg5.relationRow4259 at r4259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4259
  unfold Seg5.relationRow4260 at r4260
  unfold Seg5.relationRow4261 at r4261
  unfold Seg5.relationRow4262 at r4262
  unfold Seg5.relationRow4263 at r4263
  unfold Seg5.relationRow4264 at r4264
  have hrung99 (bit : Bool) (hbit : rho 2514 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩
        ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩
        ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩
        ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩ := by
    have hnextx : seg5AccX100 rho = seg5AccX99 rho + rho 3953 := by
      unfold seg5AccX100 seg5AccX99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 99]
      ring
    have hnexty : seg5AccY100 rho = seg5AccY99 rho + rho 3954 := by
      unfold seg5AccY100 seg5AccY99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 99]
      ring
    have ha0 : (rho 3945 + rho 3946) * (seg5AccX99 rho + seg5AccY99 rho) = rho 3947 := by
      unfold seg5AccX99 seg5AccY99
      linear_combination r4252
    have ha1 : rho 3946 * seg5AccX99 rho = rho 3948 := by
      unfold seg5AccX99
      linear_combination r4253
    have ha2 : rho 3945 * seg5AccY99 rho = rho 3949 := by
      unfold seg5AccY99
      linear_combination r4254
    have ha3 : 3021 * rho 3948 * rho 3949 = rho 3950 := by
      linear_combination r4255
    have ha4 : rho 3951 * (1 + rho 3950) = rho 3948 + rho 3949 := by
      linear_combination r4256
    have ha5 : rho 3952 * (1 - rho 3950) = rho 3947 - rho 3948 - rho 3949 := by
      linear_combination r4257
    have haddx :
        rho 3951 * (1 + 3021 * (rho 3946 * seg5AccX99 rho) * (rho 3945 * seg5AccY99 rho)) =
          rho 3946 * seg5AccX99 rho + rho 3945 * seg5AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3952 * (1 - 3021 * (rho 3946 * seg5AccX99 rho) * (rho 3945 * seg5AccY99 rho)) =
          (-1) * (rho 3946 * seg5AccX99 rho) - rho 3945 * seg5AccY99 rho +
            (seg5AccY99 rho - seg5AccX99 rho * (-1)) * (rho 3945 + rho 3946) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3952 * (1 - rho 3950) = rho 3947 - rho 3948 - rho 3949 := ha5
        _ = (-1) * rho 3948 - rho 3949 + (seg5AccY99 rho - seg5AccX99 rho * (-1)) * (rho 3945 + rho 3946) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX100 rho = seg5AccX99 rho - Bool.toZMod bit * (seg5AccX99 rho - rho 3951) := by
      have hd : rho 3953 = Bool.toZMod bit * (rho 3951 - seg5AccX99 rho) := by
        rw [← hbit]
        unfold seg5AccX99
        linear_combination -r4258
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY100 rho = seg5AccY99 rho - Bool.toZMod bit * (seg5AccY99 rho - rho 3952) := by
      have hd : rho 3954 = Bool.toZMod bit * (rho 3952 - seg5AccY99 rho) := by
        rw [← hbit]
        unfold seg5AccY99
        linear_combination -r4259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3945 * rho 3946 = rho 3955 := by linear_combination r4260
    have hd1 : rho 3945 * rho 3945 = rho 3956 := by linear_combination r4261
    have hd2 : rho 3946 * rho 3946 = rho 3957 := by linear_combination r4262
    have hd3 : rho 3958 * (rho 3946 * rho 3946 + rho 3945 * rho 3945 * (-1)) = 2 * (rho 3945 * rho 3946) := by
      rw [hd0, hd1, hd2]
      linear_combination r4263
    have hd4 : rho 3959 * (2 - (rho 3946 * rho 3946 + rho 3945 * rho 3945 * (-1))) = rho 3946 * rho 3946 - rho 3945 * rho 3945 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX99 rho : Seg5.F), (seg5AccY99 rho : Seg5.F)⟩
      ⟨(rho 3945 : Seg5.F), (rho 3946 : Seg5.F)⟩
      ⟨(rho 3951 : Seg5.F), (rho 3952 : Seg5.F)⟩
      ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩
      ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg5_rows100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4265 rho ∧ Seg5.relationRow4266 rho ∧ Seg5.relationRow4267 rho ∧ Seg5.relationRow4268 rho ∧ Seg5.relationRow4269 rho ∧ Seg5.relationRow4270 rho ∧ Seg5.relationRow4271 rho ∧ Seg5.relationRow4272 rho ∧ Seg5.relationRow4273 rho ∧ Seg5.relationRow4274 rho ∧ Seg5.relationRow4275 rho ∧ Seg5.relationRow4276 rho ∧ Seg5.relationRow4277 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩

theorem seg5_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2515 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩
        ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩
        ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩
        ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩ := by
  obtain ⟨r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277⟩ := seg5_rows100 rho h
  unfold Seg5.relationRow4265 at r4265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4265
  unfold Seg5.relationRow4266 at r4266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266
  unfold Seg5.relationRow4267 at r4267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4267
  unfold Seg5.relationRow4268 at r4268
  unfold Seg5.relationRow4269 at r4269
  unfold Seg5.relationRow4270 at r4270
  unfold Seg5.relationRow4271 at r4271
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4271
  unfold Seg5.relationRow4272 at r4272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4272
  unfold Seg5.relationRow4273 at r4273
  unfold Seg5.relationRow4274 at r4274
  unfold Seg5.relationRow4275 at r4275
  unfold Seg5.relationRow4276 at r4276
  unfold Seg5.relationRow4277 at r4277
  have hrung100 (bit : Bool) (hbit : rho 2515 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩
        ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩
        ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩
        ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩ := by
    have hnextx : seg5AccX101 rho = seg5AccX100 rho + rho 3966 := by
      unfold seg5AccX101 seg5AccX100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 100]
      ring
    have hnexty : seg5AccY101 rho = seg5AccY100 rho + rho 3967 := by
      unfold seg5AccY101 seg5AccY100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 100]
      ring
    have ha0 : (rho 3958 + rho 3959) * (seg5AccX100 rho + seg5AccY100 rho) = rho 3960 := by
      unfold seg5AccX100 seg5AccY100
      linear_combination r4265
    have ha1 : rho 3959 * seg5AccX100 rho = rho 3961 := by
      unfold seg5AccX100
      linear_combination r4266
    have ha2 : rho 3958 * seg5AccY100 rho = rho 3962 := by
      unfold seg5AccY100
      linear_combination r4267
    have ha3 : 3021 * rho 3961 * rho 3962 = rho 3963 := by
      linear_combination r4268
    have ha4 : rho 3964 * (1 + rho 3963) = rho 3961 + rho 3962 := by
      linear_combination r4269
    have ha5 : rho 3965 * (1 - rho 3963) = rho 3960 - rho 3961 - rho 3962 := by
      linear_combination r4270
    have haddx :
        rho 3964 * (1 + 3021 * (rho 3959 * seg5AccX100 rho) * (rho 3958 * seg5AccY100 rho)) =
          rho 3959 * seg5AccX100 rho + rho 3958 * seg5AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3965 * (1 - 3021 * (rho 3959 * seg5AccX100 rho) * (rho 3958 * seg5AccY100 rho)) =
          (-1) * (rho 3959 * seg5AccX100 rho) - rho 3958 * seg5AccY100 rho +
            (seg5AccY100 rho - seg5AccX100 rho * (-1)) * (rho 3958 + rho 3959) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3965 * (1 - rho 3963) = rho 3960 - rho 3961 - rho 3962 := ha5
        _ = (-1) * rho 3961 - rho 3962 + (seg5AccY100 rho - seg5AccX100 rho * (-1)) * (rho 3958 + rho 3959) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX101 rho = seg5AccX100 rho - Bool.toZMod bit * (seg5AccX100 rho - rho 3964) := by
      have hd : rho 3966 = Bool.toZMod bit * (rho 3964 - seg5AccX100 rho) := by
        rw [← hbit]
        unfold seg5AccX100
        linear_combination -r4271
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY101 rho = seg5AccY100 rho - Bool.toZMod bit * (seg5AccY100 rho - rho 3965) := by
      have hd : rho 3967 = Bool.toZMod bit * (rho 3965 - seg5AccY100 rho) := by
        rw [← hbit]
        unfold seg5AccY100
        linear_combination -r4272
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3958 * rho 3959 = rho 3968 := by linear_combination r4273
    have hd1 : rho 3958 * rho 3958 = rho 3969 := by linear_combination r4274
    have hd2 : rho 3959 * rho 3959 = rho 3970 := by linear_combination r4275
    have hd3 : rho 3971 * (rho 3959 * rho 3959 + rho 3958 * rho 3958 * (-1)) = 2 * (rho 3958 * rho 3959) := by
      rw [hd0, hd1, hd2]
      linear_combination r4276
    have hd4 : rho 3972 * (2 - (rho 3959 * rho 3959 + rho 3958 * rho 3958 * (-1))) = rho 3959 * rho 3959 - rho 3958 * rho 3958 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4277
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX100 rho : Seg5.F), (seg5AccY100 rho : Seg5.F)⟩
      ⟨(rho 3958 : Seg5.F), (rho 3959 : Seg5.F)⟩
      ⟨(rho 3964 : Seg5.F), (rho 3965 : Seg5.F)⟩
      ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩
      ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg5_rows101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4278 rho ∧ Seg5.relationRow4279 rho ∧ Seg5.relationRow4280 rho ∧ Seg5.relationRow4281 rho ∧ Seg5.relationRow4282 rho ∧ Seg5.relationRow4283 rho ∧ Seg5.relationRow4284 rho ∧ Seg5.relationRow4285 rho ∧ Seg5.relationRow4286 rho ∧ Seg5.relationRow4287 rho ∧ Seg5.relationRow4288 rho ∧ Seg5.relationRow4289 rho ∧ Seg5.relationRow4290 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩

theorem seg5_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2516 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩
        ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩
        ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩
        ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩ := by
  obtain ⟨r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, r4289, r4290⟩ := seg5_rows101 rho h
  unfold Seg5.relationRow4278 at r4278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4278
  unfold Seg5.relationRow4279 at r4279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279
  unfold Seg5.relationRow4280 at r4280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4280
  unfold Seg5.relationRow4281 at r4281
  unfold Seg5.relationRow4282 at r4282
  unfold Seg5.relationRow4283 at r4283
  unfold Seg5.relationRow4284 at r4284
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4284
  unfold Seg5.relationRow4285 at r4285
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4285
  unfold Seg5.relationRow4286 at r4286
  unfold Seg5.relationRow4287 at r4287
  unfold Seg5.relationRow4288 at r4288
  unfold Seg5.relationRow4289 at r4289
  unfold Seg5.relationRow4290 at r4290
  have hrung101 (bit : Bool) (hbit : rho 2516 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩
        ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩
        ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩
        ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩ := by
    have hnextx : seg5AccX102 rho = seg5AccX101 rho + rho 3979 := by
      unfold seg5AccX102 seg5AccX101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 101]
      ring
    have hnexty : seg5AccY102 rho = seg5AccY101 rho + rho 3980 := by
      unfold seg5AccY102 seg5AccY101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 101]
      ring
    have ha0 : (rho 3971 + rho 3972) * (seg5AccX101 rho + seg5AccY101 rho) = rho 3973 := by
      unfold seg5AccX101 seg5AccY101
      linear_combination r4278
    have ha1 : rho 3972 * seg5AccX101 rho = rho 3974 := by
      unfold seg5AccX101
      linear_combination r4279
    have ha2 : rho 3971 * seg5AccY101 rho = rho 3975 := by
      unfold seg5AccY101
      linear_combination r4280
    have ha3 : 3021 * rho 3974 * rho 3975 = rho 3976 := by
      linear_combination r4281
    have ha4 : rho 3977 * (1 + rho 3976) = rho 3974 + rho 3975 := by
      linear_combination r4282
    have ha5 : rho 3978 * (1 - rho 3976) = rho 3973 - rho 3974 - rho 3975 := by
      linear_combination r4283
    have haddx :
        rho 3977 * (1 + 3021 * (rho 3972 * seg5AccX101 rho) * (rho 3971 * seg5AccY101 rho)) =
          rho 3972 * seg5AccX101 rho + rho 3971 * seg5AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3978 * (1 - 3021 * (rho 3972 * seg5AccX101 rho) * (rho 3971 * seg5AccY101 rho)) =
          (-1) * (rho 3972 * seg5AccX101 rho) - rho 3971 * seg5AccY101 rho +
            (seg5AccY101 rho - seg5AccX101 rho * (-1)) * (rho 3971 + rho 3972) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3978 * (1 - rho 3976) = rho 3973 - rho 3974 - rho 3975 := ha5
        _ = (-1) * rho 3974 - rho 3975 + (seg5AccY101 rho - seg5AccX101 rho * (-1)) * (rho 3971 + rho 3972) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX102 rho = seg5AccX101 rho - Bool.toZMod bit * (seg5AccX101 rho - rho 3977) := by
      have hd : rho 3979 = Bool.toZMod bit * (rho 3977 - seg5AccX101 rho) := by
        rw [← hbit]
        unfold seg5AccX101
        linear_combination -r4284
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY102 rho = seg5AccY101 rho - Bool.toZMod bit * (seg5AccY101 rho - rho 3978) := by
      have hd : rho 3980 = Bool.toZMod bit * (rho 3978 - seg5AccY101 rho) := by
        rw [← hbit]
        unfold seg5AccY101
        linear_combination -r4285
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3971 * rho 3972 = rho 3981 := by linear_combination r4286
    have hd1 : rho 3971 * rho 3971 = rho 3982 := by linear_combination r4287
    have hd2 : rho 3972 * rho 3972 = rho 3983 := by linear_combination r4288
    have hd3 : rho 3984 * (rho 3972 * rho 3972 + rho 3971 * rho 3971 * (-1)) = 2 * (rho 3971 * rho 3972) := by
      rw [hd0, hd1, hd2]
      linear_combination r4289
    have hd4 : rho 3985 * (2 - (rho 3972 * rho 3972 + rho 3971 * rho 3971 * (-1))) = rho 3972 * rho 3972 - rho 3971 * rho 3971 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4290
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX101 rho : Seg5.F), (seg5AccY101 rho : Seg5.F)⟩
      ⟨(rho 3971 : Seg5.F), (rho 3972 : Seg5.F)⟩
      ⟨(rho 3977 : Seg5.F), (rho 3978 : Seg5.F)⟩
      ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩
      ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg5_rows102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4291 rho ∧ Seg5.relationRow4292 rho ∧ Seg5.relationRow4293 rho ∧ Seg5.relationRow4294 rho ∧ Seg5.relationRow4295 rho ∧ Seg5.relationRow4296 rho ∧ Seg5.relationRow4297 rho ∧ Seg5.relationRow4298 rho ∧ Seg5.relationRow4299 rho ∧ Seg5.relationRow4300 rho ∧ Seg5.relationRow4301 rho ∧ Seg5.relationRow4302 rho ∧ Seg5.relationRow4303 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩

theorem seg5_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2517 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩
        ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩
        ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩
        ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩ := by
  obtain ⟨r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303⟩ := seg5_rows102 rho h
  unfold Seg5.relationRow4291 at r4291
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4291
  unfold Seg5.relationRow4292 at r4292
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4292
  unfold Seg5.relationRow4293 at r4293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4293
  unfold Seg5.relationRow4294 at r4294
  unfold Seg5.relationRow4295 at r4295
  unfold Seg5.relationRow4296 at r4296
  unfold Seg5.relationRow4297 at r4297
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4297
  unfold Seg5.relationRow4298 at r4298
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4298
  unfold Seg5.relationRow4299 at r4299
  unfold Seg5.relationRow4300 at r4300
  unfold Seg5.relationRow4301 at r4301
  unfold Seg5.relationRow4302 at r4302
  unfold Seg5.relationRow4303 at r4303
  have hrung102 (bit : Bool) (hbit : rho 2517 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩
        ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩
        ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩
        ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩ := by
    have hnextx : seg5AccX103 rho = seg5AccX102 rho + rho 3992 := by
      unfold seg5AccX103 seg5AccX102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 102]
      ring
    have hnexty : seg5AccY103 rho = seg5AccY102 rho + rho 3993 := by
      unfold seg5AccY103 seg5AccY102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 102]
      ring
    have ha0 : (rho 3984 + rho 3985) * (seg5AccX102 rho + seg5AccY102 rho) = rho 3986 := by
      unfold seg5AccX102 seg5AccY102
      linear_combination r4291
    have ha1 : rho 3985 * seg5AccX102 rho = rho 3987 := by
      unfold seg5AccX102
      linear_combination r4292
    have ha2 : rho 3984 * seg5AccY102 rho = rho 3988 := by
      unfold seg5AccY102
      linear_combination r4293
    have ha3 : 3021 * rho 3987 * rho 3988 = rho 3989 := by
      linear_combination r4294
    have ha4 : rho 3990 * (1 + rho 3989) = rho 3987 + rho 3988 := by
      linear_combination r4295
    have ha5 : rho 3991 * (1 - rho 3989) = rho 3986 - rho 3987 - rho 3988 := by
      linear_combination r4296
    have haddx :
        rho 3990 * (1 + 3021 * (rho 3985 * seg5AccX102 rho) * (rho 3984 * seg5AccY102 rho)) =
          rho 3985 * seg5AccX102 rho + rho 3984 * seg5AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3991 * (1 - 3021 * (rho 3985 * seg5AccX102 rho) * (rho 3984 * seg5AccY102 rho)) =
          (-1) * (rho 3985 * seg5AccX102 rho) - rho 3984 * seg5AccY102 rho +
            (seg5AccY102 rho - seg5AccX102 rho * (-1)) * (rho 3984 + rho 3985) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3991 * (1 - rho 3989) = rho 3986 - rho 3987 - rho 3988 := ha5
        _ = (-1) * rho 3987 - rho 3988 + (seg5AccY102 rho - seg5AccX102 rho * (-1)) * (rho 3984 + rho 3985) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX103 rho = seg5AccX102 rho - Bool.toZMod bit * (seg5AccX102 rho - rho 3990) := by
      have hd : rho 3992 = Bool.toZMod bit * (rho 3990 - seg5AccX102 rho) := by
        rw [← hbit]
        unfold seg5AccX102
        linear_combination -r4297
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY103 rho = seg5AccY102 rho - Bool.toZMod bit * (seg5AccY102 rho - rho 3991) := by
      have hd : rho 3993 = Bool.toZMod bit * (rho 3991 - seg5AccY102 rho) := by
        rw [← hbit]
        unfold seg5AccY102
        linear_combination -r4298
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3984 * rho 3985 = rho 3994 := by linear_combination r4299
    have hd1 : rho 3984 * rho 3984 = rho 3995 := by linear_combination r4300
    have hd2 : rho 3985 * rho 3985 = rho 3996 := by linear_combination r4301
    have hd3 : rho 3997 * (rho 3985 * rho 3985 + rho 3984 * rho 3984 * (-1)) = 2 * (rho 3984 * rho 3985) := by
      rw [hd0, hd1, hd2]
      linear_combination r4302
    have hd4 : rho 3998 * (2 - (rho 3985 * rho 3985 + rho 3984 * rho 3984 * (-1))) = rho 3985 * rho 3985 - rho 3984 * rho 3984 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4303
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX102 rho : Seg5.F), (seg5AccY102 rho : Seg5.F)⟩
      ⟨(rho 3984 : Seg5.F), (rho 3985 : Seg5.F)⟩
      ⟨(rho 3990 : Seg5.F), (rho 3991 : Seg5.F)⟩
      ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩
      ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg5_rows103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4304 rho ∧ Seg5.relationRow4305 rho ∧ Seg5.relationRow4306 rho ∧ Seg5.relationRow4307 rho ∧ Seg5.relationRow4308 rho ∧ Seg5.relationRow4309 rho ∧ Seg5.relationRow4310 rho ∧ Seg5.relationRow4311 rho ∧ Seg5.relationRow4312 rho ∧ Seg5.relationRow4313 rho ∧ Seg5.relationRow4314 rho ∧ Seg5.relationRow4315 rho ∧ Seg5.relationRow4316 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, _, _, _⟩
  exact ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩

theorem seg5_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2518 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩
        ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩
        ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩
        ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩ := by
  obtain ⟨r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316⟩ := seg5_rows103 rho h
  unfold Seg5.relationRow4304 at r4304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4304
  unfold Seg5.relationRow4305 at r4305
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4305
  unfold Seg5.relationRow4306 at r4306
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4306
  unfold Seg5.relationRow4307 at r4307
  unfold Seg5.relationRow4308 at r4308
  unfold Seg5.relationRow4309 at r4309
  unfold Seg5.relationRow4310 at r4310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4310
  unfold Seg5.relationRow4311 at r4311
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4311
  unfold Seg5.relationRow4312 at r4312
  unfold Seg5.relationRow4313 at r4313
  unfold Seg5.relationRow4314 at r4314
  unfold Seg5.relationRow4315 at r4315
  unfold Seg5.relationRow4316 at r4316
  have hrung103 (bit : Bool) (hbit : rho 2518 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩
        ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩
        ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩
        ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩ := by
    have hnextx : seg5AccX104 rho = seg5AccX103 rho + rho 4005 := by
      unfold seg5AccX104 seg5AccX103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 103]
      ring
    have hnexty : seg5AccY104 rho = seg5AccY103 rho + rho 4006 := by
      unfold seg5AccY104 seg5AccY103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 103]
      ring
    have ha0 : (rho 3997 + rho 3998) * (seg5AccX103 rho + seg5AccY103 rho) = rho 3999 := by
      unfold seg5AccX103 seg5AccY103
      linear_combination r4304
    have ha1 : rho 3998 * seg5AccX103 rho = rho 4000 := by
      unfold seg5AccX103
      linear_combination r4305
    have ha2 : rho 3997 * seg5AccY103 rho = rho 4001 := by
      unfold seg5AccY103
      linear_combination r4306
    have ha3 : 3021 * rho 4000 * rho 4001 = rho 4002 := by
      linear_combination r4307
    have ha4 : rho 4003 * (1 + rho 4002) = rho 4000 + rho 4001 := by
      linear_combination r4308
    have ha5 : rho 4004 * (1 - rho 4002) = rho 3999 - rho 4000 - rho 4001 := by
      linear_combination r4309
    have haddx :
        rho 4003 * (1 + 3021 * (rho 3998 * seg5AccX103 rho) * (rho 3997 * seg5AccY103 rho)) =
          rho 3998 * seg5AccX103 rho + rho 3997 * seg5AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4004 * (1 - 3021 * (rho 3998 * seg5AccX103 rho) * (rho 3997 * seg5AccY103 rho)) =
          (-1) * (rho 3998 * seg5AccX103 rho) - rho 3997 * seg5AccY103 rho +
            (seg5AccY103 rho - seg5AccX103 rho * (-1)) * (rho 3997 + rho 3998) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4004 * (1 - rho 4002) = rho 3999 - rho 4000 - rho 4001 := ha5
        _ = (-1) * rho 4000 - rho 4001 + (seg5AccY103 rho - seg5AccX103 rho * (-1)) * (rho 3997 + rho 3998) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX104 rho = seg5AccX103 rho - Bool.toZMod bit * (seg5AccX103 rho - rho 4003) := by
      have hd : rho 4005 = Bool.toZMod bit * (rho 4003 - seg5AccX103 rho) := by
        rw [← hbit]
        unfold seg5AccX103
        linear_combination -r4310
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY104 rho = seg5AccY103 rho - Bool.toZMod bit * (seg5AccY103 rho - rho 4004) := by
      have hd : rho 4006 = Bool.toZMod bit * (rho 4004 - seg5AccY103 rho) := by
        rw [← hbit]
        unfold seg5AccY103
        linear_combination -r4311
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3997 * rho 3998 = rho 4007 := by linear_combination r4312
    have hd1 : rho 3997 * rho 3997 = rho 4008 := by linear_combination r4313
    have hd2 : rho 3998 * rho 3998 = rho 4009 := by linear_combination r4314
    have hd3 : rho 4010 * (rho 3998 * rho 3998 + rho 3997 * rho 3997 * (-1)) = 2 * (rho 3997 * rho 3998) := by
      rw [hd0, hd1, hd2]
      linear_combination r4315
    have hd4 : rho 4011 * (2 - (rho 3998 * rho 3998 + rho 3997 * rho 3997 * (-1))) = rho 3998 * rho 3998 - rho 3997 * rho 3997 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4316
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX103 rho : Seg5.F), (seg5AccY103 rho : Seg5.F)⟩
      ⟨(rho 3997 : Seg5.F), (rho 3998 : Seg5.F)⟩
      ⟨(rho 4003 : Seg5.F), (rho 4004 : Seg5.F)⟩
      ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩
      ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg5_rows104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4317 rho ∧ Seg5.relationRow4318 rho ∧ Seg5.relationRow4319 rho ∧ Seg5.relationRow4320 rho ∧ Seg5.relationRow4321 rho ∧ Seg5.relationRow4322 rho ∧ Seg5.relationRow4323 rho ∧ Seg5.relationRow4324 rho ∧ Seg5.relationRow4325 rho ∧ Seg5.relationRow4326 rho ∧ Seg5.relationRow4327 rho ∧ Seg5.relationRow4328 rho ∧ Seg5.relationRow4329 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4317, r4318, r4319⟩
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩

theorem seg5_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2519 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩
        ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩
        ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩
        ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩ := by
  obtain ⟨r4317, r4318, r4319, r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329⟩ := seg5_rows104 rho h
  unfold Seg5.relationRow4317 at r4317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4317
  unfold Seg5.relationRow4318 at r4318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4318
  unfold Seg5.relationRow4319 at r4319
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4319
  unfold Seg5.relationRow4320 at r4320
  unfold Seg5.relationRow4321 at r4321
  unfold Seg5.relationRow4322 at r4322
  unfold Seg5.relationRow4323 at r4323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4323
  unfold Seg5.relationRow4324 at r4324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4324
  unfold Seg5.relationRow4325 at r4325
  unfold Seg5.relationRow4326 at r4326
  unfold Seg5.relationRow4327 at r4327
  unfold Seg5.relationRow4328 at r4328
  unfold Seg5.relationRow4329 at r4329
  have hrung104 (bit : Bool) (hbit : rho 2519 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩
        ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩
        ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩
        ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩ := by
    have hnextx : seg5AccX105 rho = seg5AccX104 rho + rho 4018 := by
      unfold seg5AccX105 seg5AccX104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 104]
      ring
    have hnexty : seg5AccY105 rho = seg5AccY104 rho + rho 4019 := by
      unfold seg5AccY105 seg5AccY104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 104]
      ring
    have ha0 : (rho 4010 + rho 4011) * (seg5AccX104 rho + seg5AccY104 rho) = rho 4012 := by
      unfold seg5AccX104 seg5AccY104
      linear_combination r4317
    have ha1 : rho 4011 * seg5AccX104 rho = rho 4013 := by
      unfold seg5AccX104
      linear_combination r4318
    have ha2 : rho 4010 * seg5AccY104 rho = rho 4014 := by
      unfold seg5AccY104
      linear_combination r4319
    have ha3 : 3021 * rho 4013 * rho 4014 = rho 4015 := by
      linear_combination r4320
    have ha4 : rho 4016 * (1 + rho 4015) = rho 4013 + rho 4014 := by
      linear_combination r4321
    have ha5 : rho 4017 * (1 - rho 4015) = rho 4012 - rho 4013 - rho 4014 := by
      linear_combination r4322
    have haddx :
        rho 4016 * (1 + 3021 * (rho 4011 * seg5AccX104 rho) * (rho 4010 * seg5AccY104 rho)) =
          rho 4011 * seg5AccX104 rho + rho 4010 * seg5AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4017 * (1 - 3021 * (rho 4011 * seg5AccX104 rho) * (rho 4010 * seg5AccY104 rho)) =
          (-1) * (rho 4011 * seg5AccX104 rho) - rho 4010 * seg5AccY104 rho +
            (seg5AccY104 rho - seg5AccX104 rho * (-1)) * (rho 4010 + rho 4011) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4017 * (1 - rho 4015) = rho 4012 - rho 4013 - rho 4014 := ha5
        _ = (-1) * rho 4013 - rho 4014 + (seg5AccY104 rho - seg5AccX104 rho * (-1)) * (rho 4010 + rho 4011) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX105 rho = seg5AccX104 rho - Bool.toZMod bit * (seg5AccX104 rho - rho 4016) := by
      have hd : rho 4018 = Bool.toZMod bit * (rho 4016 - seg5AccX104 rho) := by
        rw [← hbit]
        unfold seg5AccX104
        linear_combination -r4323
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY105 rho = seg5AccY104 rho - Bool.toZMod bit * (seg5AccY104 rho - rho 4017) := by
      have hd : rho 4019 = Bool.toZMod bit * (rho 4017 - seg5AccY104 rho) := by
        rw [← hbit]
        unfold seg5AccY104
        linear_combination -r4324
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4010 * rho 4011 = rho 4020 := by linear_combination r4325
    have hd1 : rho 4010 * rho 4010 = rho 4021 := by linear_combination r4326
    have hd2 : rho 4011 * rho 4011 = rho 4022 := by linear_combination r4327
    have hd3 : rho 4023 * (rho 4011 * rho 4011 + rho 4010 * rho 4010 * (-1)) = 2 * (rho 4010 * rho 4011) := by
      rw [hd0, hd1, hd2]
      linear_combination r4328
    have hd4 : rho 4024 * (2 - (rho 4011 * rho 4011 + rho 4010 * rho 4010 * (-1))) = rho 4011 * rho 4011 - rho 4010 * rho 4010 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4329
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX104 rho : Seg5.F), (seg5AccY104 rho : Seg5.F)⟩
      ⟨(rho 4010 : Seg5.F), (rho 4011 : Seg5.F)⟩
      ⟨(rho 4016 : Seg5.F), (rho 4017 : Seg5.F)⟩
      ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩
      ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg5_rows105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4330 rho ∧ Seg5.relationRow4331 rho ∧ Seg5.relationRow4332 rho ∧ Seg5.relationRow4333 rho ∧ Seg5.relationRow4334 rho ∧ Seg5.relationRow4335 rho ∧ Seg5.relationRow4336 rho ∧ Seg5.relationRow4337 rho ∧ Seg5.relationRow4338 rho ∧ Seg5.relationRow4339 rho ∧ Seg5.relationRow4340 rho ∧ Seg5.relationRow4341 rho ∧ Seg5.relationRow4342 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩

theorem seg5_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2520 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩
        ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩
        ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩
        ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩ := by
  obtain ⟨r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342⟩ := seg5_rows105 rho h
  unfold Seg5.relationRow4330 at r4330
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4330
  unfold Seg5.relationRow4331 at r4331
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4331
  unfold Seg5.relationRow4332 at r4332
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4332
  unfold Seg5.relationRow4333 at r4333
  unfold Seg5.relationRow4334 at r4334
  unfold Seg5.relationRow4335 at r4335
  unfold Seg5.relationRow4336 at r4336
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4336
  unfold Seg5.relationRow4337 at r4337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4337
  unfold Seg5.relationRow4338 at r4338
  unfold Seg5.relationRow4339 at r4339
  unfold Seg5.relationRow4340 at r4340
  unfold Seg5.relationRow4341 at r4341
  unfold Seg5.relationRow4342 at r4342
  have hrung105 (bit : Bool) (hbit : rho 2520 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩
        ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩
        ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩
        ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩ := by
    have hnextx : seg5AccX106 rho = seg5AccX105 rho + rho 4031 := by
      unfold seg5AccX106 seg5AccX105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 105]
      ring
    have hnexty : seg5AccY106 rho = seg5AccY105 rho + rho 4032 := by
      unfold seg5AccY106 seg5AccY105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 105]
      ring
    have ha0 : (rho 4023 + rho 4024) * (seg5AccX105 rho + seg5AccY105 rho) = rho 4025 := by
      unfold seg5AccX105 seg5AccY105
      linear_combination r4330
    have ha1 : rho 4024 * seg5AccX105 rho = rho 4026 := by
      unfold seg5AccX105
      linear_combination r4331
    have ha2 : rho 4023 * seg5AccY105 rho = rho 4027 := by
      unfold seg5AccY105
      linear_combination r4332
    have ha3 : 3021 * rho 4026 * rho 4027 = rho 4028 := by
      linear_combination r4333
    have ha4 : rho 4029 * (1 + rho 4028) = rho 4026 + rho 4027 := by
      linear_combination r4334
    have ha5 : rho 4030 * (1 - rho 4028) = rho 4025 - rho 4026 - rho 4027 := by
      linear_combination r4335
    have haddx :
        rho 4029 * (1 + 3021 * (rho 4024 * seg5AccX105 rho) * (rho 4023 * seg5AccY105 rho)) =
          rho 4024 * seg5AccX105 rho + rho 4023 * seg5AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4030 * (1 - 3021 * (rho 4024 * seg5AccX105 rho) * (rho 4023 * seg5AccY105 rho)) =
          (-1) * (rho 4024 * seg5AccX105 rho) - rho 4023 * seg5AccY105 rho +
            (seg5AccY105 rho - seg5AccX105 rho * (-1)) * (rho 4023 + rho 4024) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4030 * (1 - rho 4028) = rho 4025 - rho 4026 - rho 4027 := ha5
        _ = (-1) * rho 4026 - rho 4027 + (seg5AccY105 rho - seg5AccX105 rho * (-1)) * (rho 4023 + rho 4024) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX106 rho = seg5AccX105 rho - Bool.toZMod bit * (seg5AccX105 rho - rho 4029) := by
      have hd : rho 4031 = Bool.toZMod bit * (rho 4029 - seg5AccX105 rho) := by
        rw [← hbit]
        unfold seg5AccX105
        linear_combination -r4336
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY106 rho = seg5AccY105 rho - Bool.toZMod bit * (seg5AccY105 rho - rho 4030) := by
      have hd : rho 4032 = Bool.toZMod bit * (rho 4030 - seg5AccY105 rho) := by
        rw [← hbit]
        unfold seg5AccY105
        linear_combination -r4337
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4023 * rho 4024 = rho 4033 := by linear_combination r4338
    have hd1 : rho 4023 * rho 4023 = rho 4034 := by linear_combination r4339
    have hd2 : rho 4024 * rho 4024 = rho 4035 := by linear_combination r4340
    have hd3 : rho 4036 * (rho 4024 * rho 4024 + rho 4023 * rho 4023 * (-1)) = 2 * (rho 4023 * rho 4024) := by
      rw [hd0, hd1, hd2]
      linear_combination r4341
    have hd4 : rho 4037 * (2 - (rho 4024 * rho 4024 + rho 4023 * rho 4023 * (-1))) = rho 4024 * rho 4024 - rho 4023 * rho 4023 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4342
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX105 rho : Seg5.F), (seg5AccY105 rho : Seg5.F)⟩
      ⟨(rho 4023 : Seg5.F), (rho 4024 : Seg5.F)⟩
      ⟨(rho 4029 : Seg5.F), (rho 4030 : Seg5.F)⟩
      ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩
      ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg5_rows106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4343 rho ∧ Seg5.relationRow4344 rho ∧ Seg5.relationRow4345 rho ∧ Seg5.relationRow4346 rho ∧ Seg5.relationRow4347 rho ∧ Seg5.relationRow4348 rho ∧ Seg5.relationRow4349 rho ∧ Seg5.relationRow4350 rho ∧ Seg5.relationRow4351 rho ∧ Seg5.relationRow4352 rho ∧ Seg5.relationRow4353 rho ∧ Seg5.relationRow4354 rho ∧ Seg5.relationRow4355 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩

theorem seg5_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2521 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩
        ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩
        ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩
        ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩ := by
  obtain ⟨r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355⟩ := seg5_rows106 rho h
  unfold Seg5.relationRow4343 at r4343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4343
  unfold Seg5.relationRow4344 at r4344
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4344
  unfold Seg5.relationRow4345 at r4345
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4345
  unfold Seg5.relationRow4346 at r4346
  unfold Seg5.relationRow4347 at r4347
  unfold Seg5.relationRow4348 at r4348
  unfold Seg5.relationRow4349 at r4349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4349
  unfold Seg5.relationRow4350 at r4350
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4350
  unfold Seg5.relationRow4351 at r4351
  unfold Seg5.relationRow4352 at r4352
  unfold Seg5.relationRow4353 at r4353
  unfold Seg5.relationRow4354 at r4354
  unfold Seg5.relationRow4355 at r4355
  have hrung106 (bit : Bool) (hbit : rho 2521 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩
        ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩
        ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩
        ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩ := by
    have hnextx : seg5AccX107 rho = seg5AccX106 rho + rho 4044 := by
      unfold seg5AccX107 seg5AccX106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 106]
      ring
    have hnexty : seg5AccY107 rho = seg5AccY106 rho + rho 4045 := by
      unfold seg5AccY107 seg5AccY106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 106]
      ring
    have ha0 : (rho 4036 + rho 4037) * (seg5AccX106 rho + seg5AccY106 rho) = rho 4038 := by
      unfold seg5AccX106 seg5AccY106
      linear_combination r4343
    have ha1 : rho 4037 * seg5AccX106 rho = rho 4039 := by
      unfold seg5AccX106
      linear_combination r4344
    have ha2 : rho 4036 * seg5AccY106 rho = rho 4040 := by
      unfold seg5AccY106
      linear_combination r4345
    have ha3 : 3021 * rho 4039 * rho 4040 = rho 4041 := by
      linear_combination r4346
    have ha4 : rho 4042 * (1 + rho 4041) = rho 4039 + rho 4040 := by
      linear_combination r4347
    have ha5 : rho 4043 * (1 - rho 4041) = rho 4038 - rho 4039 - rho 4040 := by
      linear_combination r4348
    have haddx :
        rho 4042 * (1 + 3021 * (rho 4037 * seg5AccX106 rho) * (rho 4036 * seg5AccY106 rho)) =
          rho 4037 * seg5AccX106 rho + rho 4036 * seg5AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4043 * (1 - 3021 * (rho 4037 * seg5AccX106 rho) * (rho 4036 * seg5AccY106 rho)) =
          (-1) * (rho 4037 * seg5AccX106 rho) - rho 4036 * seg5AccY106 rho +
            (seg5AccY106 rho - seg5AccX106 rho * (-1)) * (rho 4036 + rho 4037) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4043 * (1 - rho 4041) = rho 4038 - rho 4039 - rho 4040 := ha5
        _ = (-1) * rho 4039 - rho 4040 + (seg5AccY106 rho - seg5AccX106 rho * (-1)) * (rho 4036 + rho 4037) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX107 rho = seg5AccX106 rho - Bool.toZMod bit * (seg5AccX106 rho - rho 4042) := by
      have hd : rho 4044 = Bool.toZMod bit * (rho 4042 - seg5AccX106 rho) := by
        rw [← hbit]
        unfold seg5AccX106
        linear_combination -r4349
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY107 rho = seg5AccY106 rho - Bool.toZMod bit * (seg5AccY106 rho - rho 4043) := by
      have hd : rho 4045 = Bool.toZMod bit * (rho 4043 - seg5AccY106 rho) := by
        rw [← hbit]
        unfold seg5AccY106
        linear_combination -r4350
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4036 * rho 4037 = rho 4046 := by linear_combination r4351
    have hd1 : rho 4036 * rho 4036 = rho 4047 := by linear_combination r4352
    have hd2 : rho 4037 * rho 4037 = rho 4048 := by linear_combination r4353
    have hd3 : rho 4049 * (rho 4037 * rho 4037 + rho 4036 * rho 4036 * (-1)) = 2 * (rho 4036 * rho 4037) := by
      rw [hd0, hd1, hd2]
      linear_combination r4354
    have hd4 : rho 4050 * (2 - (rho 4037 * rho 4037 + rho 4036 * rho 4036 * (-1))) = rho 4037 * rho 4037 - rho 4036 * rho 4036 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4355
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX106 rho : Seg5.F), (seg5AccY106 rho : Seg5.F)⟩
      ⟨(rho 4036 : Seg5.F), (rho 4037 : Seg5.F)⟩
      ⟨(rho 4042 : Seg5.F), (rho 4043 : Seg5.F)⟩
      ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩
      ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg5_rows107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4356 rho ∧ Seg5.relationRow4357 rho ∧ Seg5.relationRow4358 rho ∧ Seg5.relationRow4359 rho ∧ Seg5.relationRow4360 rho ∧ Seg5.relationRow4361 rho ∧ Seg5.relationRow4362 rho ∧ Seg5.relationRow4363 rho ∧ Seg5.relationRow4364 rho ∧ Seg5.relationRow4365 rho ∧ Seg5.relationRow4366 rho ∧ Seg5.relationRow4367 rho ∧ Seg5.relationRow4368 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩

theorem seg5_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2522 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩
        ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩
        ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩
        ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩ := by
  obtain ⟨r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368⟩ := seg5_rows107 rho h
  unfold Seg5.relationRow4356 at r4356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4356
  unfold Seg5.relationRow4357 at r4357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4357
  unfold Seg5.relationRow4358 at r4358
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4358
  unfold Seg5.relationRow4359 at r4359
  unfold Seg5.relationRow4360 at r4360
  unfold Seg5.relationRow4361 at r4361
  unfold Seg5.relationRow4362 at r4362
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4362
  unfold Seg5.relationRow4363 at r4363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4363
  unfold Seg5.relationRow4364 at r4364
  unfold Seg5.relationRow4365 at r4365
  unfold Seg5.relationRow4366 at r4366
  unfold Seg5.relationRow4367 at r4367
  unfold Seg5.relationRow4368 at r4368
  have hrung107 (bit : Bool) (hbit : rho 2522 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩
        ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩
        ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩
        ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩ := by
    have hnextx : seg5AccX108 rho = seg5AccX107 rho + rho 4057 := by
      unfold seg5AccX108 seg5AccX107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 107]
      ring
    have hnexty : seg5AccY108 rho = seg5AccY107 rho + rho 4058 := by
      unfold seg5AccY108 seg5AccY107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 107]
      ring
    have ha0 : (rho 4049 + rho 4050) * (seg5AccX107 rho + seg5AccY107 rho) = rho 4051 := by
      unfold seg5AccX107 seg5AccY107
      linear_combination r4356
    have ha1 : rho 4050 * seg5AccX107 rho = rho 4052 := by
      unfold seg5AccX107
      linear_combination r4357
    have ha2 : rho 4049 * seg5AccY107 rho = rho 4053 := by
      unfold seg5AccY107
      linear_combination r4358
    have ha3 : 3021 * rho 4052 * rho 4053 = rho 4054 := by
      linear_combination r4359
    have ha4 : rho 4055 * (1 + rho 4054) = rho 4052 + rho 4053 := by
      linear_combination r4360
    have ha5 : rho 4056 * (1 - rho 4054) = rho 4051 - rho 4052 - rho 4053 := by
      linear_combination r4361
    have haddx :
        rho 4055 * (1 + 3021 * (rho 4050 * seg5AccX107 rho) * (rho 4049 * seg5AccY107 rho)) =
          rho 4050 * seg5AccX107 rho + rho 4049 * seg5AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4056 * (1 - 3021 * (rho 4050 * seg5AccX107 rho) * (rho 4049 * seg5AccY107 rho)) =
          (-1) * (rho 4050 * seg5AccX107 rho) - rho 4049 * seg5AccY107 rho +
            (seg5AccY107 rho - seg5AccX107 rho * (-1)) * (rho 4049 + rho 4050) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4056 * (1 - rho 4054) = rho 4051 - rho 4052 - rho 4053 := ha5
        _ = (-1) * rho 4052 - rho 4053 + (seg5AccY107 rho - seg5AccX107 rho * (-1)) * (rho 4049 + rho 4050) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX108 rho = seg5AccX107 rho - Bool.toZMod bit * (seg5AccX107 rho - rho 4055) := by
      have hd : rho 4057 = Bool.toZMod bit * (rho 4055 - seg5AccX107 rho) := by
        rw [← hbit]
        unfold seg5AccX107
        linear_combination -r4362
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY108 rho = seg5AccY107 rho - Bool.toZMod bit * (seg5AccY107 rho - rho 4056) := by
      have hd : rho 4058 = Bool.toZMod bit * (rho 4056 - seg5AccY107 rho) := by
        rw [← hbit]
        unfold seg5AccY107
        linear_combination -r4363
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4049 * rho 4050 = rho 4059 := by linear_combination r4364
    have hd1 : rho 4049 * rho 4049 = rho 4060 := by linear_combination r4365
    have hd2 : rho 4050 * rho 4050 = rho 4061 := by linear_combination r4366
    have hd3 : rho 4062 * (rho 4050 * rho 4050 + rho 4049 * rho 4049 * (-1)) = 2 * (rho 4049 * rho 4050) := by
      rw [hd0, hd1, hd2]
      linear_combination r4367
    have hd4 : rho 4063 * (2 - (rho 4050 * rho 4050 + rho 4049 * rho 4049 * (-1))) = rho 4050 * rho 4050 - rho 4049 * rho 4049 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4368
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX107 rho : Seg5.F), (seg5AccY107 rho : Seg5.F)⟩
      ⟨(rho 4049 : Seg5.F), (rho 4050 : Seg5.F)⟩
      ⟨(rho 4055 : Seg5.F), (rho 4056 : Seg5.F)⟩
      ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩
      ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg5_rows108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4369 rho ∧ Seg5.relationRow4370 rho ∧ Seg5.relationRow4371 rho ∧ Seg5.relationRow4372 rho ∧ Seg5.relationRow4373 rho ∧ Seg5.relationRow4374 rho ∧ Seg5.relationRow4375 rho ∧ Seg5.relationRow4376 rho ∧ Seg5.relationRow4377 rho ∧ Seg5.relationRow4378 rho ∧ Seg5.relationRow4379 rho ∧ Seg5.relationRow4380 rho ∧ Seg5.relationRow4381 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩

theorem seg5_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2523 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩
        ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩
        ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩
        ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩ := by
  obtain ⟨r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381⟩ := seg5_rows108 rho h
  unfold Seg5.relationRow4369 at r4369
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4369
  unfold Seg5.relationRow4370 at r4370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4370
  unfold Seg5.relationRow4371 at r4371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4371
  unfold Seg5.relationRow4372 at r4372
  unfold Seg5.relationRow4373 at r4373
  unfold Seg5.relationRow4374 at r4374
  unfold Seg5.relationRow4375 at r4375
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4375
  unfold Seg5.relationRow4376 at r4376
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4376
  unfold Seg5.relationRow4377 at r4377
  unfold Seg5.relationRow4378 at r4378
  unfold Seg5.relationRow4379 at r4379
  unfold Seg5.relationRow4380 at r4380
  unfold Seg5.relationRow4381 at r4381
  have hrung108 (bit : Bool) (hbit : rho 2523 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩
        ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩
        ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩
        ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩ := by
    have hnextx : seg5AccX109 rho = seg5AccX108 rho + rho 4070 := by
      unfold seg5AccX109 seg5AccX108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 108]
      ring
    have hnexty : seg5AccY109 rho = seg5AccY108 rho + rho 4071 := by
      unfold seg5AccY109 seg5AccY108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 108]
      ring
    have ha0 : (rho 4062 + rho 4063) * (seg5AccX108 rho + seg5AccY108 rho) = rho 4064 := by
      unfold seg5AccX108 seg5AccY108
      linear_combination r4369
    have ha1 : rho 4063 * seg5AccX108 rho = rho 4065 := by
      unfold seg5AccX108
      linear_combination r4370
    have ha2 : rho 4062 * seg5AccY108 rho = rho 4066 := by
      unfold seg5AccY108
      linear_combination r4371
    have ha3 : 3021 * rho 4065 * rho 4066 = rho 4067 := by
      linear_combination r4372
    have ha4 : rho 4068 * (1 + rho 4067) = rho 4065 + rho 4066 := by
      linear_combination r4373
    have ha5 : rho 4069 * (1 - rho 4067) = rho 4064 - rho 4065 - rho 4066 := by
      linear_combination r4374
    have haddx :
        rho 4068 * (1 + 3021 * (rho 4063 * seg5AccX108 rho) * (rho 4062 * seg5AccY108 rho)) =
          rho 4063 * seg5AccX108 rho + rho 4062 * seg5AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4069 * (1 - 3021 * (rho 4063 * seg5AccX108 rho) * (rho 4062 * seg5AccY108 rho)) =
          (-1) * (rho 4063 * seg5AccX108 rho) - rho 4062 * seg5AccY108 rho +
            (seg5AccY108 rho - seg5AccX108 rho * (-1)) * (rho 4062 + rho 4063) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4069 * (1 - rho 4067) = rho 4064 - rho 4065 - rho 4066 := ha5
        _ = (-1) * rho 4065 - rho 4066 + (seg5AccY108 rho - seg5AccX108 rho * (-1)) * (rho 4062 + rho 4063) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX109 rho = seg5AccX108 rho - Bool.toZMod bit * (seg5AccX108 rho - rho 4068) := by
      have hd : rho 4070 = Bool.toZMod bit * (rho 4068 - seg5AccX108 rho) := by
        rw [← hbit]
        unfold seg5AccX108
        linear_combination -r4375
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY109 rho = seg5AccY108 rho - Bool.toZMod bit * (seg5AccY108 rho - rho 4069) := by
      have hd : rho 4071 = Bool.toZMod bit * (rho 4069 - seg5AccY108 rho) := by
        rw [← hbit]
        unfold seg5AccY108
        linear_combination -r4376
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4062 * rho 4063 = rho 4072 := by linear_combination r4377
    have hd1 : rho 4062 * rho 4062 = rho 4073 := by linear_combination r4378
    have hd2 : rho 4063 * rho 4063 = rho 4074 := by linear_combination r4379
    have hd3 : rho 4075 * (rho 4063 * rho 4063 + rho 4062 * rho 4062 * (-1)) = 2 * (rho 4062 * rho 4063) := by
      rw [hd0, hd1, hd2]
      linear_combination r4380
    have hd4 : rho 4076 * (2 - (rho 4063 * rho 4063 + rho 4062 * rho 4062 * (-1))) = rho 4063 * rho 4063 - rho 4062 * rho 4062 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4381
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX108 rho : Seg5.F), (seg5AccY108 rho : Seg5.F)⟩
      ⟨(rho 4062 : Seg5.F), (rho 4063 : Seg5.F)⟩
      ⟨(rho 4068 : Seg5.F), (rho 4069 : Seg5.F)⟩
      ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩
      ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg5_rows109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4382 rho ∧ Seg5.relationRow4383 rho ∧ Seg5.relationRow4384 rho ∧ Seg5.relationRow4385 rho ∧ Seg5.relationRow4386 rho ∧ Seg5.relationRow4387 rho ∧ Seg5.relationRow4388 rho ∧ Seg5.relationRow4389 rho ∧ Seg5.relationRow4390 rho ∧ Seg5.relationRow4391 rho ∧ Seg5.relationRow4392 rho ∧ Seg5.relationRow4393 rho ∧ Seg5.relationRow4394 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, _, _, _, _, _⟩
  exact ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩

theorem seg5_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2524 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩
        ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩
        ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩
        ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩ := by
  obtain ⟨r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394⟩ := seg5_rows109 rho h
  unfold Seg5.relationRow4382 at r4382
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4382
  unfold Seg5.relationRow4383 at r4383
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4383
  unfold Seg5.relationRow4384 at r4384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4384
  unfold Seg5.relationRow4385 at r4385
  unfold Seg5.relationRow4386 at r4386
  unfold Seg5.relationRow4387 at r4387
  unfold Seg5.relationRow4388 at r4388
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4388
  unfold Seg5.relationRow4389 at r4389
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4389
  unfold Seg5.relationRow4390 at r4390
  unfold Seg5.relationRow4391 at r4391
  unfold Seg5.relationRow4392 at r4392
  unfold Seg5.relationRow4393 at r4393
  unfold Seg5.relationRow4394 at r4394
  have hrung109 (bit : Bool) (hbit : rho 2524 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩
        ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩
        ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩
        ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩ := by
    have hnextx : seg5AccX110 rho = seg5AccX109 rho + rho 4083 := by
      unfold seg5AccX110 seg5AccX109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 109]
      ring
    have hnexty : seg5AccY110 rho = seg5AccY109 rho + rho 4084 := by
      unfold seg5AccY110 seg5AccY109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 109]
      ring
    have ha0 : (rho 4075 + rho 4076) * (seg5AccX109 rho + seg5AccY109 rho) = rho 4077 := by
      unfold seg5AccX109 seg5AccY109
      linear_combination r4382
    have ha1 : rho 4076 * seg5AccX109 rho = rho 4078 := by
      unfold seg5AccX109
      linear_combination r4383
    have ha2 : rho 4075 * seg5AccY109 rho = rho 4079 := by
      unfold seg5AccY109
      linear_combination r4384
    have ha3 : 3021 * rho 4078 * rho 4079 = rho 4080 := by
      linear_combination r4385
    have ha4 : rho 4081 * (1 + rho 4080) = rho 4078 + rho 4079 := by
      linear_combination r4386
    have ha5 : rho 4082 * (1 - rho 4080) = rho 4077 - rho 4078 - rho 4079 := by
      linear_combination r4387
    have haddx :
        rho 4081 * (1 + 3021 * (rho 4076 * seg5AccX109 rho) * (rho 4075 * seg5AccY109 rho)) =
          rho 4076 * seg5AccX109 rho + rho 4075 * seg5AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4082 * (1 - 3021 * (rho 4076 * seg5AccX109 rho) * (rho 4075 * seg5AccY109 rho)) =
          (-1) * (rho 4076 * seg5AccX109 rho) - rho 4075 * seg5AccY109 rho +
            (seg5AccY109 rho - seg5AccX109 rho * (-1)) * (rho 4075 + rho 4076) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4082 * (1 - rho 4080) = rho 4077 - rho 4078 - rho 4079 := ha5
        _ = (-1) * rho 4078 - rho 4079 + (seg5AccY109 rho - seg5AccX109 rho * (-1)) * (rho 4075 + rho 4076) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX110 rho = seg5AccX109 rho - Bool.toZMod bit * (seg5AccX109 rho - rho 4081) := by
      have hd : rho 4083 = Bool.toZMod bit * (rho 4081 - seg5AccX109 rho) := by
        rw [← hbit]
        unfold seg5AccX109
        linear_combination -r4388
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY110 rho = seg5AccY109 rho - Bool.toZMod bit * (seg5AccY109 rho - rho 4082) := by
      have hd : rho 4084 = Bool.toZMod bit * (rho 4082 - seg5AccY109 rho) := by
        rw [← hbit]
        unfold seg5AccY109
        linear_combination -r4389
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4075 * rho 4076 = rho 4085 := by linear_combination r4390
    have hd1 : rho 4075 * rho 4075 = rho 4086 := by linear_combination r4391
    have hd2 : rho 4076 * rho 4076 = rho 4087 := by linear_combination r4392
    have hd3 : rho 4088 * (rho 4076 * rho 4076 + rho 4075 * rho 4075 * (-1)) = 2 * (rho 4075 * rho 4076) := by
      rw [hd0, hd1, hd2]
      linear_combination r4393
    have hd4 : rho 4089 * (2 - (rho 4076 * rho 4076 + rho 4075 * rho 4075 * (-1))) = rho 4076 * rho 4076 - rho 4075 * rho 4075 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4394
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX109 rho : Seg5.F), (seg5AccY109 rho : Seg5.F)⟩
      ⟨(rho 4075 : Seg5.F), (rho 4076 : Seg5.F)⟩
      ⟨(rho 4081 : Seg5.F), (rho 4082 : Seg5.F)⟩
      ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩
      ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg5_hstep_c9 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg5_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg5_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg5_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg5_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg5_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg5_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg5_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg5_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg5_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg5_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
