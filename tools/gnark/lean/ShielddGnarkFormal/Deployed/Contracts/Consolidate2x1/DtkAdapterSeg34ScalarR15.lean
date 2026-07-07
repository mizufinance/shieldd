import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5125 rho ∧ Seg34.relationRow5126 rho ∧ Seg34.relationRow5127 rho ∧ Seg34.relationRow5128 rho ∧ Seg34.relationRow5129 rho ∧ Seg34.relationRow5130 rho ∧ Seg34.relationRow5131 rho ∧ Seg34.relationRow5132 rho ∧ Seg34.relationRow5133 rho ∧ Seg34.relationRow5134 rho ∧ Seg34.relationRow5135 rho ∧ Seg34.relationRow5136 rho ∧ Seg34.relationRow5137 rho ∧ Seg34.relationRow5138 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩

theorem seg34_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34157 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩ := seg34_rows165 rho h
  unfold Seg34.relationRow5125 at r5125
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5125
  unfold Seg34.relationRow5126 at r5126
  unfold Seg34.relationRow5127 at r5127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5127
  unfold Seg34.relationRow5128 at r5128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5128
  unfold Seg34.relationRow5129 at r5129
  unfold Seg34.relationRow5130 at r5130
  unfold Seg34.relationRow5131 at r5131
  unfold Seg34.relationRow5132 at r5132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5132
  unfold Seg34.relationRow5133 at r5133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5133
  unfold Seg34.relationRow5134 at r5134
  unfold Seg34.relationRow5135 at r5135
  unfold Seg34.relationRow5136 at r5136
  unfold Seg34.relationRow5137 at r5137
  unfold Seg34.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 34157 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩ := by
    have hnextx : seg34AccX166 rho = seg34AccX165 rho + rho 36404 := by
      unfold seg34AccX166 seg34AccX165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 36194 14]
      ring
    have hnexty : seg34AccY166 rho = seg34AccY165 rho + rho 36405 := by
      unfold seg34AccY166 seg34AccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 36195 14]
      ring
    have hsum : seg34AccX165 rho + seg34AccY165 rho = rho 36397 := by
      unfold seg34AccX165 seg34AccY165
      linear_combination r5125
    have ha0 : (rho 36395 + rho 36396) * (seg34AccX165 rho + seg34AccY165 rho) = rho 36398 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 36396 * seg34AccX165 rho = rho 36399 := by
      unfold seg34AccX165
      linear_combination r5127
    have ha2 : rho 36395 * seg34AccY165 rho = rho 36400 := by
      unfold seg34AccY165
      linear_combination r5128
    have ha3 : 3021 * rho 36399 * rho 36400 = rho 36401 := by
      linear_combination r5129
    have ha4 : rho 36402 * (1 + rho 36401) = rho 36399 + rho 36400 := by
      linear_combination r5130
    have ha5 : rho 36403 * (1 - rho 36401) = rho 36398 - rho 36399 - rho 36400 := by
      linear_combination r5131
    have haddx :
        rho 36402 * (1 + 3021 * (rho 36396 * seg34AccX165 rho) * (rho 36395 * seg34AccY165 rho)) =
          rho 36396 * seg34AccX165 rho + rho 36395 * seg34AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36403 * (1 - 3021 * (rho 36396 * seg34AccX165 rho) * (rho 36395 * seg34AccY165 rho)) =
          (-1) * (rho 36396 * seg34AccX165 rho) - rho 36395 * seg34AccY165 rho +
            (seg34AccY165 rho - seg34AccX165 rho * (-1)) * (rho 36395 + rho 36396) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36403 * (1 - rho 36401) = rho 36398 - rho 36399 - rho 36400 := ha5
        _ = (-1) * rho 36399 - rho 36400 + (seg34AccY165 rho - seg34AccX165 rho * (-1)) * (rho 36395 + rho 36396) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX166 rho = seg34AccX165 rho - Bool.toZMod bit * (seg34AccX165 rho - rho 36402) := by
      have hd : rho 36404 = Bool.toZMod bit * (rho 36402 - seg34AccX165 rho) := by
        rw [← hbit]
        unfold seg34AccX165
        linear_combination -r5132
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY166 rho = seg34AccY165 rho - Bool.toZMod bit * (seg34AccY165 rho - rho 36403) := by
      have hd : rho 36405 = Bool.toZMod bit * (rho 36403 - seg34AccY165 rho) := by
        rw [← hbit]
        unfold seg34AccY165
        linear_combination -r5133
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36395 * rho 36396 = rho 36406 := by linear_combination r5134
    have hd1 : rho 36395 * rho 36395 = rho 36407 := by linear_combination r5135
    have hd2 : rho 36396 * rho 36396 = rho 36408 := by linear_combination r5136
    have hd3 : rho 36409 * (rho 36396 * rho 36396 + rho 36395 * rho 36395 * (-1)) = 2 * (rho 36395 * rho 36396) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 36410 * (2 - (rho 36396 * rho 36396 + rho 36395 * rho 36395 * (-1))) = rho 36396 * rho 36396 - rho 36395 * rho 36395 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
      ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
      ⟨(rho 36402 : Seg34.F), (rho 36403 : Seg34.F)⟩
      ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
      ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg34_rows166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5139 rho ∧ Seg34.relationRow5140 rho ∧ Seg34.relationRow5141 rho ∧ Seg34.relationRow5142 rho ∧ Seg34.relationRow5143 rho ∧ Seg34.relationRow5144 rho ∧ Seg34.relationRow5145 rho ∧ Seg34.relationRow5146 rho ∧ Seg34.relationRow5147 rho ∧ Seg34.relationRow5148 rho ∧ Seg34.relationRow5149 rho ∧ Seg34.relationRow5150 rho ∧ Seg34.relationRow5151 rho ∧ Seg34.relationRow5152 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩

theorem seg34_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34158 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩ := by
  obtain ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩ := seg34_rows166 rho h
  unfold Seg34.relationRow5139 at r5139
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5139
  unfold Seg34.relationRow5140 at r5140
  unfold Seg34.relationRow5141 at r5141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5141
  unfold Seg34.relationRow5142 at r5142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142
  unfold Seg34.relationRow5143 at r5143
  unfold Seg34.relationRow5144 at r5144
  unfold Seg34.relationRow5145 at r5145
  unfold Seg34.relationRow5146 at r5146
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5146
  unfold Seg34.relationRow5147 at r5147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5147
  unfold Seg34.relationRow5148 at r5148
  unfold Seg34.relationRow5149 at r5149
  unfold Seg34.relationRow5150 at r5150
  unfold Seg34.relationRow5151 at r5151
  unfold Seg34.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 34158 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
        ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩ := by
    have hnextx : seg34AccX167 rho = seg34AccX166 rho + rho 36418 := by
      unfold seg34AccX167 seg34AccX166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 16]
      ring
    have hnexty : seg34AccY167 rho = seg34AccY166 rho + rho 36419 := by
      unfold seg34AccY167 seg34AccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 16]
      ring
    have hsum : seg34AccX166 rho + seg34AccY166 rho = rho 36411 := by
      unfold seg34AccX166 seg34AccY166
      linear_combination r5139
    have ha0 : (rho 36409 + rho 36410) * (seg34AccX166 rho + seg34AccY166 rho) = rho 36412 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 36410 * seg34AccX166 rho = rho 36413 := by
      unfold seg34AccX166
      linear_combination r5141
    have ha2 : rho 36409 * seg34AccY166 rho = rho 36414 := by
      unfold seg34AccY166
      linear_combination r5142
    have ha3 : 3021 * rho 36413 * rho 36414 = rho 36415 := by
      linear_combination r5143
    have ha4 : rho 36416 * (1 + rho 36415) = rho 36413 + rho 36414 := by
      linear_combination r5144
    have ha5 : rho 36417 * (1 - rho 36415) = rho 36412 - rho 36413 - rho 36414 := by
      linear_combination r5145
    have haddx :
        rho 36416 * (1 + 3021 * (rho 36410 * seg34AccX166 rho) * (rho 36409 * seg34AccY166 rho)) =
          rho 36410 * seg34AccX166 rho + rho 36409 * seg34AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36417 * (1 - 3021 * (rho 36410 * seg34AccX166 rho) * (rho 36409 * seg34AccY166 rho)) =
          (-1) * (rho 36410 * seg34AccX166 rho) - rho 36409 * seg34AccY166 rho +
            (seg34AccY166 rho - seg34AccX166 rho * (-1)) * (rho 36409 + rho 36410) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36417 * (1 - rho 36415) = rho 36412 - rho 36413 - rho 36414 := ha5
        _ = (-1) * rho 36413 - rho 36414 + (seg34AccY166 rho - seg34AccX166 rho * (-1)) * (rho 36409 + rho 36410) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX167 rho = seg34AccX166 rho - Bool.toZMod bit * (seg34AccX166 rho - rho 36416) := by
      have hd : rho 36418 = Bool.toZMod bit * (rho 36416 - seg34AccX166 rho) := by
        rw [← hbit]
        unfold seg34AccX166
        linear_combination -r5146
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY167 rho = seg34AccY166 rho - Bool.toZMod bit * (seg34AccY166 rho - rho 36417) := by
      have hd : rho 36419 = Bool.toZMod bit * (rho 36417 - seg34AccY166 rho) := by
        rw [← hbit]
        unfold seg34AccY166
        linear_combination -r5147
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36409 * rho 36410 = rho 36420 := by linear_combination r5148
    have hd1 : rho 36409 * rho 36409 = rho 36421 := by linear_combination r5149
    have hd2 : rho 36410 * rho 36410 = rho 36422 := by linear_combination r5150
    have hd3 : rho 36423 * (rho 36410 * rho 36410 + rho 36409 * rho 36409 * (-1)) = 2 * (rho 36409 * rho 36410) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 36424 * (2 - (rho 36410 * rho 36410 + rho 36409 * rho 36409 * (-1))) = rho 36410 * rho 36410 - rho 36409 * rho 36409 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX166 rho : Seg34.F), (seg34AccY166 rho : Seg34.F)⟩
      ⟨(rho 36409 : Seg34.F), (rho 36410 : Seg34.F)⟩
      ⟨(rho 36416 : Seg34.F), (rho 36417 : Seg34.F)⟩
      ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
      ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg34_rows167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5153 rho ∧ Seg34.relationRow5154 rho ∧ Seg34.relationRow5155 rho ∧ Seg34.relationRow5156 rho ∧ Seg34.relationRow5157 rho ∧ Seg34.relationRow5158 rho ∧ Seg34.relationRow5159 rho ∧ Seg34.relationRow5160 rho ∧ Seg34.relationRow5161 rho ∧ Seg34.relationRow5162 rho ∧ Seg34.relationRow5163 rho ∧ Seg34.relationRow5164 rho ∧ Seg34.relationRow5165 rho ∧ Seg34.relationRow5166 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩

theorem seg34_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34159 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩ := by
  obtain ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩ := seg34_rows167 rho h
  unfold Seg34.relationRow5153 at r5153
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5153
  unfold Seg34.relationRow5154 at r5154
  unfold Seg34.relationRow5155 at r5155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155
  unfold Seg34.relationRow5156 at r5156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156
  unfold Seg34.relationRow5157 at r5157
  unfold Seg34.relationRow5158 at r5158
  unfold Seg34.relationRow5159 at r5159
  unfold Seg34.relationRow5160 at r5160
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5160
  unfold Seg34.relationRow5161 at r5161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161
  unfold Seg34.relationRow5162 at r5162
  unfold Seg34.relationRow5163 at r5163
  unfold Seg34.relationRow5164 at r5164
  unfold Seg34.relationRow5165 at r5165
  unfold Seg34.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 34159 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
        ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩ := by
    have hnextx : seg34AccX168 rho = seg34AccX167 rho + rho 36432 := by
      unfold seg34AccX168 seg34AccX167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 17]
      ring
    have hnexty : seg34AccY168 rho = seg34AccY167 rho + rho 36433 := by
      unfold seg34AccY168 seg34AccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 17]
      ring
    have hsum : seg34AccX167 rho + seg34AccY167 rho = rho 36425 := by
      unfold seg34AccX167 seg34AccY167
      linear_combination r5153
    have ha0 : (rho 36423 + rho 36424) * (seg34AccX167 rho + seg34AccY167 rho) = rho 36426 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 36424 * seg34AccX167 rho = rho 36427 := by
      unfold seg34AccX167
      linear_combination r5155
    have ha2 : rho 36423 * seg34AccY167 rho = rho 36428 := by
      unfold seg34AccY167
      linear_combination r5156
    have ha3 : 3021 * rho 36427 * rho 36428 = rho 36429 := by
      linear_combination r5157
    have ha4 : rho 36430 * (1 + rho 36429) = rho 36427 + rho 36428 := by
      linear_combination r5158
    have ha5 : rho 36431 * (1 - rho 36429) = rho 36426 - rho 36427 - rho 36428 := by
      linear_combination r5159
    have haddx :
        rho 36430 * (1 + 3021 * (rho 36424 * seg34AccX167 rho) * (rho 36423 * seg34AccY167 rho)) =
          rho 36424 * seg34AccX167 rho + rho 36423 * seg34AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36431 * (1 - 3021 * (rho 36424 * seg34AccX167 rho) * (rho 36423 * seg34AccY167 rho)) =
          (-1) * (rho 36424 * seg34AccX167 rho) - rho 36423 * seg34AccY167 rho +
            (seg34AccY167 rho - seg34AccX167 rho * (-1)) * (rho 36423 + rho 36424) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36431 * (1 - rho 36429) = rho 36426 - rho 36427 - rho 36428 := ha5
        _ = (-1) * rho 36427 - rho 36428 + (seg34AccY167 rho - seg34AccX167 rho * (-1)) * (rho 36423 + rho 36424) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX168 rho = seg34AccX167 rho - Bool.toZMod bit * (seg34AccX167 rho - rho 36430) := by
      have hd : rho 36432 = Bool.toZMod bit * (rho 36430 - seg34AccX167 rho) := by
        rw [← hbit]
        unfold seg34AccX167
        linear_combination -r5160
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY168 rho = seg34AccY167 rho - Bool.toZMod bit * (seg34AccY167 rho - rho 36431) := by
      have hd : rho 36433 = Bool.toZMod bit * (rho 36431 - seg34AccY167 rho) := by
        rw [← hbit]
        unfold seg34AccY167
        linear_combination -r5161
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36423 * rho 36424 = rho 36434 := by linear_combination r5162
    have hd1 : rho 36423 * rho 36423 = rho 36435 := by linear_combination r5163
    have hd2 : rho 36424 * rho 36424 = rho 36436 := by linear_combination r5164
    have hd3 : rho 36437 * (rho 36424 * rho 36424 + rho 36423 * rho 36423 * (-1)) = 2 * (rho 36423 * rho 36424) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 36438 * (2 - (rho 36424 * rho 36424 + rho 36423 * rho 36423 * (-1))) = rho 36424 * rho 36424 - rho 36423 * rho 36423 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX167 rho : Seg34.F), (seg34AccY167 rho : Seg34.F)⟩
      ⟨(rho 36423 : Seg34.F), (rho 36424 : Seg34.F)⟩
      ⟨(rho 36430 : Seg34.F), (rho 36431 : Seg34.F)⟩
      ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
      ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg34_rows168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5167 rho ∧ Seg34.relationRow5168 rho ∧ Seg34.relationRow5169 rho ∧ Seg34.relationRow5170 rho ∧ Seg34.relationRow5171 rho ∧ Seg34.relationRow5172 rho ∧ Seg34.relationRow5173 rho ∧ Seg34.relationRow5174 rho ∧ Seg34.relationRow5175 rho ∧ Seg34.relationRow5176 rho ∧ Seg34.relationRow5177 rho ∧ Seg34.relationRow5178 rho ∧ Seg34.relationRow5179 rho ∧ Seg34.relationRow5180 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg34_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34160 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩ := by
  obtain ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg34_rows168 rho h
  unfold Seg34.relationRow5167 at r5167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5167
  unfold Seg34.relationRow5168 at r5168
  unfold Seg34.relationRow5169 at r5169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169
  unfold Seg34.relationRow5170 at r5170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170
  unfold Seg34.relationRow5171 at r5171
  unfold Seg34.relationRow5172 at r5172
  unfold Seg34.relationRow5173 at r5173
  unfold Seg34.relationRow5174 at r5174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174
  unfold Seg34.relationRow5175 at r5175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175
  unfold Seg34.relationRow5176 at r5176
  unfold Seg34.relationRow5177 at r5177
  unfold Seg34.relationRow5178 at r5178
  unfold Seg34.relationRow5179 at r5179
  unfold Seg34.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 34160 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
        ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩ := by
    have hnextx : seg34AccX169 rho = seg34AccX168 rho + rho 36446 := by
      unfold seg34AccX169 seg34AccX168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 18]
      ring
    have hnexty : seg34AccY169 rho = seg34AccY168 rho + rho 36447 := by
      unfold seg34AccY169 seg34AccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 18]
      ring
    have hsum : seg34AccX168 rho + seg34AccY168 rho = rho 36439 := by
      unfold seg34AccX168 seg34AccY168
      linear_combination r5167
    have ha0 : (rho 36437 + rho 36438) * (seg34AccX168 rho + seg34AccY168 rho) = rho 36440 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 36438 * seg34AccX168 rho = rho 36441 := by
      unfold seg34AccX168
      linear_combination r5169
    have ha2 : rho 36437 * seg34AccY168 rho = rho 36442 := by
      unfold seg34AccY168
      linear_combination r5170
    have ha3 : 3021 * rho 36441 * rho 36442 = rho 36443 := by
      linear_combination r5171
    have ha4 : rho 36444 * (1 + rho 36443) = rho 36441 + rho 36442 := by
      linear_combination r5172
    have ha5 : rho 36445 * (1 - rho 36443) = rho 36440 - rho 36441 - rho 36442 := by
      linear_combination r5173
    have haddx :
        rho 36444 * (1 + 3021 * (rho 36438 * seg34AccX168 rho) * (rho 36437 * seg34AccY168 rho)) =
          rho 36438 * seg34AccX168 rho + rho 36437 * seg34AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36445 * (1 - 3021 * (rho 36438 * seg34AccX168 rho) * (rho 36437 * seg34AccY168 rho)) =
          (-1) * (rho 36438 * seg34AccX168 rho) - rho 36437 * seg34AccY168 rho +
            (seg34AccY168 rho - seg34AccX168 rho * (-1)) * (rho 36437 + rho 36438) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36445 * (1 - rho 36443) = rho 36440 - rho 36441 - rho 36442 := ha5
        _ = (-1) * rho 36441 - rho 36442 + (seg34AccY168 rho - seg34AccX168 rho * (-1)) * (rho 36437 + rho 36438) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX169 rho = seg34AccX168 rho - Bool.toZMod bit * (seg34AccX168 rho - rho 36444) := by
      have hd : rho 36446 = Bool.toZMod bit * (rho 36444 - seg34AccX168 rho) := by
        rw [← hbit]
        unfold seg34AccX168
        linear_combination -r5174
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY169 rho = seg34AccY168 rho - Bool.toZMod bit * (seg34AccY168 rho - rho 36445) := by
      have hd : rho 36447 = Bool.toZMod bit * (rho 36445 - seg34AccY168 rho) := by
        rw [← hbit]
        unfold seg34AccY168
        linear_combination -r5175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36437 * rho 36438 = rho 36448 := by linear_combination r5176
    have hd1 : rho 36437 * rho 36437 = rho 36449 := by linear_combination r5177
    have hd2 : rho 36438 * rho 36438 = rho 36450 := by linear_combination r5178
    have hd3 : rho 36451 * (rho 36438 * rho 36438 + rho 36437 * rho 36437 * (-1)) = 2 * (rho 36437 * rho 36438) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 36452 * (2 - (rho 36438 * rho 36438 + rho 36437 * rho 36437 * (-1))) = rho 36438 * rho 36438 - rho 36437 * rho 36437 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX168 rho : Seg34.F), (seg34AccY168 rho : Seg34.F)⟩
      ⟨(rho 36437 : Seg34.F), (rho 36438 : Seg34.F)⟩
      ⟨(rho 36444 : Seg34.F), (rho 36445 : Seg34.F)⟩
      ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
      ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg34_rows169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5181 rho ∧ Seg34.relationRow5182 rho ∧ Seg34.relationRow5183 rho ∧ Seg34.relationRow5184 rho ∧ Seg34.relationRow5185 rho ∧ Seg34.relationRow5186 rho ∧ Seg34.relationRow5187 rho ∧ Seg34.relationRow5188 rho ∧ Seg34.relationRow5189 rho ∧ Seg34.relationRow5190 rho ∧ Seg34.relationRow5191 rho ∧ Seg34.relationRow5192 rho ∧ Seg34.relationRow5193 rho ∧ Seg34.relationRow5194 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩

theorem seg34_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34161 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩ := seg34_rows169 rho h
  unfold Seg34.relationRow5181 at r5181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181
  unfold Seg34.relationRow5182 at r5182
  unfold Seg34.relationRow5183 at r5183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183
  unfold Seg34.relationRow5184 at r5184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5184
  unfold Seg34.relationRow5185 at r5185
  unfold Seg34.relationRow5186 at r5186
  unfold Seg34.relationRow5187 at r5187
  unfold Seg34.relationRow5188 at r5188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188
  unfold Seg34.relationRow5189 at r5189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5189
  unfold Seg34.relationRow5190 at r5190
  unfold Seg34.relationRow5191 at r5191
  unfold Seg34.relationRow5192 at r5192
  unfold Seg34.relationRow5193 at r5193
  unfold Seg34.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 34161 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
        ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩ := by
    have hnextx : seg34AccX170 rho = seg34AccX169 rho + rho 36460 := by
      unfold seg34AccX170 seg34AccX169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 19]
      ring
    have hnexty : seg34AccY170 rho = seg34AccY169 rho + rho 36461 := by
      unfold seg34AccY170 seg34AccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 19]
      ring
    have hsum : seg34AccX169 rho + seg34AccY169 rho = rho 36453 := by
      unfold seg34AccX169 seg34AccY169
      linear_combination r5181
    have ha0 : (rho 36451 + rho 36452) * (seg34AccX169 rho + seg34AccY169 rho) = rho 36454 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 36452 * seg34AccX169 rho = rho 36455 := by
      unfold seg34AccX169
      linear_combination r5183
    have ha2 : rho 36451 * seg34AccY169 rho = rho 36456 := by
      unfold seg34AccY169
      linear_combination r5184
    have ha3 : 3021 * rho 36455 * rho 36456 = rho 36457 := by
      linear_combination r5185
    have ha4 : rho 36458 * (1 + rho 36457) = rho 36455 + rho 36456 := by
      linear_combination r5186
    have ha5 : rho 36459 * (1 - rho 36457) = rho 36454 - rho 36455 - rho 36456 := by
      linear_combination r5187
    have haddx :
        rho 36458 * (1 + 3021 * (rho 36452 * seg34AccX169 rho) * (rho 36451 * seg34AccY169 rho)) =
          rho 36452 * seg34AccX169 rho + rho 36451 * seg34AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36459 * (1 - 3021 * (rho 36452 * seg34AccX169 rho) * (rho 36451 * seg34AccY169 rho)) =
          (-1) * (rho 36452 * seg34AccX169 rho) - rho 36451 * seg34AccY169 rho +
            (seg34AccY169 rho - seg34AccX169 rho * (-1)) * (rho 36451 + rho 36452) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36459 * (1 - rho 36457) = rho 36454 - rho 36455 - rho 36456 := ha5
        _ = (-1) * rho 36455 - rho 36456 + (seg34AccY169 rho - seg34AccX169 rho * (-1)) * (rho 36451 + rho 36452) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX170 rho = seg34AccX169 rho - Bool.toZMod bit * (seg34AccX169 rho - rho 36458) := by
      have hd : rho 36460 = Bool.toZMod bit * (rho 36458 - seg34AccX169 rho) := by
        rw [← hbit]
        unfold seg34AccX169
        linear_combination -r5188
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY170 rho = seg34AccY169 rho - Bool.toZMod bit * (seg34AccY169 rho - rho 36459) := by
      have hd : rho 36461 = Bool.toZMod bit * (rho 36459 - seg34AccY169 rho) := by
        rw [← hbit]
        unfold seg34AccY169
        linear_combination -r5189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36451 * rho 36452 = rho 36462 := by linear_combination r5190
    have hd1 : rho 36451 * rho 36451 = rho 36463 := by linear_combination r5191
    have hd2 : rho 36452 * rho 36452 = rho 36464 := by linear_combination r5192
    have hd3 : rho 36465 * (rho 36452 * rho 36452 + rho 36451 * rho 36451 * (-1)) = 2 * (rho 36451 * rho 36452) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 36466 * (2 - (rho 36452 * rho 36452 + rho 36451 * rho 36451 * (-1))) = rho 36452 * rho 36452 - rho 36451 * rho 36451 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX169 rho : Seg34.F), (seg34AccY169 rho : Seg34.F)⟩
      ⟨(rho 36451 : Seg34.F), (rho 36452 : Seg34.F)⟩
      ⟨(rho 36458 : Seg34.F), (rho 36459 : Seg34.F)⟩
      ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
      ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg34_rows170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5195 rho ∧ Seg34.relationRow5196 rho ∧ Seg34.relationRow5197 rho ∧ Seg34.relationRow5198 rho ∧ Seg34.relationRow5199 rho ∧ Seg34.relationRow5200 rho ∧ Seg34.relationRow5201 rho ∧ Seg34.relationRow5202 rho ∧ Seg34.relationRow5203 rho ∧ Seg34.relationRow5204 rho ∧ Seg34.relationRow5205 rho ∧ Seg34.relationRow5206 rho ∧ Seg34.relationRow5207 rho ∧ Seg34.relationRow5208 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩

theorem seg34_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34162 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩ := by
  obtain ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩ := seg34_rows170 rho h
  unfold Seg34.relationRow5195 at r5195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195
  unfold Seg34.relationRow5196 at r5196
  unfold Seg34.relationRow5197 at r5197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5197
  unfold Seg34.relationRow5198 at r5198
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5198
  unfold Seg34.relationRow5199 at r5199
  unfold Seg34.relationRow5200 at r5200
  unfold Seg34.relationRow5201 at r5201
  unfold Seg34.relationRow5202 at r5202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5202
  unfold Seg34.relationRow5203 at r5203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5203
  unfold Seg34.relationRow5204 at r5204
  unfold Seg34.relationRow5205 at r5205
  unfold Seg34.relationRow5206 at r5206
  unfold Seg34.relationRow5207 at r5207
  unfold Seg34.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 34162 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
        ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩ := by
    have hnextx : seg34AccX171 rho = seg34AccX170 rho + rho 36474 := by
      unfold seg34AccX171 seg34AccX170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 20]
      ring
    have hnexty : seg34AccY171 rho = seg34AccY170 rho + rho 36475 := by
      unfold seg34AccY171 seg34AccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 20]
      ring
    have hsum : seg34AccX170 rho + seg34AccY170 rho = rho 36467 := by
      unfold seg34AccX170 seg34AccY170
      linear_combination r5195
    have ha0 : (rho 36465 + rho 36466) * (seg34AccX170 rho + seg34AccY170 rho) = rho 36468 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 36466 * seg34AccX170 rho = rho 36469 := by
      unfold seg34AccX170
      linear_combination r5197
    have ha2 : rho 36465 * seg34AccY170 rho = rho 36470 := by
      unfold seg34AccY170
      linear_combination r5198
    have ha3 : 3021 * rho 36469 * rho 36470 = rho 36471 := by
      linear_combination r5199
    have ha4 : rho 36472 * (1 + rho 36471) = rho 36469 + rho 36470 := by
      linear_combination r5200
    have ha5 : rho 36473 * (1 - rho 36471) = rho 36468 - rho 36469 - rho 36470 := by
      linear_combination r5201
    have haddx :
        rho 36472 * (1 + 3021 * (rho 36466 * seg34AccX170 rho) * (rho 36465 * seg34AccY170 rho)) =
          rho 36466 * seg34AccX170 rho + rho 36465 * seg34AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36473 * (1 - 3021 * (rho 36466 * seg34AccX170 rho) * (rho 36465 * seg34AccY170 rho)) =
          (-1) * (rho 36466 * seg34AccX170 rho) - rho 36465 * seg34AccY170 rho +
            (seg34AccY170 rho - seg34AccX170 rho * (-1)) * (rho 36465 + rho 36466) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36473 * (1 - rho 36471) = rho 36468 - rho 36469 - rho 36470 := ha5
        _ = (-1) * rho 36469 - rho 36470 + (seg34AccY170 rho - seg34AccX170 rho * (-1)) * (rho 36465 + rho 36466) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX171 rho = seg34AccX170 rho - Bool.toZMod bit * (seg34AccX170 rho - rho 36472) := by
      have hd : rho 36474 = Bool.toZMod bit * (rho 36472 - seg34AccX170 rho) := by
        rw [← hbit]
        unfold seg34AccX170
        linear_combination -r5202
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY171 rho = seg34AccY170 rho - Bool.toZMod bit * (seg34AccY170 rho - rho 36473) := by
      have hd : rho 36475 = Bool.toZMod bit * (rho 36473 - seg34AccY170 rho) := by
        rw [← hbit]
        unfold seg34AccY170
        linear_combination -r5203
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36465 * rho 36466 = rho 36476 := by linear_combination r5204
    have hd1 : rho 36465 * rho 36465 = rho 36477 := by linear_combination r5205
    have hd2 : rho 36466 * rho 36466 = rho 36478 := by linear_combination r5206
    have hd3 : rho 36479 * (rho 36466 * rho 36466 + rho 36465 * rho 36465 * (-1)) = 2 * (rho 36465 * rho 36466) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 36480 * (2 - (rho 36466 * rho 36466 + rho 36465 * rho 36465 * (-1))) = rho 36466 * rho 36466 - rho 36465 * rho 36465 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX170 rho : Seg34.F), (seg34AccY170 rho : Seg34.F)⟩
      ⟨(rho 36465 : Seg34.F), (rho 36466 : Seg34.F)⟩
      ⟨(rho 36472 : Seg34.F), (rho 36473 : Seg34.F)⟩
      ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
      ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg34_rows171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5209 rho ∧ Seg34.relationRow5210 rho ∧ Seg34.relationRow5211 rho ∧ Seg34.relationRow5212 rho ∧ Seg34.relationRow5213 rho ∧ Seg34.relationRow5214 rho ∧ Seg34.relationRow5215 rho ∧ Seg34.relationRow5216 rho ∧ Seg34.relationRow5217 rho ∧ Seg34.relationRow5218 rho ∧ Seg34.relationRow5219 rho ∧ Seg34.relationRow5220 rho ∧ Seg34.relationRow5221 rho ∧ Seg34.relationRow5222 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem seg34_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34163 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩ := by
  obtain ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := seg34_rows171 rho h
  unfold Seg34.relationRow5209 at r5209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209
  unfold Seg34.relationRow5210 at r5210
  unfold Seg34.relationRow5211 at r5211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5211
  unfold Seg34.relationRow5212 at r5212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5212
  unfold Seg34.relationRow5213 at r5213
  unfold Seg34.relationRow5214 at r5214
  unfold Seg34.relationRow5215 at r5215
  unfold Seg34.relationRow5216 at r5216
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5216
  unfold Seg34.relationRow5217 at r5217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5217
  unfold Seg34.relationRow5218 at r5218
  unfold Seg34.relationRow5219 at r5219
  unfold Seg34.relationRow5220 at r5220
  unfold Seg34.relationRow5221 at r5221
  unfold Seg34.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 34163 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
        ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩ := by
    have hnextx : seg34AccX172 rho = seg34AccX171 rho + rho 36488 := by
      unfold seg34AccX172 seg34AccX171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 21]
      ring
    have hnexty : seg34AccY172 rho = seg34AccY171 rho + rho 36489 := by
      unfold seg34AccY172 seg34AccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 21]
      ring
    have hsum : seg34AccX171 rho + seg34AccY171 rho = rho 36481 := by
      unfold seg34AccX171 seg34AccY171
      linear_combination r5209
    have ha0 : (rho 36479 + rho 36480) * (seg34AccX171 rho + seg34AccY171 rho) = rho 36482 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 36480 * seg34AccX171 rho = rho 36483 := by
      unfold seg34AccX171
      linear_combination r5211
    have ha2 : rho 36479 * seg34AccY171 rho = rho 36484 := by
      unfold seg34AccY171
      linear_combination r5212
    have ha3 : 3021 * rho 36483 * rho 36484 = rho 36485 := by
      linear_combination r5213
    have ha4 : rho 36486 * (1 + rho 36485) = rho 36483 + rho 36484 := by
      linear_combination r5214
    have ha5 : rho 36487 * (1 - rho 36485) = rho 36482 - rho 36483 - rho 36484 := by
      linear_combination r5215
    have haddx :
        rho 36486 * (1 + 3021 * (rho 36480 * seg34AccX171 rho) * (rho 36479 * seg34AccY171 rho)) =
          rho 36480 * seg34AccX171 rho + rho 36479 * seg34AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36487 * (1 - 3021 * (rho 36480 * seg34AccX171 rho) * (rho 36479 * seg34AccY171 rho)) =
          (-1) * (rho 36480 * seg34AccX171 rho) - rho 36479 * seg34AccY171 rho +
            (seg34AccY171 rho - seg34AccX171 rho * (-1)) * (rho 36479 + rho 36480) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36487 * (1 - rho 36485) = rho 36482 - rho 36483 - rho 36484 := ha5
        _ = (-1) * rho 36483 - rho 36484 + (seg34AccY171 rho - seg34AccX171 rho * (-1)) * (rho 36479 + rho 36480) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX172 rho = seg34AccX171 rho - Bool.toZMod bit * (seg34AccX171 rho - rho 36486) := by
      have hd : rho 36488 = Bool.toZMod bit * (rho 36486 - seg34AccX171 rho) := by
        rw [← hbit]
        unfold seg34AccX171
        linear_combination -r5216
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY172 rho = seg34AccY171 rho - Bool.toZMod bit * (seg34AccY171 rho - rho 36487) := by
      have hd : rho 36489 = Bool.toZMod bit * (rho 36487 - seg34AccY171 rho) := by
        rw [← hbit]
        unfold seg34AccY171
        linear_combination -r5217
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36479 * rho 36480 = rho 36490 := by linear_combination r5218
    have hd1 : rho 36479 * rho 36479 = rho 36491 := by linear_combination r5219
    have hd2 : rho 36480 * rho 36480 = rho 36492 := by linear_combination r5220
    have hd3 : rho 36493 * (rho 36480 * rho 36480 + rho 36479 * rho 36479 * (-1)) = 2 * (rho 36479 * rho 36480) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 36494 * (2 - (rho 36480 * rho 36480 + rho 36479 * rho 36479 * (-1))) = rho 36480 * rho 36480 - rho 36479 * rho 36479 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX171 rho : Seg34.F), (seg34AccY171 rho : Seg34.F)⟩
      ⟨(rho 36479 : Seg34.F), (rho 36480 : Seg34.F)⟩
      ⟨(rho 36486 : Seg34.F), (rho 36487 : Seg34.F)⟩
      ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
      ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg34_rows172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5223 rho ∧ Seg34.relationRow5224 rho ∧ Seg34.relationRow5225 rho ∧ Seg34.relationRow5226 rho ∧ Seg34.relationRow5227 rho ∧ Seg34.relationRow5228 rho ∧ Seg34.relationRow5229 rho ∧ Seg34.relationRow5230 rho ∧ Seg34.relationRow5231 rho ∧ Seg34.relationRow5232 rho ∧ Seg34.relationRow5233 rho ∧ Seg34.relationRow5234 rho ∧ Seg34.relationRow5235 rho ∧ Seg34.relationRow5236 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩

theorem seg34_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34164 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩ := seg34_rows172 rho h
  unfold Seg34.relationRow5223 at r5223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5223
  unfold Seg34.relationRow5224 at r5224
  unfold Seg34.relationRow5225 at r5225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5225
  unfold Seg34.relationRow5226 at r5226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226
  unfold Seg34.relationRow5227 at r5227
  unfold Seg34.relationRow5228 at r5228
  unfold Seg34.relationRow5229 at r5229
  unfold Seg34.relationRow5230 at r5230
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5230
  unfold Seg34.relationRow5231 at r5231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5231
  unfold Seg34.relationRow5232 at r5232
  unfold Seg34.relationRow5233 at r5233
  unfold Seg34.relationRow5234 at r5234
  unfold Seg34.relationRow5235 at r5235
  unfold Seg34.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 34164 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
        ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩ := by
    have hnextx : seg34AccX173 rho = seg34AccX172 rho + rho 36502 := by
      unfold seg34AccX173 seg34AccX172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 22]
      ring
    have hnexty : seg34AccY173 rho = seg34AccY172 rho + rho 36503 := by
      unfold seg34AccY173 seg34AccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 22]
      ring
    have hsum : seg34AccX172 rho + seg34AccY172 rho = rho 36495 := by
      unfold seg34AccX172 seg34AccY172
      linear_combination r5223
    have ha0 : (rho 36493 + rho 36494) * (seg34AccX172 rho + seg34AccY172 rho) = rho 36496 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 36494 * seg34AccX172 rho = rho 36497 := by
      unfold seg34AccX172
      linear_combination r5225
    have ha2 : rho 36493 * seg34AccY172 rho = rho 36498 := by
      unfold seg34AccY172
      linear_combination r5226
    have ha3 : 3021 * rho 36497 * rho 36498 = rho 36499 := by
      linear_combination r5227
    have ha4 : rho 36500 * (1 + rho 36499) = rho 36497 + rho 36498 := by
      linear_combination r5228
    have ha5 : rho 36501 * (1 - rho 36499) = rho 36496 - rho 36497 - rho 36498 := by
      linear_combination r5229
    have haddx :
        rho 36500 * (1 + 3021 * (rho 36494 * seg34AccX172 rho) * (rho 36493 * seg34AccY172 rho)) =
          rho 36494 * seg34AccX172 rho + rho 36493 * seg34AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36501 * (1 - 3021 * (rho 36494 * seg34AccX172 rho) * (rho 36493 * seg34AccY172 rho)) =
          (-1) * (rho 36494 * seg34AccX172 rho) - rho 36493 * seg34AccY172 rho +
            (seg34AccY172 rho - seg34AccX172 rho * (-1)) * (rho 36493 + rho 36494) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36501 * (1 - rho 36499) = rho 36496 - rho 36497 - rho 36498 := ha5
        _ = (-1) * rho 36497 - rho 36498 + (seg34AccY172 rho - seg34AccX172 rho * (-1)) * (rho 36493 + rho 36494) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX173 rho = seg34AccX172 rho - Bool.toZMod bit * (seg34AccX172 rho - rho 36500) := by
      have hd : rho 36502 = Bool.toZMod bit * (rho 36500 - seg34AccX172 rho) := by
        rw [← hbit]
        unfold seg34AccX172
        linear_combination -r5230
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY173 rho = seg34AccY172 rho - Bool.toZMod bit * (seg34AccY172 rho - rho 36501) := by
      have hd : rho 36503 = Bool.toZMod bit * (rho 36501 - seg34AccY172 rho) := by
        rw [← hbit]
        unfold seg34AccY172
        linear_combination -r5231
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36493 * rho 36494 = rho 36504 := by linear_combination r5232
    have hd1 : rho 36493 * rho 36493 = rho 36505 := by linear_combination r5233
    have hd2 : rho 36494 * rho 36494 = rho 36506 := by linear_combination r5234
    have hd3 : rho 36507 * (rho 36494 * rho 36494 + rho 36493 * rho 36493 * (-1)) = 2 * (rho 36493 * rho 36494) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 36508 * (2 - (rho 36494 * rho 36494 + rho 36493 * rho 36493 * (-1))) = rho 36494 * rho 36494 - rho 36493 * rho 36493 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX172 rho : Seg34.F), (seg34AccY172 rho : Seg34.F)⟩
      ⟨(rho 36493 : Seg34.F), (rho 36494 : Seg34.F)⟩
      ⟨(rho 36500 : Seg34.F), (rho 36501 : Seg34.F)⟩
      ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
      ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg34_rows173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5237 rho ∧ Seg34.relationRow5238 rho ∧ Seg34.relationRow5239 rho ∧ Seg34.relationRow5240 rho ∧ Seg34.relationRow5241 rho ∧ Seg34.relationRow5242 rho ∧ Seg34.relationRow5243 rho ∧ Seg34.relationRow5244 rho ∧ Seg34.relationRow5245 rho ∧ Seg34.relationRow5246 rho ∧ Seg34.relationRow5247 rho ∧ Seg34.relationRow5248 rho ∧ Seg34.relationRow5249 rho ∧ Seg34.relationRow5250 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩

theorem seg34_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34165 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩ := by
  obtain ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩ := seg34_rows173 rho h
  unfold Seg34.relationRow5237 at r5237
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5237
  unfold Seg34.relationRow5238 at r5238
  unfold Seg34.relationRow5239 at r5239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239
  unfold Seg34.relationRow5240 at r5240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240
  unfold Seg34.relationRow5241 at r5241
  unfold Seg34.relationRow5242 at r5242
  unfold Seg34.relationRow5243 at r5243
  unfold Seg34.relationRow5244 at r5244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5244
  unfold Seg34.relationRow5245 at r5245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5245
  unfold Seg34.relationRow5246 at r5246
  unfold Seg34.relationRow5247 at r5247
  unfold Seg34.relationRow5248 at r5248
  unfold Seg34.relationRow5249 at r5249
  unfold Seg34.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 34165 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
        ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩ := by
    have hnextx : seg34AccX174 rho = seg34AccX173 rho + rho 36516 := by
      unfold seg34AccX174 seg34AccX173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 23]
      ring
    have hnexty : seg34AccY174 rho = seg34AccY173 rho + rho 36517 := by
      unfold seg34AccY174 seg34AccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 23]
      ring
    have hsum : seg34AccX173 rho + seg34AccY173 rho = rho 36509 := by
      unfold seg34AccX173 seg34AccY173
      linear_combination r5237
    have ha0 : (rho 36507 + rho 36508) * (seg34AccX173 rho + seg34AccY173 rho) = rho 36510 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 36508 * seg34AccX173 rho = rho 36511 := by
      unfold seg34AccX173
      linear_combination r5239
    have ha2 : rho 36507 * seg34AccY173 rho = rho 36512 := by
      unfold seg34AccY173
      linear_combination r5240
    have ha3 : 3021 * rho 36511 * rho 36512 = rho 36513 := by
      linear_combination r5241
    have ha4 : rho 36514 * (1 + rho 36513) = rho 36511 + rho 36512 := by
      linear_combination r5242
    have ha5 : rho 36515 * (1 - rho 36513) = rho 36510 - rho 36511 - rho 36512 := by
      linear_combination r5243
    have haddx :
        rho 36514 * (1 + 3021 * (rho 36508 * seg34AccX173 rho) * (rho 36507 * seg34AccY173 rho)) =
          rho 36508 * seg34AccX173 rho + rho 36507 * seg34AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36515 * (1 - 3021 * (rho 36508 * seg34AccX173 rho) * (rho 36507 * seg34AccY173 rho)) =
          (-1) * (rho 36508 * seg34AccX173 rho) - rho 36507 * seg34AccY173 rho +
            (seg34AccY173 rho - seg34AccX173 rho * (-1)) * (rho 36507 + rho 36508) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36515 * (1 - rho 36513) = rho 36510 - rho 36511 - rho 36512 := ha5
        _ = (-1) * rho 36511 - rho 36512 + (seg34AccY173 rho - seg34AccX173 rho * (-1)) * (rho 36507 + rho 36508) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX174 rho = seg34AccX173 rho - Bool.toZMod bit * (seg34AccX173 rho - rho 36514) := by
      have hd : rho 36516 = Bool.toZMod bit * (rho 36514 - seg34AccX173 rho) := by
        rw [← hbit]
        unfold seg34AccX173
        linear_combination -r5244
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY174 rho = seg34AccY173 rho - Bool.toZMod bit * (seg34AccY173 rho - rho 36515) := by
      have hd : rho 36517 = Bool.toZMod bit * (rho 36515 - seg34AccY173 rho) := by
        rw [← hbit]
        unfold seg34AccY173
        linear_combination -r5245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36507 * rho 36508 = rho 36518 := by linear_combination r5246
    have hd1 : rho 36507 * rho 36507 = rho 36519 := by linear_combination r5247
    have hd2 : rho 36508 * rho 36508 = rho 36520 := by linear_combination r5248
    have hd3 : rho 36521 * (rho 36508 * rho 36508 + rho 36507 * rho 36507 * (-1)) = 2 * (rho 36507 * rho 36508) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 36522 * (2 - (rho 36508 * rho 36508 + rho 36507 * rho 36507 * (-1))) = rho 36508 * rho 36508 - rho 36507 * rho 36507 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX173 rho : Seg34.F), (seg34AccY173 rho : Seg34.F)⟩
      ⟨(rho 36507 : Seg34.F), (rho 36508 : Seg34.F)⟩
      ⟨(rho 36514 : Seg34.F), (rho 36515 : Seg34.F)⟩
      ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
      ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg34_rows174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5251 rho ∧ Seg34.relationRow5252 rho ∧ Seg34.relationRow5253 rho ∧ Seg34.relationRow5254 rho ∧ Seg34.relationRow5255 rho ∧ Seg34.relationRow5256 rho ∧ Seg34.relationRow5257 rho ∧ Seg34.relationRow5258 rho ∧ Seg34.relationRow5259 rho ∧ Seg34.relationRow5260 rho ∧ Seg34.relationRow5261 rho ∧ Seg34.relationRow5262 rho ∧ Seg34.relationRow5263 rho ∧ Seg34.relationRow5264 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩

theorem seg34_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34166 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩ := by
  obtain ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩ := seg34_rows174 rho h
  unfold Seg34.relationRow5251 at r5251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5251
  unfold Seg34.relationRow5252 at r5252
  unfold Seg34.relationRow5253 at r5253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253
  unfold Seg34.relationRow5254 at r5254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5254
  unfold Seg34.relationRow5255 at r5255
  unfold Seg34.relationRow5256 at r5256
  unfold Seg34.relationRow5257 at r5257
  unfold Seg34.relationRow5258 at r5258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5258
  unfold Seg34.relationRow5259 at r5259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259
  unfold Seg34.relationRow5260 at r5260
  unfold Seg34.relationRow5261 at r5261
  unfold Seg34.relationRow5262 at r5262
  unfold Seg34.relationRow5263 at r5263
  unfold Seg34.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 34166 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
        ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩ := by
    have hnextx : seg34AccX175 rho = seg34AccX174 rho + rho 36530 := by
      unfold seg34AccX175 seg34AccX174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 24]
      ring
    have hnexty : seg34AccY175 rho = seg34AccY174 rho + rho 36531 := by
      unfold seg34AccY175 seg34AccY174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 24]
      ring
    have hsum : seg34AccX174 rho + seg34AccY174 rho = rho 36523 := by
      unfold seg34AccX174 seg34AccY174
      linear_combination r5251
    have ha0 : (rho 36521 + rho 36522) * (seg34AccX174 rho + seg34AccY174 rho) = rho 36524 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 36522 * seg34AccX174 rho = rho 36525 := by
      unfold seg34AccX174
      linear_combination r5253
    have ha2 : rho 36521 * seg34AccY174 rho = rho 36526 := by
      unfold seg34AccY174
      linear_combination r5254
    have ha3 : 3021 * rho 36525 * rho 36526 = rho 36527 := by
      linear_combination r5255
    have ha4 : rho 36528 * (1 + rho 36527) = rho 36525 + rho 36526 := by
      linear_combination r5256
    have ha5 : rho 36529 * (1 - rho 36527) = rho 36524 - rho 36525 - rho 36526 := by
      linear_combination r5257
    have haddx :
        rho 36528 * (1 + 3021 * (rho 36522 * seg34AccX174 rho) * (rho 36521 * seg34AccY174 rho)) =
          rho 36522 * seg34AccX174 rho + rho 36521 * seg34AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36529 * (1 - 3021 * (rho 36522 * seg34AccX174 rho) * (rho 36521 * seg34AccY174 rho)) =
          (-1) * (rho 36522 * seg34AccX174 rho) - rho 36521 * seg34AccY174 rho +
            (seg34AccY174 rho - seg34AccX174 rho * (-1)) * (rho 36521 + rho 36522) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36529 * (1 - rho 36527) = rho 36524 - rho 36525 - rho 36526 := ha5
        _ = (-1) * rho 36525 - rho 36526 + (seg34AccY174 rho - seg34AccX174 rho * (-1)) * (rho 36521 + rho 36522) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX175 rho = seg34AccX174 rho - Bool.toZMod bit * (seg34AccX174 rho - rho 36528) := by
      have hd : rho 36530 = Bool.toZMod bit * (rho 36528 - seg34AccX174 rho) := by
        rw [← hbit]
        unfold seg34AccX174
        linear_combination -r5258
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY175 rho = seg34AccY174 rho - Bool.toZMod bit * (seg34AccY174 rho - rho 36529) := by
      have hd : rho 36531 = Bool.toZMod bit * (rho 36529 - seg34AccY174 rho) := by
        rw [← hbit]
        unfold seg34AccY174
        linear_combination -r5259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36521 * rho 36522 = rho 36532 := by linear_combination r5260
    have hd1 : rho 36521 * rho 36521 = rho 36533 := by linear_combination r5261
    have hd2 : rho 36522 * rho 36522 = rho 36534 := by linear_combination r5262
    have hd3 : rho 36535 * (rho 36522 * rho 36522 + rho 36521 * rho 36521 * (-1)) = 2 * (rho 36521 * rho 36522) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 36536 * (2 - (rho 36522 * rho 36522 + rho 36521 * rho 36521 * (-1))) = rho 36522 * rho 36522 - rho 36521 * rho 36521 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX174 rho : Seg34.F), (seg34AccY174 rho : Seg34.F)⟩
      ⟨(rho 36521 : Seg34.F), (rho 36522 : Seg34.F)⟩
      ⟨(rho 36528 : Seg34.F), (rho 36529 : Seg34.F)⟩
      ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
      ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg34_rows175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5265 rho ∧ Seg34.relationRow5266 rho ∧ Seg34.relationRow5267 rho ∧ Seg34.relationRow5268 rho ∧ Seg34.relationRow5269 rho ∧ Seg34.relationRow5270 rho ∧ Seg34.relationRow5271 rho ∧ Seg34.relationRow5272 rho ∧ Seg34.relationRow5273 rho ∧ Seg34.relationRow5274 rho ∧ Seg34.relationRow5275 rho ∧ Seg34.relationRow5276 rho ∧ Seg34.relationRow5277 rho ∧ Seg34.relationRow5278 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  exact ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩

theorem seg34_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34167 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩ := by
  obtain ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩ := seg34_rows175 rho h
  unfold Seg34.relationRow5265 at r5265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265
  unfold Seg34.relationRow5266 at r5266
  unfold Seg34.relationRow5267 at r5267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5267
  unfold Seg34.relationRow5268 at r5268
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5268
  unfold Seg34.relationRow5269 at r5269
  unfold Seg34.relationRow5270 at r5270
  unfold Seg34.relationRow5271 at r5271
  unfold Seg34.relationRow5272 at r5272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272
  unfold Seg34.relationRow5273 at r5273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273
  unfold Seg34.relationRow5274 at r5274
  unfold Seg34.relationRow5275 at r5275
  unfold Seg34.relationRow5276 at r5276
  unfold Seg34.relationRow5277 at r5277
  unfold Seg34.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 34167 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
        ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
        ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
        ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩ := by
    have hnextx : seg34AccX176 rho = seg34AccX175 rho + rho 36544 := by
      unfold seg34AccX176 seg34AccX175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 25]
      ring
    have hnexty : seg34AccY176 rho = seg34AccY175 rho + rho 36545 := by
      unfold seg34AccY176 seg34AccY175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 25]
      ring
    have hsum : seg34AccX175 rho + seg34AccY175 rho = rho 36537 := by
      unfold seg34AccX175 seg34AccY175
      linear_combination r5265
    have ha0 : (rho 36535 + rho 36536) * (seg34AccX175 rho + seg34AccY175 rho) = rho 36538 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 36536 * seg34AccX175 rho = rho 36539 := by
      unfold seg34AccX175
      linear_combination r5267
    have ha2 : rho 36535 * seg34AccY175 rho = rho 36540 := by
      unfold seg34AccY175
      linear_combination r5268
    have ha3 : 3021 * rho 36539 * rho 36540 = rho 36541 := by
      linear_combination r5269
    have ha4 : rho 36542 * (1 + rho 36541) = rho 36539 + rho 36540 := by
      linear_combination r5270
    have ha5 : rho 36543 * (1 - rho 36541) = rho 36538 - rho 36539 - rho 36540 := by
      linear_combination r5271
    have haddx :
        rho 36542 * (1 + 3021 * (rho 36536 * seg34AccX175 rho) * (rho 36535 * seg34AccY175 rho)) =
          rho 36536 * seg34AccX175 rho + rho 36535 * seg34AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36543 * (1 - 3021 * (rho 36536 * seg34AccX175 rho) * (rho 36535 * seg34AccY175 rho)) =
          (-1) * (rho 36536 * seg34AccX175 rho) - rho 36535 * seg34AccY175 rho +
            (seg34AccY175 rho - seg34AccX175 rho * (-1)) * (rho 36535 + rho 36536) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36543 * (1 - rho 36541) = rho 36538 - rho 36539 - rho 36540 := ha5
        _ = (-1) * rho 36539 - rho 36540 + (seg34AccY175 rho - seg34AccX175 rho * (-1)) * (rho 36535 + rho 36536) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX176 rho = seg34AccX175 rho - Bool.toZMod bit * (seg34AccX175 rho - rho 36542) := by
      have hd : rho 36544 = Bool.toZMod bit * (rho 36542 - seg34AccX175 rho) := by
        rw [← hbit]
        unfold seg34AccX175
        linear_combination -r5272
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY176 rho = seg34AccY175 rho - Bool.toZMod bit * (seg34AccY175 rho - rho 36543) := by
      have hd : rho 36545 = Bool.toZMod bit * (rho 36543 - seg34AccY175 rho) := by
        rw [← hbit]
        unfold seg34AccY175
        linear_combination -r5273
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36535 * rho 36536 = rho 36546 := by linear_combination r5274
    have hd1 : rho 36535 * rho 36535 = rho 36547 := by linear_combination r5275
    have hd2 : rho 36536 * rho 36536 = rho 36548 := by linear_combination r5276
    have hd3 : rho 36549 * (rho 36536 * rho 36536 + rho 36535 * rho 36535 * (-1)) = 2 * (rho 36535 * rho 36536) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 36550 * (2 - (rho 36536 * rho 36536 + rho 36535 * rho 36535 * (-1))) = rho 36536 * rho 36536 - rho 36535 * rho 36535 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX175 rho : Seg34.F), (seg34AccY175 rho : Seg34.F)⟩
      ⟨(rho 36535 : Seg34.F), (rho 36536 : Seg34.F)⟩
      ⟨(rho 36542 : Seg34.F), (rho 36543 : Seg34.F)⟩
      ⟨(seg34AccX176 rho : Seg34.F), (seg34AccY176 rho : Seg34.F)⟩
      ⟨(rho 36549 : Seg34.F), (rho 36550 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg34_hstep_c15 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 165 ≤ i → i < 176 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg34_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg34_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg34_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg34_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg34_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg34_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg34_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg34_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg34_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg34_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
