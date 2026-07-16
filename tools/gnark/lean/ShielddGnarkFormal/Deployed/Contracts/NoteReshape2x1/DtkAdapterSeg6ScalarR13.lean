import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4572 rho ∧ Seg6.relationRow4573 rho ∧ Seg6.relationRow4574 rho ∧ Seg6.relationRow4575 rho ∧ Seg6.relationRow4576 rho ∧ Seg6.relationRow4577 rho ∧ Seg6.relationRow4578 rho ∧ Seg6.relationRow4579 rho ∧ Seg6.relationRow4580 rho ∧ Seg6.relationRow4581 rho ∧ Seg6.relationRow4582 rho ∧ Seg6.relationRow4583 rho ∧ Seg6.relationRow4584 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584⟩

theorem seg6_rung143 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩
        ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩
        ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩
        ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩ := by
  obtain ⟨r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584⟩ := seg6_rows143 rho h
  unfold Seg6.relationRow4572 at r4572
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4572
  unfold Seg6.relationRow4573 at r4573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4573
  unfold Seg6.relationRow4574 at r4574
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4574
  unfold Seg6.relationRow4575 at r4575
  unfold Seg6.relationRow4576 at r4576
  unfold Seg6.relationRow4577 at r4577
  unfold Seg6.relationRow4578 at r4578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4578
  unfold Seg6.relationRow4579 at r4579
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4579
  unfold Seg6.relationRow4580 at r4580
  unfold Seg6.relationRow4581 at r4581
  unfold Seg6.relationRow4582 at r4582
  unfold Seg6.relationRow4583 at r4583
  unfold Seg6.relationRow4584 at r4584
  have hrung143 (bit : Bool) (hbit : rho 2033 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩
        ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩
        ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩
        ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩ := by
    have hnextx : seg6AccX144 rho = seg6AccX143 rho + rho 4977 := by
      unfold seg6AccX144 seg6AccX143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 143]
      ring
    have hnexty : seg6AccY144 rho = seg6AccY143 rho + rho 4978 := by
      unfold seg6AccY144 seg6AccY143
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 143]
      ring
    have ha0 : (rho 4969 + rho 4970) * (seg6AccX143 rho + seg6AccY143 rho) = rho 4971 := by
      unfold seg6AccX143 seg6AccY143
      linear_combination r4572
    have ha1 : rho 4970 * seg6AccX143 rho = rho 4972 := by
      unfold seg6AccX143
      linear_combination r4573
    have ha2 : rho 4969 * seg6AccY143 rho = rho 4973 := by
      unfold seg6AccY143
      linear_combination r4574
    have ha3 : 3021 * rho 4972 * rho 4973 = rho 4974 := by
      linear_combination r4575
    have ha4 : rho 4975 * (1 + rho 4974) = rho 4972 + rho 4973 := by
      linear_combination r4576
    have ha5 : rho 4976 * (1 - rho 4974) = rho 4971 - rho 4972 - rho 4973 := by
      linear_combination r4577
    have haddx :
        rho 4975 * (1 + 3021 * (rho 4970 * seg6AccX143 rho) * (rho 4969 * seg6AccY143 rho)) =
          rho 4970 * seg6AccX143 rho + rho 4969 * seg6AccY143 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4976 * (1 - 3021 * (rho 4970 * seg6AccX143 rho) * (rho 4969 * seg6AccY143 rho)) =
          (-1) * (rho 4970 * seg6AccX143 rho) - rho 4969 * seg6AccY143 rho +
            (seg6AccY143 rho - seg6AccX143 rho * (-1)) * (rho 4969 + rho 4970) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4976 * (1 - rho 4974) = rho 4971 - rho 4972 - rho 4973 := ha5
        _ = (-1) * rho 4972 - rho 4973 + (seg6AccY143 rho - seg6AccX143 rho * (-1)) * (rho 4969 + rho 4970) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX144 rho = seg6AccX143 rho - Bool.toZMod bit * (seg6AccX143 rho - rho 4975) := by
      have hd : rho 4977 = Bool.toZMod bit * (rho 4975 - seg6AccX143 rho) := by
        rw [← hbit]
        unfold seg6AccX143
        linear_combination -r4578
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY144 rho = seg6AccY143 rho - Bool.toZMod bit * (seg6AccY143 rho - rho 4976) := by
      have hd : rho 4978 = Bool.toZMod bit * (rho 4976 - seg6AccY143 rho) := by
        rw [← hbit]
        unfold seg6AccY143
        linear_combination -r4579
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4969 * rho 4970 = rho 4979 := by linear_combination r4580
    have hd1 : rho 4969 * rho 4969 = rho 4980 := by linear_combination r4581
    have hd2 : rho 4970 * rho 4970 = rho 4981 := by linear_combination r4582
    have hd3 : rho 4982 * (rho 4970 * rho 4970 + rho 4969 * rho 4969 * (-1)) = 2 * (rho 4969 * rho 4970) := by
      rw [hd0, hd1, hd2]
      linear_combination r4583
    have hd4 : rho 4983 * (2 - (rho 4970 * rho 4970 + rho 4969 * rho 4969 * (-1))) = rho 4970 * rho 4970 - rho 4969 * rho 4969 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4584
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX143 rho : Seg6.F), (seg6AccY143 rho : Seg6.F)⟩
      ⟨(rho 4969 : Seg6.F), (rho 4970 : Seg6.F)⟩
      ⟨(rho 4975 : Seg6.F), (rho 4976 : Seg6.F)⟩
      ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩
      ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung143

theorem seg6_rows144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4585 rho ∧ Seg6.relationRow4586 rho ∧ Seg6.relationRow4587 rho ∧ Seg6.relationRow4588 rho ∧ Seg6.relationRow4589 rho ∧ Seg6.relationRow4590 rho ∧ Seg6.relationRow4591 rho ∧ Seg6.relationRow4592 rho ∧ Seg6.relationRow4593 rho ∧ Seg6.relationRow4594 rho ∧ Seg6.relationRow4595 rho ∧ Seg6.relationRow4596 rho ∧ Seg6.relationRow4597 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597⟩

theorem seg6_rung144 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩
        ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩
        ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩
        ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩ := by
  obtain ⟨r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597⟩ := seg6_rows144 rho h
  unfold Seg6.relationRow4585 at r4585
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4585
  unfold Seg6.relationRow4586 at r4586
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4586
  unfold Seg6.relationRow4587 at r4587
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4587
  unfold Seg6.relationRow4588 at r4588
  unfold Seg6.relationRow4589 at r4589
  unfold Seg6.relationRow4590 at r4590
  unfold Seg6.relationRow4591 at r4591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4591
  unfold Seg6.relationRow4592 at r4592
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4592
  unfold Seg6.relationRow4593 at r4593
  unfold Seg6.relationRow4594 at r4594
  unfold Seg6.relationRow4595 at r4595
  unfold Seg6.relationRow4596 at r4596
  unfold Seg6.relationRow4597 at r4597
  have hrung144 (bit : Bool) (hbit : rho 2034 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩
        ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩
        ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩
        ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩ := by
    have hnextx : seg6AccX145 rho = seg6AccX144 rho + rho 4990 := by
      unfold seg6AccX145 seg6AccX144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 144]
      ring
    have hnexty : seg6AccY145 rho = seg6AccY144 rho + rho 4991 := by
      unfold seg6AccY145 seg6AccY144
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 144]
      ring
    have ha0 : (rho 4982 + rho 4983) * (seg6AccX144 rho + seg6AccY144 rho) = rho 4984 := by
      unfold seg6AccX144 seg6AccY144
      linear_combination r4585
    have ha1 : rho 4983 * seg6AccX144 rho = rho 4985 := by
      unfold seg6AccX144
      linear_combination r4586
    have ha2 : rho 4982 * seg6AccY144 rho = rho 4986 := by
      unfold seg6AccY144
      linear_combination r4587
    have ha3 : 3021 * rho 4985 * rho 4986 = rho 4987 := by
      linear_combination r4588
    have ha4 : rho 4988 * (1 + rho 4987) = rho 4985 + rho 4986 := by
      linear_combination r4589
    have ha5 : rho 4989 * (1 - rho 4987) = rho 4984 - rho 4985 - rho 4986 := by
      linear_combination r4590
    have haddx :
        rho 4988 * (1 + 3021 * (rho 4983 * seg6AccX144 rho) * (rho 4982 * seg6AccY144 rho)) =
          rho 4983 * seg6AccX144 rho + rho 4982 * seg6AccY144 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4989 * (1 - 3021 * (rho 4983 * seg6AccX144 rho) * (rho 4982 * seg6AccY144 rho)) =
          (-1) * (rho 4983 * seg6AccX144 rho) - rho 4982 * seg6AccY144 rho +
            (seg6AccY144 rho - seg6AccX144 rho * (-1)) * (rho 4982 + rho 4983) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4989 * (1 - rho 4987) = rho 4984 - rho 4985 - rho 4986 := ha5
        _ = (-1) * rho 4985 - rho 4986 + (seg6AccY144 rho - seg6AccX144 rho * (-1)) * (rho 4982 + rho 4983) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX145 rho = seg6AccX144 rho - Bool.toZMod bit * (seg6AccX144 rho - rho 4988) := by
      have hd : rho 4990 = Bool.toZMod bit * (rho 4988 - seg6AccX144 rho) := by
        rw [← hbit]
        unfold seg6AccX144
        linear_combination -r4591
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY145 rho = seg6AccY144 rho - Bool.toZMod bit * (seg6AccY144 rho - rho 4989) := by
      have hd : rho 4991 = Bool.toZMod bit * (rho 4989 - seg6AccY144 rho) := by
        rw [← hbit]
        unfold seg6AccY144
        linear_combination -r4592
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4982 * rho 4983 = rho 4992 := by linear_combination r4593
    have hd1 : rho 4982 * rho 4982 = rho 4993 := by linear_combination r4594
    have hd2 : rho 4983 * rho 4983 = rho 4994 := by linear_combination r4595
    have hd3 : rho 4995 * (rho 4983 * rho 4983 + rho 4982 * rho 4982 * (-1)) = 2 * (rho 4982 * rho 4983) := by
      rw [hd0, hd1, hd2]
      linear_combination r4596
    have hd4 : rho 4996 * (2 - (rho 4983 * rho 4983 + rho 4982 * rho 4982 * (-1))) = rho 4983 * rho 4983 - rho 4982 * rho 4982 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4597
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX144 rho : Seg6.F), (seg6AccY144 rho : Seg6.F)⟩
      ⟨(rho 4982 : Seg6.F), (rho 4983 : Seg6.F)⟩
      ⟨(rho 4988 : Seg6.F), (rho 4989 : Seg6.F)⟩
      ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩
      ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung144

theorem seg6_rows145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4598 rho ∧ Seg6.relationRow4599 rho ∧ Seg6.relationRow4600 rho ∧ Seg6.relationRow4601 rho ∧ Seg6.relationRow4602 rho ∧ Seg6.relationRow4603 rho ∧ Seg6.relationRow4604 rho ∧ Seg6.relationRow4605 rho ∧ Seg6.relationRow4606 rho ∧ Seg6.relationRow4607 rho ∧ Seg6.relationRow4608 rho ∧ Seg6.relationRow4609 rho ∧ Seg6.relationRow4610 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610⟩

theorem seg6_rung145 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩
        ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩
        ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩
        ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩ := by
  obtain ⟨r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610⟩ := seg6_rows145 rho h
  unfold Seg6.relationRow4598 at r4598
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4598
  unfold Seg6.relationRow4599 at r4599
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4599
  unfold Seg6.relationRow4600 at r4600
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4600
  unfold Seg6.relationRow4601 at r4601
  unfold Seg6.relationRow4602 at r4602
  unfold Seg6.relationRow4603 at r4603
  unfold Seg6.relationRow4604 at r4604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4604
  unfold Seg6.relationRow4605 at r4605
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4605
  unfold Seg6.relationRow4606 at r4606
  unfold Seg6.relationRow4607 at r4607
  unfold Seg6.relationRow4608 at r4608
  unfold Seg6.relationRow4609 at r4609
  unfold Seg6.relationRow4610 at r4610
  have hrung145 (bit : Bool) (hbit : rho 2035 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩
        ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩
        ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩
        ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩ := by
    have hnextx : seg6AccX146 rho = seg6AccX145 rho + rho 5003 := by
      unfold seg6AccX146 seg6AccX145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 145]
      ring
    have hnexty : seg6AccY146 rho = seg6AccY145 rho + rho 5004 := by
      unfold seg6AccY146 seg6AccY145
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 145]
      ring
    have ha0 : (rho 4995 + rho 4996) * (seg6AccX145 rho + seg6AccY145 rho) = rho 4997 := by
      unfold seg6AccX145 seg6AccY145
      linear_combination r4598
    have ha1 : rho 4996 * seg6AccX145 rho = rho 4998 := by
      unfold seg6AccX145
      linear_combination r4599
    have ha2 : rho 4995 * seg6AccY145 rho = rho 4999 := by
      unfold seg6AccY145
      linear_combination r4600
    have ha3 : 3021 * rho 4998 * rho 4999 = rho 5000 := by
      linear_combination r4601
    have ha4 : rho 5001 * (1 + rho 5000) = rho 4998 + rho 4999 := by
      linear_combination r4602
    have ha5 : rho 5002 * (1 - rho 5000) = rho 4997 - rho 4998 - rho 4999 := by
      linear_combination r4603
    have haddx :
        rho 5001 * (1 + 3021 * (rho 4996 * seg6AccX145 rho) * (rho 4995 * seg6AccY145 rho)) =
          rho 4996 * seg6AccX145 rho + rho 4995 * seg6AccY145 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5002 * (1 - 3021 * (rho 4996 * seg6AccX145 rho) * (rho 4995 * seg6AccY145 rho)) =
          (-1) * (rho 4996 * seg6AccX145 rho) - rho 4995 * seg6AccY145 rho +
            (seg6AccY145 rho - seg6AccX145 rho * (-1)) * (rho 4995 + rho 4996) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5002 * (1 - rho 5000) = rho 4997 - rho 4998 - rho 4999 := ha5
        _ = (-1) * rho 4998 - rho 4999 + (seg6AccY145 rho - seg6AccX145 rho * (-1)) * (rho 4995 + rho 4996) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX146 rho = seg6AccX145 rho - Bool.toZMod bit * (seg6AccX145 rho - rho 5001) := by
      have hd : rho 5003 = Bool.toZMod bit * (rho 5001 - seg6AccX145 rho) := by
        rw [← hbit]
        unfold seg6AccX145
        linear_combination -r4604
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY146 rho = seg6AccY145 rho - Bool.toZMod bit * (seg6AccY145 rho - rho 5002) := by
      have hd : rho 5004 = Bool.toZMod bit * (rho 5002 - seg6AccY145 rho) := by
        rw [← hbit]
        unfold seg6AccY145
        linear_combination -r4605
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4995 * rho 4996 = rho 5005 := by linear_combination r4606
    have hd1 : rho 4995 * rho 4995 = rho 5006 := by linear_combination r4607
    have hd2 : rho 4996 * rho 4996 = rho 5007 := by linear_combination r4608
    have hd3 : rho 5008 * (rho 4996 * rho 4996 + rho 4995 * rho 4995 * (-1)) = 2 * (rho 4995 * rho 4996) := by
      rw [hd0, hd1, hd2]
      linear_combination r4609
    have hd4 : rho 5009 * (2 - (rho 4996 * rho 4996 + rho 4995 * rho 4995 * (-1))) = rho 4996 * rho 4996 - rho 4995 * rho 4995 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4610
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX145 rho : Seg6.F), (seg6AccY145 rho : Seg6.F)⟩
      ⟨(rho 4995 : Seg6.F), (rho 4996 : Seg6.F)⟩
      ⟨(rho 5001 : Seg6.F), (rho 5002 : Seg6.F)⟩
      ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩
      ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung145

theorem seg6_rows146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4611 rho ∧ Seg6.relationRow4612 rho ∧ Seg6.relationRow4613 rho ∧ Seg6.relationRow4614 rho ∧ Seg6.relationRow4615 rho ∧ Seg6.relationRow4616 rho ∧ Seg6.relationRow4617 rho ∧ Seg6.relationRow4618 rho ∧ Seg6.relationRow4619 rho ∧ Seg6.relationRow4620 rho ∧ Seg6.relationRow4621 rho ∧ Seg6.relationRow4622 rho ∧ Seg6.relationRow4623 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623⟩

theorem seg6_rung146 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2036 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩
        ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩
        ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩
        ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩ := by
  obtain ⟨r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623⟩ := seg6_rows146 rho h
  unfold Seg6.relationRow4611 at r4611
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4611
  unfold Seg6.relationRow4612 at r4612
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4612
  unfold Seg6.relationRow4613 at r4613
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4613
  unfold Seg6.relationRow4614 at r4614
  unfold Seg6.relationRow4615 at r4615
  unfold Seg6.relationRow4616 at r4616
  unfold Seg6.relationRow4617 at r4617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4617
  unfold Seg6.relationRow4618 at r4618
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4618
  unfold Seg6.relationRow4619 at r4619
  unfold Seg6.relationRow4620 at r4620
  unfold Seg6.relationRow4621 at r4621
  unfold Seg6.relationRow4622 at r4622
  unfold Seg6.relationRow4623 at r4623
  have hrung146 (bit : Bool) (hbit : rho 2036 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩
        ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩
        ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩
        ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩ := by
    have hnextx : seg6AccX147 rho = seg6AccX146 rho + rho 5016 := by
      unfold seg6AccX147 seg6AccX146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 146]
      ring
    have hnexty : seg6AccY147 rho = seg6AccY146 rho + rho 5017 := by
      unfold seg6AccY147 seg6AccY146
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 146]
      ring
    have ha0 : (rho 5008 + rho 5009) * (seg6AccX146 rho + seg6AccY146 rho) = rho 5010 := by
      unfold seg6AccX146 seg6AccY146
      linear_combination r4611
    have ha1 : rho 5009 * seg6AccX146 rho = rho 5011 := by
      unfold seg6AccX146
      linear_combination r4612
    have ha2 : rho 5008 * seg6AccY146 rho = rho 5012 := by
      unfold seg6AccY146
      linear_combination r4613
    have ha3 : 3021 * rho 5011 * rho 5012 = rho 5013 := by
      linear_combination r4614
    have ha4 : rho 5014 * (1 + rho 5013) = rho 5011 + rho 5012 := by
      linear_combination r4615
    have ha5 : rho 5015 * (1 - rho 5013) = rho 5010 - rho 5011 - rho 5012 := by
      linear_combination r4616
    have haddx :
        rho 5014 * (1 + 3021 * (rho 5009 * seg6AccX146 rho) * (rho 5008 * seg6AccY146 rho)) =
          rho 5009 * seg6AccX146 rho + rho 5008 * seg6AccY146 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5015 * (1 - 3021 * (rho 5009 * seg6AccX146 rho) * (rho 5008 * seg6AccY146 rho)) =
          (-1) * (rho 5009 * seg6AccX146 rho) - rho 5008 * seg6AccY146 rho +
            (seg6AccY146 rho - seg6AccX146 rho * (-1)) * (rho 5008 + rho 5009) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5015 * (1 - rho 5013) = rho 5010 - rho 5011 - rho 5012 := ha5
        _ = (-1) * rho 5011 - rho 5012 + (seg6AccY146 rho - seg6AccX146 rho * (-1)) * (rho 5008 + rho 5009) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX147 rho = seg6AccX146 rho - Bool.toZMod bit * (seg6AccX146 rho - rho 5014) := by
      have hd : rho 5016 = Bool.toZMod bit * (rho 5014 - seg6AccX146 rho) := by
        rw [← hbit]
        unfold seg6AccX146
        linear_combination -r4617
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY147 rho = seg6AccY146 rho - Bool.toZMod bit * (seg6AccY146 rho - rho 5015) := by
      have hd : rho 5017 = Bool.toZMod bit * (rho 5015 - seg6AccY146 rho) := by
        rw [← hbit]
        unfold seg6AccY146
        linear_combination -r4618
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5008 * rho 5009 = rho 5018 := by linear_combination r4619
    have hd1 : rho 5008 * rho 5008 = rho 5019 := by linear_combination r4620
    have hd2 : rho 5009 * rho 5009 = rho 5020 := by linear_combination r4621
    have hd3 : rho 5021 * (rho 5009 * rho 5009 + rho 5008 * rho 5008 * (-1)) = 2 * (rho 5008 * rho 5009) := by
      rw [hd0, hd1, hd2]
      linear_combination r4622
    have hd4 : rho 5022 * (2 - (rho 5009 * rho 5009 + rho 5008 * rho 5008 * (-1))) = rho 5009 * rho 5009 - rho 5008 * rho 5008 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4623
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX146 rho : Seg6.F), (seg6AccY146 rho : Seg6.F)⟩
      ⟨(rho 5008 : Seg6.F), (rho 5009 : Seg6.F)⟩
      ⟨(rho 5014 : Seg6.F), (rho 5015 : Seg6.F)⟩
      ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩
      ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung146

theorem seg6_rows147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4624 rho ∧ Seg6.relationRow4625 rho ∧ Seg6.relationRow4626 rho ∧ Seg6.relationRow4627 rho ∧ Seg6.relationRow4628 rho ∧ Seg6.relationRow4629 rho ∧ Seg6.relationRow4630 rho ∧ Seg6.relationRow4631 rho ∧ Seg6.relationRow4632 rho ∧ Seg6.relationRow4633 rho ∧ Seg6.relationRow4634 rho ∧ Seg6.relationRow4635 rho ∧ Seg6.relationRow4636 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, _, _, _⟩
  exact ⟨r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636⟩

theorem seg6_rung147 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2037 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩
        ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩
        ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩
        ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩ := by
  obtain ⟨r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636⟩ := seg6_rows147 rho h
  unfold Seg6.relationRow4624 at r4624
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4624
  unfold Seg6.relationRow4625 at r4625
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4625
  unfold Seg6.relationRow4626 at r4626
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4626
  unfold Seg6.relationRow4627 at r4627
  unfold Seg6.relationRow4628 at r4628
  unfold Seg6.relationRow4629 at r4629
  unfold Seg6.relationRow4630 at r4630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4630
  unfold Seg6.relationRow4631 at r4631
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4631
  unfold Seg6.relationRow4632 at r4632
  unfold Seg6.relationRow4633 at r4633
  unfold Seg6.relationRow4634 at r4634
  unfold Seg6.relationRow4635 at r4635
  unfold Seg6.relationRow4636 at r4636
  have hrung147 (bit : Bool) (hbit : rho 2037 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩
        ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩
        ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩
        ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩ := by
    have hnextx : seg6AccX148 rho = seg6AccX147 rho + rho 5029 := by
      unfold seg6AccX148 seg6AccX147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 147]
      ring
    have hnexty : seg6AccY148 rho = seg6AccY147 rho + rho 5030 := by
      unfold seg6AccY148 seg6AccY147
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 147]
      ring
    have ha0 : (rho 5021 + rho 5022) * (seg6AccX147 rho + seg6AccY147 rho) = rho 5023 := by
      unfold seg6AccX147 seg6AccY147
      linear_combination r4624
    have ha1 : rho 5022 * seg6AccX147 rho = rho 5024 := by
      unfold seg6AccX147
      linear_combination r4625
    have ha2 : rho 5021 * seg6AccY147 rho = rho 5025 := by
      unfold seg6AccY147
      linear_combination r4626
    have ha3 : 3021 * rho 5024 * rho 5025 = rho 5026 := by
      linear_combination r4627
    have ha4 : rho 5027 * (1 + rho 5026) = rho 5024 + rho 5025 := by
      linear_combination r4628
    have ha5 : rho 5028 * (1 - rho 5026) = rho 5023 - rho 5024 - rho 5025 := by
      linear_combination r4629
    have haddx :
        rho 5027 * (1 + 3021 * (rho 5022 * seg6AccX147 rho) * (rho 5021 * seg6AccY147 rho)) =
          rho 5022 * seg6AccX147 rho + rho 5021 * seg6AccY147 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5028 * (1 - 3021 * (rho 5022 * seg6AccX147 rho) * (rho 5021 * seg6AccY147 rho)) =
          (-1) * (rho 5022 * seg6AccX147 rho) - rho 5021 * seg6AccY147 rho +
            (seg6AccY147 rho - seg6AccX147 rho * (-1)) * (rho 5021 + rho 5022) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5028 * (1 - rho 5026) = rho 5023 - rho 5024 - rho 5025 := ha5
        _ = (-1) * rho 5024 - rho 5025 + (seg6AccY147 rho - seg6AccX147 rho * (-1)) * (rho 5021 + rho 5022) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX148 rho = seg6AccX147 rho - Bool.toZMod bit * (seg6AccX147 rho - rho 5027) := by
      have hd : rho 5029 = Bool.toZMod bit * (rho 5027 - seg6AccX147 rho) := by
        rw [← hbit]
        unfold seg6AccX147
        linear_combination -r4630
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY148 rho = seg6AccY147 rho - Bool.toZMod bit * (seg6AccY147 rho - rho 5028) := by
      have hd : rho 5030 = Bool.toZMod bit * (rho 5028 - seg6AccY147 rho) := by
        rw [← hbit]
        unfold seg6AccY147
        linear_combination -r4631
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5021 * rho 5022 = rho 5031 := by linear_combination r4632
    have hd1 : rho 5021 * rho 5021 = rho 5032 := by linear_combination r4633
    have hd2 : rho 5022 * rho 5022 = rho 5033 := by linear_combination r4634
    have hd3 : rho 5034 * (rho 5022 * rho 5022 + rho 5021 * rho 5021 * (-1)) = 2 * (rho 5021 * rho 5022) := by
      rw [hd0, hd1, hd2]
      linear_combination r4635
    have hd4 : rho 5035 * (2 - (rho 5022 * rho 5022 + rho 5021 * rho 5021 * (-1))) = rho 5022 * rho 5022 - rho 5021 * rho 5021 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4636
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX147 rho : Seg6.F), (seg6AccY147 rho : Seg6.F)⟩
      ⟨(rho 5021 : Seg6.F), (rho 5022 : Seg6.F)⟩
      ⟨(rho 5027 : Seg6.F), (rho 5028 : Seg6.F)⟩
      ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩
      ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung147

theorem seg6_rows148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4637 rho ∧ Seg6.relationRow4638 rho ∧ Seg6.relationRow4639 rho ∧ Seg6.relationRow4640 rho ∧ Seg6.relationRow4641 rho ∧ Seg6.relationRow4642 rho ∧ Seg6.relationRow4643 rho ∧ Seg6.relationRow4644 rho ∧ Seg6.relationRow4645 rho ∧ Seg6.relationRow4646 rho ∧ Seg6.relationRow4647 rho ∧ Seg6.relationRow4648 rho ∧ Seg6.relationRow4649 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4637, r4638, r4639⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649⟩

theorem seg6_rung148 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2038 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩
        ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩
        ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩
        ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩ := by
  obtain ⟨r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649⟩ := seg6_rows148 rho h
  unfold Seg6.relationRow4637 at r4637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4637
  unfold Seg6.relationRow4638 at r4638
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4638
  unfold Seg6.relationRow4639 at r4639
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4639
  unfold Seg6.relationRow4640 at r4640
  unfold Seg6.relationRow4641 at r4641
  unfold Seg6.relationRow4642 at r4642
  unfold Seg6.relationRow4643 at r4643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4643
  unfold Seg6.relationRow4644 at r4644
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4644
  unfold Seg6.relationRow4645 at r4645
  unfold Seg6.relationRow4646 at r4646
  unfold Seg6.relationRow4647 at r4647
  unfold Seg6.relationRow4648 at r4648
  unfold Seg6.relationRow4649 at r4649
  have hrung148 (bit : Bool) (hbit : rho 2038 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩
        ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩
        ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩
        ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩ := by
    have hnextx : seg6AccX149 rho = seg6AccX148 rho + rho 5042 := by
      unfold seg6AccX149 seg6AccX148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 148]
      ring
    have hnexty : seg6AccY149 rho = seg6AccY148 rho + rho 5043 := by
      unfold seg6AccY149 seg6AccY148
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 148]
      ring
    have ha0 : (rho 5034 + rho 5035) * (seg6AccX148 rho + seg6AccY148 rho) = rho 5036 := by
      unfold seg6AccX148 seg6AccY148
      linear_combination r4637
    have ha1 : rho 5035 * seg6AccX148 rho = rho 5037 := by
      unfold seg6AccX148
      linear_combination r4638
    have ha2 : rho 5034 * seg6AccY148 rho = rho 5038 := by
      unfold seg6AccY148
      linear_combination r4639
    have ha3 : 3021 * rho 5037 * rho 5038 = rho 5039 := by
      linear_combination r4640
    have ha4 : rho 5040 * (1 + rho 5039) = rho 5037 + rho 5038 := by
      linear_combination r4641
    have ha5 : rho 5041 * (1 - rho 5039) = rho 5036 - rho 5037 - rho 5038 := by
      linear_combination r4642
    have haddx :
        rho 5040 * (1 + 3021 * (rho 5035 * seg6AccX148 rho) * (rho 5034 * seg6AccY148 rho)) =
          rho 5035 * seg6AccX148 rho + rho 5034 * seg6AccY148 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5041 * (1 - 3021 * (rho 5035 * seg6AccX148 rho) * (rho 5034 * seg6AccY148 rho)) =
          (-1) * (rho 5035 * seg6AccX148 rho) - rho 5034 * seg6AccY148 rho +
            (seg6AccY148 rho - seg6AccX148 rho * (-1)) * (rho 5034 + rho 5035) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5041 * (1 - rho 5039) = rho 5036 - rho 5037 - rho 5038 := ha5
        _ = (-1) * rho 5037 - rho 5038 + (seg6AccY148 rho - seg6AccX148 rho * (-1)) * (rho 5034 + rho 5035) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX149 rho = seg6AccX148 rho - Bool.toZMod bit * (seg6AccX148 rho - rho 5040) := by
      have hd : rho 5042 = Bool.toZMod bit * (rho 5040 - seg6AccX148 rho) := by
        rw [← hbit]
        unfold seg6AccX148
        linear_combination -r4643
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY149 rho = seg6AccY148 rho - Bool.toZMod bit * (seg6AccY148 rho - rho 5041) := by
      have hd : rho 5043 = Bool.toZMod bit * (rho 5041 - seg6AccY148 rho) := by
        rw [← hbit]
        unfold seg6AccY148
        linear_combination -r4644
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5034 * rho 5035 = rho 5044 := by linear_combination r4645
    have hd1 : rho 5034 * rho 5034 = rho 5045 := by linear_combination r4646
    have hd2 : rho 5035 * rho 5035 = rho 5046 := by linear_combination r4647
    have hd3 : rho 5047 * (rho 5035 * rho 5035 + rho 5034 * rho 5034 * (-1)) = 2 * (rho 5034 * rho 5035) := by
      rw [hd0, hd1, hd2]
      linear_combination r4648
    have hd4 : rho 5048 * (2 - (rho 5035 * rho 5035 + rho 5034 * rho 5034 * (-1))) = rho 5035 * rho 5035 - rho 5034 * rho 5034 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4649
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX148 rho : Seg6.F), (seg6AccY148 rho : Seg6.F)⟩
      ⟨(rho 5034 : Seg6.F), (rho 5035 : Seg6.F)⟩
      ⟨(rho 5040 : Seg6.F), (rho 5041 : Seg6.F)⟩
      ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩
      ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung148

theorem seg6_rows149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4650 rho ∧ Seg6.relationRow4651 rho ∧ Seg6.relationRow4652 rho ∧ Seg6.relationRow4653 rho ∧ Seg6.relationRow4654 rho ∧ Seg6.relationRow4655 rho ∧ Seg6.relationRow4656 rho ∧ Seg6.relationRow4657 rho ∧ Seg6.relationRow4658 rho ∧ Seg6.relationRow4659 rho ∧ Seg6.relationRow4660 rho ∧ Seg6.relationRow4661 rho ∧ Seg6.relationRow4662 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662⟩

theorem seg6_rung149 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2039 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩
        ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩
        ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩
        ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩ := by
  obtain ⟨r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662⟩ := seg6_rows149 rho h
  unfold Seg6.relationRow4650 at r4650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4650
  unfold Seg6.relationRow4651 at r4651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4651
  unfold Seg6.relationRow4652 at r4652
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4652
  unfold Seg6.relationRow4653 at r4653
  unfold Seg6.relationRow4654 at r4654
  unfold Seg6.relationRow4655 at r4655
  unfold Seg6.relationRow4656 at r4656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4656
  unfold Seg6.relationRow4657 at r4657
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4657
  unfold Seg6.relationRow4658 at r4658
  unfold Seg6.relationRow4659 at r4659
  unfold Seg6.relationRow4660 at r4660
  unfold Seg6.relationRow4661 at r4661
  unfold Seg6.relationRow4662 at r4662
  have hrung149 (bit : Bool) (hbit : rho 2039 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩
        ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩
        ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩
        ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩ := by
    have hnextx : seg6AccX150 rho = seg6AccX149 rho + rho 5055 := by
      unfold seg6AccX150 seg6AccX149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 149]
      ring
    have hnexty : seg6AccY150 rho = seg6AccY149 rho + rho 5056 := by
      unfold seg6AccY150 seg6AccY149
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 149]
      ring
    have ha0 : (rho 5047 + rho 5048) * (seg6AccX149 rho + seg6AccY149 rho) = rho 5049 := by
      unfold seg6AccX149 seg6AccY149
      linear_combination r4650
    have ha1 : rho 5048 * seg6AccX149 rho = rho 5050 := by
      unfold seg6AccX149
      linear_combination r4651
    have ha2 : rho 5047 * seg6AccY149 rho = rho 5051 := by
      unfold seg6AccY149
      linear_combination r4652
    have ha3 : 3021 * rho 5050 * rho 5051 = rho 5052 := by
      linear_combination r4653
    have ha4 : rho 5053 * (1 + rho 5052) = rho 5050 + rho 5051 := by
      linear_combination r4654
    have ha5 : rho 5054 * (1 - rho 5052) = rho 5049 - rho 5050 - rho 5051 := by
      linear_combination r4655
    have haddx :
        rho 5053 * (1 + 3021 * (rho 5048 * seg6AccX149 rho) * (rho 5047 * seg6AccY149 rho)) =
          rho 5048 * seg6AccX149 rho + rho 5047 * seg6AccY149 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5054 * (1 - 3021 * (rho 5048 * seg6AccX149 rho) * (rho 5047 * seg6AccY149 rho)) =
          (-1) * (rho 5048 * seg6AccX149 rho) - rho 5047 * seg6AccY149 rho +
            (seg6AccY149 rho - seg6AccX149 rho * (-1)) * (rho 5047 + rho 5048) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5054 * (1 - rho 5052) = rho 5049 - rho 5050 - rho 5051 := ha5
        _ = (-1) * rho 5050 - rho 5051 + (seg6AccY149 rho - seg6AccX149 rho * (-1)) * (rho 5047 + rho 5048) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX150 rho = seg6AccX149 rho - Bool.toZMod bit * (seg6AccX149 rho - rho 5053) := by
      have hd : rho 5055 = Bool.toZMod bit * (rho 5053 - seg6AccX149 rho) := by
        rw [← hbit]
        unfold seg6AccX149
        linear_combination -r4656
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY150 rho = seg6AccY149 rho - Bool.toZMod bit * (seg6AccY149 rho - rho 5054) := by
      have hd : rho 5056 = Bool.toZMod bit * (rho 5054 - seg6AccY149 rho) := by
        rw [← hbit]
        unfold seg6AccY149
        linear_combination -r4657
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5047 * rho 5048 = rho 5057 := by linear_combination r4658
    have hd1 : rho 5047 * rho 5047 = rho 5058 := by linear_combination r4659
    have hd2 : rho 5048 * rho 5048 = rho 5059 := by linear_combination r4660
    have hd3 : rho 5060 * (rho 5048 * rho 5048 + rho 5047 * rho 5047 * (-1)) = 2 * (rho 5047 * rho 5048) := by
      rw [hd0, hd1, hd2]
      linear_combination r4661
    have hd4 : rho 5061 * (2 - (rho 5048 * rho 5048 + rho 5047 * rho 5047 * (-1))) = rho 5048 * rho 5048 - rho 5047 * rho 5047 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4662
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX149 rho : Seg6.F), (seg6AccY149 rho : Seg6.F)⟩
      ⟨(rho 5047 : Seg6.F), (rho 5048 : Seg6.F)⟩
      ⟨(rho 5053 : Seg6.F), (rho 5054 : Seg6.F)⟩
      ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩
      ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung149

theorem seg6_rows150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4663 rho ∧ Seg6.relationRow4664 rho ∧ Seg6.relationRow4665 rho ∧ Seg6.relationRow4666 rho ∧ Seg6.relationRow4667 rho ∧ Seg6.relationRow4668 rho ∧ Seg6.relationRow4669 rho ∧ Seg6.relationRow4670 rho ∧ Seg6.relationRow4671 rho ∧ Seg6.relationRow4672 rho ∧ Seg6.relationRow4673 rho ∧ Seg6.relationRow4674 rho ∧ Seg6.relationRow4675 rho ∧ Seg6.relationRow4676 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676⟩

theorem seg6_rung150 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2040 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩
        ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩
        ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩
        ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩ := by
  obtain ⟨r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676⟩ := seg6_rows150 rho h
  unfold Seg6.relationRow4663 at r4663
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4663
  unfold Seg6.relationRow4664 at r4664
  unfold Seg6.relationRow4665 at r4665
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4665
  unfold Seg6.relationRow4666 at r4666
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4666
  unfold Seg6.relationRow4667 at r4667
  unfold Seg6.relationRow4668 at r4668
  unfold Seg6.relationRow4669 at r4669
  unfold Seg6.relationRow4670 at r4670
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4670
  unfold Seg6.relationRow4671 at r4671
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4671
  unfold Seg6.relationRow4672 at r4672
  unfold Seg6.relationRow4673 at r4673
  unfold Seg6.relationRow4674 at r4674
  unfold Seg6.relationRow4675 at r4675
  unfold Seg6.relationRow4676 at r4676
  have hrung150 (bit : Bool) (hbit : rho 2040 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩
        ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩
        ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩
        ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩ := by
    have hnextx : seg6AccX151 rho = seg6AccX150 rho + rho 5069 := by
      unfold seg6AccX151 seg6AccX150
      ring
    have hnexty : seg6AccY151 rho = seg6AccY150 rho + rho 5070 := by
      unfold seg6AccY151 seg6AccY150
      ring
    have hsum : seg6AccX150 rho + seg6AccY150 rho = rho 5062 := by
      unfold seg6AccX150 seg6AccY150
      linear_combination r4663
    have ha0 : (rho 5060 + rho 5061) * (seg6AccX150 rho + seg6AccY150 rho) = rho 5063 := by
      rw [hsum]
      linear_combination r4664
    have ha1 : rho 5061 * seg6AccX150 rho = rho 5064 := by
      unfold seg6AccX150
      linear_combination r4665
    have ha2 : rho 5060 * seg6AccY150 rho = rho 5065 := by
      unfold seg6AccY150
      linear_combination r4666
    have ha3 : 3021 * rho 5064 * rho 5065 = rho 5066 := by
      linear_combination r4667
    have ha4 : rho 5067 * (1 + rho 5066) = rho 5064 + rho 5065 := by
      linear_combination r4668
    have ha5 : rho 5068 * (1 - rho 5066) = rho 5063 - rho 5064 - rho 5065 := by
      linear_combination r4669
    have haddx :
        rho 5067 * (1 + 3021 * (rho 5061 * seg6AccX150 rho) * (rho 5060 * seg6AccY150 rho)) =
          rho 5061 * seg6AccX150 rho + rho 5060 * seg6AccY150 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5068 * (1 - 3021 * (rho 5061 * seg6AccX150 rho) * (rho 5060 * seg6AccY150 rho)) =
          (-1) * (rho 5061 * seg6AccX150 rho) - rho 5060 * seg6AccY150 rho +
            (seg6AccY150 rho - seg6AccX150 rho * (-1)) * (rho 5060 + rho 5061) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5068 * (1 - rho 5066) = rho 5063 - rho 5064 - rho 5065 := ha5
        _ = (-1) * rho 5064 - rho 5065 + (seg6AccY150 rho - seg6AccX150 rho * (-1)) * (rho 5060 + rho 5061) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX151 rho = seg6AccX150 rho - Bool.toZMod bit * (seg6AccX150 rho - rho 5067) := by
      have hd : rho 5069 = Bool.toZMod bit * (rho 5067 - seg6AccX150 rho) := by
        rw [← hbit]
        unfold seg6AccX150
        linear_combination -r4670
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY151 rho = seg6AccY150 rho - Bool.toZMod bit * (seg6AccY150 rho - rho 5068) := by
      have hd : rho 5070 = Bool.toZMod bit * (rho 5068 - seg6AccY150 rho) := by
        rw [← hbit]
        unfold seg6AccY150
        linear_combination -r4671
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5060 * rho 5061 = rho 5071 := by linear_combination r4672
    have hd1 : rho 5060 * rho 5060 = rho 5072 := by linear_combination r4673
    have hd2 : rho 5061 * rho 5061 = rho 5073 := by linear_combination r4674
    have hd3 : rho 5074 * (rho 5061 * rho 5061 + rho 5060 * rho 5060 * (-1)) = 2 * (rho 5060 * rho 5061) := by
      rw [hd0, hd1, hd2]
      linear_combination r4675
    have hd4 : rho 5075 * (2 - (rho 5061 * rho 5061 + rho 5060 * rho 5060 * (-1))) = rho 5061 * rho 5061 - rho 5060 * rho 5060 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4676
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX150 rho : Seg6.F), (seg6AccY150 rho : Seg6.F)⟩
      ⟨(rho 5060 : Seg6.F), (rho 5061 : Seg6.F)⟩
      ⟨(rho 5067 : Seg6.F), (rho 5068 : Seg6.F)⟩
      ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩
      ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung150

theorem seg6_rows151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4677 rho ∧ Seg6.relationRow4678 rho ∧ Seg6.relationRow4679 rho ∧ Seg6.relationRow4680 rho ∧ Seg6.relationRow4681 rho ∧ Seg6.relationRow4682 rho ∧ Seg6.relationRow4683 rho ∧ Seg6.relationRow4684 rho ∧ Seg6.relationRow4685 rho ∧ Seg6.relationRow4686 rho ∧ Seg6.relationRow4687 rho ∧ Seg6.relationRow4688 rho ∧ Seg6.relationRow4689 rho ∧ Seg6.relationRow4690 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690⟩

theorem seg6_rung151 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2041 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩
        ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩
        ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩
        ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩ := by
  obtain ⟨r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690⟩ := seg6_rows151 rho h
  unfold Seg6.relationRow4677 at r4677
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4677
  unfold Seg6.relationRow4678 at r4678
  unfold Seg6.relationRow4679 at r4679
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4679
  unfold Seg6.relationRow4680 at r4680
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4680
  unfold Seg6.relationRow4681 at r4681
  unfold Seg6.relationRow4682 at r4682
  unfold Seg6.relationRow4683 at r4683
  unfold Seg6.relationRow4684 at r4684
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4684
  unfold Seg6.relationRow4685 at r4685
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4685
  unfold Seg6.relationRow4686 at r4686
  unfold Seg6.relationRow4687 at r4687
  unfold Seg6.relationRow4688 at r4688
  unfold Seg6.relationRow4689 at r4689
  unfold Seg6.relationRow4690 at r4690
  have hrung151 (bit : Bool) (hbit : rho 2041 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩
        ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩
        ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩
        ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩ := by
    have hnextx : seg6AccX152 rho = seg6AccX151 rho + rho 5083 := by
      unfold seg6AccX152 seg6AccX151
      ring
    have hnexty : seg6AccY152 rho = seg6AccY151 rho + rho 5084 := by
      unfold seg6AccY152 seg6AccY151
      ring
    have hsum : seg6AccX151 rho + seg6AccY151 rho = rho 5076 := by
      unfold seg6AccX151 seg6AccY151
      linear_combination r4677
    have ha0 : (rho 5074 + rho 5075) * (seg6AccX151 rho + seg6AccY151 rho) = rho 5077 := by
      rw [hsum]
      linear_combination r4678
    have ha1 : rho 5075 * seg6AccX151 rho = rho 5078 := by
      unfold seg6AccX151
      linear_combination r4679
    have ha2 : rho 5074 * seg6AccY151 rho = rho 5079 := by
      unfold seg6AccY151
      linear_combination r4680
    have ha3 : 3021 * rho 5078 * rho 5079 = rho 5080 := by
      linear_combination r4681
    have ha4 : rho 5081 * (1 + rho 5080) = rho 5078 + rho 5079 := by
      linear_combination r4682
    have ha5 : rho 5082 * (1 - rho 5080) = rho 5077 - rho 5078 - rho 5079 := by
      linear_combination r4683
    have haddx :
        rho 5081 * (1 + 3021 * (rho 5075 * seg6AccX151 rho) * (rho 5074 * seg6AccY151 rho)) =
          rho 5075 * seg6AccX151 rho + rho 5074 * seg6AccY151 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5082 * (1 - 3021 * (rho 5075 * seg6AccX151 rho) * (rho 5074 * seg6AccY151 rho)) =
          (-1) * (rho 5075 * seg6AccX151 rho) - rho 5074 * seg6AccY151 rho +
            (seg6AccY151 rho - seg6AccX151 rho * (-1)) * (rho 5074 + rho 5075) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5082 * (1 - rho 5080) = rho 5077 - rho 5078 - rho 5079 := ha5
        _ = (-1) * rho 5078 - rho 5079 + (seg6AccY151 rho - seg6AccX151 rho * (-1)) * (rho 5074 + rho 5075) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX152 rho = seg6AccX151 rho - Bool.toZMod bit * (seg6AccX151 rho - rho 5081) := by
      have hd : rho 5083 = Bool.toZMod bit * (rho 5081 - seg6AccX151 rho) := by
        rw [← hbit]
        unfold seg6AccX151
        linear_combination -r4684
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY152 rho = seg6AccY151 rho - Bool.toZMod bit * (seg6AccY151 rho - rho 5082) := by
      have hd : rho 5084 = Bool.toZMod bit * (rho 5082 - seg6AccY151 rho) := by
        rw [← hbit]
        unfold seg6AccY151
        linear_combination -r4685
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5074 * rho 5075 = rho 5085 := by linear_combination r4686
    have hd1 : rho 5074 * rho 5074 = rho 5086 := by linear_combination r4687
    have hd2 : rho 5075 * rho 5075 = rho 5087 := by linear_combination r4688
    have hd3 : rho 5088 * (rho 5075 * rho 5075 + rho 5074 * rho 5074 * (-1)) = 2 * (rho 5074 * rho 5075) := by
      rw [hd0, hd1, hd2]
      linear_combination r4689
    have hd4 : rho 5089 * (2 - (rho 5075 * rho 5075 + rho 5074 * rho 5074 * (-1))) = rho 5075 * rho 5075 - rho 5074 * rho 5074 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4690
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX151 rho : Seg6.F), (seg6AccY151 rho : Seg6.F)⟩
      ⟨(rho 5074 : Seg6.F), (rho 5075 : Seg6.F)⟩
      ⟨(rho 5081 : Seg6.F), (rho 5082 : Seg6.F)⟩
      ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩
      ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung151

theorem seg6_rows152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4691 rho ∧ Seg6.relationRow4692 rho ∧ Seg6.relationRow4693 rho ∧ Seg6.relationRow4694 rho ∧ Seg6.relationRow4695 rho ∧ Seg6.relationRow4696 rho ∧ Seg6.relationRow4697 rho ∧ Seg6.relationRow4698 rho ∧ Seg6.relationRow4699 rho ∧ Seg6.relationRow4700 rho ∧ Seg6.relationRow4701 rho ∧ Seg6.relationRow4702 rho ∧ Seg6.relationRow4703 rho ∧ Seg6.relationRow4704 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704⟩

theorem seg6_rung152 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2042 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩
        ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩
        ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩
        ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩ := by
  obtain ⟨r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704⟩ := seg6_rows152 rho h
  unfold Seg6.relationRow4691 at r4691
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4691
  unfold Seg6.relationRow4692 at r4692
  unfold Seg6.relationRow4693 at r4693
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4693
  unfold Seg6.relationRow4694 at r4694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694
  unfold Seg6.relationRow4695 at r4695
  unfold Seg6.relationRow4696 at r4696
  unfold Seg6.relationRow4697 at r4697
  unfold Seg6.relationRow4698 at r4698
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4698
  unfold Seg6.relationRow4699 at r4699
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4699
  unfold Seg6.relationRow4700 at r4700
  unfold Seg6.relationRow4701 at r4701
  unfold Seg6.relationRow4702 at r4702
  unfold Seg6.relationRow4703 at r4703
  unfold Seg6.relationRow4704 at r4704
  have hrung152 (bit : Bool) (hbit : rho 2042 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩
        ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩
        ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩
        ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩ := by
    have hnextx : seg6AccX153 rho = seg6AccX152 rho + rho 5097 := by
      unfold seg6AccX153 seg6AccX152
      ring
    have hnexty : seg6AccY153 rho = seg6AccY152 rho + rho 5098 := by
      unfold seg6AccY153 seg6AccY152
      ring
    have hsum : seg6AccX152 rho + seg6AccY152 rho = rho 5090 := by
      unfold seg6AccX152 seg6AccY152
      linear_combination r4691
    have ha0 : (rho 5088 + rho 5089) * (seg6AccX152 rho + seg6AccY152 rho) = rho 5091 := by
      rw [hsum]
      linear_combination r4692
    have ha1 : rho 5089 * seg6AccX152 rho = rho 5092 := by
      unfold seg6AccX152
      linear_combination r4693
    have ha2 : rho 5088 * seg6AccY152 rho = rho 5093 := by
      unfold seg6AccY152
      linear_combination r4694
    have ha3 : 3021 * rho 5092 * rho 5093 = rho 5094 := by
      linear_combination r4695
    have ha4 : rho 5095 * (1 + rho 5094) = rho 5092 + rho 5093 := by
      linear_combination r4696
    have ha5 : rho 5096 * (1 - rho 5094) = rho 5091 - rho 5092 - rho 5093 := by
      linear_combination r4697
    have haddx :
        rho 5095 * (1 + 3021 * (rho 5089 * seg6AccX152 rho) * (rho 5088 * seg6AccY152 rho)) =
          rho 5089 * seg6AccX152 rho + rho 5088 * seg6AccY152 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5096 * (1 - 3021 * (rho 5089 * seg6AccX152 rho) * (rho 5088 * seg6AccY152 rho)) =
          (-1) * (rho 5089 * seg6AccX152 rho) - rho 5088 * seg6AccY152 rho +
            (seg6AccY152 rho - seg6AccX152 rho * (-1)) * (rho 5088 + rho 5089) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5096 * (1 - rho 5094) = rho 5091 - rho 5092 - rho 5093 := ha5
        _ = (-1) * rho 5092 - rho 5093 + (seg6AccY152 rho - seg6AccX152 rho * (-1)) * (rho 5088 + rho 5089) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX153 rho = seg6AccX152 rho - Bool.toZMod bit * (seg6AccX152 rho - rho 5095) := by
      have hd : rho 5097 = Bool.toZMod bit * (rho 5095 - seg6AccX152 rho) := by
        rw [← hbit]
        unfold seg6AccX152
        linear_combination -r4698
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY153 rho = seg6AccY152 rho - Bool.toZMod bit * (seg6AccY152 rho - rho 5096) := by
      have hd : rho 5098 = Bool.toZMod bit * (rho 5096 - seg6AccY152 rho) := by
        rw [← hbit]
        unfold seg6AccY152
        linear_combination -r4699
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5088 * rho 5089 = rho 5099 := by linear_combination r4700
    have hd1 : rho 5088 * rho 5088 = rho 5100 := by linear_combination r4701
    have hd2 : rho 5089 * rho 5089 = rho 5101 := by linear_combination r4702
    have hd3 : rho 5102 * (rho 5089 * rho 5089 + rho 5088 * rho 5088 * (-1)) = 2 * (rho 5088 * rho 5089) := by
      rw [hd0, hd1, hd2]
      linear_combination r4703
    have hd4 : rho 5103 * (2 - (rho 5089 * rho 5089 + rho 5088 * rho 5088 * (-1))) = rho 5089 * rho 5089 - rho 5088 * rho 5088 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4704
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX152 rho : Seg6.F), (seg6AccY152 rho : Seg6.F)⟩
      ⟨(rho 5088 : Seg6.F), (rho 5089 : Seg6.F)⟩
      ⟨(rho 5095 : Seg6.F), (rho 5096 : Seg6.F)⟩
      ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩
      ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung152

theorem seg6_rows153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4705 rho ∧ Seg6.relationRow4706 rho ∧ Seg6.relationRow4707 rho ∧ Seg6.relationRow4708 rho ∧ Seg6.relationRow4709 rho ∧ Seg6.relationRow4710 rho ∧ Seg6.relationRow4711 rho ∧ Seg6.relationRow4712 rho ∧ Seg6.relationRow4713 rho ∧ Seg6.relationRow4714 rho ∧ Seg6.relationRow4715 rho ∧ Seg6.relationRow4716 rho ∧ Seg6.relationRow4717 rho ∧ Seg6.relationRow4718 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, _⟩
  exact ⟨r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718⟩

theorem seg6_rung153 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2043 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩
        ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩
        ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩
        ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩ := by
  obtain ⟨r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718⟩ := seg6_rows153 rho h
  unfold Seg6.relationRow4705 at r4705
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4705
  unfold Seg6.relationRow4706 at r4706
  unfold Seg6.relationRow4707 at r4707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707
  unfold Seg6.relationRow4708 at r4708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4708
  unfold Seg6.relationRow4709 at r4709
  unfold Seg6.relationRow4710 at r4710
  unfold Seg6.relationRow4711 at r4711
  unfold Seg6.relationRow4712 at r4712
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4712
  unfold Seg6.relationRow4713 at r4713
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713
  unfold Seg6.relationRow4714 at r4714
  unfold Seg6.relationRow4715 at r4715
  unfold Seg6.relationRow4716 at r4716
  unfold Seg6.relationRow4717 at r4717
  unfold Seg6.relationRow4718 at r4718
  have hrung153 (bit : Bool) (hbit : rho 2043 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩
        ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩
        ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩
        ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩ := by
    have hnextx : seg6AccX154 rho = seg6AccX153 rho + rho 5111 := by
      unfold seg6AccX154 seg6AccX153
      ring
    have hnexty : seg6AccY154 rho = seg6AccY153 rho + rho 5112 := by
      unfold seg6AccY154 seg6AccY153
      ring
    have hsum : seg6AccX153 rho + seg6AccY153 rho = rho 5104 := by
      unfold seg6AccX153 seg6AccY153
      linear_combination r4705
    have ha0 : (rho 5102 + rho 5103) * (seg6AccX153 rho + seg6AccY153 rho) = rho 5105 := by
      rw [hsum]
      linear_combination r4706
    have ha1 : rho 5103 * seg6AccX153 rho = rho 5106 := by
      unfold seg6AccX153
      linear_combination r4707
    have ha2 : rho 5102 * seg6AccY153 rho = rho 5107 := by
      unfold seg6AccY153
      linear_combination r4708
    have ha3 : 3021 * rho 5106 * rho 5107 = rho 5108 := by
      linear_combination r4709
    have ha4 : rho 5109 * (1 + rho 5108) = rho 5106 + rho 5107 := by
      linear_combination r4710
    have ha5 : rho 5110 * (1 - rho 5108) = rho 5105 - rho 5106 - rho 5107 := by
      linear_combination r4711
    have haddx :
        rho 5109 * (1 + 3021 * (rho 5103 * seg6AccX153 rho) * (rho 5102 * seg6AccY153 rho)) =
          rho 5103 * seg6AccX153 rho + rho 5102 * seg6AccY153 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5110 * (1 - 3021 * (rho 5103 * seg6AccX153 rho) * (rho 5102 * seg6AccY153 rho)) =
          (-1) * (rho 5103 * seg6AccX153 rho) - rho 5102 * seg6AccY153 rho +
            (seg6AccY153 rho - seg6AccX153 rho * (-1)) * (rho 5102 + rho 5103) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5110 * (1 - rho 5108) = rho 5105 - rho 5106 - rho 5107 := ha5
        _ = (-1) * rho 5106 - rho 5107 + (seg6AccY153 rho - seg6AccX153 rho * (-1)) * (rho 5102 + rho 5103) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX154 rho = seg6AccX153 rho - Bool.toZMod bit * (seg6AccX153 rho - rho 5109) := by
      have hd : rho 5111 = Bool.toZMod bit * (rho 5109 - seg6AccX153 rho) := by
        rw [← hbit]
        unfold seg6AccX153
        linear_combination -r4712
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY154 rho = seg6AccY153 rho - Bool.toZMod bit * (seg6AccY153 rho - rho 5110) := by
      have hd : rho 5112 = Bool.toZMod bit * (rho 5110 - seg6AccY153 rho) := by
        rw [← hbit]
        unfold seg6AccY153
        linear_combination -r4713
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5102 * rho 5103 = rho 5113 := by linear_combination r4714
    have hd1 : rho 5102 * rho 5102 = rho 5114 := by linear_combination r4715
    have hd2 : rho 5103 * rho 5103 = rho 5115 := by linear_combination r4716
    have hd3 : rho 5116 * (rho 5103 * rho 5103 + rho 5102 * rho 5102 * (-1)) = 2 * (rho 5102 * rho 5103) := by
      rw [hd0, hd1, hd2]
      linear_combination r4717
    have hd4 : rho 5117 * (2 - (rho 5103 * rho 5103 + rho 5102 * rho 5102 * (-1))) = rho 5103 * rho 5103 - rho 5102 * rho 5102 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4718
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX153 rho : Seg6.F), (seg6AccY153 rho : Seg6.F)⟩
      ⟨(rho 5102 : Seg6.F), (rho 5103 : Seg6.F)⟩
      ⟨(rho 5109 : Seg6.F), (rho 5110 : Seg6.F)⟩
      ⟨(seg6AccX154 rho : Seg6.F), (seg6AccY154 rho : Seg6.F)⟩
      ⟨(rho 5116 : Seg6.F), (rho 5117 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung153

theorem seg6_hstep_c13 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 143 ≤ i → i < 154 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung143 rho h bits[143]! (hbitAt 143 (by omega)) hacc hcur
  · exact seg6_rung144 rho h bits[144]! (hbitAt 144 (by omega)) hacc hcur
  · exact seg6_rung145 rho h bits[145]! (hbitAt 145 (by omega)) hacc hcur
  · exact seg6_rung146 rho h bits[146]! (hbitAt 146 (by omega)) hacc hcur
  · exact seg6_rung147 rho h bits[147]! (hbitAt 147 (by omega)) hacc hcur
  · exact seg6_rung148 rho h bits[148]! (hbitAt 148 (by omega)) hacc hcur
  · exact seg6_rung149 rho h bits[149]! (hbitAt 149 (by omega)) hacc hcur
  · exact seg6_rung150 rho h bits[150]! (hbitAt 150 (by omega)) hacc hcur
  · exact seg6_rung151 rho h bits[151]! (hbitAt 151 (by omega)) hacc hcur
  · exact seg6_rung152 rho h bits[152]! (hbitAt 152 (by omega)) hacc hcur
  · exact seg6_rung153 rho h bits[153]! (hbitAt 153 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
