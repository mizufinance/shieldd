import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4395 rho ∧ Seg5.relationRow4396 rho ∧ Seg5.relationRow4397 rho ∧ Seg5.relationRow4398 rho ∧ Seg5.relationRow4399 rho ∧ Seg5.relationRow4400 rho ∧ Seg5.relationRow4401 rho ∧ Seg5.relationRow4402 rho ∧ Seg5.relationRow4403 rho ∧ Seg5.relationRow4404 rho ∧ Seg5.relationRow4405 rho ∧ Seg5.relationRow4406 rho ∧ Seg5.relationRow4407 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩

theorem seg5_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2525 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩
        ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩
        ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩
        ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩ := by
  obtain ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩ := seg5_rows110 rho h
  unfold Seg5.relationRow4395 at r4395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4395
  unfold Seg5.relationRow4396 at r4396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4396
  unfold Seg5.relationRow4397 at r4397
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4397
  unfold Seg5.relationRow4398 at r4398
  unfold Seg5.relationRow4399 at r4399
  unfold Seg5.relationRow4400 at r4400
  unfold Seg5.relationRow4401 at r4401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4401
  unfold Seg5.relationRow4402 at r4402
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4402
  unfold Seg5.relationRow4403 at r4403
  unfold Seg5.relationRow4404 at r4404
  unfold Seg5.relationRow4405 at r4405
  unfold Seg5.relationRow4406 at r4406
  unfold Seg5.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 2525 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩
        ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩
        ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩
        ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩ := by
    have hnextx : seg5AccX111 rho = seg5AccX110 rho + rho 4096 := by
      unfold seg5AccX111 seg5AccX110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 110]
      ring
    have hnexty : seg5AccY111 rho = seg5AccY110 rho + rho 4097 := by
      unfold seg5AccY111 seg5AccY110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 110]
      ring
    have ha0 : (rho 4088 + rho 4089) * (seg5AccX110 rho + seg5AccY110 rho) = rho 4090 := by
      unfold seg5AccX110 seg5AccY110
      linear_combination r4395
    have ha1 : rho 4089 * seg5AccX110 rho = rho 4091 := by
      unfold seg5AccX110
      linear_combination r4396
    have ha2 : rho 4088 * seg5AccY110 rho = rho 4092 := by
      unfold seg5AccY110
      linear_combination r4397
    have ha3 : 3021 * rho 4091 * rho 4092 = rho 4093 := by
      linear_combination r4398
    have ha4 : rho 4094 * (1 + rho 4093) = rho 4091 + rho 4092 := by
      linear_combination r4399
    have ha5 : rho 4095 * (1 - rho 4093) = rho 4090 - rho 4091 - rho 4092 := by
      linear_combination r4400
    have haddx :
        rho 4094 * (1 + 3021 * (rho 4089 * seg5AccX110 rho) * (rho 4088 * seg5AccY110 rho)) =
          rho 4089 * seg5AccX110 rho + rho 4088 * seg5AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4095 * (1 - 3021 * (rho 4089 * seg5AccX110 rho) * (rho 4088 * seg5AccY110 rho)) =
          (-1) * (rho 4089 * seg5AccX110 rho) - rho 4088 * seg5AccY110 rho +
            (seg5AccY110 rho - seg5AccX110 rho * (-1)) * (rho 4088 + rho 4089) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4095 * (1 - rho 4093) = rho 4090 - rho 4091 - rho 4092 := ha5
        _ = (-1) * rho 4091 - rho 4092 + (seg5AccY110 rho - seg5AccX110 rho * (-1)) * (rho 4088 + rho 4089) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX111 rho = seg5AccX110 rho - Bool.toZMod bit * (seg5AccX110 rho - rho 4094) := by
      have hd : rho 4096 = Bool.toZMod bit * (rho 4094 - seg5AccX110 rho) := by
        rw [← hbit]
        unfold seg5AccX110
        linear_combination -r4401
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY111 rho = seg5AccY110 rho - Bool.toZMod bit * (seg5AccY110 rho - rho 4095) := by
      have hd : rho 4097 = Bool.toZMod bit * (rho 4095 - seg5AccY110 rho) := by
        rw [← hbit]
        unfold seg5AccY110
        linear_combination -r4402
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4088 * rho 4089 = rho 4098 := by linear_combination r4403
    have hd1 : rho 4088 * rho 4088 = rho 4099 := by linear_combination r4404
    have hd2 : rho 4089 * rho 4089 = rho 4100 := by linear_combination r4405
    have hd3 : rho 4101 * (rho 4089 * rho 4089 + rho 4088 * rho 4088 * (-1)) = 2 * (rho 4088 * rho 4089) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 4102 * (2 - (rho 4089 * rho 4089 + rho 4088 * rho 4088 * (-1))) = rho 4089 * rho 4089 - rho 4088 * rho 4088 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX110 rho : Seg5.F), (seg5AccY110 rho : Seg5.F)⟩
      ⟨(rho 4088 : Seg5.F), (rho 4089 : Seg5.F)⟩
      ⟨(rho 4094 : Seg5.F), (rho 4095 : Seg5.F)⟩
      ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩
      ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg5_rows111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4408 rho ∧ Seg5.relationRow4409 rho ∧ Seg5.relationRow4410 rho ∧ Seg5.relationRow4411 rho ∧ Seg5.relationRow4412 rho ∧ Seg5.relationRow4413 rho ∧ Seg5.relationRow4414 rho ∧ Seg5.relationRow4415 rho ∧ Seg5.relationRow4416 rho ∧ Seg5.relationRow4417 rho ∧ Seg5.relationRow4418 rho ∧ Seg5.relationRow4419 rho ∧ Seg5.relationRow4420 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩

theorem seg5_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2526 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩
        ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩
        ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩
        ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩ := by
  obtain ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩ := seg5_rows111 rho h
  unfold Seg5.relationRow4408 at r4408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4408
  unfold Seg5.relationRow4409 at r4409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4409
  unfold Seg5.relationRow4410 at r4410
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4410
  unfold Seg5.relationRow4411 at r4411
  unfold Seg5.relationRow4412 at r4412
  unfold Seg5.relationRow4413 at r4413
  unfold Seg5.relationRow4414 at r4414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4414
  unfold Seg5.relationRow4415 at r4415
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4415
  unfold Seg5.relationRow4416 at r4416
  unfold Seg5.relationRow4417 at r4417
  unfold Seg5.relationRow4418 at r4418
  unfold Seg5.relationRow4419 at r4419
  unfold Seg5.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 2526 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩
        ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩
        ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩
        ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩ := by
    have hnextx : seg5AccX112 rho = seg5AccX111 rho + rho 4109 := by
      unfold seg5AccX112 seg5AccX111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 111]
      ring
    have hnexty : seg5AccY112 rho = seg5AccY111 rho + rho 4110 := by
      unfold seg5AccY112 seg5AccY111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 111]
      ring
    have ha0 : (rho 4101 + rho 4102) * (seg5AccX111 rho + seg5AccY111 rho) = rho 4103 := by
      unfold seg5AccX111 seg5AccY111
      linear_combination r4408
    have ha1 : rho 4102 * seg5AccX111 rho = rho 4104 := by
      unfold seg5AccX111
      linear_combination r4409
    have ha2 : rho 4101 * seg5AccY111 rho = rho 4105 := by
      unfold seg5AccY111
      linear_combination r4410
    have ha3 : 3021 * rho 4104 * rho 4105 = rho 4106 := by
      linear_combination r4411
    have ha4 : rho 4107 * (1 + rho 4106) = rho 4104 + rho 4105 := by
      linear_combination r4412
    have ha5 : rho 4108 * (1 - rho 4106) = rho 4103 - rho 4104 - rho 4105 := by
      linear_combination r4413
    have haddx :
        rho 4107 * (1 + 3021 * (rho 4102 * seg5AccX111 rho) * (rho 4101 * seg5AccY111 rho)) =
          rho 4102 * seg5AccX111 rho + rho 4101 * seg5AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4108 * (1 - 3021 * (rho 4102 * seg5AccX111 rho) * (rho 4101 * seg5AccY111 rho)) =
          (-1) * (rho 4102 * seg5AccX111 rho) - rho 4101 * seg5AccY111 rho +
            (seg5AccY111 rho - seg5AccX111 rho * (-1)) * (rho 4101 + rho 4102) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4108 * (1 - rho 4106) = rho 4103 - rho 4104 - rho 4105 := ha5
        _ = (-1) * rho 4104 - rho 4105 + (seg5AccY111 rho - seg5AccX111 rho * (-1)) * (rho 4101 + rho 4102) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX112 rho = seg5AccX111 rho - Bool.toZMod bit * (seg5AccX111 rho - rho 4107) := by
      have hd : rho 4109 = Bool.toZMod bit * (rho 4107 - seg5AccX111 rho) := by
        rw [← hbit]
        unfold seg5AccX111
        linear_combination -r4414
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY112 rho = seg5AccY111 rho - Bool.toZMod bit * (seg5AccY111 rho - rho 4108) := by
      have hd : rho 4110 = Bool.toZMod bit * (rho 4108 - seg5AccY111 rho) := by
        rw [← hbit]
        unfold seg5AccY111
        linear_combination -r4415
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4101 * rho 4102 = rho 4111 := by linear_combination r4416
    have hd1 : rho 4101 * rho 4101 = rho 4112 := by linear_combination r4417
    have hd2 : rho 4102 * rho 4102 = rho 4113 := by linear_combination r4418
    have hd3 : rho 4114 * (rho 4102 * rho 4102 + rho 4101 * rho 4101 * (-1)) = 2 * (rho 4101 * rho 4102) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 4115 * (2 - (rho 4102 * rho 4102 + rho 4101 * rho 4101 * (-1))) = rho 4102 * rho 4102 - rho 4101 * rho 4101 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX111 rho : Seg5.F), (seg5AccY111 rho : Seg5.F)⟩
      ⟨(rho 4101 : Seg5.F), (rho 4102 : Seg5.F)⟩
      ⟨(rho 4107 : Seg5.F), (rho 4108 : Seg5.F)⟩
      ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩
      ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg5_rows112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4421 rho ∧ Seg5.relationRow4422 rho ∧ Seg5.relationRow4423 rho ∧ Seg5.relationRow4424 rho ∧ Seg5.relationRow4425 rho ∧ Seg5.relationRow4426 rho ∧ Seg5.relationRow4427 rho ∧ Seg5.relationRow4428 rho ∧ Seg5.relationRow4429 rho ∧ Seg5.relationRow4430 rho ∧ Seg5.relationRow4431 rho ∧ Seg5.relationRow4432 rho ∧ Seg5.relationRow4433 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩

theorem seg5_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2527 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩
        ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩
        ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩
        ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩ := by
  obtain ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩ := seg5_rows112 rho h
  unfold Seg5.relationRow4421 at r4421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4421
  unfold Seg5.relationRow4422 at r4422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4422
  unfold Seg5.relationRow4423 at r4423
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4423
  unfold Seg5.relationRow4424 at r4424
  unfold Seg5.relationRow4425 at r4425
  unfold Seg5.relationRow4426 at r4426
  unfold Seg5.relationRow4427 at r4427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4427
  unfold Seg5.relationRow4428 at r4428
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4428
  unfold Seg5.relationRow4429 at r4429
  unfold Seg5.relationRow4430 at r4430
  unfold Seg5.relationRow4431 at r4431
  unfold Seg5.relationRow4432 at r4432
  unfold Seg5.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 2527 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩
        ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩
        ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩
        ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩ := by
    have hnextx : seg5AccX113 rho = seg5AccX112 rho + rho 4122 := by
      unfold seg5AccX113 seg5AccX112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 112]
      ring
    have hnexty : seg5AccY113 rho = seg5AccY112 rho + rho 4123 := by
      unfold seg5AccY113 seg5AccY112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 112]
      ring
    have ha0 : (rho 4114 + rho 4115) * (seg5AccX112 rho + seg5AccY112 rho) = rho 4116 := by
      unfold seg5AccX112 seg5AccY112
      linear_combination r4421
    have ha1 : rho 4115 * seg5AccX112 rho = rho 4117 := by
      unfold seg5AccX112
      linear_combination r4422
    have ha2 : rho 4114 * seg5AccY112 rho = rho 4118 := by
      unfold seg5AccY112
      linear_combination r4423
    have ha3 : 3021 * rho 4117 * rho 4118 = rho 4119 := by
      linear_combination r4424
    have ha4 : rho 4120 * (1 + rho 4119) = rho 4117 + rho 4118 := by
      linear_combination r4425
    have ha5 : rho 4121 * (1 - rho 4119) = rho 4116 - rho 4117 - rho 4118 := by
      linear_combination r4426
    have haddx :
        rho 4120 * (1 + 3021 * (rho 4115 * seg5AccX112 rho) * (rho 4114 * seg5AccY112 rho)) =
          rho 4115 * seg5AccX112 rho + rho 4114 * seg5AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4121 * (1 - 3021 * (rho 4115 * seg5AccX112 rho) * (rho 4114 * seg5AccY112 rho)) =
          (-1) * (rho 4115 * seg5AccX112 rho) - rho 4114 * seg5AccY112 rho +
            (seg5AccY112 rho - seg5AccX112 rho * (-1)) * (rho 4114 + rho 4115) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4121 * (1 - rho 4119) = rho 4116 - rho 4117 - rho 4118 := ha5
        _ = (-1) * rho 4117 - rho 4118 + (seg5AccY112 rho - seg5AccX112 rho * (-1)) * (rho 4114 + rho 4115) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX113 rho = seg5AccX112 rho - Bool.toZMod bit * (seg5AccX112 rho - rho 4120) := by
      have hd : rho 4122 = Bool.toZMod bit * (rho 4120 - seg5AccX112 rho) := by
        rw [← hbit]
        unfold seg5AccX112
        linear_combination -r4427
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY113 rho = seg5AccY112 rho - Bool.toZMod bit * (seg5AccY112 rho - rho 4121) := by
      have hd : rho 4123 = Bool.toZMod bit * (rho 4121 - seg5AccY112 rho) := by
        rw [← hbit]
        unfold seg5AccY112
        linear_combination -r4428
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4114 * rho 4115 = rho 4124 := by linear_combination r4429
    have hd1 : rho 4114 * rho 4114 = rho 4125 := by linear_combination r4430
    have hd2 : rho 4115 * rho 4115 = rho 4126 := by linear_combination r4431
    have hd3 : rho 4127 * (rho 4115 * rho 4115 + rho 4114 * rho 4114 * (-1)) = 2 * (rho 4114 * rho 4115) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 4128 * (2 - (rho 4115 * rho 4115 + rho 4114 * rho 4114 * (-1))) = rho 4115 * rho 4115 - rho 4114 * rho 4114 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX112 rho : Seg5.F), (seg5AccY112 rho : Seg5.F)⟩
      ⟨(rho 4114 : Seg5.F), (rho 4115 : Seg5.F)⟩
      ⟨(rho 4120 : Seg5.F), (rho 4121 : Seg5.F)⟩
      ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩
      ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg5_rows113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4434 rho ∧ Seg5.relationRow4435 rho ∧ Seg5.relationRow4436 rho ∧ Seg5.relationRow4437 rho ∧ Seg5.relationRow4438 rho ∧ Seg5.relationRow4439 rho ∧ Seg5.relationRow4440 rho ∧ Seg5.relationRow4441 rho ∧ Seg5.relationRow4442 rho ∧ Seg5.relationRow4443 rho ∧ Seg5.relationRow4444 rho ∧ Seg5.relationRow4445 rho ∧ Seg5.relationRow4446 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩

theorem seg5_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2528 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩
        ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩
        ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩
        ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩ := by
  obtain ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩ := seg5_rows113 rho h
  unfold Seg5.relationRow4434 at r4434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4434
  unfold Seg5.relationRow4435 at r4435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4435
  unfold Seg5.relationRow4436 at r4436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4436
  unfold Seg5.relationRow4437 at r4437
  unfold Seg5.relationRow4438 at r4438
  unfold Seg5.relationRow4439 at r4439
  unfold Seg5.relationRow4440 at r4440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4440
  unfold Seg5.relationRow4441 at r4441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4441
  unfold Seg5.relationRow4442 at r4442
  unfold Seg5.relationRow4443 at r4443
  unfold Seg5.relationRow4444 at r4444
  unfold Seg5.relationRow4445 at r4445
  unfold Seg5.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 2528 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩
        ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩
        ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩
        ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩ := by
    have hnextx : seg5AccX114 rho = seg5AccX113 rho + rho 4135 := by
      unfold seg5AccX114 seg5AccX113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 113]
      ring
    have hnexty : seg5AccY114 rho = seg5AccY113 rho + rho 4136 := by
      unfold seg5AccY114 seg5AccY113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 113]
      ring
    have ha0 : (rho 4127 + rho 4128) * (seg5AccX113 rho + seg5AccY113 rho) = rho 4129 := by
      unfold seg5AccX113 seg5AccY113
      linear_combination r4434
    have ha1 : rho 4128 * seg5AccX113 rho = rho 4130 := by
      unfold seg5AccX113
      linear_combination r4435
    have ha2 : rho 4127 * seg5AccY113 rho = rho 4131 := by
      unfold seg5AccY113
      linear_combination r4436
    have ha3 : 3021 * rho 4130 * rho 4131 = rho 4132 := by
      linear_combination r4437
    have ha4 : rho 4133 * (1 + rho 4132) = rho 4130 + rho 4131 := by
      linear_combination r4438
    have ha5 : rho 4134 * (1 - rho 4132) = rho 4129 - rho 4130 - rho 4131 := by
      linear_combination r4439
    have haddx :
        rho 4133 * (1 + 3021 * (rho 4128 * seg5AccX113 rho) * (rho 4127 * seg5AccY113 rho)) =
          rho 4128 * seg5AccX113 rho + rho 4127 * seg5AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4134 * (1 - 3021 * (rho 4128 * seg5AccX113 rho) * (rho 4127 * seg5AccY113 rho)) =
          (-1) * (rho 4128 * seg5AccX113 rho) - rho 4127 * seg5AccY113 rho +
            (seg5AccY113 rho - seg5AccX113 rho * (-1)) * (rho 4127 + rho 4128) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4134 * (1 - rho 4132) = rho 4129 - rho 4130 - rho 4131 := ha5
        _ = (-1) * rho 4130 - rho 4131 + (seg5AccY113 rho - seg5AccX113 rho * (-1)) * (rho 4127 + rho 4128) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX114 rho = seg5AccX113 rho - Bool.toZMod bit * (seg5AccX113 rho - rho 4133) := by
      have hd : rho 4135 = Bool.toZMod bit * (rho 4133 - seg5AccX113 rho) := by
        rw [← hbit]
        unfold seg5AccX113
        linear_combination -r4440
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY114 rho = seg5AccY113 rho - Bool.toZMod bit * (seg5AccY113 rho - rho 4134) := by
      have hd : rho 4136 = Bool.toZMod bit * (rho 4134 - seg5AccY113 rho) := by
        rw [← hbit]
        unfold seg5AccY113
        linear_combination -r4441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4127 * rho 4128 = rho 4137 := by linear_combination r4442
    have hd1 : rho 4127 * rho 4127 = rho 4138 := by linear_combination r4443
    have hd2 : rho 4128 * rho 4128 = rho 4139 := by linear_combination r4444
    have hd3 : rho 4140 * (rho 4128 * rho 4128 + rho 4127 * rho 4127 * (-1)) = 2 * (rho 4127 * rho 4128) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 4141 * (2 - (rho 4128 * rho 4128 + rho 4127 * rho 4127 * (-1))) = rho 4128 * rho 4128 - rho 4127 * rho 4127 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX113 rho : Seg5.F), (seg5AccY113 rho : Seg5.F)⟩
      ⟨(rho 4127 : Seg5.F), (rho 4128 : Seg5.F)⟩
      ⟨(rho 4133 : Seg5.F), (rho 4134 : Seg5.F)⟩
      ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩
      ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg5_rows114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4447 rho ∧ Seg5.relationRow4448 rho ∧ Seg5.relationRow4449 rho ∧ Seg5.relationRow4450 rho ∧ Seg5.relationRow4451 rho ∧ Seg5.relationRow4452 rho ∧ Seg5.relationRow4453 rho ∧ Seg5.relationRow4454 rho ∧ Seg5.relationRow4455 rho ∧ Seg5.relationRow4456 rho ∧ Seg5.relationRow4457 rho ∧ Seg5.relationRow4458 rho ∧ Seg5.relationRow4459 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩

theorem seg5_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2529 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩
        ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩
        ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩
        ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩ := by
  obtain ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩ := seg5_rows114 rho h
  unfold Seg5.relationRow4447 at r4447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4447
  unfold Seg5.relationRow4448 at r4448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4448
  unfold Seg5.relationRow4449 at r4449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4449
  unfold Seg5.relationRow4450 at r4450
  unfold Seg5.relationRow4451 at r4451
  unfold Seg5.relationRow4452 at r4452
  unfold Seg5.relationRow4453 at r4453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4453
  unfold Seg5.relationRow4454 at r4454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4454
  unfold Seg5.relationRow4455 at r4455
  unfold Seg5.relationRow4456 at r4456
  unfold Seg5.relationRow4457 at r4457
  unfold Seg5.relationRow4458 at r4458
  unfold Seg5.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 2529 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩
        ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩
        ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩
        ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩ := by
    have hnextx : seg5AccX115 rho = seg5AccX114 rho + rho 4148 := by
      unfold seg5AccX115 seg5AccX114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 114]
      ring
    have hnexty : seg5AccY115 rho = seg5AccY114 rho + rho 4149 := by
      unfold seg5AccY115 seg5AccY114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 114]
      ring
    have ha0 : (rho 4140 + rho 4141) * (seg5AccX114 rho + seg5AccY114 rho) = rho 4142 := by
      unfold seg5AccX114 seg5AccY114
      linear_combination r4447
    have ha1 : rho 4141 * seg5AccX114 rho = rho 4143 := by
      unfold seg5AccX114
      linear_combination r4448
    have ha2 : rho 4140 * seg5AccY114 rho = rho 4144 := by
      unfold seg5AccY114
      linear_combination r4449
    have ha3 : 3021 * rho 4143 * rho 4144 = rho 4145 := by
      linear_combination r4450
    have ha4 : rho 4146 * (1 + rho 4145) = rho 4143 + rho 4144 := by
      linear_combination r4451
    have ha5 : rho 4147 * (1 - rho 4145) = rho 4142 - rho 4143 - rho 4144 := by
      linear_combination r4452
    have haddx :
        rho 4146 * (1 + 3021 * (rho 4141 * seg5AccX114 rho) * (rho 4140 * seg5AccY114 rho)) =
          rho 4141 * seg5AccX114 rho + rho 4140 * seg5AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4147 * (1 - 3021 * (rho 4141 * seg5AccX114 rho) * (rho 4140 * seg5AccY114 rho)) =
          (-1) * (rho 4141 * seg5AccX114 rho) - rho 4140 * seg5AccY114 rho +
            (seg5AccY114 rho - seg5AccX114 rho * (-1)) * (rho 4140 + rho 4141) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4147 * (1 - rho 4145) = rho 4142 - rho 4143 - rho 4144 := ha5
        _ = (-1) * rho 4143 - rho 4144 + (seg5AccY114 rho - seg5AccX114 rho * (-1)) * (rho 4140 + rho 4141) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX115 rho = seg5AccX114 rho - Bool.toZMod bit * (seg5AccX114 rho - rho 4146) := by
      have hd : rho 4148 = Bool.toZMod bit * (rho 4146 - seg5AccX114 rho) := by
        rw [← hbit]
        unfold seg5AccX114
        linear_combination -r4453
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY115 rho = seg5AccY114 rho - Bool.toZMod bit * (seg5AccY114 rho - rho 4147) := by
      have hd : rho 4149 = Bool.toZMod bit * (rho 4147 - seg5AccY114 rho) := by
        rw [← hbit]
        unfold seg5AccY114
        linear_combination -r4454
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4140 * rho 4141 = rho 4150 := by linear_combination r4455
    have hd1 : rho 4140 * rho 4140 = rho 4151 := by linear_combination r4456
    have hd2 : rho 4141 * rho 4141 = rho 4152 := by linear_combination r4457
    have hd3 : rho 4153 * (rho 4141 * rho 4141 + rho 4140 * rho 4140 * (-1)) = 2 * (rho 4140 * rho 4141) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 4154 * (2 - (rho 4141 * rho 4141 + rho 4140 * rho 4140 * (-1))) = rho 4141 * rho 4141 - rho 4140 * rho 4140 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX114 rho : Seg5.F), (seg5AccY114 rho : Seg5.F)⟩
      ⟨(rho 4140 : Seg5.F), (rho 4141 : Seg5.F)⟩
      ⟨(rho 4146 : Seg5.F), (rho 4147 : Seg5.F)⟩
      ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩
      ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg5_rows115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4460 rho ∧ Seg5.relationRow4461 rho ∧ Seg5.relationRow4462 rho ∧ Seg5.relationRow4463 rho ∧ Seg5.relationRow4464 rho ∧ Seg5.relationRow4465 rho ∧ Seg5.relationRow4466 rho ∧ Seg5.relationRow4467 rho ∧ Seg5.relationRow4468 rho ∧ Seg5.relationRow4469 rho ∧ Seg5.relationRow4470 rho ∧ Seg5.relationRow4471 rho ∧ Seg5.relationRow4472 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  exact ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩

theorem seg5_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2530 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩
        ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩
        ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩
        ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩ := by
  obtain ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩ := seg5_rows115 rho h
  unfold Seg5.relationRow4460 at r4460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4460
  unfold Seg5.relationRow4461 at r4461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4461
  unfold Seg5.relationRow4462 at r4462
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4462
  unfold Seg5.relationRow4463 at r4463
  unfold Seg5.relationRow4464 at r4464
  unfold Seg5.relationRow4465 at r4465
  unfold Seg5.relationRow4466 at r4466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4466
  unfold Seg5.relationRow4467 at r4467
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4467
  unfold Seg5.relationRow4468 at r4468
  unfold Seg5.relationRow4469 at r4469
  unfold Seg5.relationRow4470 at r4470
  unfold Seg5.relationRow4471 at r4471
  unfold Seg5.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 2530 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩
        ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩
        ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩
        ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩ := by
    have hnextx : seg5AccX116 rho = seg5AccX115 rho + rho 4161 := by
      unfold seg5AccX116 seg5AccX115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 115]
      ring
    have hnexty : seg5AccY116 rho = seg5AccY115 rho + rho 4162 := by
      unfold seg5AccY116 seg5AccY115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 115]
      ring
    have ha0 : (rho 4153 + rho 4154) * (seg5AccX115 rho + seg5AccY115 rho) = rho 4155 := by
      unfold seg5AccX115 seg5AccY115
      linear_combination r4460
    have ha1 : rho 4154 * seg5AccX115 rho = rho 4156 := by
      unfold seg5AccX115
      linear_combination r4461
    have ha2 : rho 4153 * seg5AccY115 rho = rho 4157 := by
      unfold seg5AccY115
      linear_combination r4462
    have ha3 : 3021 * rho 4156 * rho 4157 = rho 4158 := by
      linear_combination r4463
    have ha4 : rho 4159 * (1 + rho 4158) = rho 4156 + rho 4157 := by
      linear_combination r4464
    have ha5 : rho 4160 * (1 - rho 4158) = rho 4155 - rho 4156 - rho 4157 := by
      linear_combination r4465
    have haddx :
        rho 4159 * (1 + 3021 * (rho 4154 * seg5AccX115 rho) * (rho 4153 * seg5AccY115 rho)) =
          rho 4154 * seg5AccX115 rho + rho 4153 * seg5AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4160 * (1 - 3021 * (rho 4154 * seg5AccX115 rho) * (rho 4153 * seg5AccY115 rho)) =
          (-1) * (rho 4154 * seg5AccX115 rho) - rho 4153 * seg5AccY115 rho +
            (seg5AccY115 rho - seg5AccX115 rho * (-1)) * (rho 4153 + rho 4154) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4160 * (1 - rho 4158) = rho 4155 - rho 4156 - rho 4157 := ha5
        _ = (-1) * rho 4156 - rho 4157 + (seg5AccY115 rho - seg5AccX115 rho * (-1)) * (rho 4153 + rho 4154) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX116 rho = seg5AccX115 rho - Bool.toZMod bit * (seg5AccX115 rho - rho 4159) := by
      have hd : rho 4161 = Bool.toZMod bit * (rho 4159 - seg5AccX115 rho) := by
        rw [← hbit]
        unfold seg5AccX115
        linear_combination -r4466
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY116 rho = seg5AccY115 rho - Bool.toZMod bit * (seg5AccY115 rho - rho 4160) := by
      have hd : rho 4162 = Bool.toZMod bit * (rho 4160 - seg5AccY115 rho) := by
        rw [← hbit]
        unfold seg5AccY115
        linear_combination -r4467
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4153 * rho 4154 = rho 4163 := by linear_combination r4468
    have hd1 : rho 4153 * rho 4153 = rho 4164 := by linear_combination r4469
    have hd2 : rho 4154 * rho 4154 = rho 4165 := by linear_combination r4470
    have hd3 : rho 4166 * (rho 4154 * rho 4154 + rho 4153 * rho 4153 * (-1)) = 2 * (rho 4153 * rho 4154) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 4167 * (2 - (rho 4154 * rho 4154 + rho 4153 * rho 4153 * (-1))) = rho 4154 * rho 4154 - rho 4153 * rho 4153 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX115 rho : Seg5.F), (seg5AccY115 rho : Seg5.F)⟩
      ⟨(rho 4153 : Seg5.F), (rho 4154 : Seg5.F)⟩
      ⟨(rho 4159 : Seg5.F), (rho 4160 : Seg5.F)⟩
      ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩
      ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg5_rows116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4473 rho ∧ Seg5.relationRow4474 rho ∧ Seg5.relationRow4475 rho ∧ Seg5.relationRow4476 rho ∧ Seg5.relationRow4477 rho ∧ Seg5.relationRow4478 rho ∧ Seg5.relationRow4479 rho ∧ Seg5.relationRow4480 rho ∧ Seg5.relationRow4481 rho ∧ Seg5.relationRow4482 rho ∧ Seg5.relationRow4483 rho ∧ Seg5.relationRow4484 rho ∧ Seg5.relationRow4485 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩

theorem seg5_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2531 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩
        ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩
        ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩
        ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩ := by
  obtain ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩ := seg5_rows116 rho h
  unfold Seg5.relationRow4473 at r4473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4473
  unfold Seg5.relationRow4474 at r4474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4474
  unfold Seg5.relationRow4475 at r4475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4475
  unfold Seg5.relationRow4476 at r4476
  unfold Seg5.relationRow4477 at r4477
  unfold Seg5.relationRow4478 at r4478
  unfold Seg5.relationRow4479 at r4479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4479
  unfold Seg5.relationRow4480 at r4480
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4480
  unfold Seg5.relationRow4481 at r4481
  unfold Seg5.relationRow4482 at r4482
  unfold Seg5.relationRow4483 at r4483
  unfold Seg5.relationRow4484 at r4484
  unfold Seg5.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 2531 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩
        ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩
        ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩
        ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩ := by
    have hnextx : seg5AccX117 rho = seg5AccX116 rho + rho 4174 := by
      unfold seg5AccX117 seg5AccX116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 116]
      ring
    have hnexty : seg5AccY117 rho = seg5AccY116 rho + rho 4175 := by
      unfold seg5AccY117 seg5AccY116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 116]
      ring
    have ha0 : (rho 4166 + rho 4167) * (seg5AccX116 rho + seg5AccY116 rho) = rho 4168 := by
      unfold seg5AccX116 seg5AccY116
      linear_combination r4473
    have ha1 : rho 4167 * seg5AccX116 rho = rho 4169 := by
      unfold seg5AccX116
      linear_combination r4474
    have ha2 : rho 4166 * seg5AccY116 rho = rho 4170 := by
      unfold seg5AccY116
      linear_combination r4475
    have ha3 : 3021 * rho 4169 * rho 4170 = rho 4171 := by
      linear_combination r4476
    have ha4 : rho 4172 * (1 + rho 4171) = rho 4169 + rho 4170 := by
      linear_combination r4477
    have ha5 : rho 4173 * (1 - rho 4171) = rho 4168 - rho 4169 - rho 4170 := by
      linear_combination r4478
    have haddx :
        rho 4172 * (1 + 3021 * (rho 4167 * seg5AccX116 rho) * (rho 4166 * seg5AccY116 rho)) =
          rho 4167 * seg5AccX116 rho + rho 4166 * seg5AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4173 * (1 - 3021 * (rho 4167 * seg5AccX116 rho) * (rho 4166 * seg5AccY116 rho)) =
          (-1) * (rho 4167 * seg5AccX116 rho) - rho 4166 * seg5AccY116 rho +
            (seg5AccY116 rho - seg5AccX116 rho * (-1)) * (rho 4166 + rho 4167) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4173 * (1 - rho 4171) = rho 4168 - rho 4169 - rho 4170 := ha5
        _ = (-1) * rho 4169 - rho 4170 + (seg5AccY116 rho - seg5AccX116 rho * (-1)) * (rho 4166 + rho 4167) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX117 rho = seg5AccX116 rho - Bool.toZMod bit * (seg5AccX116 rho - rho 4172) := by
      have hd : rho 4174 = Bool.toZMod bit * (rho 4172 - seg5AccX116 rho) := by
        rw [← hbit]
        unfold seg5AccX116
        linear_combination -r4479
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY117 rho = seg5AccY116 rho - Bool.toZMod bit * (seg5AccY116 rho - rho 4173) := by
      have hd : rho 4175 = Bool.toZMod bit * (rho 4173 - seg5AccY116 rho) := by
        rw [← hbit]
        unfold seg5AccY116
        linear_combination -r4480
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4166 * rho 4167 = rho 4176 := by linear_combination r4481
    have hd1 : rho 4166 * rho 4166 = rho 4177 := by linear_combination r4482
    have hd2 : rho 4167 * rho 4167 = rho 4178 := by linear_combination r4483
    have hd3 : rho 4179 * (rho 4167 * rho 4167 + rho 4166 * rho 4166 * (-1)) = 2 * (rho 4166 * rho 4167) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 4180 * (2 - (rho 4167 * rho 4167 + rho 4166 * rho 4166 * (-1))) = rho 4167 * rho 4167 - rho 4166 * rho 4166 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX116 rho : Seg5.F), (seg5AccY116 rho : Seg5.F)⟩
      ⟨(rho 4166 : Seg5.F), (rho 4167 : Seg5.F)⟩
      ⟨(rho 4172 : Seg5.F), (rho 4173 : Seg5.F)⟩
      ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩
      ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg5_rows117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4486 rho ∧ Seg5.relationRow4487 rho ∧ Seg5.relationRow4488 rho ∧ Seg5.relationRow4489 rho ∧ Seg5.relationRow4490 rho ∧ Seg5.relationRow4491 rho ∧ Seg5.relationRow4492 rho ∧ Seg5.relationRow4493 rho ∧ Seg5.relationRow4494 rho ∧ Seg5.relationRow4495 rho ∧ Seg5.relationRow4496 rho ∧ Seg5.relationRow4497 rho ∧ Seg5.relationRow4498 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩

theorem seg5_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2532 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩
        ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩
        ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩
        ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩ := by
  obtain ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩ := seg5_rows117 rho h
  unfold Seg5.relationRow4486 at r4486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4486
  unfold Seg5.relationRow4487 at r4487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4487
  unfold Seg5.relationRow4488 at r4488
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4488
  unfold Seg5.relationRow4489 at r4489
  unfold Seg5.relationRow4490 at r4490
  unfold Seg5.relationRow4491 at r4491
  unfold Seg5.relationRow4492 at r4492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4492
  unfold Seg5.relationRow4493 at r4493
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4493
  unfold Seg5.relationRow4494 at r4494
  unfold Seg5.relationRow4495 at r4495
  unfold Seg5.relationRow4496 at r4496
  unfold Seg5.relationRow4497 at r4497
  unfold Seg5.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 2532 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩
        ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩
        ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩
        ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩ := by
    have hnextx : seg5AccX118 rho = seg5AccX117 rho + rho 4187 := by
      unfold seg5AccX118 seg5AccX117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 117]
      ring
    have hnexty : seg5AccY118 rho = seg5AccY117 rho + rho 4188 := by
      unfold seg5AccY118 seg5AccY117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 117]
      ring
    have ha0 : (rho 4179 + rho 4180) * (seg5AccX117 rho + seg5AccY117 rho) = rho 4181 := by
      unfold seg5AccX117 seg5AccY117
      linear_combination r4486
    have ha1 : rho 4180 * seg5AccX117 rho = rho 4182 := by
      unfold seg5AccX117
      linear_combination r4487
    have ha2 : rho 4179 * seg5AccY117 rho = rho 4183 := by
      unfold seg5AccY117
      linear_combination r4488
    have ha3 : 3021 * rho 4182 * rho 4183 = rho 4184 := by
      linear_combination r4489
    have ha4 : rho 4185 * (1 + rho 4184) = rho 4182 + rho 4183 := by
      linear_combination r4490
    have ha5 : rho 4186 * (1 - rho 4184) = rho 4181 - rho 4182 - rho 4183 := by
      linear_combination r4491
    have haddx :
        rho 4185 * (1 + 3021 * (rho 4180 * seg5AccX117 rho) * (rho 4179 * seg5AccY117 rho)) =
          rho 4180 * seg5AccX117 rho + rho 4179 * seg5AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4186 * (1 - 3021 * (rho 4180 * seg5AccX117 rho) * (rho 4179 * seg5AccY117 rho)) =
          (-1) * (rho 4180 * seg5AccX117 rho) - rho 4179 * seg5AccY117 rho +
            (seg5AccY117 rho - seg5AccX117 rho * (-1)) * (rho 4179 + rho 4180) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4186 * (1 - rho 4184) = rho 4181 - rho 4182 - rho 4183 := ha5
        _ = (-1) * rho 4182 - rho 4183 + (seg5AccY117 rho - seg5AccX117 rho * (-1)) * (rho 4179 + rho 4180) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX118 rho = seg5AccX117 rho - Bool.toZMod bit * (seg5AccX117 rho - rho 4185) := by
      have hd : rho 4187 = Bool.toZMod bit * (rho 4185 - seg5AccX117 rho) := by
        rw [← hbit]
        unfold seg5AccX117
        linear_combination -r4492
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY118 rho = seg5AccY117 rho - Bool.toZMod bit * (seg5AccY117 rho - rho 4186) := by
      have hd : rho 4188 = Bool.toZMod bit * (rho 4186 - seg5AccY117 rho) := by
        rw [← hbit]
        unfold seg5AccY117
        linear_combination -r4493
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4179 * rho 4180 = rho 4189 := by linear_combination r4494
    have hd1 : rho 4179 * rho 4179 = rho 4190 := by linear_combination r4495
    have hd2 : rho 4180 * rho 4180 = rho 4191 := by linear_combination r4496
    have hd3 : rho 4192 * (rho 4180 * rho 4180 + rho 4179 * rho 4179 * (-1)) = 2 * (rho 4179 * rho 4180) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 4193 * (2 - (rho 4180 * rho 4180 + rho 4179 * rho 4179 * (-1))) = rho 4180 * rho 4180 - rho 4179 * rho 4179 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX117 rho : Seg5.F), (seg5AccY117 rho : Seg5.F)⟩
      ⟨(rho 4179 : Seg5.F), (rho 4180 : Seg5.F)⟩
      ⟨(rho 4185 : Seg5.F), (rho 4186 : Seg5.F)⟩
      ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩
      ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg5_rows118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4499 rho ∧ Seg5.relationRow4500 rho ∧ Seg5.relationRow4501 rho ∧ Seg5.relationRow4502 rho ∧ Seg5.relationRow4503 rho ∧ Seg5.relationRow4504 rho ∧ Seg5.relationRow4505 rho ∧ Seg5.relationRow4506 rho ∧ Seg5.relationRow4507 rho ∧ Seg5.relationRow4508 rho ∧ Seg5.relationRow4509 rho ∧ Seg5.relationRow4510 rho ∧ Seg5.relationRow4511 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩

theorem seg5_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2533 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩
        ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩
        ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩
        ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩ := by
  obtain ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩ := seg5_rows118 rho h
  unfold Seg5.relationRow4499 at r4499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4499
  unfold Seg5.relationRow4500 at r4500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4500
  unfold Seg5.relationRow4501 at r4501
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4501
  unfold Seg5.relationRow4502 at r4502
  unfold Seg5.relationRow4503 at r4503
  unfold Seg5.relationRow4504 at r4504
  unfold Seg5.relationRow4505 at r4505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4505
  unfold Seg5.relationRow4506 at r4506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4506
  unfold Seg5.relationRow4507 at r4507
  unfold Seg5.relationRow4508 at r4508
  unfold Seg5.relationRow4509 at r4509
  unfold Seg5.relationRow4510 at r4510
  unfold Seg5.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 2533 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩
        ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩
        ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩
        ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩ := by
    have hnextx : seg5AccX119 rho = seg5AccX118 rho + rho 4200 := by
      unfold seg5AccX119 seg5AccX118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 118]
      ring
    have hnexty : seg5AccY119 rho = seg5AccY118 rho + rho 4201 := by
      unfold seg5AccY119 seg5AccY118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 118]
      ring
    have ha0 : (rho 4192 + rho 4193) * (seg5AccX118 rho + seg5AccY118 rho) = rho 4194 := by
      unfold seg5AccX118 seg5AccY118
      linear_combination r4499
    have ha1 : rho 4193 * seg5AccX118 rho = rho 4195 := by
      unfold seg5AccX118
      linear_combination r4500
    have ha2 : rho 4192 * seg5AccY118 rho = rho 4196 := by
      unfold seg5AccY118
      linear_combination r4501
    have ha3 : 3021 * rho 4195 * rho 4196 = rho 4197 := by
      linear_combination r4502
    have ha4 : rho 4198 * (1 + rho 4197) = rho 4195 + rho 4196 := by
      linear_combination r4503
    have ha5 : rho 4199 * (1 - rho 4197) = rho 4194 - rho 4195 - rho 4196 := by
      linear_combination r4504
    have haddx :
        rho 4198 * (1 + 3021 * (rho 4193 * seg5AccX118 rho) * (rho 4192 * seg5AccY118 rho)) =
          rho 4193 * seg5AccX118 rho + rho 4192 * seg5AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4199 * (1 - 3021 * (rho 4193 * seg5AccX118 rho) * (rho 4192 * seg5AccY118 rho)) =
          (-1) * (rho 4193 * seg5AccX118 rho) - rho 4192 * seg5AccY118 rho +
            (seg5AccY118 rho - seg5AccX118 rho * (-1)) * (rho 4192 + rho 4193) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4199 * (1 - rho 4197) = rho 4194 - rho 4195 - rho 4196 := ha5
        _ = (-1) * rho 4195 - rho 4196 + (seg5AccY118 rho - seg5AccX118 rho * (-1)) * (rho 4192 + rho 4193) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX119 rho = seg5AccX118 rho - Bool.toZMod bit * (seg5AccX118 rho - rho 4198) := by
      have hd : rho 4200 = Bool.toZMod bit * (rho 4198 - seg5AccX118 rho) := by
        rw [← hbit]
        unfold seg5AccX118
        linear_combination -r4505
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY119 rho = seg5AccY118 rho - Bool.toZMod bit * (seg5AccY118 rho - rho 4199) := by
      have hd : rho 4201 = Bool.toZMod bit * (rho 4199 - seg5AccY118 rho) := by
        rw [← hbit]
        unfold seg5AccY118
        linear_combination -r4506
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4192 * rho 4193 = rho 4202 := by linear_combination r4507
    have hd1 : rho 4192 * rho 4192 = rho 4203 := by linear_combination r4508
    have hd2 : rho 4193 * rho 4193 = rho 4204 := by linear_combination r4509
    have hd3 : rho 4205 * (rho 4193 * rho 4193 + rho 4192 * rho 4192 * (-1)) = 2 * (rho 4192 * rho 4193) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 4206 * (2 - (rho 4193 * rho 4193 + rho 4192 * rho 4192 * (-1))) = rho 4193 * rho 4193 - rho 4192 * rho 4192 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX118 rho : Seg5.F), (seg5AccY118 rho : Seg5.F)⟩
      ⟨(rho 4192 : Seg5.F), (rho 4193 : Seg5.F)⟩
      ⟨(rho 4198 : Seg5.F), (rho 4199 : Seg5.F)⟩
      ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩
      ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg5_rows119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4512 rho ∧ Seg5.relationRow4513 rho ∧ Seg5.relationRow4514 rho ∧ Seg5.relationRow4515 rho ∧ Seg5.relationRow4516 rho ∧ Seg5.relationRow4517 rho ∧ Seg5.relationRow4518 rho ∧ Seg5.relationRow4519 rho ∧ Seg5.relationRow4520 rho ∧ Seg5.relationRow4521 rho ∧ Seg5.relationRow4522 rho ∧ Seg5.relationRow4523 rho ∧ Seg5.relationRow4524 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩

theorem seg5_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2534 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩
        ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩
        ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩
        ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩ := by
  obtain ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩ := seg5_rows119 rho h
  unfold Seg5.relationRow4512 at r4512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4512
  unfold Seg5.relationRow4513 at r4513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4513
  unfold Seg5.relationRow4514 at r4514
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4514
  unfold Seg5.relationRow4515 at r4515
  unfold Seg5.relationRow4516 at r4516
  unfold Seg5.relationRow4517 at r4517
  unfold Seg5.relationRow4518 at r4518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4518
  unfold Seg5.relationRow4519 at r4519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4519
  unfold Seg5.relationRow4520 at r4520
  unfold Seg5.relationRow4521 at r4521
  unfold Seg5.relationRow4522 at r4522
  unfold Seg5.relationRow4523 at r4523
  unfold Seg5.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 2534 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩
        ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩
        ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩
        ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩ := by
    have hnextx : seg5AccX120 rho = seg5AccX119 rho + rho 4213 := by
      unfold seg5AccX120 seg5AccX119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 119]
      ring
    have hnexty : seg5AccY120 rho = seg5AccY119 rho + rho 4214 := by
      unfold seg5AccY120 seg5AccY119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 119]
      ring
    have ha0 : (rho 4205 + rho 4206) * (seg5AccX119 rho + seg5AccY119 rho) = rho 4207 := by
      unfold seg5AccX119 seg5AccY119
      linear_combination r4512
    have ha1 : rho 4206 * seg5AccX119 rho = rho 4208 := by
      unfold seg5AccX119
      linear_combination r4513
    have ha2 : rho 4205 * seg5AccY119 rho = rho 4209 := by
      unfold seg5AccY119
      linear_combination r4514
    have ha3 : 3021 * rho 4208 * rho 4209 = rho 4210 := by
      linear_combination r4515
    have ha4 : rho 4211 * (1 + rho 4210) = rho 4208 + rho 4209 := by
      linear_combination r4516
    have ha5 : rho 4212 * (1 - rho 4210) = rho 4207 - rho 4208 - rho 4209 := by
      linear_combination r4517
    have haddx :
        rho 4211 * (1 + 3021 * (rho 4206 * seg5AccX119 rho) * (rho 4205 * seg5AccY119 rho)) =
          rho 4206 * seg5AccX119 rho + rho 4205 * seg5AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4212 * (1 - 3021 * (rho 4206 * seg5AccX119 rho) * (rho 4205 * seg5AccY119 rho)) =
          (-1) * (rho 4206 * seg5AccX119 rho) - rho 4205 * seg5AccY119 rho +
            (seg5AccY119 rho - seg5AccX119 rho * (-1)) * (rho 4205 + rho 4206) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4212 * (1 - rho 4210) = rho 4207 - rho 4208 - rho 4209 := ha5
        _ = (-1) * rho 4208 - rho 4209 + (seg5AccY119 rho - seg5AccX119 rho * (-1)) * (rho 4205 + rho 4206) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX120 rho = seg5AccX119 rho - Bool.toZMod bit * (seg5AccX119 rho - rho 4211) := by
      have hd : rho 4213 = Bool.toZMod bit * (rho 4211 - seg5AccX119 rho) := by
        rw [← hbit]
        unfold seg5AccX119
        linear_combination -r4518
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY120 rho = seg5AccY119 rho - Bool.toZMod bit * (seg5AccY119 rho - rho 4212) := by
      have hd : rho 4214 = Bool.toZMod bit * (rho 4212 - seg5AccY119 rho) := by
        rw [← hbit]
        unfold seg5AccY119
        linear_combination -r4519
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4205 * rho 4206 = rho 4215 := by linear_combination r4520
    have hd1 : rho 4205 * rho 4205 = rho 4216 := by linear_combination r4521
    have hd2 : rho 4206 * rho 4206 = rho 4217 := by linear_combination r4522
    have hd3 : rho 4218 * (rho 4206 * rho 4206 + rho 4205 * rho 4205 * (-1)) = 2 * (rho 4205 * rho 4206) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 4219 * (2 - (rho 4206 * rho 4206 + rho 4205 * rho 4205 * (-1))) = rho 4206 * rho 4206 - rho 4205 * rho 4205 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX119 rho : Seg5.F), (seg5AccY119 rho : Seg5.F)⟩
      ⟨(rho 4205 : Seg5.F), (rho 4206 : Seg5.F)⟩
      ⟨(rho 4211 : Seg5.F), (rho 4212 : Seg5.F)⟩
      ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩
      ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg5_rows120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4525 rho ∧ Seg5.relationRow4526 rho ∧ Seg5.relationRow4527 rho ∧ Seg5.relationRow4528 rho ∧ Seg5.relationRow4529 rho ∧ Seg5.relationRow4530 rho ∧ Seg5.relationRow4531 rho ∧ Seg5.relationRow4532 rho ∧ Seg5.relationRow4533 rho ∧ Seg5.relationRow4534 rho ∧ Seg5.relationRow4535 rho ∧ Seg5.relationRow4536 rho ∧ Seg5.relationRow4537 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩

theorem seg5_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2535 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩
        ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩
        ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩
        ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩ := by
  obtain ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩ := seg5_rows120 rho h
  unfold Seg5.relationRow4525 at r4525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4525
  unfold Seg5.relationRow4526 at r4526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4526
  unfold Seg5.relationRow4527 at r4527
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4527
  unfold Seg5.relationRow4528 at r4528
  unfold Seg5.relationRow4529 at r4529
  unfold Seg5.relationRow4530 at r4530
  unfold Seg5.relationRow4531 at r4531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4531
  unfold Seg5.relationRow4532 at r4532
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4532
  unfold Seg5.relationRow4533 at r4533
  unfold Seg5.relationRow4534 at r4534
  unfold Seg5.relationRow4535 at r4535
  unfold Seg5.relationRow4536 at r4536
  unfold Seg5.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 2535 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩
        ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩
        ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩
        ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩ := by
    have hnextx : seg5AccX121 rho = seg5AccX120 rho + rho 4226 := by
      unfold seg5AccX121 seg5AccX120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 120]
      ring
    have hnexty : seg5AccY121 rho = seg5AccY120 rho + rho 4227 := by
      unfold seg5AccY121 seg5AccY120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 120]
      ring
    have ha0 : (rho 4218 + rho 4219) * (seg5AccX120 rho + seg5AccY120 rho) = rho 4220 := by
      unfold seg5AccX120 seg5AccY120
      linear_combination r4525
    have ha1 : rho 4219 * seg5AccX120 rho = rho 4221 := by
      unfold seg5AccX120
      linear_combination r4526
    have ha2 : rho 4218 * seg5AccY120 rho = rho 4222 := by
      unfold seg5AccY120
      linear_combination r4527
    have ha3 : 3021 * rho 4221 * rho 4222 = rho 4223 := by
      linear_combination r4528
    have ha4 : rho 4224 * (1 + rho 4223) = rho 4221 + rho 4222 := by
      linear_combination r4529
    have ha5 : rho 4225 * (1 - rho 4223) = rho 4220 - rho 4221 - rho 4222 := by
      linear_combination r4530
    have haddx :
        rho 4224 * (1 + 3021 * (rho 4219 * seg5AccX120 rho) * (rho 4218 * seg5AccY120 rho)) =
          rho 4219 * seg5AccX120 rho + rho 4218 * seg5AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4225 * (1 - 3021 * (rho 4219 * seg5AccX120 rho) * (rho 4218 * seg5AccY120 rho)) =
          (-1) * (rho 4219 * seg5AccX120 rho) - rho 4218 * seg5AccY120 rho +
            (seg5AccY120 rho - seg5AccX120 rho * (-1)) * (rho 4218 + rho 4219) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4225 * (1 - rho 4223) = rho 4220 - rho 4221 - rho 4222 := ha5
        _ = (-1) * rho 4221 - rho 4222 + (seg5AccY120 rho - seg5AccX120 rho * (-1)) * (rho 4218 + rho 4219) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX121 rho = seg5AccX120 rho - Bool.toZMod bit * (seg5AccX120 rho - rho 4224) := by
      have hd : rho 4226 = Bool.toZMod bit * (rho 4224 - seg5AccX120 rho) := by
        rw [← hbit]
        unfold seg5AccX120
        linear_combination -r4531
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY121 rho = seg5AccY120 rho - Bool.toZMod bit * (seg5AccY120 rho - rho 4225) := by
      have hd : rho 4227 = Bool.toZMod bit * (rho 4225 - seg5AccY120 rho) := by
        rw [← hbit]
        unfold seg5AccY120
        linear_combination -r4532
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4218 * rho 4219 = rho 4228 := by linear_combination r4533
    have hd1 : rho 4218 * rho 4218 = rho 4229 := by linear_combination r4534
    have hd2 : rho 4219 * rho 4219 = rho 4230 := by linear_combination r4535
    have hd3 : rho 4231 * (rho 4219 * rho 4219 + rho 4218 * rho 4218 * (-1)) = 2 * (rho 4218 * rho 4219) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 4232 * (2 - (rho 4219 * rho 4219 + rho 4218 * rho 4218 * (-1))) = rho 4219 * rho 4219 - rho 4218 * rho 4218 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX120 rho : Seg5.F), (seg5AccY120 rho : Seg5.F)⟩
      ⟨(rho 4218 : Seg5.F), (rho 4219 : Seg5.F)⟩
      ⟨(rho 4224 : Seg5.F), (rho 4225 : Seg5.F)⟩
      ⟨(seg5AccX121 rho : Seg5.F), (seg5AccY121 rho : Seg5.F)⟩
      ⟨(rho 4231 : Seg5.F), (rho 4232 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg5_hstep_c10 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg5_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg5_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg5_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg5_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg5_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg5_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg5_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg5_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg5_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg5_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
