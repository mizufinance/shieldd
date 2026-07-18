import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4000 rho ∧ Seg6.relationRow4001 rho ∧ Seg6.relationRow4002 rho ∧ Seg6.relationRow4003 rho ∧ Seg6.relationRow4004 rho ∧ Seg6.relationRow4005 rho ∧ Seg6.relationRow4006 rho ∧ Seg6.relationRow4007 rho ∧ Seg6.relationRow4008 rho ∧ Seg6.relationRow4009 rho ∧ Seg6.relationRow4010 rho ∧ Seg6.relationRow4011 rho ∧ Seg6.relationRow4012 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012⟩

theorem seg6_rung99 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1989 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4397 : Seg6.F), (rho 4398 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩
        ⟨(rho 4397 : Seg6.F), (rho 4398 : Seg6.F)⟩
        ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩
        ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩ := by
  obtain ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012⟩ := seg6_rows99 rho h
  unfold Seg6.relationRow4000 Seg6.relationLc583 at r4000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4000
  unfold Seg6.relationRow4001 Seg6.relationLc584 at r4001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4001
  unfold Seg6.relationRow4002 Seg6.relationLc585 at r4002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4002
  unfold Seg6.relationRow4003 at r4003
  unfold Seg6.relationRow4004 at r4004
  unfold Seg6.relationRow4005 at r4005
  unfold Seg6.relationRow4006 Seg6.relationLc586 at r4006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006
  unfold Seg6.relationRow4007 Seg6.relationLc587 at r4007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4007
  unfold Seg6.relationRow4008 at r4008
  unfold Seg6.relationRow4009 at r4009
  unfold Seg6.relationRow4010 at r4010
  unfold Seg6.relationRow4011 at r4011
  unfold Seg6.relationRow4012 at r4012
  have hrung99 (bit : Bool) (hbit : rho 1989 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4397 : Seg6.F), (rho 4398 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩
        ⟨(rho 4397 : Seg6.F), (rho 4398 : Seg6.F)⟩
        ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩
        ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩ := by
    have hnextx : seg6AccX100 rho = seg6AccX99 rho + rho 4405 := by
      unfold seg6AccX100 seg6AccX99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 99]
      ring
    have hnexty : seg6AccY100 rho = seg6AccY99 rho + rho 4406 := by
      unfold seg6AccY100 seg6AccY99
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 99]
      ring
    have ha0 : (rho 4397 + rho 4398) * (seg6AccX99 rho + seg6AccY99 rho) = rho 4399 := by
      unfold seg6AccX99 seg6AccY99
      linear_combination r4000
    have ha1 : rho 4398 * seg6AccX99 rho = rho 4400 := by
      unfold seg6AccX99
      linear_combination r4001
    have ha2 : rho 4397 * seg6AccY99 rho = rho 4401 := by
      unfold seg6AccY99
      linear_combination r4002
    have ha3 : 3021 * rho 4400 * rho 4401 = rho 4402 := by
      linear_combination r4003
    have ha4 : rho 4403 * (1 + rho 4402) = rho 4400 + rho 4401 := by
      linear_combination r4004
    have ha5 : rho 4404 * (1 - rho 4402) = rho 4399 - rho 4400 - rho 4401 := by
      linear_combination r4005
    have haddx :
        rho 4403 * (1 + 3021 * (rho 4398 * seg6AccX99 rho) * (rho 4397 * seg6AccY99 rho)) =
          rho 4398 * seg6AccX99 rho + rho 4397 * seg6AccY99 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4404 * (1 - 3021 * (rho 4398 * seg6AccX99 rho) * (rho 4397 * seg6AccY99 rho)) =
          (-1) * (rho 4398 * seg6AccX99 rho) - rho 4397 * seg6AccY99 rho +
            (seg6AccY99 rho - seg6AccX99 rho * (-1)) * (rho 4397 + rho 4398) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4404 * (1 - rho 4402) = rho 4399 - rho 4400 - rho 4401 := ha5
        _ = (-1) * rho 4400 - rho 4401 + (seg6AccY99 rho - seg6AccX99 rho * (-1)) * (rho 4397 + rho 4398) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX100 rho = seg6AccX99 rho - Bool.toZMod bit * (seg6AccX99 rho - rho 4403) := by
      have hd : rho 4405 = Bool.toZMod bit * (rho 4403 - seg6AccX99 rho) := by
        rw [← hbit]
        unfold seg6AccX99
        linear_combination -r4006
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY100 rho = seg6AccY99 rho - Bool.toZMod bit * (seg6AccY99 rho - rho 4404) := by
      have hd : rho 4406 = Bool.toZMod bit * (rho 4404 - seg6AccY99 rho) := by
        rw [← hbit]
        unfold seg6AccY99
        linear_combination -r4007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4397 * rho 4398 = rho 4407 := by linear_combination r4008
    have hd1 : rho 4397 * rho 4397 = rho 4408 := by linear_combination r4009
    have hd2 : rho 4398 * rho 4398 = rho 4409 := by linear_combination r4010
    have hd3 : rho 4410 * (rho 4398 * rho 4398 + rho 4397 * rho 4397 * (-1)) = 2 * (rho 4397 * rho 4398) := by
      rw [hd0, hd1, hd2]
      linear_combination r4011
    have hd4 : rho 4411 * (2 - (rho 4398 * rho 4398 + rho 4397 * rho 4397 * (-1))) = rho 4398 * rho 4398 - rho 4397 * rho 4397 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩
      ⟨(rho 4397 : Seg6.F), (rho 4398 : Seg6.F)⟩
      ⟨(rho 4403 : Seg6.F), (rho 4404 : Seg6.F)⟩
      ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩
      ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung99

theorem seg6_rows100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4013 rho ∧ Seg6.relationRow4014 rho ∧ Seg6.relationRow4015 rho ∧ Seg6.relationRow4016 rho ∧ Seg6.relationRow4017 rho ∧ Seg6.relationRow4018 rho ∧ Seg6.relationRow4019 rho ∧ Seg6.relationRow4020 rho ∧ Seg6.relationRow4021 rho ∧ Seg6.relationRow4022 rho ∧ Seg6.relationRow4023 rho ∧ Seg6.relationRow4024 rho ∧ Seg6.relationRow4025 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025⟩

theorem seg6_rung100 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1990 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩
        ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩
        ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩
        ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩ := by
  obtain ⟨r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025⟩ := seg6_rows100 rho h
  unfold Seg6.relationRow4013 Seg6.relationLc588 at r4013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4013
  unfold Seg6.relationRow4014 Seg6.relationLc589 at r4014
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4014
  unfold Seg6.relationRow4015 Seg6.relationLc590 at r4015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4015
  unfold Seg6.relationRow4016 at r4016
  unfold Seg6.relationRow4017 at r4017
  unfold Seg6.relationRow4018 at r4018
  unfold Seg6.relationRow4019 Seg6.relationLc591 at r4019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019
  unfold Seg6.relationRow4020 Seg6.relationLc592 at r4020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4020
  unfold Seg6.relationRow4021 at r4021
  unfold Seg6.relationRow4022 at r4022
  unfold Seg6.relationRow4023 at r4023
  unfold Seg6.relationRow4024 at r4024
  unfold Seg6.relationRow4025 at r4025
  have hrung100 (bit : Bool) (hbit : rho 1990 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩
        ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩
        ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩
        ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩ := by
    have hnextx : seg6AccX101 rho = seg6AccX100 rho + rho 4418 := by
      unfold seg6AccX101 seg6AccX100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 100]
      ring
    have hnexty : seg6AccY101 rho = seg6AccY100 rho + rho 4419 := by
      unfold seg6AccY101 seg6AccY100
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 100]
      ring
    have ha0 : (rho 4410 + rho 4411) * (seg6AccX100 rho + seg6AccY100 rho) = rho 4412 := by
      unfold seg6AccX100 seg6AccY100
      linear_combination r4013
    have ha1 : rho 4411 * seg6AccX100 rho = rho 4413 := by
      unfold seg6AccX100
      linear_combination r4014
    have ha2 : rho 4410 * seg6AccY100 rho = rho 4414 := by
      unfold seg6AccY100
      linear_combination r4015
    have ha3 : 3021 * rho 4413 * rho 4414 = rho 4415 := by
      linear_combination r4016
    have ha4 : rho 4416 * (1 + rho 4415) = rho 4413 + rho 4414 := by
      linear_combination r4017
    have ha5 : rho 4417 * (1 - rho 4415) = rho 4412 - rho 4413 - rho 4414 := by
      linear_combination r4018
    have haddx :
        rho 4416 * (1 + 3021 * (rho 4411 * seg6AccX100 rho) * (rho 4410 * seg6AccY100 rho)) =
          rho 4411 * seg6AccX100 rho + rho 4410 * seg6AccY100 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4417 * (1 - 3021 * (rho 4411 * seg6AccX100 rho) * (rho 4410 * seg6AccY100 rho)) =
          (-1) * (rho 4411 * seg6AccX100 rho) - rho 4410 * seg6AccY100 rho +
            (seg6AccY100 rho - seg6AccX100 rho * (-1)) * (rho 4410 + rho 4411) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4417 * (1 - rho 4415) = rho 4412 - rho 4413 - rho 4414 := ha5
        _ = (-1) * rho 4413 - rho 4414 + (seg6AccY100 rho - seg6AccX100 rho * (-1)) * (rho 4410 + rho 4411) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX101 rho = seg6AccX100 rho - Bool.toZMod bit * (seg6AccX100 rho - rho 4416) := by
      have hd : rho 4418 = Bool.toZMod bit * (rho 4416 - seg6AccX100 rho) := by
        rw [← hbit]
        unfold seg6AccX100
        linear_combination -r4019
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY101 rho = seg6AccY100 rho - Bool.toZMod bit * (seg6AccY100 rho - rho 4417) := by
      have hd : rho 4419 = Bool.toZMod bit * (rho 4417 - seg6AccY100 rho) := by
        rw [← hbit]
        unfold seg6AccY100
        linear_combination -r4020
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4410 * rho 4411 = rho 4420 := by linear_combination r4021
    have hd1 : rho 4410 * rho 4410 = rho 4421 := by linear_combination r4022
    have hd2 : rho 4411 * rho 4411 = rho 4422 := by linear_combination r4023
    have hd3 : rho 4423 * (rho 4411 * rho 4411 + rho 4410 * rho 4410 * (-1)) = 2 * (rho 4410 * rho 4411) := by
      rw [hd0, hd1, hd2]
      linear_combination r4024
    have hd4 : rho 4424 * (2 - (rho 4411 * rho 4411 + rho 4410 * rho 4410 * (-1))) = rho 4411 * rho 4411 - rho 4410 * rho 4410 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4025
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX100 rho : Seg6.F), (seg6AccY100 rho : Seg6.F)⟩
      ⟨(rho 4410 : Seg6.F), (rho 4411 : Seg6.F)⟩
      ⟨(rho 4416 : Seg6.F), (rho 4417 : Seg6.F)⟩
      ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩
      ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung100

theorem seg6_rows101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4026 rho ∧ Seg6.relationRow4027 rho ∧ Seg6.relationRow4028 rho ∧ Seg6.relationRow4029 rho ∧ Seg6.relationRow4030 rho ∧ Seg6.relationRow4031 rho ∧ Seg6.relationRow4032 rho ∧ Seg6.relationRow4033 rho ∧ Seg6.relationRow4034 rho ∧ Seg6.relationRow4035 rho ∧ Seg6.relationRow4036 rho ∧ Seg6.relationRow4037 rho ∧ Seg6.relationRow4038 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038⟩

theorem seg6_rung101 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1991 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩
        ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩
        ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩
        ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩ := by
  obtain ⟨r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038⟩ := seg6_rows101 rho h
  unfold Seg6.relationRow4026 Seg6.relationLc593 at r4026
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4026
  unfold Seg6.relationRow4027 Seg6.relationLc594 at r4027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4027
  unfold Seg6.relationRow4028 Seg6.relationLc595 at r4028
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4028
  unfold Seg6.relationRow4029 at r4029
  unfold Seg6.relationRow4030 at r4030
  unfold Seg6.relationRow4031 at r4031
  unfold Seg6.relationRow4032 Seg6.relationLc596 at r4032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032
  unfold Seg6.relationRow4033 Seg6.relationLc597 at r4033
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4033
  unfold Seg6.relationRow4034 at r4034
  unfold Seg6.relationRow4035 at r4035
  unfold Seg6.relationRow4036 at r4036
  unfold Seg6.relationRow4037 at r4037
  unfold Seg6.relationRow4038 at r4038
  have hrung101 (bit : Bool) (hbit : rho 1991 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩
        ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩
        ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩
        ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩ := by
    have hnextx : seg6AccX102 rho = seg6AccX101 rho + rho 4431 := by
      unfold seg6AccX102 seg6AccX101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 101]
      ring
    have hnexty : seg6AccY102 rho = seg6AccY101 rho + rho 4432 := by
      unfold seg6AccY102 seg6AccY101
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 101]
      ring
    have ha0 : (rho 4423 + rho 4424) * (seg6AccX101 rho + seg6AccY101 rho) = rho 4425 := by
      unfold seg6AccX101 seg6AccY101
      linear_combination r4026
    have ha1 : rho 4424 * seg6AccX101 rho = rho 4426 := by
      unfold seg6AccX101
      linear_combination r4027
    have ha2 : rho 4423 * seg6AccY101 rho = rho 4427 := by
      unfold seg6AccY101
      linear_combination r4028
    have ha3 : 3021 * rho 4426 * rho 4427 = rho 4428 := by
      linear_combination r4029
    have ha4 : rho 4429 * (1 + rho 4428) = rho 4426 + rho 4427 := by
      linear_combination r4030
    have ha5 : rho 4430 * (1 - rho 4428) = rho 4425 - rho 4426 - rho 4427 := by
      linear_combination r4031
    have haddx :
        rho 4429 * (1 + 3021 * (rho 4424 * seg6AccX101 rho) * (rho 4423 * seg6AccY101 rho)) =
          rho 4424 * seg6AccX101 rho + rho 4423 * seg6AccY101 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4430 * (1 - 3021 * (rho 4424 * seg6AccX101 rho) * (rho 4423 * seg6AccY101 rho)) =
          (-1) * (rho 4424 * seg6AccX101 rho) - rho 4423 * seg6AccY101 rho +
            (seg6AccY101 rho - seg6AccX101 rho * (-1)) * (rho 4423 + rho 4424) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4430 * (1 - rho 4428) = rho 4425 - rho 4426 - rho 4427 := ha5
        _ = (-1) * rho 4426 - rho 4427 + (seg6AccY101 rho - seg6AccX101 rho * (-1)) * (rho 4423 + rho 4424) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX102 rho = seg6AccX101 rho - Bool.toZMod bit * (seg6AccX101 rho - rho 4429) := by
      have hd : rho 4431 = Bool.toZMod bit * (rho 4429 - seg6AccX101 rho) := by
        rw [← hbit]
        unfold seg6AccX101
        linear_combination -r4032
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY102 rho = seg6AccY101 rho - Bool.toZMod bit * (seg6AccY101 rho - rho 4430) := by
      have hd : rho 4432 = Bool.toZMod bit * (rho 4430 - seg6AccY101 rho) := by
        rw [← hbit]
        unfold seg6AccY101
        linear_combination -r4033
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4423 * rho 4424 = rho 4433 := by linear_combination r4034
    have hd1 : rho 4423 * rho 4423 = rho 4434 := by linear_combination r4035
    have hd2 : rho 4424 * rho 4424 = rho 4435 := by linear_combination r4036
    have hd3 : rho 4436 * (rho 4424 * rho 4424 + rho 4423 * rho 4423 * (-1)) = 2 * (rho 4423 * rho 4424) := by
      rw [hd0, hd1, hd2]
      linear_combination r4037
    have hd4 : rho 4437 * (2 - (rho 4424 * rho 4424 + rho 4423 * rho 4423 * (-1))) = rho 4424 * rho 4424 - rho 4423 * rho 4423 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4038
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX101 rho : Seg6.F), (seg6AccY101 rho : Seg6.F)⟩
      ⟨(rho 4423 : Seg6.F), (rho 4424 : Seg6.F)⟩
      ⟨(rho 4429 : Seg6.F), (rho 4430 : Seg6.F)⟩
      ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩
      ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung101

theorem seg6_rows102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4039 rho ∧ Seg6.relationRow4040 rho ∧ Seg6.relationRow4041 rho ∧ Seg6.relationRow4042 rho ∧ Seg6.relationRow4043 rho ∧ Seg6.relationRow4044 rho ∧ Seg6.relationRow4045 rho ∧ Seg6.relationRow4046 rho ∧ Seg6.relationRow4047 rho ∧ Seg6.relationRow4048 rho ∧ Seg6.relationRow4049 rho ∧ Seg6.relationRow4050 rho ∧ Seg6.relationRow4051 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051⟩

theorem seg6_rung102 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1992 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩
        ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩
        ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩
        ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩ := by
  obtain ⟨r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051⟩ := seg6_rows102 rho h
  unfold Seg6.relationRow4039 Seg6.relationLc598 at r4039
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4039
  unfold Seg6.relationRow4040 Seg6.relationLc599 at r4040
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4040
  unfold Seg6.relationRow4041 Seg6.relationLc600 at r4041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4041
  unfold Seg6.relationRow4042 at r4042
  unfold Seg6.relationRow4043 at r4043
  unfold Seg6.relationRow4044 at r4044
  unfold Seg6.relationRow4045 Seg6.relationLc601 at r4045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045
  unfold Seg6.relationRow4046 Seg6.relationLc602 at r4046
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4046
  unfold Seg6.relationRow4047 at r4047
  unfold Seg6.relationRow4048 at r4048
  unfold Seg6.relationRow4049 at r4049
  unfold Seg6.relationRow4050 at r4050
  unfold Seg6.relationRow4051 at r4051
  have hrung102 (bit : Bool) (hbit : rho 1992 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩
        ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩
        ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩
        ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩ := by
    have hnextx : seg6AccX103 rho = seg6AccX102 rho + rho 4444 := by
      unfold seg6AccX103 seg6AccX102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 102]
      ring
    have hnexty : seg6AccY103 rho = seg6AccY102 rho + rho 4445 := by
      unfold seg6AccY103 seg6AccY102
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 102]
      ring
    have ha0 : (rho 4436 + rho 4437) * (seg6AccX102 rho + seg6AccY102 rho) = rho 4438 := by
      unfold seg6AccX102 seg6AccY102
      linear_combination r4039
    have ha1 : rho 4437 * seg6AccX102 rho = rho 4439 := by
      unfold seg6AccX102
      linear_combination r4040
    have ha2 : rho 4436 * seg6AccY102 rho = rho 4440 := by
      unfold seg6AccY102
      linear_combination r4041
    have ha3 : 3021 * rho 4439 * rho 4440 = rho 4441 := by
      linear_combination r4042
    have ha4 : rho 4442 * (1 + rho 4441) = rho 4439 + rho 4440 := by
      linear_combination r4043
    have ha5 : rho 4443 * (1 - rho 4441) = rho 4438 - rho 4439 - rho 4440 := by
      linear_combination r4044
    have haddx :
        rho 4442 * (1 + 3021 * (rho 4437 * seg6AccX102 rho) * (rho 4436 * seg6AccY102 rho)) =
          rho 4437 * seg6AccX102 rho + rho 4436 * seg6AccY102 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4443 * (1 - 3021 * (rho 4437 * seg6AccX102 rho) * (rho 4436 * seg6AccY102 rho)) =
          (-1) * (rho 4437 * seg6AccX102 rho) - rho 4436 * seg6AccY102 rho +
            (seg6AccY102 rho - seg6AccX102 rho * (-1)) * (rho 4436 + rho 4437) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4443 * (1 - rho 4441) = rho 4438 - rho 4439 - rho 4440 := ha5
        _ = (-1) * rho 4439 - rho 4440 + (seg6AccY102 rho - seg6AccX102 rho * (-1)) * (rho 4436 + rho 4437) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX103 rho = seg6AccX102 rho - Bool.toZMod bit * (seg6AccX102 rho - rho 4442) := by
      have hd : rho 4444 = Bool.toZMod bit * (rho 4442 - seg6AccX102 rho) := by
        rw [← hbit]
        unfold seg6AccX102
        linear_combination -r4045
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY103 rho = seg6AccY102 rho - Bool.toZMod bit * (seg6AccY102 rho - rho 4443) := by
      have hd : rho 4445 = Bool.toZMod bit * (rho 4443 - seg6AccY102 rho) := by
        rw [← hbit]
        unfold seg6AccY102
        linear_combination -r4046
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4436 * rho 4437 = rho 4446 := by linear_combination r4047
    have hd1 : rho 4436 * rho 4436 = rho 4447 := by linear_combination r4048
    have hd2 : rho 4437 * rho 4437 = rho 4448 := by linear_combination r4049
    have hd3 : rho 4449 * (rho 4437 * rho 4437 + rho 4436 * rho 4436 * (-1)) = 2 * (rho 4436 * rho 4437) := by
      rw [hd0, hd1, hd2]
      linear_combination r4050
    have hd4 : rho 4450 * (2 - (rho 4437 * rho 4437 + rho 4436 * rho 4436 * (-1))) = rho 4437 * rho 4437 - rho 4436 * rho 4436 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4051
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX102 rho : Seg6.F), (seg6AccY102 rho : Seg6.F)⟩
      ⟨(rho 4436 : Seg6.F), (rho 4437 : Seg6.F)⟩
      ⟨(rho 4442 : Seg6.F), (rho 4443 : Seg6.F)⟩
      ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩
      ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung102

theorem seg6_rows103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4052 rho ∧ Seg6.relationRow4053 rho ∧ Seg6.relationRow4054 rho ∧ Seg6.relationRow4055 rho ∧ Seg6.relationRow4056 rho ∧ Seg6.relationRow4057 rho ∧ Seg6.relationRow4058 rho ∧ Seg6.relationRow4059 rho ∧ Seg6.relationRow4060 rho ∧ Seg6.relationRow4061 rho ∧ Seg6.relationRow4062 rho ∧ Seg6.relationRow4063 rho ∧ Seg6.relationRow4064 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064⟩

theorem seg6_rung103 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1993 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩
        ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩
        ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩
        ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩ := by
  obtain ⟨r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064⟩ := seg6_rows103 rho h
  unfold Seg6.relationRow4052 Seg6.relationLc603 at r4052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4052
  unfold Seg6.relationRow4053 Seg6.relationLc604 at r4053
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4053
  unfold Seg6.relationRow4054 Seg6.relationLc605 at r4054
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4054
  unfold Seg6.relationRow4055 at r4055
  unfold Seg6.relationRow4056 at r4056
  unfold Seg6.relationRow4057 at r4057
  unfold Seg6.relationRow4058 Seg6.relationLc606 at r4058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058
  unfold Seg6.relationRow4059 Seg6.relationLc607 at r4059
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4059
  unfold Seg6.relationRow4060 at r4060
  unfold Seg6.relationRow4061 at r4061
  unfold Seg6.relationRow4062 at r4062
  unfold Seg6.relationRow4063 at r4063
  unfold Seg6.relationRow4064 at r4064
  have hrung103 (bit : Bool) (hbit : rho 1993 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩
        ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩
        ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩
        ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩ := by
    have hnextx : seg6AccX104 rho = seg6AccX103 rho + rho 4457 := by
      unfold seg6AccX104 seg6AccX103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 103]
      ring
    have hnexty : seg6AccY104 rho = seg6AccY103 rho + rho 4458 := by
      unfold seg6AccY104 seg6AccY103
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 103]
      ring
    have ha0 : (rho 4449 + rho 4450) * (seg6AccX103 rho + seg6AccY103 rho) = rho 4451 := by
      unfold seg6AccX103 seg6AccY103
      linear_combination r4052
    have ha1 : rho 4450 * seg6AccX103 rho = rho 4452 := by
      unfold seg6AccX103
      linear_combination r4053
    have ha2 : rho 4449 * seg6AccY103 rho = rho 4453 := by
      unfold seg6AccY103
      linear_combination r4054
    have ha3 : 3021 * rho 4452 * rho 4453 = rho 4454 := by
      linear_combination r4055
    have ha4 : rho 4455 * (1 + rho 4454) = rho 4452 + rho 4453 := by
      linear_combination r4056
    have ha5 : rho 4456 * (1 - rho 4454) = rho 4451 - rho 4452 - rho 4453 := by
      linear_combination r4057
    have haddx :
        rho 4455 * (1 + 3021 * (rho 4450 * seg6AccX103 rho) * (rho 4449 * seg6AccY103 rho)) =
          rho 4450 * seg6AccX103 rho + rho 4449 * seg6AccY103 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4456 * (1 - 3021 * (rho 4450 * seg6AccX103 rho) * (rho 4449 * seg6AccY103 rho)) =
          (-1) * (rho 4450 * seg6AccX103 rho) - rho 4449 * seg6AccY103 rho +
            (seg6AccY103 rho - seg6AccX103 rho * (-1)) * (rho 4449 + rho 4450) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4456 * (1 - rho 4454) = rho 4451 - rho 4452 - rho 4453 := ha5
        _ = (-1) * rho 4452 - rho 4453 + (seg6AccY103 rho - seg6AccX103 rho * (-1)) * (rho 4449 + rho 4450) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX104 rho = seg6AccX103 rho - Bool.toZMod bit * (seg6AccX103 rho - rho 4455) := by
      have hd : rho 4457 = Bool.toZMod bit * (rho 4455 - seg6AccX103 rho) := by
        rw [← hbit]
        unfold seg6AccX103
        linear_combination -r4058
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY104 rho = seg6AccY103 rho - Bool.toZMod bit * (seg6AccY103 rho - rho 4456) := by
      have hd : rho 4458 = Bool.toZMod bit * (rho 4456 - seg6AccY103 rho) := by
        rw [← hbit]
        unfold seg6AccY103
        linear_combination -r4059
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4449 * rho 4450 = rho 4459 := by linear_combination r4060
    have hd1 : rho 4449 * rho 4449 = rho 4460 := by linear_combination r4061
    have hd2 : rho 4450 * rho 4450 = rho 4461 := by linear_combination r4062
    have hd3 : rho 4462 * (rho 4450 * rho 4450 + rho 4449 * rho 4449 * (-1)) = 2 * (rho 4449 * rho 4450) := by
      rw [hd0, hd1, hd2]
      linear_combination r4063
    have hd4 : rho 4463 * (2 - (rho 4450 * rho 4450 + rho 4449 * rho 4449 * (-1))) = rho 4450 * rho 4450 - rho 4449 * rho 4449 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4064
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX103 rho : Seg6.F), (seg6AccY103 rho : Seg6.F)⟩
      ⟨(rho 4449 : Seg6.F), (rho 4450 : Seg6.F)⟩
      ⟨(rho 4455 : Seg6.F), (rho 4456 : Seg6.F)⟩
      ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩
      ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung103

theorem seg6_rows104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4065 rho ∧ Seg6.relationRow4066 rho ∧ Seg6.relationRow4067 rho ∧ Seg6.relationRow4068 rho ∧ Seg6.relationRow4069 rho ∧ Seg6.relationRow4070 rho ∧ Seg6.relationRow4071 rho ∧ Seg6.relationRow4072 rho ∧ Seg6.relationRow4073 rho ∧ Seg6.relationRow4074 rho ∧ Seg6.relationRow4075 rho ∧ Seg6.relationRow4076 rho ∧ Seg6.relationRow4077 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, _, _⟩
  exact ⟨r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077⟩

theorem seg6_rung104 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1994 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩
        ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩
        ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩
        ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩ := by
  obtain ⟨r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077⟩ := seg6_rows104 rho h
  unfold Seg6.relationRow4065 Seg6.relationLc608 at r4065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4065
  unfold Seg6.relationRow4066 Seg6.relationLc609 at r4066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4066
  unfold Seg6.relationRow4067 Seg6.relationLc610 at r4067
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4067
  unfold Seg6.relationRow4068 at r4068
  unfold Seg6.relationRow4069 at r4069
  unfold Seg6.relationRow4070 at r4070
  unfold Seg6.relationRow4071 Seg6.relationLc611 at r4071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071
  unfold Seg6.relationRow4072 Seg6.relationLc612 at r4072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4072
  unfold Seg6.relationRow4073 at r4073
  unfold Seg6.relationRow4074 at r4074
  unfold Seg6.relationRow4075 at r4075
  unfold Seg6.relationRow4076 at r4076
  unfold Seg6.relationRow4077 at r4077
  have hrung104 (bit : Bool) (hbit : rho 1994 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩
        ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩
        ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩
        ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩ := by
    have hnextx : seg6AccX105 rho = seg6AccX104 rho + rho 4470 := by
      unfold seg6AccX105 seg6AccX104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 104]
      ring
    have hnexty : seg6AccY105 rho = seg6AccY104 rho + rho 4471 := by
      unfold seg6AccY105 seg6AccY104
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 104]
      ring
    have ha0 : (rho 4462 + rho 4463) * (seg6AccX104 rho + seg6AccY104 rho) = rho 4464 := by
      unfold seg6AccX104 seg6AccY104
      linear_combination r4065
    have ha1 : rho 4463 * seg6AccX104 rho = rho 4465 := by
      unfold seg6AccX104
      linear_combination r4066
    have ha2 : rho 4462 * seg6AccY104 rho = rho 4466 := by
      unfold seg6AccY104
      linear_combination r4067
    have ha3 : 3021 * rho 4465 * rho 4466 = rho 4467 := by
      linear_combination r4068
    have ha4 : rho 4468 * (1 + rho 4467) = rho 4465 + rho 4466 := by
      linear_combination r4069
    have ha5 : rho 4469 * (1 - rho 4467) = rho 4464 - rho 4465 - rho 4466 := by
      linear_combination r4070
    have haddx :
        rho 4468 * (1 + 3021 * (rho 4463 * seg6AccX104 rho) * (rho 4462 * seg6AccY104 rho)) =
          rho 4463 * seg6AccX104 rho + rho 4462 * seg6AccY104 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4469 * (1 - 3021 * (rho 4463 * seg6AccX104 rho) * (rho 4462 * seg6AccY104 rho)) =
          (-1) * (rho 4463 * seg6AccX104 rho) - rho 4462 * seg6AccY104 rho +
            (seg6AccY104 rho - seg6AccX104 rho * (-1)) * (rho 4462 + rho 4463) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4469 * (1 - rho 4467) = rho 4464 - rho 4465 - rho 4466 := ha5
        _ = (-1) * rho 4465 - rho 4466 + (seg6AccY104 rho - seg6AccX104 rho * (-1)) * (rho 4462 + rho 4463) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX105 rho = seg6AccX104 rho - Bool.toZMod bit * (seg6AccX104 rho - rho 4468) := by
      have hd : rho 4470 = Bool.toZMod bit * (rho 4468 - seg6AccX104 rho) := by
        rw [← hbit]
        unfold seg6AccX104
        linear_combination -r4071
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY105 rho = seg6AccY104 rho - Bool.toZMod bit * (seg6AccY104 rho - rho 4469) := by
      have hd : rho 4471 = Bool.toZMod bit * (rho 4469 - seg6AccY104 rho) := by
        rw [← hbit]
        unfold seg6AccY104
        linear_combination -r4072
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4462 * rho 4463 = rho 4472 := by linear_combination r4073
    have hd1 : rho 4462 * rho 4462 = rho 4473 := by linear_combination r4074
    have hd2 : rho 4463 * rho 4463 = rho 4474 := by linear_combination r4075
    have hd3 : rho 4475 * (rho 4463 * rho 4463 + rho 4462 * rho 4462 * (-1)) = 2 * (rho 4462 * rho 4463) := by
      rw [hd0, hd1, hd2]
      linear_combination r4076
    have hd4 : rho 4476 * (2 - (rho 4463 * rho 4463 + rho 4462 * rho 4462 * (-1))) = rho 4463 * rho 4463 - rho 4462 * rho 4462 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4077
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX104 rho : Seg6.F), (seg6AccY104 rho : Seg6.F)⟩
      ⟨(rho 4462 : Seg6.F), (rho 4463 : Seg6.F)⟩
      ⟨(rho 4468 : Seg6.F), (rho 4469 : Seg6.F)⟩
      ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩
      ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung104

theorem seg6_rows105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4078 rho ∧ Seg6.relationRow4079 rho ∧ Seg6.relationRow4080 rho ∧ Seg6.relationRow4081 rho ∧ Seg6.relationRow4082 rho ∧ Seg6.relationRow4083 rho ∧ Seg6.relationRow4084 rho ∧ Seg6.relationRow4085 rho ∧ Seg6.relationRow4086 rho ∧ Seg6.relationRow4087 rho ∧ Seg6.relationRow4088 rho ∧ Seg6.relationRow4089 rho ∧ Seg6.relationRow4090 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4078, r4079⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090⟩

theorem seg6_rung105 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1995 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩
        ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩
        ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩
        ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩ := by
  obtain ⟨r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090⟩ := seg6_rows105 rho h
  unfold Seg6.relationRow4078 Seg6.relationLc613 at r4078
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4078
  unfold Seg6.relationRow4079 Seg6.relationLc614 at r4079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4079
  unfold Seg6.relationRow4080 Seg6.relationLc615 at r4080
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4080
  unfold Seg6.relationRow4081 at r4081
  unfold Seg6.relationRow4082 at r4082
  unfold Seg6.relationRow4083 at r4083
  unfold Seg6.relationRow4084 Seg6.relationLc616 at r4084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084
  unfold Seg6.relationRow4085 Seg6.relationLc617 at r4085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4085
  unfold Seg6.relationRow4086 at r4086
  unfold Seg6.relationRow4087 at r4087
  unfold Seg6.relationRow4088 at r4088
  unfold Seg6.relationRow4089 at r4089
  unfold Seg6.relationRow4090 at r4090
  have hrung105 (bit : Bool) (hbit : rho 1995 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩
        ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩
        ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩
        ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩ := by
    have hnextx : seg6AccX106 rho = seg6AccX105 rho + rho 4483 := by
      unfold seg6AccX106 seg6AccX105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 105]
      ring
    have hnexty : seg6AccY106 rho = seg6AccY105 rho + rho 4484 := by
      unfold seg6AccY106 seg6AccY105
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 105]
      ring
    have ha0 : (rho 4475 + rho 4476) * (seg6AccX105 rho + seg6AccY105 rho) = rho 4477 := by
      unfold seg6AccX105 seg6AccY105
      linear_combination r4078
    have ha1 : rho 4476 * seg6AccX105 rho = rho 4478 := by
      unfold seg6AccX105
      linear_combination r4079
    have ha2 : rho 4475 * seg6AccY105 rho = rho 4479 := by
      unfold seg6AccY105
      linear_combination r4080
    have ha3 : 3021 * rho 4478 * rho 4479 = rho 4480 := by
      linear_combination r4081
    have ha4 : rho 4481 * (1 + rho 4480) = rho 4478 + rho 4479 := by
      linear_combination r4082
    have ha5 : rho 4482 * (1 - rho 4480) = rho 4477 - rho 4478 - rho 4479 := by
      linear_combination r4083
    have haddx :
        rho 4481 * (1 + 3021 * (rho 4476 * seg6AccX105 rho) * (rho 4475 * seg6AccY105 rho)) =
          rho 4476 * seg6AccX105 rho + rho 4475 * seg6AccY105 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4482 * (1 - 3021 * (rho 4476 * seg6AccX105 rho) * (rho 4475 * seg6AccY105 rho)) =
          (-1) * (rho 4476 * seg6AccX105 rho) - rho 4475 * seg6AccY105 rho +
            (seg6AccY105 rho - seg6AccX105 rho * (-1)) * (rho 4475 + rho 4476) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4482 * (1 - rho 4480) = rho 4477 - rho 4478 - rho 4479 := ha5
        _ = (-1) * rho 4478 - rho 4479 + (seg6AccY105 rho - seg6AccX105 rho * (-1)) * (rho 4475 + rho 4476) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX106 rho = seg6AccX105 rho - Bool.toZMod bit * (seg6AccX105 rho - rho 4481) := by
      have hd : rho 4483 = Bool.toZMod bit * (rho 4481 - seg6AccX105 rho) := by
        rw [← hbit]
        unfold seg6AccX105
        linear_combination -r4084
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY106 rho = seg6AccY105 rho - Bool.toZMod bit * (seg6AccY105 rho - rho 4482) := by
      have hd : rho 4484 = Bool.toZMod bit * (rho 4482 - seg6AccY105 rho) := by
        rw [← hbit]
        unfold seg6AccY105
        linear_combination -r4085
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4475 * rho 4476 = rho 4485 := by linear_combination r4086
    have hd1 : rho 4475 * rho 4475 = rho 4486 := by linear_combination r4087
    have hd2 : rho 4476 * rho 4476 = rho 4487 := by linear_combination r4088
    have hd3 : rho 4488 * (rho 4476 * rho 4476 + rho 4475 * rho 4475 * (-1)) = 2 * (rho 4475 * rho 4476) := by
      rw [hd0, hd1, hd2]
      linear_combination r4089
    have hd4 : rho 4489 * (2 - (rho 4476 * rho 4476 + rho 4475 * rho 4475 * (-1))) = rho 4476 * rho 4476 - rho 4475 * rho 4475 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX105 rho : Seg6.F), (seg6AccY105 rho : Seg6.F)⟩
      ⟨(rho 4475 : Seg6.F), (rho 4476 : Seg6.F)⟩
      ⟨(rho 4481 : Seg6.F), (rho 4482 : Seg6.F)⟩
      ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩
      ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung105

theorem seg6_rows106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4091 rho ∧ Seg6.relationRow4092 rho ∧ Seg6.relationRow4093 rho ∧ Seg6.relationRow4094 rho ∧ Seg6.relationRow4095 rho ∧ Seg6.relationRow4096 rho ∧ Seg6.relationRow4097 rho ∧ Seg6.relationRow4098 rho ∧ Seg6.relationRow4099 rho ∧ Seg6.relationRow4100 rho ∧ Seg6.relationRow4101 rho ∧ Seg6.relationRow4102 rho ∧ Seg6.relationRow4103 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103⟩

theorem seg6_rung106 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1996 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩
        ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩
        ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩
        ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩ := by
  obtain ⟨r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103⟩ := seg6_rows106 rho h
  unfold Seg6.relationRow4091 Seg6.relationLc618 at r4091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4091
  unfold Seg6.relationRow4092 Seg6.relationLc619 at r4092
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4092
  unfold Seg6.relationRow4093 Seg6.relationLc620 at r4093
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4093
  unfold Seg6.relationRow4094 at r4094
  unfold Seg6.relationRow4095 at r4095
  unfold Seg6.relationRow4096 at r4096
  unfold Seg6.relationRow4097 Seg6.relationLc621 at r4097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097
  unfold Seg6.relationRow4098 Seg6.relationLc622 at r4098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4098
  unfold Seg6.relationRow4099 at r4099
  unfold Seg6.relationRow4100 at r4100
  unfold Seg6.relationRow4101 at r4101
  unfold Seg6.relationRow4102 at r4102
  unfold Seg6.relationRow4103 at r4103
  have hrung106 (bit : Bool) (hbit : rho 1996 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩
        ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩
        ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩
        ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩ := by
    have hnextx : seg6AccX107 rho = seg6AccX106 rho + rho 4496 := by
      unfold seg6AccX107 seg6AccX106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 106]
      ring
    have hnexty : seg6AccY107 rho = seg6AccY106 rho + rho 4497 := by
      unfold seg6AccY107 seg6AccY106
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 106]
      ring
    have ha0 : (rho 4488 + rho 4489) * (seg6AccX106 rho + seg6AccY106 rho) = rho 4490 := by
      unfold seg6AccX106 seg6AccY106
      linear_combination r4091
    have ha1 : rho 4489 * seg6AccX106 rho = rho 4491 := by
      unfold seg6AccX106
      linear_combination r4092
    have ha2 : rho 4488 * seg6AccY106 rho = rho 4492 := by
      unfold seg6AccY106
      linear_combination r4093
    have ha3 : 3021 * rho 4491 * rho 4492 = rho 4493 := by
      linear_combination r4094
    have ha4 : rho 4494 * (1 + rho 4493) = rho 4491 + rho 4492 := by
      linear_combination r4095
    have ha5 : rho 4495 * (1 - rho 4493) = rho 4490 - rho 4491 - rho 4492 := by
      linear_combination r4096
    have haddx :
        rho 4494 * (1 + 3021 * (rho 4489 * seg6AccX106 rho) * (rho 4488 * seg6AccY106 rho)) =
          rho 4489 * seg6AccX106 rho + rho 4488 * seg6AccY106 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4495 * (1 - 3021 * (rho 4489 * seg6AccX106 rho) * (rho 4488 * seg6AccY106 rho)) =
          (-1) * (rho 4489 * seg6AccX106 rho) - rho 4488 * seg6AccY106 rho +
            (seg6AccY106 rho - seg6AccX106 rho * (-1)) * (rho 4488 + rho 4489) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4495 * (1 - rho 4493) = rho 4490 - rho 4491 - rho 4492 := ha5
        _ = (-1) * rho 4491 - rho 4492 + (seg6AccY106 rho - seg6AccX106 rho * (-1)) * (rho 4488 + rho 4489) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX107 rho = seg6AccX106 rho - Bool.toZMod bit * (seg6AccX106 rho - rho 4494) := by
      have hd : rho 4496 = Bool.toZMod bit * (rho 4494 - seg6AccX106 rho) := by
        rw [← hbit]
        unfold seg6AccX106
        linear_combination -r4097
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY107 rho = seg6AccY106 rho - Bool.toZMod bit * (seg6AccY106 rho - rho 4495) := by
      have hd : rho 4497 = Bool.toZMod bit * (rho 4495 - seg6AccY106 rho) := by
        rw [← hbit]
        unfold seg6AccY106
        linear_combination -r4098
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4488 * rho 4489 = rho 4498 := by linear_combination r4099
    have hd1 : rho 4488 * rho 4488 = rho 4499 := by linear_combination r4100
    have hd2 : rho 4489 * rho 4489 = rho 4500 := by linear_combination r4101
    have hd3 : rho 4501 * (rho 4489 * rho 4489 + rho 4488 * rho 4488 * (-1)) = 2 * (rho 4488 * rho 4489) := by
      rw [hd0, hd1, hd2]
      linear_combination r4102
    have hd4 : rho 4502 * (2 - (rho 4489 * rho 4489 + rho 4488 * rho 4488 * (-1))) = rho 4489 * rho 4489 - rho 4488 * rho 4488 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4103
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX106 rho : Seg6.F), (seg6AccY106 rho : Seg6.F)⟩
      ⟨(rho 4488 : Seg6.F), (rho 4489 : Seg6.F)⟩
      ⟨(rho 4494 : Seg6.F), (rho 4495 : Seg6.F)⟩
      ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩
      ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung106

theorem seg6_rows107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4104 rho ∧ Seg6.relationRow4105 rho ∧ Seg6.relationRow4106 rho ∧ Seg6.relationRow4107 rho ∧ Seg6.relationRow4108 rho ∧ Seg6.relationRow4109 rho ∧ Seg6.relationRow4110 rho ∧ Seg6.relationRow4111 rho ∧ Seg6.relationRow4112 rho ∧ Seg6.relationRow4113 rho ∧ Seg6.relationRow4114 rho ∧ Seg6.relationRow4115 rho ∧ Seg6.relationRow4116 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116⟩

theorem seg6_rung107 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1997 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩
        ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩
        ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩
        ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩ := by
  obtain ⟨r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116⟩ := seg6_rows107 rho h
  unfold Seg6.relationRow4104 Seg6.relationLc623 at r4104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4104
  unfold Seg6.relationRow4105 Seg6.relationLc624 at r4105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4105
  unfold Seg6.relationRow4106 Seg6.relationLc625 at r4106
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4106
  unfold Seg6.relationRow4107 at r4107
  unfold Seg6.relationRow4108 at r4108
  unfold Seg6.relationRow4109 at r4109
  unfold Seg6.relationRow4110 Seg6.relationLc626 at r4110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110
  unfold Seg6.relationRow4111 Seg6.relationLc627 at r4111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4111
  unfold Seg6.relationRow4112 at r4112
  unfold Seg6.relationRow4113 at r4113
  unfold Seg6.relationRow4114 at r4114
  unfold Seg6.relationRow4115 at r4115
  unfold Seg6.relationRow4116 at r4116
  have hrung107 (bit : Bool) (hbit : rho 1997 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩
        ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩
        ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩
        ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩ := by
    have hnextx : seg6AccX108 rho = seg6AccX107 rho + rho 4509 := by
      unfold seg6AccX108 seg6AccX107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 107]
      ring
    have hnexty : seg6AccY108 rho = seg6AccY107 rho + rho 4510 := by
      unfold seg6AccY108 seg6AccY107
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 107]
      ring
    have ha0 : (rho 4501 + rho 4502) * (seg6AccX107 rho + seg6AccY107 rho) = rho 4503 := by
      unfold seg6AccX107 seg6AccY107
      linear_combination r4104
    have ha1 : rho 4502 * seg6AccX107 rho = rho 4504 := by
      unfold seg6AccX107
      linear_combination r4105
    have ha2 : rho 4501 * seg6AccY107 rho = rho 4505 := by
      unfold seg6AccY107
      linear_combination r4106
    have ha3 : 3021 * rho 4504 * rho 4505 = rho 4506 := by
      linear_combination r4107
    have ha4 : rho 4507 * (1 + rho 4506) = rho 4504 + rho 4505 := by
      linear_combination r4108
    have ha5 : rho 4508 * (1 - rho 4506) = rho 4503 - rho 4504 - rho 4505 := by
      linear_combination r4109
    have haddx :
        rho 4507 * (1 + 3021 * (rho 4502 * seg6AccX107 rho) * (rho 4501 * seg6AccY107 rho)) =
          rho 4502 * seg6AccX107 rho + rho 4501 * seg6AccY107 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4508 * (1 - 3021 * (rho 4502 * seg6AccX107 rho) * (rho 4501 * seg6AccY107 rho)) =
          (-1) * (rho 4502 * seg6AccX107 rho) - rho 4501 * seg6AccY107 rho +
            (seg6AccY107 rho - seg6AccX107 rho * (-1)) * (rho 4501 + rho 4502) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4508 * (1 - rho 4506) = rho 4503 - rho 4504 - rho 4505 := ha5
        _ = (-1) * rho 4504 - rho 4505 + (seg6AccY107 rho - seg6AccX107 rho * (-1)) * (rho 4501 + rho 4502) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX108 rho = seg6AccX107 rho - Bool.toZMod bit * (seg6AccX107 rho - rho 4507) := by
      have hd : rho 4509 = Bool.toZMod bit * (rho 4507 - seg6AccX107 rho) := by
        rw [← hbit]
        unfold seg6AccX107
        linear_combination -r4110
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY108 rho = seg6AccY107 rho - Bool.toZMod bit * (seg6AccY107 rho - rho 4508) := by
      have hd : rho 4510 = Bool.toZMod bit * (rho 4508 - seg6AccY107 rho) := by
        rw [← hbit]
        unfold seg6AccY107
        linear_combination -r4111
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4501 * rho 4502 = rho 4511 := by linear_combination r4112
    have hd1 : rho 4501 * rho 4501 = rho 4512 := by linear_combination r4113
    have hd2 : rho 4502 * rho 4502 = rho 4513 := by linear_combination r4114
    have hd3 : rho 4514 * (rho 4502 * rho 4502 + rho 4501 * rho 4501 * (-1)) = 2 * (rho 4501 * rho 4502) := by
      rw [hd0, hd1, hd2]
      linear_combination r4115
    have hd4 : rho 4515 * (2 - (rho 4502 * rho 4502 + rho 4501 * rho 4501 * (-1))) = rho 4502 * rho 4502 - rho 4501 * rho 4501 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4116
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX107 rho : Seg6.F), (seg6AccY107 rho : Seg6.F)⟩
      ⟨(rho 4501 : Seg6.F), (rho 4502 : Seg6.F)⟩
      ⟨(rho 4507 : Seg6.F), (rho 4508 : Seg6.F)⟩
      ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩
      ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung107

theorem seg6_rows108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4117 rho ∧ Seg6.relationRow4118 rho ∧ Seg6.relationRow4119 rho ∧ Seg6.relationRow4120 rho ∧ Seg6.relationRow4121 rho ∧ Seg6.relationRow4122 rho ∧ Seg6.relationRow4123 rho ∧ Seg6.relationRow4124 rho ∧ Seg6.relationRow4125 rho ∧ Seg6.relationRow4126 rho ∧ Seg6.relationRow4127 rho ∧ Seg6.relationRow4128 rho ∧ Seg6.relationRow4129 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129⟩

theorem seg6_rung108 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1998 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩
        ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩
        ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩
        ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩ := by
  obtain ⟨r4117, r4118, r4119, r4120, r4121, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129⟩ := seg6_rows108 rho h
  unfold Seg6.relationRow4117 Seg6.relationLc628 at r4117
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4117
  unfold Seg6.relationRow4118 Seg6.relationLc629 at r4118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4118
  unfold Seg6.relationRow4119 Seg6.relationLc630 at r4119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4119
  unfold Seg6.relationRow4120 at r4120
  unfold Seg6.relationRow4121 at r4121
  unfold Seg6.relationRow4122 at r4122
  unfold Seg6.relationRow4123 Seg6.relationLc631 at r4123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123
  unfold Seg6.relationRow4124 Seg6.relationLc632 at r4124
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4124
  unfold Seg6.relationRow4125 at r4125
  unfold Seg6.relationRow4126 at r4126
  unfold Seg6.relationRow4127 at r4127
  unfold Seg6.relationRow4128 at r4128
  unfold Seg6.relationRow4129 at r4129
  have hrung108 (bit : Bool) (hbit : rho 1998 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩
        ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩
        ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩
        ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩ := by
    have hnextx : seg6AccX109 rho = seg6AccX108 rho + rho 4522 := by
      unfold seg6AccX109 seg6AccX108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 108]
      ring
    have hnexty : seg6AccY109 rho = seg6AccY108 rho + rho 4523 := by
      unfold seg6AccY109 seg6AccY108
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 108]
      ring
    have ha0 : (rho 4514 + rho 4515) * (seg6AccX108 rho + seg6AccY108 rho) = rho 4516 := by
      unfold seg6AccX108 seg6AccY108
      linear_combination r4117
    have ha1 : rho 4515 * seg6AccX108 rho = rho 4517 := by
      unfold seg6AccX108
      linear_combination r4118
    have ha2 : rho 4514 * seg6AccY108 rho = rho 4518 := by
      unfold seg6AccY108
      linear_combination r4119
    have ha3 : 3021 * rho 4517 * rho 4518 = rho 4519 := by
      linear_combination r4120
    have ha4 : rho 4520 * (1 + rho 4519) = rho 4517 + rho 4518 := by
      linear_combination r4121
    have ha5 : rho 4521 * (1 - rho 4519) = rho 4516 - rho 4517 - rho 4518 := by
      linear_combination r4122
    have haddx :
        rho 4520 * (1 + 3021 * (rho 4515 * seg6AccX108 rho) * (rho 4514 * seg6AccY108 rho)) =
          rho 4515 * seg6AccX108 rho + rho 4514 * seg6AccY108 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4521 * (1 - 3021 * (rho 4515 * seg6AccX108 rho) * (rho 4514 * seg6AccY108 rho)) =
          (-1) * (rho 4515 * seg6AccX108 rho) - rho 4514 * seg6AccY108 rho +
            (seg6AccY108 rho - seg6AccX108 rho * (-1)) * (rho 4514 + rho 4515) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4521 * (1 - rho 4519) = rho 4516 - rho 4517 - rho 4518 := ha5
        _ = (-1) * rho 4517 - rho 4518 + (seg6AccY108 rho - seg6AccX108 rho * (-1)) * (rho 4514 + rho 4515) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX109 rho = seg6AccX108 rho - Bool.toZMod bit * (seg6AccX108 rho - rho 4520) := by
      have hd : rho 4522 = Bool.toZMod bit * (rho 4520 - seg6AccX108 rho) := by
        rw [← hbit]
        unfold seg6AccX108
        linear_combination -r4123
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY109 rho = seg6AccY108 rho - Bool.toZMod bit * (seg6AccY108 rho - rho 4521) := by
      have hd : rho 4523 = Bool.toZMod bit * (rho 4521 - seg6AccY108 rho) := by
        rw [← hbit]
        unfold seg6AccY108
        linear_combination -r4124
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4514 * rho 4515 = rho 4524 := by linear_combination r4125
    have hd1 : rho 4514 * rho 4514 = rho 4525 := by linear_combination r4126
    have hd2 : rho 4515 * rho 4515 = rho 4526 := by linear_combination r4127
    have hd3 : rho 4527 * (rho 4515 * rho 4515 + rho 4514 * rho 4514 * (-1)) = 2 * (rho 4514 * rho 4515) := by
      rw [hd0, hd1, hd2]
      linear_combination r4128
    have hd4 : rho 4528 * (2 - (rho 4515 * rho 4515 + rho 4514 * rho 4514 * (-1))) = rho 4515 * rho 4515 - rho 4514 * rho 4514 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4129
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX108 rho : Seg6.F), (seg6AccY108 rho : Seg6.F)⟩
      ⟨(rho 4514 : Seg6.F), (rho 4515 : Seg6.F)⟩
      ⟨(rho 4520 : Seg6.F), (rho 4521 : Seg6.F)⟩
      ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩
      ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung108

theorem seg6_rows109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4130 rho ∧ Seg6.relationRow4131 rho ∧ Seg6.relationRow4132 rho ∧ Seg6.relationRow4133 rho ∧ Seg6.relationRow4134 rho ∧ Seg6.relationRow4135 rho ∧ Seg6.relationRow4136 rho ∧ Seg6.relationRow4137 rho ∧ Seg6.relationRow4138 rho ∧ Seg6.relationRow4139 rho ∧ Seg6.relationRow4140 rho ∧ Seg6.relationRow4141 rho ∧ Seg6.relationRow4142 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142⟩

theorem seg6_rung109 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1999 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩
        ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩
        ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩
        ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩ := by
  obtain ⟨r4130, r4131, r4132, r4133, r4134, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142⟩ := seg6_rows109 rho h
  unfold Seg6.relationRow4130 Seg6.relationLc633 at r4130
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4130
  unfold Seg6.relationRow4131 Seg6.relationLc634 at r4131
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4131
  unfold Seg6.relationRow4132 Seg6.relationLc635 at r4132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4132
  unfold Seg6.relationRow4133 at r4133
  unfold Seg6.relationRow4134 at r4134
  unfold Seg6.relationRow4135 at r4135
  unfold Seg6.relationRow4136 Seg6.relationLc636 at r4136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136
  unfold Seg6.relationRow4137 Seg6.relationLc637 at r4137
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4137
  unfold Seg6.relationRow4138 at r4138
  unfold Seg6.relationRow4139 at r4139
  unfold Seg6.relationRow4140 at r4140
  unfold Seg6.relationRow4141 at r4141
  unfold Seg6.relationRow4142 at r4142
  have hrung109 (bit : Bool) (hbit : rho 1999 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩
        ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩
        ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩
        ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩ := by
    have hnextx : seg6AccX110 rho = seg6AccX109 rho + rho 4535 := by
      unfold seg6AccX110 seg6AccX109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 109]
      ring
    have hnexty : seg6AccY110 rho = seg6AccY109 rho + rho 4536 := by
      unfold seg6AccY110 seg6AccY109
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 109]
      ring
    have ha0 : (rho 4527 + rho 4528) * (seg6AccX109 rho + seg6AccY109 rho) = rho 4529 := by
      unfold seg6AccX109 seg6AccY109
      linear_combination r4130
    have ha1 : rho 4528 * seg6AccX109 rho = rho 4530 := by
      unfold seg6AccX109
      linear_combination r4131
    have ha2 : rho 4527 * seg6AccY109 rho = rho 4531 := by
      unfold seg6AccY109
      linear_combination r4132
    have ha3 : 3021 * rho 4530 * rho 4531 = rho 4532 := by
      linear_combination r4133
    have ha4 : rho 4533 * (1 + rho 4532) = rho 4530 + rho 4531 := by
      linear_combination r4134
    have ha5 : rho 4534 * (1 - rho 4532) = rho 4529 - rho 4530 - rho 4531 := by
      linear_combination r4135
    have haddx :
        rho 4533 * (1 + 3021 * (rho 4528 * seg6AccX109 rho) * (rho 4527 * seg6AccY109 rho)) =
          rho 4528 * seg6AccX109 rho + rho 4527 * seg6AccY109 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4534 * (1 - 3021 * (rho 4528 * seg6AccX109 rho) * (rho 4527 * seg6AccY109 rho)) =
          (-1) * (rho 4528 * seg6AccX109 rho) - rho 4527 * seg6AccY109 rho +
            (seg6AccY109 rho - seg6AccX109 rho * (-1)) * (rho 4527 + rho 4528) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4534 * (1 - rho 4532) = rho 4529 - rho 4530 - rho 4531 := ha5
        _ = (-1) * rho 4530 - rho 4531 + (seg6AccY109 rho - seg6AccX109 rho * (-1)) * (rho 4527 + rho 4528) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX110 rho = seg6AccX109 rho - Bool.toZMod bit * (seg6AccX109 rho - rho 4533) := by
      have hd : rho 4535 = Bool.toZMod bit * (rho 4533 - seg6AccX109 rho) := by
        rw [← hbit]
        unfold seg6AccX109
        linear_combination -r4136
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY110 rho = seg6AccY109 rho - Bool.toZMod bit * (seg6AccY109 rho - rho 4534) := by
      have hd : rho 4536 = Bool.toZMod bit * (rho 4534 - seg6AccY109 rho) := by
        rw [← hbit]
        unfold seg6AccY109
        linear_combination -r4137
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4527 * rho 4528 = rho 4537 := by linear_combination r4138
    have hd1 : rho 4527 * rho 4527 = rho 4538 := by linear_combination r4139
    have hd2 : rho 4528 * rho 4528 = rho 4539 := by linear_combination r4140
    have hd3 : rho 4540 * (rho 4528 * rho 4528 + rho 4527 * rho 4527 * (-1)) = 2 * (rho 4527 * rho 4528) := by
      rw [hd0, hd1, hd2]
      linear_combination r4141
    have hd4 : rho 4541 * (2 - (rho 4528 * rho 4528 + rho 4527 * rho 4527 * (-1))) = rho 4528 * rho 4528 - rho 4527 * rho 4527 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4142
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX109 rho : Seg6.F), (seg6AccY109 rho : Seg6.F)⟩
      ⟨(rho 4527 : Seg6.F), (rho 4528 : Seg6.F)⟩
      ⟨(rho 4533 : Seg6.F), (rho 4534 : Seg6.F)⟩
      ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩
      ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung109

theorem seg6_hstep_c9 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg6_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg6_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg6_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg6_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg6_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg6_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg6_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg6_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg6_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg6_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
