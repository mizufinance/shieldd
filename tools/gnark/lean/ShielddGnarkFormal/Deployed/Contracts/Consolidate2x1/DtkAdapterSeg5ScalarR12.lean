import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4681 rho ∧ Seg5.relationRow4682 rho ∧ Seg5.relationRow4683 rho ∧ Seg5.relationRow4684 rho ∧ Seg5.relationRow4685 rho ∧ Seg5.relationRow4686 rho ∧ Seg5.relationRow4687 rho ∧ Seg5.relationRow4688 rho ∧ Seg5.relationRow4689 rho ∧ Seg5.relationRow4690 rho ∧ Seg5.relationRow4691 rho ∧ Seg5.relationRow4692 rho ∧ Seg5.relationRow4693 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693⟩

theorem seg5_rung132 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2547 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩
        ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩
        ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩
        ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩ := by
  obtain ⟨r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693⟩ := seg5_rows132 rho h
  unfold Seg5.relationRow4681 at r4681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4681
  unfold Seg5.relationRow4682 at r4682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4682
  unfold Seg5.relationRow4683 at r4683
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4683
  unfold Seg5.relationRow4684 at r4684
  unfold Seg5.relationRow4685 at r4685
  unfold Seg5.relationRow4686 at r4686
  unfold Seg5.relationRow4687 at r4687
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4687
  unfold Seg5.relationRow4688 at r4688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4688
  unfold Seg5.relationRow4689 at r4689
  unfold Seg5.relationRow4690 at r4690
  unfold Seg5.relationRow4691 at r4691
  unfold Seg5.relationRow4692 at r4692
  unfold Seg5.relationRow4693 at r4693
  have hrung132 (bit : Bool) (hbit : rho 2547 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩
        ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩
        ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩
        ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩ := by
    have hnextx : seg5AccX133 rho = seg5AccX132 rho + rho 4382 := by
      unfold seg5AccX133 seg5AccX132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 132]
      ring
    have hnexty : seg5AccY133 rho = seg5AccY132 rho + rho 4383 := by
      unfold seg5AccY133 seg5AccY132
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 132]
      ring
    have ha0 : (rho 4374 + rho 4375) * (seg5AccX132 rho + seg5AccY132 rho) = rho 4376 := by
      unfold seg5AccX132 seg5AccY132
      linear_combination r4681
    have ha1 : rho 4375 * seg5AccX132 rho = rho 4377 := by
      unfold seg5AccX132
      linear_combination r4682
    have ha2 : rho 4374 * seg5AccY132 rho = rho 4378 := by
      unfold seg5AccY132
      linear_combination r4683
    have ha3 : 3021 * rho 4377 * rho 4378 = rho 4379 := by
      linear_combination r4684
    have ha4 : rho 4380 * (1 + rho 4379) = rho 4377 + rho 4378 := by
      linear_combination r4685
    have ha5 : rho 4381 * (1 - rho 4379) = rho 4376 - rho 4377 - rho 4378 := by
      linear_combination r4686
    have haddx :
        rho 4380 * (1 + 3021 * (rho 4375 * seg5AccX132 rho) * (rho 4374 * seg5AccY132 rho)) =
          rho 4375 * seg5AccX132 rho + rho 4374 * seg5AccY132 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4381 * (1 - 3021 * (rho 4375 * seg5AccX132 rho) * (rho 4374 * seg5AccY132 rho)) =
          (-1) * (rho 4375 * seg5AccX132 rho) - rho 4374 * seg5AccY132 rho +
            (seg5AccY132 rho - seg5AccX132 rho * (-1)) * (rho 4374 + rho 4375) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4381 * (1 - rho 4379) = rho 4376 - rho 4377 - rho 4378 := ha5
        _ = (-1) * rho 4377 - rho 4378 + (seg5AccY132 rho - seg5AccX132 rho * (-1)) * (rho 4374 + rho 4375) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX133 rho = seg5AccX132 rho - Bool.toZMod bit * (seg5AccX132 rho - rho 4380) := by
      have hd : rho 4382 = Bool.toZMod bit * (rho 4380 - seg5AccX132 rho) := by
        rw [← hbit]
        unfold seg5AccX132
        linear_combination -r4687
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY133 rho = seg5AccY132 rho - Bool.toZMod bit * (seg5AccY132 rho - rho 4381) := by
      have hd : rho 4383 = Bool.toZMod bit * (rho 4381 - seg5AccY132 rho) := by
        rw [← hbit]
        unfold seg5AccY132
        linear_combination -r4688
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4374 * rho 4375 = rho 4384 := by linear_combination r4689
    have hd1 : rho 4374 * rho 4374 = rho 4385 := by linear_combination r4690
    have hd2 : rho 4375 * rho 4375 = rho 4386 := by linear_combination r4691
    have hd3 : rho 4387 * (rho 4375 * rho 4375 + rho 4374 * rho 4374 * (-1)) = 2 * (rho 4374 * rho 4375) := by
      rw [hd0, hd1, hd2]
      linear_combination r4692
    have hd4 : rho 4388 * (2 - (rho 4375 * rho 4375 + rho 4374 * rho 4374 * (-1))) = rho 4375 * rho 4375 - rho 4374 * rho 4374 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4693
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX132 rho : Seg5.F), (seg5AccY132 rho : Seg5.F)⟩
      ⟨(rho 4374 : Seg5.F), (rho 4375 : Seg5.F)⟩
      ⟨(rho 4380 : Seg5.F), (rho 4381 : Seg5.F)⟩
      ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩
      ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung132

theorem seg5_rows133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4694 rho ∧ Seg5.relationRow4695 rho ∧ Seg5.relationRow4696 rho ∧ Seg5.relationRow4697 rho ∧ Seg5.relationRow4698 rho ∧ Seg5.relationRow4699 rho ∧ Seg5.relationRow4700 rho ∧ Seg5.relationRow4701 rho ∧ Seg5.relationRow4702 rho ∧ Seg5.relationRow4703 rho ∧ Seg5.relationRow4704 rho ∧ Seg5.relationRow4705 rho ∧ Seg5.relationRow4706 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706⟩

theorem seg5_rung133 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2548 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩
        ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩
        ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩
        ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩ := by
  obtain ⟨r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706⟩ := seg5_rows133 rho h
  unfold Seg5.relationRow4694 at r4694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694
  unfold Seg5.relationRow4695 at r4695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4695
  unfold Seg5.relationRow4696 at r4696
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4696
  unfold Seg5.relationRow4697 at r4697
  unfold Seg5.relationRow4698 at r4698
  unfold Seg5.relationRow4699 at r4699
  unfold Seg5.relationRow4700 at r4700
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4700
  unfold Seg5.relationRow4701 at r4701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4701
  unfold Seg5.relationRow4702 at r4702
  unfold Seg5.relationRow4703 at r4703
  unfold Seg5.relationRow4704 at r4704
  unfold Seg5.relationRow4705 at r4705
  unfold Seg5.relationRow4706 at r4706
  have hrung133 (bit : Bool) (hbit : rho 2548 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩
        ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩
        ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩
        ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩ := by
    have hnextx : seg5AccX134 rho = seg5AccX133 rho + rho 4395 := by
      unfold seg5AccX134 seg5AccX133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 133]
      ring
    have hnexty : seg5AccY134 rho = seg5AccY133 rho + rho 4396 := by
      unfold seg5AccY134 seg5AccY133
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 133]
      ring
    have ha0 : (rho 4387 + rho 4388) * (seg5AccX133 rho + seg5AccY133 rho) = rho 4389 := by
      unfold seg5AccX133 seg5AccY133
      linear_combination r4694
    have ha1 : rho 4388 * seg5AccX133 rho = rho 4390 := by
      unfold seg5AccX133
      linear_combination r4695
    have ha2 : rho 4387 * seg5AccY133 rho = rho 4391 := by
      unfold seg5AccY133
      linear_combination r4696
    have ha3 : 3021 * rho 4390 * rho 4391 = rho 4392 := by
      linear_combination r4697
    have ha4 : rho 4393 * (1 + rho 4392) = rho 4390 + rho 4391 := by
      linear_combination r4698
    have ha5 : rho 4394 * (1 - rho 4392) = rho 4389 - rho 4390 - rho 4391 := by
      linear_combination r4699
    have haddx :
        rho 4393 * (1 + 3021 * (rho 4388 * seg5AccX133 rho) * (rho 4387 * seg5AccY133 rho)) =
          rho 4388 * seg5AccX133 rho + rho 4387 * seg5AccY133 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4394 * (1 - 3021 * (rho 4388 * seg5AccX133 rho) * (rho 4387 * seg5AccY133 rho)) =
          (-1) * (rho 4388 * seg5AccX133 rho) - rho 4387 * seg5AccY133 rho +
            (seg5AccY133 rho - seg5AccX133 rho * (-1)) * (rho 4387 + rho 4388) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4394 * (1 - rho 4392) = rho 4389 - rho 4390 - rho 4391 := ha5
        _ = (-1) * rho 4390 - rho 4391 + (seg5AccY133 rho - seg5AccX133 rho * (-1)) * (rho 4387 + rho 4388) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX134 rho = seg5AccX133 rho - Bool.toZMod bit * (seg5AccX133 rho - rho 4393) := by
      have hd : rho 4395 = Bool.toZMod bit * (rho 4393 - seg5AccX133 rho) := by
        rw [← hbit]
        unfold seg5AccX133
        linear_combination -r4700
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY134 rho = seg5AccY133 rho - Bool.toZMod bit * (seg5AccY133 rho - rho 4394) := by
      have hd : rho 4396 = Bool.toZMod bit * (rho 4394 - seg5AccY133 rho) := by
        rw [← hbit]
        unfold seg5AccY133
        linear_combination -r4701
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4387 * rho 4388 = rho 4397 := by linear_combination r4702
    have hd1 : rho 4387 * rho 4387 = rho 4398 := by linear_combination r4703
    have hd2 : rho 4388 * rho 4388 = rho 4399 := by linear_combination r4704
    have hd3 : rho 4400 * (rho 4388 * rho 4388 + rho 4387 * rho 4387 * (-1)) = 2 * (rho 4387 * rho 4388) := by
      rw [hd0, hd1, hd2]
      linear_combination r4705
    have hd4 : rho 4401 * (2 - (rho 4388 * rho 4388 + rho 4387 * rho 4387 * (-1))) = rho 4388 * rho 4388 - rho 4387 * rho 4387 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4706
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX133 rho : Seg5.F), (seg5AccY133 rho : Seg5.F)⟩
      ⟨(rho 4387 : Seg5.F), (rho 4388 : Seg5.F)⟩
      ⟨(rho 4393 : Seg5.F), (rho 4394 : Seg5.F)⟩
      ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩
      ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung133

theorem seg5_rows134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4707 rho ∧ Seg5.relationRow4708 rho ∧ Seg5.relationRow4709 rho ∧ Seg5.relationRow4710 rho ∧ Seg5.relationRow4711 rho ∧ Seg5.relationRow4712 rho ∧ Seg5.relationRow4713 rho ∧ Seg5.relationRow4714 rho ∧ Seg5.relationRow4715 rho ∧ Seg5.relationRow4716 rho ∧ Seg5.relationRow4717 rho ∧ Seg5.relationRow4718 rho ∧ Seg5.relationRow4719 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  exact ⟨r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩

theorem seg5_rung134 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2549 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩
        ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩
        ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩
        ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩ := by
  obtain ⟨r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩ := seg5_rows134 rho h
  unfold Seg5.relationRow4707 at r4707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707
  unfold Seg5.relationRow4708 at r4708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4708
  unfold Seg5.relationRow4709 at r4709
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4709
  unfold Seg5.relationRow4710 at r4710
  unfold Seg5.relationRow4711 at r4711
  unfold Seg5.relationRow4712 at r4712
  unfold Seg5.relationRow4713 at r4713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713
  unfold Seg5.relationRow4714 at r4714
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4714
  unfold Seg5.relationRow4715 at r4715
  unfold Seg5.relationRow4716 at r4716
  unfold Seg5.relationRow4717 at r4717
  unfold Seg5.relationRow4718 at r4718
  unfold Seg5.relationRow4719 at r4719
  have hrung134 (bit : Bool) (hbit : rho 2549 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩
        ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩
        ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩
        ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩ := by
    have hnextx : seg5AccX135 rho = seg5AccX134 rho + rho 4408 := by
      unfold seg5AccX135 seg5AccX134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 134]
      ring
    have hnexty : seg5AccY135 rho = seg5AccY134 rho + rho 4409 := by
      unfold seg5AccY135 seg5AccY134
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 134]
      ring
    have ha0 : (rho 4400 + rho 4401) * (seg5AccX134 rho + seg5AccY134 rho) = rho 4402 := by
      unfold seg5AccX134 seg5AccY134
      linear_combination r4707
    have ha1 : rho 4401 * seg5AccX134 rho = rho 4403 := by
      unfold seg5AccX134
      linear_combination r4708
    have ha2 : rho 4400 * seg5AccY134 rho = rho 4404 := by
      unfold seg5AccY134
      linear_combination r4709
    have ha3 : 3021 * rho 4403 * rho 4404 = rho 4405 := by
      linear_combination r4710
    have ha4 : rho 4406 * (1 + rho 4405) = rho 4403 + rho 4404 := by
      linear_combination r4711
    have ha5 : rho 4407 * (1 - rho 4405) = rho 4402 - rho 4403 - rho 4404 := by
      linear_combination r4712
    have haddx :
        rho 4406 * (1 + 3021 * (rho 4401 * seg5AccX134 rho) * (rho 4400 * seg5AccY134 rho)) =
          rho 4401 * seg5AccX134 rho + rho 4400 * seg5AccY134 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4407 * (1 - 3021 * (rho 4401 * seg5AccX134 rho) * (rho 4400 * seg5AccY134 rho)) =
          (-1) * (rho 4401 * seg5AccX134 rho) - rho 4400 * seg5AccY134 rho +
            (seg5AccY134 rho - seg5AccX134 rho * (-1)) * (rho 4400 + rho 4401) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4407 * (1 - rho 4405) = rho 4402 - rho 4403 - rho 4404 := ha5
        _ = (-1) * rho 4403 - rho 4404 + (seg5AccY134 rho - seg5AccX134 rho * (-1)) * (rho 4400 + rho 4401) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX135 rho = seg5AccX134 rho - Bool.toZMod bit * (seg5AccX134 rho - rho 4406) := by
      have hd : rho 4408 = Bool.toZMod bit * (rho 4406 - seg5AccX134 rho) := by
        rw [← hbit]
        unfold seg5AccX134
        linear_combination -r4713
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY135 rho = seg5AccY134 rho - Bool.toZMod bit * (seg5AccY134 rho - rho 4407) := by
      have hd : rho 4409 = Bool.toZMod bit * (rho 4407 - seg5AccY134 rho) := by
        rw [← hbit]
        unfold seg5AccY134
        linear_combination -r4714
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4400 * rho 4401 = rho 4410 := by linear_combination r4715
    have hd1 : rho 4400 * rho 4400 = rho 4411 := by linear_combination r4716
    have hd2 : rho 4401 * rho 4401 = rho 4412 := by linear_combination r4717
    have hd3 : rho 4413 * (rho 4401 * rho 4401 + rho 4400 * rho 4400 * (-1)) = 2 * (rho 4400 * rho 4401) := by
      rw [hd0, hd1, hd2]
      linear_combination r4718
    have hd4 : rho 4414 * (2 - (rho 4401 * rho 4401 + rho 4400 * rho 4400 * (-1))) = rho 4401 * rho 4401 - rho 4400 * rho 4400 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4719
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX134 rho : Seg5.F), (seg5AccY134 rho : Seg5.F)⟩
      ⟨(rho 4400 : Seg5.F), (rho 4401 : Seg5.F)⟩
      ⟨(rho 4406 : Seg5.F), (rho 4407 : Seg5.F)⟩
      ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩
      ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung134

theorem seg5_rows135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4720 rho ∧ Seg5.relationRow4721 rho ∧ Seg5.relationRow4722 rho ∧ Seg5.relationRow4723 rho ∧ Seg5.relationRow4724 rho ∧ Seg5.relationRow4725 rho ∧ Seg5.relationRow4726 rho ∧ Seg5.relationRow4727 rho ∧ Seg5.relationRow4728 rho ∧ Seg5.relationRow4729 rho ∧ Seg5.relationRow4730 rho ∧ Seg5.relationRow4731 rho ∧ Seg5.relationRow4732 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩

theorem seg5_rung135 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2550 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩
        ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩
        ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩
        ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩ := by
  obtain ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732⟩ := seg5_rows135 rho h
  unfold Seg5.relationRow4720 at r4720
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4720
  unfold Seg5.relationRow4721 at r4721
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4721
  unfold Seg5.relationRow4722 at r4722
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4722
  unfold Seg5.relationRow4723 at r4723
  unfold Seg5.relationRow4724 at r4724
  unfold Seg5.relationRow4725 at r4725
  unfold Seg5.relationRow4726 at r4726
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726
  unfold Seg5.relationRow4727 at r4727
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727
  unfold Seg5.relationRow4728 at r4728
  unfold Seg5.relationRow4729 at r4729
  unfold Seg5.relationRow4730 at r4730
  unfold Seg5.relationRow4731 at r4731
  unfold Seg5.relationRow4732 at r4732
  have hrung135 (bit : Bool) (hbit : rho 2550 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩
        ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩
        ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩
        ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩ := by
    have hnextx : seg5AccX136 rho = seg5AccX135 rho + rho 4421 := by
      unfold seg5AccX136 seg5AccX135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 135]
      ring
    have hnexty : seg5AccY136 rho = seg5AccY135 rho + rho 4422 := by
      unfold seg5AccY136 seg5AccY135
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 135]
      ring
    have ha0 : (rho 4413 + rho 4414) * (seg5AccX135 rho + seg5AccY135 rho) = rho 4415 := by
      unfold seg5AccX135 seg5AccY135
      linear_combination r4720
    have ha1 : rho 4414 * seg5AccX135 rho = rho 4416 := by
      unfold seg5AccX135
      linear_combination r4721
    have ha2 : rho 4413 * seg5AccY135 rho = rho 4417 := by
      unfold seg5AccY135
      linear_combination r4722
    have ha3 : 3021 * rho 4416 * rho 4417 = rho 4418 := by
      linear_combination r4723
    have ha4 : rho 4419 * (1 + rho 4418) = rho 4416 + rho 4417 := by
      linear_combination r4724
    have ha5 : rho 4420 * (1 - rho 4418) = rho 4415 - rho 4416 - rho 4417 := by
      linear_combination r4725
    have haddx :
        rho 4419 * (1 + 3021 * (rho 4414 * seg5AccX135 rho) * (rho 4413 * seg5AccY135 rho)) =
          rho 4414 * seg5AccX135 rho + rho 4413 * seg5AccY135 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4420 * (1 - 3021 * (rho 4414 * seg5AccX135 rho) * (rho 4413 * seg5AccY135 rho)) =
          (-1) * (rho 4414 * seg5AccX135 rho) - rho 4413 * seg5AccY135 rho +
            (seg5AccY135 rho - seg5AccX135 rho * (-1)) * (rho 4413 + rho 4414) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4420 * (1 - rho 4418) = rho 4415 - rho 4416 - rho 4417 := ha5
        _ = (-1) * rho 4416 - rho 4417 + (seg5AccY135 rho - seg5AccX135 rho * (-1)) * (rho 4413 + rho 4414) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX136 rho = seg5AccX135 rho - Bool.toZMod bit * (seg5AccX135 rho - rho 4419) := by
      have hd : rho 4421 = Bool.toZMod bit * (rho 4419 - seg5AccX135 rho) := by
        rw [← hbit]
        unfold seg5AccX135
        linear_combination -r4726
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY136 rho = seg5AccY135 rho - Bool.toZMod bit * (seg5AccY135 rho - rho 4420) := by
      have hd : rho 4422 = Bool.toZMod bit * (rho 4420 - seg5AccY135 rho) := by
        rw [← hbit]
        unfold seg5AccY135
        linear_combination -r4727
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4413 * rho 4414 = rho 4423 := by linear_combination r4728
    have hd1 : rho 4413 * rho 4413 = rho 4424 := by linear_combination r4729
    have hd2 : rho 4414 * rho 4414 = rho 4425 := by linear_combination r4730
    have hd3 : rho 4426 * (rho 4414 * rho 4414 + rho 4413 * rho 4413 * (-1)) = 2 * (rho 4413 * rho 4414) := by
      rw [hd0, hd1, hd2]
      linear_combination r4731
    have hd4 : rho 4427 * (2 - (rho 4414 * rho 4414 + rho 4413 * rho 4413 * (-1))) = rho 4414 * rho 4414 - rho 4413 * rho 4413 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4732
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX135 rho : Seg5.F), (seg5AccY135 rho : Seg5.F)⟩
      ⟨(rho 4413 : Seg5.F), (rho 4414 : Seg5.F)⟩
      ⟨(rho 4419 : Seg5.F), (rho 4420 : Seg5.F)⟩
      ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩
      ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung135

theorem seg5_rows136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4733 rho ∧ Seg5.relationRow4734 rho ∧ Seg5.relationRow4735 rho ∧ Seg5.relationRow4736 rho ∧ Seg5.relationRow4737 rho ∧ Seg5.relationRow4738 rho ∧ Seg5.relationRow4739 rho ∧ Seg5.relationRow4740 rho ∧ Seg5.relationRow4741 rho ∧ Seg5.relationRow4742 rho ∧ Seg5.relationRow4743 rho ∧ Seg5.relationRow4744 rho ∧ Seg5.relationRow4745 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745⟩

theorem seg5_rung136 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2551 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩
        ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩
        ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩
        ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩ := by
  obtain ⟨r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745⟩ := seg5_rows136 rho h
  unfold Seg5.relationRow4733 at r4733
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733
  unfold Seg5.relationRow4734 at r4734
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4734
  unfold Seg5.relationRow4735 at r4735
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4735
  unfold Seg5.relationRow4736 at r4736
  unfold Seg5.relationRow4737 at r4737
  unfold Seg5.relationRow4738 at r4738
  unfold Seg5.relationRow4739 at r4739
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4739
  unfold Seg5.relationRow4740 at r4740
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740
  unfold Seg5.relationRow4741 at r4741
  unfold Seg5.relationRow4742 at r4742
  unfold Seg5.relationRow4743 at r4743
  unfold Seg5.relationRow4744 at r4744
  unfold Seg5.relationRow4745 at r4745
  have hrung136 (bit : Bool) (hbit : rho 2551 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩
        ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩
        ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩
        ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩ := by
    have hnextx : seg5AccX137 rho = seg5AccX136 rho + rho 4434 := by
      unfold seg5AccX137 seg5AccX136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 136]
      ring
    have hnexty : seg5AccY137 rho = seg5AccY136 rho + rho 4435 := by
      unfold seg5AccY137 seg5AccY136
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 136]
      ring
    have ha0 : (rho 4426 + rho 4427) * (seg5AccX136 rho + seg5AccY136 rho) = rho 4428 := by
      unfold seg5AccX136 seg5AccY136
      linear_combination r4733
    have ha1 : rho 4427 * seg5AccX136 rho = rho 4429 := by
      unfold seg5AccX136
      linear_combination r4734
    have ha2 : rho 4426 * seg5AccY136 rho = rho 4430 := by
      unfold seg5AccY136
      linear_combination r4735
    have ha3 : 3021 * rho 4429 * rho 4430 = rho 4431 := by
      linear_combination r4736
    have ha4 : rho 4432 * (1 + rho 4431) = rho 4429 + rho 4430 := by
      linear_combination r4737
    have ha5 : rho 4433 * (1 - rho 4431) = rho 4428 - rho 4429 - rho 4430 := by
      linear_combination r4738
    have haddx :
        rho 4432 * (1 + 3021 * (rho 4427 * seg5AccX136 rho) * (rho 4426 * seg5AccY136 rho)) =
          rho 4427 * seg5AccX136 rho + rho 4426 * seg5AccY136 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4433 * (1 - 3021 * (rho 4427 * seg5AccX136 rho) * (rho 4426 * seg5AccY136 rho)) =
          (-1) * (rho 4427 * seg5AccX136 rho) - rho 4426 * seg5AccY136 rho +
            (seg5AccY136 rho - seg5AccX136 rho * (-1)) * (rho 4426 + rho 4427) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4433 * (1 - rho 4431) = rho 4428 - rho 4429 - rho 4430 := ha5
        _ = (-1) * rho 4429 - rho 4430 + (seg5AccY136 rho - seg5AccX136 rho * (-1)) * (rho 4426 + rho 4427) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX137 rho = seg5AccX136 rho - Bool.toZMod bit * (seg5AccX136 rho - rho 4432) := by
      have hd : rho 4434 = Bool.toZMod bit * (rho 4432 - seg5AccX136 rho) := by
        rw [← hbit]
        unfold seg5AccX136
        linear_combination -r4739
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY137 rho = seg5AccY136 rho - Bool.toZMod bit * (seg5AccY136 rho - rho 4433) := by
      have hd : rho 4435 = Bool.toZMod bit * (rho 4433 - seg5AccY136 rho) := by
        rw [← hbit]
        unfold seg5AccY136
        linear_combination -r4740
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4426 * rho 4427 = rho 4436 := by linear_combination r4741
    have hd1 : rho 4426 * rho 4426 = rho 4437 := by linear_combination r4742
    have hd2 : rho 4427 * rho 4427 = rho 4438 := by linear_combination r4743
    have hd3 : rho 4439 * (rho 4427 * rho 4427 + rho 4426 * rho 4426 * (-1)) = 2 * (rho 4426 * rho 4427) := by
      rw [hd0, hd1, hd2]
      linear_combination r4744
    have hd4 : rho 4440 * (2 - (rho 4427 * rho 4427 + rho 4426 * rho 4426 * (-1))) = rho 4427 * rho 4427 - rho 4426 * rho 4426 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4745
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX136 rho : Seg5.F), (seg5AccY136 rho : Seg5.F)⟩
      ⟨(rho 4426 : Seg5.F), (rho 4427 : Seg5.F)⟩
      ⟨(rho 4432 : Seg5.F), (rho 4433 : Seg5.F)⟩
      ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩
      ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung136

theorem seg5_rows137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4746 rho ∧ Seg5.relationRow4747 rho ∧ Seg5.relationRow4748 rho ∧ Seg5.relationRow4749 rho ∧ Seg5.relationRow4750 rho ∧ Seg5.relationRow4751 rho ∧ Seg5.relationRow4752 rho ∧ Seg5.relationRow4753 rho ∧ Seg5.relationRow4754 rho ∧ Seg5.relationRow4755 rho ∧ Seg5.relationRow4756 rho ∧ Seg5.relationRow4757 rho ∧ Seg5.relationRow4758 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758⟩

theorem seg5_rung137 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2552 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩
        ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩
        ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩
        ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩ := by
  obtain ⟨r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758⟩ := seg5_rows137 rho h
  unfold Seg5.relationRow4746 at r4746
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4746
  unfold Seg5.relationRow4747 at r4747
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4747
  unfold Seg5.relationRow4748 at r4748
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4748
  unfold Seg5.relationRow4749 at r4749
  unfold Seg5.relationRow4750 at r4750
  unfold Seg5.relationRow4751 at r4751
  unfold Seg5.relationRow4752 at r4752
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4752
  unfold Seg5.relationRow4753 at r4753
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4753
  unfold Seg5.relationRow4754 at r4754
  unfold Seg5.relationRow4755 at r4755
  unfold Seg5.relationRow4756 at r4756
  unfold Seg5.relationRow4757 at r4757
  unfold Seg5.relationRow4758 at r4758
  have hrung137 (bit : Bool) (hbit : rho 2552 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩
        ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩
        ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩
        ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩ := by
    have hnextx : seg5AccX138 rho = seg5AccX137 rho + rho 4447 := by
      unfold seg5AccX138 seg5AccX137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 137]
      ring
    have hnexty : seg5AccY138 rho = seg5AccY137 rho + rho 4448 := by
      unfold seg5AccY138 seg5AccY137
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 137]
      ring
    have ha0 : (rho 4439 + rho 4440) * (seg5AccX137 rho + seg5AccY137 rho) = rho 4441 := by
      unfold seg5AccX137 seg5AccY137
      linear_combination r4746
    have ha1 : rho 4440 * seg5AccX137 rho = rho 4442 := by
      unfold seg5AccX137
      linear_combination r4747
    have ha2 : rho 4439 * seg5AccY137 rho = rho 4443 := by
      unfold seg5AccY137
      linear_combination r4748
    have ha3 : 3021 * rho 4442 * rho 4443 = rho 4444 := by
      linear_combination r4749
    have ha4 : rho 4445 * (1 + rho 4444) = rho 4442 + rho 4443 := by
      linear_combination r4750
    have ha5 : rho 4446 * (1 - rho 4444) = rho 4441 - rho 4442 - rho 4443 := by
      linear_combination r4751
    have haddx :
        rho 4445 * (1 + 3021 * (rho 4440 * seg5AccX137 rho) * (rho 4439 * seg5AccY137 rho)) =
          rho 4440 * seg5AccX137 rho + rho 4439 * seg5AccY137 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4446 * (1 - 3021 * (rho 4440 * seg5AccX137 rho) * (rho 4439 * seg5AccY137 rho)) =
          (-1) * (rho 4440 * seg5AccX137 rho) - rho 4439 * seg5AccY137 rho +
            (seg5AccY137 rho - seg5AccX137 rho * (-1)) * (rho 4439 + rho 4440) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4446 * (1 - rho 4444) = rho 4441 - rho 4442 - rho 4443 := ha5
        _ = (-1) * rho 4442 - rho 4443 + (seg5AccY137 rho - seg5AccX137 rho * (-1)) * (rho 4439 + rho 4440) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX138 rho = seg5AccX137 rho - Bool.toZMod bit * (seg5AccX137 rho - rho 4445) := by
      have hd : rho 4447 = Bool.toZMod bit * (rho 4445 - seg5AccX137 rho) := by
        rw [← hbit]
        unfold seg5AccX137
        linear_combination -r4752
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY138 rho = seg5AccY137 rho - Bool.toZMod bit * (seg5AccY137 rho - rho 4446) := by
      have hd : rho 4448 = Bool.toZMod bit * (rho 4446 - seg5AccY137 rho) := by
        rw [← hbit]
        unfold seg5AccY137
        linear_combination -r4753
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4439 * rho 4440 = rho 4449 := by linear_combination r4754
    have hd1 : rho 4439 * rho 4439 = rho 4450 := by linear_combination r4755
    have hd2 : rho 4440 * rho 4440 = rho 4451 := by linear_combination r4756
    have hd3 : rho 4452 * (rho 4440 * rho 4440 + rho 4439 * rho 4439 * (-1)) = 2 * (rho 4439 * rho 4440) := by
      rw [hd0, hd1, hd2]
      linear_combination r4757
    have hd4 : rho 4453 * (2 - (rho 4440 * rho 4440 + rho 4439 * rho 4439 * (-1))) = rho 4440 * rho 4440 - rho 4439 * rho 4439 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4758
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX137 rho : Seg5.F), (seg5AccY137 rho : Seg5.F)⟩
      ⟨(rho 4439 : Seg5.F), (rho 4440 : Seg5.F)⟩
      ⟨(rho 4445 : Seg5.F), (rho 4446 : Seg5.F)⟩
      ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩
      ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung137

theorem seg5_rows138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4759 rho ∧ Seg5.relationRow4760 rho ∧ Seg5.relationRow4761 rho ∧ Seg5.relationRow4762 rho ∧ Seg5.relationRow4763 rho ∧ Seg5.relationRow4764 rho ∧ Seg5.relationRow4765 rho ∧ Seg5.relationRow4766 rho ∧ Seg5.relationRow4767 rho ∧ Seg5.relationRow4768 rho ∧ Seg5.relationRow4769 rho ∧ Seg5.relationRow4770 rho ∧ Seg5.relationRow4771 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771⟩

theorem seg5_rung138 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2553 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩
        ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩
        ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩
        ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩ := by
  obtain ⟨r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771⟩ := seg5_rows138 rho h
  unfold Seg5.relationRow4759 at r4759
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4759
  unfold Seg5.relationRow4760 at r4760
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4760
  unfold Seg5.relationRow4761 at r4761
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4761
  unfold Seg5.relationRow4762 at r4762
  unfold Seg5.relationRow4763 at r4763
  unfold Seg5.relationRow4764 at r4764
  unfold Seg5.relationRow4765 at r4765
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4765
  unfold Seg5.relationRow4766 at r4766
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4766
  unfold Seg5.relationRow4767 at r4767
  unfold Seg5.relationRow4768 at r4768
  unfold Seg5.relationRow4769 at r4769
  unfold Seg5.relationRow4770 at r4770
  unfold Seg5.relationRow4771 at r4771
  have hrung138 (bit : Bool) (hbit : rho 2553 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩
        ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩
        ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩
        ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩ := by
    have hnextx : seg5AccX139 rho = seg5AccX138 rho + rho 4460 := by
      unfold seg5AccX139 seg5AccX138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 138]
      ring
    have hnexty : seg5AccY139 rho = seg5AccY138 rho + rho 4461 := by
      unfold seg5AccY139 seg5AccY138
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 138]
      ring
    have ha0 : (rho 4452 + rho 4453) * (seg5AccX138 rho + seg5AccY138 rho) = rho 4454 := by
      unfold seg5AccX138 seg5AccY138
      linear_combination r4759
    have ha1 : rho 4453 * seg5AccX138 rho = rho 4455 := by
      unfold seg5AccX138
      linear_combination r4760
    have ha2 : rho 4452 * seg5AccY138 rho = rho 4456 := by
      unfold seg5AccY138
      linear_combination r4761
    have ha3 : 3021 * rho 4455 * rho 4456 = rho 4457 := by
      linear_combination r4762
    have ha4 : rho 4458 * (1 + rho 4457) = rho 4455 + rho 4456 := by
      linear_combination r4763
    have ha5 : rho 4459 * (1 - rho 4457) = rho 4454 - rho 4455 - rho 4456 := by
      linear_combination r4764
    have haddx :
        rho 4458 * (1 + 3021 * (rho 4453 * seg5AccX138 rho) * (rho 4452 * seg5AccY138 rho)) =
          rho 4453 * seg5AccX138 rho + rho 4452 * seg5AccY138 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4459 * (1 - 3021 * (rho 4453 * seg5AccX138 rho) * (rho 4452 * seg5AccY138 rho)) =
          (-1) * (rho 4453 * seg5AccX138 rho) - rho 4452 * seg5AccY138 rho +
            (seg5AccY138 rho - seg5AccX138 rho * (-1)) * (rho 4452 + rho 4453) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4459 * (1 - rho 4457) = rho 4454 - rho 4455 - rho 4456 := ha5
        _ = (-1) * rho 4455 - rho 4456 + (seg5AccY138 rho - seg5AccX138 rho * (-1)) * (rho 4452 + rho 4453) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX139 rho = seg5AccX138 rho - Bool.toZMod bit * (seg5AccX138 rho - rho 4458) := by
      have hd : rho 4460 = Bool.toZMod bit * (rho 4458 - seg5AccX138 rho) := by
        rw [← hbit]
        unfold seg5AccX138
        linear_combination -r4765
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY139 rho = seg5AccY138 rho - Bool.toZMod bit * (seg5AccY138 rho - rho 4459) := by
      have hd : rho 4461 = Bool.toZMod bit * (rho 4459 - seg5AccY138 rho) := by
        rw [← hbit]
        unfold seg5AccY138
        linear_combination -r4766
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4452 * rho 4453 = rho 4462 := by linear_combination r4767
    have hd1 : rho 4452 * rho 4452 = rho 4463 := by linear_combination r4768
    have hd2 : rho 4453 * rho 4453 = rho 4464 := by linear_combination r4769
    have hd3 : rho 4465 * (rho 4453 * rho 4453 + rho 4452 * rho 4452 * (-1)) = 2 * (rho 4452 * rho 4453) := by
      rw [hd0, hd1, hd2]
      linear_combination r4770
    have hd4 : rho 4466 * (2 - (rho 4453 * rho 4453 + rho 4452 * rho 4452 * (-1))) = rho 4453 * rho 4453 - rho 4452 * rho 4452 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4771
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX138 rho : Seg5.F), (seg5AccY138 rho : Seg5.F)⟩
      ⟨(rho 4452 : Seg5.F), (rho 4453 : Seg5.F)⟩
      ⟨(rho 4458 : Seg5.F), (rho 4459 : Seg5.F)⟩
      ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩
      ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung138

theorem seg5_rows139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4772 rho ∧ Seg5.relationRow4773 rho ∧ Seg5.relationRow4774 rho ∧ Seg5.relationRow4775 rho ∧ Seg5.relationRow4776 rho ∧ Seg5.relationRow4777 rho ∧ Seg5.relationRow4778 rho ∧ Seg5.relationRow4779 rho ∧ Seg5.relationRow4780 rho ∧ Seg5.relationRow4781 rho ∧ Seg5.relationRow4782 rho ∧ Seg5.relationRow4783 rho ∧ Seg5.relationRow4784 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784⟩

theorem seg5_rung139 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2554 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩
        ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩
        ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩
        ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩ := by
  obtain ⟨r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784⟩ := seg5_rows139 rho h
  unfold Seg5.relationRow4772 at r4772
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4772
  unfold Seg5.relationRow4773 at r4773
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4773
  unfold Seg5.relationRow4774 at r4774
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4774
  unfold Seg5.relationRow4775 at r4775
  unfold Seg5.relationRow4776 at r4776
  unfold Seg5.relationRow4777 at r4777
  unfold Seg5.relationRow4778 at r4778
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4778
  unfold Seg5.relationRow4779 at r4779
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4779
  unfold Seg5.relationRow4780 at r4780
  unfold Seg5.relationRow4781 at r4781
  unfold Seg5.relationRow4782 at r4782
  unfold Seg5.relationRow4783 at r4783
  unfold Seg5.relationRow4784 at r4784
  have hrung139 (bit : Bool) (hbit : rho 2554 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩
        ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩
        ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩
        ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩ := by
    have hnextx : seg5AccX140 rho = seg5AccX139 rho + rho 4473 := by
      unfold seg5AccX140 seg5AccX139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 139]
      ring
    have hnexty : seg5AccY140 rho = seg5AccY139 rho + rho 4474 := by
      unfold seg5AccY140 seg5AccY139
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 139]
      ring
    have ha0 : (rho 4465 + rho 4466) * (seg5AccX139 rho + seg5AccY139 rho) = rho 4467 := by
      unfold seg5AccX139 seg5AccY139
      linear_combination r4772
    have ha1 : rho 4466 * seg5AccX139 rho = rho 4468 := by
      unfold seg5AccX139
      linear_combination r4773
    have ha2 : rho 4465 * seg5AccY139 rho = rho 4469 := by
      unfold seg5AccY139
      linear_combination r4774
    have ha3 : 3021 * rho 4468 * rho 4469 = rho 4470 := by
      linear_combination r4775
    have ha4 : rho 4471 * (1 + rho 4470) = rho 4468 + rho 4469 := by
      linear_combination r4776
    have ha5 : rho 4472 * (1 - rho 4470) = rho 4467 - rho 4468 - rho 4469 := by
      linear_combination r4777
    have haddx :
        rho 4471 * (1 + 3021 * (rho 4466 * seg5AccX139 rho) * (rho 4465 * seg5AccY139 rho)) =
          rho 4466 * seg5AccX139 rho + rho 4465 * seg5AccY139 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4472 * (1 - 3021 * (rho 4466 * seg5AccX139 rho) * (rho 4465 * seg5AccY139 rho)) =
          (-1) * (rho 4466 * seg5AccX139 rho) - rho 4465 * seg5AccY139 rho +
            (seg5AccY139 rho - seg5AccX139 rho * (-1)) * (rho 4465 + rho 4466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4472 * (1 - rho 4470) = rho 4467 - rho 4468 - rho 4469 := ha5
        _ = (-1) * rho 4468 - rho 4469 + (seg5AccY139 rho - seg5AccX139 rho * (-1)) * (rho 4465 + rho 4466) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX140 rho = seg5AccX139 rho - Bool.toZMod bit * (seg5AccX139 rho - rho 4471) := by
      have hd : rho 4473 = Bool.toZMod bit * (rho 4471 - seg5AccX139 rho) := by
        rw [← hbit]
        unfold seg5AccX139
        linear_combination -r4778
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY140 rho = seg5AccY139 rho - Bool.toZMod bit * (seg5AccY139 rho - rho 4472) := by
      have hd : rho 4474 = Bool.toZMod bit * (rho 4472 - seg5AccY139 rho) := by
        rw [← hbit]
        unfold seg5AccY139
        linear_combination -r4779
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4465 * rho 4466 = rho 4475 := by linear_combination r4780
    have hd1 : rho 4465 * rho 4465 = rho 4476 := by linear_combination r4781
    have hd2 : rho 4466 * rho 4466 = rho 4477 := by linear_combination r4782
    have hd3 : rho 4478 * (rho 4466 * rho 4466 + rho 4465 * rho 4465 * (-1)) = 2 * (rho 4465 * rho 4466) := by
      rw [hd0, hd1, hd2]
      linear_combination r4783
    have hd4 : rho 4479 * (2 - (rho 4466 * rho 4466 + rho 4465 * rho 4465 * (-1))) = rho 4466 * rho 4466 - rho 4465 * rho 4465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4784
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX139 rho : Seg5.F), (seg5AccY139 rho : Seg5.F)⟩
      ⟨(rho 4465 : Seg5.F), (rho 4466 : Seg5.F)⟩
      ⟨(rho 4471 : Seg5.F), (rho 4472 : Seg5.F)⟩
      ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩
      ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung139

theorem seg5_rows140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4785 rho ∧ Seg5.relationRow4786 rho ∧ Seg5.relationRow4787 rho ∧ Seg5.relationRow4788 rho ∧ Seg5.relationRow4789 rho ∧ Seg5.relationRow4790 rho ∧ Seg5.relationRow4791 rho ∧ Seg5.relationRow4792 rho ∧ Seg5.relationRow4793 rho ∧ Seg5.relationRow4794 rho ∧ Seg5.relationRow4795 rho ∧ Seg5.relationRow4796 rho ∧ Seg5.relationRow4797 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, _, _⟩
  exact ⟨r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797⟩

theorem seg5_rung140 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2555 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩
        ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩
        ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩
        ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩ := by
  obtain ⟨r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797⟩ := seg5_rows140 rho h
  unfold Seg5.relationRow4785 at r4785
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4785
  unfold Seg5.relationRow4786 at r4786
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4786
  unfold Seg5.relationRow4787 at r4787
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4787
  unfold Seg5.relationRow4788 at r4788
  unfold Seg5.relationRow4789 at r4789
  unfold Seg5.relationRow4790 at r4790
  unfold Seg5.relationRow4791 at r4791
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4791
  unfold Seg5.relationRow4792 at r4792
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4792
  unfold Seg5.relationRow4793 at r4793
  unfold Seg5.relationRow4794 at r4794
  unfold Seg5.relationRow4795 at r4795
  unfold Seg5.relationRow4796 at r4796
  unfold Seg5.relationRow4797 at r4797
  have hrung140 (bit : Bool) (hbit : rho 2555 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩
        ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩
        ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩
        ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩ := by
    have hnextx : seg5AccX141 rho = seg5AccX140 rho + rho 4486 := by
      unfold seg5AccX141 seg5AccX140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 140]
      ring
    have hnexty : seg5AccY141 rho = seg5AccY140 rho + rho 4487 := by
      unfold seg5AccY141 seg5AccY140
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 140]
      ring
    have ha0 : (rho 4478 + rho 4479) * (seg5AccX140 rho + seg5AccY140 rho) = rho 4480 := by
      unfold seg5AccX140 seg5AccY140
      linear_combination r4785
    have ha1 : rho 4479 * seg5AccX140 rho = rho 4481 := by
      unfold seg5AccX140
      linear_combination r4786
    have ha2 : rho 4478 * seg5AccY140 rho = rho 4482 := by
      unfold seg5AccY140
      linear_combination r4787
    have ha3 : 3021 * rho 4481 * rho 4482 = rho 4483 := by
      linear_combination r4788
    have ha4 : rho 4484 * (1 + rho 4483) = rho 4481 + rho 4482 := by
      linear_combination r4789
    have ha5 : rho 4485 * (1 - rho 4483) = rho 4480 - rho 4481 - rho 4482 := by
      linear_combination r4790
    have haddx :
        rho 4484 * (1 + 3021 * (rho 4479 * seg5AccX140 rho) * (rho 4478 * seg5AccY140 rho)) =
          rho 4479 * seg5AccX140 rho + rho 4478 * seg5AccY140 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4485 * (1 - 3021 * (rho 4479 * seg5AccX140 rho) * (rho 4478 * seg5AccY140 rho)) =
          (-1) * (rho 4479 * seg5AccX140 rho) - rho 4478 * seg5AccY140 rho +
            (seg5AccY140 rho - seg5AccX140 rho * (-1)) * (rho 4478 + rho 4479) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4485 * (1 - rho 4483) = rho 4480 - rho 4481 - rho 4482 := ha5
        _ = (-1) * rho 4481 - rho 4482 + (seg5AccY140 rho - seg5AccX140 rho * (-1)) * (rho 4478 + rho 4479) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX141 rho = seg5AccX140 rho - Bool.toZMod bit * (seg5AccX140 rho - rho 4484) := by
      have hd : rho 4486 = Bool.toZMod bit * (rho 4484 - seg5AccX140 rho) := by
        rw [← hbit]
        unfold seg5AccX140
        linear_combination -r4791
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY141 rho = seg5AccY140 rho - Bool.toZMod bit * (seg5AccY140 rho - rho 4485) := by
      have hd : rho 4487 = Bool.toZMod bit * (rho 4485 - seg5AccY140 rho) := by
        rw [← hbit]
        unfold seg5AccY140
        linear_combination -r4792
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4478 * rho 4479 = rho 4488 := by linear_combination r4793
    have hd1 : rho 4478 * rho 4478 = rho 4489 := by linear_combination r4794
    have hd2 : rho 4479 * rho 4479 = rho 4490 := by linear_combination r4795
    have hd3 : rho 4491 * (rho 4479 * rho 4479 + rho 4478 * rho 4478 * (-1)) = 2 * (rho 4478 * rho 4479) := by
      rw [hd0, hd1, hd2]
      linear_combination r4796
    have hd4 : rho 4492 * (2 - (rho 4479 * rho 4479 + rho 4478 * rho 4478 * (-1))) = rho 4479 * rho 4479 - rho 4478 * rho 4478 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4797
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX140 rho : Seg5.F), (seg5AccY140 rho : Seg5.F)⟩
      ⟨(rho 4478 : Seg5.F), (rho 4479 : Seg5.F)⟩
      ⟨(rho 4484 : Seg5.F), (rho 4485 : Seg5.F)⟩
      ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩
      ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung140

theorem seg5_rows141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4798 rho ∧ Seg5.relationRow4799 rho ∧ Seg5.relationRow4800 rho ∧ Seg5.relationRow4801 rho ∧ Seg5.relationRow4802 rho ∧ Seg5.relationRow4803 rho ∧ Seg5.relationRow4804 rho ∧ Seg5.relationRow4805 rho ∧ Seg5.relationRow4806 rho ∧ Seg5.relationRow4807 rho ∧ Seg5.relationRow4808 rho ∧ Seg5.relationRow4809 rho ∧ Seg5.relationRow4810 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4798, r4799⟩
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810⟩

theorem seg5_rung141 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2556 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩
        ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩
        ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩
        ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩ := by
  obtain ⟨r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810⟩ := seg5_rows141 rho h
  unfold Seg5.relationRow4798 at r4798
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4798
  unfold Seg5.relationRow4799 at r4799
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4799
  unfold Seg5.relationRow4800 at r4800
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4800
  unfold Seg5.relationRow4801 at r4801
  unfold Seg5.relationRow4802 at r4802
  unfold Seg5.relationRow4803 at r4803
  unfold Seg5.relationRow4804 at r4804
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4804
  unfold Seg5.relationRow4805 at r4805
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4805
  unfold Seg5.relationRow4806 at r4806
  unfold Seg5.relationRow4807 at r4807
  unfold Seg5.relationRow4808 at r4808
  unfold Seg5.relationRow4809 at r4809
  unfold Seg5.relationRow4810 at r4810
  have hrung141 (bit : Bool) (hbit : rho 2556 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩
        ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩
        ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩
        ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩ := by
    have hnextx : seg5AccX142 rho = seg5AccX141 rho + rho 4499 := by
      unfold seg5AccX142 seg5AccX141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 141]
      ring
    have hnexty : seg5AccY142 rho = seg5AccY141 rho + rho 4500 := by
      unfold seg5AccY142 seg5AccY141
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 141]
      ring
    have ha0 : (rho 4491 + rho 4492) * (seg5AccX141 rho + seg5AccY141 rho) = rho 4493 := by
      unfold seg5AccX141 seg5AccY141
      linear_combination r4798
    have ha1 : rho 4492 * seg5AccX141 rho = rho 4494 := by
      unfold seg5AccX141
      linear_combination r4799
    have ha2 : rho 4491 * seg5AccY141 rho = rho 4495 := by
      unfold seg5AccY141
      linear_combination r4800
    have ha3 : 3021 * rho 4494 * rho 4495 = rho 4496 := by
      linear_combination r4801
    have ha4 : rho 4497 * (1 + rho 4496) = rho 4494 + rho 4495 := by
      linear_combination r4802
    have ha5 : rho 4498 * (1 - rho 4496) = rho 4493 - rho 4494 - rho 4495 := by
      linear_combination r4803
    have haddx :
        rho 4497 * (1 + 3021 * (rho 4492 * seg5AccX141 rho) * (rho 4491 * seg5AccY141 rho)) =
          rho 4492 * seg5AccX141 rho + rho 4491 * seg5AccY141 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4498 * (1 - 3021 * (rho 4492 * seg5AccX141 rho) * (rho 4491 * seg5AccY141 rho)) =
          (-1) * (rho 4492 * seg5AccX141 rho) - rho 4491 * seg5AccY141 rho +
            (seg5AccY141 rho - seg5AccX141 rho * (-1)) * (rho 4491 + rho 4492) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4498 * (1 - rho 4496) = rho 4493 - rho 4494 - rho 4495 := ha5
        _ = (-1) * rho 4494 - rho 4495 + (seg5AccY141 rho - seg5AccX141 rho * (-1)) * (rho 4491 + rho 4492) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX142 rho = seg5AccX141 rho - Bool.toZMod bit * (seg5AccX141 rho - rho 4497) := by
      have hd : rho 4499 = Bool.toZMod bit * (rho 4497 - seg5AccX141 rho) := by
        rw [← hbit]
        unfold seg5AccX141
        linear_combination -r4804
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY142 rho = seg5AccY141 rho - Bool.toZMod bit * (seg5AccY141 rho - rho 4498) := by
      have hd : rho 4500 = Bool.toZMod bit * (rho 4498 - seg5AccY141 rho) := by
        rw [← hbit]
        unfold seg5AccY141
        linear_combination -r4805
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4491 * rho 4492 = rho 4501 := by linear_combination r4806
    have hd1 : rho 4491 * rho 4491 = rho 4502 := by linear_combination r4807
    have hd2 : rho 4492 * rho 4492 = rho 4503 := by linear_combination r4808
    have hd3 : rho 4504 * (rho 4492 * rho 4492 + rho 4491 * rho 4491 * (-1)) = 2 * (rho 4491 * rho 4492) := by
      rw [hd0, hd1, hd2]
      linear_combination r4809
    have hd4 : rho 4505 * (2 - (rho 4492 * rho 4492 + rho 4491 * rho 4491 * (-1))) = rho 4492 * rho 4492 - rho 4491 * rho 4491 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4810
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX141 rho : Seg5.F), (seg5AccY141 rho : Seg5.F)⟩
      ⟨(rho 4491 : Seg5.F), (rho 4492 : Seg5.F)⟩
      ⟨(rho 4497 : Seg5.F), (rho 4498 : Seg5.F)⟩
      ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩
      ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung141

theorem seg5_rows142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4811 rho ∧ Seg5.relationRow4812 rho ∧ Seg5.relationRow4813 rho ∧ Seg5.relationRow4814 rho ∧ Seg5.relationRow4815 rho ∧ Seg5.relationRow4816 rho ∧ Seg5.relationRow4817 rho ∧ Seg5.relationRow4818 rho ∧ Seg5.relationRow4819 rho ∧ Seg5.relationRow4820 rho ∧ Seg5.relationRow4821 rho ∧ Seg5.relationRow4822 rho ∧ Seg5.relationRow4823 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823⟩

theorem seg5_rung142 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2557 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩
        ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩
        ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩
        ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩ := by
  obtain ⟨r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823⟩ := seg5_rows142 rho h
  unfold Seg5.relationRow4811 at r4811
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4811
  unfold Seg5.relationRow4812 at r4812
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4812
  unfold Seg5.relationRow4813 at r4813
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4813
  unfold Seg5.relationRow4814 at r4814
  unfold Seg5.relationRow4815 at r4815
  unfold Seg5.relationRow4816 at r4816
  unfold Seg5.relationRow4817 at r4817
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4817
  unfold Seg5.relationRow4818 at r4818
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4818
  unfold Seg5.relationRow4819 at r4819
  unfold Seg5.relationRow4820 at r4820
  unfold Seg5.relationRow4821 at r4821
  unfold Seg5.relationRow4822 at r4822
  unfold Seg5.relationRow4823 at r4823
  have hrung142 (bit : Bool) (hbit : rho 2557 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩
        ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩
        ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩
        ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩ := by
    have hnextx : seg5AccX143 rho = seg5AccX142 rho + rho 4512 := by
      unfold seg5AccX143 seg5AccX142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 142]
      ring
    have hnexty : seg5AccY143 rho = seg5AccY142 rho + rho 4513 := by
      unfold seg5AccY143 seg5AccY142
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 142]
      ring
    have ha0 : (rho 4504 + rho 4505) * (seg5AccX142 rho + seg5AccY142 rho) = rho 4506 := by
      unfold seg5AccX142 seg5AccY142
      linear_combination r4811
    have ha1 : rho 4505 * seg5AccX142 rho = rho 4507 := by
      unfold seg5AccX142
      linear_combination r4812
    have ha2 : rho 4504 * seg5AccY142 rho = rho 4508 := by
      unfold seg5AccY142
      linear_combination r4813
    have ha3 : 3021 * rho 4507 * rho 4508 = rho 4509 := by
      linear_combination r4814
    have ha4 : rho 4510 * (1 + rho 4509) = rho 4507 + rho 4508 := by
      linear_combination r4815
    have ha5 : rho 4511 * (1 - rho 4509) = rho 4506 - rho 4507 - rho 4508 := by
      linear_combination r4816
    have haddx :
        rho 4510 * (1 + 3021 * (rho 4505 * seg5AccX142 rho) * (rho 4504 * seg5AccY142 rho)) =
          rho 4505 * seg5AccX142 rho + rho 4504 * seg5AccY142 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4511 * (1 - 3021 * (rho 4505 * seg5AccX142 rho) * (rho 4504 * seg5AccY142 rho)) =
          (-1) * (rho 4505 * seg5AccX142 rho) - rho 4504 * seg5AccY142 rho +
            (seg5AccY142 rho - seg5AccX142 rho * (-1)) * (rho 4504 + rho 4505) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4511 * (1 - rho 4509) = rho 4506 - rho 4507 - rho 4508 := ha5
        _ = (-1) * rho 4507 - rho 4508 + (seg5AccY142 rho - seg5AccX142 rho * (-1)) * (rho 4504 + rho 4505) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX143 rho = seg5AccX142 rho - Bool.toZMod bit * (seg5AccX142 rho - rho 4510) := by
      have hd : rho 4512 = Bool.toZMod bit * (rho 4510 - seg5AccX142 rho) := by
        rw [← hbit]
        unfold seg5AccX142
        linear_combination -r4817
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY143 rho = seg5AccY142 rho - Bool.toZMod bit * (seg5AccY142 rho - rho 4511) := by
      have hd : rho 4513 = Bool.toZMod bit * (rho 4511 - seg5AccY142 rho) := by
        rw [← hbit]
        unfold seg5AccY142
        linear_combination -r4818
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4504 * rho 4505 = rho 4514 := by linear_combination r4819
    have hd1 : rho 4504 * rho 4504 = rho 4515 := by linear_combination r4820
    have hd2 : rho 4505 * rho 4505 = rho 4516 := by linear_combination r4821
    have hd3 : rho 4517 * (rho 4505 * rho 4505 + rho 4504 * rho 4504 * (-1)) = 2 * (rho 4504 * rho 4505) := by
      rw [hd0, hd1, hd2]
      linear_combination r4822
    have hd4 : rho 4518 * (2 - (rho 4505 * rho 4505 + rho 4504 * rho 4504 * (-1))) = rho 4505 * rho 4505 - rho 4504 * rho 4504 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4823
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX142 rho : Seg5.F), (seg5AccY142 rho : Seg5.F)⟩
      ⟨(rho 4504 : Seg5.F), (rho 4505 : Seg5.F)⟩
      ⟨(rho 4510 : Seg5.F), (rho 4511 : Seg5.F)⟩
      ⟨(seg5AccX143 rho : Seg5.F), (seg5AccY143 rho : Seg5.F)⟩
      ⟨(rho 4517 : Seg5.F), (rho 4518 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung142

theorem seg5_hstep_c12 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 132 ≤ i → i < 143 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung132 rho h bits[132]! (hbitAt 132 (by omega)) hacc hcur
  · exact seg5_rung133 rho h bits[133]! (hbitAt 133 (by omega)) hacc hcur
  · exact seg5_rung134 rho h bits[134]! (hbitAt 134 (by omega)) hacc hcur
  · exact seg5_rung135 rho h bits[135]! (hbitAt 135 (by omega)) hacc hcur
  · exact seg5_rung136 rho h bits[136]! (hbitAt 136 (by omega)) hacc hcur
  · exact seg5_rung137 rho h bits[137]! (hbitAt 137 (by omega)) hacc hcur
  · exact seg5_rung138 rho h bits[138]! (hbitAt 138 (by omega)) hacc hcur
  · exact seg5_rung139 rho h bits[139]! (hbitAt 139 (by omega)) hacc hcur
  · exact seg5_rung140 rho h bits[140]! (hbitAt 140 (by omega)) hacc hcur
  · exact seg5_rung141 rho h bits[141]! (hbitAt 141 (by omega)) hacc hcur
  · exact seg5_rung142 rho h bits[142]! (hbitAt 142 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
