import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4429 rho ∧ Seg6.relationRow4430 rho ∧ Seg6.relationRow4431 rho ∧ Seg6.relationRow4432 rho ∧ Seg6.relationRow4433 rho ∧ Seg6.relationRow4434 rho ∧ Seg6.relationRow4435 rho ∧ Seg6.relationRow4436 rho ∧ Seg6.relationRow4437 rho ∧ Seg6.relationRow4438 rho ∧ Seg6.relationRow4439 rho ∧ Seg6.relationRow4440 rho ∧ Seg6.relationRow4441 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441⟩

theorem seg6_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2022 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4826 : Seg6.F), (rho 4827 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩
        ⟨(rho 4826 : Seg6.F), (rho 4827 : Seg6.F)⟩
        ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩
        ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩ := by
  obtain ⟨r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441⟩ := seg6_rows132 rho h
  unfold Seg6.relationRow4429 at r4429
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4429
  unfold Seg6.relationRow4430 at r4430
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4430
  unfold Seg6.relationRow4431 at r4431
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4431
  unfold Seg6.relationRow4432 at r4432
  unfold Seg6.relationRow4433 at r4433
  unfold Seg6.relationRow4434 at r4434
  unfold Seg6.relationRow4435 at r4435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4435
  unfold Seg6.relationRow4436 at r4436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4436
  unfold Seg6.relationRow4437 at r4437
  unfold Seg6.relationRow4438 at r4438
  unfold Seg6.relationRow4439 at r4439
  unfold Seg6.relationRow4440 at r4440
  unfold Seg6.relationRow4441 at r4441
  have hrung132 (bit : Bool) (hbit : rho 2022 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4826 : Seg6.F), (rho 4827 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩
        ⟨(rho 4826 : Seg6.F), (rho 4827 : Seg6.F)⟩
        ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩
        ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩ := by
    have hnextx : seg6AccX133 rho = seg6AccX132 rho + rho 4834 := by
      unfold seg6AccX133 seg6AccX132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 132]
      ring
    have hnexty : seg6AccY133 rho = seg6AccY132 rho + rho 4835 := by
      unfold seg6AccY133 seg6AccY132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 132]
      ring
    have ha0 : (rho 4826 + rho 4827) * (seg6AccX132 rho + seg6AccY132 rho) = rho 4828 := by
      unfold seg6AccX132 seg6AccY132
      linear_combination r4429
    have ha1 : rho 4827 * seg6AccX132 rho = rho 4829 := by
      unfold seg6AccX132
      linear_combination r4430
    have ha2 : rho 4826 * seg6AccY132 rho = rho 4830 := by
      unfold seg6AccY132
      linear_combination r4431
    have ha3 : 3021 * rho 4829 * rho 4830 = rho 4831 := by
      linear_combination r4432
    have ha4 : rho 4832 * (1 + rho 4831) = rho 4829 + rho 4830 := by
      linear_combination r4433
    have ha5 : rho 4833 * (1 - rho 4831) = rho 4828 - rho 4829 - rho 4830 := by
      linear_combination r4434
    have haddx :
        rho 4832 * (1 + 3021 * (rho 4827 * seg6AccX132 rho) * (rho 4826 * seg6AccY132 rho)) =
          rho 4827 * seg6AccX132 rho + rho 4826 * seg6AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4833 * (1 - 3021 * (rho 4827 * seg6AccX132 rho) * (rho 4826 * seg6AccY132 rho)) =
          (-1) * (rho 4827 * seg6AccX132 rho) - rho 4826 * seg6AccY132 rho +
            (seg6AccY132 rho - seg6AccX132 rho * (-1)) * (rho 4826 + rho 4827) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4833 * (1 - rho 4831) = rho 4828 - rho 4829 - rho 4830 := ha5
        _ = (-1) * rho 4829 - rho 4830 + (seg6AccY132 rho - seg6AccX132 rho * (-1)) * (rho 4826 + rho 4827) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX133 rho = seg6AccX132 rho - Bool.toZMod bit * (seg6AccX132 rho - rho 4832) := by
      have hd : rho 4834 = Bool.toZMod bit * (rho 4832 - seg6AccX132 rho) := by
        rw [← hbit]
        unfold seg6AccX132
        linear_combination -r4435
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY133 rho = seg6AccY132 rho - Bool.toZMod bit * (seg6AccY132 rho - rho 4833) := by
      have hd : rho 4835 = Bool.toZMod bit * (rho 4833 - seg6AccY132 rho) := by
        rw [← hbit]
        unfold seg6AccY132
        linear_combination -r4436
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4826 * rho 4827 = rho 4836 := by linear_combination r4437
    have hd1 : rho 4826 * rho 4826 = rho 4837 := by linear_combination r4438
    have hd2 : rho 4827 * rho 4827 = rho 4838 := by linear_combination r4439
    have hd3 : rho 4839 * (rho 4827 * rho 4827 + rho 4826 * rho 4826 * (-1)) = 2 * (rho 4826 * rho 4827) := by
      rw [hd0, hd1, hd2]
      linear_combination r4440
    have hd4 : rho 4840 * (2 - (rho 4827 * rho 4827 + rho 4826 * rho 4826 * (-1))) = rho 4827 * rho 4827 - rho 4826 * rho 4826 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4441
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX132 rho : Seg6.F), (seg6AccY132 rho : Seg6.F)⟩
      ⟨(rho 4826 : Seg6.F), (rho 4827 : Seg6.F)⟩
      ⟨(rho 4832 : Seg6.F), (rho 4833 : Seg6.F)⟩
      ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩
      ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg6_rows133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4442 rho ∧ Seg6.relationRow4443 rho ∧ Seg6.relationRow4444 rho ∧ Seg6.relationRow4445 rho ∧ Seg6.relationRow4446 rho ∧ Seg6.relationRow4447 rho ∧ Seg6.relationRow4448 rho ∧ Seg6.relationRow4449 rho ∧ Seg6.relationRow4450 rho ∧ Seg6.relationRow4451 rho ∧ Seg6.relationRow4452 rho ∧ Seg6.relationRow4453 rho ∧ Seg6.relationRow4454 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454⟩

theorem seg6_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2023 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩
        ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩
        ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩
        ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩ := by
  obtain ⟨r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454⟩ := seg6_rows133 rho h
  unfold Seg6.relationRow4442 at r4442
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4442
  unfold Seg6.relationRow4443 at r4443
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4443
  unfold Seg6.relationRow4444 at r4444
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4444
  unfold Seg6.relationRow4445 at r4445
  unfold Seg6.relationRow4446 at r4446
  unfold Seg6.relationRow4447 at r4447
  unfold Seg6.relationRow4448 at r4448
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4448
  unfold Seg6.relationRow4449 at r4449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4449
  unfold Seg6.relationRow4450 at r4450
  unfold Seg6.relationRow4451 at r4451
  unfold Seg6.relationRow4452 at r4452
  unfold Seg6.relationRow4453 at r4453
  unfold Seg6.relationRow4454 at r4454
  have hrung133 (bit : Bool) (hbit : rho 2023 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩
        ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩
        ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩
        ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩ := by
    have hnextx : seg6AccX134 rho = seg6AccX133 rho + rho 4847 := by
      unfold seg6AccX134 seg6AccX133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 133]
      ring
    have hnexty : seg6AccY134 rho = seg6AccY133 rho + rho 4848 := by
      unfold seg6AccY134 seg6AccY133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 133]
      ring
    have ha0 : (rho 4839 + rho 4840) * (seg6AccX133 rho + seg6AccY133 rho) = rho 4841 := by
      unfold seg6AccX133 seg6AccY133
      linear_combination r4442
    have ha1 : rho 4840 * seg6AccX133 rho = rho 4842 := by
      unfold seg6AccX133
      linear_combination r4443
    have ha2 : rho 4839 * seg6AccY133 rho = rho 4843 := by
      unfold seg6AccY133
      linear_combination r4444
    have ha3 : 3021 * rho 4842 * rho 4843 = rho 4844 := by
      linear_combination r4445
    have ha4 : rho 4845 * (1 + rho 4844) = rho 4842 + rho 4843 := by
      linear_combination r4446
    have ha5 : rho 4846 * (1 - rho 4844) = rho 4841 - rho 4842 - rho 4843 := by
      linear_combination r4447
    have haddx :
        rho 4845 * (1 + 3021 * (rho 4840 * seg6AccX133 rho) * (rho 4839 * seg6AccY133 rho)) =
          rho 4840 * seg6AccX133 rho + rho 4839 * seg6AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4846 * (1 - 3021 * (rho 4840 * seg6AccX133 rho) * (rho 4839 * seg6AccY133 rho)) =
          (-1) * (rho 4840 * seg6AccX133 rho) - rho 4839 * seg6AccY133 rho +
            (seg6AccY133 rho - seg6AccX133 rho * (-1)) * (rho 4839 + rho 4840) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4846 * (1 - rho 4844) = rho 4841 - rho 4842 - rho 4843 := ha5
        _ = (-1) * rho 4842 - rho 4843 + (seg6AccY133 rho - seg6AccX133 rho * (-1)) * (rho 4839 + rho 4840) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX134 rho = seg6AccX133 rho - Bool.toZMod bit * (seg6AccX133 rho - rho 4845) := by
      have hd : rho 4847 = Bool.toZMod bit * (rho 4845 - seg6AccX133 rho) := by
        rw [← hbit]
        unfold seg6AccX133
        linear_combination -r4448
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY134 rho = seg6AccY133 rho - Bool.toZMod bit * (seg6AccY133 rho - rho 4846) := by
      have hd : rho 4848 = Bool.toZMod bit * (rho 4846 - seg6AccY133 rho) := by
        rw [← hbit]
        unfold seg6AccY133
        linear_combination -r4449
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4839 * rho 4840 = rho 4849 := by linear_combination r4450
    have hd1 : rho 4839 * rho 4839 = rho 4850 := by linear_combination r4451
    have hd2 : rho 4840 * rho 4840 = rho 4851 := by linear_combination r4452
    have hd3 : rho 4852 * (rho 4840 * rho 4840 + rho 4839 * rho 4839 * (-1)) = 2 * (rho 4839 * rho 4840) := by
      rw [hd0, hd1, hd2]
      linear_combination r4453
    have hd4 : rho 4853 * (2 - (rho 4840 * rho 4840 + rho 4839 * rho 4839 * (-1))) = rho 4840 * rho 4840 - rho 4839 * rho 4839 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4454
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX133 rho : Seg6.F), (seg6AccY133 rho : Seg6.F)⟩
      ⟨(rho 4839 : Seg6.F), (rho 4840 : Seg6.F)⟩
      ⟨(rho 4845 : Seg6.F), (rho 4846 : Seg6.F)⟩
      ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩
      ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg6_rows134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4455 rho ∧ Seg6.relationRow4456 rho ∧ Seg6.relationRow4457 rho ∧ Seg6.relationRow4458 rho ∧ Seg6.relationRow4459 rho ∧ Seg6.relationRow4460 rho ∧ Seg6.relationRow4461 rho ∧ Seg6.relationRow4462 rho ∧ Seg6.relationRow4463 rho ∧ Seg6.relationRow4464 rho ∧ Seg6.relationRow4465 rho ∧ Seg6.relationRow4466 rho ∧ Seg6.relationRow4467 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467⟩

theorem seg6_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2024 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩
        ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩
        ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩
        ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩ := by
  obtain ⟨r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467⟩ := seg6_rows134 rho h
  unfold Seg6.relationRow4455 at r4455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4455
  unfold Seg6.relationRow4456 at r4456
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4456
  unfold Seg6.relationRow4457 at r4457
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4457
  unfold Seg6.relationRow4458 at r4458
  unfold Seg6.relationRow4459 at r4459
  unfold Seg6.relationRow4460 at r4460
  unfold Seg6.relationRow4461 at r4461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4461
  unfold Seg6.relationRow4462 at r4462
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4462
  unfold Seg6.relationRow4463 at r4463
  unfold Seg6.relationRow4464 at r4464
  unfold Seg6.relationRow4465 at r4465
  unfold Seg6.relationRow4466 at r4466
  unfold Seg6.relationRow4467 at r4467
  have hrung134 (bit : Bool) (hbit : rho 2024 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩
        ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩
        ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩
        ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩ := by
    have hnextx : seg6AccX135 rho = seg6AccX134 rho + rho 4860 := by
      unfold seg6AccX135 seg6AccX134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 134]
      ring
    have hnexty : seg6AccY135 rho = seg6AccY134 rho + rho 4861 := by
      unfold seg6AccY135 seg6AccY134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 134]
      ring
    have ha0 : (rho 4852 + rho 4853) * (seg6AccX134 rho + seg6AccY134 rho) = rho 4854 := by
      unfold seg6AccX134 seg6AccY134
      linear_combination r4455
    have ha1 : rho 4853 * seg6AccX134 rho = rho 4855 := by
      unfold seg6AccX134
      linear_combination r4456
    have ha2 : rho 4852 * seg6AccY134 rho = rho 4856 := by
      unfold seg6AccY134
      linear_combination r4457
    have ha3 : 3021 * rho 4855 * rho 4856 = rho 4857 := by
      linear_combination r4458
    have ha4 : rho 4858 * (1 + rho 4857) = rho 4855 + rho 4856 := by
      linear_combination r4459
    have ha5 : rho 4859 * (1 - rho 4857) = rho 4854 - rho 4855 - rho 4856 := by
      linear_combination r4460
    have haddx :
        rho 4858 * (1 + 3021 * (rho 4853 * seg6AccX134 rho) * (rho 4852 * seg6AccY134 rho)) =
          rho 4853 * seg6AccX134 rho + rho 4852 * seg6AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4859 * (1 - 3021 * (rho 4853 * seg6AccX134 rho) * (rho 4852 * seg6AccY134 rho)) =
          (-1) * (rho 4853 * seg6AccX134 rho) - rho 4852 * seg6AccY134 rho +
            (seg6AccY134 rho - seg6AccX134 rho * (-1)) * (rho 4852 + rho 4853) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4859 * (1 - rho 4857) = rho 4854 - rho 4855 - rho 4856 := ha5
        _ = (-1) * rho 4855 - rho 4856 + (seg6AccY134 rho - seg6AccX134 rho * (-1)) * (rho 4852 + rho 4853) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX135 rho = seg6AccX134 rho - Bool.toZMod bit * (seg6AccX134 rho - rho 4858) := by
      have hd : rho 4860 = Bool.toZMod bit * (rho 4858 - seg6AccX134 rho) := by
        rw [← hbit]
        unfold seg6AccX134
        linear_combination -r4461
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY135 rho = seg6AccY134 rho - Bool.toZMod bit * (seg6AccY134 rho - rho 4859) := by
      have hd : rho 4861 = Bool.toZMod bit * (rho 4859 - seg6AccY134 rho) := by
        rw [← hbit]
        unfold seg6AccY134
        linear_combination -r4462
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4852 * rho 4853 = rho 4862 := by linear_combination r4463
    have hd1 : rho 4852 * rho 4852 = rho 4863 := by linear_combination r4464
    have hd2 : rho 4853 * rho 4853 = rho 4864 := by linear_combination r4465
    have hd3 : rho 4865 * (rho 4853 * rho 4853 + rho 4852 * rho 4852 * (-1)) = 2 * (rho 4852 * rho 4853) := by
      rw [hd0, hd1, hd2]
      linear_combination r4466
    have hd4 : rho 4866 * (2 - (rho 4853 * rho 4853 + rho 4852 * rho 4852 * (-1))) = rho 4853 * rho 4853 - rho 4852 * rho 4852 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4467
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX134 rho : Seg6.F), (seg6AccY134 rho : Seg6.F)⟩
      ⟨(rho 4852 : Seg6.F), (rho 4853 : Seg6.F)⟩
      ⟨(rho 4858 : Seg6.F), (rho 4859 : Seg6.F)⟩
      ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩
      ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg6_rows135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4468 rho ∧ Seg6.relationRow4469 rho ∧ Seg6.relationRow4470 rho ∧ Seg6.relationRow4471 rho ∧ Seg6.relationRow4472 rho ∧ Seg6.relationRow4473 rho ∧ Seg6.relationRow4474 rho ∧ Seg6.relationRow4475 rho ∧ Seg6.relationRow4476 rho ∧ Seg6.relationRow4477 rho ∧ Seg6.relationRow4478 rho ∧ Seg6.relationRow4479 rho ∧ Seg6.relationRow4480 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨r4480, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480⟩

theorem seg6_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩
        ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩
        ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩
        ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩ := by
  obtain ⟨r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479, r4480⟩ := seg6_rows135 rho h
  unfold Seg6.relationRow4468 at r4468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4468
  unfold Seg6.relationRow4469 at r4469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4469
  unfold Seg6.relationRow4470 at r4470
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4470
  unfold Seg6.relationRow4471 at r4471
  unfold Seg6.relationRow4472 at r4472
  unfold Seg6.relationRow4473 at r4473
  unfold Seg6.relationRow4474 at r4474
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4474
  unfold Seg6.relationRow4475 at r4475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4475
  unfold Seg6.relationRow4476 at r4476
  unfold Seg6.relationRow4477 at r4477
  unfold Seg6.relationRow4478 at r4478
  unfold Seg6.relationRow4479 at r4479
  unfold Seg6.relationRow4480 at r4480
  have hrung135 (bit : Bool) (hbit : rho 2025 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩
        ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩
        ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩
        ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩ := by
    have hnextx : seg6AccX136 rho = seg6AccX135 rho + rho 4873 := by
      unfold seg6AccX136 seg6AccX135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 135]
      ring
    have hnexty : seg6AccY136 rho = seg6AccY135 rho + rho 4874 := by
      unfold seg6AccY136 seg6AccY135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 135]
      ring
    have ha0 : (rho 4865 + rho 4866) * (seg6AccX135 rho + seg6AccY135 rho) = rho 4867 := by
      unfold seg6AccX135 seg6AccY135
      linear_combination r4468
    have ha1 : rho 4866 * seg6AccX135 rho = rho 4868 := by
      unfold seg6AccX135
      linear_combination r4469
    have ha2 : rho 4865 * seg6AccY135 rho = rho 4869 := by
      unfold seg6AccY135
      linear_combination r4470
    have ha3 : 3021 * rho 4868 * rho 4869 = rho 4870 := by
      linear_combination r4471
    have ha4 : rho 4871 * (1 + rho 4870) = rho 4868 + rho 4869 := by
      linear_combination r4472
    have ha5 : rho 4872 * (1 - rho 4870) = rho 4867 - rho 4868 - rho 4869 := by
      linear_combination r4473
    have haddx :
        rho 4871 * (1 + 3021 * (rho 4866 * seg6AccX135 rho) * (rho 4865 * seg6AccY135 rho)) =
          rho 4866 * seg6AccX135 rho + rho 4865 * seg6AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4872 * (1 - 3021 * (rho 4866 * seg6AccX135 rho) * (rho 4865 * seg6AccY135 rho)) =
          (-1) * (rho 4866 * seg6AccX135 rho) - rho 4865 * seg6AccY135 rho +
            (seg6AccY135 rho - seg6AccX135 rho * (-1)) * (rho 4865 + rho 4866) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4872 * (1 - rho 4870) = rho 4867 - rho 4868 - rho 4869 := ha5
        _ = (-1) * rho 4868 - rho 4869 + (seg6AccY135 rho - seg6AccX135 rho * (-1)) * (rho 4865 + rho 4866) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX136 rho = seg6AccX135 rho - Bool.toZMod bit * (seg6AccX135 rho - rho 4871) := by
      have hd : rho 4873 = Bool.toZMod bit * (rho 4871 - seg6AccX135 rho) := by
        rw [← hbit]
        unfold seg6AccX135
        linear_combination -r4474
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY136 rho = seg6AccY135 rho - Bool.toZMod bit * (seg6AccY135 rho - rho 4872) := by
      have hd : rho 4874 = Bool.toZMod bit * (rho 4872 - seg6AccY135 rho) := by
        rw [← hbit]
        unfold seg6AccY135
        linear_combination -r4475
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4865 * rho 4866 = rho 4875 := by linear_combination r4476
    have hd1 : rho 4865 * rho 4865 = rho 4876 := by linear_combination r4477
    have hd2 : rho 4866 * rho 4866 = rho 4877 := by linear_combination r4478
    have hd3 : rho 4878 * (rho 4866 * rho 4866 + rho 4865 * rho 4865 * (-1)) = 2 * (rho 4865 * rho 4866) := by
      rw [hd0, hd1, hd2]
      linear_combination r4479
    have hd4 : rho 4879 * (2 - (rho 4866 * rho 4866 + rho 4865 * rho 4865 * (-1))) = rho 4866 * rho 4866 - rho 4865 * rho 4865 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4480
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX135 rho : Seg6.F), (seg6AccY135 rho : Seg6.F)⟩
      ⟨(rho 4865 : Seg6.F), (rho 4866 : Seg6.F)⟩
      ⟨(rho 4871 : Seg6.F), (rho 4872 : Seg6.F)⟩
      ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩
      ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg6_rows136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4481 rho ∧ Seg6.relationRow4482 rho ∧ Seg6.relationRow4483 rho ∧ Seg6.relationRow4484 rho ∧ Seg6.relationRow4485 rho ∧ Seg6.relationRow4486 rho ∧ Seg6.relationRow4487 rho ∧ Seg6.relationRow4488 rho ∧ Seg6.relationRow4489 rho ∧ Seg6.relationRow4490 rho ∧ Seg6.relationRow4491 rho ∧ Seg6.relationRow4492 rho ∧ Seg6.relationRow4493 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493⟩

theorem seg6_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩
        ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩
        ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩
        ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩ := by
  obtain ⟨r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493⟩ := seg6_rows136 rho h
  unfold Seg6.relationRow4481 at r4481
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4481
  unfold Seg6.relationRow4482 at r4482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4482
  unfold Seg6.relationRow4483 at r4483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4483
  unfold Seg6.relationRow4484 at r4484
  unfold Seg6.relationRow4485 at r4485
  unfold Seg6.relationRow4486 at r4486
  unfold Seg6.relationRow4487 at r4487
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4487
  unfold Seg6.relationRow4488 at r4488
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4488
  unfold Seg6.relationRow4489 at r4489
  unfold Seg6.relationRow4490 at r4490
  unfold Seg6.relationRow4491 at r4491
  unfold Seg6.relationRow4492 at r4492
  unfold Seg6.relationRow4493 at r4493
  have hrung136 (bit : Bool) (hbit : rho 2026 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩
        ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩
        ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩
        ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩ := by
    have hnextx : seg6AccX137 rho = seg6AccX136 rho + rho 4886 := by
      unfold seg6AccX137 seg6AccX136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 136]
      ring
    have hnexty : seg6AccY137 rho = seg6AccY136 rho + rho 4887 := by
      unfold seg6AccY137 seg6AccY136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 136]
      ring
    have ha0 : (rho 4878 + rho 4879) * (seg6AccX136 rho + seg6AccY136 rho) = rho 4880 := by
      unfold seg6AccX136 seg6AccY136
      linear_combination r4481
    have ha1 : rho 4879 * seg6AccX136 rho = rho 4881 := by
      unfold seg6AccX136
      linear_combination r4482
    have ha2 : rho 4878 * seg6AccY136 rho = rho 4882 := by
      unfold seg6AccY136
      linear_combination r4483
    have ha3 : 3021 * rho 4881 * rho 4882 = rho 4883 := by
      linear_combination r4484
    have ha4 : rho 4884 * (1 + rho 4883) = rho 4881 + rho 4882 := by
      linear_combination r4485
    have ha5 : rho 4885 * (1 - rho 4883) = rho 4880 - rho 4881 - rho 4882 := by
      linear_combination r4486
    have haddx :
        rho 4884 * (1 + 3021 * (rho 4879 * seg6AccX136 rho) * (rho 4878 * seg6AccY136 rho)) =
          rho 4879 * seg6AccX136 rho + rho 4878 * seg6AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4885 * (1 - 3021 * (rho 4879 * seg6AccX136 rho) * (rho 4878 * seg6AccY136 rho)) =
          (-1) * (rho 4879 * seg6AccX136 rho) - rho 4878 * seg6AccY136 rho +
            (seg6AccY136 rho - seg6AccX136 rho * (-1)) * (rho 4878 + rho 4879) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4885 * (1 - rho 4883) = rho 4880 - rho 4881 - rho 4882 := ha5
        _ = (-1) * rho 4881 - rho 4882 + (seg6AccY136 rho - seg6AccX136 rho * (-1)) * (rho 4878 + rho 4879) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX137 rho = seg6AccX136 rho - Bool.toZMod bit * (seg6AccX136 rho - rho 4884) := by
      have hd : rho 4886 = Bool.toZMod bit * (rho 4884 - seg6AccX136 rho) := by
        rw [← hbit]
        unfold seg6AccX136
        linear_combination -r4487
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY137 rho = seg6AccY136 rho - Bool.toZMod bit * (seg6AccY136 rho - rho 4885) := by
      have hd : rho 4887 = Bool.toZMod bit * (rho 4885 - seg6AccY136 rho) := by
        rw [← hbit]
        unfold seg6AccY136
        linear_combination -r4488
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4878 * rho 4879 = rho 4888 := by linear_combination r4489
    have hd1 : rho 4878 * rho 4878 = rho 4889 := by linear_combination r4490
    have hd2 : rho 4879 * rho 4879 = rho 4890 := by linear_combination r4491
    have hd3 : rho 4891 * (rho 4879 * rho 4879 + rho 4878 * rho 4878 * (-1)) = 2 * (rho 4878 * rho 4879) := by
      rw [hd0, hd1, hd2]
      linear_combination r4492
    have hd4 : rho 4892 * (2 - (rho 4879 * rho 4879 + rho 4878 * rho 4878 * (-1))) = rho 4879 * rho 4879 - rho 4878 * rho 4878 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4493
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX136 rho : Seg6.F), (seg6AccY136 rho : Seg6.F)⟩
      ⟨(rho 4878 : Seg6.F), (rho 4879 : Seg6.F)⟩
      ⟨(rho 4884 : Seg6.F), (rho 4885 : Seg6.F)⟩
      ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩
      ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg6_rows137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4494 rho ∧ Seg6.relationRow4495 rho ∧ Seg6.relationRow4496 rho ∧ Seg6.relationRow4497 rho ∧ Seg6.relationRow4498 rho ∧ Seg6.relationRow4499 rho ∧ Seg6.relationRow4500 rho ∧ Seg6.relationRow4501 rho ∧ Seg6.relationRow4502 rho ∧ Seg6.relationRow4503 rho ∧ Seg6.relationRow4504 rho ∧ Seg6.relationRow4505 rho ∧ Seg6.relationRow4506 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506⟩

theorem seg6_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩
        ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩
        ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩
        ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩ := by
  obtain ⟨r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506⟩ := seg6_rows137 rho h
  unfold Seg6.relationRow4494 at r4494
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4494
  unfold Seg6.relationRow4495 at r4495
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4495
  unfold Seg6.relationRow4496 at r4496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4496
  unfold Seg6.relationRow4497 at r4497
  unfold Seg6.relationRow4498 at r4498
  unfold Seg6.relationRow4499 at r4499
  unfold Seg6.relationRow4500 at r4500
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4500
  unfold Seg6.relationRow4501 at r4501
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4501
  unfold Seg6.relationRow4502 at r4502
  unfold Seg6.relationRow4503 at r4503
  unfold Seg6.relationRow4504 at r4504
  unfold Seg6.relationRow4505 at r4505
  unfold Seg6.relationRow4506 at r4506
  have hrung137 (bit : Bool) (hbit : rho 2027 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩
        ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩
        ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩
        ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩ := by
    have hnextx : seg6AccX138 rho = seg6AccX137 rho + rho 4899 := by
      unfold seg6AccX138 seg6AccX137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 137]
      ring
    have hnexty : seg6AccY138 rho = seg6AccY137 rho + rho 4900 := by
      unfold seg6AccY138 seg6AccY137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 137]
      ring
    have ha0 : (rho 4891 + rho 4892) * (seg6AccX137 rho + seg6AccY137 rho) = rho 4893 := by
      unfold seg6AccX137 seg6AccY137
      linear_combination r4494
    have ha1 : rho 4892 * seg6AccX137 rho = rho 4894 := by
      unfold seg6AccX137
      linear_combination r4495
    have ha2 : rho 4891 * seg6AccY137 rho = rho 4895 := by
      unfold seg6AccY137
      linear_combination r4496
    have ha3 : 3021 * rho 4894 * rho 4895 = rho 4896 := by
      linear_combination r4497
    have ha4 : rho 4897 * (1 + rho 4896) = rho 4894 + rho 4895 := by
      linear_combination r4498
    have ha5 : rho 4898 * (1 - rho 4896) = rho 4893 - rho 4894 - rho 4895 := by
      linear_combination r4499
    have haddx :
        rho 4897 * (1 + 3021 * (rho 4892 * seg6AccX137 rho) * (rho 4891 * seg6AccY137 rho)) =
          rho 4892 * seg6AccX137 rho + rho 4891 * seg6AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4898 * (1 - 3021 * (rho 4892 * seg6AccX137 rho) * (rho 4891 * seg6AccY137 rho)) =
          (-1) * (rho 4892 * seg6AccX137 rho) - rho 4891 * seg6AccY137 rho +
            (seg6AccY137 rho - seg6AccX137 rho * (-1)) * (rho 4891 + rho 4892) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4898 * (1 - rho 4896) = rho 4893 - rho 4894 - rho 4895 := ha5
        _ = (-1) * rho 4894 - rho 4895 + (seg6AccY137 rho - seg6AccX137 rho * (-1)) * (rho 4891 + rho 4892) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX138 rho = seg6AccX137 rho - Bool.toZMod bit * (seg6AccX137 rho - rho 4897) := by
      have hd : rho 4899 = Bool.toZMod bit * (rho 4897 - seg6AccX137 rho) := by
        rw [← hbit]
        unfold seg6AccX137
        linear_combination -r4500
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY138 rho = seg6AccY137 rho - Bool.toZMod bit * (seg6AccY137 rho - rho 4898) := by
      have hd : rho 4900 = Bool.toZMod bit * (rho 4898 - seg6AccY137 rho) := by
        rw [← hbit]
        unfold seg6AccY137
        linear_combination -r4501
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4891 * rho 4892 = rho 4901 := by linear_combination r4502
    have hd1 : rho 4891 * rho 4891 = rho 4902 := by linear_combination r4503
    have hd2 : rho 4892 * rho 4892 = rho 4903 := by linear_combination r4504
    have hd3 : rho 4904 * (rho 4892 * rho 4892 + rho 4891 * rho 4891 * (-1)) = 2 * (rho 4891 * rho 4892) := by
      rw [hd0, hd1, hd2]
      linear_combination r4505
    have hd4 : rho 4905 * (2 - (rho 4892 * rho 4892 + rho 4891 * rho 4891 * (-1))) = rho 4892 * rho 4892 - rho 4891 * rho 4891 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4506
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX137 rho : Seg6.F), (seg6AccY137 rho : Seg6.F)⟩
      ⟨(rho 4891 : Seg6.F), (rho 4892 : Seg6.F)⟩
      ⟨(rho 4897 : Seg6.F), (rho 4898 : Seg6.F)⟩
      ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩
      ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg6_rows138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4507 rho ∧ Seg6.relationRow4508 rho ∧ Seg6.relationRow4509 rho ∧ Seg6.relationRow4510 rho ∧ Seg6.relationRow4511 rho ∧ Seg6.relationRow4512 rho ∧ Seg6.relationRow4513 rho ∧ Seg6.relationRow4514 rho ∧ Seg6.relationRow4515 rho ∧ Seg6.relationRow4516 rho ∧ Seg6.relationRow4517 rho ∧ Seg6.relationRow4518 rho ∧ Seg6.relationRow4519 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519⟩

theorem seg6_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩
        ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩
        ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩
        ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩ := by
  obtain ⟨r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519⟩ := seg6_rows138 rho h
  unfold Seg6.relationRow4507 at r4507
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4507
  unfold Seg6.relationRow4508 at r4508
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4508
  unfold Seg6.relationRow4509 at r4509
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4509
  unfold Seg6.relationRow4510 at r4510
  unfold Seg6.relationRow4511 at r4511
  unfold Seg6.relationRow4512 at r4512
  unfold Seg6.relationRow4513 at r4513
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4513
  unfold Seg6.relationRow4514 at r4514
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4514
  unfold Seg6.relationRow4515 at r4515
  unfold Seg6.relationRow4516 at r4516
  unfold Seg6.relationRow4517 at r4517
  unfold Seg6.relationRow4518 at r4518
  unfold Seg6.relationRow4519 at r4519
  have hrung138 (bit : Bool) (hbit : rho 2028 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩
        ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩
        ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩
        ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩ := by
    have hnextx : seg6AccX139 rho = seg6AccX138 rho + rho 4912 := by
      unfold seg6AccX139 seg6AccX138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 138]
      ring
    have hnexty : seg6AccY139 rho = seg6AccY138 rho + rho 4913 := by
      unfold seg6AccY139 seg6AccY138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 138]
      ring
    have ha0 : (rho 4904 + rho 4905) * (seg6AccX138 rho + seg6AccY138 rho) = rho 4906 := by
      unfold seg6AccX138 seg6AccY138
      linear_combination r4507
    have ha1 : rho 4905 * seg6AccX138 rho = rho 4907 := by
      unfold seg6AccX138
      linear_combination r4508
    have ha2 : rho 4904 * seg6AccY138 rho = rho 4908 := by
      unfold seg6AccY138
      linear_combination r4509
    have ha3 : 3021 * rho 4907 * rho 4908 = rho 4909 := by
      linear_combination r4510
    have ha4 : rho 4910 * (1 + rho 4909) = rho 4907 + rho 4908 := by
      linear_combination r4511
    have ha5 : rho 4911 * (1 - rho 4909) = rho 4906 - rho 4907 - rho 4908 := by
      linear_combination r4512
    have haddx :
        rho 4910 * (1 + 3021 * (rho 4905 * seg6AccX138 rho) * (rho 4904 * seg6AccY138 rho)) =
          rho 4905 * seg6AccX138 rho + rho 4904 * seg6AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4911 * (1 - 3021 * (rho 4905 * seg6AccX138 rho) * (rho 4904 * seg6AccY138 rho)) =
          (-1) * (rho 4905 * seg6AccX138 rho) - rho 4904 * seg6AccY138 rho +
            (seg6AccY138 rho - seg6AccX138 rho * (-1)) * (rho 4904 + rho 4905) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4911 * (1 - rho 4909) = rho 4906 - rho 4907 - rho 4908 := ha5
        _ = (-1) * rho 4907 - rho 4908 + (seg6AccY138 rho - seg6AccX138 rho * (-1)) * (rho 4904 + rho 4905) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX139 rho = seg6AccX138 rho - Bool.toZMod bit * (seg6AccX138 rho - rho 4910) := by
      have hd : rho 4912 = Bool.toZMod bit * (rho 4910 - seg6AccX138 rho) := by
        rw [← hbit]
        unfold seg6AccX138
        linear_combination -r4513
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY139 rho = seg6AccY138 rho - Bool.toZMod bit * (seg6AccY138 rho - rho 4911) := by
      have hd : rho 4913 = Bool.toZMod bit * (rho 4911 - seg6AccY138 rho) := by
        rw [← hbit]
        unfold seg6AccY138
        linear_combination -r4514
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4904 * rho 4905 = rho 4914 := by linear_combination r4515
    have hd1 : rho 4904 * rho 4904 = rho 4915 := by linear_combination r4516
    have hd2 : rho 4905 * rho 4905 = rho 4916 := by linear_combination r4517
    have hd3 : rho 4917 * (rho 4905 * rho 4905 + rho 4904 * rho 4904 * (-1)) = 2 * (rho 4904 * rho 4905) := by
      rw [hd0, hd1, hd2]
      linear_combination r4518
    have hd4 : rho 4918 * (2 - (rho 4905 * rho 4905 + rho 4904 * rho 4904 * (-1))) = rho 4905 * rho 4905 - rho 4904 * rho 4904 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4519
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX138 rho : Seg6.F), (seg6AccY138 rho : Seg6.F)⟩
      ⟨(rho 4904 : Seg6.F), (rho 4905 : Seg6.F)⟩
      ⟨(rho 4910 : Seg6.F), (rho 4911 : Seg6.F)⟩
      ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩
      ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg6_rows139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4520 rho ∧ Seg6.relationRow4521 rho ∧ Seg6.relationRow4522 rho ∧ Seg6.relationRow4523 rho ∧ Seg6.relationRow4524 rho ∧ Seg6.relationRow4525 rho ∧ Seg6.relationRow4526 rho ∧ Seg6.relationRow4527 rho ∧ Seg6.relationRow4528 rho ∧ Seg6.relationRow4529 rho ∧ Seg6.relationRow4530 rho ∧ Seg6.relationRow4531 rho ∧ Seg6.relationRow4532 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532⟩

theorem seg6_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩
        ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩
        ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩
        ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩ := by
  obtain ⟨r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532⟩ := seg6_rows139 rho h
  unfold Seg6.relationRow4520 at r4520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4520
  unfold Seg6.relationRow4521 at r4521
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4521
  unfold Seg6.relationRow4522 at r4522
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4522
  unfold Seg6.relationRow4523 at r4523
  unfold Seg6.relationRow4524 at r4524
  unfold Seg6.relationRow4525 at r4525
  unfold Seg6.relationRow4526 at r4526
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4526
  unfold Seg6.relationRow4527 at r4527
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4527
  unfold Seg6.relationRow4528 at r4528
  unfold Seg6.relationRow4529 at r4529
  unfold Seg6.relationRow4530 at r4530
  unfold Seg6.relationRow4531 at r4531
  unfold Seg6.relationRow4532 at r4532
  have hrung139 (bit : Bool) (hbit : rho 2029 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩
        ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩
        ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩
        ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩ := by
    have hnextx : seg6AccX140 rho = seg6AccX139 rho + rho 4925 := by
      unfold seg6AccX140 seg6AccX139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 139]
      ring
    have hnexty : seg6AccY140 rho = seg6AccY139 rho + rho 4926 := by
      unfold seg6AccY140 seg6AccY139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 139]
      ring
    have ha0 : (rho 4917 + rho 4918) * (seg6AccX139 rho + seg6AccY139 rho) = rho 4919 := by
      unfold seg6AccX139 seg6AccY139
      linear_combination r4520
    have ha1 : rho 4918 * seg6AccX139 rho = rho 4920 := by
      unfold seg6AccX139
      linear_combination r4521
    have ha2 : rho 4917 * seg6AccY139 rho = rho 4921 := by
      unfold seg6AccY139
      linear_combination r4522
    have ha3 : 3021 * rho 4920 * rho 4921 = rho 4922 := by
      linear_combination r4523
    have ha4 : rho 4923 * (1 + rho 4922) = rho 4920 + rho 4921 := by
      linear_combination r4524
    have ha5 : rho 4924 * (1 - rho 4922) = rho 4919 - rho 4920 - rho 4921 := by
      linear_combination r4525
    have haddx :
        rho 4923 * (1 + 3021 * (rho 4918 * seg6AccX139 rho) * (rho 4917 * seg6AccY139 rho)) =
          rho 4918 * seg6AccX139 rho + rho 4917 * seg6AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4924 * (1 - 3021 * (rho 4918 * seg6AccX139 rho) * (rho 4917 * seg6AccY139 rho)) =
          (-1) * (rho 4918 * seg6AccX139 rho) - rho 4917 * seg6AccY139 rho +
            (seg6AccY139 rho - seg6AccX139 rho * (-1)) * (rho 4917 + rho 4918) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4924 * (1 - rho 4922) = rho 4919 - rho 4920 - rho 4921 := ha5
        _ = (-1) * rho 4920 - rho 4921 + (seg6AccY139 rho - seg6AccX139 rho * (-1)) * (rho 4917 + rho 4918) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX140 rho = seg6AccX139 rho - Bool.toZMod bit * (seg6AccX139 rho - rho 4923) := by
      have hd : rho 4925 = Bool.toZMod bit * (rho 4923 - seg6AccX139 rho) := by
        rw [← hbit]
        unfold seg6AccX139
        linear_combination -r4526
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY140 rho = seg6AccY139 rho - Bool.toZMod bit * (seg6AccY139 rho - rho 4924) := by
      have hd : rho 4926 = Bool.toZMod bit * (rho 4924 - seg6AccY139 rho) := by
        rw [← hbit]
        unfold seg6AccY139
        linear_combination -r4527
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4917 * rho 4918 = rho 4927 := by linear_combination r4528
    have hd1 : rho 4917 * rho 4917 = rho 4928 := by linear_combination r4529
    have hd2 : rho 4918 * rho 4918 = rho 4929 := by linear_combination r4530
    have hd3 : rho 4930 * (rho 4918 * rho 4918 + rho 4917 * rho 4917 * (-1)) = 2 * (rho 4917 * rho 4918) := by
      rw [hd0, hd1, hd2]
      linear_combination r4531
    have hd4 : rho 4931 * (2 - (rho 4918 * rho 4918 + rho 4917 * rho 4917 * (-1))) = rho 4918 * rho 4918 - rho 4917 * rho 4917 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4532
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX139 rho : Seg6.F), (seg6AccY139 rho : Seg6.F)⟩
      ⟨(rho 4917 : Seg6.F), (rho 4918 : Seg6.F)⟩
      ⟨(rho 4923 : Seg6.F), (rho 4924 : Seg6.F)⟩
      ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩
      ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg6_rows140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4533 rho ∧ Seg6.relationRow4534 rho ∧ Seg6.relationRow4535 rho ∧ Seg6.relationRow4536 rho ∧ Seg6.relationRow4537 rho ∧ Seg6.relationRow4538 rho ∧ Seg6.relationRow4539 rho ∧ Seg6.relationRow4540 rho ∧ Seg6.relationRow4541 rho ∧ Seg6.relationRow4542 rho ∧ Seg6.relationRow4543 rho ∧ Seg6.relationRow4544 rho ∧ Seg6.relationRow4545 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545⟩

theorem seg6_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩
        ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩
        ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩
        ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩ := by
  obtain ⟨r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545⟩ := seg6_rows140 rho h
  unfold Seg6.relationRow4533 at r4533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4533
  unfold Seg6.relationRow4534 at r4534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4534
  unfold Seg6.relationRow4535 at r4535
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4535
  unfold Seg6.relationRow4536 at r4536
  unfold Seg6.relationRow4537 at r4537
  unfold Seg6.relationRow4538 at r4538
  unfold Seg6.relationRow4539 at r4539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4539
  unfold Seg6.relationRow4540 at r4540
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4540
  unfold Seg6.relationRow4541 at r4541
  unfold Seg6.relationRow4542 at r4542
  unfold Seg6.relationRow4543 at r4543
  unfold Seg6.relationRow4544 at r4544
  unfold Seg6.relationRow4545 at r4545
  have hrung140 (bit : Bool) (hbit : rho 2030 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩
        ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩
        ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩
        ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩ := by
    have hnextx : seg6AccX141 rho = seg6AccX140 rho + rho 4938 := by
      unfold seg6AccX141 seg6AccX140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 140]
      ring
    have hnexty : seg6AccY141 rho = seg6AccY140 rho + rho 4939 := by
      unfold seg6AccY141 seg6AccY140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 140]
      ring
    have ha0 : (rho 4930 + rho 4931) * (seg6AccX140 rho + seg6AccY140 rho) = rho 4932 := by
      unfold seg6AccX140 seg6AccY140
      linear_combination r4533
    have ha1 : rho 4931 * seg6AccX140 rho = rho 4933 := by
      unfold seg6AccX140
      linear_combination r4534
    have ha2 : rho 4930 * seg6AccY140 rho = rho 4934 := by
      unfold seg6AccY140
      linear_combination r4535
    have ha3 : 3021 * rho 4933 * rho 4934 = rho 4935 := by
      linear_combination r4536
    have ha4 : rho 4936 * (1 + rho 4935) = rho 4933 + rho 4934 := by
      linear_combination r4537
    have ha5 : rho 4937 * (1 - rho 4935) = rho 4932 - rho 4933 - rho 4934 := by
      linear_combination r4538
    have haddx :
        rho 4936 * (1 + 3021 * (rho 4931 * seg6AccX140 rho) * (rho 4930 * seg6AccY140 rho)) =
          rho 4931 * seg6AccX140 rho + rho 4930 * seg6AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4937 * (1 - 3021 * (rho 4931 * seg6AccX140 rho) * (rho 4930 * seg6AccY140 rho)) =
          (-1) * (rho 4931 * seg6AccX140 rho) - rho 4930 * seg6AccY140 rho +
            (seg6AccY140 rho - seg6AccX140 rho * (-1)) * (rho 4930 + rho 4931) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4937 * (1 - rho 4935) = rho 4932 - rho 4933 - rho 4934 := ha5
        _ = (-1) * rho 4933 - rho 4934 + (seg6AccY140 rho - seg6AccX140 rho * (-1)) * (rho 4930 + rho 4931) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX141 rho = seg6AccX140 rho - Bool.toZMod bit * (seg6AccX140 rho - rho 4936) := by
      have hd : rho 4938 = Bool.toZMod bit * (rho 4936 - seg6AccX140 rho) := by
        rw [← hbit]
        unfold seg6AccX140
        linear_combination -r4539
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY141 rho = seg6AccY140 rho - Bool.toZMod bit * (seg6AccY140 rho - rho 4937) := by
      have hd : rho 4939 = Bool.toZMod bit * (rho 4937 - seg6AccY140 rho) := by
        rw [← hbit]
        unfold seg6AccY140
        linear_combination -r4540
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4930 * rho 4931 = rho 4940 := by linear_combination r4541
    have hd1 : rho 4930 * rho 4930 = rho 4941 := by linear_combination r4542
    have hd2 : rho 4931 * rho 4931 = rho 4942 := by linear_combination r4543
    have hd3 : rho 4943 * (rho 4931 * rho 4931 + rho 4930 * rho 4930 * (-1)) = 2 * (rho 4930 * rho 4931) := by
      rw [hd0, hd1, hd2]
      linear_combination r4544
    have hd4 : rho 4944 * (2 - (rho 4931 * rho 4931 + rho 4930 * rho 4930 * (-1))) = rho 4931 * rho 4931 - rho 4930 * rho 4930 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4545
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX140 rho : Seg6.F), (seg6AccY140 rho : Seg6.F)⟩
      ⟨(rho 4930 : Seg6.F), (rho 4931 : Seg6.F)⟩
      ⟨(rho 4936 : Seg6.F), (rho 4937 : Seg6.F)⟩
      ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩
      ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg6_rows141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4546 rho ∧ Seg6.relationRow4547 rho ∧ Seg6.relationRow4548 rho ∧ Seg6.relationRow4549 rho ∧ Seg6.relationRow4550 rho ∧ Seg6.relationRow4551 rho ∧ Seg6.relationRow4552 rho ∧ Seg6.relationRow4553 rho ∧ Seg6.relationRow4554 rho ∧ Seg6.relationRow4555 rho ∧ Seg6.relationRow4556 rho ∧ Seg6.relationRow4557 rho ∧ Seg6.relationRow4558 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, _⟩
  exact ⟨r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558⟩

theorem seg6_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩
        ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩
        ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩
        ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩ := by
  obtain ⟨r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558⟩ := seg6_rows141 rho h
  unfold Seg6.relationRow4546 at r4546
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4546
  unfold Seg6.relationRow4547 at r4547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4547
  unfold Seg6.relationRow4548 at r4548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4548
  unfold Seg6.relationRow4549 at r4549
  unfold Seg6.relationRow4550 at r4550
  unfold Seg6.relationRow4551 at r4551
  unfold Seg6.relationRow4552 at r4552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4552
  unfold Seg6.relationRow4553 at r4553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4553
  unfold Seg6.relationRow4554 at r4554
  unfold Seg6.relationRow4555 at r4555
  unfold Seg6.relationRow4556 at r4556
  unfold Seg6.relationRow4557 at r4557
  unfold Seg6.relationRow4558 at r4558
  have hrung141 (bit : Bool) (hbit : rho 2031 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩
        ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩
        ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩
        ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩ := by
    have hnextx : seg6AccX142 rho = seg6AccX141 rho + rho 4951 := by
      unfold seg6AccX142 seg6AccX141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 141]
      ring
    have hnexty : seg6AccY142 rho = seg6AccY141 rho + rho 4952 := by
      unfold seg6AccY142 seg6AccY141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 141]
      ring
    have ha0 : (rho 4943 + rho 4944) * (seg6AccX141 rho + seg6AccY141 rho) = rho 4945 := by
      unfold seg6AccX141 seg6AccY141
      linear_combination r4546
    have ha1 : rho 4944 * seg6AccX141 rho = rho 4946 := by
      unfold seg6AccX141
      linear_combination r4547
    have ha2 : rho 4943 * seg6AccY141 rho = rho 4947 := by
      unfold seg6AccY141
      linear_combination r4548
    have ha3 : 3021 * rho 4946 * rho 4947 = rho 4948 := by
      linear_combination r4549
    have ha4 : rho 4949 * (1 + rho 4948) = rho 4946 + rho 4947 := by
      linear_combination r4550
    have ha5 : rho 4950 * (1 - rho 4948) = rho 4945 - rho 4946 - rho 4947 := by
      linear_combination r4551
    have haddx :
        rho 4949 * (1 + 3021 * (rho 4944 * seg6AccX141 rho) * (rho 4943 * seg6AccY141 rho)) =
          rho 4944 * seg6AccX141 rho + rho 4943 * seg6AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4950 * (1 - 3021 * (rho 4944 * seg6AccX141 rho) * (rho 4943 * seg6AccY141 rho)) =
          (-1) * (rho 4944 * seg6AccX141 rho) - rho 4943 * seg6AccY141 rho +
            (seg6AccY141 rho - seg6AccX141 rho * (-1)) * (rho 4943 + rho 4944) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4950 * (1 - rho 4948) = rho 4945 - rho 4946 - rho 4947 := ha5
        _ = (-1) * rho 4946 - rho 4947 + (seg6AccY141 rho - seg6AccX141 rho * (-1)) * (rho 4943 + rho 4944) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX142 rho = seg6AccX141 rho - Bool.toZMod bit * (seg6AccX141 rho - rho 4949) := by
      have hd : rho 4951 = Bool.toZMod bit * (rho 4949 - seg6AccX141 rho) := by
        rw [← hbit]
        unfold seg6AccX141
        linear_combination -r4552
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY142 rho = seg6AccY141 rho - Bool.toZMod bit * (seg6AccY141 rho - rho 4950) := by
      have hd : rho 4952 = Bool.toZMod bit * (rho 4950 - seg6AccY141 rho) := by
        rw [← hbit]
        unfold seg6AccY141
        linear_combination -r4553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4943 * rho 4944 = rho 4953 := by linear_combination r4554
    have hd1 : rho 4943 * rho 4943 = rho 4954 := by linear_combination r4555
    have hd2 : rho 4944 * rho 4944 = rho 4955 := by linear_combination r4556
    have hd3 : rho 4956 * (rho 4944 * rho 4944 + rho 4943 * rho 4943 * (-1)) = 2 * (rho 4943 * rho 4944) := by
      rw [hd0, hd1, hd2]
      linear_combination r4557
    have hd4 : rho 4957 * (2 - (rho 4944 * rho 4944 + rho 4943 * rho 4943 * (-1))) = rho 4944 * rho 4944 - rho 4943 * rho 4943 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX141 rho : Seg6.F), (seg6AccY141 rho : Seg6.F)⟩
      ⟨(rho 4943 : Seg6.F), (rho 4944 : Seg6.F)⟩
      ⟨(rho 4949 : Seg6.F), (rho 4950 : Seg6.F)⟩
      ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩
      ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg6_rows142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4559 rho ∧ Seg6.relationRow4560 rho ∧ Seg6.relationRow4561 rho ∧ Seg6.relationRow4562 rho ∧ Seg6.relationRow4563 rho ∧ Seg6.relationRow4564 rho ∧ Seg6.relationRow4565 rho ∧ Seg6.relationRow4566 rho ∧ Seg6.relationRow4567 rho ∧ Seg6.relationRow4568 rho ∧ Seg6.relationRow4569 rho ∧ Seg6.relationRow4570 rho ∧ Seg6.relationRow4571 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4559⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571⟩

theorem seg6_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩
        ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩
        ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩
        ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩ := by
  obtain ⟨r4559, r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571⟩ := seg6_rows142 rho h
  unfold Seg6.relationRow4559 at r4559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4559
  unfold Seg6.relationRow4560 at r4560
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4560
  unfold Seg6.relationRow4561 at r4561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4561
  unfold Seg6.relationRow4562 at r4562
  unfold Seg6.relationRow4563 at r4563
  unfold Seg6.relationRow4564 at r4564
  unfold Seg6.relationRow4565 at r4565
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4565
  unfold Seg6.relationRow4566 at r4566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4566
  unfold Seg6.relationRow4567 at r4567
  unfold Seg6.relationRow4568 at r4568
  unfold Seg6.relationRow4569 at r4569
  unfold Seg6.relationRow4570 at r4570
  unfold Seg6.relationRow4571 at r4571
  have hrung142 (bit : Bool) (hbit : rho 2032 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩
        ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩
        ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩
        ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩ := by
    have hnextx : seg6AccX143 rho = seg6AccX142 rho + rho 4964 := by
      unfold seg6AccX143 seg6AccX142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 142]
      ring
    have hnexty : seg6AccY143 rho = seg6AccY142 rho + rho 4965 := by
      unfold seg6AccY143 seg6AccY142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 142]
      ring
    have ha0 : (rho 4956 + rho 4957) * (seg6AccX142 rho + seg6AccY142 rho) = rho 4958 := by
      unfold seg6AccX142 seg6AccY142
      linear_combination r4559
    have ha1 : rho 4957 * seg6AccX142 rho = rho 4959 := by
      unfold seg6AccX142
      linear_combination r4560
    have ha2 : rho 4956 * seg6AccY142 rho = rho 4960 := by
      unfold seg6AccY142
      linear_combination r4561
    have ha3 : 3021 * rho 4959 * rho 4960 = rho 4961 := by
      linear_combination r4562
    have ha4 : rho 4962 * (1 + rho 4961) = rho 4959 + rho 4960 := by
      linear_combination r4563
    have ha5 : rho 4963 * (1 - rho 4961) = rho 4958 - rho 4959 - rho 4960 := by
      linear_combination r4564
    have haddx :
        rho 4962 * (1 + 3021 * (rho 4957 * seg6AccX142 rho) * (rho 4956 * seg6AccY142 rho)) =
          rho 4957 * seg6AccX142 rho + rho 4956 * seg6AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4963 * (1 - 3021 * (rho 4957 * seg6AccX142 rho) * (rho 4956 * seg6AccY142 rho)) =
          (-1) * (rho 4957 * seg6AccX142 rho) - rho 4956 * seg6AccY142 rho +
            (seg6AccY142 rho - seg6AccX142 rho * (-1)) * (rho 4956 + rho 4957) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4963 * (1 - rho 4961) = rho 4958 - rho 4959 - rho 4960 := ha5
        _ = (-1) * rho 4959 - rho 4960 + (seg6AccY142 rho - seg6AccX142 rho * (-1)) * (rho 4956 + rho 4957) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX143 rho = seg6AccX142 rho - Bool.toZMod bit * (seg6AccX142 rho - rho 4962) := by
      have hd : rho 4964 = Bool.toZMod bit * (rho 4962 - seg6AccX142 rho) := by
        rw [← hbit]
        unfold seg6AccX142
        linear_combination -r4565
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY143 rho = seg6AccY142 rho - Bool.toZMod bit * (seg6AccY142 rho - rho 4963) := by
      have hd : rho 4965 = Bool.toZMod bit * (rho 4963 - seg6AccY142 rho) := by
        rw [← hbit]
        unfold seg6AccY142
        linear_combination -r4566
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4956 * rho 4957 = rho 4966 := by linear_combination r4567
    have hd1 : rho 4956 * rho 4956 = rho 4967 := by linear_combination r4568
    have hd2 : rho 4957 * rho 4957 = rho 4968 := by linear_combination r4569
    have hd3 : rho 4969 * (rho 4957 * rho 4957 + rho 4956 * rho 4956 * (-1)) = 2 * (rho 4956 * rho 4957) := by
      rw [hd0, hd1, hd2]
      linear_combination r4570
    have hd4 : rho 4970 * (2 - (rho 4957 * rho 4957 + rho 4956 * rho 4956 * (-1))) = rho 4957 * rho 4957 - rho 4956 * rho 4956 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4571
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX142 rho : Seg6.F), (seg6AccY142 rho : Seg6.F)⟩
      ⟨(rho 4956 : Seg6.F), (rho 4957 : Seg6.F)⟩
      ⟨(rho 4962 : Seg6.F), (rho 4963 : Seg6.F)⟩
      ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩
      ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg6_hstep_c12 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 132 ≤ i → i < 143 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg6_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg6_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg6_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg6_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg6_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg6_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg6_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg6_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg6_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg6_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
