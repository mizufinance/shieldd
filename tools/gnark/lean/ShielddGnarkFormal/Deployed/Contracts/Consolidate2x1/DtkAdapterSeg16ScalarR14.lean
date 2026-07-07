import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4971 rho ∧ Seg16.relationRow4972 rho ∧ Seg16.relationRow4973 rho ∧ Seg16.relationRow4974 rho ∧ Seg16.relationRow4975 rho ∧ Seg16.relationRow4976 rho ∧ Seg16.relationRow4977 rho ∧ Seg16.relationRow4978 rho ∧ Seg16.relationRow4979 rho ∧ Seg16.relationRow4980 rho ∧ Seg16.relationRow4981 rho ∧ Seg16.relationRow4982 rho ∧ Seg16.relationRow4983 rho ∧ Seg16.relationRow4984 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩

theorem seg16_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15446 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩ := by
  obtain ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩ := seg16_rows154 rho h
  unfold Seg16.relationRow4971 at r4971
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971
  unfold Seg16.relationRow4972 at r4972
  unfold Seg16.relationRow4973 at r4973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973
  unfold Seg16.relationRow4974 at r4974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974
  unfold Seg16.relationRow4975 at r4975
  unfold Seg16.relationRow4976 at r4976
  unfold Seg16.relationRow4977 at r4977
  unfold Seg16.relationRow4978 at r4978
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978
  unfold Seg16.relationRow4979 at r4979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979
  unfold Seg16.relationRow4980 at r4980
  unfold Seg16.relationRow4981 at r4981
  unfold Seg16.relationRow4982 at r4982
  unfold Seg16.relationRow4983 at r4983
  unfold Seg16.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 15446 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
        ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩ := by
    have hnextx : seg16AccX155 rho = seg16AccX154 rho + rho 17550 := by
      unfold seg16AccX155 seg16AccX154
      ring
    have hnexty : seg16AccY155 rho = seg16AccY154 rho + rho 17551 := by
      unfold seg16AccY155 seg16AccY154
      ring
    have hsum : seg16AccX154 rho + seg16AccY154 rho = rho 17543 := by
      unfold seg16AccX154 seg16AccY154
      linear_combination r4971
    have ha0 : (rho 17541 + rho 17542) * (seg16AccX154 rho + seg16AccY154 rho) = rho 17544 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 17542 * seg16AccX154 rho = rho 17545 := by
      unfold seg16AccX154
      linear_combination r4973
    have ha2 : rho 17541 * seg16AccY154 rho = rho 17546 := by
      unfold seg16AccY154
      linear_combination r4974
    have ha3 : 3021 * rho 17545 * rho 17546 = rho 17547 := by
      linear_combination r4975
    have ha4 : rho 17548 * (1 + rho 17547) = rho 17545 + rho 17546 := by
      linear_combination r4976
    have ha5 : rho 17549 * (1 - rho 17547) = rho 17544 - rho 17545 - rho 17546 := by
      linear_combination r4977
    have haddx :
        rho 17548 * (1 + 3021 * (rho 17542 * seg16AccX154 rho) * (rho 17541 * seg16AccY154 rho)) =
          rho 17542 * seg16AccX154 rho + rho 17541 * seg16AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17549 * (1 - 3021 * (rho 17542 * seg16AccX154 rho) * (rho 17541 * seg16AccY154 rho)) =
          (-1) * (rho 17542 * seg16AccX154 rho) - rho 17541 * seg16AccY154 rho +
            (seg16AccY154 rho - seg16AccX154 rho * (-1)) * (rho 17541 + rho 17542) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17549 * (1 - rho 17547) = rho 17544 - rho 17545 - rho 17546 := ha5
        _ = (-1) * rho 17545 - rho 17546 + (seg16AccY154 rho - seg16AccX154 rho * (-1)) * (rho 17541 + rho 17542) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX155 rho = seg16AccX154 rho - Bool.toZMod bit * (seg16AccX154 rho - rho 17548) := by
      have hd : rho 17550 = Bool.toZMod bit * (rho 17548 - seg16AccX154 rho) := by
        rw [← hbit]
        unfold seg16AccX154
        linear_combination -r4978
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY155 rho = seg16AccY154 rho - Bool.toZMod bit * (seg16AccY154 rho - rho 17549) := by
      have hd : rho 17551 = Bool.toZMod bit * (rho 17549 - seg16AccY154 rho) := by
        rw [← hbit]
        unfold seg16AccY154
        linear_combination -r4979
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17541 * rho 17542 = rho 17552 := by linear_combination r4980
    have hd1 : rho 17541 * rho 17541 = rho 17553 := by linear_combination r4981
    have hd2 : rho 17542 * rho 17542 = rho 17554 := by linear_combination r4982
    have hd3 : rho 17555 * (rho 17542 * rho 17542 + rho 17541 * rho 17541 * (-1)) = 2 * (rho 17541 * rho 17542) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 17556 * (2 - (rho 17542 * rho 17542 + rho 17541 * rho 17541 * (-1))) = rho 17542 * rho 17542 - rho 17541 * rho 17541 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX154 rho : Seg16.F), (seg16AccY154 rho : Seg16.F)⟩
      ⟨(rho 17541 : Seg16.F), (rho 17542 : Seg16.F)⟩
      ⟨(rho 17548 : Seg16.F), (rho 17549 : Seg16.F)⟩
      ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
      ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg16_rows155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4985 rho ∧ Seg16.relationRow4986 rho ∧ Seg16.relationRow4987 rho ∧ Seg16.relationRow4988 rho ∧ Seg16.relationRow4989 rho ∧ Seg16.relationRow4990 rho ∧ Seg16.relationRow4991 rho ∧ Seg16.relationRow4992 rho ∧ Seg16.relationRow4993 rho ∧ Seg16.relationRow4994 rho ∧ Seg16.relationRow4995 rho ∧ Seg16.relationRow4996 rho ∧ Seg16.relationRow4997 rho ∧ Seg16.relationRow4998 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg16_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15447 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩ := by
  obtain ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg16_rows155 rho h
  unfold Seg16.relationRow4985 at r4985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4985
  unfold Seg16.relationRow4986 at r4986
  unfold Seg16.relationRow4987 at r4987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987
  unfold Seg16.relationRow4988 at r4988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988
  unfold Seg16.relationRow4989 at r4989
  unfold Seg16.relationRow4990 at r4990
  unfold Seg16.relationRow4991 at r4991
  unfold Seg16.relationRow4992 at r4992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992
  unfold Seg16.relationRow4993 at r4993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993
  unfold Seg16.relationRow4994 at r4994
  unfold Seg16.relationRow4995 at r4995
  unfold Seg16.relationRow4996 at r4996
  unfold Seg16.relationRow4997 at r4997
  unfold Seg16.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 15447 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
        ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩ := by
    have hnextx : seg16AccX156 rho = seg16AccX155 rho + rho 17564 := by
      unfold seg16AccX156 seg16AccX155
      ring
    have hnexty : seg16AccY156 rho = seg16AccY155 rho + rho 17565 := by
      unfold seg16AccY156 seg16AccY155
      ring
    have hsum : seg16AccX155 rho + seg16AccY155 rho = rho 17557 := by
      unfold seg16AccX155 seg16AccY155
      linear_combination r4985
    have ha0 : (rho 17555 + rho 17556) * (seg16AccX155 rho + seg16AccY155 rho) = rho 17558 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 17556 * seg16AccX155 rho = rho 17559 := by
      unfold seg16AccX155
      linear_combination r4987
    have ha2 : rho 17555 * seg16AccY155 rho = rho 17560 := by
      unfold seg16AccY155
      linear_combination r4988
    have ha3 : 3021 * rho 17559 * rho 17560 = rho 17561 := by
      linear_combination r4989
    have ha4 : rho 17562 * (1 + rho 17561) = rho 17559 + rho 17560 := by
      linear_combination r4990
    have ha5 : rho 17563 * (1 - rho 17561) = rho 17558 - rho 17559 - rho 17560 := by
      linear_combination r4991
    have haddx :
        rho 17562 * (1 + 3021 * (rho 17556 * seg16AccX155 rho) * (rho 17555 * seg16AccY155 rho)) =
          rho 17556 * seg16AccX155 rho + rho 17555 * seg16AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17563 * (1 - 3021 * (rho 17556 * seg16AccX155 rho) * (rho 17555 * seg16AccY155 rho)) =
          (-1) * (rho 17556 * seg16AccX155 rho) - rho 17555 * seg16AccY155 rho +
            (seg16AccY155 rho - seg16AccX155 rho * (-1)) * (rho 17555 + rho 17556) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17563 * (1 - rho 17561) = rho 17558 - rho 17559 - rho 17560 := ha5
        _ = (-1) * rho 17559 - rho 17560 + (seg16AccY155 rho - seg16AccX155 rho * (-1)) * (rho 17555 + rho 17556) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX156 rho = seg16AccX155 rho - Bool.toZMod bit * (seg16AccX155 rho - rho 17562) := by
      have hd : rho 17564 = Bool.toZMod bit * (rho 17562 - seg16AccX155 rho) := by
        rw [← hbit]
        unfold seg16AccX155
        linear_combination -r4992
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY156 rho = seg16AccY155 rho - Bool.toZMod bit * (seg16AccY155 rho - rho 17563) := by
      have hd : rho 17565 = Bool.toZMod bit * (rho 17563 - seg16AccY155 rho) := by
        rw [← hbit]
        unfold seg16AccY155
        linear_combination -r4993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17555 * rho 17556 = rho 17566 := by linear_combination r4994
    have hd1 : rho 17555 * rho 17555 = rho 17567 := by linear_combination r4995
    have hd2 : rho 17556 * rho 17556 = rho 17568 := by linear_combination r4996
    have hd3 : rho 17569 * (rho 17556 * rho 17556 + rho 17555 * rho 17555 * (-1)) = 2 * (rho 17555 * rho 17556) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 17570 * (2 - (rho 17556 * rho 17556 + rho 17555 * rho 17555 * (-1))) = rho 17556 * rho 17556 - rho 17555 * rho 17555 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX155 rho : Seg16.F), (seg16AccY155 rho : Seg16.F)⟩
      ⟨(rho 17555 : Seg16.F), (rho 17556 : Seg16.F)⟩
      ⟨(rho 17562 : Seg16.F), (rho 17563 : Seg16.F)⟩
      ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
      ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg16_rows156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4999 rho ∧ Seg16.relationRow5000 rho ∧ Seg16.relationRow5001 rho ∧ Seg16.relationRow5002 rho ∧ Seg16.relationRow5003 rho ∧ Seg16.relationRow5004 rho ∧ Seg16.relationRow5005 rho ∧ Seg16.relationRow5006 rho ∧ Seg16.relationRow5007 rho ∧ Seg16.relationRow5008 rho ∧ Seg16.relationRow5009 rho ∧ Seg16.relationRow5010 rho ∧ Seg16.relationRow5011 rho ∧ Seg16.relationRow5012 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩

theorem seg16_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15448 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩ := seg16_rows156 rho h
  unfold Seg16.relationRow4999 at r4999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999
  unfold Seg16.relationRow5000 at r5000
  unfold Seg16.relationRow5001 at r5001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001
  unfold Seg16.relationRow5002 at r5002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5002
  unfold Seg16.relationRow5003 at r5003
  unfold Seg16.relationRow5004 at r5004
  unfold Seg16.relationRow5005 at r5005
  unfold Seg16.relationRow5006 at r5006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006
  unfold Seg16.relationRow5007 at r5007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5007
  unfold Seg16.relationRow5008 at r5008
  unfold Seg16.relationRow5009 at r5009
  unfold Seg16.relationRow5010 at r5010
  unfold Seg16.relationRow5011 at r5011
  unfold Seg16.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 15448 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
        ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩ := by
    have hnextx : seg16AccX157 rho = seg16AccX156 rho + rho 17578 := by
      unfold seg16AccX157 seg16AccX156
      ring
    have hnexty : seg16AccY157 rho = seg16AccY156 rho + rho 17579 := by
      unfold seg16AccY157 seg16AccY156
      ring
    have hsum : seg16AccX156 rho + seg16AccY156 rho = rho 17571 := by
      unfold seg16AccX156 seg16AccY156
      linear_combination r4999
    have ha0 : (rho 17569 + rho 17570) * (seg16AccX156 rho + seg16AccY156 rho) = rho 17572 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 17570 * seg16AccX156 rho = rho 17573 := by
      unfold seg16AccX156
      linear_combination r5001
    have ha2 : rho 17569 * seg16AccY156 rho = rho 17574 := by
      unfold seg16AccY156
      linear_combination r5002
    have ha3 : 3021 * rho 17573 * rho 17574 = rho 17575 := by
      linear_combination r5003
    have ha4 : rho 17576 * (1 + rho 17575) = rho 17573 + rho 17574 := by
      linear_combination r5004
    have ha5 : rho 17577 * (1 - rho 17575) = rho 17572 - rho 17573 - rho 17574 := by
      linear_combination r5005
    have haddx :
        rho 17576 * (1 + 3021 * (rho 17570 * seg16AccX156 rho) * (rho 17569 * seg16AccY156 rho)) =
          rho 17570 * seg16AccX156 rho + rho 17569 * seg16AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17577 * (1 - 3021 * (rho 17570 * seg16AccX156 rho) * (rho 17569 * seg16AccY156 rho)) =
          (-1) * (rho 17570 * seg16AccX156 rho) - rho 17569 * seg16AccY156 rho +
            (seg16AccY156 rho - seg16AccX156 rho * (-1)) * (rho 17569 + rho 17570) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17577 * (1 - rho 17575) = rho 17572 - rho 17573 - rho 17574 := ha5
        _ = (-1) * rho 17573 - rho 17574 + (seg16AccY156 rho - seg16AccX156 rho * (-1)) * (rho 17569 + rho 17570) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX157 rho = seg16AccX156 rho - Bool.toZMod bit * (seg16AccX156 rho - rho 17576) := by
      have hd : rho 17578 = Bool.toZMod bit * (rho 17576 - seg16AccX156 rho) := by
        rw [← hbit]
        unfold seg16AccX156
        linear_combination -r5006
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY157 rho = seg16AccY156 rho - Bool.toZMod bit * (seg16AccY156 rho - rho 17577) := by
      have hd : rho 17579 = Bool.toZMod bit * (rho 17577 - seg16AccY156 rho) := by
        rw [← hbit]
        unfold seg16AccY156
        linear_combination -r5007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17569 * rho 17570 = rho 17580 := by linear_combination r5008
    have hd1 : rho 17569 * rho 17569 = rho 17581 := by linear_combination r5009
    have hd2 : rho 17570 * rho 17570 = rho 17582 := by linear_combination r5010
    have hd3 : rho 17583 * (rho 17570 * rho 17570 + rho 17569 * rho 17569 * (-1)) = 2 * (rho 17569 * rho 17570) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 17584 * (2 - (rho 17570 * rho 17570 + rho 17569 * rho 17569 * (-1))) = rho 17570 * rho 17570 - rho 17569 * rho 17569 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX156 rho : Seg16.F), (seg16AccY156 rho : Seg16.F)⟩
      ⟨(rho 17569 : Seg16.F), (rho 17570 : Seg16.F)⟩
      ⟨(rho 17576 : Seg16.F), (rho 17577 : Seg16.F)⟩
      ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
      ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg16_rows157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5013 rho ∧ Seg16.relationRow5014 rho ∧ Seg16.relationRow5015 rho ∧ Seg16.relationRow5016 rho ∧ Seg16.relationRow5017 rho ∧ Seg16.relationRow5018 rho ∧ Seg16.relationRow5019 rho ∧ Seg16.relationRow5020 rho ∧ Seg16.relationRow5021 rho ∧ Seg16.relationRow5022 rho ∧ Seg16.relationRow5023 rho ∧ Seg16.relationRow5024 rho ∧ Seg16.relationRow5025 rho ∧ Seg16.relationRow5026 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩

theorem seg16_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15449 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩ := by
  obtain ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩ := seg16_rows157 rho h
  unfold Seg16.relationRow5013 at r5013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013
  unfold Seg16.relationRow5014 at r5014
  unfold Seg16.relationRow5015 at r5015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5015
  unfold Seg16.relationRow5016 at r5016
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5016
  unfold Seg16.relationRow5017 at r5017
  unfold Seg16.relationRow5018 at r5018
  unfold Seg16.relationRow5019 at r5019
  unfold Seg16.relationRow5020 at r5020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5020
  unfold Seg16.relationRow5021 at r5021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5021
  unfold Seg16.relationRow5022 at r5022
  unfold Seg16.relationRow5023 at r5023
  unfold Seg16.relationRow5024 at r5024
  unfold Seg16.relationRow5025 at r5025
  unfold Seg16.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 15449 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
        ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩ := by
    have hnextx : seg16AccX158 rho = seg16AccX157 rho + rho 17592 := by
      unfold seg16AccX158 seg16AccX157
      ring
    have hnexty : seg16AccY158 rho = seg16AccY157 rho + rho 17593 := by
      unfold seg16AccY158 seg16AccY157
      ring
    have hsum : seg16AccX157 rho + seg16AccY157 rho = rho 17585 := by
      unfold seg16AccX157 seg16AccY157
      linear_combination r5013
    have ha0 : (rho 17583 + rho 17584) * (seg16AccX157 rho + seg16AccY157 rho) = rho 17586 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 17584 * seg16AccX157 rho = rho 17587 := by
      unfold seg16AccX157
      linear_combination r5015
    have ha2 : rho 17583 * seg16AccY157 rho = rho 17588 := by
      unfold seg16AccY157
      linear_combination r5016
    have ha3 : 3021 * rho 17587 * rho 17588 = rho 17589 := by
      linear_combination r5017
    have ha4 : rho 17590 * (1 + rho 17589) = rho 17587 + rho 17588 := by
      linear_combination r5018
    have ha5 : rho 17591 * (1 - rho 17589) = rho 17586 - rho 17587 - rho 17588 := by
      linear_combination r5019
    have haddx :
        rho 17590 * (1 + 3021 * (rho 17584 * seg16AccX157 rho) * (rho 17583 * seg16AccY157 rho)) =
          rho 17584 * seg16AccX157 rho + rho 17583 * seg16AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17591 * (1 - 3021 * (rho 17584 * seg16AccX157 rho) * (rho 17583 * seg16AccY157 rho)) =
          (-1) * (rho 17584 * seg16AccX157 rho) - rho 17583 * seg16AccY157 rho +
            (seg16AccY157 rho - seg16AccX157 rho * (-1)) * (rho 17583 + rho 17584) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17591 * (1 - rho 17589) = rho 17586 - rho 17587 - rho 17588 := ha5
        _ = (-1) * rho 17587 - rho 17588 + (seg16AccY157 rho - seg16AccX157 rho * (-1)) * (rho 17583 + rho 17584) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX158 rho = seg16AccX157 rho - Bool.toZMod bit * (seg16AccX157 rho - rho 17590) := by
      have hd : rho 17592 = Bool.toZMod bit * (rho 17590 - seg16AccX157 rho) := by
        rw [← hbit]
        unfold seg16AccX157
        linear_combination -r5020
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY158 rho = seg16AccY157 rho - Bool.toZMod bit * (seg16AccY157 rho - rho 17591) := by
      have hd : rho 17593 = Bool.toZMod bit * (rho 17591 - seg16AccY157 rho) := by
        rw [← hbit]
        unfold seg16AccY157
        linear_combination -r5021
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17583 * rho 17584 = rho 17594 := by linear_combination r5022
    have hd1 : rho 17583 * rho 17583 = rho 17595 := by linear_combination r5023
    have hd2 : rho 17584 * rho 17584 = rho 17596 := by linear_combination r5024
    have hd3 : rho 17597 * (rho 17584 * rho 17584 + rho 17583 * rho 17583 * (-1)) = 2 * (rho 17583 * rho 17584) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 17598 * (2 - (rho 17584 * rho 17584 + rho 17583 * rho 17583 * (-1))) = rho 17584 * rho 17584 - rho 17583 * rho 17583 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX157 rho : Seg16.F), (seg16AccY157 rho : Seg16.F)⟩
      ⟨(rho 17583 : Seg16.F), (rho 17584 : Seg16.F)⟩
      ⟨(rho 17590 : Seg16.F), (rho 17591 : Seg16.F)⟩
      ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
      ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg16_rows158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5027 rho ∧ Seg16.relationRow5028 rho ∧ Seg16.relationRow5029 rho ∧ Seg16.relationRow5030 rho ∧ Seg16.relationRow5031 rho ∧ Seg16.relationRow5032 rho ∧ Seg16.relationRow5033 rho ∧ Seg16.relationRow5034 rho ∧ Seg16.relationRow5035 rho ∧ Seg16.relationRow5036 rho ∧ Seg16.relationRow5037 rho ∧ Seg16.relationRow5038 rho ∧ Seg16.relationRow5039 rho ∧ Seg16.relationRow5040 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩

theorem seg16_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15450 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩ := by
  obtain ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩ := seg16_rows158 rho h
  unfold Seg16.relationRow5027 at r5027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027
  unfold Seg16.relationRow5028 at r5028
  unfold Seg16.relationRow5029 at r5029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5029
  unfold Seg16.relationRow5030 at r5030
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5030
  unfold Seg16.relationRow5031 at r5031
  unfold Seg16.relationRow5032 at r5032
  unfold Seg16.relationRow5033 at r5033
  unfold Seg16.relationRow5034 at r5034
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5034
  unfold Seg16.relationRow5035 at r5035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5035
  unfold Seg16.relationRow5036 at r5036
  unfold Seg16.relationRow5037 at r5037
  unfold Seg16.relationRow5038 at r5038
  unfold Seg16.relationRow5039 at r5039
  unfold Seg16.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 15450 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
        ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩ := by
    have hnextx : seg16AccX159 rho = seg16AccX158 rho + rho 17606 := by
      unfold seg16AccX159 seg16AccX158
      ring
    have hnexty : seg16AccY159 rho = seg16AccY158 rho + rho 17607 := by
      unfold seg16AccY159 seg16AccY158
      ring
    have hsum : seg16AccX158 rho + seg16AccY158 rho = rho 17599 := by
      unfold seg16AccX158 seg16AccY158
      linear_combination r5027
    have ha0 : (rho 17597 + rho 17598) * (seg16AccX158 rho + seg16AccY158 rho) = rho 17600 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 17598 * seg16AccX158 rho = rho 17601 := by
      unfold seg16AccX158
      linear_combination r5029
    have ha2 : rho 17597 * seg16AccY158 rho = rho 17602 := by
      unfold seg16AccY158
      linear_combination r5030
    have ha3 : 3021 * rho 17601 * rho 17602 = rho 17603 := by
      linear_combination r5031
    have ha4 : rho 17604 * (1 + rho 17603) = rho 17601 + rho 17602 := by
      linear_combination r5032
    have ha5 : rho 17605 * (1 - rho 17603) = rho 17600 - rho 17601 - rho 17602 := by
      linear_combination r5033
    have haddx :
        rho 17604 * (1 + 3021 * (rho 17598 * seg16AccX158 rho) * (rho 17597 * seg16AccY158 rho)) =
          rho 17598 * seg16AccX158 rho + rho 17597 * seg16AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17605 * (1 - 3021 * (rho 17598 * seg16AccX158 rho) * (rho 17597 * seg16AccY158 rho)) =
          (-1) * (rho 17598 * seg16AccX158 rho) - rho 17597 * seg16AccY158 rho +
            (seg16AccY158 rho - seg16AccX158 rho * (-1)) * (rho 17597 + rho 17598) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17605 * (1 - rho 17603) = rho 17600 - rho 17601 - rho 17602 := ha5
        _ = (-1) * rho 17601 - rho 17602 + (seg16AccY158 rho - seg16AccX158 rho * (-1)) * (rho 17597 + rho 17598) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX159 rho = seg16AccX158 rho - Bool.toZMod bit * (seg16AccX158 rho - rho 17604) := by
      have hd : rho 17606 = Bool.toZMod bit * (rho 17604 - seg16AccX158 rho) := by
        rw [← hbit]
        unfold seg16AccX158
        linear_combination -r5034
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY159 rho = seg16AccY158 rho - Bool.toZMod bit * (seg16AccY158 rho - rho 17605) := by
      have hd : rho 17607 = Bool.toZMod bit * (rho 17605 - seg16AccY158 rho) := by
        rw [← hbit]
        unfold seg16AccY158
        linear_combination -r5035
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17597 * rho 17598 = rho 17608 := by linear_combination r5036
    have hd1 : rho 17597 * rho 17597 = rho 17609 := by linear_combination r5037
    have hd2 : rho 17598 * rho 17598 = rho 17610 := by linear_combination r5038
    have hd3 : rho 17611 * (rho 17598 * rho 17598 + rho 17597 * rho 17597 * (-1)) = 2 * (rho 17597 * rho 17598) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 17612 * (2 - (rho 17598 * rho 17598 + rho 17597 * rho 17597 * (-1))) = rho 17598 * rho 17598 - rho 17597 * rho 17597 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX158 rho : Seg16.F), (seg16AccY158 rho : Seg16.F)⟩
      ⟨(rho 17597 : Seg16.F), (rho 17598 : Seg16.F)⟩
      ⟨(rho 17604 : Seg16.F), (rho 17605 : Seg16.F)⟩
      ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
      ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg16_rows159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5041 rho ∧ Seg16.relationRow5042 rho ∧ Seg16.relationRow5043 rho ∧ Seg16.relationRow5044 rho ∧ Seg16.relationRow5045 rho ∧ Seg16.relationRow5046 rho ∧ Seg16.relationRow5047 rho ∧ Seg16.relationRow5048 rho ∧ Seg16.relationRow5049 rho ∧ Seg16.relationRow5050 rho ∧ Seg16.relationRow5051 rho ∧ Seg16.relationRow5052 rho ∧ Seg16.relationRow5053 rho ∧ Seg16.relationRow5054 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩

theorem seg16_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15451 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩ := by
  obtain ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩ := seg16_rows159 rho h
  unfold Seg16.relationRow5041 at r5041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5041
  unfold Seg16.relationRow5042 at r5042
  unfold Seg16.relationRow5043 at r5043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5043
  unfold Seg16.relationRow5044 at r5044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044
  unfold Seg16.relationRow5045 at r5045
  unfold Seg16.relationRow5046 at r5046
  unfold Seg16.relationRow5047 at r5047
  unfold Seg16.relationRow5048 at r5048
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5048
  unfold Seg16.relationRow5049 at r5049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5049
  unfold Seg16.relationRow5050 at r5050
  unfold Seg16.relationRow5051 at r5051
  unfold Seg16.relationRow5052 at r5052
  unfold Seg16.relationRow5053 at r5053
  unfold Seg16.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 15451 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
        ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩ := by
    have hnextx : seg16AccX160 rho = seg16AccX159 rho + rho 17620 := by
      unfold seg16AccX160 seg16AccX159
      ring
    have hnexty : seg16AccY160 rho = seg16AccY159 rho + rho 17621 := by
      unfold seg16AccY160 seg16AccY159
      ring
    have hsum : seg16AccX159 rho + seg16AccY159 rho = rho 17613 := by
      unfold seg16AccX159 seg16AccY159
      linear_combination r5041
    have ha0 : (rho 17611 + rho 17612) * (seg16AccX159 rho + seg16AccY159 rho) = rho 17614 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 17612 * seg16AccX159 rho = rho 17615 := by
      unfold seg16AccX159
      linear_combination r5043
    have ha2 : rho 17611 * seg16AccY159 rho = rho 17616 := by
      unfold seg16AccY159
      linear_combination r5044
    have ha3 : 3021 * rho 17615 * rho 17616 = rho 17617 := by
      linear_combination r5045
    have ha4 : rho 17618 * (1 + rho 17617) = rho 17615 + rho 17616 := by
      linear_combination r5046
    have ha5 : rho 17619 * (1 - rho 17617) = rho 17614 - rho 17615 - rho 17616 := by
      linear_combination r5047
    have haddx :
        rho 17618 * (1 + 3021 * (rho 17612 * seg16AccX159 rho) * (rho 17611 * seg16AccY159 rho)) =
          rho 17612 * seg16AccX159 rho + rho 17611 * seg16AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17619 * (1 - 3021 * (rho 17612 * seg16AccX159 rho) * (rho 17611 * seg16AccY159 rho)) =
          (-1) * (rho 17612 * seg16AccX159 rho) - rho 17611 * seg16AccY159 rho +
            (seg16AccY159 rho - seg16AccX159 rho * (-1)) * (rho 17611 + rho 17612) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17619 * (1 - rho 17617) = rho 17614 - rho 17615 - rho 17616 := ha5
        _ = (-1) * rho 17615 - rho 17616 + (seg16AccY159 rho - seg16AccX159 rho * (-1)) * (rho 17611 + rho 17612) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX160 rho = seg16AccX159 rho - Bool.toZMod bit * (seg16AccX159 rho - rho 17618) := by
      have hd : rho 17620 = Bool.toZMod bit * (rho 17618 - seg16AccX159 rho) := by
        rw [← hbit]
        unfold seg16AccX159
        linear_combination -r5048
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY160 rho = seg16AccY159 rho - Bool.toZMod bit * (seg16AccY159 rho - rho 17619) := by
      have hd : rho 17621 = Bool.toZMod bit * (rho 17619 - seg16AccY159 rho) := by
        rw [← hbit]
        unfold seg16AccY159
        linear_combination -r5049
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17611 * rho 17612 = rho 17622 := by linear_combination r5050
    have hd1 : rho 17611 * rho 17611 = rho 17623 := by linear_combination r5051
    have hd2 : rho 17612 * rho 17612 = rho 17624 := by linear_combination r5052
    have hd3 : rho 17625 * (rho 17612 * rho 17612 + rho 17611 * rho 17611 * (-1)) = 2 * (rho 17611 * rho 17612) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 17626 * (2 - (rho 17612 * rho 17612 + rho 17611 * rho 17611 * (-1))) = rho 17612 * rho 17612 - rho 17611 * rho 17611 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX159 rho : Seg16.F), (seg16AccY159 rho : Seg16.F)⟩
      ⟨(rho 17611 : Seg16.F), (rho 17612 : Seg16.F)⟩
      ⟨(rho 17618 : Seg16.F), (rho 17619 : Seg16.F)⟩
      ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
      ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg16_rows160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5055 rho ∧ Seg16.relationRow5056 rho ∧ Seg16.relationRow5057 rho ∧ Seg16.relationRow5058 rho ∧ Seg16.relationRow5059 rho ∧ Seg16.relationRow5060 rho ∧ Seg16.relationRow5061 rho ∧ Seg16.relationRow5062 rho ∧ Seg16.relationRow5063 rho ∧ Seg16.relationRow5064 rho ∧ Seg16.relationRow5065 rho ∧ Seg16.relationRow5066 rho ∧ Seg16.relationRow5067 rho ∧ Seg16.relationRow5068 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩

theorem seg16_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15452 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩ := by
  obtain ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩ := seg16_rows160 rho h
  unfold Seg16.relationRow5055 at r5055
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5055
  unfold Seg16.relationRow5056 at r5056
  unfold Seg16.relationRow5057 at r5057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057
  unfold Seg16.relationRow5058 at r5058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058
  unfold Seg16.relationRow5059 at r5059
  unfold Seg16.relationRow5060 at r5060
  unfold Seg16.relationRow5061 at r5061
  unfold Seg16.relationRow5062 at r5062
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5062
  unfold Seg16.relationRow5063 at r5063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5063
  unfold Seg16.relationRow5064 at r5064
  unfold Seg16.relationRow5065 at r5065
  unfold Seg16.relationRow5066 at r5066
  unfold Seg16.relationRow5067 at r5067
  unfold Seg16.relationRow5068 at r5068
  have hrung160 (bit : Bool) (hbit : rho 15452 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
        ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩ := by
    have hnextx : seg16AccX161 rho = seg16AccX160 rho + rho 17634 := by
      unfold seg16AccX161 seg16AccX160
      ring
    have hnexty : seg16AccY161 rho = seg16AccY160 rho + rho 17635 := by
      unfold seg16AccY161 seg16AccY160
      ring
    have hsum : seg16AccX160 rho + seg16AccY160 rho = rho 17627 := by
      unfold seg16AccX160 seg16AccY160
      linear_combination r5055
    have ha0 : (rho 17625 + rho 17626) * (seg16AccX160 rho + seg16AccY160 rho) = rho 17628 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 17626 * seg16AccX160 rho = rho 17629 := by
      unfold seg16AccX160
      linear_combination r5057
    have ha2 : rho 17625 * seg16AccY160 rho = rho 17630 := by
      unfold seg16AccY160
      linear_combination r5058
    have ha3 : 3021 * rho 17629 * rho 17630 = rho 17631 := by
      linear_combination r5059
    have ha4 : rho 17632 * (1 + rho 17631) = rho 17629 + rho 17630 := by
      linear_combination r5060
    have ha5 : rho 17633 * (1 - rho 17631) = rho 17628 - rho 17629 - rho 17630 := by
      linear_combination r5061
    have haddx :
        rho 17632 * (1 + 3021 * (rho 17626 * seg16AccX160 rho) * (rho 17625 * seg16AccY160 rho)) =
          rho 17626 * seg16AccX160 rho + rho 17625 * seg16AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17633 * (1 - 3021 * (rho 17626 * seg16AccX160 rho) * (rho 17625 * seg16AccY160 rho)) =
          (-1) * (rho 17626 * seg16AccX160 rho) - rho 17625 * seg16AccY160 rho +
            (seg16AccY160 rho - seg16AccX160 rho * (-1)) * (rho 17625 + rho 17626) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17633 * (1 - rho 17631) = rho 17628 - rho 17629 - rho 17630 := ha5
        _ = (-1) * rho 17629 - rho 17630 + (seg16AccY160 rho - seg16AccX160 rho * (-1)) * (rho 17625 + rho 17626) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX161 rho = seg16AccX160 rho - Bool.toZMod bit * (seg16AccX160 rho - rho 17632) := by
      have hd : rho 17634 = Bool.toZMod bit * (rho 17632 - seg16AccX160 rho) := by
        rw [← hbit]
        unfold seg16AccX160
        linear_combination -r5062
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY161 rho = seg16AccY160 rho - Bool.toZMod bit * (seg16AccY160 rho - rho 17633) := by
      have hd : rho 17635 = Bool.toZMod bit * (rho 17633 - seg16AccY160 rho) := by
        rw [← hbit]
        unfold seg16AccY160
        linear_combination -r5063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17625 * rho 17626 = rho 17636 := by linear_combination r5064
    have hd1 : rho 17625 * rho 17625 = rho 17637 := by linear_combination r5065
    have hd2 : rho 17626 * rho 17626 = rho 17638 := by linear_combination r5066
    have hd3 : rho 17639 * (rho 17626 * rho 17626 + rho 17625 * rho 17625 * (-1)) = 2 * (rho 17625 * rho 17626) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 17640 * (2 - (rho 17626 * rho 17626 + rho 17625 * rho 17625 * (-1))) = rho 17626 * rho 17626 - rho 17625 * rho 17625 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX160 rho : Seg16.F), (seg16AccY160 rho : Seg16.F)⟩
      ⟨(rho 17625 : Seg16.F), (rho 17626 : Seg16.F)⟩
      ⟨(rho 17632 : Seg16.F), (rho 17633 : Seg16.F)⟩
      ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
      ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg16_rows161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5069 rho ∧ Seg16.relationRow5070 rho ∧ Seg16.relationRow5071 rho ∧ Seg16.relationRow5072 rho ∧ Seg16.relationRow5073 rho ∧ Seg16.relationRow5074 rho ∧ Seg16.relationRow5075 rho ∧ Seg16.relationRow5076 rho ∧ Seg16.relationRow5077 rho ∧ Seg16.relationRow5078 rho ∧ Seg16.relationRow5079 rho ∧ Seg16.relationRow5080 rho ∧ Seg16.relationRow5081 rho ∧ Seg16.relationRow5082 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩

theorem seg16_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15453 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩ := by
  obtain ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩ := seg16_rows161 rho h
  unfold Seg16.relationRow5069 at r5069
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5069
  unfold Seg16.relationRow5070 at r5070
  unfold Seg16.relationRow5071 at r5071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071
  unfold Seg16.relationRow5072 at r5072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5072
  unfold Seg16.relationRow5073 at r5073
  unfold Seg16.relationRow5074 at r5074
  unfold Seg16.relationRow5075 at r5075
  unfold Seg16.relationRow5076 at r5076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5076
  unfold Seg16.relationRow5077 at r5077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077
  unfold Seg16.relationRow5078 at r5078
  unfold Seg16.relationRow5079 at r5079
  unfold Seg16.relationRow5080 at r5080
  unfold Seg16.relationRow5081 at r5081
  unfold Seg16.relationRow5082 at r5082
  have hrung161 (bit : Bool) (hbit : rho 15453 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
        ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩ := by
    have hnextx : seg16AccX162 rho = seg16AccX161 rho + rho 17648 := by
      unfold seg16AccX162 seg16AccX161
      ring
    have hnexty : seg16AccY162 rho = seg16AccY161 rho + rho 17649 := by
      unfold seg16AccY162 seg16AccY161
      ring
    have hsum : seg16AccX161 rho + seg16AccY161 rho = rho 17641 := by
      unfold seg16AccX161 seg16AccY161
      linear_combination r5069
    have ha0 : (rho 17639 + rho 17640) * (seg16AccX161 rho + seg16AccY161 rho) = rho 17642 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 17640 * seg16AccX161 rho = rho 17643 := by
      unfold seg16AccX161
      linear_combination r5071
    have ha2 : rho 17639 * seg16AccY161 rho = rho 17644 := by
      unfold seg16AccY161
      linear_combination r5072
    have ha3 : 3021 * rho 17643 * rho 17644 = rho 17645 := by
      linear_combination r5073
    have ha4 : rho 17646 * (1 + rho 17645) = rho 17643 + rho 17644 := by
      linear_combination r5074
    have ha5 : rho 17647 * (1 - rho 17645) = rho 17642 - rho 17643 - rho 17644 := by
      linear_combination r5075
    have haddx :
        rho 17646 * (1 + 3021 * (rho 17640 * seg16AccX161 rho) * (rho 17639 * seg16AccY161 rho)) =
          rho 17640 * seg16AccX161 rho + rho 17639 * seg16AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17647 * (1 - 3021 * (rho 17640 * seg16AccX161 rho) * (rho 17639 * seg16AccY161 rho)) =
          (-1) * (rho 17640 * seg16AccX161 rho) - rho 17639 * seg16AccY161 rho +
            (seg16AccY161 rho - seg16AccX161 rho * (-1)) * (rho 17639 + rho 17640) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17647 * (1 - rho 17645) = rho 17642 - rho 17643 - rho 17644 := ha5
        _ = (-1) * rho 17643 - rho 17644 + (seg16AccY161 rho - seg16AccX161 rho * (-1)) * (rho 17639 + rho 17640) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX162 rho = seg16AccX161 rho - Bool.toZMod bit * (seg16AccX161 rho - rho 17646) := by
      have hd : rho 17648 = Bool.toZMod bit * (rho 17646 - seg16AccX161 rho) := by
        rw [← hbit]
        unfold seg16AccX161
        linear_combination -r5076
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY162 rho = seg16AccY161 rho - Bool.toZMod bit * (seg16AccY161 rho - rho 17647) := by
      have hd : rho 17649 = Bool.toZMod bit * (rho 17647 - seg16AccY161 rho) := by
        rw [← hbit]
        unfold seg16AccY161
        linear_combination -r5077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17639 * rho 17640 = rho 17650 := by linear_combination r5078
    have hd1 : rho 17639 * rho 17639 = rho 17651 := by linear_combination r5079
    have hd2 : rho 17640 * rho 17640 = rho 17652 := by linear_combination r5080
    have hd3 : rho 17653 * (rho 17640 * rho 17640 + rho 17639 * rho 17639 * (-1)) = 2 * (rho 17639 * rho 17640) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 17654 * (2 - (rho 17640 * rho 17640 + rho 17639 * rho 17639 * (-1))) = rho 17640 * rho 17640 - rho 17639 * rho 17639 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX161 rho : Seg16.F), (seg16AccY161 rho : Seg16.F)⟩
      ⟨(rho 17639 : Seg16.F), (rho 17640 : Seg16.F)⟩
      ⟨(rho 17646 : Seg16.F), (rho 17647 : Seg16.F)⟩
      ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
      ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg16_rows162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5083 rho ∧ Seg16.relationRow5084 rho ∧ Seg16.relationRow5085 rho ∧ Seg16.relationRow5086 rho ∧ Seg16.relationRow5087 rho ∧ Seg16.relationRow5088 rho ∧ Seg16.relationRow5089 rho ∧ Seg16.relationRow5090 rho ∧ Seg16.relationRow5091 rho ∧ Seg16.relationRow5092 rho ∧ Seg16.relationRow5093 rho ∧ Seg16.relationRow5094 rho ∧ Seg16.relationRow5095 rho ∧ Seg16.relationRow5096 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩

theorem seg16_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15454 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩ := by
  obtain ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩ := seg16_rows162 rho h
  unfold Seg16.relationRow5083 at r5083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083
  unfold Seg16.relationRow5084 at r5084
  unfold Seg16.relationRow5085 at r5085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5085
  unfold Seg16.relationRow5086 at r5086
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5086
  unfold Seg16.relationRow5087 at r5087
  unfold Seg16.relationRow5088 at r5088
  unfold Seg16.relationRow5089 at r5089
  unfold Seg16.relationRow5090 at r5090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090
  unfold Seg16.relationRow5091 at r5091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091
  unfold Seg16.relationRow5092 at r5092
  unfold Seg16.relationRow5093 at r5093
  unfold Seg16.relationRow5094 at r5094
  unfold Seg16.relationRow5095 at r5095
  unfold Seg16.relationRow5096 at r5096
  have hrung162 (bit : Bool) (hbit : rho 15454 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
        ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩ := by
    have hnextx : seg16AccX163 rho = seg16AccX162 rho + rho 17662 := by
      unfold seg16AccX163 seg16AccX162
      ring
    have hnexty : seg16AccY163 rho = seg16AccY162 rho + rho 17663 := by
      unfold seg16AccY163 seg16AccY162
      ring
    have hsum : seg16AccX162 rho + seg16AccY162 rho = rho 17655 := by
      unfold seg16AccX162 seg16AccY162
      linear_combination r5083
    have ha0 : (rho 17653 + rho 17654) * (seg16AccX162 rho + seg16AccY162 rho) = rho 17656 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 17654 * seg16AccX162 rho = rho 17657 := by
      unfold seg16AccX162
      linear_combination r5085
    have ha2 : rho 17653 * seg16AccY162 rho = rho 17658 := by
      unfold seg16AccY162
      linear_combination r5086
    have ha3 : 3021 * rho 17657 * rho 17658 = rho 17659 := by
      linear_combination r5087
    have ha4 : rho 17660 * (1 + rho 17659) = rho 17657 + rho 17658 := by
      linear_combination r5088
    have ha5 : rho 17661 * (1 - rho 17659) = rho 17656 - rho 17657 - rho 17658 := by
      linear_combination r5089
    have haddx :
        rho 17660 * (1 + 3021 * (rho 17654 * seg16AccX162 rho) * (rho 17653 * seg16AccY162 rho)) =
          rho 17654 * seg16AccX162 rho + rho 17653 * seg16AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17661 * (1 - 3021 * (rho 17654 * seg16AccX162 rho) * (rho 17653 * seg16AccY162 rho)) =
          (-1) * (rho 17654 * seg16AccX162 rho) - rho 17653 * seg16AccY162 rho +
            (seg16AccY162 rho - seg16AccX162 rho * (-1)) * (rho 17653 + rho 17654) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17661 * (1 - rho 17659) = rho 17656 - rho 17657 - rho 17658 := ha5
        _ = (-1) * rho 17657 - rho 17658 + (seg16AccY162 rho - seg16AccX162 rho * (-1)) * (rho 17653 + rho 17654) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX163 rho = seg16AccX162 rho - Bool.toZMod bit * (seg16AccX162 rho - rho 17660) := by
      have hd : rho 17662 = Bool.toZMod bit * (rho 17660 - seg16AccX162 rho) := by
        rw [← hbit]
        unfold seg16AccX162
        linear_combination -r5090
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY163 rho = seg16AccY162 rho - Bool.toZMod bit * (seg16AccY162 rho - rho 17661) := by
      have hd : rho 17663 = Bool.toZMod bit * (rho 17661 - seg16AccY162 rho) := by
        rw [← hbit]
        unfold seg16AccY162
        linear_combination -r5091
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17653 * rho 17654 = rho 17664 := by linear_combination r5092
    have hd1 : rho 17653 * rho 17653 = rho 17665 := by linear_combination r5093
    have hd2 : rho 17654 * rho 17654 = rho 17666 := by linear_combination r5094
    have hd3 : rho 17667 * (rho 17654 * rho 17654 + rho 17653 * rho 17653 * (-1)) = 2 * (rho 17653 * rho 17654) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 17668 * (2 - (rho 17654 * rho 17654 + rho 17653 * rho 17653 * (-1))) = rho 17654 * rho 17654 - rho 17653 * rho 17653 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX162 rho : Seg16.F), (seg16AccY162 rho : Seg16.F)⟩
      ⟨(rho 17653 : Seg16.F), (rho 17654 : Seg16.F)⟩
      ⟨(rho 17660 : Seg16.F), (rho 17661 : Seg16.F)⟩
      ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
      ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg16_rows163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5097 rho ∧ Seg16.relationRow5098 rho ∧ Seg16.relationRow5099 rho ∧ Seg16.relationRow5100 rho ∧ Seg16.relationRow5101 rho ∧ Seg16.relationRow5102 rho ∧ Seg16.relationRow5103 rho ∧ Seg16.relationRow5104 rho ∧ Seg16.relationRow5105 rho ∧ Seg16.relationRow5106 rho ∧ Seg16.relationRow5107 rho ∧ Seg16.relationRow5108 rho ∧ Seg16.relationRow5109 rho ∧ Seg16.relationRow5110 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩

theorem seg16_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15455 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩ := by
  obtain ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩ := seg16_rows163 rho h
  unfold Seg16.relationRow5097 at r5097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097
  unfold Seg16.relationRow5098 at r5098
  unfold Seg16.relationRow5099 at r5099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5099
  unfold Seg16.relationRow5100 at r5100
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5100
  unfold Seg16.relationRow5101 at r5101
  unfold Seg16.relationRow5102 at r5102
  unfold Seg16.relationRow5103 at r5103
  unfold Seg16.relationRow5104 at r5104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104
  unfold Seg16.relationRow5105 at r5105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105
  unfold Seg16.relationRow5106 at r5106
  unfold Seg16.relationRow5107 at r5107
  unfold Seg16.relationRow5108 at r5108
  unfold Seg16.relationRow5109 at r5109
  unfold Seg16.relationRow5110 at r5110
  have hrung163 (bit : Bool) (hbit : rho 15455 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
        ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩ := by
    have hnextx : seg16AccX164 rho = seg16AccX163 rho + rho 17676 := by
      unfold seg16AccX164 seg16AccX163
      ring
    have hnexty : seg16AccY164 rho = seg16AccY163 rho + rho 17677 := by
      unfold seg16AccY164 seg16AccY163
      ring
    have hsum : seg16AccX163 rho + seg16AccY163 rho = rho 17669 := by
      unfold seg16AccX163 seg16AccY163
      linear_combination r5097
    have ha0 : (rho 17667 + rho 17668) * (seg16AccX163 rho + seg16AccY163 rho) = rho 17670 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 17668 * seg16AccX163 rho = rho 17671 := by
      unfold seg16AccX163
      linear_combination r5099
    have ha2 : rho 17667 * seg16AccY163 rho = rho 17672 := by
      unfold seg16AccY163
      linear_combination r5100
    have ha3 : 3021 * rho 17671 * rho 17672 = rho 17673 := by
      linear_combination r5101
    have ha4 : rho 17674 * (1 + rho 17673) = rho 17671 + rho 17672 := by
      linear_combination r5102
    have ha5 : rho 17675 * (1 - rho 17673) = rho 17670 - rho 17671 - rho 17672 := by
      linear_combination r5103
    have haddx :
        rho 17674 * (1 + 3021 * (rho 17668 * seg16AccX163 rho) * (rho 17667 * seg16AccY163 rho)) =
          rho 17668 * seg16AccX163 rho + rho 17667 * seg16AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17675 * (1 - 3021 * (rho 17668 * seg16AccX163 rho) * (rho 17667 * seg16AccY163 rho)) =
          (-1) * (rho 17668 * seg16AccX163 rho) - rho 17667 * seg16AccY163 rho +
            (seg16AccY163 rho - seg16AccX163 rho * (-1)) * (rho 17667 + rho 17668) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17675 * (1 - rho 17673) = rho 17670 - rho 17671 - rho 17672 := ha5
        _ = (-1) * rho 17671 - rho 17672 + (seg16AccY163 rho - seg16AccX163 rho * (-1)) * (rho 17667 + rho 17668) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX164 rho = seg16AccX163 rho - Bool.toZMod bit * (seg16AccX163 rho - rho 17674) := by
      have hd : rho 17676 = Bool.toZMod bit * (rho 17674 - seg16AccX163 rho) := by
        rw [← hbit]
        unfold seg16AccX163
        linear_combination -r5104
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY164 rho = seg16AccY163 rho - Bool.toZMod bit * (seg16AccY163 rho - rho 17675) := by
      have hd : rho 17677 = Bool.toZMod bit * (rho 17675 - seg16AccY163 rho) := by
        rw [← hbit]
        unfold seg16AccY163
        linear_combination -r5105
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17667 * rho 17668 = rho 17678 := by linear_combination r5106
    have hd1 : rho 17667 * rho 17667 = rho 17679 := by linear_combination r5107
    have hd2 : rho 17668 * rho 17668 = rho 17680 := by linear_combination r5108
    have hd3 : rho 17681 * (rho 17668 * rho 17668 + rho 17667 * rho 17667 * (-1)) = 2 * (rho 17667 * rho 17668) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 17682 * (2 - (rho 17668 * rho 17668 + rho 17667 * rho 17667 * (-1))) = rho 17668 * rho 17668 - rho 17667 * rho 17667 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX163 rho : Seg16.F), (seg16AccY163 rho : Seg16.F)⟩
      ⟨(rho 17667 : Seg16.F), (rho 17668 : Seg16.F)⟩
      ⟨(rho 17674 : Seg16.F), (rho 17675 : Seg16.F)⟩
      ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
      ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg16_rows164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5111 rho ∧ Seg16.relationRow5112 rho ∧ Seg16.relationRow5113 rho ∧ Seg16.relationRow5114 rho ∧ Seg16.relationRow5115 rho ∧ Seg16.relationRow5116 rho ∧ Seg16.relationRow5117 rho ∧ Seg16.relationRow5118 rho ∧ Seg16.relationRow5119 rho ∧ Seg16.relationRow5120 rho ∧ Seg16.relationRow5121 rho ∧ Seg16.relationRow5122 rho ∧ Seg16.relationRow5123 rho ∧ Seg16.relationRow5124 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩

theorem seg16_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15456 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩ := by
  obtain ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩ := seg16_rows164 rho h
  unfold Seg16.relationRow5111 at r5111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5111
  unfold Seg16.relationRow5112 at r5112
  unfold Seg16.relationRow5113 at r5113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5113
  unfold Seg16.relationRow5114 at r5114
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5114
  unfold Seg16.relationRow5115 at r5115
  unfold Seg16.relationRow5116 at r5116
  unfold Seg16.relationRow5117 at r5117
  unfold Seg16.relationRow5118 at r5118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118
  unfold Seg16.relationRow5119 at r5119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5119
  unfold Seg16.relationRow5120 at r5120
  unfold Seg16.relationRow5121 at r5121
  unfold Seg16.relationRow5122 at r5122
  unfold Seg16.relationRow5123 at r5123
  unfold Seg16.relationRow5124 at r5124
  have hrung164 (bit : Bool) (hbit : rho 15456 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
        ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩ := by
    have hnextx : seg16AccX165 rho = seg16AccX164 rho + rho 17690 := by
      unfold seg16AccX165 seg16AccX164
      ring
    have hnexty : seg16AccY165 rho = seg16AccY164 rho + rho 17691 := by
      unfold seg16AccY165 seg16AccY164
      ring
    have hsum : seg16AccX164 rho + seg16AccY164 rho = rho 17683 := by
      unfold seg16AccX164 seg16AccY164
      linear_combination r5111
    have ha0 : (rho 17681 + rho 17682) * (seg16AccX164 rho + seg16AccY164 rho) = rho 17684 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 17682 * seg16AccX164 rho = rho 17685 := by
      unfold seg16AccX164
      linear_combination r5113
    have ha2 : rho 17681 * seg16AccY164 rho = rho 17686 := by
      unfold seg16AccY164
      linear_combination r5114
    have ha3 : 3021 * rho 17685 * rho 17686 = rho 17687 := by
      linear_combination r5115
    have ha4 : rho 17688 * (1 + rho 17687) = rho 17685 + rho 17686 := by
      linear_combination r5116
    have ha5 : rho 17689 * (1 - rho 17687) = rho 17684 - rho 17685 - rho 17686 := by
      linear_combination r5117
    have haddx :
        rho 17688 * (1 + 3021 * (rho 17682 * seg16AccX164 rho) * (rho 17681 * seg16AccY164 rho)) =
          rho 17682 * seg16AccX164 rho + rho 17681 * seg16AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17689 * (1 - 3021 * (rho 17682 * seg16AccX164 rho) * (rho 17681 * seg16AccY164 rho)) =
          (-1) * (rho 17682 * seg16AccX164 rho) - rho 17681 * seg16AccY164 rho +
            (seg16AccY164 rho - seg16AccX164 rho * (-1)) * (rho 17681 + rho 17682) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17689 * (1 - rho 17687) = rho 17684 - rho 17685 - rho 17686 := ha5
        _ = (-1) * rho 17685 - rho 17686 + (seg16AccY164 rho - seg16AccX164 rho * (-1)) * (rho 17681 + rho 17682) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX165 rho = seg16AccX164 rho - Bool.toZMod bit * (seg16AccX164 rho - rho 17688) := by
      have hd : rho 17690 = Bool.toZMod bit * (rho 17688 - seg16AccX164 rho) := by
        rw [← hbit]
        unfold seg16AccX164
        linear_combination -r5118
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY165 rho = seg16AccY164 rho - Bool.toZMod bit * (seg16AccY164 rho - rho 17689) := by
      have hd : rho 17691 = Bool.toZMod bit * (rho 17689 - seg16AccY164 rho) := by
        rw [← hbit]
        unfold seg16AccY164
        linear_combination -r5119
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17681 * rho 17682 = rho 17692 := by linear_combination r5120
    have hd1 : rho 17681 * rho 17681 = rho 17693 := by linear_combination r5121
    have hd2 : rho 17682 * rho 17682 = rho 17694 := by linear_combination r5122
    have hd3 : rho 17695 * (rho 17682 * rho 17682 + rho 17681 * rho 17681 * (-1)) = 2 * (rho 17681 * rho 17682) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 17696 * (2 - (rho 17682 * rho 17682 + rho 17681 * rho 17681 * (-1))) = rho 17682 * rho 17682 - rho 17681 * rho 17681 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX164 rho : Seg16.F), (seg16AccY164 rho : Seg16.F)⟩
      ⟨(rho 17681 : Seg16.F), (rho 17682 : Seg16.F)⟩
      ⟨(rho 17688 : Seg16.F), (rho 17689 : Seg16.F)⟩
      ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
      ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg16_hstep_c14 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 154 ≤ i → i < 165 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg16_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg16_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg16_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg16_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg16_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
  · exact seg16_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg16_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg16_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg16_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg16_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
