import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4395 rho ∧ Seg16.relationRow4396 rho ∧ Seg16.relationRow4397 rho ∧ Seg16.relationRow4398 rho ∧ Seg16.relationRow4399 rho ∧ Seg16.relationRow4400 rho ∧ Seg16.relationRow4401 rho ∧ Seg16.relationRow4402 rho ∧ Seg16.relationRow4403 rho ∧ Seg16.relationRow4404 rho ∧ Seg16.relationRow4405 rho ∧ Seg16.relationRow4406 rho ∧ Seg16.relationRow4407 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩

theorem seg16_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15402 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩ := by
  obtain ⟨r4395, r4396, r4397, r4398, r4399, r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407⟩ := seg16_rows110 rho h
  unfold Seg16.relationRow4395 at r4395
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4395
  unfold Seg16.relationRow4396 at r4396
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4396
  unfold Seg16.relationRow4397 at r4397
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4397
  unfold Seg16.relationRow4398 at r4398
  unfold Seg16.relationRow4399 at r4399
  unfold Seg16.relationRow4400 at r4400
  unfold Seg16.relationRow4401 at r4401
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4401
  unfold Seg16.relationRow4402 at r4402
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4402
  unfold Seg16.relationRow4403 at r4403
  unfold Seg16.relationRow4404 at r4404
  unfold Seg16.relationRow4405 at r4405
  unfold Seg16.relationRow4406 at r4406
  unfold Seg16.relationRow4407 at r4407
  have hrung110 (bit : Bool) (hbit : rho 15402 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
        ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩ := by
    have hnextx : seg16AccX111 rho = seg16AccX110 rho + rho 16973 := by
      unfold seg16AccX111 seg16AccX110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 110]
      ring
    have hnexty : seg16AccY111 rho = seg16AccY110 rho + rho 16974 := by
      unfold seg16AccY111 seg16AccY110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 110]
      ring
    have ha0 : (rho 16965 + rho 16966) * (seg16AccX110 rho + seg16AccY110 rho) = rho 16967 := by
      unfold seg16AccX110 seg16AccY110
      linear_combination r4395
    have ha1 : rho 16966 * seg16AccX110 rho = rho 16968 := by
      unfold seg16AccX110
      linear_combination r4396
    have ha2 : rho 16965 * seg16AccY110 rho = rho 16969 := by
      unfold seg16AccY110
      linear_combination r4397
    have ha3 : 3021 * rho 16968 * rho 16969 = rho 16970 := by
      linear_combination r4398
    have ha4 : rho 16971 * (1 + rho 16970) = rho 16968 + rho 16969 := by
      linear_combination r4399
    have ha5 : rho 16972 * (1 - rho 16970) = rho 16967 - rho 16968 - rho 16969 := by
      linear_combination r4400
    have haddx :
        rho 16971 * (1 + 3021 * (rho 16966 * seg16AccX110 rho) * (rho 16965 * seg16AccY110 rho)) =
          rho 16966 * seg16AccX110 rho + rho 16965 * seg16AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16972 * (1 - 3021 * (rho 16966 * seg16AccX110 rho) * (rho 16965 * seg16AccY110 rho)) =
          (-1) * (rho 16966 * seg16AccX110 rho) - rho 16965 * seg16AccY110 rho +
            (seg16AccY110 rho - seg16AccX110 rho * (-1)) * (rho 16965 + rho 16966) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16972 * (1 - rho 16970) = rho 16967 - rho 16968 - rho 16969 := ha5
        _ = (-1) * rho 16968 - rho 16969 + (seg16AccY110 rho - seg16AccX110 rho * (-1)) * (rho 16965 + rho 16966) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX111 rho = seg16AccX110 rho - Bool.toZMod bit * (seg16AccX110 rho - rho 16971) := by
      have hd : rho 16973 = Bool.toZMod bit * (rho 16971 - seg16AccX110 rho) := by
        rw [← hbit]
        unfold seg16AccX110
        linear_combination -r4401
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY111 rho = seg16AccY110 rho - Bool.toZMod bit * (seg16AccY110 rho - rho 16972) := by
      have hd : rho 16974 = Bool.toZMod bit * (rho 16972 - seg16AccY110 rho) := by
        rw [← hbit]
        unfold seg16AccY110
        linear_combination -r4402
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16965 * rho 16966 = rho 16975 := by linear_combination r4403
    have hd1 : rho 16965 * rho 16965 = rho 16976 := by linear_combination r4404
    have hd2 : rho 16966 * rho 16966 = rho 16977 := by linear_combination r4405
    have hd3 : rho 16978 * (rho 16966 * rho 16966 + rho 16965 * rho 16965 * (-1)) = 2 * (rho 16965 * rho 16966) := by
      rw [hd0, hd1, hd2]
      linear_combination r4406
    have hd4 : rho 16979 * (2 - (rho 16966 * rho 16966 + rho 16965 * rho 16965 * (-1))) = rho 16966 * rho 16966 - rho 16965 * rho 16965 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4407
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX110 rho : Seg16.F), (seg16AccY110 rho : Seg16.F)⟩
      ⟨(rho 16965 : Seg16.F), (rho 16966 : Seg16.F)⟩
      ⟨(rho 16971 : Seg16.F), (rho 16972 : Seg16.F)⟩
      ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
      ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg16_rows111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4408 rho ∧ Seg16.relationRow4409 rho ∧ Seg16.relationRow4410 rho ∧ Seg16.relationRow4411 rho ∧ Seg16.relationRow4412 rho ∧ Seg16.relationRow4413 rho ∧ Seg16.relationRow4414 rho ∧ Seg16.relationRow4415 rho ∧ Seg16.relationRow4416 rho ∧ Seg16.relationRow4417 rho ∧ Seg16.relationRow4418 rho ∧ Seg16.relationRow4419 rho ∧ Seg16.relationRow4420 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩

theorem seg16_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15403 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩ := by
  obtain ⟨r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420⟩ := seg16_rows111 rho h
  unfold Seg16.relationRow4408 at r4408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4408
  unfold Seg16.relationRow4409 at r4409
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4409
  unfold Seg16.relationRow4410 at r4410
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4410
  unfold Seg16.relationRow4411 at r4411
  unfold Seg16.relationRow4412 at r4412
  unfold Seg16.relationRow4413 at r4413
  unfold Seg16.relationRow4414 at r4414
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4414
  unfold Seg16.relationRow4415 at r4415
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4415
  unfold Seg16.relationRow4416 at r4416
  unfold Seg16.relationRow4417 at r4417
  unfold Seg16.relationRow4418 at r4418
  unfold Seg16.relationRow4419 at r4419
  unfold Seg16.relationRow4420 at r4420
  have hrung111 (bit : Bool) (hbit : rho 15403 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
        ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩ := by
    have hnextx : seg16AccX112 rho = seg16AccX111 rho + rho 16986 := by
      unfold seg16AccX112 seg16AccX111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 111]
      ring
    have hnexty : seg16AccY112 rho = seg16AccY111 rho + rho 16987 := by
      unfold seg16AccY112 seg16AccY111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 111]
      ring
    have ha0 : (rho 16978 + rho 16979) * (seg16AccX111 rho + seg16AccY111 rho) = rho 16980 := by
      unfold seg16AccX111 seg16AccY111
      linear_combination r4408
    have ha1 : rho 16979 * seg16AccX111 rho = rho 16981 := by
      unfold seg16AccX111
      linear_combination r4409
    have ha2 : rho 16978 * seg16AccY111 rho = rho 16982 := by
      unfold seg16AccY111
      linear_combination r4410
    have ha3 : 3021 * rho 16981 * rho 16982 = rho 16983 := by
      linear_combination r4411
    have ha4 : rho 16984 * (1 + rho 16983) = rho 16981 + rho 16982 := by
      linear_combination r4412
    have ha5 : rho 16985 * (1 - rho 16983) = rho 16980 - rho 16981 - rho 16982 := by
      linear_combination r4413
    have haddx :
        rho 16984 * (1 + 3021 * (rho 16979 * seg16AccX111 rho) * (rho 16978 * seg16AccY111 rho)) =
          rho 16979 * seg16AccX111 rho + rho 16978 * seg16AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16985 * (1 - 3021 * (rho 16979 * seg16AccX111 rho) * (rho 16978 * seg16AccY111 rho)) =
          (-1) * (rho 16979 * seg16AccX111 rho) - rho 16978 * seg16AccY111 rho +
            (seg16AccY111 rho - seg16AccX111 rho * (-1)) * (rho 16978 + rho 16979) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16985 * (1 - rho 16983) = rho 16980 - rho 16981 - rho 16982 := ha5
        _ = (-1) * rho 16981 - rho 16982 + (seg16AccY111 rho - seg16AccX111 rho * (-1)) * (rho 16978 + rho 16979) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX112 rho = seg16AccX111 rho - Bool.toZMod bit * (seg16AccX111 rho - rho 16984) := by
      have hd : rho 16986 = Bool.toZMod bit * (rho 16984 - seg16AccX111 rho) := by
        rw [← hbit]
        unfold seg16AccX111
        linear_combination -r4414
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY112 rho = seg16AccY111 rho - Bool.toZMod bit * (seg16AccY111 rho - rho 16985) := by
      have hd : rho 16987 = Bool.toZMod bit * (rho 16985 - seg16AccY111 rho) := by
        rw [← hbit]
        unfold seg16AccY111
        linear_combination -r4415
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16978 * rho 16979 = rho 16988 := by linear_combination r4416
    have hd1 : rho 16978 * rho 16978 = rho 16989 := by linear_combination r4417
    have hd2 : rho 16979 * rho 16979 = rho 16990 := by linear_combination r4418
    have hd3 : rho 16991 * (rho 16979 * rho 16979 + rho 16978 * rho 16978 * (-1)) = 2 * (rho 16978 * rho 16979) := by
      rw [hd0, hd1, hd2]
      linear_combination r4419
    have hd4 : rho 16992 * (2 - (rho 16979 * rho 16979 + rho 16978 * rho 16978 * (-1))) = rho 16979 * rho 16979 - rho 16978 * rho 16978 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4420
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX111 rho : Seg16.F), (seg16AccY111 rho : Seg16.F)⟩
      ⟨(rho 16978 : Seg16.F), (rho 16979 : Seg16.F)⟩
      ⟨(rho 16984 : Seg16.F), (rho 16985 : Seg16.F)⟩
      ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
      ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg16_rows112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4421 rho ∧ Seg16.relationRow4422 rho ∧ Seg16.relationRow4423 rho ∧ Seg16.relationRow4424 rho ∧ Seg16.relationRow4425 rho ∧ Seg16.relationRow4426 rho ∧ Seg16.relationRow4427 rho ∧ Seg16.relationRow4428 rho ∧ Seg16.relationRow4429 rho ∧ Seg16.relationRow4430 rho ∧ Seg16.relationRow4431 rho ∧ Seg16.relationRow4432 rho ∧ Seg16.relationRow4433 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩

theorem seg16_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15404 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩ := by
  obtain ⟨r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433⟩ := seg16_rows112 rho h
  unfold Seg16.relationRow4421 at r4421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4421
  unfold Seg16.relationRow4422 at r4422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4422
  unfold Seg16.relationRow4423 at r4423
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4423
  unfold Seg16.relationRow4424 at r4424
  unfold Seg16.relationRow4425 at r4425
  unfold Seg16.relationRow4426 at r4426
  unfold Seg16.relationRow4427 at r4427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4427
  unfold Seg16.relationRow4428 at r4428
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4428
  unfold Seg16.relationRow4429 at r4429
  unfold Seg16.relationRow4430 at r4430
  unfold Seg16.relationRow4431 at r4431
  unfold Seg16.relationRow4432 at r4432
  unfold Seg16.relationRow4433 at r4433
  have hrung112 (bit : Bool) (hbit : rho 15404 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
        ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩ := by
    have hnextx : seg16AccX113 rho = seg16AccX112 rho + rho 16999 := by
      unfold seg16AccX113 seg16AccX112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 112]
      ring
    have hnexty : seg16AccY113 rho = seg16AccY112 rho + rho 17000 := by
      unfold seg16AccY113 seg16AccY112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 112]
      ring
    have ha0 : (rho 16991 + rho 16992) * (seg16AccX112 rho + seg16AccY112 rho) = rho 16993 := by
      unfold seg16AccX112 seg16AccY112
      linear_combination r4421
    have ha1 : rho 16992 * seg16AccX112 rho = rho 16994 := by
      unfold seg16AccX112
      linear_combination r4422
    have ha2 : rho 16991 * seg16AccY112 rho = rho 16995 := by
      unfold seg16AccY112
      linear_combination r4423
    have ha3 : 3021 * rho 16994 * rho 16995 = rho 16996 := by
      linear_combination r4424
    have ha4 : rho 16997 * (1 + rho 16996) = rho 16994 + rho 16995 := by
      linear_combination r4425
    have ha5 : rho 16998 * (1 - rho 16996) = rho 16993 - rho 16994 - rho 16995 := by
      linear_combination r4426
    have haddx :
        rho 16997 * (1 + 3021 * (rho 16992 * seg16AccX112 rho) * (rho 16991 * seg16AccY112 rho)) =
          rho 16992 * seg16AccX112 rho + rho 16991 * seg16AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16998 * (1 - 3021 * (rho 16992 * seg16AccX112 rho) * (rho 16991 * seg16AccY112 rho)) =
          (-1) * (rho 16992 * seg16AccX112 rho) - rho 16991 * seg16AccY112 rho +
            (seg16AccY112 rho - seg16AccX112 rho * (-1)) * (rho 16991 + rho 16992) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16998 * (1 - rho 16996) = rho 16993 - rho 16994 - rho 16995 := ha5
        _ = (-1) * rho 16994 - rho 16995 + (seg16AccY112 rho - seg16AccX112 rho * (-1)) * (rho 16991 + rho 16992) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX113 rho = seg16AccX112 rho - Bool.toZMod bit * (seg16AccX112 rho - rho 16997) := by
      have hd : rho 16999 = Bool.toZMod bit * (rho 16997 - seg16AccX112 rho) := by
        rw [← hbit]
        unfold seg16AccX112
        linear_combination -r4427
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY113 rho = seg16AccY112 rho - Bool.toZMod bit * (seg16AccY112 rho - rho 16998) := by
      have hd : rho 17000 = Bool.toZMod bit * (rho 16998 - seg16AccY112 rho) := by
        rw [← hbit]
        unfold seg16AccY112
        linear_combination -r4428
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16991 * rho 16992 = rho 17001 := by linear_combination r4429
    have hd1 : rho 16991 * rho 16991 = rho 17002 := by linear_combination r4430
    have hd2 : rho 16992 * rho 16992 = rho 17003 := by linear_combination r4431
    have hd3 : rho 17004 * (rho 16992 * rho 16992 + rho 16991 * rho 16991 * (-1)) = 2 * (rho 16991 * rho 16992) := by
      rw [hd0, hd1, hd2]
      linear_combination r4432
    have hd4 : rho 17005 * (2 - (rho 16992 * rho 16992 + rho 16991 * rho 16991 * (-1))) = rho 16992 * rho 16992 - rho 16991 * rho 16991 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4433
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX112 rho : Seg16.F), (seg16AccY112 rho : Seg16.F)⟩
      ⟨(rho 16991 : Seg16.F), (rho 16992 : Seg16.F)⟩
      ⟨(rho 16997 : Seg16.F), (rho 16998 : Seg16.F)⟩
      ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
      ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg16_rows113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4434 rho ∧ Seg16.relationRow4435 rho ∧ Seg16.relationRow4436 rho ∧ Seg16.relationRow4437 rho ∧ Seg16.relationRow4438 rho ∧ Seg16.relationRow4439 rho ∧ Seg16.relationRow4440 rho ∧ Seg16.relationRow4441 rho ∧ Seg16.relationRow4442 rho ∧ Seg16.relationRow4443 rho ∧ Seg16.relationRow4444 rho ∧ Seg16.relationRow4445 rho ∧ Seg16.relationRow4446 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩

theorem seg16_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15405 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩ := by
  obtain ⟨r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446⟩ := seg16_rows113 rho h
  unfold Seg16.relationRow4434 at r4434
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4434
  unfold Seg16.relationRow4435 at r4435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4435
  unfold Seg16.relationRow4436 at r4436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4436
  unfold Seg16.relationRow4437 at r4437
  unfold Seg16.relationRow4438 at r4438
  unfold Seg16.relationRow4439 at r4439
  unfold Seg16.relationRow4440 at r4440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4440
  unfold Seg16.relationRow4441 at r4441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4441
  unfold Seg16.relationRow4442 at r4442
  unfold Seg16.relationRow4443 at r4443
  unfold Seg16.relationRow4444 at r4444
  unfold Seg16.relationRow4445 at r4445
  unfold Seg16.relationRow4446 at r4446
  have hrung113 (bit : Bool) (hbit : rho 15405 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
        ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩ := by
    have hnextx : seg16AccX114 rho = seg16AccX113 rho + rho 17012 := by
      unfold seg16AccX114 seg16AccX113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 113]
      ring
    have hnexty : seg16AccY114 rho = seg16AccY113 rho + rho 17013 := by
      unfold seg16AccY114 seg16AccY113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 113]
      ring
    have ha0 : (rho 17004 + rho 17005) * (seg16AccX113 rho + seg16AccY113 rho) = rho 17006 := by
      unfold seg16AccX113 seg16AccY113
      linear_combination r4434
    have ha1 : rho 17005 * seg16AccX113 rho = rho 17007 := by
      unfold seg16AccX113
      linear_combination r4435
    have ha2 : rho 17004 * seg16AccY113 rho = rho 17008 := by
      unfold seg16AccY113
      linear_combination r4436
    have ha3 : 3021 * rho 17007 * rho 17008 = rho 17009 := by
      linear_combination r4437
    have ha4 : rho 17010 * (1 + rho 17009) = rho 17007 + rho 17008 := by
      linear_combination r4438
    have ha5 : rho 17011 * (1 - rho 17009) = rho 17006 - rho 17007 - rho 17008 := by
      linear_combination r4439
    have haddx :
        rho 17010 * (1 + 3021 * (rho 17005 * seg16AccX113 rho) * (rho 17004 * seg16AccY113 rho)) =
          rho 17005 * seg16AccX113 rho + rho 17004 * seg16AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17011 * (1 - 3021 * (rho 17005 * seg16AccX113 rho) * (rho 17004 * seg16AccY113 rho)) =
          (-1) * (rho 17005 * seg16AccX113 rho) - rho 17004 * seg16AccY113 rho +
            (seg16AccY113 rho - seg16AccX113 rho * (-1)) * (rho 17004 + rho 17005) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17011 * (1 - rho 17009) = rho 17006 - rho 17007 - rho 17008 := ha5
        _ = (-1) * rho 17007 - rho 17008 + (seg16AccY113 rho - seg16AccX113 rho * (-1)) * (rho 17004 + rho 17005) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX114 rho = seg16AccX113 rho - Bool.toZMod bit * (seg16AccX113 rho - rho 17010) := by
      have hd : rho 17012 = Bool.toZMod bit * (rho 17010 - seg16AccX113 rho) := by
        rw [← hbit]
        unfold seg16AccX113
        linear_combination -r4440
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY114 rho = seg16AccY113 rho - Bool.toZMod bit * (seg16AccY113 rho - rho 17011) := by
      have hd : rho 17013 = Bool.toZMod bit * (rho 17011 - seg16AccY113 rho) := by
        rw [← hbit]
        unfold seg16AccY113
        linear_combination -r4441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17004 * rho 17005 = rho 17014 := by linear_combination r4442
    have hd1 : rho 17004 * rho 17004 = rho 17015 := by linear_combination r4443
    have hd2 : rho 17005 * rho 17005 = rho 17016 := by linear_combination r4444
    have hd3 : rho 17017 * (rho 17005 * rho 17005 + rho 17004 * rho 17004 * (-1)) = 2 * (rho 17004 * rho 17005) := by
      rw [hd0, hd1, hd2]
      linear_combination r4445
    have hd4 : rho 17018 * (2 - (rho 17005 * rho 17005 + rho 17004 * rho 17004 * (-1))) = rho 17005 * rho 17005 - rho 17004 * rho 17004 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX113 rho : Seg16.F), (seg16AccY113 rho : Seg16.F)⟩
      ⟨(rho 17004 : Seg16.F), (rho 17005 : Seg16.F)⟩
      ⟨(rho 17010 : Seg16.F), (rho 17011 : Seg16.F)⟩
      ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
      ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg16_rows114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4447 rho ∧ Seg16.relationRow4448 rho ∧ Seg16.relationRow4449 rho ∧ Seg16.relationRow4450 rho ∧ Seg16.relationRow4451 rho ∧ Seg16.relationRow4452 rho ∧ Seg16.relationRow4453 rho ∧ Seg16.relationRow4454 rho ∧ Seg16.relationRow4455 rho ∧ Seg16.relationRow4456 rho ∧ Seg16.relationRow4457 rho ∧ Seg16.relationRow4458 rho ∧ Seg16.relationRow4459 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩

theorem seg16_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15406 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩ := by
  obtain ⟨r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459⟩ := seg16_rows114 rho h
  unfold Seg16.relationRow4447 at r4447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4447
  unfold Seg16.relationRow4448 at r4448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4448
  unfold Seg16.relationRow4449 at r4449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4449
  unfold Seg16.relationRow4450 at r4450
  unfold Seg16.relationRow4451 at r4451
  unfold Seg16.relationRow4452 at r4452
  unfold Seg16.relationRow4453 at r4453
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4453
  unfold Seg16.relationRow4454 at r4454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4454
  unfold Seg16.relationRow4455 at r4455
  unfold Seg16.relationRow4456 at r4456
  unfold Seg16.relationRow4457 at r4457
  unfold Seg16.relationRow4458 at r4458
  unfold Seg16.relationRow4459 at r4459
  have hrung114 (bit : Bool) (hbit : rho 15406 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
        ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩ := by
    have hnextx : seg16AccX115 rho = seg16AccX114 rho + rho 17025 := by
      unfold seg16AccX115 seg16AccX114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 114]
      ring
    have hnexty : seg16AccY115 rho = seg16AccY114 rho + rho 17026 := by
      unfold seg16AccY115 seg16AccY114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 114]
      ring
    have ha0 : (rho 17017 + rho 17018) * (seg16AccX114 rho + seg16AccY114 rho) = rho 17019 := by
      unfold seg16AccX114 seg16AccY114
      linear_combination r4447
    have ha1 : rho 17018 * seg16AccX114 rho = rho 17020 := by
      unfold seg16AccX114
      linear_combination r4448
    have ha2 : rho 17017 * seg16AccY114 rho = rho 17021 := by
      unfold seg16AccY114
      linear_combination r4449
    have ha3 : 3021 * rho 17020 * rho 17021 = rho 17022 := by
      linear_combination r4450
    have ha4 : rho 17023 * (1 + rho 17022) = rho 17020 + rho 17021 := by
      linear_combination r4451
    have ha5 : rho 17024 * (1 - rho 17022) = rho 17019 - rho 17020 - rho 17021 := by
      linear_combination r4452
    have haddx :
        rho 17023 * (1 + 3021 * (rho 17018 * seg16AccX114 rho) * (rho 17017 * seg16AccY114 rho)) =
          rho 17018 * seg16AccX114 rho + rho 17017 * seg16AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17024 * (1 - 3021 * (rho 17018 * seg16AccX114 rho) * (rho 17017 * seg16AccY114 rho)) =
          (-1) * (rho 17018 * seg16AccX114 rho) - rho 17017 * seg16AccY114 rho +
            (seg16AccY114 rho - seg16AccX114 rho * (-1)) * (rho 17017 + rho 17018) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17024 * (1 - rho 17022) = rho 17019 - rho 17020 - rho 17021 := ha5
        _ = (-1) * rho 17020 - rho 17021 + (seg16AccY114 rho - seg16AccX114 rho * (-1)) * (rho 17017 + rho 17018) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX115 rho = seg16AccX114 rho - Bool.toZMod bit * (seg16AccX114 rho - rho 17023) := by
      have hd : rho 17025 = Bool.toZMod bit * (rho 17023 - seg16AccX114 rho) := by
        rw [← hbit]
        unfold seg16AccX114
        linear_combination -r4453
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY115 rho = seg16AccY114 rho - Bool.toZMod bit * (seg16AccY114 rho - rho 17024) := by
      have hd : rho 17026 = Bool.toZMod bit * (rho 17024 - seg16AccY114 rho) := by
        rw [← hbit]
        unfold seg16AccY114
        linear_combination -r4454
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17017 * rho 17018 = rho 17027 := by linear_combination r4455
    have hd1 : rho 17017 * rho 17017 = rho 17028 := by linear_combination r4456
    have hd2 : rho 17018 * rho 17018 = rho 17029 := by linear_combination r4457
    have hd3 : rho 17030 * (rho 17018 * rho 17018 + rho 17017 * rho 17017 * (-1)) = 2 * (rho 17017 * rho 17018) := by
      rw [hd0, hd1, hd2]
      linear_combination r4458
    have hd4 : rho 17031 * (2 - (rho 17018 * rho 17018 + rho 17017 * rho 17017 * (-1))) = rho 17018 * rho 17018 - rho 17017 * rho 17017 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4459
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX114 rho : Seg16.F), (seg16AccY114 rho : Seg16.F)⟩
      ⟨(rho 17017 : Seg16.F), (rho 17018 : Seg16.F)⟩
      ⟨(rho 17023 : Seg16.F), (rho 17024 : Seg16.F)⟩
      ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
      ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg16_rows115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4460 rho ∧ Seg16.relationRow4461 rho ∧ Seg16.relationRow4462 rho ∧ Seg16.relationRow4463 rho ∧ Seg16.relationRow4464 rho ∧ Seg16.relationRow4465 rho ∧ Seg16.relationRow4466 rho ∧ Seg16.relationRow4467 rho ∧ Seg16.relationRow4468 rho ∧ Seg16.relationRow4469 rho ∧ Seg16.relationRow4470 rho ∧ Seg16.relationRow4471 rho ∧ Seg16.relationRow4472 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, _, _, _, _, _, _, _⟩
  exact ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩

theorem seg16_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15407 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩ := by
  obtain ⟨r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472⟩ := seg16_rows115 rho h
  unfold Seg16.relationRow4460 at r4460
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4460
  unfold Seg16.relationRow4461 at r4461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4461
  unfold Seg16.relationRow4462 at r4462
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4462
  unfold Seg16.relationRow4463 at r4463
  unfold Seg16.relationRow4464 at r4464
  unfold Seg16.relationRow4465 at r4465
  unfold Seg16.relationRow4466 at r4466
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4466
  unfold Seg16.relationRow4467 at r4467
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4467
  unfold Seg16.relationRow4468 at r4468
  unfold Seg16.relationRow4469 at r4469
  unfold Seg16.relationRow4470 at r4470
  unfold Seg16.relationRow4471 at r4471
  unfold Seg16.relationRow4472 at r4472
  have hrung115 (bit : Bool) (hbit : rho 15407 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
        ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩ := by
    have hnextx : seg16AccX116 rho = seg16AccX115 rho + rho 17038 := by
      unfold seg16AccX116 seg16AccX115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 115]
      ring
    have hnexty : seg16AccY116 rho = seg16AccY115 rho + rho 17039 := by
      unfold seg16AccY116 seg16AccY115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 115]
      ring
    have ha0 : (rho 17030 + rho 17031) * (seg16AccX115 rho + seg16AccY115 rho) = rho 17032 := by
      unfold seg16AccX115 seg16AccY115
      linear_combination r4460
    have ha1 : rho 17031 * seg16AccX115 rho = rho 17033 := by
      unfold seg16AccX115
      linear_combination r4461
    have ha2 : rho 17030 * seg16AccY115 rho = rho 17034 := by
      unfold seg16AccY115
      linear_combination r4462
    have ha3 : 3021 * rho 17033 * rho 17034 = rho 17035 := by
      linear_combination r4463
    have ha4 : rho 17036 * (1 + rho 17035) = rho 17033 + rho 17034 := by
      linear_combination r4464
    have ha5 : rho 17037 * (1 - rho 17035) = rho 17032 - rho 17033 - rho 17034 := by
      linear_combination r4465
    have haddx :
        rho 17036 * (1 + 3021 * (rho 17031 * seg16AccX115 rho) * (rho 17030 * seg16AccY115 rho)) =
          rho 17031 * seg16AccX115 rho + rho 17030 * seg16AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17037 * (1 - 3021 * (rho 17031 * seg16AccX115 rho) * (rho 17030 * seg16AccY115 rho)) =
          (-1) * (rho 17031 * seg16AccX115 rho) - rho 17030 * seg16AccY115 rho +
            (seg16AccY115 rho - seg16AccX115 rho * (-1)) * (rho 17030 + rho 17031) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17037 * (1 - rho 17035) = rho 17032 - rho 17033 - rho 17034 := ha5
        _ = (-1) * rho 17033 - rho 17034 + (seg16AccY115 rho - seg16AccX115 rho * (-1)) * (rho 17030 + rho 17031) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX116 rho = seg16AccX115 rho - Bool.toZMod bit * (seg16AccX115 rho - rho 17036) := by
      have hd : rho 17038 = Bool.toZMod bit * (rho 17036 - seg16AccX115 rho) := by
        rw [← hbit]
        unfold seg16AccX115
        linear_combination -r4466
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY116 rho = seg16AccY115 rho - Bool.toZMod bit * (seg16AccY115 rho - rho 17037) := by
      have hd : rho 17039 = Bool.toZMod bit * (rho 17037 - seg16AccY115 rho) := by
        rw [← hbit]
        unfold seg16AccY115
        linear_combination -r4467
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17030 * rho 17031 = rho 17040 := by linear_combination r4468
    have hd1 : rho 17030 * rho 17030 = rho 17041 := by linear_combination r4469
    have hd2 : rho 17031 * rho 17031 = rho 17042 := by linear_combination r4470
    have hd3 : rho 17043 * (rho 17031 * rho 17031 + rho 17030 * rho 17030 * (-1)) = 2 * (rho 17030 * rho 17031) := by
      rw [hd0, hd1, hd2]
      linear_combination r4471
    have hd4 : rho 17044 * (2 - (rho 17031 * rho 17031 + rho 17030 * rho 17030 * (-1))) = rho 17031 * rho 17031 - rho 17030 * rho 17030 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4472
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX115 rho : Seg16.F), (seg16AccY115 rho : Seg16.F)⟩
      ⟨(rho 17030 : Seg16.F), (rho 17031 : Seg16.F)⟩
      ⟨(rho 17036 : Seg16.F), (rho 17037 : Seg16.F)⟩
      ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
      ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg16_rows116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4473 rho ∧ Seg16.relationRow4474 rho ∧ Seg16.relationRow4475 rho ∧ Seg16.relationRow4476 rho ∧ Seg16.relationRow4477 rho ∧ Seg16.relationRow4478 rho ∧ Seg16.relationRow4479 rho ∧ Seg16.relationRow4480 rho ∧ Seg16.relationRow4481 rho ∧ Seg16.relationRow4482 rho ∧ Seg16.relationRow4483 rho ∧ Seg16.relationRow4484 rho ∧ Seg16.relationRow4485 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩

theorem seg16_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15408 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩ := by
  obtain ⟨r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480, r4481, r4482, r4483, r4484, r4485⟩ := seg16_rows116 rho h
  unfold Seg16.relationRow4473 at r4473
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4473
  unfold Seg16.relationRow4474 at r4474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4474
  unfold Seg16.relationRow4475 at r4475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4475
  unfold Seg16.relationRow4476 at r4476
  unfold Seg16.relationRow4477 at r4477
  unfold Seg16.relationRow4478 at r4478
  unfold Seg16.relationRow4479 at r4479
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4479
  unfold Seg16.relationRow4480 at r4480
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4480
  unfold Seg16.relationRow4481 at r4481
  unfold Seg16.relationRow4482 at r4482
  unfold Seg16.relationRow4483 at r4483
  unfold Seg16.relationRow4484 at r4484
  unfold Seg16.relationRow4485 at r4485
  have hrung116 (bit : Bool) (hbit : rho 15408 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
        ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩ := by
    have hnextx : seg16AccX117 rho = seg16AccX116 rho + rho 17051 := by
      unfold seg16AccX117 seg16AccX116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 116]
      ring
    have hnexty : seg16AccY117 rho = seg16AccY116 rho + rho 17052 := by
      unfold seg16AccY117 seg16AccY116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 116]
      ring
    have ha0 : (rho 17043 + rho 17044) * (seg16AccX116 rho + seg16AccY116 rho) = rho 17045 := by
      unfold seg16AccX116 seg16AccY116
      linear_combination r4473
    have ha1 : rho 17044 * seg16AccX116 rho = rho 17046 := by
      unfold seg16AccX116
      linear_combination r4474
    have ha2 : rho 17043 * seg16AccY116 rho = rho 17047 := by
      unfold seg16AccY116
      linear_combination r4475
    have ha3 : 3021 * rho 17046 * rho 17047 = rho 17048 := by
      linear_combination r4476
    have ha4 : rho 17049 * (1 + rho 17048) = rho 17046 + rho 17047 := by
      linear_combination r4477
    have ha5 : rho 17050 * (1 - rho 17048) = rho 17045 - rho 17046 - rho 17047 := by
      linear_combination r4478
    have haddx :
        rho 17049 * (1 + 3021 * (rho 17044 * seg16AccX116 rho) * (rho 17043 * seg16AccY116 rho)) =
          rho 17044 * seg16AccX116 rho + rho 17043 * seg16AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17050 * (1 - 3021 * (rho 17044 * seg16AccX116 rho) * (rho 17043 * seg16AccY116 rho)) =
          (-1) * (rho 17044 * seg16AccX116 rho) - rho 17043 * seg16AccY116 rho +
            (seg16AccY116 rho - seg16AccX116 rho * (-1)) * (rho 17043 + rho 17044) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17050 * (1 - rho 17048) = rho 17045 - rho 17046 - rho 17047 := ha5
        _ = (-1) * rho 17046 - rho 17047 + (seg16AccY116 rho - seg16AccX116 rho * (-1)) * (rho 17043 + rho 17044) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX117 rho = seg16AccX116 rho - Bool.toZMod bit * (seg16AccX116 rho - rho 17049) := by
      have hd : rho 17051 = Bool.toZMod bit * (rho 17049 - seg16AccX116 rho) := by
        rw [← hbit]
        unfold seg16AccX116
        linear_combination -r4479
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY117 rho = seg16AccY116 rho - Bool.toZMod bit * (seg16AccY116 rho - rho 17050) := by
      have hd : rho 17052 = Bool.toZMod bit * (rho 17050 - seg16AccY116 rho) := by
        rw [← hbit]
        unfold seg16AccY116
        linear_combination -r4480
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17043 * rho 17044 = rho 17053 := by linear_combination r4481
    have hd1 : rho 17043 * rho 17043 = rho 17054 := by linear_combination r4482
    have hd2 : rho 17044 * rho 17044 = rho 17055 := by linear_combination r4483
    have hd3 : rho 17056 * (rho 17044 * rho 17044 + rho 17043 * rho 17043 * (-1)) = 2 * (rho 17043 * rho 17044) := by
      rw [hd0, hd1, hd2]
      linear_combination r4484
    have hd4 : rho 17057 * (2 - (rho 17044 * rho 17044 + rho 17043 * rho 17043 * (-1))) = rho 17044 * rho 17044 - rho 17043 * rho 17043 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4485
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX116 rho : Seg16.F), (seg16AccY116 rho : Seg16.F)⟩
      ⟨(rho 17043 : Seg16.F), (rho 17044 : Seg16.F)⟩
      ⟨(rho 17049 : Seg16.F), (rho 17050 : Seg16.F)⟩
      ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
      ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg16_rows117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4486 rho ∧ Seg16.relationRow4487 rho ∧ Seg16.relationRow4488 rho ∧ Seg16.relationRow4489 rho ∧ Seg16.relationRow4490 rho ∧ Seg16.relationRow4491 rho ∧ Seg16.relationRow4492 rho ∧ Seg16.relationRow4493 rho ∧ Seg16.relationRow4494 rho ∧ Seg16.relationRow4495 rho ∧ Seg16.relationRow4496 rho ∧ Seg16.relationRow4497 rho ∧ Seg16.relationRow4498 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩

theorem seg16_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15409 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩ := by
  obtain ⟨r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498⟩ := seg16_rows117 rho h
  unfold Seg16.relationRow4486 at r4486
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4486
  unfold Seg16.relationRow4487 at r4487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4487
  unfold Seg16.relationRow4488 at r4488
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4488
  unfold Seg16.relationRow4489 at r4489
  unfold Seg16.relationRow4490 at r4490
  unfold Seg16.relationRow4491 at r4491
  unfold Seg16.relationRow4492 at r4492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4492
  unfold Seg16.relationRow4493 at r4493
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4493
  unfold Seg16.relationRow4494 at r4494
  unfold Seg16.relationRow4495 at r4495
  unfold Seg16.relationRow4496 at r4496
  unfold Seg16.relationRow4497 at r4497
  unfold Seg16.relationRow4498 at r4498
  have hrung117 (bit : Bool) (hbit : rho 15409 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
        ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩ := by
    have hnextx : seg16AccX118 rho = seg16AccX117 rho + rho 17064 := by
      unfold seg16AccX118 seg16AccX117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 117]
      ring
    have hnexty : seg16AccY118 rho = seg16AccY117 rho + rho 17065 := by
      unfold seg16AccY118 seg16AccY117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 117]
      ring
    have ha0 : (rho 17056 + rho 17057) * (seg16AccX117 rho + seg16AccY117 rho) = rho 17058 := by
      unfold seg16AccX117 seg16AccY117
      linear_combination r4486
    have ha1 : rho 17057 * seg16AccX117 rho = rho 17059 := by
      unfold seg16AccX117
      linear_combination r4487
    have ha2 : rho 17056 * seg16AccY117 rho = rho 17060 := by
      unfold seg16AccY117
      linear_combination r4488
    have ha3 : 3021 * rho 17059 * rho 17060 = rho 17061 := by
      linear_combination r4489
    have ha4 : rho 17062 * (1 + rho 17061) = rho 17059 + rho 17060 := by
      linear_combination r4490
    have ha5 : rho 17063 * (1 - rho 17061) = rho 17058 - rho 17059 - rho 17060 := by
      linear_combination r4491
    have haddx :
        rho 17062 * (1 + 3021 * (rho 17057 * seg16AccX117 rho) * (rho 17056 * seg16AccY117 rho)) =
          rho 17057 * seg16AccX117 rho + rho 17056 * seg16AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17063 * (1 - 3021 * (rho 17057 * seg16AccX117 rho) * (rho 17056 * seg16AccY117 rho)) =
          (-1) * (rho 17057 * seg16AccX117 rho) - rho 17056 * seg16AccY117 rho +
            (seg16AccY117 rho - seg16AccX117 rho * (-1)) * (rho 17056 + rho 17057) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17063 * (1 - rho 17061) = rho 17058 - rho 17059 - rho 17060 := ha5
        _ = (-1) * rho 17059 - rho 17060 + (seg16AccY117 rho - seg16AccX117 rho * (-1)) * (rho 17056 + rho 17057) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX118 rho = seg16AccX117 rho - Bool.toZMod bit * (seg16AccX117 rho - rho 17062) := by
      have hd : rho 17064 = Bool.toZMod bit * (rho 17062 - seg16AccX117 rho) := by
        rw [← hbit]
        unfold seg16AccX117
        linear_combination -r4492
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY118 rho = seg16AccY117 rho - Bool.toZMod bit * (seg16AccY117 rho - rho 17063) := by
      have hd : rho 17065 = Bool.toZMod bit * (rho 17063 - seg16AccY117 rho) := by
        rw [← hbit]
        unfold seg16AccY117
        linear_combination -r4493
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17056 * rho 17057 = rho 17066 := by linear_combination r4494
    have hd1 : rho 17056 * rho 17056 = rho 17067 := by linear_combination r4495
    have hd2 : rho 17057 * rho 17057 = rho 17068 := by linear_combination r4496
    have hd3 : rho 17069 * (rho 17057 * rho 17057 + rho 17056 * rho 17056 * (-1)) = 2 * (rho 17056 * rho 17057) := by
      rw [hd0, hd1, hd2]
      linear_combination r4497
    have hd4 : rho 17070 * (2 - (rho 17057 * rho 17057 + rho 17056 * rho 17056 * (-1))) = rho 17057 * rho 17057 - rho 17056 * rho 17056 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4498
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX117 rho : Seg16.F), (seg16AccY117 rho : Seg16.F)⟩
      ⟨(rho 17056 : Seg16.F), (rho 17057 : Seg16.F)⟩
      ⟨(rho 17062 : Seg16.F), (rho 17063 : Seg16.F)⟩
      ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
      ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg16_rows118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4499 rho ∧ Seg16.relationRow4500 rho ∧ Seg16.relationRow4501 rho ∧ Seg16.relationRow4502 rho ∧ Seg16.relationRow4503 rho ∧ Seg16.relationRow4504 rho ∧ Seg16.relationRow4505 rho ∧ Seg16.relationRow4506 rho ∧ Seg16.relationRow4507 rho ∧ Seg16.relationRow4508 rho ∧ Seg16.relationRow4509 rho ∧ Seg16.relationRow4510 rho ∧ Seg16.relationRow4511 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩

theorem seg16_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15410 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩ := by
  obtain ⟨r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511⟩ := seg16_rows118 rho h
  unfold Seg16.relationRow4499 at r4499
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4499
  unfold Seg16.relationRow4500 at r4500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4500
  unfold Seg16.relationRow4501 at r4501
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4501
  unfold Seg16.relationRow4502 at r4502
  unfold Seg16.relationRow4503 at r4503
  unfold Seg16.relationRow4504 at r4504
  unfold Seg16.relationRow4505 at r4505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4505
  unfold Seg16.relationRow4506 at r4506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4506
  unfold Seg16.relationRow4507 at r4507
  unfold Seg16.relationRow4508 at r4508
  unfold Seg16.relationRow4509 at r4509
  unfold Seg16.relationRow4510 at r4510
  unfold Seg16.relationRow4511 at r4511
  have hrung118 (bit : Bool) (hbit : rho 15410 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
        ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩ := by
    have hnextx : seg16AccX119 rho = seg16AccX118 rho + rho 17077 := by
      unfold seg16AccX119 seg16AccX118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 118]
      ring
    have hnexty : seg16AccY119 rho = seg16AccY118 rho + rho 17078 := by
      unfold seg16AccY119 seg16AccY118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 118]
      ring
    have ha0 : (rho 17069 + rho 17070) * (seg16AccX118 rho + seg16AccY118 rho) = rho 17071 := by
      unfold seg16AccX118 seg16AccY118
      linear_combination r4499
    have ha1 : rho 17070 * seg16AccX118 rho = rho 17072 := by
      unfold seg16AccX118
      linear_combination r4500
    have ha2 : rho 17069 * seg16AccY118 rho = rho 17073 := by
      unfold seg16AccY118
      linear_combination r4501
    have ha3 : 3021 * rho 17072 * rho 17073 = rho 17074 := by
      linear_combination r4502
    have ha4 : rho 17075 * (1 + rho 17074) = rho 17072 + rho 17073 := by
      linear_combination r4503
    have ha5 : rho 17076 * (1 - rho 17074) = rho 17071 - rho 17072 - rho 17073 := by
      linear_combination r4504
    have haddx :
        rho 17075 * (1 + 3021 * (rho 17070 * seg16AccX118 rho) * (rho 17069 * seg16AccY118 rho)) =
          rho 17070 * seg16AccX118 rho + rho 17069 * seg16AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17076 * (1 - 3021 * (rho 17070 * seg16AccX118 rho) * (rho 17069 * seg16AccY118 rho)) =
          (-1) * (rho 17070 * seg16AccX118 rho) - rho 17069 * seg16AccY118 rho +
            (seg16AccY118 rho - seg16AccX118 rho * (-1)) * (rho 17069 + rho 17070) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17076 * (1 - rho 17074) = rho 17071 - rho 17072 - rho 17073 := ha5
        _ = (-1) * rho 17072 - rho 17073 + (seg16AccY118 rho - seg16AccX118 rho * (-1)) * (rho 17069 + rho 17070) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX119 rho = seg16AccX118 rho - Bool.toZMod bit * (seg16AccX118 rho - rho 17075) := by
      have hd : rho 17077 = Bool.toZMod bit * (rho 17075 - seg16AccX118 rho) := by
        rw [← hbit]
        unfold seg16AccX118
        linear_combination -r4505
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY119 rho = seg16AccY118 rho - Bool.toZMod bit * (seg16AccY118 rho - rho 17076) := by
      have hd : rho 17078 = Bool.toZMod bit * (rho 17076 - seg16AccY118 rho) := by
        rw [← hbit]
        unfold seg16AccY118
        linear_combination -r4506
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17069 * rho 17070 = rho 17079 := by linear_combination r4507
    have hd1 : rho 17069 * rho 17069 = rho 17080 := by linear_combination r4508
    have hd2 : rho 17070 * rho 17070 = rho 17081 := by linear_combination r4509
    have hd3 : rho 17082 * (rho 17070 * rho 17070 + rho 17069 * rho 17069 * (-1)) = 2 * (rho 17069 * rho 17070) := by
      rw [hd0, hd1, hd2]
      linear_combination r4510
    have hd4 : rho 17083 * (2 - (rho 17070 * rho 17070 + rho 17069 * rho 17069 * (-1))) = rho 17070 * rho 17070 - rho 17069 * rho 17069 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4511
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX118 rho : Seg16.F), (seg16AccY118 rho : Seg16.F)⟩
      ⟨(rho 17069 : Seg16.F), (rho 17070 : Seg16.F)⟩
      ⟨(rho 17075 : Seg16.F), (rho 17076 : Seg16.F)⟩
      ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
      ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg16_rows119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4512 rho ∧ Seg16.relationRow4513 rho ∧ Seg16.relationRow4514 rho ∧ Seg16.relationRow4515 rho ∧ Seg16.relationRow4516 rho ∧ Seg16.relationRow4517 rho ∧ Seg16.relationRow4518 rho ∧ Seg16.relationRow4519 rho ∧ Seg16.relationRow4520 rho ∧ Seg16.relationRow4521 rho ∧ Seg16.relationRow4522 rho ∧ Seg16.relationRow4523 rho ∧ Seg16.relationRow4524 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩

theorem seg16_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15411 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩ := by
  obtain ⟨r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524⟩ := seg16_rows119 rho h
  unfold Seg16.relationRow4512 at r4512
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4512
  unfold Seg16.relationRow4513 at r4513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4513
  unfold Seg16.relationRow4514 at r4514
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4514
  unfold Seg16.relationRow4515 at r4515
  unfold Seg16.relationRow4516 at r4516
  unfold Seg16.relationRow4517 at r4517
  unfold Seg16.relationRow4518 at r4518
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4518
  unfold Seg16.relationRow4519 at r4519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4519
  unfold Seg16.relationRow4520 at r4520
  unfold Seg16.relationRow4521 at r4521
  unfold Seg16.relationRow4522 at r4522
  unfold Seg16.relationRow4523 at r4523
  unfold Seg16.relationRow4524 at r4524
  have hrung119 (bit : Bool) (hbit : rho 15411 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
        ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩ := by
    have hnextx : seg16AccX120 rho = seg16AccX119 rho + rho 17090 := by
      unfold seg16AccX120 seg16AccX119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 119]
      ring
    have hnexty : seg16AccY120 rho = seg16AccY119 rho + rho 17091 := by
      unfold seg16AccY120 seg16AccY119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 119]
      ring
    have ha0 : (rho 17082 + rho 17083) * (seg16AccX119 rho + seg16AccY119 rho) = rho 17084 := by
      unfold seg16AccX119 seg16AccY119
      linear_combination r4512
    have ha1 : rho 17083 * seg16AccX119 rho = rho 17085 := by
      unfold seg16AccX119
      linear_combination r4513
    have ha2 : rho 17082 * seg16AccY119 rho = rho 17086 := by
      unfold seg16AccY119
      linear_combination r4514
    have ha3 : 3021 * rho 17085 * rho 17086 = rho 17087 := by
      linear_combination r4515
    have ha4 : rho 17088 * (1 + rho 17087) = rho 17085 + rho 17086 := by
      linear_combination r4516
    have ha5 : rho 17089 * (1 - rho 17087) = rho 17084 - rho 17085 - rho 17086 := by
      linear_combination r4517
    have haddx :
        rho 17088 * (1 + 3021 * (rho 17083 * seg16AccX119 rho) * (rho 17082 * seg16AccY119 rho)) =
          rho 17083 * seg16AccX119 rho + rho 17082 * seg16AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17089 * (1 - 3021 * (rho 17083 * seg16AccX119 rho) * (rho 17082 * seg16AccY119 rho)) =
          (-1) * (rho 17083 * seg16AccX119 rho) - rho 17082 * seg16AccY119 rho +
            (seg16AccY119 rho - seg16AccX119 rho * (-1)) * (rho 17082 + rho 17083) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17089 * (1 - rho 17087) = rho 17084 - rho 17085 - rho 17086 := ha5
        _ = (-1) * rho 17085 - rho 17086 + (seg16AccY119 rho - seg16AccX119 rho * (-1)) * (rho 17082 + rho 17083) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX120 rho = seg16AccX119 rho - Bool.toZMod bit * (seg16AccX119 rho - rho 17088) := by
      have hd : rho 17090 = Bool.toZMod bit * (rho 17088 - seg16AccX119 rho) := by
        rw [← hbit]
        unfold seg16AccX119
        linear_combination -r4518
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY120 rho = seg16AccY119 rho - Bool.toZMod bit * (seg16AccY119 rho - rho 17089) := by
      have hd : rho 17091 = Bool.toZMod bit * (rho 17089 - seg16AccY119 rho) := by
        rw [← hbit]
        unfold seg16AccY119
        linear_combination -r4519
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17082 * rho 17083 = rho 17092 := by linear_combination r4520
    have hd1 : rho 17082 * rho 17082 = rho 17093 := by linear_combination r4521
    have hd2 : rho 17083 * rho 17083 = rho 17094 := by linear_combination r4522
    have hd3 : rho 17095 * (rho 17083 * rho 17083 + rho 17082 * rho 17082 * (-1)) = 2 * (rho 17082 * rho 17083) := by
      rw [hd0, hd1, hd2]
      linear_combination r4523
    have hd4 : rho 17096 * (2 - (rho 17083 * rho 17083 + rho 17082 * rho 17082 * (-1))) = rho 17083 * rho 17083 - rho 17082 * rho 17082 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4524
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX119 rho : Seg16.F), (seg16AccY119 rho : Seg16.F)⟩
      ⟨(rho 17082 : Seg16.F), (rho 17083 : Seg16.F)⟩
      ⟨(rho 17088 : Seg16.F), (rho 17089 : Seg16.F)⟩
      ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
      ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg16_rows120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4525 rho ∧ Seg16.relationRow4526 rho ∧ Seg16.relationRow4527 rho ∧ Seg16.relationRow4528 rho ∧ Seg16.relationRow4529 rho ∧ Seg16.relationRow4530 rho ∧ Seg16.relationRow4531 rho ∧ Seg16.relationRow4532 rho ∧ Seg16.relationRow4533 rho ∧ Seg16.relationRow4534 rho ∧ Seg16.relationRow4535 rho ∧ Seg16.relationRow4536 rho ∧ Seg16.relationRow4537 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩

theorem seg16_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15412 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩ := by
  obtain ⟨r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537⟩ := seg16_rows120 rho h
  unfold Seg16.relationRow4525 at r4525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4525
  unfold Seg16.relationRow4526 at r4526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4526
  unfold Seg16.relationRow4527 at r4527
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4527
  unfold Seg16.relationRow4528 at r4528
  unfold Seg16.relationRow4529 at r4529
  unfold Seg16.relationRow4530 at r4530
  unfold Seg16.relationRow4531 at r4531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4531
  unfold Seg16.relationRow4532 at r4532
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4532
  unfold Seg16.relationRow4533 at r4533
  unfold Seg16.relationRow4534 at r4534
  unfold Seg16.relationRow4535 at r4535
  unfold Seg16.relationRow4536 at r4536
  unfold Seg16.relationRow4537 at r4537
  have hrung120 (bit : Bool) (hbit : rho 15412 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
        ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
        ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
        ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩ := by
    have hnextx : seg16AccX121 rho = seg16AccX120 rho + rho 17103 := by
      unfold seg16AccX121 seg16AccX120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 120]
      ring
    have hnexty : seg16AccY121 rho = seg16AccY120 rho + rho 17104 := by
      unfold seg16AccY121 seg16AccY120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 120]
      ring
    have ha0 : (rho 17095 + rho 17096) * (seg16AccX120 rho + seg16AccY120 rho) = rho 17097 := by
      unfold seg16AccX120 seg16AccY120
      linear_combination r4525
    have ha1 : rho 17096 * seg16AccX120 rho = rho 17098 := by
      unfold seg16AccX120
      linear_combination r4526
    have ha2 : rho 17095 * seg16AccY120 rho = rho 17099 := by
      unfold seg16AccY120
      linear_combination r4527
    have ha3 : 3021 * rho 17098 * rho 17099 = rho 17100 := by
      linear_combination r4528
    have ha4 : rho 17101 * (1 + rho 17100) = rho 17098 + rho 17099 := by
      linear_combination r4529
    have ha5 : rho 17102 * (1 - rho 17100) = rho 17097 - rho 17098 - rho 17099 := by
      linear_combination r4530
    have haddx :
        rho 17101 * (1 + 3021 * (rho 17096 * seg16AccX120 rho) * (rho 17095 * seg16AccY120 rho)) =
          rho 17096 * seg16AccX120 rho + rho 17095 * seg16AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17102 * (1 - 3021 * (rho 17096 * seg16AccX120 rho) * (rho 17095 * seg16AccY120 rho)) =
          (-1) * (rho 17096 * seg16AccX120 rho) - rho 17095 * seg16AccY120 rho +
            (seg16AccY120 rho - seg16AccX120 rho * (-1)) * (rho 17095 + rho 17096) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17102 * (1 - rho 17100) = rho 17097 - rho 17098 - rho 17099 := ha5
        _ = (-1) * rho 17098 - rho 17099 + (seg16AccY120 rho - seg16AccX120 rho * (-1)) * (rho 17095 + rho 17096) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX121 rho = seg16AccX120 rho - Bool.toZMod bit * (seg16AccX120 rho - rho 17101) := by
      have hd : rho 17103 = Bool.toZMod bit * (rho 17101 - seg16AccX120 rho) := by
        rw [← hbit]
        unfold seg16AccX120
        linear_combination -r4531
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY121 rho = seg16AccY120 rho - Bool.toZMod bit * (seg16AccY120 rho - rho 17102) := by
      have hd : rho 17104 = Bool.toZMod bit * (rho 17102 - seg16AccY120 rho) := by
        rw [← hbit]
        unfold seg16AccY120
        linear_combination -r4532
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17095 * rho 17096 = rho 17105 := by linear_combination r4533
    have hd1 : rho 17095 * rho 17095 = rho 17106 := by linear_combination r4534
    have hd2 : rho 17096 * rho 17096 = rho 17107 := by linear_combination r4535
    have hd3 : rho 17108 * (rho 17096 * rho 17096 + rho 17095 * rho 17095 * (-1)) = 2 * (rho 17095 * rho 17096) := by
      rw [hd0, hd1, hd2]
      linear_combination r4536
    have hd4 : rho 17109 * (2 - (rho 17096 * rho 17096 + rho 17095 * rho 17095 * (-1))) = rho 17096 * rho 17096 - rho 17095 * rho 17095 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4537
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX120 rho : Seg16.F), (seg16AccY120 rho : Seg16.F)⟩
      ⟨(rho 17095 : Seg16.F), (rho 17096 : Seg16.F)⟩
      ⟨(rho 17101 : Seg16.F), (rho 17102 : Seg16.F)⟩
      ⟨(seg16AccX121 rho : Seg16.F), (seg16AccY121 rho : Seg16.F)⟩
      ⟨(rho 17108 : Seg16.F), (rho 17109 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg16_hstep_c10 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg16_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg16_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg16_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg16_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg16_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg16_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg16_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg16_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg16_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg16_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
