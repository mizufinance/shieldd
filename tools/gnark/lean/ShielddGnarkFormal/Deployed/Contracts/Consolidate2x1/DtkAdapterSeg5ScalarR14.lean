import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4971 rho ∧ Seg5.relationRow4972 rho ∧ Seg5.relationRow4973 rho ∧ Seg5.relationRow4974 rho ∧ Seg5.relationRow4975 rho ∧ Seg5.relationRow4976 rho ∧ Seg5.relationRow4977 rho ∧ Seg5.relationRow4978 rho ∧ Seg5.relationRow4979 rho ∧ Seg5.relationRow4980 rho ∧ Seg5.relationRow4981 rho ∧ Seg5.relationRow4982 rho ∧ Seg5.relationRow4983 rho ∧ Seg5.relationRow4984 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩

theorem seg5_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2569 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩
        ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩
        ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩
        ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩ := by
  obtain ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩ := seg5_rows154 rho h
  unfold Seg5.relationRow4971 at r4971
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971
  unfold Seg5.relationRow4972 at r4972
  unfold Seg5.relationRow4973 at r4973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973
  unfold Seg5.relationRow4974 at r4974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974
  unfold Seg5.relationRow4975 at r4975
  unfold Seg5.relationRow4976 at r4976
  unfold Seg5.relationRow4977 at r4977
  unfold Seg5.relationRow4978 at r4978
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978
  unfold Seg5.relationRow4979 at r4979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979
  unfold Seg5.relationRow4980 at r4980
  unfold Seg5.relationRow4981 at r4981
  unfold Seg5.relationRow4982 at r4982
  unfold Seg5.relationRow4983 at r4983
  unfold Seg5.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 2569 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩
        ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩
        ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩
        ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩ := by
    have hnextx : seg5AccX155 rho = seg5AccX154 rho + rho 4673 := by
      unfold seg5AccX155 seg5AccX154
      ring
    have hnexty : seg5AccY155 rho = seg5AccY154 rho + rho 4674 := by
      unfold seg5AccY155 seg5AccY154
      ring
    have hsum : seg5AccX154 rho + seg5AccY154 rho = rho 4666 := by
      unfold seg5AccX154 seg5AccY154
      linear_combination r4971
    have ha0 : (rho 4664 + rho 4665) * (seg5AccX154 rho + seg5AccY154 rho) = rho 4667 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 4665 * seg5AccX154 rho = rho 4668 := by
      unfold seg5AccX154
      linear_combination r4973
    have ha2 : rho 4664 * seg5AccY154 rho = rho 4669 := by
      unfold seg5AccY154
      linear_combination r4974
    have ha3 : 3021 * rho 4668 * rho 4669 = rho 4670 := by
      linear_combination r4975
    have ha4 : rho 4671 * (1 + rho 4670) = rho 4668 + rho 4669 := by
      linear_combination r4976
    have ha5 : rho 4672 * (1 - rho 4670) = rho 4667 - rho 4668 - rho 4669 := by
      linear_combination r4977
    have haddx :
        rho 4671 * (1 + 3021 * (rho 4665 * seg5AccX154 rho) * (rho 4664 * seg5AccY154 rho)) =
          rho 4665 * seg5AccX154 rho + rho 4664 * seg5AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4672 * (1 - 3021 * (rho 4665 * seg5AccX154 rho) * (rho 4664 * seg5AccY154 rho)) =
          (-1) * (rho 4665 * seg5AccX154 rho) - rho 4664 * seg5AccY154 rho +
            (seg5AccY154 rho - seg5AccX154 rho * (-1)) * (rho 4664 + rho 4665) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4672 * (1 - rho 4670) = rho 4667 - rho 4668 - rho 4669 := ha5
        _ = (-1) * rho 4668 - rho 4669 + (seg5AccY154 rho - seg5AccX154 rho * (-1)) * (rho 4664 + rho 4665) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX155 rho = seg5AccX154 rho - Bool.toZMod bit * (seg5AccX154 rho - rho 4671) := by
      have hd : rho 4673 = Bool.toZMod bit * (rho 4671 - seg5AccX154 rho) := by
        rw [← hbit]
        unfold seg5AccX154
        linear_combination -r4978
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY155 rho = seg5AccY154 rho - Bool.toZMod bit * (seg5AccY154 rho - rho 4672) := by
      have hd : rho 4674 = Bool.toZMod bit * (rho 4672 - seg5AccY154 rho) := by
        rw [← hbit]
        unfold seg5AccY154
        linear_combination -r4979
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4664 * rho 4665 = rho 4675 := by linear_combination r4980
    have hd1 : rho 4664 * rho 4664 = rho 4676 := by linear_combination r4981
    have hd2 : rho 4665 * rho 4665 = rho 4677 := by linear_combination r4982
    have hd3 : rho 4678 * (rho 4665 * rho 4665 + rho 4664 * rho 4664 * (-1)) = 2 * (rho 4664 * rho 4665) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 4679 * (2 - (rho 4665 * rho 4665 + rho 4664 * rho 4664 * (-1))) = rho 4665 * rho 4665 - rho 4664 * rho 4664 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX154 rho : Seg5.F), (seg5AccY154 rho : Seg5.F)⟩
      ⟨(rho 4664 : Seg5.F), (rho 4665 : Seg5.F)⟩
      ⟨(rho 4671 : Seg5.F), (rho 4672 : Seg5.F)⟩
      ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩
      ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg5_rows155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4985 rho ∧ Seg5.relationRow4986 rho ∧ Seg5.relationRow4987 rho ∧ Seg5.relationRow4988 rho ∧ Seg5.relationRow4989 rho ∧ Seg5.relationRow4990 rho ∧ Seg5.relationRow4991 rho ∧ Seg5.relationRow4992 rho ∧ Seg5.relationRow4993 rho ∧ Seg5.relationRow4994 rho ∧ Seg5.relationRow4995 rho ∧ Seg5.relationRow4996 rho ∧ Seg5.relationRow4997 rho ∧ Seg5.relationRow4998 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg5_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2570 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩
        ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩
        ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩
        ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩ := by
  obtain ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg5_rows155 rho h
  unfold Seg5.relationRow4985 at r4985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4985
  unfold Seg5.relationRow4986 at r4986
  unfold Seg5.relationRow4987 at r4987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987
  unfold Seg5.relationRow4988 at r4988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988
  unfold Seg5.relationRow4989 at r4989
  unfold Seg5.relationRow4990 at r4990
  unfold Seg5.relationRow4991 at r4991
  unfold Seg5.relationRow4992 at r4992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992
  unfold Seg5.relationRow4993 at r4993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993
  unfold Seg5.relationRow4994 at r4994
  unfold Seg5.relationRow4995 at r4995
  unfold Seg5.relationRow4996 at r4996
  unfold Seg5.relationRow4997 at r4997
  unfold Seg5.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 2570 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩
        ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩
        ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩
        ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩ := by
    have hnextx : seg5AccX156 rho = seg5AccX155 rho + rho 4687 := by
      unfold seg5AccX156 seg5AccX155
      ring
    have hnexty : seg5AccY156 rho = seg5AccY155 rho + rho 4688 := by
      unfold seg5AccY156 seg5AccY155
      ring
    have hsum : seg5AccX155 rho + seg5AccY155 rho = rho 4680 := by
      unfold seg5AccX155 seg5AccY155
      linear_combination r4985
    have ha0 : (rho 4678 + rho 4679) * (seg5AccX155 rho + seg5AccY155 rho) = rho 4681 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 4679 * seg5AccX155 rho = rho 4682 := by
      unfold seg5AccX155
      linear_combination r4987
    have ha2 : rho 4678 * seg5AccY155 rho = rho 4683 := by
      unfold seg5AccY155
      linear_combination r4988
    have ha3 : 3021 * rho 4682 * rho 4683 = rho 4684 := by
      linear_combination r4989
    have ha4 : rho 4685 * (1 + rho 4684) = rho 4682 + rho 4683 := by
      linear_combination r4990
    have ha5 : rho 4686 * (1 - rho 4684) = rho 4681 - rho 4682 - rho 4683 := by
      linear_combination r4991
    have haddx :
        rho 4685 * (1 + 3021 * (rho 4679 * seg5AccX155 rho) * (rho 4678 * seg5AccY155 rho)) =
          rho 4679 * seg5AccX155 rho + rho 4678 * seg5AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4686 * (1 - 3021 * (rho 4679 * seg5AccX155 rho) * (rho 4678 * seg5AccY155 rho)) =
          (-1) * (rho 4679 * seg5AccX155 rho) - rho 4678 * seg5AccY155 rho +
            (seg5AccY155 rho - seg5AccX155 rho * (-1)) * (rho 4678 + rho 4679) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4686 * (1 - rho 4684) = rho 4681 - rho 4682 - rho 4683 := ha5
        _ = (-1) * rho 4682 - rho 4683 + (seg5AccY155 rho - seg5AccX155 rho * (-1)) * (rho 4678 + rho 4679) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX156 rho = seg5AccX155 rho - Bool.toZMod bit * (seg5AccX155 rho - rho 4685) := by
      have hd : rho 4687 = Bool.toZMod bit * (rho 4685 - seg5AccX155 rho) := by
        rw [← hbit]
        unfold seg5AccX155
        linear_combination -r4992
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY156 rho = seg5AccY155 rho - Bool.toZMod bit * (seg5AccY155 rho - rho 4686) := by
      have hd : rho 4688 = Bool.toZMod bit * (rho 4686 - seg5AccY155 rho) := by
        rw [← hbit]
        unfold seg5AccY155
        linear_combination -r4993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4678 * rho 4679 = rho 4689 := by linear_combination r4994
    have hd1 : rho 4678 * rho 4678 = rho 4690 := by linear_combination r4995
    have hd2 : rho 4679 * rho 4679 = rho 4691 := by linear_combination r4996
    have hd3 : rho 4692 * (rho 4679 * rho 4679 + rho 4678 * rho 4678 * (-1)) = 2 * (rho 4678 * rho 4679) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 4693 * (2 - (rho 4679 * rho 4679 + rho 4678 * rho 4678 * (-1))) = rho 4679 * rho 4679 - rho 4678 * rho 4678 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX155 rho : Seg5.F), (seg5AccY155 rho : Seg5.F)⟩
      ⟨(rho 4678 : Seg5.F), (rho 4679 : Seg5.F)⟩
      ⟨(rho 4685 : Seg5.F), (rho 4686 : Seg5.F)⟩
      ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩
      ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg5_rows156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4999 rho ∧ Seg5.relationRow5000 rho ∧ Seg5.relationRow5001 rho ∧ Seg5.relationRow5002 rho ∧ Seg5.relationRow5003 rho ∧ Seg5.relationRow5004 rho ∧ Seg5.relationRow5005 rho ∧ Seg5.relationRow5006 rho ∧ Seg5.relationRow5007 rho ∧ Seg5.relationRow5008 rho ∧ Seg5.relationRow5009 rho ∧ Seg5.relationRow5010 rho ∧ Seg5.relationRow5011 rho ∧ Seg5.relationRow5012 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩

theorem seg5_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2571 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩
        ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩
        ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩
        ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩ := seg5_rows156 rho h
  unfold Seg5.relationRow4999 at r4999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999
  unfold Seg5.relationRow5000 at r5000
  unfold Seg5.relationRow5001 at r5001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001
  unfold Seg5.relationRow5002 at r5002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5002
  unfold Seg5.relationRow5003 at r5003
  unfold Seg5.relationRow5004 at r5004
  unfold Seg5.relationRow5005 at r5005
  unfold Seg5.relationRow5006 at r5006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006
  unfold Seg5.relationRow5007 at r5007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5007
  unfold Seg5.relationRow5008 at r5008
  unfold Seg5.relationRow5009 at r5009
  unfold Seg5.relationRow5010 at r5010
  unfold Seg5.relationRow5011 at r5011
  unfold Seg5.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 2571 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩
        ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩
        ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩
        ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩ := by
    have hnextx : seg5AccX157 rho = seg5AccX156 rho + rho 4701 := by
      unfold seg5AccX157 seg5AccX156
      ring
    have hnexty : seg5AccY157 rho = seg5AccY156 rho + rho 4702 := by
      unfold seg5AccY157 seg5AccY156
      ring
    have hsum : seg5AccX156 rho + seg5AccY156 rho = rho 4694 := by
      unfold seg5AccX156 seg5AccY156
      linear_combination r4999
    have ha0 : (rho 4692 + rho 4693) * (seg5AccX156 rho + seg5AccY156 rho) = rho 4695 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 4693 * seg5AccX156 rho = rho 4696 := by
      unfold seg5AccX156
      linear_combination r5001
    have ha2 : rho 4692 * seg5AccY156 rho = rho 4697 := by
      unfold seg5AccY156
      linear_combination r5002
    have ha3 : 3021 * rho 4696 * rho 4697 = rho 4698 := by
      linear_combination r5003
    have ha4 : rho 4699 * (1 + rho 4698) = rho 4696 + rho 4697 := by
      linear_combination r5004
    have ha5 : rho 4700 * (1 - rho 4698) = rho 4695 - rho 4696 - rho 4697 := by
      linear_combination r5005
    have haddx :
        rho 4699 * (1 + 3021 * (rho 4693 * seg5AccX156 rho) * (rho 4692 * seg5AccY156 rho)) =
          rho 4693 * seg5AccX156 rho + rho 4692 * seg5AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4700 * (1 - 3021 * (rho 4693 * seg5AccX156 rho) * (rho 4692 * seg5AccY156 rho)) =
          (-1) * (rho 4693 * seg5AccX156 rho) - rho 4692 * seg5AccY156 rho +
            (seg5AccY156 rho - seg5AccX156 rho * (-1)) * (rho 4692 + rho 4693) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4700 * (1 - rho 4698) = rho 4695 - rho 4696 - rho 4697 := ha5
        _ = (-1) * rho 4696 - rho 4697 + (seg5AccY156 rho - seg5AccX156 rho * (-1)) * (rho 4692 + rho 4693) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX157 rho = seg5AccX156 rho - Bool.toZMod bit * (seg5AccX156 rho - rho 4699) := by
      have hd : rho 4701 = Bool.toZMod bit * (rho 4699 - seg5AccX156 rho) := by
        rw [← hbit]
        unfold seg5AccX156
        linear_combination -r5006
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY157 rho = seg5AccY156 rho - Bool.toZMod bit * (seg5AccY156 rho - rho 4700) := by
      have hd : rho 4702 = Bool.toZMod bit * (rho 4700 - seg5AccY156 rho) := by
        rw [← hbit]
        unfold seg5AccY156
        linear_combination -r5007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4692 * rho 4693 = rho 4703 := by linear_combination r5008
    have hd1 : rho 4692 * rho 4692 = rho 4704 := by linear_combination r5009
    have hd2 : rho 4693 * rho 4693 = rho 4705 := by linear_combination r5010
    have hd3 : rho 4706 * (rho 4693 * rho 4693 + rho 4692 * rho 4692 * (-1)) = 2 * (rho 4692 * rho 4693) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 4707 * (2 - (rho 4693 * rho 4693 + rho 4692 * rho 4692 * (-1))) = rho 4693 * rho 4693 - rho 4692 * rho 4692 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX156 rho : Seg5.F), (seg5AccY156 rho : Seg5.F)⟩
      ⟨(rho 4692 : Seg5.F), (rho 4693 : Seg5.F)⟩
      ⟨(rho 4699 : Seg5.F), (rho 4700 : Seg5.F)⟩
      ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩
      ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg5_rows157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5013 rho ∧ Seg5.relationRow5014 rho ∧ Seg5.relationRow5015 rho ∧ Seg5.relationRow5016 rho ∧ Seg5.relationRow5017 rho ∧ Seg5.relationRow5018 rho ∧ Seg5.relationRow5019 rho ∧ Seg5.relationRow5020 rho ∧ Seg5.relationRow5021 rho ∧ Seg5.relationRow5022 rho ∧ Seg5.relationRow5023 rho ∧ Seg5.relationRow5024 rho ∧ Seg5.relationRow5025 rho ∧ Seg5.relationRow5026 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩

theorem seg5_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2572 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩
        ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩
        ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩
        ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩ := by
  obtain ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩ := seg5_rows157 rho h
  unfold Seg5.relationRow5013 at r5013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013
  unfold Seg5.relationRow5014 at r5014
  unfold Seg5.relationRow5015 at r5015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5015
  unfold Seg5.relationRow5016 at r5016
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5016
  unfold Seg5.relationRow5017 at r5017
  unfold Seg5.relationRow5018 at r5018
  unfold Seg5.relationRow5019 at r5019
  unfold Seg5.relationRow5020 at r5020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5020
  unfold Seg5.relationRow5021 at r5021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5021
  unfold Seg5.relationRow5022 at r5022
  unfold Seg5.relationRow5023 at r5023
  unfold Seg5.relationRow5024 at r5024
  unfold Seg5.relationRow5025 at r5025
  unfold Seg5.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 2572 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩
        ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩
        ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩
        ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩ := by
    have hnextx : seg5AccX158 rho = seg5AccX157 rho + rho 4715 := by
      unfold seg5AccX158 seg5AccX157
      ring
    have hnexty : seg5AccY158 rho = seg5AccY157 rho + rho 4716 := by
      unfold seg5AccY158 seg5AccY157
      ring
    have hsum : seg5AccX157 rho + seg5AccY157 rho = rho 4708 := by
      unfold seg5AccX157 seg5AccY157
      linear_combination r5013
    have ha0 : (rho 4706 + rho 4707) * (seg5AccX157 rho + seg5AccY157 rho) = rho 4709 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 4707 * seg5AccX157 rho = rho 4710 := by
      unfold seg5AccX157
      linear_combination r5015
    have ha2 : rho 4706 * seg5AccY157 rho = rho 4711 := by
      unfold seg5AccY157
      linear_combination r5016
    have ha3 : 3021 * rho 4710 * rho 4711 = rho 4712 := by
      linear_combination r5017
    have ha4 : rho 4713 * (1 + rho 4712) = rho 4710 + rho 4711 := by
      linear_combination r5018
    have ha5 : rho 4714 * (1 - rho 4712) = rho 4709 - rho 4710 - rho 4711 := by
      linear_combination r5019
    have haddx :
        rho 4713 * (1 + 3021 * (rho 4707 * seg5AccX157 rho) * (rho 4706 * seg5AccY157 rho)) =
          rho 4707 * seg5AccX157 rho + rho 4706 * seg5AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4714 * (1 - 3021 * (rho 4707 * seg5AccX157 rho) * (rho 4706 * seg5AccY157 rho)) =
          (-1) * (rho 4707 * seg5AccX157 rho) - rho 4706 * seg5AccY157 rho +
            (seg5AccY157 rho - seg5AccX157 rho * (-1)) * (rho 4706 + rho 4707) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4714 * (1 - rho 4712) = rho 4709 - rho 4710 - rho 4711 := ha5
        _ = (-1) * rho 4710 - rho 4711 + (seg5AccY157 rho - seg5AccX157 rho * (-1)) * (rho 4706 + rho 4707) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX158 rho = seg5AccX157 rho - Bool.toZMod bit * (seg5AccX157 rho - rho 4713) := by
      have hd : rho 4715 = Bool.toZMod bit * (rho 4713 - seg5AccX157 rho) := by
        rw [← hbit]
        unfold seg5AccX157
        linear_combination -r5020
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY158 rho = seg5AccY157 rho - Bool.toZMod bit * (seg5AccY157 rho - rho 4714) := by
      have hd : rho 4716 = Bool.toZMod bit * (rho 4714 - seg5AccY157 rho) := by
        rw [← hbit]
        unfold seg5AccY157
        linear_combination -r5021
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4706 * rho 4707 = rho 4717 := by linear_combination r5022
    have hd1 : rho 4706 * rho 4706 = rho 4718 := by linear_combination r5023
    have hd2 : rho 4707 * rho 4707 = rho 4719 := by linear_combination r5024
    have hd3 : rho 4720 * (rho 4707 * rho 4707 + rho 4706 * rho 4706 * (-1)) = 2 * (rho 4706 * rho 4707) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 4721 * (2 - (rho 4707 * rho 4707 + rho 4706 * rho 4706 * (-1))) = rho 4707 * rho 4707 - rho 4706 * rho 4706 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX157 rho : Seg5.F), (seg5AccY157 rho : Seg5.F)⟩
      ⟨(rho 4706 : Seg5.F), (rho 4707 : Seg5.F)⟩
      ⟨(rho 4713 : Seg5.F), (rho 4714 : Seg5.F)⟩
      ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩
      ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg5_rows158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5027 rho ∧ Seg5.relationRow5028 rho ∧ Seg5.relationRow5029 rho ∧ Seg5.relationRow5030 rho ∧ Seg5.relationRow5031 rho ∧ Seg5.relationRow5032 rho ∧ Seg5.relationRow5033 rho ∧ Seg5.relationRow5034 rho ∧ Seg5.relationRow5035 rho ∧ Seg5.relationRow5036 rho ∧ Seg5.relationRow5037 rho ∧ Seg5.relationRow5038 rho ∧ Seg5.relationRow5039 rho ∧ Seg5.relationRow5040 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩

theorem seg5_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2573 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩
        ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩
        ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩
        ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩ := by
  obtain ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩ := seg5_rows158 rho h
  unfold Seg5.relationRow5027 at r5027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027
  unfold Seg5.relationRow5028 at r5028
  unfold Seg5.relationRow5029 at r5029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5029
  unfold Seg5.relationRow5030 at r5030
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5030
  unfold Seg5.relationRow5031 at r5031
  unfold Seg5.relationRow5032 at r5032
  unfold Seg5.relationRow5033 at r5033
  unfold Seg5.relationRow5034 at r5034
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5034
  unfold Seg5.relationRow5035 at r5035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5035
  unfold Seg5.relationRow5036 at r5036
  unfold Seg5.relationRow5037 at r5037
  unfold Seg5.relationRow5038 at r5038
  unfold Seg5.relationRow5039 at r5039
  unfold Seg5.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 2573 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩
        ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩
        ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩
        ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩ := by
    have hnextx : seg5AccX159 rho = seg5AccX158 rho + rho 4729 := by
      unfold seg5AccX159 seg5AccX158
      ring
    have hnexty : seg5AccY159 rho = seg5AccY158 rho + rho 4730 := by
      unfold seg5AccY159 seg5AccY158
      ring
    have hsum : seg5AccX158 rho + seg5AccY158 rho = rho 4722 := by
      unfold seg5AccX158 seg5AccY158
      linear_combination r5027
    have ha0 : (rho 4720 + rho 4721) * (seg5AccX158 rho + seg5AccY158 rho) = rho 4723 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 4721 * seg5AccX158 rho = rho 4724 := by
      unfold seg5AccX158
      linear_combination r5029
    have ha2 : rho 4720 * seg5AccY158 rho = rho 4725 := by
      unfold seg5AccY158
      linear_combination r5030
    have ha3 : 3021 * rho 4724 * rho 4725 = rho 4726 := by
      linear_combination r5031
    have ha4 : rho 4727 * (1 + rho 4726) = rho 4724 + rho 4725 := by
      linear_combination r5032
    have ha5 : rho 4728 * (1 - rho 4726) = rho 4723 - rho 4724 - rho 4725 := by
      linear_combination r5033
    have haddx :
        rho 4727 * (1 + 3021 * (rho 4721 * seg5AccX158 rho) * (rho 4720 * seg5AccY158 rho)) =
          rho 4721 * seg5AccX158 rho + rho 4720 * seg5AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4728 * (1 - 3021 * (rho 4721 * seg5AccX158 rho) * (rho 4720 * seg5AccY158 rho)) =
          (-1) * (rho 4721 * seg5AccX158 rho) - rho 4720 * seg5AccY158 rho +
            (seg5AccY158 rho - seg5AccX158 rho * (-1)) * (rho 4720 + rho 4721) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4728 * (1 - rho 4726) = rho 4723 - rho 4724 - rho 4725 := ha5
        _ = (-1) * rho 4724 - rho 4725 + (seg5AccY158 rho - seg5AccX158 rho * (-1)) * (rho 4720 + rho 4721) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX159 rho = seg5AccX158 rho - Bool.toZMod bit * (seg5AccX158 rho - rho 4727) := by
      have hd : rho 4729 = Bool.toZMod bit * (rho 4727 - seg5AccX158 rho) := by
        rw [← hbit]
        unfold seg5AccX158
        linear_combination -r5034
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY159 rho = seg5AccY158 rho - Bool.toZMod bit * (seg5AccY158 rho - rho 4728) := by
      have hd : rho 4730 = Bool.toZMod bit * (rho 4728 - seg5AccY158 rho) := by
        rw [← hbit]
        unfold seg5AccY158
        linear_combination -r5035
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4720 * rho 4721 = rho 4731 := by linear_combination r5036
    have hd1 : rho 4720 * rho 4720 = rho 4732 := by linear_combination r5037
    have hd2 : rho 4721 * rho 4721 = rho 4733 := by linear_combination r5038
    have hd3 : rho 4734 * (rho 4721 * rho 4721 + rho 4720 * rho 4720 * (-1)) = 2 * (rho 4720 * rho 4721) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 4735 * (2 - (rho 4721 * rho 4721 + rho 4720 * rho 4720 * (-1))) = rho 4721 * rho 4721 - rho 4720 * rho 4720 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX158 rho : Seg5.F), (seg5AccY158 rho : Seg5.F)⟩
      ⟨(rho 4720 : Seg5.F), (rho 4721 : Seg5.F)⟩
      ⟨(rho 4727 : Seg5.F), (rho 4728 : Seg5.F)⟩
      ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩
      ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg5_rows159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5041 rho ∧ Seg5.relationRow5042 rho ∧ Seg5.relationRow5043 rho ∧ Seg5.relationRow5044 rho ∧ Seg5.relationRow5045 rho ∧ Seg5.relationRow5046 rho ∧ Seg5.relationRow5047 rho ∧ Seg5.relationRow5048 rho ∧ Seg5.relationRow5049 rho ∧ Seg5.relationRow5050 rho ∧ Seg5.relationRow5051 rho ∧ Seg5.relationRow5052 rho ∧ Seg5.relationRow5053 rho ∧ Seg5.relationRow5054 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩

theorem seg5_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2574 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩
        ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩
        ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩
        ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩ := by
  obtain ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩ := seg5_rows159 rho h
  unfold Seg5.relationRow5041 at r5041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5041
  unfold Seg5.relationRow5042 at r5042
  unfold Seg5.relationRow5043 at r5043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5043
  unfold Seg5.relationRow5044 at r5044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044
  unfold Seg5.relationRow5045 at r5045
  unfold Seg5.relationRow5046 at r5046
  unfold Seg5.relationRow5047 at r5047
  unfold Seg5.relationRow5048 at r5048
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5048
  unfold Seg5.relationRow5049 at r5049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5049
  unfold Seg5.relationRow5050 at r5050
  unfold Seg5.relationRow5051 at r5051
  unfold Seg5.relationRow5052 at r5052
  unfold Seg5.relationRow5053 at r5053
  unfold Seg5.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 2574 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩
        ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩
        ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩
        ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩ := by
    have hnextx : seg5AccX160 rho = seg5AccX159 rho + rho 4743 := by
      unfold seg5AccX160 seg5AccX159
      ring
    have hnexty : seg5AccY160 rho = seg5AccY159 rho + rho 4744 := by
      unfold seg5AccY160 seg5AccY159
      ring
    have hsum : seg5AccX159 rho + seg5AccY159 rho = rho 4736 := by
      unfold seg5AccX159 seg5AccY159
      linear_combination r5041
    have ha0 : (rho 4734 + rho 4735) * (seg5AccX159 rho + seg5AccY159 rho) = rho 4737 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 4735 * seg5AccX159 rho = rho 4738 := by
      unfold seg5AccX159
      linear_combination r5043
    have ha2 : rho 4734 * seg5AccY159 rho = rho 4739 := by
      unfold seg5AccY159
      linear_combination r5044
    have ha3 : 3021 * rho 4738 * rho 4739 = rho 4740 := by
      linear_combination r5045
    have ha4 : rho 4741 * (1 + rho 4740) = rho 4738 + rho 4739 := by
      linear_combination r5046
    have ha5 : rho 4742 * (1 - rho 4740) = rho 4737 - rho 4738 - rho 4739 := by
      linear_combination r5047
    have haddx :
        rho 4741 * (1 + 3021 * (rho 4735 * seg5AccX159 rho) * (rho 4734 * seg5AccY159 rho)) =
          rho 4735 * seg5AccX159 rho + rho 4734 * seg5AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4742 * (1 - 3021 * (rho 4735 * seg5AccX159 rho) * (rho 4734 * seg5AccY159 rho)) =
          (-1) * (rho 4735 * seg5AccX159 rho) - rho 4734 * seg5AccY159 rho +
            (seg5AccY159 rho - seg5AccX159 rho * (-1)) * (rho 4734 + rho 4735) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4742 * (1 - rho 4740) = rho 4737 - rho 4738 - rho 4739 := ha5
        _ = (-1) * rho 4738 - rho 4739 + (seg5AccY159 rho - seg5AccX159 rho * (-1)) * (rho 4734 + rho 4735) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX160 rho = seg5AccX159 rho - Bool.toZMod bit * (seg5AccX159 rho - rho 4741) := by
      have hd : rho 4743 = Bool.toZMod bit * (rho 4741 - seg5AccX159 rho) := by
        rw [← hbit]
        unfold seg5AccX159
        linear_combination -r5048
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY160 rho = seg5AccY159 rho - Bool.toZMod bit * (seg5AccY159 rho - rho 4742) := by
      have hd : rho 4744 = Bool.toZMod bit * (rho 4742 - seg5AccY159 rho) := by
        rw [← hbit]
        unfold seg5AccY159
        linear_combination -r5049
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4734 * rho 4735 = rho 4745 := by linear_combination r5050
    have hd1 : rho 4734 * rho 4734 = rho 4746 := by linear_combination r5051
    have hd2 : rho 4735 * rho 4735 = rho 4747 := by linear_combination r5052
    have hd3 : rho 4748 * (rho 4735 * rho 4735 + rho 4734 * rho 4734 * (-1)) = 2 * (rho 4734 * rho 4735) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 4749 * (2 - (rho 4735 * rho 4735 + rho 4734 * rho 4734 * (-1))) = rho 4735 * rho 4735 - rho 4734 * rho 4734 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX159 rho : Seg5.F), (seg5AccY159 rho : Seg5.F)⟩
      ⟨(rho 4734 : Seg5.F), (rho 4735 : Seg5.F)⟩
      ⟨(rho 4741 : Seg5.F), (rho 4742 : Seg5.F)⟩
      ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩
      ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg5_rows160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5055 rho ∧ Seg5.relationRow5056 rho ∧ Seg5.relationRow5057 rho ∧ Seg5.relationRow5058 rho ∧ Seg5.relationRow5059 rho ∧ Seg5.relationRow5060 rho ∧ Seg5.relationRow5061 rho ∧ Seg5.relationRow5062 rho ∧ Seg5.relationRow5063 rho ∧ Seg5.relationRow5064 rho ∧ Seg5.relationRow5065 rho ∧ Seg5.relationRow5066 rho ∧ Seg5.relationRow5067 rho ∧ Seg5.relationRow5068 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩

theorem seg5_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2575 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩
        ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩
        ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩
        ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩ := by
  obtain ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩ := seg5_rows160 rho h
  unfold Seg5.relationRow5055 at r5055
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5055
  unfold Seg5.relationRow5056 at r5056
  unfold Seg5.relationRow5057 at r5057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057
  unfold Seg5.relationRow5058 at r5058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058
  unfold Seg5.relationRow5059 at r5059
  unfold Seg5.relationRow5060 at r5060
  unfold Seg5.relationRow5061 at r5061
  unfold Seg5.relationRow5062 at r5062
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5062
  unfold Seg5.relationRow5063 at r5063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5063
  unfold Seg5.relationRow5064 at r5064
  unfold Seg5.relationRow5065 at r5065
  unfold Seg5.relationRow5066 at r5066
  unfold Seg5.relationRow5067 at r5067
  unfold Seg5.relationRow5068 at r5068
  have hrung160 (bit : Bool) (hbit : rho 2575 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩
        ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩
        ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩
        ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩ := by
    have hnextx : seg5AccX161 rho = seg5AccX160 rho + rho 4757 := by
      unfold seg5AccX161 seg5AccX160
      ring
    have hnexty : seg5AccY161 rho = seg5AccY160 rho + rho 4758 := by
      unfold seg5AccY161 seg5AccY160
      ring
    have hsum : seg5AccX160 rho + seg5AccY160 rho = rho 4750 := by
      unfold seg5AccX160 seg5AccY160
      linear_combination r5055
    have ha0 : (rho 4748 + rho 4749) * (seg5AccX160 rho + seg5AccY160 rho) = rho 4751 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 4749 * seg5AccX160 rho = rho 4752 := by
      unfold seg5AccX160
      linear_combination r5057
    have ha2 : rho 4748 * seg5AccY160 rho = rho 4753 := by
      unfold seg5AccY160
      linear_combination r5058
    have ha3 : 3021 * rho 4752 * rho 4753 = rho 4754 := by
      linear_combination r5059
    have ha4 : rho 4755 * (1 + rho 4754) = rho 4752 + rho 4753 := by
      linear_combination r5060
    have ha5 : rho 4756 * (1 - rho 4754) = rho 4751 - rho 4752 - rho 4753 := by
      linear_combination r5061
    have haddx :
        rho 4755 * (1 + 3021 * (rho 4749 * seg5AccX160 rho) * (rho 4748 * seg5AccY160 rho)) =
          rho 4749 * seg5AccX160 rho + rho 4748 * seg5AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4756 * (1 - 3021 * (rho 4749 * seg5AccX160 rho) * (rho 4748 * seg5AccY160 rho)) =
          (-1) * (rho 4749 * seg5AccX160 rho) - rho 4748 * seg5AccY160 rho +
            (seg5AccY160 rho - seg5AccX160 rho * (-1)) * (rho 4748 + rho 4749) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4756 * (1 - rho 4754) = rho 4751 - rho 4752 - rho 4753 := ha5
        _ = (-1) * rho 4752 - rho 4753 + (seg5AccY160 rho - seg5AccX160 rho * (-1)) * (rho 4748 + rho 4749) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX161 rho = seg5AccX160 rho - Bool.toZMod bit * (seg5AccX160 rho - rho 4755) := by
      have hd : rho 4757 = Bool.toZMod bit * (rho 4755 - seg5AccX160 rho) := by
        rw [← hbit]
        unfold seg5AccX160
        linear_combination -r5062
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY161 rho = seg5AccY160 rho - Bool.toZMod bit * (seg5AccY160 rho - rho 4756) := by
      have hd : rho 4758 = Bool.toZMod bit * (rho 4756 - seg5AccY160 rho) := by
        rw [← hbit]
        unfold seg5AccY160
        linear_combination -r5063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4748 * rho 4749 = rho 4759 := by linear_combination r5064
    have hd1 : rho 4748 * rho 4748 = rho 4760 := by linear_combination r5065
    have hd2 : rho 4749 * rho 4749 = rho 4761 := by linear_combination r5066
    have hd3 : rho 4762 * (rho 4749 * rho 4749 + rho 4748 * rho 4748 * (-1)) = 2 * (rho 4748 * rho 4749) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 4763 * (2 - (rho 4749 * rho 4749 + rho 4748 * rho 4748 * (-1))) = rho 4749 * rho 4749 - rho 4748 * rho 4748 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX160 rho : Seg5.F), (seg5AccY160 rho : Seg5.F)⟩
      ⟨(rho 4748 : Seg5.F), (rho 4749 : Seg5.F)⟩
      ⟨(rho 4755 : Seg5.F), (rho 4756 : Seg5.F)⟩
      ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩
      ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg5_rows161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5069 rho ∧ Seg5.relationRow5070 rho ∧ Seg5.relationRow5071 rho ∧ Seg5.relationRow5072 rho ∧ Seg5.relationRow5073 rho ∧ Seg5.relationRow5074 rho ∧ Seg5.relationRow5075 rho ∧ Seg5.relationRow5076 rho ∧ Seg5.relationRow5077 rho ∧ Seg5.relationRow5078 rho ∧ Seg5.relationRow5079 rho ∧ Seg5.relationRow5080 rho ∧ Seg5.relationRow5081 rho ∧ Seg5.relationRow5082 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩

theorem seg5_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2576 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩
        ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩
        ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩
        ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩ := by
  obtain ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩ := seg5_rows161 rho h
  unfold Seg5.relationRow5069 at r5069
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5069
  unfold Seg5.relationRow5070 at r5070
  unfold Seg5.relationRow5071 at r5071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071
  unfold Seg5.relationRow5072 at r5072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5072
  unfold Seg5.relationRow5073 at r5073
  unfold Seg5.relationRow5074 at r5074
  unfold Seg5.relationRow5075 at r5075
  unfold Seg5.relationRow5076 at r5076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5076
  unfold Seg5.relationRow5077 at r5077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077
  unfold Seg5.relationRow5078 at r5078
  unfold Seg5.relationRow5079 at r5079
  unfold Seg5.relationRow5080 at r5080
  unfold Seg5.relationRow5081 at r5081
  unfold Seg5.relationRow5082 at r5082
  have hrung161 (bit : Bool) (hbit : rho 2576 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩
        ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩
        ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩
        ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩ := by
    have hnextx : seg5AccX162 rho = seg5AccX161 rho + rho 4771 := by
      unfold seg5AccX162 seg5AccX161
      ring
    have hnexty : seg5AccY162 rho = seg5AccY161 rho + rho 4772 := by
      unfold seg5AccY162 seg5AccY161
      ring
    have hsum : seg5AccX161 rho + seg5AccY161 rho = rho 4764 := by
      unfold seg5AccX161 seg5AccY161
      linear_combination r5069
    have ha0 : (rho 4762 + rho 4763) * (seg5AccX161 rho + seg5AccY161 rho) = rho 4765 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 4763 * seg5AccX161 rho = rho 4766 := by
      unfold seg5AccX161
      linear_combination r5071
    have ha2 : rho 4762 * seg5AccY161 rho = rho 4767 := by
      unfold seg5AccY161
      linear_combination r5072
    have ha3 : 3021 * rho 4766 * rho 4767 = rho 4768 := by
      linear_combination r5073
    have ha4 : rho 4769 * (1 + rho 4768) = rho 4766 + rho 4767 := by
      linear_combination r5074
    have ha5 : rho 4770 * (1 - rho 4768) = rho 4765 - rho 4766 - rho 4767 := by
      linear_combination r5075
    have haddx :
        rho 4769 * (1 + 3021 * (rho 4763 * seg5AccX161 rho) * (rho 4762 * seg5AccY161 rho)) =
          rho 4763 * seg5AccX161 rho + rho 4762 * seg5AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4770 * (1 - 3021 * (rho 4763 * seg5AccX161 rho) * (rho 4762 * seg5AccY161 rho)) =
          (-1) * (rho 4763 * seg5AccX161 rho) - rho 4762 * seg5AccY161 rho +
            (seg5AccY161 rho - seg5AccX161 rho * (-1)) * (rho 4762 + rho 4763) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4770 * (1 - rho 4768) = rho 4765 - rho 4766 - rho 4767 := ha5
        _ = (-1) * rho 4766 - rho 4767 + (seg5AccY161 rho - seg5AccX161 rho * (-1)) * (rho 4762 + rho 4763) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX162 rho = seg5AccX161 rho - Bool.toZMod bit * (seg5AccX161 rho - rho 4769) := by
      have hd : rho 4771 = Bool.toZMod bit * (rho 4769 - seg5AccX161 rho) := by
        rw [← hbit]
        unfold seg5AccX161
        linear_combination -r5076
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY162 rho = seg5AccY161 rho - Bool.toZMod bit * (seg5AccY161 rho - rho 4770) := by
      have hd : rho 4772 = Bool.toZMod bit * (rho 4770 - seg5AccY161 rho) := by
        rw [← hbit]
        unfold seg5AccY161
        linear_combination -r5077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4762 * rho 4763 = rho 4773 := by linear_combination r5078
    have hd1 : rho 4762 * rho 4762 = rho 4774 := by linear_combination r5079
    have hd2 : rho 4763 * rho 4763 = rho 4775 := by linear_combination r5080
    have hd3 : rho 4776 * (rho 4763 * rho 4763 + rho 4762 * rho 4762 * (-1)) = 2 * (rho 4762 * rho 4763) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 4777 * (2 - (rho 4763 * rho 4763 + rho 4762 * rho 4762 * (-1))) = rho 4763 * rho 4763 - rho 4762 * rho 4762 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX161 rho : Seg5.F), (seg5AccY161 rho : Seg5.F)⟩
      ⟨(rho 4762 : Seg5.F), (rho 4763 : Seg5.F)⟩
      ⟨(rho 4769 : Seg5.F), (rho 4770 : Seg5.F)⟩
      ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩
      ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg5_rows162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5083 rho ∧ Seg5.relationRow5084 rho ∧ Seg5.relationRow5085 rho ∧ Seg5.relationRow5086 rho ∧ Seg5.relationRow5087 rho ∧ Seg5.relationRow5088 rho ∧ Seg5.relationRow5089 rho ∧ Seg5.relationRow5090 rho ∧ Seg5.relationRow5091 rho ∧ Seg5.relationRow5092 rho ∧ Seg5.relationRow5093 rho ∧ Seg5.relationRow5094 rho ∧ Seg5.relationRow5095 rho ∧ Seg5.relationRow5096 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩

theorem seg5_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2577 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩
        ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩
        ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩
        ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩ := by
  obtain ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩ := seg5_rows162 rho h
  unfold Seg5.relationRow5083 at r5083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083
  unfold Seg5.relationRow5084 at r5084
  unfold Seg5.relationRow5085 at r5085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5085
  unfold Seg5.relationRow5086 at r5086
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5086
  unfold Seg5.relationRow5087 at r5087
  unfold Seg5.relationRow5088 at r5088
  unfold Seg5.relationRow5089 at r5089
  unfold Seg5.relationRow5090 at r5090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090
  unfold Seg5.relationRow5091 at r5091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091
  unfold Seg5.relationRow5092 at r5092
  unfold Seg5.relationRow5093 at r5093
  unfold Seg5.relationRow5094 at r5094
  unfold Seg5.relationRow5095 at r5095
  unfold Seg5.relationRow5096 at r5096
  have hrung162 (bit : Bool) (hbit : rho 2577 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩
        ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩
        ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩
        ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩ := by
    have hnextx : seg5AccX163 rho = seg5AccX162 rho + rho 4785 := by
      unfold seg5AccX163 seg5AccX162
      ring
    have hnexty : seg5AccY163 rho = seg5AccY162 rho + rho 4786 := by
      unfold seg5AccY163 seg5AccY162
      ring
    have hsum : seg5AccX162 rho + seg5AccY162 rho = rho 4778 := by
      unfold seg5AccX162 seg5AccY162
      linear_combination r5083
    have ha0 : (rho 4776 + rho 4777) * (seg5AccX162 rho + seg5AccY162 rho) = rho 4779 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 4777 * seg5AccX162 rho = rho 4780 := by
      unfold seg5AccX162
      linear_combination r5085
    have ha2 : rho 4776 * seg5AccY162 rho = rho 4781 := by
      unfold seg5AccY162
      linear_combination r5086
    have ha3 : 3021 * rho 4780 * rho 4781 = rho 4782 := by
      linear_combination r5087
    have ha4 : rho 4783 * (1 + rho 4782) = rho 4780 + rho 4781 := by
      linear_combination r5088
    have ha5 : rho 4784 * (1 - rho 4782) = rho 4779 - rho 4780 - rho 4781 := by
      linear_combination r5089
    have haddx :
        rho 4783 * (1 + 3021 * (rho 4777 * seg5AccX162 rho) * (rho 4776 * seg5AccY162 rho)) =
          rho 4777 * seg5AccX162 rho + rho 4776 * seg5AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4784 * (1 - 3021 * (rho 4777 * seg5AccX162 rho) * (rho 4776 * seg5AccY162 rho)) =
          (-1) * (rho 4777 * seg5AccX162 rho) - rho 4776 * seg5AccY162 rho +
            (seg5AccY162 rho - seg5AccX162 rho * (-1)) * (rho 4776 + rho 4777) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4784 * (1 - rho 4782) = rho 4779 - rho 4780 - rho 4781 := ha5
        _ = (-1) * rho 4780 - rho 4781 + (seg5AccY162 rho - seg5AccX162 rho * (-1)) * (rho 4776 + rho 4777) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX163 rho = seg5AccX162 rho - Bool.toZMod bit * (seg5AccX162 rho - rho 4783) := by
      have hd : rho 4785 = Bool.toZMod bit * (rho 4783 - seg5AccX162 rho) := by
        rw [← hbit]
        unfold seg5AccX162
        linear_combination -r5090
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY163 rho = seg5AccY162 rho - Bool.toZMod bit * (seg5AccY162 rho - rho 4784) := by
      have hd : rho 4786 = Bool.toZMod bit * (rho 4784 - seg5AccY162 rho) := by
        rw [← hbit]
        unfold seg5AccY162
        linear_combination -r5091
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4776 * rho 4777 = rho 4787 := by linear_combination r5092
    have hd1 : rho 4776 * rho 4776 = rho 4788 := by linear_combination r5093
    have hd2 : rho 4777 * rho 4777 = rho 4789 := by linear_combination r5094
    have hd3 : rho 4790 * (rho 4777 * rho 4777 + rho 4776 * rho 4776 * (-1)) = 2 * (rho 4776 * rho 4777) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 4791 * (2 - (rho 4777 * rho 4777 + rho 4776 * rho 4776 * (-1))) = rho 4777 * rho 4777 - rho 4776 * rho 4776 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX162 rho : Seg5.F), (seg5AccY162 rho : Seg5.F)⟩
      ⟨(rho 4776 : Seg5.F), (rho 4777 : Seg5.F)⟩
      ⟨(rho 4783 : Seg5.F), (rho 4784 : Seg5.F)⟩
      ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩
      ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg5_rows163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5097 rho ∧ Seg5.relationRow5098 rho ∧ Seg5.relationRow5099 rho ∧ Seg5.relationRow5100 rho ∧ Seg5.relationRow5101 rho ∧ Seg5.relationRow5102 rho ∧ Seg5.relationRow5103 rho ∧ Seg5.relationRow5104 rho ∧ Seg5.relationRow5105 rho ∧ Seg5.relationRow5106 rho ∧ Seg5.relationRow5107 rho ∧ Seg5.relationRow5108 rho ∧ Seg5.relationRow5109 rho ∧ Seg5.relationRow5110 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩

theorem seg5_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2578 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩
        ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩
        ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩
        ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩ := by
  obtain ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩ := seg5_rows163 rho h
  unfold Seg5.relationRow5097 at r5097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097
  unfold Seg5.relationRow5098 at r5098
  unfold Seg5.relationRow5099 at r5099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5099
  unfold Seg5.relationRow5100 at r5100
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5100
  unfold Seg5.relationRow5101 at r5101
  unfold Seg5.relationRow5102 at r5102
  unfold Seg5.relationRow5103 at r5103
  unfold Seg5.relationRow5104 at r5104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104
  unfold Seg5.relationRow5105 at r5105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105
  unfold Seg5.relationRow5106 at r5106
  unfold Seg5.relationRow5107 at r5107
  unfold Seg5.relationRow5108 at r5108
  unfold Seg5.relationRow5109 at r5109
  unfold Seg5.relationRow5110 at r5110
  have hrung163 (bit : Bool) (hbit : rho 2578 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩
        ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩
        ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩
        ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩ := by
    have hnextx : seg5AccX164 rho = seg5AccX163 rho + rho 4799 := by
      unfold seg5AccX164 seg5AccX163
      ring
    have hnexty : seg5AccY164 rho = seg5AccY163 rho + rho 4800 := by
      unfold seg5AccY164 seg5AccY163
      ring
    have hsum : seg5AccX163 rho + seg5AccY163 rho = rho 4792 := by
      unfold seg5AccX163 seg5AccY163
      linear_combination r5097
    have ha0 : (rho 4790 + rho 4791) * (seg5AccX163 rho + seg5AccY163 rho) = rho 4793 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 4791 * seg5AccX163 rho = rho 4794 := by
      unfold seg5AccX163
      linear_combination r5099
    have ha2 : rho 4790 * seg5AccY163 rho = rho 4795 := by
      unfold seg5AccY163
      linear_combination r5100
    have ha3 : 3021 * rho 4794 * rho 4795 = rho 4796 := by
      linear_combination r5101
    have ha4 : rho 4797 * (1 + rho 4796) = rho 4794 + rho 4795 := by
      linear_combination r5102
    have ha5 : rho 4798 * (1 - rho 4796) = rho 4793 - rho 4794 - rho 4795 := by
      linear_combination r5103
    have haddx :
        rho 4797 * (1 + 3021 * (rho 4791 * seg5AccX163 rho) * (rho 4790 * seg5AccY163 rho)) =
          rho 4791 * seg5AccX163 rho + rho 4790 * seg5AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4798 * (1 - 3021 * (rho 4791 * seg5AccX163 rho) * (rho 4790 * seg5AccY163 rho)) =
          (-1) * (rho 4791 * seg5AccX163 rho) - rho 4790 * seg5AccY163 rho +
            (seg5AccY163 rho - seg5AccX163 rho * (-1)) * (rho 4790 + rho 4791) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4798 * (1 - rho 4796) = rho 4793 - rho 4794 - rho 4795 := ha5
        _ = (-1) * rho 4794 - rho 4795 + (seg5AccY163 rho - seg5AccX163 rho * (-1)) * (rho 4790 + rho 4791) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX164 rho = seg5AccX163 rho - Bool.toZMod bit * (seg5AccX163 rho - rho 4797) := by
      have hd : rho 4799 = Bool.toZMod bit * (rho 4797 - seg5AccX163 rho) := by
        rw [← hbit]
        unfold seg5AccX163
        linear_combination -r5104
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY164 rho = seg5AccY163 rho - Bool.toZMod bit * (seg5AccY163 rho - rho 4798) := by
      have hd : rho 4800 = Bool.toZMod bit * (rho 4798 - seg5AccY163 rho) := by
        rw [← hbit]
        unfold seg5AccY163
        linear_combination -r5105
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4790 * rho 4791 = rho 4801 := by linear_combination r5106
    have hd1 : rho 4790 * rho 4790 = rho 4802 := by linear_combination r5107
    have hd2 : rho 4791 * rho 4791 = rho 4803 := by linear_combination r5108
    have hd3 : rho 4804 * (rho 4791 * rho 4791 + rho 4790 * rho 4790 * (-1)) = 2 * (rho 4790 * rho 4791) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 4805 * (2 - (rho 4791 * rho 4791 + rho 4790 * rho 4790 * (-1))) = rho 4791 * rho 4791 - rho 4790 * rho 4790 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX163 rho : Seg5.F), (seg5AccY163 rho : Seg5.F)⟩
      ⟨(rho 4790 : Seg5.F), (rho 4791 : Seg5.F)⟩
      ⟨(rho 4797 : Seg5.F), (rho 4798 : Seg5.F)⟩
      ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩
      ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg5_rows164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5111 rho ∧ Seg5.relationRow5112 rho ∧ Seg5.relationRow5113 rho ∧ Seg5.relationRow5114 rho ∧ Seg5.relationRow5115 rho ∧ Seg5.relationRow5116 rho ∧ Seg5.relationRow5117 rho ∧ Seg5.relationRow5118 rho ∧ Seg5.relationRow5119 rho ∧ Seg5.relationRow5120 rho ∧ Seg5.relationRow5121 rho ∧ Seg5.relationRow5122 rho ∧ Seg5.relationRow5123 rho ∧ Seg5.relationRow5124 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩

theorem seg5_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2579 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩
        ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩
        ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩
        ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩ := by
  obtain ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩ := seg5_rows164 rho h
  unfold Seg5.relationRow5111 at r5111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5111
  unfold Seg5.relationRow5112 at r5112
  unfold Seg5.relationRow5113 at r5113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5113
  unfold Seg5.relationRow5114 at r5114
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5114
  unfold Seg5.relationRow5115 at r5115
  unfold Seg5.relationRow5116 at r5116
  unfold Seg5.relationRow5117 at r5117
  unfold Seg5.relationRow5118 at r5118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118
  unfold Seg5.relationRow5119 at r5119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5119
  unfold Seg5.relationRow5120 at r5120
  unfold Seg5.relationRow5121 at r5121
  unfold Seg5.relationRow5122 at r5122
  unfold Seg5.relationRow5123 at r5123
  unfold Seg5.relationRow5124 at r5124
  have hrung164 (bit : Bool) (hbit : rho 2579 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩
        ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩
        ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩
        ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩ := by
    have hnextx : seg5AccX165 rho = seg5AccX164 rho + rho 4813 := by
      unfold seg5AccX165 seg5AccX164
      ring
    have hnexty : seg5AccY165 rho = seg5AccY164 rho + rho 4814 := by
      unfold seg5AccY165 seg5AccY164
      ring
    have hsum : seg5AccX164 rho + seg5AccY164 rho = rho 4806 := by
      unfold seg5AccX164 seg5AccY164
      linear_combination r5111
    have ha0 : (rho 4804 + rho 4805) * (seg5AccX164 rho + seg5AccY164 rho) = rho 4807 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 4805 * seg5AccX164 rho = rho 4808 := by
      unfold seg5AccX164
      linear_combination r5113
    have ha2 : rho 4804 * seg5AccY164 rho = rho 4809 := by
      unfold seg5AccY164
      linear_combination r5114
    have ha3 : 3021 * rho 4808 * rho 4809 = rho 4810 := by
      linear_combination r5115
    have ha4 : rho 4811 * (1 + rho 4810) = rho 4808 + rho 4809 := by
      linear_combination r5116
    have ha5 : rho 4812 * (1 - rho 4810) = rho 4807 - rho 4808 - rho 4809 := by
      linear_combination r5117
    have haddx :
        rho 4811 * (1 + 3021 * (rho 4805 * seg5AccX164 rho) * (rho 4804 * seg5AccY164 rho)) =
          rho 4805 * seg5AccX164 rho + rho 4804 * seg5AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4812 * (1 - 3021 * (rho 4805 * seg5AccX164 rho) * (rho 4804 * seg5AccY164 rho)) =
          (-1) * (rho 4805 * seg5AccX164 rho) - rho 4804 * seg5AccY164 rho +
            (seg5AccY164 rho - seg5AccX164 rho * (-1)) * (rho 4804 + rho 4805) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4812 * (1 - rho 4810) = rho 4807 - rho 4808 - rho 4809 := ha5
        _ = (-1) * rho 4808 - rho 4809 + (seg5AccY164 rho - seg5AccX164 rho * (-1)) * (rho 4804 + rho 4805) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX165 rho = seg5AccX164 rho - Bool.toZMod bit * (seg5AccX164 rho - rho 4811) := by
      have hd : rho 4813 = Bool.toZMod bit * (rho 4811 - seg5AccX164 rho) := by
        rw [← hbit]
        unfold seg5AccX164
        linear_combination -r5118
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY165 rho = seg5AccY164 rho - Bool.toZMod bit * (seg5AccY164 rho - rho 4812) := by
      have hd : rho 4814 = Bool.toZMod bit * (rho 4812 - seg5AccY164 rho) := by
        rw [← hbit]
        unfold seg5AccY164
        linear_combination -r5119
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4804 * rho 4805 = rho 4815 := by linear_combination r5120
    have hd1 : rho 4804 * rho 4804 = rho 4816 := by linear_combination r5121
    have hd2 : rho 4805 * rho 4805 = rho 4817 := by linear_combination r5122
    have hd3 : rho 4818 * (rho 4805 * rho 4805 + rho 4804 * rho 4804 * (-1)) = 2 * (rho 4804 * rho 4805) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 4819 * (2 - (rho 4805 * rho 4805 + rho 4804 * rho 4804 * (-1))) = rho 4805 * rho 4805 - rho 4804 * rho 4804 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX164 rho : Seg5.F), (seg5AccY164 rho : Seg5.F)⟩
      ⟨(rho 4804 : Seg5.F), (rho 4805 : Seg5.F)⟩
      ⟨(rho 4811 : Seg5.F), (rho 4812 : Seg5.F)⟩
      ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩
      ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg5_hstep_c14 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 154 ≤ i → i < 165 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg5_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg5_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg5_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg5_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg5_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
  · exact seg5_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg5_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg5_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg5_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg5_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
