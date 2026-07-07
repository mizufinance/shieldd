import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5125 rho ∧ Seg16.relationRow5126 rho ∧ Seg16.relationRow5127 rho ∧ Seg16.relationRow5128 rho ∧ Seg16.relationRow5129 rho ∧ Seg16.relationRow5130 rho ∧ Seg16.relationRow5131 rho ∧ Seg16.relationRow5132 rho ∧ Seg16.relationRow5133 rho ∧ Seg16.relationRow5134 rho ∧ Seg16.relationRow5135 rho ∧ Seg16.relationRow5136 rho ∧ Seg16.relationRow5137 rho ∧ Seg16.relationRow5138 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩

theorem seg16_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15457 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩ := seg16_rows165 rho h
  unfold Seg16.relationRow5125 at r5125
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5125
  unfold Seg16.relationRow5126 at r5126
  unfold Seg16.relationRow5127 at r5127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5127
  unfold Seg16.relationRow5128 at r5128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5128
  unfold Seg16.relationRow5129 at r5129
  unfold Seg16.relationRow5130 at r5130
  unfold Seg16.relationRow5131 at r5131
  unfold Seg16.relationRow5132 at r5132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5132
  unfold Seg16.relationRow5133 at r5133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5133
  unfold Seg16.relationRow5134 at r5134
  unfold Seg16.relationRow5135 at r5135
  unfold Seg16.relationRow5136 at r5136
  unfold Seg16.relationRow5137 at r5137
  unfold Seg16.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 15457 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
        ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩ := by
    have hnextx : seg16AccX166 rho = seg16AccX165 rho + rho 17704 := by
      unfold seg16AccX166 seg16AccX165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 17494 14]
      ring
    have hnexty : seg16AccY166 rho = seg16AccY165 rho + rho 17705 := by
      unfold seg16AccY166 seg16AccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 17495 14]
      ring
    have hsum : seg16AccX165 rho + seg16AccY165 rho = rho 17697 := by
      unfold seg16AccX165 seg16AccY165
      linear_combination r5125
    have ha0 : (rho 17695 + rho 17696) * (seg16AccX165 rho + seg16AccY165 rho) = rho 17698 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 17696 * seg16AccX165 rho = rho 17699 := by
      unfold seg16AccX165
      linear_combination r5127
    have ha2 : rho 17695 * seg16AccY165 rho = rho 17700 := by
      unfold seg16AccY165
      linear_combination r5128
    have ha3 : 3021 * rho 17699 * rho 17700 = rho 17701 := by
      linear_combination r5129
    have ha4 : rho 17702 * (1 + rho 17701) = rho 17699 + rho 17700 := by
      linear_combination r5130
    have ha5 : rho 17703 * (1 - rho 17701) = rho 17698 - rho 17699 - rho 17700 := by
      linear_combination r5131
    have haddx :
        rho 17702 * (1 + 3021 * (rho 17696 * seg16AccX165 rho) * (rho 17695 * seg16AccY165 rho)) =
          rho 17696 * seg16AccX165 rho + rho 17695 * seg16AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17703 * (1 - 3021 * (rho 17696 * seg16AccX165 rho) * (rho 17695 * seg16AccY165 rho)) =
          (-1) * (rho 17696 * seg16AccX165 rho) - rho 17695 * seg16AccY165 rho +
            (seg16AccY165 rho - seg16AccX165 rho * (-1)) * (rho 17695 + rho 17696) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17703 * (1 - rho 17701) = rho 17698 - rho 17699 - rho 17700 := ha5
        _ = (-1) * rho 17699 - rho 17700 + (seg16AccY165 rho - seg16AccX165 rho * (-1)) * (rho 17695 + rho 17696) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX166 rho = seg16AccX165 rho - Bool.toZMod bit * (seg16AccX165 rho - rho 17702) := by
      have hd : rho 17704 = Bool.toZMod bit * (rho 17702 - seg16AccX165 rho) := by
        rw [← hbit]
        unfold seg16AccX165
        linear_combination -r5132
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY166 rho = seg16AccY165 rho - Bool.toZMod bit * (seg16AccY165 rho - rho 17703) := by
      have hd : rho 17705 = Bool.toZMod bit * (rho 17703 - seg16AccY165 rho) := by
        rw [← hbit]
        unfold seg16AccY165
        linear_combination -r5133
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17695 * rho 17696 = rho 17706 := by linear_combination r5134
    have hd1 : rho 17695 * rho 17695 = rho 17707 := by linear_combination r5135
    have hd2 : rho 17696 * rho 17696 = rho 17708 := by linear_combination r5136
    have hd3 : rho 17709 * (rho 17696 * rho 17696 + rho 17695 * rho 17695 * (-1)) = 2 * (rho 17695 * rho 17696) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 17710 * (2 - (rho 17696 * rho 17696 + rho 17695 * rho 17695 * (-1))) = rho 17696 * rho 17696 - rho 17695 * rho 17695 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX165 rho : Seg16.F), (seg16AccY165 rho : Seg16.F)⟩
      ⟨(rho 17695 : Seg16.F), (rho 17696 : Seg16.F)⟩
      ⟨(rho 17702 : Seg16.F), (rho 17703 : Seg16.F)⟩
      ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
      ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg16_rows166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5139 rho ∧ Seg16.relationRow5140 rho ∧ Seg16.relationRow5141 rho ∧ Seg16.relationRow5142 rho ∧ Seg16.relationRow5143 rho ∧ Seg16.relationRow5144 rho ∧ Seg16.relationRow5145 rho ∧ Seg16.relationRow5146 rho ∧ Seg16.relationRow5147 rho ∧ Seg16.relationRow5148 rho ∧ Seg16.relationRow5149 rho ∧ Seg16.relationRow5150 rho ∧ Seg16.relationRow5151 rho ∧ Seg16.relationRow5152 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩

theorem seg16_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15458 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩ := by
  obtain ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩ := seg16_rows166 rho h
  unfold Seg16.relationRow5139 at r5139
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5139
  unfold Seg16.relationRow5140 at r5140
  unfold Seg16.relationRow5141 at r5141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5141
  unfold Seg16.relationRow5142 at r5142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142
  unfold Seg16.relationRow5143 at r5143
  unfold Seg16.relationRow5144 at r5144
  unfold Seg16.relationRow5145 at r5145
  unfold Seg16.relationRow5146 at r5146
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5146
  unfold Seg16.relationRow5147 at r5147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5147
  unfold Seg16.relationRow5148 at r5148
  unfold Seg16.relationRow5149 at r5149
  unfold Seg16.relationRow5150 at r5150
  unfold Seg16.relationRow5151 at r5151
  unfold Seg16.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 15458 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
        ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩ := by
    have hnextx : seg16AccX167 rho = seg16AccX166 rho + rho 17718 := by
      unfold seg16AccX167 seg16AccX166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 16]
      ring
    have hnexty : seg16AccY167 rho = seg16AccY166 rho + rho 17719 := by
      unfold seg16AccY167 seg16AccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 16]
      ring
    have hsum : seg16AccX166 rho + seg16AccY166 rho = rho 17711 := by
      unfold seg16AccX166 seg16AccY166
      linear_combination r5139
    have ha0 : (rho 17709 + rho 17710) * (seg16AccX166 rho + seg16AccY166 rho) = rho 17712 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 17710 * seg16AccX166 rho = rho 17713 := by
      unfold seg16AccX166
      linear_combination r5141
    have ha2 : rho 17709 * seg16AccY166 rho = rho 17714 := by
      unfold seg16AccY166
      linear_combination r5142
    have ha3 : 3021 * rho 17713 * rho 17714 = rho 17715 := by
      linear_combination r5143
    have ha4 : rho 17716 * (1 + rho 17715) = rho 17713 + rho 17714 := by
      linear_combination r5144
    have ha5 : rho 17717 * (1 - rho 17715) = rho 17712 - rho 17713 - rho 17714 := by
      linear_combination r5145
    have haddx :
        rho 17716 * (1 + 3021 * (rho 17710 * seg16AccX166 rho) * (rho 17709 * seg16AccY166 rho)) =
          rho 17710 * seg16AccX166 rho + rho 17709 * seg16AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17717 * (1 - 3021 * (rho 17710 * seg16AccX166 rho) * (rho 17709 * seg16AccY166 rho)) =
          (-1) * (rho 17710 * seg16AccX166 rho) - rho 17709 * seg16AccY166 rho +
            (seg16AccY166 rho - seg16AccX166 rho * (-1)) * (rho 17709 + rho 17710) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17717 * (1 - rho 17715) = rho 17712 - rho 17713 - rho 17714 := ha5
        _ = (-1) * rho 17713 - rho 17714 + (seg16AccY166 rho - seg16AccX166 rho * (-1)) * (rho 17709 + rho 17710) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX167 rho = seg16AccX166 rho - Bool.toZMod bit * (seg16AccX166 rho - rho 17716) := by
      have hd : rho 17718 = Bool.toZMod bit * (rho 17716 - seg16AccX166 rho) := by
        rw [← hbit]
        unfold seg16AccX166
        linear_combination -r5146
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY167 rho = seg16AccY166 rho - Bool.toZMod bit * (seg16AccY166 rho - rho 17717) := by
      have hd : rho 17719 = Bool.toZMod bit * (rho 17717 - seg16AccY166 rho) := by
        rw [← hbit]
        unfold seg16AccY166
        linear_combination -r5147
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17709 * rho 17710 = rho 17720 := by linear_combination r5148
    have hd1 : rho 17709 * rho 17709 = rho 17721 := by linear_combination r5149
    have hd2 : rho 17710 * rho 17710 = rho 17722 := by linear_combination r5150
    have hd3 : rho 17723 * (rho 17710 * rho 17710 + rho 17709 * rho 17709 * (-1)) = 2 * (rho 17709 * rho 17710) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 17724 * (2 - (rho 17710 * rho 17710 + rho 17709 * rho 17709 * (-1))) = rho 17710 * rho 17710 - rho 17709 * rho 17709 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX166 rho : Seg16.F), (seg16AccY166 rho : Seg16.F)⟩
      ⟨(rho 17709 : Seg16.F), (rho 17710 : Seg16.F)⟩
      ⟨(rho 17716 : Seg16.F), (rho 17717 : Seg16.F)⟩
      ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
      ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg16_rows167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5153 rho ∧ Seg16.relationRow5154 rho ∧ Seg16.relationRow5155 rho ∧ Seg16.relationRow5156 rho ∧ Seg16.relationRow5157 rho ∧ Seg16.relationRow5158 rho ∧ Seg16.relationRow5159 rho ∧ Seg16.relationRow5160 rho ∧ Seg16.relationRow5161 rho ∧ Seg16.relationRow5162 rho ∧ Seg16.relationRow5163 rho ∧ Seg16.relationRow5164 rho ∧ Seg16.relationRow5165 rho ∧ Seg16.relationRow5166 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩

theorem seg16_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15459 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩ := by
  obtain ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩ := seg16_rows167 rho h
  unfold Seg16.relationRow5153 at r5153
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5153
  unfold Seg16.relationRow5154 at r5154
  unfold Seg16.relationRow5155 at r5155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155
  unfold Seg16.relationRow5156 at r5156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156
  unfold Seg16.relationRow5157 at r5157
  unfold Seg16.relationRow5158 at r5158
  unfold Seg16.relationRow5159 at r5159
  unfold Seg16.relationRow5160 at r5160
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5160
  unfold Seg16.relationRow5161 at r5161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161
  unfold Seg16.relationRow5162 at r5162
  unfold Seg16.relationRow5163 at r5163
  unfold Seg16.relationRow5164 at r5164
  unfold Seg16.relationRow5165 at r5165
  unfold Seg16.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 15459 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
        ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩ := by
    have hnextx : seg16AccX168 rho = seg16AccX167 rho + rho 17732 := by
      unfold seg16AccX168 seg16AccX167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 17]
      ring
    have hnexty : seg16AccY168 rho = seg16AccY167 rho + rho 17733 := by
      unfold seg16AccY168 seg16AccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 17]
      ring
    have hsum : seg16AccX167 rho + seg16AccY167 rho = rho 17725 := by
      unfold seg16AccX167 seg16AccY167
      linear_combination r5153
    have ha0 : (rho 17723 + rho 17724) * (seg16AccX167 rho + seg16AccY167 rho) = rho 17726 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 17724 * seg16AccX167 rho = rho 17727 := by
      unfold seg16AccX167
      linear_combination r5155
    have ha2 : rho 17723 * seg16AccY167 rho = rho 17728 := by
      unfold seg16AccY167
      linear_combination r5156
    have ha3 : 3021 * rho 17727 * rho 17728 = rho 17729 := by
      linear_combination r5157
    have ha4 : rho 17730 * (1 + rho 17729) = rho 17727 + rho 17728 := by
      linear_combination r5158
    have ha5 : rho 17731 * (1 - rho 17729) = rho 17726 - rho 17727 - rho 17728 := by
      linear_combination r5159
    have haddx :
        rho 17730 * (1 + 3021 * (rho 17724 * seg16AccX167 rho) * (rho 17723 * seg16AccY167 rho)) =
          rho 17724 * seg16AccX167 rho + rho 17723 * seg16AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17731 * (1 - 3021 * (rho 17724 * seg16AccX167 rho) * (rho 17723 * seg16AccY167 rho)) =
          (-1) * (rho 17724 * seg16AccX167 rho) - rho 17723 * seg16AccY167 rho +
            (seg16AccY167 rho - seg16AccX167 rho * (-1)) * (rho 17723 + rho 17724) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17731 * (1 - rho 17729) = rho 17726 - rho 17727 - rho 17728 := ha5
        _ = (-1) * rho 17727 - rho 17728 + (seg16AccY167 rho - seg16AccX167 rho * (-1)) * (rho 17723 + rho 17724) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX168 rho = seg16AccX167 rho - Bool.toZMod bit * (seg16AccX167 rho - rho 17730) := by
      have hd : rho 17732 = Bool.toZMod bit * (rho 17730 - seg16AccX167 rho) := by
        rw [← hbit]
        unfold seg16AccX167
        linear_combination -r5160
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY168 rho = seg16AccY167 rho - Bool.toZMod bit * (seg16AccY167 rho - rho 17731) := by
      have hd : rho 17733 = Bool.toZMod bit * (rho 17731 - seg16AccY167 rho) := by
        rw [← hbit]
        unfold seg16AccY167
        linear_combination -r5161
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17723 * rho 17724 = rho 17734 := by linear_combination r5162
    have hd1 : rho 17723 * rho 17723 = rho 17735 := by linear_combination r5163
    have hd2 : rho 17724 * rho 17724 = rho 17736 := by linear_combination r5164
    have hd3 : rho 17737 * (rho 17724 * rho 17724 + rho 17723 * rho 17723 * (-1)) = 2 * (rho 17723 * rho 17724) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 17738 * (2 - (rho 17724 * rho 17724 + rho 17723 * rho 17723 * (-1))) = rho 17724 * rho 17724 - rho 17723 * rho 17723 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX167 rho : Seg16.F), (seg16AccY167 rho : Seg16.F)⟩
      ⟨(rho 17723 : Seg16.F), (rho 17724 : Seg16.F)⟩
      ⟨(rho 17730 : Seg16.F), (rho 17731 : Seg16.F)⟩
      ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
      ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg16_rows168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5167 rho ∧ Seg16.relationRow5168 rho ∧ Seg16.relationRow5169 rho ∧ Seg16.relationRow5170 rho ∧ Seg16.relationRow5171 rho ∧ Seg16.relationRow5172 rho ∧ Seg16.relationRow5173 rho ∧ Seg16.relationRow5174 rho ∧ Seg16.relationRow5175 rho ∧ Seg16.relationRow5176 rho ∧ Seg16.relationRow5177 rho ∧ Seg16.relationRow5178 rho ∧ Seg16.relationRow5179 rho ∧ Seg16.relationRow5180 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg16_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15460 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩ := by
  obtain ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg16_rows168 rho h
  unfold Seg16.relationRow5167 at r5167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5167
  unfold Seg16.relationRow5168 at r5168
  unfold Seg16.relationRow5169 at r5169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169
  unfold Seg16.relationRow5170 at r5170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170
  unfold Seg16.relationRow5171 at r5171
  unfold Seg16.relationRow5172 at r5172
  unfold Seg16.relationRow5173 at r5173
  unfold Seg16.relationRow5174 at r5174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174
  unfold Seg16.relationRow5175 at r5175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175
  unfold Seg16.relationRow5176 at r5176
  unfold Seg16.relationRow5177 at r5177
  unfold Seg16.relationRow5178 at r5178
  unfold Seg16.relationRow5179 at r5179
  unfold Seg16.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 15460 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
        ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩ := by
    have hnextx : seg16AccX169 rho = seg16AccX168 rho + rho 17746 := by
      unfold seg16AccX169 seg16AccX168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 18]
      ring
    have hnexty : seg16AccY169 rho = seg16AccY168 rho + rho 17747 := by
      unfold seg16AccY169 seg16AccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 18]
      ring
    have hsum : seg16AccX168 rho + seg16AccY168 rho = rho 17739 := by
      unfold seg16AccX168 seg16AccY168
      linear_combination r5167
    have ha0 : (rho 17737 + rho 17738) * (seg16AccX168 rho + seg16AccY168 rho) = rho 17740 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 17738 * seg16AccX168 rho = rho 17741 := by
      unfold seg16AccX168
      linear_combination r5169
    have ha2 : rho 17737 * seg16AccY168 rho = rho 17742 := by
      unfold seg16AccY168
      linear_combination r5170
    have ha3 : 3021 * rho 17741 * rho 17742 = rho 17743 := by
      linear_combination r5171
    have ha4 : rho 17744 * (1 + rho 17743) = rho 17741 + rho 17742 := by
      linear_combination r5172
    have ha5 : rho 17745 * (1 - rho 17743) = rho 17740 - rho 17741 - rho 17742 := by
      linear_combination r5173
    have haddx :
        rho 17744 * (1 + 3021 * (rho 17738 * seg16AccX168 rho) * (rho 17737 * seg16AccY168 rho)) =
          rho 17738 * seg16AccX168 rho + rho 17737 * seg16AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17745 * (1 - 3021 * (rho 17738 * seg16AccX168 rho) * (rho 17737 * seg16AccY168 rho)) =
          (-1) * (rho 17738 * seg16AccX168 rho) - rho 17737 * seg16AccY168 rho +
            (seg16AccY168 rho - seg16AccX168 rho * (-1)) * (rho 17737 + rho 17738) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17745 * (1 - rho 17743) = rho 17740 - rho 17741 - rho 17742 := ha5
        _ = (-1) * rho 17741 - rho 17742 + (seg16AccY168 rho - seg16AccX168 rho * (-1)) * (rho 17737 + rho 17738) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX169 rho = seg16AccX168 rho - Bool.toZMod bit * (seg16AccX168 rho - rho 17744) := by
      have hd : rho 17746 = Bool.toZMod bit * (rho 17744 - seg16AccX168 rho) := by
        rw [← hbit]
        unfold seg16AccX168
        linear_combination -r5174
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY169 rho = seg16AccY168 rho - Bool.toZMod bit * (seg16AccY168 rho - rho 17745) := by
      have hd : rho 17747 = Bool.toZMod bit * (rho 17745 - seg16AccY168 rho) := by
        rw [← hbit]
        unfold seg16AccY168
        linear_combination -r5175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17737 * rho 17738 = rho 17748 := by linear_combination r5176
    have hd1 : rho 17737 * rho 17737 = rho 17749 := by linear_combination r5177
    have hd2 : rho 17738 * rho 17738 = rho 17750 := by linear_combination r5178
    have hd3 : rho 17751 * (rho 17738 * rho 17738 + rho 17737 * rho 17737 * (-1)) = 2 * (rho 17737 * rho 17738) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 17752 * (2 - (rho 17738 * rho 17738 + rho 17737 * rho 17737 * (-1))) = rho 17738 * rho 17738 - rho 17737 * rho 17737 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX168 rho : Seg16.F), (seg16AccY168 rho : Seg16.F)⟩
      ⟨(rho 17737 : Seg16.F), (rho 17738 : Seg16.F)⟩
      ⟨(rho 17744 : Seg16.F), (rho 17745 : Seg16.F)⟩
      ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
      ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg16_rows169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5181 rho ∧ Seg16.relationRow5182 rho ∧ Seg16.relationRow5183 rho ∧ Seg16.relationRow5184 rho ∧ Seg16.relationRow5185 rho ∧ Seg16.relationRow5186 rho ∧ Seg16.relationRow5187 rho ∧ Seg16.relationRow5188 rho ∧ Seg16.relationRow5189 rho ∧ Seg16.relationRow5190 rho ∧ Seg16.relationRow5191 rho ∧ Seg16.relationRow5192 rho ∧ Seg16.relationRow5193 rho ∧ Seg16.relationRow5194 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩

theorem seg16_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15461 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩ := seg16_rows169 rho h
  unfold Seg16.relationRow5181 at r5181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181
  unfold Seg16.relationRow5182 at r5182
  unfold Seg16.relationRow5183 at r5183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183
  unfold Seg16.relationRow5184 at r5184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5184
  unfold Seg16.relationRow5185 at r5185
  unfold Seg16.relationRow5186 at r5186
  unfold Seg16.relationRow5187 at r5187
  unfold Seg16.relationRow5188 at r5188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188
  unfold Seg16.relationRow5189 at r5189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5189
  unfold Seg16.relationRow5190 at r5190
  unfold Seg16.relationRow5191 at r5191
  unfold Seg16.relationRow5192 at r5192
  unfold Seg16.relationRow5193 at r5193
  unfold Seg16.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 15461 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
        ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩ := by
    have hnextx : seg16AccX170 rho = seg16AccX169 rho + rho 17760 := by
      unfold seg16AccX170 seg16AccX169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 19]
      ring
    have hnexty : seg16AccY170 rho = seg16AccY169 rho + rho 17761 := by
      unfold seg16AccY170 seg16AccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 19]
      ring
    have hsum : seg16AccX169 rho + seg16AccY169 rho = rho 17753 := by
      unfold seg16AccX169 seg16AccY169
      linear_combination r5181
    have ha0 : (rho 17751 + rho 17752) * (seg16AccX169 rho + seg16AccY169 rho) = rho 17754 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 17752 * seg16AccX169 rho = rho 17755 := by
      unfold seg16AccX169
      linear_combination r5183
    have ha2 : rho 17751 * seg16AccY169 rho = rho 17756 := by
      unfold seg16AccY169
      linear_combination r5184
    have ha3 : 3021 * rho 17755 * rho 17756 = rho 17757 := by
      linear_combination r5185
    have ha4 : rho 17758 * (1 + rho 17757) = rho 17755 + rho 17756 := by
      linear_combination r5186
    have ha5 : rho 17759 * (1 - rho 17757) = rho 17754 - rho 17755 - rho 17756 := by
      linear_combination r5187
    have haddx :
        rho 17758 * (1 + 3021 * (rho 17752 * seg16AccX169 rho) * (rho 17751 * seg16AccY169 rho)) =
          rho 17752 * seg16AccX169 rho + rho 17751 * seg16AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17759 * (1 - 3021 * (rho 17752 * seg16AccX169 rho) * (rho 17751 * seg16AccY169 rho)) =
          (-1) * (rho 17752 * seg16AccX169 rho) - rho 17751 * seg16AccY169 rho +
            (seg16AccY169 rho - seg16AccX169 rho * (-1)) * (rho 17751 + rho 17752) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17759 * (1 - rho 17757) = rho 17754 - rho 17755 - rho 17756 := ha5
        _ = (-1) * rho 17755 - rho 17756 + (seg16AccY169 rho - seg16AccX169 rho * (-1)) * (rho 17751 + rho 17752) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX170 rho = seg16AccX169 rho - Bool.toZMod bit * (seg16AccX169 rho - rho 17758) := by
      have hd : rho 17760 = Bool.toZMod bit * (rho 17758 - seg16AccX169 rho) := by
        rw [← hbit]
        unfold seg16AccX169
        linear_combination -r5188
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY170 rho = seg16AccY169 rho - Bool.toZMod bit * (seg16AccY169 rho - rho 17759) := by
      have hd : rho 17761 = Bool.toZMod bit * (rho 17759 - seg16AccY169 rho) := by
        rw [← hbit]
        unfold seg16AccY169
        linear_combination -r5189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17751 * rho 17752 = rho 17762 := by linear_combination r5190
    have hd1 : rho 17751 * rho 17751 = rho 17763 := by linear_combination r5191
    have hd2 : rho 17752 * rho 17752 = rho 17764 := by linear_combination r5192
    have hd3 : rho 17765 * (rho 17752 * rho 17752 + rho 17751 * rho 17751 * (-1)) = 2 * (rho 17751 * rho 17752) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 17766 * (2 - (rho 17752 * rho 17752 + rho 17751 * rho 17751 * (-1))) = rho 17752 * rho 17752 - rho 17751 * rho 17751 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX169 rho : Seg16.F), (seg16AccY169 rho : Seg16.F)⟩
      ⟨(rho 17751 : Seg16.F), (rho 17752 : Seg16.F)⟩
      ⟨(rho 17758 : Seg16.F), (rho 17759 : Seg16.F)⟩
      ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
      ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg16_rows170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5195 rho ∧ Seg16.relationRow5196 rho ∧ Seg16.relationRow5197 rho ∧ Seg16.relationRow5198 rho ∧ Seg16.relationRow5199 rho ∧ Seg16.relationRow5200 rho ∧ Seg16.relationRow5201 rho ∧ Seg16.relationRow5202 rho ∧ Seg16.relationRow5203 rho ∧ Seg16.relationRow5204 rho ∧ Seg16.relationRow5205 rho ∧ Seg16.relationRow5206 rho ∧ Seg16.relationRow5207 rho ∧ Seg16.relationRow5208 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩

theorem seg16_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15462 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩ := by
  obtain ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩ := seg16_rows170 rho h
  unfold Seg16.relationRow5195 at r5195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195
  unfold Seg16.relationRow5196 at r5196
  unfold Seg16.relationRow5197 at r5197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5197
  unfold Seg16.relationRow5198 at r5198
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5198
  unfold Seg16.relationRow5199 at r5199
  unfold Seg16.relationRow5200 at r5200
  unfold Seg16.relationRow5201 at r5201
  unfold Seg16.relationRow5202 at r5202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5202
  unfold Seg16.relationRow5203 at r5203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5203
  unfold Seg16.relationRow5204 at r5204
  unfold Seg16.relationRow5205 at r5205
  unfold Seg16.relationRow5206 at r5206
  unfold Seg16.relationRow5207 at r5207
  unfold Seg16.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 15462 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
        ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩ := by
    have hnextx : seg16AccX171 rho = seg16AccX170 rho + rho 17774 := by
      unfold seg16AccX171 seg16AccX170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 20]
      ring
    have hnexty : seg16AccY171 rho = seg16AccY170 rho + rho 17775 := by
      unfold seg16AccY171 seg16AccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 20]
      ring
    have hsum : seg16AccX170 rho + seg16AccY170 rho = rho 17767 := by
      unfold seg16AccX170 seg16AccY170
      linear_combination r5195
    have ha0 : (rho 17765 + rho 17766) * (seg16AccX170 rho + seg16AccY170 rho) = rho 17768 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 17766 * seg16AccX170 rho = rho 17769 := by
      unfold seg16AccX170
      linear_combination r5197
    have ha2 : rho 17765 * seg16AccY170 rho = rho 17770 := by
      unfold seg16AccY170
      linear_combination r5198
    have ha3 : 3021 * rho 17769 * rho 17770 = rho 17771 := by
      linear_combination r5199
    have ha4 : rho 17772 * (1 + rho 17771) = rho 17769 + rho 17770 := by
      linear_combination r5200
    have ha5 : rho 17773 * (1 - rho 17771) = rho 17768 - rho 17769 - rho 17770 := by
      linear_combination r5201
    have haddx :
        rho 17772 * (1 + 3021 * (rho 17766 * seg16AccX170 rho) * (rho 17765 * seg16AccY170 rho)) =
          rho 17766 * seg16AccX170 rho + rho 17765 * seg16AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17773 * (1 - 3021 * (rho 17766 * seg16AccX170 rho) * (rho 17765 * seg16AccY170 rho)) =
          (-1) * (rho 17766 * seg16AccX170 rho) - rho 17765 * seg16AccY170 rho +
            (seg16AccY170 rho - seg16AccX170 rho * (-1)) * (rho 17765 + rho 17766) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17773 * (1 - rho 17771) = rho 17768 - rho 17769 - rho 17770 := ha5
        _ = (-1) * rho 17769 - rho 17770 + (seg16AccY170 rho - seg16AccX170 rho * (-1)) * (rho 17765 + rho 17766) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX171 rho = seg16AccX170 rho - Bool.toZMod bit * (seg16AccX170 rho - rho 17772) := by
      have hd : rho 17774 = Bool.toZMod bit * (rho 17772 - seg16AccX170 rho) := by
        rw [← hbit]
        unfold seg16AccX170
        linear_combination -r5202
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY171 rho = seg16AccY170 rho - Bool.toZMod bit * (seg16AccY170 rho - rho 17773) := by
      have hd : rho 17775 = Bool.toZMod bit * (rho 17773 - seg16AccY170 rho) := by
        rw [← hbit]
        unfold seg16AccY170
        linear_combination -r5203
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17765 * rho 17766 = rho 17776 := by linear_combination r5204
    have hd1 : rho 17765 * rho 17765 = rho 17777 := by linear_combination r5205
    have hd2 : rho 17766 * rho 17766 = rho 17778 := by linear_combination r5206
    have hd3 : rho 17779 * (rho 17766 * rho 17766 + rho 17765 * rho 17765 * (-1)) = 2 * (rho 17765 * rho 17766) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 17780 * (2 - (rho 17766 * rho 17766 + rho 17765 * rho 17765 * (-1))) = rho 17766 * rho 17766 - rho 17765 * rho 17765 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX170 rho : Seg16.F), (seg16AccY170 rho : Seg16.F)⟩
      ⟨(rho 17765 : Seg16.F), (rho 17766 : Seg16.F)⟩
      ⟨(rho 17772 : Seg16.F), (rho 17773 : Seg16.F)⟩
      ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
      ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg16_rows171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5209 rho ∧ Seg16.relationRow5210 rho ∧ Seg16.relationRow5211 rho ∧ Seg16.relationRow5212 rho ∧ Seg16.relationRow5213 rho ∧ Seg16.relationRow5214 rho ∧ Seg16.relationRow5215 rho ∧ Seg16.relationRow5216 rho ∧ Seg16.relationRow5217 rho ∧ Seg16.relationRow5218 rho ∧ Seg16.relationRow5219 rho ∧ Seg16.relationRow5220 rho ∧ Seg16.relationRow5221 rho ∧ Seg16.relationRow5222 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem seg16_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15463 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩ := by
  obtain ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := seg16_rows171 rho h
  unfold Seg16.relationRow5209 at r5209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209
  unfold Seg16.relationRow5210 at r5210
  unfold Seg16.relationRow5211 at r5211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5211
  unfold Seg16.relationRow5212 at r5212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5212
  unfold Seg16.relationRow5213 at r5213
  unfold Seg16.relationRow5214 at r5214
  unfold Seg16.relationRow5215 at r5215
  unfold Seg16.relationRow5216 at r5216
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5216
  unfold Seg16.relationRow5217 at r5217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5217
  unfold Seg16.relationRow5218 at r5218
  unfold Seg16.relationRow5219 at r5219
  unfold Seg16.relationRow5220 at r5220
  unfold Seg16.relationRow5221 at r5221
  unfold Seg16.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 15463 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
        ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩ := by
    have hnextx : seg16AccX172 rho = seg16AccX171 rho + rho 17788 := by
      unfold seg16AccX172 seg16AccX171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 21]
      ring
    have hnexty : seg16AccY172 rho = seg16AccY171 rho + rho 17789 := by
      unfold seg16AccY172 seg16AccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 21]
      ring
    have hsum : seg16AccX171 rho + seg16AccY171 rho = rho 17781 := by
      unfold seg16AccX171 seg16AccY171
      linear_combination r5209
    have ha0 : (rho 17779 + rho 17780) * (seg16AccX171 rho + seg16AccY171 rho) = rho 17782 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 17780 * seg16AccX171 rho = rho 17783 := by
      unfold seg16AccX171
      linear_combination r5211
    have ha2 : rho 17779 * seg16AccY171 rho = rho 17784 := by
      unfold seg16AccY171
      linear_combination r5212
    have ha3 : 3021 * rho 17783 * rho 17784 = rho 17785 := by
      linear_combination r5213
    have ha4 : rho 17786 * (1 + rho 17785) = rho 17783 + rho 17784 := by
      linear_combination r5214
    have ha5 : rho 17787 * (1 - rho 17785) = rho 17782 - rho 17783 - rho 17784 := by
      linear_combination r5215
    have haddx :
        rho 17786 * (1 + 3021 * (rho 17780 * seg16AccX171 rho) * (rho 17779 * seg16AccY171 rho)) =
          rho 17780 * seg16AccX171 rho + rho 17779 * seg16AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17787 * (1 - 3021 * (rho 17780 * seg16AccX171 rho) * (rho 17779 * seg16AccY171 rho)) =
          (-1) * (rho 17780 * seg16AccX171 rho) - rho 17779 * seg16AccY171 rho +
            (seg16AccY171 rho - seg16AccX171 rho * (-1)) * (rho 17779 + rho 17780) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17787 * (1 - rho 17785) = rho 17782 - rho 17783 - rho 17784 := ha5
        _ = (-1) * rho 17783 - rho 17784 + (seg16AccY171 rho - seg16AccX171 rho * (-1)) * (rho 17779 + rho 17780) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX172 rho = seg16AccX171 rho - Bool.toZMod bit * (seg16AccX171 rho - rho 17786) := by
      have hd : rho 17788 = Bool.toZMod bit * (rho 17786 - seg16AccX171 rho) := by
        rw [← hbit]
        unfold seg16AccX171
        linear_combination -r5216
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY172 rho = seg16AccY171 rho - Bool.toZMod bit * (seg16AccY171 rho - rho 17787) := by
      have hd : rho 17789 = Bool.toZMod bit * (rho 17787 - seg16AccY171 rho) := by
        rw [← hbit]
        unfold seg16AccY171
        linear_combination -r5217
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17779 * rho 17780 = rho 17790 := by linear_combination r5218
    have hd1 : rho 17779 * rho 17779 = rho 17791 := by linear_combination r5219
    have hd2 : rho 17780 * rho 17780 = rho 17792 := by linear_combination r5220
    have hd3 : rho 17793 * (rho 17780 * rho 17780 + rho 17779 * rho 17779 * (-1)) = 2 * (rho 17779 * rho 17780) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 17794 * (2 - (rho 17780 * rho 17780 + rho 17779 * rho 17779 * (-1))) = rho 17780 * rho 17780 - rho 17779 * rho 17779 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX171 rho : Seg16.F), (seg16AccY171 rho : Seg16.F)⟩
      ⟨(rho 17779 : Seg16.F), (rho 17780 : Seg16.F)⟩
      ⟨(rho 17786 : Seg16.F), (rho 17787 : Seg16.F)⟩
      ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
      ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg16_rows172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5223 rho ∧ Seg16.relationRow5224 rho ∧ Seg16.relationRow5225 rho ∧ Seg16.relationRow5226 rho ∧ Seg16.relationRow5227 rho ∧ Seg16.relationRow5228 rho ∧ Seg16.relationRow5229 rho ∧ Seg16.relationRow5230 rho ∧ Seg16.relationRow5231 rho ∧ Seg16.relationRow5232 rho ∧ Seg16.relationRow5233 rho ∧ Seg16.relationRow5234 rho ∧ Seg16.relationRow5235 rho ∧ Seg16.relationRow5236 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩

theorem seg16_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15464 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩ := seg16_rows172 rho h
  unfold Seg16.relationRow5223 at r5223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5223
  unfold Seg16.relationRow5224 at r5224
  unfold Seg16.relationRow5225 at r5225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5225
  unfold Seg16.relationRow5226 at r5226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226
  unfold Seg16.relationRow5227 at r5227
  unfold Seg16.relationRow5228 at r5228
  unfold Seg16.relationRow5229 at r5229
  unfold Seg16.relationRow5230 at r5230
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5230
  unfold Seg16.relationRow5231 at r5231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5231
  unfold Seg16.relationRow5232 at r5232
  unfold Seg16.relationRow5233 at r5233
  unfold Seg16.relationRow5234 at r5234
  unfold Seg16.relationRow5235 at r5235
  unfold Seg16.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 15464 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
        ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩ := by
    have hnextx : seg16AccX173 rho = seg16AccX172 rho + rho 17802 := by
      unfold seg16AccX173 seg16AccX172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 22]
      ring
    have hnexty : seg16AccY173 rho = seg16AccY172 rho + rho 17803 := by
      unfold seg16AccY173 seg16AccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 22]
      ring
    have hsum : seg16AccX172 rho + seg16AccY172 rho = rho 17795 := by
      unfold seg16AccX172 seg16AccY172
      linear_combination r5223
    have ha0 : (rho 17793 + rho 17794) * (seg16AccX172 rho + seg16AccY172 rho) = rho 17796 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 17794 * seg16AccX172 rho = rho 17797 := by
      unfold seg16AccX172
      linear_combination r5225
    have ha2 : rho 17793 * seg16AccY172 rho = rho 17798 := by
      unfold seg16AccY172
      linear_combination r5226
    have ha3 : 3021 * rho 17797 * rho 17798 = rho 17799 := by
      linear_combination r5227
    have ha4 : rho 17800 * (1 + rho 17799) = rho 17797 + rho 17798 := by
      linear_combination r5228
    have ha5 : rho 17801 * (1 - rho 17799) = rho 17796 - rho 17797 - rho 17798 := by
      linear_combination r5229
    have haddx :
        rho 17800 * (1 + 3021 * (rho 17794 * seg16AccX172 rho) * (rho 17793 * seg16AccY172 rho)) =
          rho 17794 * seg16AccX172 rho + rho 17793 * seg16AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17801 * (1 - 3021 * (rho 17794 * seg16AccX172 rho) * (rho 17793 * seg16AccY172 rho)) =
          (-1) * (rho 17794 * seg16AccX172 rho) - rho 17793 * seg16AccY172 rho +
            (seg16AccY172 rho - seg16AccX172 rho * (-1)) * (rho 17793 + rho 17794) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17801 * (1 - rho 17799) = rho 17796 - rho 17797 - rho 17798 := ha5
        _ = (-1) * rho 17797 - rho 17798 + (seg16AccY172 rho - seg16AccX172 rho * (-1)) * (rho 17793 + rho 17794) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX173 rho = seg16AccX172 rho - Bool.toZMod bit * (seg16AccX172 rho - rho 17800) := by
      have hd : rho 17802 = Bool.toZMod bit * (rho 17800 - seg16AccX172 rho) := by
        rw [← hbit]
        unfold seg16AccX172
        linear_combination -r5230
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY173 rho = seg16AccY172 rho - Bool.toZMod bit * (seg16AccY172 rho - rho 17801) := by
      have hd : rho 17803 = Bool.toZMod bit * (rho 17801 - seg16AccY172 rho) := by
        rw [← hbit]
        unfold seg16AccY172
        linear_combination -r5231
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17793 * rho 17794 = rho 17804 := by linear_combination r5232
    have hd1 : rho 17793 * rho 17793 = rho 17805 := by linear_combination r5233
    have hd2 : rho 17794 * rho 17794 = rho 17806 := by linear_combination r5234
    have hd3 : rho 17807 * (rho 17794 * rho 17794 + rho 17793 * rho 17793 * (-1)) = 2 * (rho 17793 * rho 17794) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 17808 * (2 - (rho 17794 * rho 17794 + rho 17793 * rho 17793 * (-1))) = rho 17794 * rho 17794 - rho 17793 * rho 17793 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX172 rho : Seg16.F), (seg16AccY172 rho : Seg16.F)⟩
      ⟨(rho 17793 : Seg16.F), (rho 17794 : Seg16.F)⟩
      ⟨(rho 17800 : Seg16.F), (rho 17801 : Seg16.F)⟩
      ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
      ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg16_rows173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5237 rho ∧ Seg16.relationRow5238 rho ∧ Seg16.relationRow5239 rho ∧ Seg16.relationRow5240 rho ∧ Seg16.relationRow5241 rho ∧ Seg16.relationRow5242 rho ∧ Seg16.relationRow5243 rho ∧ Seg16.relationRow5244 rho ∧ Seg16.relationRow5245 rho ∧ Seg16.relationRow5246 rho ∧ Seg16.relationRow5247 rho ∧ Seg16.relationRow5248 rho ∧ Seg16.relationRow5249 rho ∧ Seg16.relationRow5250 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩

theorem seg16_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15465 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩ := by
  obtain ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩ := seg16_rows173 rho h
  unfold Seg16.relationRow5237 at r5237
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5237
  unfold Seg16.relationRow5238 at r5238
  unfold Seg16.relationRow5239 at r5239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239
  unfold Seg16.relationRow5240 at r5240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240
  unfold Seg16.relationRow5241 at r5241
  unfold Seg16.relationRow5242 at r5242
  unfold Seg16.relationRow5243 at r5243
  unfold Seg16.relationRow5244 at r5244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5244
  unfold Seg16.relationRow5245 at r5245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5245
  unfold Seg16.relationRow5246 at r5246
  unfold Seg16.relationRow5247 at r5247
  unfold Seg16.relationRow5248 at r5248
  unfold Seg16.relationRow5249 at r5249
  unfold Seg16.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 15465 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
        ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩ := by
    have hnextx : seg16AccX174 rho = seg16AccX173 rho + rho 17816 := by
      unfold seg16AccX174 seg16AccX173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 23]
      ring
    have hnexty : seg16AccY174 rho = seg16AccY173 rho + rho 17817 := by
      unfold seg16AccY174 seg16AccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 23]
      ring
    have hsum : seg16AccX173 rho + seg16AccY173 rho = rho 17809 := by
      unfold seg16AccX173 seg16AccY173
      linear_combination r5237
    have ha0 : (rho 17807 + rho 17808) * (seg16AccX173 rho + seg16AccY173 rho) = rho 17810 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 17808 * seg16AccX173 rho = rho 17811 := by
      unfold seg16AccX173
      linear_combination r5239
    have ha2 : rho 17807 * seg16AccY173 rho = rho 17812 := by
      unfold seg16AccY173
      linear_combination r5240
    have ha3 : 3021 * rho 17811 * rho 17812 = rho 17813 := by
      linear_combination r5241
    have ha4 : rho 17814 * (1 + rho 17813) = rho 17811 + rho 17812 := by
      linear_combination r5242
    have ha5 : rho 17815 * (1 - rho 17813) = rho 17810 - rho 17811 - rho 17812 := by
      linear_combination r5243
    have haddx :
        rho 17814 * (1 + 3021 * (rho 17808 * seg16AccX173 rho) * (rho 17807 * seg16AccY173 rho)) =
          rho 17808 * seg16AccX173 rho + rho 17807 * seg16AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17815 * (1 - 3021 * (rho 17808 * seg16AccX173 rho) * (rho 17807 * seg16AccY173 rho)) =
          (-1) * (rho 17808 * seg16AccX173 rho) - rho 17807 * seg16AccY173 rho +
            (seg16AccY173 rho - seg16AccX173 rho * (-1)) * (rho 17807 + rho 17808) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17815 * (1 - rho 17813) = rho 17810 - rho 17811 - rho 17812 := ha5
        _ = (-1) * rho 17811 - rho 17812 + (seg16AccY173 rho - seg16AccX173 rho * (-1)) * (rho 17807 + rho 17808) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX174 rho = seg16AccX173 rho - Bool.toZMod bit * (seg16AccX173 rho - rho 17814) := by
      have hd : rho 17816 = Bool.toZMod bit * (rho 17814 - seg16AccX173 rho) := by
        rw [← hbit]
        unfold seg16AccX173
        linear_combination -r5244
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY174 rho = seg16AccY173 rho - Bool.toZMod bit * (seg16AccY173 rho - rho 17815) := by
      have hd : rho 17817 = Bool.toZMod bit * (rho 17815 - seg16AccY173 rho) := by
        rw [← hbit]
        unfold seg16AccY173
        linear_combination -r5245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17807 * rho 17808 = rho 17818 := by linear_combination r5246
    have hd1 : rho 17807 * rho 17807 = rho 17819 := by linear_combination r5247
    have hd2 : rho 17808 * rho 17808 = rho 17820 := by linear_combination r5248
    have hd3 : rho 17821 * (rho 17808 * rho 17808 + rho 17807 * rho 17807 * (-1)) = 2 * (rho 17807 * rho 17808) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 17822 * (2 - (rho 17808 * rho 17808 + rho 17807 * rho 17807 * (-1))) = rho 17808 * rho 17808 - rho 17807 * rho 17807 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX173 rho : Seg16.F), (seg16AccY173 rho : Seg16.F)⟩
      ⟨(rho 17807 : Seg16.F), (rho 17808 : Seg16.F)⟩
      ⟨(rho 17814 : Seg16.F), (rho 17815 : Seg16.F)⟩
      ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
      ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg16_rows174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5251 rho ∧ Seg16.relationRow5252 rho ∧ Seg16.relationRow5253 rho ∧ Seg16.relationRow5254 rho ∧ Seg16.relationRow5255 rho ∧ Seg16.relationRow5256 rho ∧ Seg16.relationRow5257 rho ∧ Seg16.relationRow5258 rho ∧ Seg16.relationRow5259 rho ∧ Seg16.relationRow5260 rho ∧ Seg16.relationRow5261 rho ∧ Seg16.relationRow5262 rho ∧ Seg16.relationRow5263 rho ∧ Seg16.relationRow5264 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩

theorem seg16_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15466 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩ := by
  obtain ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩ := seg16_rows174 rho h
  unfold Seg16.relationRow5251 at r5251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5251
  unfold Seg16.relationRow5252 at r5252
  unfold Seg16.relationRow5253 at r5253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253
  unfold Seg16.relationRow5254 at r5254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5254
  unfold Seg16.relationRow5255 at r5255
  unfold Seg16.relationRow5256 at r5256
  unfold Seg16.relationRow5257 at r5257
  unfold Seg16.relationRow5258 at r5258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5258
  unfold Seg16.relationRow5259 at r5259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259
  unfold Seg16.relationRow5260 at r5260
  unfold Seg16.relationRow5261 at r5261
  unfold Seg16.relationRow5262 at r5262
  unfold Seg16.relationRow5263 at r5263
  unfold Seg16.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 15466 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
        ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩ := by
    have hnextx : seg16AccX175 rho = seg16AccX174 rho + rho 17830 := by
      unfold seg16AccX175 seg16AccX174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 24]
      ring
    have hnexty : seg16AccY175 rho = seg16AccY174 rho + rho 17831 := by
      unfold seg16AccY175 seg16AccY174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 24]
      ring
    have hsum : seg16AccX174 rho + seg16AccY174 rho = rho 17823 := by
      unfold seg16AccX174 seg16AccY174
      linear_combination r5251
    have ha0 : (rho 17821 + rho 17822) * (seg16AccX174 rho + seg16AccY174 rho) = rho 17824 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 17822 * seg16AccX174 rho = rho 17825 := by
      unfold seg16AccX174
      linear_combination r5253
    have ha2 : rho 17821 * seg16AccY174 rho = rho 17826 := by
      unfold seg16AccY174
      linear_combination r5254
    have ha3 : 3021 * rho 17825 * rho 17826 = rho 17827 := by
      linear_combination r5255
    have ha4 : rho 17828 * (1 + rho 17827) = rho 17825 + rho 17826 := by
      linear_combination r5256
    have ha5 : rho 17829 * (1 - rho 17827) = rho 17824 - rho 17825 - rho 17826 := by
      linear_combination r5257
    have haddx :
        rho 17828 * (1 + 3021 * (rho 17822 * seg16AccX174 rho) * (rho 17821 * seg16AccY174 rho)) =
          rho 17822 * seg16AccX174 rho + rho 17821 * seg16AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17829 * (1 - 3021 * (rho 17822 * seg16AccX174 rho) * (rho 17821 * seg16AccY174 rho)) =
          (-1) * (rho 17822 * seg16AccX174 rho) - rho 17821 * seg16AccY174 rho +
            (seg16AccY174 rho - seg16AccX174 rho * (-1)) * (rho 17821 + rho 17822) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17829 * (1 - rho 17827) = rho 17824 - rho 17825 - rho 17826 := ha5
        _ = (-1) * rho 17825 - rho 17826 + (seg16AccY174 rho - seg16AccX174 rho * (-1)) * (rho 17821 + rho 17822) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX175 rho = seg16AccX174 rho - Bool.toZMod bit * (seg16AccX174 rho - rho 17828) := by
      have hd : rho 17830 = Bool.toZMod bit * (rho 17828 - seg16AccX174 rho) := by
        rw [← hbit]
        unfold seg16AccX174
        linear_combination -r5258
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY175 rho = seg16AccY174 rho - Bool.toZMod bit * (seg16AccY174 rho - rho 17829) := by
      have hd : rho 17831 = Bool.toZMod bit * (rho 17829 - seg16AccY174 rho) := by
        rw [← hbit]
        unfold seg16AccY174
        linear_combination -r5259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17821 * rho 17822 = rho 17832 := by linear_combination r5260
    have hd1 : rho 17821 * rho 17821 = rho 17833 := by linear_combination r5261
    have hd2 : rho 17822 * rho 17822 = rho 17834 := by linear_combination r5262
    have hd3 : rho 17835 * (rho 17822 * rho 17822 + rho 17821 * rho 17821 * (-1)) = 2 * (rho 17821 * rho 17822) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 17836 * (2 - (rho 17822 * rho 17822 + rho 17821 * rho 17821 * (-1))) = rho 17822 * rho 17822 - rho 17821 * rho 17821 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX174 rho : Seg16.F), (seg16AccY174 rho : Seg16.F)⟩
      ⟨(rho 17821 : Seg16.F), (rho 17822 : Seg16.F)⟩
      ⟨(rho 17828 : Seg16.F), (rho 17829 : Seg16.F)⟩
      ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
      ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg16_rows175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5265 rho ∧ Seg16.relationRow5266 rho ∧ Seg16.relationRow5267 rho ∧ Seg16.relationRow5268 rho ∧ Seg16.relationRow5269 rho ∧ Seg16.relationRow5270 rho ∧ Seg16.relationRow5271 rho ∧ Seg16.relationRow5272 rho ∧ Seg16.relationRow5273 rho ∧ Seg16.relationRow5274 rho ∧ Seg16.relationRow5275 rho ∧ Seg16.relationRow5276 rho ∧ Seg16.relationRow5277 rho ∧ Seg16.relationRow5278 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  exact ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩

theorem seg16_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15467 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩ := by
  obtain ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩ := seg16_rows175 rho h
  unfold Seg16.relationRow5265 at r5265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265
  unfold Seg16.relationRow5266 at r5266
  unfold Seg16.relationRow5267 at r5267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5267
  unfold Seg16.relationRow5268 at r5268
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5268
  unfold Seg16.relationRow5269 at r5269
  unfold Seg16.relationRow5270 at r5270
  unfold Seg16.relationRow5271 at r5271
  unfold Seg16.relationRow5272 at r5272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272
  unfold Seg16.relationRow5273 at r5273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273
  unfold Seg16.relationRow5274 at r5274
  unfold Seg16.relationRow5275 at r5275
  unfold Seg16.relationRow5276 at r5276
  unfold Seg16.relationRow5277 at r5277
  unfold Seg16.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 15467 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
        ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
        ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
        ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩ := by
    have hnextx : seg16AccX176 rho = seg16AccX175 rho + rho 17844 := by
      unfold seg16AccX176 seg16AccX175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 25]
      ring
    have hnexty : seg16AccY176 rho = seg16AccY175 rho + rho 17845 := by
      unfold seg16AccY176 seg16AccY175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 25]
      ring
    have hsum : seg16AccX175 rho + seg16AccY175 rho = rho 17837 := by
      unfold seg16AccX175 seg16AccY175
      linear_combination r5265
    have ha0 : (rho 17835 + rho 17836) * (seg16AccX175 rho + seg16AccY175 rho) = rho 17838 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 17836 * seg16AccX175 rho = rho 17839 := by
      unfold seg16AccX175
      linear_combination r5267
    have ha2 : rho 17835 * seg16AccY175 rho = rho 17840 := by
      unfold seg16AccY175
      linear_combination r5268
    have ha3 : 3021 * rho 17839 * rho 17840 = rho 17841 := by
      linear_combination r5269
    have ha4 : rho 17842 * (1 + rho 17841) = rho 17839 + rho 17840 := by
      linear_combination r5270
    have ha5 : rho 17843 * (1 - rho 17841) = rho 17838 - rho 17839 - rho 17840 := by
      linear_combination r5271
    have haddx :
        rho 17842 * (1 + 3021 * (rho 17836 * seg16AccX175 rho) * (rho 17835 * seg16AccY175 rho)) =
          rho 17836 * seg16AccX175 rho + rho 17835 * seg16AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 17843 * (1 - 3021 * (rho 17836 * seg16AccX175 rho) * (rho 17835 * seg16AccY175 rho)) =
          (-1) * (rho 17836 * seg16AccX175 rho) - rho 17835 * seg16AccY175 rho +
            (seg16AccY175 rho - seg16AccX175 rho * (-1)) * (rho 17835 + rho 17836) := by
      rw [ha1, ha2, ha3]
      calc
        rho 17843 * (1 - rho 17841) = rho 17838 - rho 17839 - rho 17840 := ha5
        _ = (-1) * rho 17839 - rho 17840 + (seg16AccY175 rho - seg16AccX175 rho * (-1)) * (rho 17835 + rho 17836) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX176 rho = seg16AccX175 rho - Bool.toZMod bit * (seg16AccX175 rho - rho 17842) := by
      have hd : rho 17844 = Bool.toZMod bit * (rho 17842 - seg16AccX175 rho) := by
        rw [← hbit]
        unfold seg16AccX175
        linear_combination -r5272
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY176 rho = seg16AccY175 rho - Bool.toZMod bit * (seg16AccY175 rho - rho 17843) := by
      have hd : rho 17845 = Bool.toZMod bit * (rho 17843 - seg16AccY175 rho) := by
        rw [← hbit]
        unfold seg16AccY175
        linear_combination -r5273
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 17835 * rho 17836 = rho 17846 := by linear_combination r5274
    have hd1 : rho 17835 * rho 17835 = rho 17847 := by linear_combination r5275
    have hd2 : rho 17836 * rho 17836 = rho 17848 := by linear_combination r5276
    have hd3 : rho 17849 * (rho 17836 * rho 17836 + rho 17835 * rho 17835 * (-1)) = 2 * (rho 17835 * rho 17836) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 17850 * (2 - (rho 17836 * rho 17836 + rho 17835 * rho 17835 * (-1))) = rho 17836 * rho 17836 - rho 17835 * rho 17835 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX175 rho : Seg16.F), (seg16AccY175 rho : Seg16.F)⟩
      ⟨(rho 17835 : Seg16.F), (rho 17836 : Seg16.F)⟩
      ⟨(rho 17842 : Seg16.F), (rho 17843 : Seg16.F)⟩
      ⟨(seg16AccX176 rho : Seg16.F), (seg16AccY176 rho : Seg16.F)⟩
      ⟨(rho 17849 : Seg16.F), (rho 17850 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg16_hstep_c15 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 165 ≤ i → i < 176 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg16_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg16_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg16_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg16_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg16_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg16_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg16_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg16_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg16_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg16_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
