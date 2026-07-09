import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5125 rho ∧ Seg5.relationRow5126 rho ∧ Seg5.relationRow5127 rho ∧ Seg5.relationRow5128 rho ∧ Seg5.relationRow5129 rho ∧ Seg5.relationRow5130 rho ∧ Seg5.relationRow5131 rho ∧ Seg5.relationRow5132 rho ∧ Seg5.relationRow5133 rho ∧ Seg5.relationRow5134 rho ∧ Seg5.relationRow5135 rho ∧ Seg5.relationRow5136 rho ∧ Seg5.relationRow5137 rho ∧ Seg5.relationRow5138 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩

theorem seg5_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2580 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩
        ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩
        ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩
        ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩ := seg5_rows165 rho h
  unfold Seg5.relationRow5125 at r5125
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5125
  unfold Seg5.relationRow5126 at r5126
  unfold Seg5.relationRow5127 at r5127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5127
  unfold Seg5.relationRow5128 at r5128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5128
  unfold Seg5.relationRow5129 at r5129
  unfold Seg5.relationRow5130 at r5130
  unfold Seg5.relationRow5131 at r5131
  unfold Seg5.relationRow5132 at r5132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5132
  unfold Seg5.relationRow5133 at r5133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5133
  unfold Seg5.relationRow5134 at r5134
  unfold Seg5.relationRow5135 at r5135
  unfold Seg5.relationRow5136 at r5136
  unfold Seg5.relationRow5137 at r5137
  unfold Seg5.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 2580 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩
        ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩
        ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩
        ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩ := by
    have hnextx : seg5AccX166 rho = seg5AccX165 rho + rho 4827 := by
      unfold seg5AccX166 seg5AccX165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4617 14]
      ring
    have hnexty : seg5AccY166 rho = seg5AccY165 rho + rho 4828 := by
      unfold seg5AccY166 seg5AccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4618 14]
      ring
    have hsum : seg5AccX165 rho + seg5AccY165 rho = rho 4820 := by
      unfold seg5AccX165 seg5AccY165
      linear_combination r5125
    have ha0 : (rho 4818 + rho 4819) * (seg5AccX165 rho + seg5AccY165 rho) = rho 4821 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 4819 * seg5AccX165 rho = rho 4822 := by
      unfold seg5AccX165
      linear_combination r5127
    have ha2 : rho 4818 * seg5AccY165 rho = rho 4823 := by
      unfold seg5AccY165
      linear_combination r5128
    have ha3 : 3021 * rho 4822 * rho 4823 = rho 4824 := by
      linear_combination r5129
    have ha4 : rho 4825 * (1 + rho 4824) = rho 4822 + rho 4823 := by
      linear_combination r5130
    have ha5 : rho 4826 * (1 - rho 4824) = rho 4821 - rho 4822 - rho 4823 := by
      linear_combination r5131
    have haddx :
        rho 4825 * (1 + 3021 * (rho 4819 * seg5AccX165 rho) * (rho 4818 * seg5AccY165 rho)) =
          rho 4819 * seg5AccX165 rho + rho 4818 * seg5AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4826 * (1 - 3021 * (rho 4819 * seg5AccX165 rho) * (rho 4818 * seg5AccY165 rho)) =
          (-1) * (rho 4819 * seg5AccX165 rho) - rho 4818 * seg5AccY165 rho +
            (seg5AccY165 rho - seg5AccX165 rho * (-1)) * (rho 4818 + rho 4819) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4826 * (1 - rho 4824) = rho 4821 - rho 4822 - rho 4823 := ha5
        _ = (-1) * rho 4822 - rho 4823 + (seg5AccY165 rho - seg5AccX165 rho * (-1)) * (rho 4818 + rho 4819) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX166 rho = seg5AccX165 rho - Bool.toZMod bit * (seg5AccX165 rho - rho 4825) := by
      have hd : rho 4827 = Bool.toZMod bit * (rho 4825 - seg5AccX165 rho) := by
        rw [← hbit]
        unfold seg5AccX165
        linear_combination -r5132
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY166 rho = seg5AccY165 rho - Bool.toZMod bit * (seg5AccY165 rho - rho 4826) := by
      have hd : rho 4828 = Bool.toZMod bit * (rho 4826 - seg5AccY165 rho) := by
        rw [← hbit]
        unfold seg5AccY165
        linear_combination -r5133
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4818 * rho 4819 = rho 4829 := by linear_combination r5134
    have hd1 : rho 4818 * rho 4818 = rho 4830 := by linear_combination r5135
    have hd2 : rho 4819 * rho 4819 = rho 4831 := by linear_combination r5136
    have hd3 : rho 4832 * (rho 4819 * rho 4819 + rho 4818 * rho 4818 * (-1)) = 2 * (rho 4818 * rho 4819) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 4833 * (2 - (rho 4819 * rho 4819 + rho 4818 * rho 4818 * (-1))) = rho 4819 * rho 4819 - rho 4818 * rho 4818 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX165 rho : Seg5.F), (seg5AccY165 rho : Seg5.F)⟩
      ⟨(rho 4818 : Seg5.F), (rho 4819 : Seg5.F)⟩
      ⟨(rho 4825 : Seg5.F), (rho 4826 : Seg5.F)⟩
      ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩
      ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg5_rows166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5139 rho ∧ Seg5.relationRow5140 rho ∧ Seg5.relationRow5141 rho ∧ Seg5.relationRow5142 rho ∧ Seg5.relationRow5143 rho ∧ Seg5.relationRow5144 rho ∧ Seg5.relationRow5145 rho ∧ Seg5.relationRow5146 rho ∧ Seg5.relationRow5147 rho ∧ Seg5.relationRow5148 rho ∧ Seg5.relationRow5149 rho ∧ Seg5.relationRow5150 rho ∧ Seg5.relationRow5151 rho ∧ Seg5.relationRow5152 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩

theorem seg5_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2581 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩
        ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩
        ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩
        ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩ := by
  obtain ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩ := seg5_rows166 rho h
  unfold Seg5.relationRow5139 at r5139
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5139
  unfold Seg5.relationRow5140 at r5140
  unfold Seg5.relationRow5141 at r5141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5141
  unfold Seg5.relationRow5142 at r5142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142
  unfold Seg5.relationRow5143 at r5143
  unfold Seg5.relationRow5144 at r5144
  unfold Seg5.relationRow5145 at r5145
  unfold Seg5.relationRow5146 at r5146
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5146
  unfold Seg5.relationRow5147 at r5147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5147
  unfold Seg5.relationRow5148 at r5148
  unfold Seg5.relationRow5149 at r5149
  unfold Seg5.relationRow5150 at r5150
  unfold Seg5.relationRow5151 at r5151
  unfold Seg5.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 2581 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩
        ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩
        ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩
        ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩ := by
    have hnextx : seg5AccX167 rho = seg5AccX166 rho + rho 4841 := by
      unfold seg5AccX167 seg5AccX166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 16]
      ring
    have hnexty : seg5AccY167 rho = seg5AccY166 rho + rho 4842 := by
      unfold seg5AccY167 seg5AccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 16]
      ring
    have hsum : seg5AccX166 rho + seg5AccY166 rho = rho 4834 := by
      unfold seg5AccX166 seg5AccY166
      linear_combination r5139
    have ha0 : (rho 4832 + rho 4833) * (seg5AccX166 rho + seg5AccY166 rho) = rho 4835 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 4833 * seg5AccX166 rho = rho 4836 := by
      unfold seg5AccX166
      linear_combination r5141
    have ha2 : rho 4832 * seg5AccY166 rho = rho 4837 := by
      unfold seg5AccY166
      linear_combination r5142
    have ha3 : 3021 * rho 4836 * rho 4837 = rho 4838 := by
      linear_combination r5143
    have ha4 : rho 4839 * (1 + rho 4838) = rho 4836 + rho 4837 := by
      linear_combination r5144
    have ha5 : rho 4840 * (1 - rho 4838) = rho 4835 - rho 4836 - rho 4837 := by
      linear_combination r5145
    have haddx :
        rho 4839 * (1 + 3021 * (rho 4833 * seg5AccX166 rho) * (rho 4832 * seg5AccY166 rho)) =
          rho 4833 * seg5AccX166 rho + rho 4832 * seg5AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4840 * (1 - 3021 * (rho 4833 * seg5AccX166 rho) * (rho 4832 * seg5AccY166 rho)) =
          (-1) * (rho 4833 * seg5AccX166 rho) - rho 4832 * seg5AccY166 rho +
            (seg5AccY166 rho - seg5AccX166 rho * (-1)) * (rho 4832 + rho 4833) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4840 * (1 - rho 4838) = rho 4835 - rho 4836 - rho 4837 := ha5
        _ = (-1) * rho 4836 - rho 4837 + (seg5AccY166 rho - seg5AccX166 rho * (-1)) * (rho 4832 + rho 4833) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX167 rho = seg5AccX166 rho - Bool.toZMod bit * (seg5AccX166 rho - rho 4839) := by
      have hd : rho 4841 = Bool.toZMod bit * (rho 4839 - seg5AccX166 rho) := by
        rw [← hbit]
        unfold seg5AccX166
        linear_combination -r5146
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY167 rho = seg5AccY166 rho - Bool.toZMod bit * (seg5AccY166 rho - rho 4840) := by
      have hd : rho 4842 = Bool.toZMod bit * (rho 4840 - seg5AccY166 rho) := by
        rw [← hbit]
        unfold seg5AccY166
        linear_combination -r5147
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4832 * rho 4833 = rho 4843 := by linear_combination r5148
    have hd1 : rho 4832 * rho 4832 = rho 4844 := by linear_combination r5149
    have hd2 : rho 4833 * rho 4833 = rho 4845 := by linear_combination r5150
    have hd3 : rho 4846 * (rho 4833 * rho 4833 + rho 4832 * rho 4832 * (-1)) = 2 * (rho 4832 * rho 4833) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 4847 * (2 - (rho 4833 * rho 4833 + rho 4832 * rho 4832 * (-1))) = rho 4833 * rho 4833 - rho 4832 * rho 4832 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX166 rho : Seg5.F), (seg5AccY166 rho : Seg5.F)⟩
      ⟨(rho 4832 : Seg5.F), (rho 4833 : Seg5.F)⟩
      ⟨(rho 4839 : Seg5.F), (rho 4840 : Seg5.F)⟩
      ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩
      ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg5_rows167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5153 rho ∧ Seg5.relationRow5154 rho ∧ Seg5.relationRow5155 rho ∧ Seg5.relationRow5156 rho ∧ Seg5.relationRow5157 rho ∧ Seg5.relationRow5158 rho ∧ Seg5.relationRow5159 rho ∧ Seg5.relationRow5160 rho ∧ Seg5.relationRow5161 rho ∧ Seg5.relationRow5162 rho ∧ Seg5.relationRow5163 rho ∧ Seg5.relationRow5164 rho ∧ Seg5.relationRow5165 rho ∧ Seg5.relationRow5166 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩

theorem seg5_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2582 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩
        ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩
        ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩
        ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩ := by
  obtain ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩ := seg5_rows167 rho h
  unfold Seg5.relationRow5153 at r5153
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5153
  unfold Seg5.relationRow5154 at r5154
  unfold Seg5.relationRow5155 at r5155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155
  unfold Seg5.relationRow5156 at r5156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156
  unfold Seg5.relationRow5157 at r5157
  unfold Seg5.relationRow5158 at r5158
  unfold Seg5.relationRow5159 at r5159
  unfold Seg5.relationRow5160 at r5160
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5160
  unfold Seg5.relationRow5161 at r5161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161
  unfold Seg5.relationRow5162 at r5162
  unfold Seg5.relationRow5163 at r5163
  unfold Seg5.relationRow5164 at r5164
  unfold Seg5.relationRow5165 at r5165
  unfold Seg5.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 2582 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩
        ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩
        ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩
        ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩ := by
    have hnextx : seg5AccX168 rho = seg5AccX167 rho + rho 4855 := by
      unfold seg5AccX168 seg5AccX167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 17]
      ring
    have hnexty : seg5AccY168 rho = seg5AccY167 rho + rho 4856 := by
      unfold seg5AccY168 seg5AccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 17]
      ring
    have hsum : seg5AccX167 rho + seg5AccY167 rho = rho 4848 := by
      unfold seg5AccX167 seg5AccY167
      linear_combination r5153
    have ha0 : (rho 4846 + rho 4847) * (seg5AccX167 rho + seg5AccY167 rho) = rho 4849 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 4847 * seg5AccX167 rho = rho 4850 := by
      unfold seg5AccX167
      linear_combination r5155
    have ha2 : rho 4846 * seg5AccY167 rho = rho 4851 := by
      unfold seg5AccY167
      linear_combination r5156
    have ha3 : 3021 * rho 4850 * rho 4851 = rho 4852 := by
      linear_combination r5157
    have ha4 : rho 4853 * (1 + rho 4852) = rho 4850 + rho 4851 := by
      linear_combination r5158
    have ha5 : rho 4854 * (1 - rho 4852) = rho 4849 - rho 4850 - rho 4851 := by
      linear_combination r5159
    have haddx :
        rho 4853 * (1 + 3021 * (rho 4847 * seg5AccX167 rho) * (rho 4846 * seg5AccY167 rho)) =
          rho 4847 * seg5AccX167 rho + rho 4846 * seg5AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4854 * (1 - 3021 * (rho 4847 * seg5AccX167 rho) * (rho 4846 * seg5AccY167 rho)) =
          (-1) * (rho 4847 * seg5AccX167 rho) - rho 4846 * seg5AccY167 rho +
            (seg5AccY167 rho - seg5AccX167 rho * (-1)) * (rho 4846 + rho 4847) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4854 * (1 - rho 4852) = rho 4849 - rho 4850 - rho 4851 := ha5
        _ = (-1) * rho 4850 - rho 4851 + (seg5AccY167 rho - seg5AccX167 rho * (-1)) * (rho 4846 + rho 4847) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX168 rho = seg5AccX167 rho - Bool.toZMod bit * (seg5AccX167 rho - rho 4853) := by
      have hd : rho 4855 = Bool.toZMod bit * (rho 4853 - seg5AccX167 rho) := by
        rw [← hbit]
        unfold seg5AccX167
        linear_combination -r5160
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY168 rho = seg5AccY167 rho - Bool.toZMod bit * (seg5AccY167 rho - rho 4854) := by
      have hd : rho 4856 = Bool.toZMod bit * (rho 4854 - seg5AccY167 rho) := by
        rw [← hbit]
        unfold seg5AccY167
        linear_combination -r5161
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4846 * rho 4847 = rho 4857 := by linear_combination r5162
    have hd1 : rho 4846 * rho 4846 = rho 4858 := by linear_combination r5163
    have hd2 : rho 4847 * rho 4847 = rho 4859 := by linear_combination r5164
    have hd3 : rho 4860 * (rho 4847 * rho 4847 + rho 4846 * rho 4846 * (-1)) = 2 * (rho 4846 * rho 4847) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 4861 * (2 - (rho 4847 * rho 4847 + rho 4846 * rho 4846 * (-1))) = rho 4847 * rho 4847 - rho 4846 * rho 4846 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX167 rho : Seg5.F), (seg5AccY167 rho : Seg5.F)⟩
      ⟨(rho 4846 : Seg5.F), (rho 4847 : Seg5.F)⟩
      ⟨(rho 4853 : Seg5.F), (rho 4854 : Seg5.F)⟩
      ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩
      ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg5_rows168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5167 rho ∧ Seg5.relationRow5168 rho ∧ Seg5.relationRow5169 rho ∧ Seg5.relationRow5170 rho ∧ Seg5.relationRow5171 rho ∧ Seg5.relationRow5172 rho ∧ Seg5.relationRow5173 rho ∧ Seg5.relationRow5174 rho ∧ Seg5.relationRow5175 rho ∧ Seg5.relationRow5176 rho ∧ Seg5.relationRow5177 rho ∧ Seg5.relationRow5178 rho ∧ Seg5.relationRow5179 rho ∧ Seg5.relationRow5180 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg5_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2583 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩
        ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩
        ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩
        ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩ := by
  obtain ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg5_rows168 rho h
  unfold Seg5.relationRow5167 at r5167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5167
  unfold Seg5.relationRow5168 at r5168
  unfold Seg5.relationRow5169 at r5169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169
  unfold Seg5.relationRow5170 at r5170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170
  unfold Seg5.relationRow5171 at r5171
  unfold Seg5.relationRow5172 at r5172
  unfold Seg5.relationRow5173 at r5173
  unfold Seg5.relationRow5174 at r5174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174
  unfold Seg5.relationRow5175 at r5175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175
  unfold Seg5.relationRow5176 at r5176
  unfold Seg5.relationRow5177 at r5177
  unfold Seg5.relationRow5178 at r5178
  unfold Seg5.relationRow5179 at r5179
  unfold Seg5.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 2583 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩
        ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩
        ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩
        ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩ := by
    have hnextx : seg5AccX169 rho = seg5AccX168 rho + rho 4869 := by
      unfold seg5AccX169 seg5AccX168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 18]
      ring
    have hnexty : seg5AccY169 rho = seg5AccY168 rho + rho 4870 := by
      unfold seg5AccY169 seg5AccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 18]
      ring
    have hsum : seg5AccX168 rho + seg5AccY168 rho = rho 4862 := by
      unfold seg5AccX168 seg5AccY168
      linear_combination r5167
    have ha0 : (rho 4860 + rho 4861) * (seg5AccX168 rho + seg5AccY168 rho) = rho 4863 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 4861 * seg5AccX168 rho = rho 4864 := by
      unfold seg5AccX168
      linear_combination r5169
    have ha2 : rho 4860 * seg5AccY168 rho = rho 4865 := by
      unfold seg5AccY168
      linear_combination r5170
    have ha3 : 3021 * rho 4864 * rho 4865 = rho 4866 := by
      linear_combination r5171
    have ha4 : rho 4867 * (1 + rho 4866) = rho 4864 + rho 4865 := by
      linear_combination r5172
    have ha5 : rho 4868 * (1 - rho 4866) = rho 4863 - rho 4864 - rho 4865 := by
      linear_combination r5173
    have haddx :
        rho 4867 * (1 + 3021 * (rho 4861 * seg5AccX168 rho) * (rho 4860 * seg5AccY168 rho)) =
          rho 4861 * seg5AccX168 rho + rho 4860 * seg5AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4868 * (1 - 3021 * (rho 4861 * seg5AccX168 rho) * (rho 4860 * seg5AccY168 rho)) =
          (-1) * (rho 4861 * seg5AccX168 rho) - rho 4860 * seg5AccY168 rho +
            (seg5AccY168 rho - seg5AccX168 rho * (-1)) * (rho 4860 + rho 4861) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4868 * (1 - rho 4866) = rho 4863 - rho 4864 - rho 4865 := ha5
        _ = (-1) * rho 4864 - rho 4865 + (seg5AccY168 rho - seg5AccX168 rho * (-1)) * (rho 4860 + rho 4861) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX169 rho = seg5AccX168 rho - Bool.toZMod bit * (seg5AccX168 rho - rho 4867) := by
      have hd : rho 4869 = Bool.toZMod bit * (rho 4867 - seg5AccX168 rho) := by
        rw [← hbit]
        unfold seg5AccX168
        linear_combination -r5174
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY169 rho = seg5AccY168 rho - Bool.toZMod bit * (seg5AccY168 rho - rho 4868) := by
      have hd : rho 4870 = Bool.toZMod bit * (rho 4868 - seg5AccY168 rho) := by
        rw [← hbit]
        unfold seg5AccY168
        linear_combination -r5175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4860 * rho 4861 = rho 4871 := by linear_combination r5176
    have hd1 : rho 4860 * rho 4860 = rho 4872 := by linear_combination r5177
    have hd2 : rho 4861 * rho 4861 = rho 4873 := by linear_combination r5178
    have hd3 : rho 4874 * (rho 4861 * rho 4861 + rho 4860 * rho 4860 * (-1)) = 2 * (rho 4860 * rho 4861) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 4875 * (2 - (rho 4861 * rho 4861 + rho 4860 * rho 4860 * (-1))) = rho 4861 * rho 4861 - rho 4860 * rho 4860 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX168 rho : Seg5.F), (seg5AccY168 rho : Seg5.F)⟩
      ⟨(rho 4860 : Seg5.F), (rho 4861 : Seg5.F)⟩
      ⟨(rho 4867 : Seg5.F), (rho 4868 : Seg5.F)⟩
      ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩
      ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg5_rows169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5181 rho ∧ Seg5.relationRow5182 rho ∧ Seg5.relationRow5183 rho ∧ Seg5.relationRow5184 rho ∧ Seg5.relationRow5185 rho ∧ Seg5.relationRow5186 rho ∧ Seg5.relationRow5187 rho ∧ Seg5.relationRow5188 rho ∧ Seg5.relationRow5189 rho ∧ Seg5.relationRow5190 rho ∧ Seg5.relationRow5191 rho ∧ Seg5.relationRow5192 rho ∧ Seg5.relationRow5193 rho ∧ Seg5.relationRow5194 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩

theorem seg5_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2584 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩
        ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩
        ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩
        ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩ := seg5_rows169 rho h
  unfold Seg5.relationRow5181 at r5181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181
  unfold Seg5.relationRow5182 at r5182
  unfold Seg5.relationRow5183 at r5183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183
  unfold Seg5.relationRow5184 at r5184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5184
  unfold Seg5.relationRow5185 at r5185
  unfold Seg5.relationRow5186 at r5186
  unfold Seg5.relationRow5187 at r5187
  unfold Seg5.relationRow5188 at r5188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188
  unfold Seg5.relationRow5189 at r5189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5189
  unfold Seg5.relationRow5190 at r5190
  unfold Seg5.relationRow5191 at r5191
  unfold Seg5.relationRow5192 at r5192
  unfold Seg5.relationRow5193 at r5193
  unfold Seg5.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 2584 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩
        ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩
        ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩
        ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩ := by
    have hnextx : seg5AccX170 rho = seg5AccX169 rho + rho 4883 := by
      unfold seg5AccX170 seg5AccX169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 19]
      ring
    have hnexty : seg5AccY170 rho = seg5AccY169 rho + rho 4884 := by
      unfold seg5AccY170 seg5AccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 19]
      ring
    have hsum : seg5AccX169 rho + seg5AccY169 rho = rho 4876 := by
      unfold seg5AccX169 seg5AccY169
      linear_combination r5181
    have ha0 : (rho 4874 + rho 4875) * (seg5AccX169 rho + seg5AccY169 rho) = rho 4877 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 4875 * seg5AccX169 rho = rho 4878 := by
      unfold seg5AccX169
      linear_combination r5183
    have ha2 : rho 4874 * seg5AccY169 rho = rho 4879 := by
      unfold seg5AccY169
      linear_combination r5184
    have ha3 : 3021 * rho 4878 * rho 4879 = rho 4880 := by
      linear_combination r5185
    have ha4 : rho 4881 * (1 + rho 4880) = rho 4878 + rho 4879 := by
      linear_combination r5186
    have ha5 : rho 4882 * (1 - rho 4880) = rho 4877 - rho 4878 - rho 4879 := by
      linear_combination r5187
    have haddx :
        rho 4881 * (1 + 3021 * (rho 4875 * seg5AccX169 rho) * (rho 4874 * seg5AccY169 rho)) =
          rho 4875 * seg5AccX169 rho + rho 4874 * seg5AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4882 * (1 - 3021 * (rho 4875 * seg5AccX169 rho) * (rho 4874 * seg5AccY169 rho)) =
          (-1) * (rho 4875 * seg5AccX169 rho) - rho 4874 * seg5AccY169 rho +
            (seg5AccY169 rho - seg5AccX169 rho * (-1)) * (rho 4874 + rho 4875) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4882 * (1 - rho 4880) = rho 4877 - rho 4878 - rho 4879 := ha5
        _ = (-1) * rho 4878 - rho 4879 + (seg5AccY169 rho - seg5AccX169 rho * (-1)) * (rho 4874 + rho 4875) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX170 rho = seg5AccX169 rho - Bool.toZMod bit * (seg5AccX169 rho - rho 4881) := by
      have hd : rho 4883 = Bool.toZMod bit * (rho 4881 - seg5AccX169 rho) := by
        rw [← hbit]
        unfold seg5AccX169
        linear_combination -r5188
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY170 rho = seg5AccY169 rho - Bool.toZMod bit * (seg5AccY169 rho - rho 4882) := by
      have hd : rho 4884 = Bool.toZMod bit * (rho 4882 - seg5AccY169 rho) := by
        rw [← hbit]
        unfold seg5AccY169
        linear_combination -r5189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4874 * rho 4875 = rho 4885 := by linear_combination r5190
    have hd1 : rho 4874 * rho 4874 = rho 4886 := by linear_combination r5191
    have hd2 : rho 4875 * rho 4875 = rho 4887 := by linear_combination r5192
    have hd3 : rho 4888 * (rho 4875 * rho 4875 + rho 4874 * rho 4874 * (-1)) = 2 * (rho 4874 * rho 4875) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 4889 * (2 - (rho 4875 * rho 4875 + rho 4874 * rho 4874 * (-1))) = rho 4875 * rho 4875 - rho 4874 * rho 4874 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX169 rho : Seg5.F), (seg5AccY169 rho : Seg5.F)⟩
      ⟨(rho 4874 : Seg5.F), (rho 4875 : Seg5.F)⟩
      ⟨(rho 4881 : Seg5.F), (rho 4882 : Seg5.F)⟩
      ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩
      ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg5_rows170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5195 rho ∧ Seg5.relationRow5196 rho ∧ Seg5.relationRow5197 rho ∧ Seg5.relationRow5198 rho ∧ Seg5.relationRow5199 rho ∧ Seg5.relationRow5200 rho ∧ Seg5.relationRow5201 rho ∧ Seg5.relationRow5202 rho ∧ Seg5.relationRow5203 rho ∧ Seg5.relationRow5204 rho ∧ Seg5.relationRow5205 rho ∧ Seg5.relationRow5206 rho ∧ Seg5.relationRow5207 rho ∧ Seg5.relationRow5208 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩

theorem seg5_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2585 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩
        ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩
        ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩
        ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩ := by
  obtain ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩ := seg5_rows170 rho h
  unfold Seg5.relationRow5195 at r5195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195
  unfold Seg5.relationRow5196 at r5196
  unfold Seg5.relationRow5197 at r5197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5197
  unfold Seg5.relationRow5198 at r5198
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5198
  unfold Seg5.relationRow5199 at r5199
  unfold Seg5.relationRow5200 at r5200
  unfold Seg5.relationRow5201 at r5201
  unfold Seg5.relationRow5202 at r5202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5202
  unfold Seg5.relationRow5203 at r5203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5203
  unfold Seg5.relationRow5204 at r5204
  unfold Seg5.relationRow5205 at r5205
  unfold Seg5.relationRow5206 at r5206
  unfold Seg5.relationRow5207 at r5207
  unfold Seg5.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 2585 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩
        ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩
        ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩
        ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩ := by
    have hnextx : seg5AccX171 rho = seg5AccX170 rho + rho 4897 := by
      unfold seg5AccX171 seg5AccX170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 20]
      ring
    have hnexty : seg5AccY171 rho = seg5AccY170 rho + rho 4898 := by
      unfold seg5AccY171 seg5AccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 20]
      ring
    have hsum : seg5AccX170 rho + seg5AccY170 rho = rho 4890 := by
      unfold seg5AccX170 seg5AccY170
      linear_combination r5195
    have ha0 : (rho 4888 + rho 4889) * (seg5AccX170 rho + seg5AccY170 rho) = rho 4891 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 4889 * seg5AccX170 rho = rho 4892 := by
      unfold seg5AccX170
      linear_combination r5197
    have ha2 : rho 4888 * seg5AccY170 rho = rho 4893 := by
      unfold seg5AccY170
      linear_combination r5198
    have ha3 : 3021 * rho 4892 * rho 4893 = rho 4894 := by
      linear_combination r5199
    have ha4 : rho 4895 * (1 + rho 4894) = rho 4892 + rho 4893 := by
      linear_combination r5200
    have ha5 : rho 4896 * (1 - rho 4894) = rho 4891 - rho 4892 - rho 4893 := by
      linear_combination r5201
    have haddx :
        rho 4895 * (1 + 3021 * (rho 4889 * seg5AccX170 rho) * (rho 4888 * seg5AccY170 rho)) =
          rho 4889 * seg5AccX170 rho + rho 4888 * seg5AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4896 * (1 - 3021 * (rho 4889 * seg5AccX170 rho) * (rho 4888 * seg5AccY170 rho)) =
          (-1) * (rho 4889 * seg5AccX170 rho) - rho 4888 * seg5AccY170 rho +
            (seg5AccY170 rho - seg5AccX170 rho * (-1)) * (rho 4888 + rho 4889) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4896 * (1 - rho 4894) = rho 4891 - rho 4892 - rho 4893 := ha5
        _ = (-1) * rho 4892 - rho 4893 + (seg5AccY170 rho - seg5AccX170 rho * (-1)) * (rho 4888 + rho 4889) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX171 rho = seg5AccX170 rho - Bool.toZMod bit * (seg5AccX170 rho - rho 4895) := by
      have hd : rho 4897 = Bool.toZMod bit * (rho 4895 - seg5AccX170 rho) := by
        rw [← hbit]
        unfold seg5AccX170
        linear_combination -r5202
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY171 rho = seg5AccY170 rho - Bool.toZMod bit * (seg5AccY170 rho - rho 4896) := by
      have hd : rho 4898 = Bool.toZMod bit * (rho 4896 - seg5AccY170 rho) := by
        rw [← hbit]
        unfold seg5AccY170
        linear_combination -r5203
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4888 * rho 4889 = rho 4899 := by linear_combination r5204
    have hd1 : rho 4888 * rho 4888 = rho 4900 := by linear_combination r5205
    have hd2 : rho 4889 * rho 4889 = rho 4901 := by linear_combination r5206
    have hd3 : rho 4902 * (rho 4889 * rho 4889 + rho 4888 * rho 4888 * (-1)) = 2 * (rho 4888 * rho 4889) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 4903 * (2 - (rho 4889 * rho 4889 + rho 4888 * rho 4888 * (-1))) = rho 4889 * rho 4889 - rho 4888 * rho 4888 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX170 rho : Seg5.F), (seg5AccY170 rho : Seg5.F)⟩
      ⟨(rho 4888 : Seg5.F), (rho 4889 : Seg5.F)⟩
      ⟨(rho 4895 : Seg5.F), (rho 4896 : Seg5.F)⟩
      ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩
      ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg5_rows171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5209 rho ∧ Seg5.relationRow5210 rho ∧ Seg5.relationRow5211 rho ∧ Seg5.relationRow5212 rho ∧ Seg5.relationRow5213 rho ∧ Seg5.relationRow5214 rho ∧ Seg5.relationRow5215 rho ∧ Seg5.relationRow5216 rho ∧ Seg5.relationRow5217 rho ∧ Seg5.relationRow5218 rho ∧ Seg5.relationRow5219 rho ∧ Seg5.relationRow5220 rho ∧ Seg5.relationRow5221 rho ∧ Seg5.relationRow5222 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem seg5_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2586 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩
        ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩
        ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩
        ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩ := by
  obtain ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := seg5_rows171 rho h
  unfold Seg5.relationRow5209 at r5209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209
  unfold Seg5.relationRow5210 at r5210
  unfold Seg5.relationRow5211 at r5211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5211
  unfold Seg5.relationRow5212 at r5212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5212
  unfold Seg5.relationRow5213 at r5213
  unfold Seg5.relationRow5214 at r5214
  unfold Seg5.relationRow5215 at r5215
  unfold Seg5.relationRow5216 at r5216
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5216
  unfold Seg5.relationRow5217 at r5217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5217
  unfold Seg5.relationRow5218 at r5218
  unfold Seg5.relationRow5219 at r5219
  unfold Seg5.relationRow5220 at r5220
  unfold Seg5.relationRow5221 at r5221
  unfold Seg5.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 2586 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩
        ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩
        ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩
        ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩ := by
    have hnextx : seg5AccX172 rho = seg5AccX171 rho + rho 4911 := by
      unfold seg5AccX172 seg5AccX171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 21]
      ring
    have hnexty : seg5AccY172 rho = seg5AccY171 rho + rho 4912 := by
      unfold seg5AccY172 seg5AccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 21]
      ring
    have hsum : seg5AccX171 rho + seg5AccY171 rho = rho 4904 := by
      unfold seg5AccX171 seg5AccY171
      linear_combination r5209
    have ha0 : (rho 4902 + rho 4903) * (seg5AccX171 rho + seg5AccY171 rho) = rho 4905 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 4903 * seg5AccX171 rho = rho 4906 := by
      unfold seg5AccX171
      linear_combination r5211
    have ha2 : rho 4902 * seg5AccY171 rho = rho 4907 := by
      unfold seg5AccY171
      linear_combination r5212
    have ha3 : 3021 * rho 4906 * rho 4907 = rho 4908 := by
      linear_combination r5213
    have ha4 : rho 4909 * (1 + rho 4908) = rho 4906 + rho 4907 := by
      linear_combination r5214
    have ha5 : rho 4910 * (1 - rho 4908) = rho 4905 - rho 4906 - rho 4907 := by
      linear_combination r5215
    have haddx :
        rho 4909 * (1 + 3021 * (rho 4903 * seg5AccX171 rho) * (rho 4902 * seg5AccY171 rho)) =
          rho 4903 * seg5AccX171 rho + rho 4902 * seg5AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4910 * (1 - 3021 * (rho 4903 * seg5AccX171 rho) * (rho 4902 * seg5AccY171 rho)) =
          (-1) * (rho 4903 * seg5AccX171 rho) - rho 4902 * seg5AccY171 rho +
            (seg5AccY171 rho - seg5AccX171 rho * (-1)) * (rho 4902 + rho 4903) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4910 * (1 - rho 4908) = rho 4905 - rho 4906 - rho 4907 := ha5
        _ = (-1) * rho 4906 - rho 4907 + (seg5AccY171 rho - seg5AccX171 rho * (-1)) * (rho 4902 + rho 4903) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX172 rho = seg5AccX171 rho - Bool.toZMod bit * (seg5AccX171 rho - rho 4909) := by
      have hd : rho 4911 = Bool.toZMod bit * (rho 4909 - seg5AccX171 rho) := by
        rw [← hbit]
        unfold seg5AccX171
        linear_combination -r5216
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY172 rho = seg5AccY171 rho - Bool.toZMod bit * (seg5AccY171 rho - rho 4910) := by
      have hd : rho 4912 = Bool.toZMod bit * (rho 4910 - seg5AccY171 rho) := by
        rw [← hbit]
        unfold seg5AccY171
        linear_combination -r5217
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4902 * rho 4903 = rho 4913 := by linear_combination r5218
    have hd1 : rho 4902 * rho 4902 = rho 4914 := by linear_combination r5219
    have hd2 : rho 4903 * rho 4903 = rho 4915 := by linear_combination r5220
    have hd3 : rho 4916 * (rho 4903 * rho 4903 + rho 4902 * rho 4902 * (-1)) = 2 * (rho 4902 * rho 4903) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 4917 * (2 - (rho 4903 * rho 4903 + rho 4902 * rho 4902 * (-1))) = rho 4903 * rho 4903 - rho 4902 * rho 4902 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX171 rho : Seg5.F), (seg5AccY171 rho : Seg5.F)⟩
      ⟨(rho 4902 : Seg5.F), (rho 4903 : Seg5.F)⟩
      ⟨(rho 4909 : Seg5.F), (rho 4910 : Seg5.F)⟩
      ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩
      ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg5_rows172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5223 rho ∧ Seg5.relationRow5224 rho ∧ Seg5.relationRow5225 rho ∧ Seg5.relationRow5226 rho ∧ Seg5.relationRow5227 rho ∧ Seg5.relationRow5228 rho ∧ Seg5.relationRow5229 rho ∧ Seg5.relationRow5230 rho ∧ Seg5.relationRow5231 rho ∧ Seg5.relationRow5232 rho ∧ Seg5.relationRow5233 rho ∧ Seg5.relationRow5234 rho ∧ Seg5.relationRow5235 rho ∧ Seg5.relationRow5236 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩

theorem seg5_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2587 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩
        ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩
        ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩
        ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩ := seg5_rows172 rho h
  unfold Seg5.relationRow5223 at r5223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5223
  unfold Seg5.relationRow5224 at r5224
  unfold Seg5.relationRow5225 at r5225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5225
  unfold Seg5.relationRow5226 at r5226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226
  unfold Seg5.relationRow5227 at r5227
  unfold Seg5.relationRow5228 at r5228
  unfold Seg5.relationRow5229 at r5229
  unfold Seg5.relationRow5230 at r5230
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5230
  unfold Seg5.relationRow5231 at r5231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5231
  unfold Seg5.relationRow5232 at r5232
  unfold Seg5.relationRow5233 at r5233
  unfold Seg5.relationRow5234 at r5234
  unfold Seg5.relationRow5235 at r5235
  unfold Seg5.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 2587 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩
        ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩
        ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩
        ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩ := by
    have hnextx : seg5AccX173 rho = seg5AccX172 rho + rho 4925 := by
      unfold seg5AccX173 seg5AccX172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 22]
      ring
    have hnexty : seg5AccY173 rho = seg5AccY172 rho + rho 4926 := by
      unfold seg5AccY173 seg5AccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 22]
      ring
    have hsum : seg5AccX172 rho + seg5AccY172 rho = rho 4918 := by
      unfold seg5AccX172 seg5AccY172
      linear_combination r5223
    have ha0 : (rho 4916 + rho 4917) * (seg5AccX172 rho + seg5AccY172 rho) = rho 4919 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 4917 * seg5AccX172 rho = rho 4920 := by
      unfold seg5AccX172
      linear_combination r5225
    have ha2 : rho 4916 * seg5AccY172 rho = rho 4921 := by
      unfold seg5AccY172
      linear_combination r5226
    have ha3 : 3021 * rho 4920 * rho 4921 = rho 4922 := by
      linear_combination r5227
    have ha4 : rho 4923 * (1 + rho 4922) = rho 4920 + rho 4921 := by
      linear_combination r5228
    have ha5 : rho 4924 * (1 - rho 4922) = rho 4919 - rho 4920 - rho 4921 := by
      linear_combination r5229
    have haddx :
        rho 4923 * (1 + 3021 * (rho 4917 * seg5AccX172 rho) * (rho 4916 * seg5AccY172 rho)) =
          rho 4917 * seg5AccX172 rho + rho 4916 * seg5AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4924 * (1 - 3021 * (rho 4917 * seg5AccX172 rho) * (rho 4916 * seg5AccY172 rho)) =
          (-1) * (rho 4917 * seg5AccX172 rho) - rho 4916 * seg5AccY172 rho +
            (seg5AccY172 rho - seg5AccX172 rho * (-1)) * (rho 4916 + rho 4917) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4924 * (1 - rho 4922) = rho 4919 - rho 4920 - rho 4921 := ha5
        _ = (-1) * rho 4920 - rho 4921 + (seg5AccY172 rho - seg5AccX172 rho * (-1)) * (rho 4916 + rho 4917) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX173 rho = seg5AccX172 rho - Bool.toZMod bit * (seg5AccX172 rho - rho 4923) := by
      have hd : rho 4925 = Bool.toZMod bit * (rho 4923 - seg5AccX172 rho) := by
        rw [← hbit]
        unfold seg5AccX172
        linear_combination -r5230
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY173 rho = seg5AccY172 rho - Bool.toZMod bit * (seg5AccY172 rho - rho 4924) := by
      have hd : rho 4926 = Bool.toZMod bit * (rho 4924 - seg5AccY172 rho) := by
        rw [← hbit]
        unfold seg5AccY172
        linear_combination -r5231
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4916 * rho 4917 = rho 4927 := by linear_combination r5232
    have hd1 : rho 4916 * rho 4916 = rho 4928 := by linear_combination r5233
    have hd2 : rho 4917 * rho 4917 = rho 4929 := by linear_combination r5234
    have hd3 : rho 4930 * (rho 4917 * rho 4917 + rho 4916 * rho 4916 * (-1)) = 2 * (rho 4916 * rho 4917) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 4931 * (2 - (rho 4917 * rho 4917 + rho 4916 * rho 4916 * (-1))) = rho 4917 * rho 4917 - rho 4916 * rho 4916 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX172 rho : Seg5.F), (seg5AccY172 rho : Seg5.F)⟩
      ⟨(rho 4916 : Seg5.F), (rho 4917 : Seg5.F)⟩
      ⟨(rho 4923 : Seg5.F), (rho 4924 : Seg5.F)⟩
      ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩
      ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg5_rows173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5237 rho ∧ Seg5.relationRow5238 rho ∧ Seg5.relationRow5239 rho ∧ Seg5.relationRow5240 rho ∧ Seg5.relationRow5241 rho ∧ Seg5.relationRow5242 rho ∧ Seg5.relationRow5243 rho ∧ Seg5.relationRow5244 rho ∧ Seg5.relationRow5245 rho ∧ Seg5.relationRow5246 rho ∧ Seg5.relationRow5247 rho ∧ Seg5.relationRow5248 rho ∧ Seg5.relationRow5249 rho ∧ Seg5.relationRow5250 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩

theorem seg5_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2588 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩
        ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩
        ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩
        ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩ := by
  obtain ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩ := seg5_rows173 rho h
  unfold Seg5.relationRow5237 at r5237
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5237
  unfold Seg5.relationRow5238 at r5238
  unfold Seg5.relationRow5239 at r5239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239
  unfold Seg5.relationRow5240 at r5240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240
  unfold Seg5.relationRow5241 at r5241
  unfold Seg5.relationRow5242 at r5242
  unfold Seg5.relationRow5243 at r5243
  unfold Seg5.relationRow5244 at r5244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5244
  unfold Seg5.relationRow5245 at r5245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5245
  unfold Seg5.relationRow5246 at r5246
  unfold Seg5.relationRow5247 at r5247
  unfold Seg5.relationRow5248 at r5248
  unfold Seg5.relationRow5249 at r5249
  unfold Seg5.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 2588 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩
        ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩
        ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩
        ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩ := by
    have hnextx : seg5AccX174 rho = seg5AccX173 rho + rho 4939 := by
      unfold seg5AccX174 seg5AccX173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 23]
      ring
    have hnexty : seg5AccY174 rho = seg5AccY173 rho + rho 4940 := by
      unfold seg5AccY174 seg5AccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 23]
      ring
    have hsum : seg5AccX173 rho + seg5AccY173 rho = rho 4932 := by
      unfold seg5AccX173 seg5AccY173
      linear_combination r5237
    have ha0 : (rho 4930 + rho 4931) * (seg5AccX173 rho + seg5AccY173 rho) = rho 4933 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 4931 * seg5AccX173 rho = rho 4934 := by
      unfold seg5AccX173
      linear_combination r5239
    have ha2 : rho 4930 * seg5AccY173 rho = rho 4935 := by
      unfold seg5AccY173
      linear_combination r5240
    have ha3 : 3021 * rho 4934 * rho 4935 = rho 4936 := by
      linear_combination r5241
    have ha4 : rho 4937 * (1 + rho 4936) = rho 4934 + rho 4935 := by
      linear_combination r5242
    have ha5 : rho 4938 * (1 - rho 4936) = rho 4933 - rho 4934 - rho 4935 := by
      linear_combination r5243
    have haddx :
        rho 4937 * (1 + 3021 * (rho 4931 * seg5AccX173 rho) * (rho 4930 * seg5AccY173 rho)) =
          rho 4931 * seg5AccX173 rho + rho 4930 * seg5AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4938 * (1 - 3021 * (rho 4931 * seg5AccX173 rho) * (rho 4930 * seg5AccY173 rho)) =
          (-1) * (rho 4931 * seg5AccX173 rho) - rho 4930 * seg5AccY173 rho +
            (seg5AccY173 rho - seg5AccX173 rho * (-1)) * (rho 4930 + rho 4931) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4938 * (1 - rho 4936) = rho 4933 - rho 4934 - rho 4935 := ha5
        _ = (-1) * rho 4934 - rho 4935 + (seg5AccY173 rho - seg5AccX173 rho * (-1)) * (rho 4930 + rho 4931) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX174 rho = seg5AccX173 rho - Bool.toZMod bit * (seg5AccX173 rho - rho 4937) := by
      have hd : rho 4939 = Bool.toZMod bit * (rho 4937 - seg5AccX173 rho) := by
        rw [← hbit]
        unfold seg5AccX173
        linear_combination -r5244
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY174 rho = seg5AccY173 rho - Bool.toZMod bit * (seg5AccY173 rho - rho 4938) := by
      have hd : rho 4940 = Bool.toZMod bit * (rho 4938 - seg5AccY173 rho) := by
        rw [← hbit]
        unfold seg5AccY173
        linear_combination -r5245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4930 * rho 4931 = rho 4941 := by linear_combination r5246
    have hd1 : rho 4930 * rho 4930 = rho 4942 := by linear_combination r5247
    have hd2 : rho 4931 * rho 4931 = rho 4943 := by linear_combination r5248
    have hd3 : rho 4944 * (rho 4931 * rho 4931 + rho 4930 * rho 4930 * (-1)) = 2 * (rho 4930 * rho 4931) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 4945 * (2 - (rho 4931 * rho 4931 + rho 4930 * rho 4930 * (-1))) = rho 4931 * rho 4931 - rho 4930 * rho 4930 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX173 rho : Seg5.F), (seg5AccY173 rho : Seg5.F)⟩
      ⟨(rho 4930 : Seg5.F), (rho 4931 : Seg5.F)⟩
      ⟨(rho 4937 : Seg5.F), (rho 4938 : Seg5.F)⟩
      ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩
      ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg5_rows174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5251 rho ∧ Seg5.relationRow5252 rho ∧ Seg5.relationRow5253 rho ∧ Seg5.relationRow5254 rho ∧ Seg5.relationRow5255 rho ∧ Seg5.relationRow5256 rho ∧ Seg5.relationRow5257 rho ∧ Seg5.relationRow5258 rho ∧ Seg5.relationRow5259 rho ∧ Seg5.relationRow5260 rho ∧ Seg5.relationRow5261 rho ∧ Seg5.relationRow5262 rho ∧ Seg5.relationRow5263 rho ∧ Seg5.relationRow5264 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩

theorem seg5_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2589 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩
        ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩
        ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩
        ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩ := by
  obtain ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩ := seg5_rows174 rho h
  unfold Seg5.relationRow5251 at r5251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5251
  unfold Seg5.relationRow5252 at r5252
  unfold Seg5.relationRow5253 at r5253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253
  unfold Seg5.relationRow5254 at r5254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5254
  unfold Seg5.relationRow5255 at r5255
  unfold Seg5.relationRow5256 at r5256
  unfold Seg5.relationRow5257 at r5257
  unfold Seg5.relationRow5258 at r5258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5258
  unfold Seg5.relationRow5259 at r5259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259
  unfold Seg5.relationRow5260 at r5260
  unfold Seg5.relationRow5261 at r5261
  unfold Seg5.relationRow5262 at r5262
  unfold Seg5.relationRow5263 at r5263
  unfold Seg5.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 2589 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩
        ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩
        ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩
        ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩ := by
    have hnextx : seg5AccX175 rho = seg5AccX174 rho + rho 4953 := by
      unfold seg5AccX175 seg5AccX174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 24]
      ring
    have hnexty : seg5AccY175 rho = seg5AccY174 rho + rho 4954 := by
      unfold seg5AccY175 seg5AccY174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 24]
      ring
    have hsum : seg5AccX174 rho + seg5AccY174 rho = rho 4946 := by
      unfold seg5AccX174 seg5AccY174
      linear_combination r5251
    have ha0 : (rho 4944 + rho 4945) * (seg5AccX174 rho + seg5AccY174 rho) = rho 4947 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 4945 * seg5AccX174 rho = rho 4948 := by
      unfold seg5AccX174
      linear_combination r5253
    have ha2 : rho 4944 * seg5AccY174 rho = rho 4949 := by
      unfold seg5AccY174
      linear_combination r5254
    have ha3 : 3021 * rho 4948 * rho 4949 = rho 4950 := by
      linear_combination r5255
    have ha4 : rho 4951 * (1 + rho 4950) = rho 4948 + rho 4949 := by
      linear_combination r5256
    have ha5 : rho 4952 * (1 - rho 4950) = rho 4947 - rho 4948 - rho 4949 := by
      linear_combination r5257
    have haddx :
        rho 4951 * (1 + 3021 * (rho 4945 * seg5AccX174 rho) * (rho 4944 * seg5AccY174 rho)) =
          rho 4945 * seg5AccX174 rho + rho 4944 * seg5AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4952 * (1 - 3021 * (rho 4945 * seg5AccX174 rho) * (rho 4944 * seg5AccY174 rho)) =
          (-1) * (rho 4945 * seg5AccX174 rho) - rho 4944 * seg5AccY174 rho +
            (seg5AccY174 rho - seg5AccX174 rho * (-1)) * (rho 4944 + rho 4945) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4952 * (1 - rho 4950) = rho 4947 - rho 4948 - rho 4949 := ha5
        _ = (-1) * rho 4948 - rho 4949 + (seg5AccY174 rho - seg5AccX174 rho * (-1)) * (rho 4944 + rho 4945) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX175 rho = seg5AccX174 rho - Bool.toZMod bit * (seg5AccX174 rho - rho 4951) := by
      have hd : rho 4953 = Bool.toZMod bit * (rho 4951 - seg5AccX174 rho) := by
        rw [← hbit]
        unfold seg5AccX174
        linear_combination -r5258
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY175 rho = seg5AccY174 rho - Bool.toZMod bit * (seg5AccY174 rho - rho 4952) := by
      have hd : rho 4954 = Bool.toZMod bit * (rho 4952 - seg5AccY174 rho) := by
        rw [← hbit]
        unfold seg5AccY174
        linear_combination -r5259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4944 * rho 4945 = rho 4955 := by linear_combination r5260
    have hd1 : rho 4944 * rho 4944 = rho 4956 := by linear_combination r5261
    have hd2 : rho 4945 * rho 4945 = rho 4957 := by linear_combination r5262
    have hd3 : rho 4958 * (rho 4945 * rho 4945 + rho 4944 * rho 4944 * (-1)) = 2 * (rho 4944 * rho 4945) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 4959 * (2 - (rho 4945 * rho 4945 + rho 4944 * rho 4944 * (-1))) = rho 4945 * rho 4945 - rho 4944 * rho 4944 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX174 rho : Seg5.F), (seg5AccY174 rho : Seg5.F)⟩
      ⟨(rho 4944 : Seg5.F), (rho 4945 : Seg5.F)⟩
      ⟨(rho 4951 : Seg5.F), (rho 4952 : Seg5.F)⟩
      ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩
      ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg5_rows175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5265 rho ∧ Seg5.relationRow5266 rho ∧ Seg5.relationRow5267 rho ∧ Seg5.relationRow5268 rho ∧ Seg5.relationRow5269 rho ∧ Seg5.relationRow5270 rho ∧ Seg5.relationRow5271 rho ∧ Seg5.relationRow5272 rho ∧ Seg5.relationRow5273 rho ∧ Seg5.relationRow5274 rho ∧ Seg5.relationRow5275 rho ∧ Seg5.relationRow5276 rho ∧ Seg5.relationRow5277 rho ∧ Seg5.relationRow5278 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  exact ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩

theorem seg5_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2590 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩
        ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩
        ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩
        ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩ := by
  obtain ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩ := seg5_rows175 rho h
  unfold Seg5.relationRow5265 at r5265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265
  unfold Seg5.relationRow5266 at r5266
  unfold Seg5.relationRow5267 at r5267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5267
  unfold Seg5.relationRow5268 at r5268
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5268
  unfold Seg5.relationRow5269 at r5269
  unfold Seg5.relationRow5270 at r5270
  unfold Seg5.relationRow5271 at r5271
  unfold Seg5.relationRow5272 at r5272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272
  unfold Seg5.relationRow5273 at r5273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273
  unfold Seg5.relationRow5274 at r5274
  unfold Seg5.relationRow5275 at r5275
  unfold Seg5.relationRow5276 at r5276
  unfold Seg5.relationRow5277 at r5277
  unfold Seg5.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 2590 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩
        ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩
        ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩
        ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩ := by
    have hnextx : seg5AccX176 rho = seg5AccX175 rho + rho 4967 := by
      unfold seg5AccX176 seg5AccX175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 25]
      ring
    have hnexty : seg5AccY176 rho = seg5AccY175 rho + rho 4968 := by
      unfold seg5AccY176 seg5AccY175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 25]
      ring
    have hsum : seg5AccX175 rho + seg5AccY175 rho = rho 4960 := by
      unfold seg5AccX175 seg5AccY175
      linear_combination r5265
    have ha0 : (rho 4958 + rho 4959) * (seg5AccX175 rho + seg5AccY175 rho) = rho 4961 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 4959 * seg5AccX175 rho = rho 4962 := by
      unfold seg5AccX175
      linear_combination r5267
    have ha2 : rho 4958 * seg5AccY175 rho = rho 4963 := by
      unfold seg5AccY175
      linear_combination r5268
    have ha3 : 3021 * rho 4962 * rho 4963 = rho 4964 := by
      linear_combination r5269
    have ha4 : rho 4965 * (1 + rho 4964) = rho 4962 + rho 4963 := by
      linear_combination r5270
    have ha5 : rho 4966 * (1 - rho 4964) = rho 4961 - rho 4962 - rho 4963 := by
      linear_combination r5271
    have haddx :
        rho 4965 * (1 + 3021 * (rho 4959 * seg5AccX175 rho) * (rho 4958 * seg5AccY175 rho)) =
          rho 4959 * seg5AccX175 rho + rho 4958 * seg5AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4966 * (1 - 3021 * (rho 4959 * seg5AccX175 rho) * (rho 4958 * seg5AccY175 rho)) =
          (-1) * (rho 4959 * seg5AccX175 rho) - rho 4958 * seg5AccY175 rho +
            (seg5AccY175 rho - seg5AccX175 rho * (-1)) * (rho 4958 + rho 4959) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4966 * (1 - rho 4964) = rho 4961 - rho 4962 - rho 4963 := ha5
        _ = (-1) * rho 4962 - rho 4963 + (seg5AccY175 rho - seg5AccX175 rho * (-1)) * (rho 4958 + rho 4959) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX176 rho = seg5AccX175 rho - Bool.toZMod bit * (seg5AccX175 rho - rho 4965) := by
      have hd : rho 4967 = Bool.toZMod bit * (rho 4965 - seg5AccX175 rho) := by
        rw [← hbit]
        unfold seg5AccX175
        linear_combination -r5272
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY176 rho = seg5AccY175 rho - Bool.toZMod bit * (seg5AccY175 rho - rho 4966) := by
      have hd : rho 4968 = Bool.toZMod bit * (rho 4966 - seg5AccY175 rho) := by
        rw [← hbit]
        unfold seg5AccY175
        linear_combination -r5273
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4958 * rho 4959 = rho 4969 := by linear_combination r5274
    have hd1 : rho 4958 * rho 4958 = rho 4970 := by linear_combination r5275
    have hd2 : rho 4959 * rho 4959 = rho 4971 := by linear_combination r5276
    have hd3 : rho 4972 * (rho 4959 * rho 4959 + rho 4958 * rho 4958 * (-1)) = 2 * (rho 4958 * rho 4959) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 4973 * (2 - (rho 4959 * rho 4959 + rho 4958 * rho 4958 * (-1))) = rho 4959 * rho 4959 - rho 4958 * rho 4958 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX175 rho : Seg5.F), (seg5AccY175 rho : Seg5.F)⟩
      ⟨(rho 4958 : Seg5.F), (rho 4959 : Seg5.F)⟩
      ⟨(rho 4965 : Seg5.F), (rho 4966 : Seg5.F)⟩
      ⟨(seg5AccX176 rho : Seg5.F), (seg5AccY176 rho : Seg5.F)⟩
      ⟨(rho 4972 : Seg5.F), (rho 4973 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg5_hstep_c15 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 165 ≤ i → i < 176 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg5_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg5_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg5_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg5_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg5_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg5_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg5_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg5_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg5_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg5_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
