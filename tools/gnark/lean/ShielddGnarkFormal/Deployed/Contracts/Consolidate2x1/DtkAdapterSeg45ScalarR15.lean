import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5125 rho ∧ Seg45.relationRow5126 rho ∧ Seg45.relationRow5127 rho ∧ Seg45.relationRow5128 rho ∧ Seg45.relationRow5129 rho ∧ Seg45.relationRow5130 rho ∧ Seg45.relationRow5131 rho ∧ Seg45.relationRow5132 rho ∧ Seg45.relationRow5133 rho ∧ Seg45.relationRow5134 rho ∧ Seg45.relationRow5135 rho ∧ Seg45.relationRow5136 rho ∧ Seg45.relationRow5137 rho ∧ Seg45.relationRow5138 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩

theorem seg45_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41113 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩ := seg45_rows165 rho h
  unfold Seg45.relationRow5125 at r5125
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5125
  unfold Seg45.relationRow5126 at r5126
  unfold Seg45.relationRow5127 at r5127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5127
  unfold Seg45.relationRow5128 at r5128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5128
  unfold Seg45.relationRow5129 at r5129
  unfold Seg45.relationRow5130 at r5130
  unfold Seg45.relationRow5131 at r5131
  unfold Seg45.relationRow5132 at r5132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5132
  unfold Seg45.relationRow5133 at r5133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5133
  unfold Seg45.relationRow5134 at r5134
  unfold Seg45.relationRow5135 at r5135
  unfold Seg45.relationRow5136 at r5136
  unfold Seg45.relationRow5137 at r5137
  unfold Seg45.relationRow5138 at r5138
  have hrung165 (bit : Bool) (hbit : rho 41113 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
        ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩ := by
    have hnextx : seg45AccX166 rho = seg45AccX165 rho + rho 43360 := by
      unfold seg45AccX166 seg45AccX165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 43150 14]
      ring
    have hnexty : seg45AccY166 rho = seg45AccY165 rho + rho 43361 := by
      unfold seg45AccY166 seg45AccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 43151 14]
      ring
    have hsum : seg45AccX165 rho + seg45AccY165 rho = rho 43353 := by
      unfold seg45AccX165 seg45AccY165
      linear_combination r5125
    have ha0 : (rho 43351 + rho 43352) * (seg45AccX165 rho + seg45AccY165 rho) = rho 43354 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 43352 * seg45AccX165 rho = rho 43355 := by
      unfold seg45AccX165
      linear_combination r5127
    have ha2 : rho 43351 * seg45AccY165 rho = rho 43356 := by
      unfold seg45AccY165
      linear_combination r5128
    have ha3 : 3021 * rho 43355 * rho 43356 = rho 43357 := by
      linear_combination r5129
    have ha4 : rho 43358 * (1 + rho 43357) = rho 43355 + rho 43356 := by
      linear_combination r5130
    have ha5 : rho 43359 * (1 - rho 43357) = rho 43354 - rho 43355 - rho 43356 := by
      linear_combination r5131
    have haddx :
        rho 43358 * (1 + 3021 * (rho 43352 * seg45AccX165 rho) * (rho 43351 * seg45AccY165 rho)) =
          rho 43352 * seg45AccX165 rho + rho 43351 * seg45AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43359 * (1 - 3021 * (rho 43352 * seg45AccX165 rho) * (rho 43351 * seg45AccY165 rho)) =
          (-1) * (rho 43352 * seg45AccX165 rho) - rho 43351 * seg45AccY165 rho +
            (seg45AccY165 rho - seg45AccX165 rho * (-1)) * (rho 43351 + rho 43352) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43359 * (1 - rho 43357) = rho 43354 - rho 43355 - rho 43356 := ha5
        _ = (-1) * rho 43355 - rho 43356 + (seg45AccY165 rho - seg45AccX165 rho * (-1)) * (rho 43351 + rho 43352) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX166 rho = seg45AccX165 rho - Bool.toZMod bit * (seg45AccX165 rho - rho 43358) := by
      have hd : rho 43360 = Bool.toZMod bit * (rho 43358 - seg45AccX165 rho) := by
        rw [← hbit]
        unfold seg45AccX165
        linear_combination -r5132
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY166 rho = seg45AccY165 rho - Bool.toZMod bit * (seg45AccY165 rho - rho 43359) := by
      have hd : rho 43361 = Bool.toZMod bit * (rho 43359 - seg45AccY165 rho) := by
        rw [← hbit]
        unfold seg45AccY165
        linear_combination -r5133
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43351 * rho 43352 = rho 43362 := by linear_combination r5134
    have hd1 : rho 43351 * rho 43351 = rho 43363 := by linear_combination r5135
    have hd2 : rho 43352 * rho 43352 = rho 43364 := by linear_combination r5136
    have hd3 : rho 43365 * (rho 43352 * rho 43352 + rho 43351 * rho 43351 * (-1)) = 2 * (rho 43351 * rho 43352) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 43366 * (2 - (rho 43352 * rho 43352 + rho 43351 * rho 43351 * (-1))) = rho 43352 * rho 43352 - rho 43351 * rho 43351 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX165 rho : Seg45.F), (seg45AccY165 rho : Seg45.F)⟩
      ⟨(rho 43351 : Seg45.F), (rho 43352 : Seg45.F)⟩
      ⟨(rho 43358 : Seg45.F), (rho 43359 : Seg45.F)⟩
      ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
      ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg45_rows166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5139 rho ∧ Seg45.relationRow5140 rho ∧ Seg45.relationRow5141 rho ∧ Seg45.relationRow5142 rho ∧ Seg45.relationRow5143 rho ∧ Seg45.relationRow5144 rho ∧ Seg45.relationRow5145 rho ∧ Seg45.relationRow5146 rho ∧ Seg45.relationRow5147 rho ∧ Seg45.relationRow5148 rho ∧ Seg45.relationRow5149 rho ∧ Seg45.relationRow5150 rho ∧ Seg45.relationRow5151 rho ∧ Seg45.relationRow5152 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩

theorem seg45_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41114 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩ := by
  obtain ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩ := seg45_rows166 rho h
  unfold Seg45.relationRow5139 at r5139
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5139
  unfold Seg45.relationRow5140 at r5140
  unfold Seg45.relationRow5141 at r5141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5141
  unfold Seg45.relationRow5142 at r5142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142
  unfold Seg45.relationRow5143 at r5143
  unfold Seg45.relationRow5144 at r5144
  unfold Seg45.relationRow5145 at r5145
  unfold Seg45.relationRow5146 at r5146
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5146
  unfold Seg45.relationRow5147 at r5147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5147
  unfold Seg45.relationRow5148 at r5148
  unfold Seg45.relationRow5149 at r5149
  unfold Seg45.relationRow5150 at r5150
  unfold Seg45.relationRow5151 at r5151
  unfold Seg45.relationRow5152 at r5152
  have hrung166 (bit : Bool) (hbit : rho 41114 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
        ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩ := by
    have hnextx : seg45AccX167 rho = seg45AccX166 rho + rho 43374 := by
      unfold seg45AccX167 seg45AccX166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 16]
      ring
    have hnexty : seg45AccY167 rho = seg45AccY166 rho + rho 43375 := by
      unfold seg45AccY167 seg45AccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 16]
      ring
    have hsum : seg45AccX166 rho + seg45AccY166 rho = rho 43367 := by
      unfold seg45AccX166 seg45AccY166
      linear_combination r5139
    have ha0 : (rho 43365 + rho 43366) * (seg45AccX166 rho + seg45AccY166 rho) = rho 43368 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 43366 * seg45AccX166 rho = rho 43369 := by
      unfold seg45AccX166
      linear_combination r5141
    have ha2 : rho 43365 * seg45AccY166 rho = rho 43370 := by
      unfold seg45AccY166
      linear_combination r5142
    have ha3 : 3021 * rho 43369 * rho 43370 = rho 43371 := by
      linear_combination r5143
    have ha4 : rho 43372 * (1 + rho 43371) = rho 43369 + rho 43370 := by
      linear_combination r5144
    have ha5 : rho 43373 * (1 - rho 43371) = rho 43368 - rho 43369 - rho 43370 := by
      linear_combination r5145
    have haddx :
        rho 43372 * (1 + 3021 * (rho 43366 * seg45AccX166 rho) * (rho 43365 * seg45AccY166 rho)) =
          rho 43366 * seg45AccX166 rho + rho 43365 * seg45AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43373 * (1 - 3021 * (rho 43366 * seg45AccX166 rho) * (rho 43365 * seg45AccY166 rho)) =
          (-1) * (rho 43366 * seg45AccX166 rho) - rho 43365 * seg45AccY166 rho +
            (seg45AccY166 rho - seg45AccX166 rho * (-1)) * (rho 43365 + rho 43366) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43373 * (1 - rho 43371) = rho 43368 - rho 43369 - rho 43370 := ha5
        _ = (-1) * rho 43369 - rho 43370 + (seg45AccY166 rho - seg45AccX166 rho * (-1)) * (rho 43365 + rho 43366) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX167 rho = seg45AccX166 rho - Bool.toZMod bit * (seg45AccX166 rho - rho 43372) := by
      have hd : rho 43374 = Bool.toZMod bit * (rho 43372 - seg45AccX166 rho) := by
        rw [← hbit]
        unfold seg45AccX166
        linear_combination -r5146
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY167 rho = seg45AccY166 rho - Bool.toZMod bit * (seg45AccY166 rho - rho 43373) := by
      have hd : rho 43375 = Bool.toZMod bit * (rho 43373 - seg45AccY166 rho) := by
        rw [← hbit]
        unfold seg45AccY166
        linear_combination -r5147
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43365 * rho 43366 = rho 43376 := by linear_combination r5148
    have hd1 : rho 43365 * rho 43365 = rho 43377 := by linear_combination r5149
    have hd2 : rho 43366 * rho 43366 = rho 43378 := by linear_combination r5150
    have hd3 : rho 43379 * (rho 43366 * rho 43366 + rho 43365 * rho 43365 * (-1)) = 2 * (rho 43365 * rho 43366) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 43380 * (2 - (rho 43366 * rho 43366 + rho 43365 * rho 43365 * (-1))) = rho 43366 * rho 43366 - rho 43365 * rho 43365 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX166 rho : Seg45.F), (seg45AccY166 rho : Seg45.F)⟩
      ⟨(rho 43365 : Seg45.F), (rho 43366 : Seg45.F)⟩
      ⟨(rho 43372 : Seg45.F), (rho 43373 : Seg45.F)⟩
      ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
      ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg45_rows167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5153 rho ∧ Seg45.relationRow5154 rho ∧ Seg45.relationRow5155 rho ∧ Seg45.relationRow5156 rho ∧ Seg45.relationRow5157 rho ∧ Seg45.relationRow5158 rho ∧ Seg45.relationRow5159 rho ∧ Seg45.relationRow5160 rho ∧ Seg45.relationRow5161 rho ∧ Seg45.relationRow5162 rho ∧ Seg45.relationRow5163 rho ∧ Seg45.relationRow5164 rho ∧ Seg45.relationRow5165 rho ∧ Seg45.relationRow5166 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩

theorem seg45_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41115 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩ := by
  obtain ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩ := seg45_rows167 rho h
  unfold Seg45.relationRow5153 at r5153
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5153
  unfold Seg45.relationRow5154 at r5154
  unfold Seg45.relationRow5155 at r5155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155
  unfold Seg45.relationRow5156 at r5156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156
  unfold Seg45.relationRow5157 at r5157
  unfold Seg45.relationRow5158 at r5158
  unfold Seg45.relationRow5159 at r5159
  unfold Seg45.relationRow5160 at r5160
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5160
  unfold Seg45.relationRow5161 at r5161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161
  unfold Seg45.relationRow5162 at r5162
  unfold Seg45.relationRow5163 at r5163
  unfold Seg45.relationRow5164 at r5164
  unfold Seg45.relationRow5165 at r5165
  unfold Seg45.relationRow5166 at r5166
  have hrung167 (bit : Bool) (hbit : rho 41115 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
        ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩ := by
    have hnextx : seg45AccX168 rho = seg45AccX167 rho + rho 43388 := by
      unfold seg45AccX168 seg45AccX167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 17]
      ring
    have hnexty : seg45AccY168 rho = seg45AccY167 rho + rho 43389 := by
      unfold seg45AccY168 seg45AccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 17]
      ring
    have hsum : seg45AccX167 rho + seg45AccY167 rho = rho 43381 := by
      unfold seg45AccX167 seg45AccY167
      linear_combination r5153
    have ha0 : (rho 43379 + rho 43380) * (seg45AccX167 rho + seg45AccY167 rho) = rho 43382 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 43380 * seg45AccX167 rho = rho 43383 := by
      unfold seg45AccX167
      linear_combination r5155
    have ha2 : rho 43379 * seg45AccY167 rho = rho 43384 := by
      unfold seg45AccY167
      linear_combination r5156
    have ha3 : 3021 * rho 43383 * rho 43384 = rho 43385 := by
      linear_combination r5157
    have ha4 : rho 43386 * (1 + rho 43385) = rho 43383 + rho 43384 := by
      linear_combination r5158
    have ha5 : rho 43387 * (1 - rho 43385) = rho 43382 - rho 43383 - rho 43384 := by
      linear_combination r5159
    have haddx :
        rho 43386 * (1 + 3021 * (rho 43380 * seg45AccX167 rho) * (rho 43379 * seg45AccY167 rho)) =
          rho 43380 * seg45AccX167 rho + rho 43379 * seg45AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43387 * (1 - 3021 * (rho 43380 * seg45AccX167 rho) * (rho 43379 * seg45AccY167 rho)) =
          (-1) * (rho 43380 * seg45AccX167 rho) - rho 43379 * seg45AccY167 rho +
            (seg45AccY167 rho - seg45AccX167 rho * (-1)) * (rho 43379 + rho 43380) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43387 * (1 - rho 43385) = rho 43382 - rho 43383 - rho 43384 := ha5
        _ = (-1) * rho 43383 - rho 43384 + (seg45AccY167 rho - seg45AccX167 rho * (-1)) * (rho 43379 + rho 43380) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX168 rho = seg45AccX167 rho - Bool.toZMod bit * (seg45AccX167 rho - rho 43386) := by
      have hd : rho 43388 = Bool.toZMod bit * (rho 43386 - seg45AccX167 rho) := by
        rw [← hbit]
        unfold seg45AccX167
        linear_combination -r5160
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY168 rho = seg45AccY167 rho - Bool.toZMod bit * (seg45AccY167 rho - rho 43387) := by
      have hd : rho 43389 = Bool.toZMod bit * (rho 43387 - seg45AccY167 rho) := by
        rw [← hbit]
        unfold seg45AccY167
        linear_combination -r5161
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43379 * rho 43380 = rho 43390 := by linear_combination r5162
    have hd1 : rho 43379 * rho 43379 = rho 43391 := by linear_combination r5163
    have hd2 : rho 43380 * rho 43380 = rho 43392 := by linear_combination r5164
    have hd3 : rho 43393 * (rho 43380 * rho 43380 + rho 43379 * rho 43379 * (-1)) = 2 * (rho 43379 * rho 43380) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 43394 * (2 - (rho 43380 * rho 43380 + rho 43379 * rho 43379 * (-1))) = rho 43380 * rho 43380 - rho 43379 * rho 43379 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX167 rho : Seg45.F), (seg45AccY167 rho : Seg45.F)⟩
      ⟨(rho 43379 : Seg45.F), (rho 43380 : Seg45.F)⟩
      ⟨(rho 43386 : Seg45.F), (rho 43387 : Seg45.F)⟩
      ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
      ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg45_rows168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5167 rho ∧ Seg45.relationRow5168 rho ∧ Seg45.relationRow5169 rho ∧ Seg45.relationRow5170 rho ∧ Seg45.relationRow5171 rho ∧ Seg45.relationRow5172 rho ∧ Seg45.relationRow5173 rho ∧ Seg45.relationRow5174 rho ∧ Seg45.relationRow5175 rho ∧ Seg45.relationRow5176 rho ∧ Seg45.relationRow5177 rho ∧ Seg45.relationRow5178 rho ∧ Seg45.relationRow5179 rho ∧ Seg45.relationRow5180 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg45_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41116 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩ := by
  obtain ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg45_rows168 rho h
  unfold Seg45.relationRow5167 at r5167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5167
  unfold Seg45.relationRow5168 at r5168
  unfold Seg45.relationRow5169 at r5169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169
  unfold Seg45.relationRow5170 at r5170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170
  unfold Seg45.relationRow5171 at r5171
  unfold Seg45.relationRow5172 at r5172
  unfold Seg45.relationRow5173 at r5173
  unfold Seg45.relationRow5174 at r5174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174
  unfold Seg45.relationRow5175 at r5175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175
  unfold Seg45.relationRow5176 at r5176
  unfold Seg45.relationRow5177 at r5177
  unfold Seg45.relationRow5178 at r5178
  unfold Seg45.relationRow5179 at r5179
  unfold Seg45.relationRow5180 at r5180
  have hrung168 (bit : Bool) (hbit : rho 41116 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
        ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩ := by
    have hnextx : seg45AccX169 rho = seg45AccX168 rho + rho 43402 := by
      unfold seg45AccX169 seg45AccX168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 18]
      ring
    have hnexty : seg45AccY169 rho = seg45AccY168 rho + rho 43403 := by
      unfold seg45AccY169 seg45AccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 18]
      ring
    have hsum : seg45AccX168 rho + seg45AccY168 rho = rho 43395 := by
      unfold seg45AccX168 seg45AccY168
      linear_combination r5167
    have ha0 : (rho 43393 + rho 43394) * (seg45AccX168 rho + seg45AccY168 rho) = rho 43396 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 43394 * seg45AccX168 rho = rho 43397 := by
      unfold seg45AccX168
      linear_combination r5169
    have ha2 : rho 43393 * seg45AccY168 rho = rho 43398 := by
      unfold seg45AccY168
      linear_combination r5170
    have ha3 : 3021 * rho 43397 * rho 43398 = rho 43399 := by
      linear_combination r5171
    have ha4 : rho 43400 * (1 + rho 43399) = rho 43397 + rho 43398 := by
      linear_combination r5172
    have ha5 : rho 43401 * (1 - rho 43399) = rho 43396 - rho 43397 - rho 43398 := by
      linear_combination r5173
    have haddx :
        rho 43400 * (1 + 3021 * (rho 43394 * seg45AccX168 rho) * (rho 43393 * seg45AccY168 rho)) =
          rho 43394 * seg45AccX168 rho + rho 43393 * seg45AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43401 * (1 - 3021 * (rho 43394 * seg45AccX168 rho) * (rho 43393 * seg45AccY168 rho)) =
          (-1) * (rho 43394 * seg45AccX168 rho) - rho 43393 * seg45AccY168 rho +
            (seg45AccY168 rho - seg45AccX168 rho * (-1)) * (rho 43393 + rho 43394) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43401 * (1 - rho 43399) = rho 43396 - rho 43397 - rho 43398 := ha5
        _ = (-1) * rho 43397 - rho 43398 + (seg45AccY168 rho - seg45AccX168 rho * (-1)) * (rho 43393 + rho 43394) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX169 rho = seg45AccX168 rho - Bool.toZMod bit * (seg45AccX168 rho - rho 43400) := by
      have hd : rho 43402 = Bool.toZMod bit * (rho 43400 - seg45AccX168 rho) := by
        rw [← hbit]
        unfold seg45AccX168
        linear_combination -r5174
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY169 rho = seg45AccY168 rho - Bool.toZMod bit * (seg45AccY168 rho - rho 43401) := by
      have hd : rho 43403 = Bool.toZMod bit * (rho 43401 - seg45AccY168 rho) := by
        rw [← hbit]
        unfold seg45AccY168
        linear_combination -r5175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43393 * rho 43394 = rho 43404 := by linear_combination r5176
    have hd1 : rho 43393 * rho 43393 = rho 43405 := by linear_combination r5177
    have hd2 : rho 43394 * rho 43394 = rho 43406 := by linear_combination r5178
    have hd3 : rho 43407 * (rho 43394 * rho 43394 + rho 43393 * rho 43393 * (-1)) = 2 * (rho 43393 * rho 43394) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 43408 * (2 - (rho 43394 * rho 43394 + rho 43393 * rho 43393 * (-1))) = rho 43394 * rho 43394 - rho 43393 * rho 43393 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX168 rho : Seg45.F), (seg45AccY168 rho : Seg45.F)⟩
      ⟨(rho 43393 : Seg45.F), (rho 43394 : Seg45.F)⟩
      ⟨(rho 43400 : Seg45.F), (rho 43401 : Seg45.F)⟩
      ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
      ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg45_rows169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5181 rho ∧ Seg45.relationRow5182 rho ∧ Seg45.relationRow5183 rho ∧ Seg45.relationRow5184 rho ∧ Seg45.relationRow5185 rho ∧ Seg45.relationRow5186 rho ∧ Seg45.relationRow5187 rho ∧ Seg45.relationRow5188 rho ∧ Seg45.relationRow5189 rho ∧ Seg45.relationRow5190 rho ∧ Seg45.relationRow5191 rho ∧ Seg45.relationRow5192 rho ∧ Seg45.relationRow5193 rho ∧ Seg45.relationRow5194 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩

theorem seg45_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41117 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩ := seg45_rows169 rho h
  unfold Seg45.relationRow5181 at r5181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181
  unfold Seg45.relationRow5182 at r5182
  unfold Seg45.relationRow5183 at r5183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183
  unfold Seg45.relationRow5184 at r5184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5184
  unfold Seg45.relationRow5185 at r5185
  unfold Seg45.relationRow5186 at r5186
  unfold Seg45.relationRow5187 at r5187
  unfold Seg45.relationRow5188 at r5188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188
  unfold Seg45.relationRow5189 at r5189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5189
  unfold Seg45.relationRow5190 at r5190
  unfold Seg45.relationRow5191 at r5191
  unfold Seg45.relationRow5192 at r5192
  unfold Seg45.relationRow5193 at r5193
  unfold Seg45.relationRow5194 at r5194
  have hrung169 (bit : Bool) (hbit : rho 41117 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
        ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩ := by
    have hnextx : seg45AccX170 rho = seg45AccX169 rho + rho 43416 := by
      unfold seg45AccX170 seg45AccX169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 19]
      ring
    have hnexty : seg45AccY170 rho = seg45AccY169 rho + rho 43417 := by
      unfold seg45AccY170 seg45AccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 19]
      ring
    have hsum : seg45AccX169 rho + seg45AccY169 rho = rho 43409 := by
      unfold seg45AccX169 seg45AccY169
      linear_combination r5181
    have ha0 : (rho 43407 + rho 43408) * (seg45AccX169 rho + seg45AccY169 rho) = rho 43410 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 43408 * seg45AccX169 rho = rho 43411 := by
      unfold seg45AccX169
      linear_combination r5183
    have ha2 : rho 43407 * seg45AccY169 rho = rho 43412 := by
      unfold seg45AccY169
      linear_combination r5184
    have ha3 : 3021 * rho 43411 * rho 43412 = rho 43413 := by
      linear_combination r5185
    have ha4 : rho 43414 * (1 + rho 43413) = rho 43411 + rho 43412 := by
      linear_combination r5186
    have ha5 : rho 43415 * (1 - rho 43413) = rho 43410 - rho 43411 - rho 43412 := by
      linear_combination r5187
    have haddx :
        rho 43414 * (1 + 3021 * (rho 43408 * seg45AccX169 rho) * (rho 43407 * seg45AccY169 rho)) =
          rho 43408 * seg45AccX169 rho + rho 43407 * seg45AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43415 * (1 - 3021 * (rho 43408 * seg45AccX169 rho) * (rho 43407 * seg45AccY169 rho)) =
          (-1) * (rho 43408 * seg45AccX169 rho) - rho 43407 * seg45AccY169 rho +
            (seg45AccY169 rho - seg45AccX169 rho * (-1)) * (rho 43407 + rho 43408) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43415 * (1 - rho 43413) = rho 43410 - rho 43411 - rho 43412 := ha5
        _ = (-1) * rho 43411 - rho 43412 + (seg45AccY169 rho - seg45AccX169 rho * (-1)) * (rho 43407 + rho 43408) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX170 rho = seg45AccX169 rho - Bool.toZMod bit * (seg45AccX169 rho - rho 43414) := by
      have hd : rho 43416 = Bool.toZMod bit * (rho 43414 - seg45AccX169 rho) := by
        rw [← hbit]
        unfold seg45AccX169
        linear_combination -r5188
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY170 rho = seg45AccY169 rho - Bool.toZMod bit * (seg45AccY169 rho - rho 43415) := by
      have hd : rho 43417 = Bool.toZMod bit * (rho 43415 - seg45AccY169 rho) := by
        rw [← hbit]
        unfold seg45AccY169
        linear_combination -r5189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43407 * rho 43408 = rho 43418 := by linear_combination r5190
    have hd1 : rho 43407 * rho 43407 = rho 43419 := by linear_combination r5191
    have hd2 : rho 43408 * rho 43408 = rho 43420 := by linear_combination r5192
    have hd3 : rho 43421 * (rho 43408 * rho 43408 + rho 43407 * rho 43407 * (-1)) = 2 * (rho 43407 * rho 43408) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 43422 * (2 - (rho 43408 * rho 43408 + rho 43407 * rho 43407 * (-1))) = rho 43408 * rho 43408 - rho 43407 * rho 43407 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX169 rho : Seg45.F), (seg45AccY169 rho : Seg45.F)⟩
      ⟨(rho 43407 : Seg45.F), (rho 43408 : Seg45.F)⟩
      ⟨(rho 43414 : Seg45.F), (rho 43415 : Seg45.F)⟩
      ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
      ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg45_rows170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5195 rho ∧ Seg45.relationRow5196 rho ∧ Seg45.relationRow5197 rho ∧ Seg45.relationRow5198 rho ∧ Seg45.relationRow5199 rho ∧ Seg45.relationRow5200 rho ∧ Seg45.relationRow5201 rho ∧ Seg45.relationRow5202 rho ∧ Seg45.relationRow5203 rho ∧ Seg45.relationRow5204 rho ∧ Seg45.relationRow5205 rho ∧ Seg45.relationRow5206 rho ∧ Seg45.relationRow5207 rho ∧ Seg45.relationRow5208 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩

theorem seg45_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41118 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩ := by
  obtain ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩ := seg45_rows170 rho h
  unfold Seg45.relationRow5195 at r5195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195
  unfold Seg45.relationRow5196 at r5196
  unfold Seg45.relationRow5197 at r5197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5197
  unfold Seg45.relationRow5198 at r5198
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5198
  unfold Seg45.relationRow5199 at r5199
  unfold Seg45.relationRow5200 at r5200
  unfold Seg45.relationRow5201 at r5201
  unfold Seg45.relationRow5202 at r5202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5202
  unfold Seg45.relationRow5203 at r5203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5203
  unfold Seg45.relationRow5204 at r5204
  unfold Seg45.relationRow5205 at r5205
  unfold Seg45.relationRow5206 at r5206
  unfold Seg45.relationRow5207 at r5207
  unfold Seg45.relationRow5208 at r5208
  have hrung170 (bit : Bool) (hbit : rho 41118 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
        ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩ := by
    have hnextx : seg45AccX171 rho = seg45AccX170 rho + rho 43430 := by
      unfold seg45AccX171 seg45AccX170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 20]
      ring
    have hnexty : seg45AccY171 rho = seg45AccY170 rho + rho 43431 := by
      unfold seg45AccY171 seg45AccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 20]
      ring
    have hsum : seg45AccX170 rho + seg45AccY170 rho = rho 43423 := by
      unfold seg45AccX170 seg45AccY170
      linear_combination r5195
    have ha0 : (rho 43421 + rho 43422) * (seg45AccX170 rho + seg45AccY170 rho) = rho 43424 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 43422 * seg45AccX170 rho = rho 43425 := by
      unfold seg45AccX170
      linear_combination r5197
    have ha2 : rho 43421 * seg45AccY170 rho = rho 43426 := by
      unfold seg45AccY170
      linear_combination r5198
    have ha3 : 3021 * rho 43425 * rho 43426 = rho 43427 := by
      linear_combination r5199
    have ha4 : rho 43428 * (1 + rho 43427) = rho 43425 + rho 43426 := by
      linear_combination r5200
    have ha5 : rho 43429 * (1 - rho 43427) = rho 43424 - rho 43425 - rho 43426 := by
      linear_combination r5201
    have haddx :
        rho 43428 * (1 + 3021 * (rho 43422 * seg45AccX170 rho) * (rho 43421 * seg45AccY170 rho)) =
          rho 43422 * seg45AccX170 rho + rho 43421 * seg45AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43429 * (1 - 3021 * (rho 43422 * seg45AccX170 rho) * (rho 43421 * seg45AccY170 rho)) =
          (-1) * (rho 43422 * seg45AccX170 rho) - rho 43421 * seg45AccY170 rho +
            (seg45AccY170 rho - seg45AccX170 rho * (-1)) * (rho 43421 + rho 43422) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43429 * (1 - rho 43427) = rho 43424 - rho 43425 - rho 43426 := ha5
        _ = (-1) * rho 43425 - rho 43426 + (seg45AccY170 rho - seg45AccX170 rho * (-1)) * (rho 43421 + rho 43422) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX171 rho = seg45AccX170 rho - Bool.toZMod bit * (seg45AccX170 rho - rho 43428) := by
      have hd : rho 43430 = Bool.toZMod bit * (rho 43428 - seg45AccX170 rho) := by
        rw [← hbit]
        unfold seg45AccX170
        linear_combination -r5202
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY171 rho = seg45AccY170 rho - Bool.toZMod bit * (seg45AccY170 rho - rho 43429) := by
      have hd : rho 43431 = Bool.toZMod bit * (rho 43429 - seg45AccY170 rho) := by
        rw [← hbit]
        unfold seg45AccY170
        linear_combination -r5203
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43421 * rho 43422 = rho 43432 := by linear_combination r5204
    have hd1 : rho 43421 * rho 43421 = rho 43433 := by linear_combination r5205
    have hd2 : rho 43422 * rho 43422 = rho 43434 := by linear_combination r5206
    have hd3 : rho 43435 * (rho 43422 * rho 43422 + rho 43421 * rho 43421 * (-1)) = 2 * (rho 43421 * rho 43422) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 43436 * (2 - (rho 43422 * rho 43422 + rho 43421 * rho 43421 * (-1))) = rho 43422 * rho 43422 - rho 43421 * rho 43421 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX170 rho : Seg45.F), (seg45AccY170 rho : Seg45.F)⟩
      ⟨(rho 43421 : Seg45.F), (rho 43422 : Seg45.F)⟩
      ⟨(rho 43428 : Seg45.F), (rho 43429 : Seg45.F)⟩
      ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
      ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg45_rows171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5209 rho ∧ Seg45.relationRow5210 rho ∧ Seg45.relationRow5211 rho ∧ Seg45.relationRow5212 rho ∧ Seg45.relationRow5213 rho ∧ Seg45.relationRow5214 rho ∧ Seg45.relationRow5215 rho ∧ Seg45.relationRow5216 rho ∧ Seg45.relationRow5217 rho ∧ Seg45.relationRow5218 rho ∧ Seg45.relationRow5219 rho ∧ Seg45.relationRow5220 rho ∧ Seg45.relationRow5221 rho ∧ Seg45.relationRow5222 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem seg45_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41119 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩ := by
  obtain ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := seg45_rows171 rho h
  unfold Seg45.relationRow5209 at r5209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209
  unfold Seg45.relationRow5210 at r5210
  unfold Seg45.relationRow5211 at r5211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5211
  unfold Seg45.relationRow5212 at r5212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5212
  unfold Seg45.relationRow5213 at r5213
  unfold Seg45.relationRow5214 at r5214
  unfold Seg45.relationRow5215 at r5215
  unfold Seg45.relationRow5216 at r5216
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5216
  unfold Seg45.relationRow5217 at r5217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5217
  unfold Seg45.relationRow5218 at r5218
  unfold Seg45.relationRow5219 at r5219
  unfold Seg45.relationRow5220 at r5220
  unfold Seg45.relationRow5221 at r5221
  unfold Seg45.relationRow5222 at r5222
  have hrung171 (bit : Bool) (hbit : rho 41119 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
        ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩ := by
    have hnextx : seg45AccX172 rho = seg45AccX171 rho + rho 43444 := by
      unfold seg45AccX172 seg45AccX171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 21]
      ring
    have hnexty : seg45AccY172 rho = seg45AccY171 rho + rho 43445 := by
      unfold seg45AccY172 seg45AccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 21]
      ring
    have hsum : seg45AccX171 rho + seg45AccY171 rho = rho 43437 := by
      unfold seg45AccX171 seg45AccY171
      linear_combination r5209
    have ha0 : (rho 43435 + rho 43436) * (seg45AccX171 rho + seg45AccY171 rho) = rho 43438 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 43436 * seg45AccX171 rho = rho 43439 := by
      unfold seg45AccX171
      linear_combination r5211
    have ha2 : rho 43435 * seg45AccY171 rho = rho 43440 := by
      unfold seg45AccY171
      linear_combination r5212
    have ha3 : 3021 * rho 43439 * rho 43440 = rho 43441 := by
      linear_combination r5213
    have ha4 : rho 43442 * (1 + rho 43441) = rho 43439 + rho 43440 := by
      linear_combination r5214
    have ha5 : rho 43443 * (1 - rho 43441) = rho 43438 - rho 43439 - rho 43440 := by
      linear_combination r5215
    have haddx :
        rho 43442 * (1 + 3021 * (rho 43436 * seg45AccX171 rho) * (rho 43435 * seg45AccY171 rho)) =
          rho 43436 * seg45AccX171 rho + rho 43435 * seg45AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43443 * (1 - 3021 * (rho 43436 * seg45AccX171 rho) * (rho 43435 * seg45AccY171 rho)) =
          (-1) * (rho 43436 * seg45AccX171 rho) - rho 43435 * seg45AccY171 rho +
            (seg45AccY171 rho - seg45AccX171 rho * (-1)) * (rho 43435 + rho 43436) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43443 * (1 - rho 43441) = rho 43438 - rho 43439 - rho 43440 := ha5
        _ = (-1) * rho 43439 - rho 43440 + (seg45AccY171 rho - seg45AccX171 rho * (-1)) * (rho 43435 + rho 43436) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX172 rho = seg45AccX171 rho - Bool.toZMod bit * (seg45AccX171 rho - rho 43442) := by
      have hd : rho 43444 = Bool.toZMod bit * (rho 43442 - seg45AccX171 rho) := by
        rw [← hbit]
        unfold seg45AccX171
        linear_combination -r5216
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY172 rho = seg45AccY171 rho - Bool.toZMod bit * (seg45AccY171 rho - rho 43443) := by
      have hd : rho 43445 = Bool.toZMod bit * (rho 43443 - seg45AccY171 rho) := by
        rw [← hbit]
        unfold seg45AccY171
        linear_combination -r5217
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43435 * rho 43436 = rho 43446 := by linear_combination r5218
    have hd1 : rho 43435 * rho 43435 = rho 43447 := by linear_combination r5219
    have hd2 : rho 43436 * rho 43436 = rho 43448 := by linear_combination r5220
    have hd3 : rho 43449 * (rho 43436 * rho 43436 + rho 43435 * rho 43435 * (-1)) = 2 * (rho 43435 * rho 43436) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 43450 * (2 - (rho 43436 * rho 43436 + rho 43435 * rho 43435 * (-1))) = rho 43436 * rho 43436 - rho 43435 * rho 43435 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX171 rho : Seg45.F), (seg45AccY171 rho : Seg45.F)⟩
      ⟨(rho 43435 : Seg45.F), (rho 43436 : Seg45.F)⟩
      ⟨(rho 43442 : Seg45.F), (rho 43443 : Seg45.F)⟩
      ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
      ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg45_rows172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5223 rho ∧ Seg45.relationRow5224 rho ∧ Seg45.relationRow5225 rho ∧ Seg45.relationRow5226 rho ∧ Seg45.relationRow5227 rho ∧ Seg45.relationRow5228 rho ∧ Seg45.relationRow5229 rho ∧ Seg45.relationRow5230 rho ∧ Seg45.relationRow5231 rho ∧ Seg45.relationRow5232 rho ∧ Seg45.relationRow5233 rho ∧ Seg45.relationRow5234 rho ∧ Seg45.relationRow5235 rho ∧ Seg45.relationRow5236 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩

theorem seg45_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41120 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩ := seg45_rows172 rho h
  unfold Seg45.relationRow5223 at r5223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5223
  unfold Seg45.relationRow5224 at r5224
  unfold Seg45.relationRow5225 at r5225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5225
  unfold Seg45.relationRow5226 at r5226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226
  unfold Seg45.relationRow5227 at r5227
  unfold Seg45.relationRow5228 at r5228
  unfold Seg45.relationRow5229 at r5229
  unfold Seg45.relationRow5230 at r5230
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5230
  unfold Seg45.relationRow5231 at r5231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5231
  unfold Seg45.relationRow5232 at r5232
  unfold Seg45.relationRow5233 at r5233
  unfold Seg45.relationRow5234 at r5234
  unfold Seg45.relationRow5235 at r5235
  unfold Seg45.relationRow5236 at r5236
  have hrung172 (bit : Bool) (hbit : rho 41120 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
        ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩ := by
    have hnextx : seg45AccX173 rho = seg45AccX172 rho + rho 43458 := by
      unfold seg45AccX173 seg45AccX172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 22]
      ring
    have hnexty : seg45AccY173 rho = seg45AccY172 rho + rho 43459 := by
      unfold seg45AccY173 seg45AccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 22]
      ring
    have hsum : seg45AccX172 rho + seg45AccY172 rho = rho 43451 := by
      unfold seg45AccX172 seg45AccY172
      linear_combination r5223
    have ha0 : (rho 43449 + rho 43450) * (seg45AccX172 rho + seg45AccY172 rho) = rho 43452 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 43450 * seg45AccX172 rho = rho 43453 := by
      unfold seg45AccX172
      linear_combination r5225
    have ha2 : rho 43449 * seg45AccY172 rho = rho 43454 := by
      unfold seg45AccY172
      linear_combination r5226
    have ha3 : 3021 * rho 43453 * rho 43454 = rho 43455 := by
      linear_combination r5227
    have ha4 : rho 43456 * (1 + rho 43455) = rho 43453 + rho 43454 := by
      linear_combination r5228
    have ha5 : rho 43457 * (1 - rho 43455) = rho 43452 - rho 43453 - rho 43454 := by
      linear_combination r5229
    have haddx :
        rho 43456 * (1 + 3021 * (rho 43450 * seg45AccX172 rho) * (rho 43449 * seg45AccY172 rho)) =
          rho 43450 * seg45AccX172 rho + rho 43449 * seg45AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43457 * (1 - 3021 * (rho 43450 * seg45AccX172 rho) * (rho 43449 * seg45AccY172 rho)) =
          (-1) * (rho 43450 * seg45AccX172 rho) - rho 43449 * seg45AccY172 rho +
            (seg45AccY172 rho - seg45AccX172 rho * (-1)) * (rho 43449 + rho 43450) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43457 * (1 - rho 43455) = rho 43452 - rho 43453 - rho 43454 := ha5
        _ = (-1) * rho 43453 - rho 43454 + (seg45AccY172 rho - seg45AccX172 rho * (-1)) * (rho 43449 + rho 43450) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX173 rho = seg45AccX172 rho - Bool.toZMod bit * (seg45AccX172 rho - rho 43456) := by
      have hd : rho 43458 = Bool.toZMod bit * (rho 43456 - seg45AccX172 rho) := by
        rw [← hbit]
        unfold seg45AccX172
        linear_combination -r5230
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY173 rho = seg45AccY172 rho - Bool.toZMod bit * (seg45AccY172 rho - rho 43457) := by
      have hd : rho 43459 = Bool.toZMod bit * (rho 43457 - seg45AccY172 rho) := by
        rw [← hbit]
        unfold seg45AccY172
        linear_combination -r5231
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43449 * rho 43450 = rho 43460 := by linear_combination r5232
    have hd1 : rho 43449 * rho 43449 = rho 43461 := by linear_combination r5233
    have hd2 : rho 43450 * rho 43450 = rho 43462 := by linear_combination r5234
    have hd3 : rho 43463 * (rho 43450 * rho 43450 + rho 43449 * rho 43449 * (-1)) = 2 * (rho 43449 * rho 43450) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 43464 * (2 - (rho 43450 * rho 43450 + rho 43449 * rho 43449 * (-1))) = rho 43450 * rho 43450 - rho 43449 * rho 43449 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX172 rho : Seg45.F), (seg45AccY172 rho : Seg45.F)⟩
      ⟨(rho 43449 : Seg45.F), (rho 43450 : Seg45.F)⟩
      ⟨(rho 43456 : Seg45.F), (rho 43457 : Seg45.F)⟩
      ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
      ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg45_rows173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5237 rho ∧ Seg45.relationRow5238 rho ∧ Seg45.relationRow5239 rho ∧ Seg45.relationRow5240 rho ∧ Seg45.relationRow5241 rho ∧ Seg45.relationRow5242 rho ∧ Seg45.relationRow5243 rho ∧ Seg45.relationRow5244 rho ∧ Seg45.relationRow5245 rho ∧ Seg45.relationRow5246 rho ∧ Seg45.relationRow5247 rho ∧ Seg45.relationRow5248 rho ∧ Seg45.relationRow5249 rho ∧ Seg45.relationRow5250 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩

theorem seg45_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41121 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩ := by
  obtain ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩ := seg45_rows173 rho h
  unfold Seg45.relationRow5237 at r5237
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5237
  unfold Seg45.relationRow5238 at r5238
  unfold Seg45.relationRow5239 at r5239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239
  unfold Seg45.relationRow5240 at r5240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240
  unfold Seg45.relationRow5241 at r5241
  unfold Seg45.relationRow5242 at r5242
  unfold Seg45.relationRow5243 at r5243
  unfold Seg45.relationRow5244 at r5244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5244
  unfold Seg45.relationRow5245 at r5245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5245
  unfold Seg45.relationRow5246 at r5246
  unfold Seg45.relationRow5247 at r5247
  unfold Seg45.relationRow5248 at r5248
  unfold Seg45.relationRow5249 at r5249
  unfold Seg45.relationRow5250 at r5250
  have hrung173 (bit : Bool) (hbit : rho 41121 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
        ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩ := by
    have hnextx : seg45AccX174 rho = seg45AccX173 rho + rho 43472 := by
      unfold seg45AccX174 seg45AccX173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 23]
      ring
    have hnexty : seg45AccY174 rho = seg45AccY173 rho + rho 43473 := by
      unfold seg45AccY174 seg45AccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 23]
      ring
    have hsum : seg45AccX173 rho + seg45AccY173 rho = rho 43465 := by
      unfold seg45AccX173 seg45AccY173
      linear_combination r5237
    have ha0 : (rho 43463 + rho 43464) * (seg45AccX173 rho + seg45AccY173 rho) = rho 43466 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 43464 * seg45AccX173 rho = rho 43467 := by
      unfold seg45AccX173
      linear_combination r5239
    have ha2 : rho 43463 * seg45AccY173 rho = rho 43468 := by
      unfold seg45AccY173
      linear_combination r5240
    have ha3 : 3021 * rho 43467 * rho 43468 = rho 43469 := by
      linear_combination r5241
    have ha4 : rho 43470 * (1 + rho 43469) = rho 43467 + rho 43468 := by
      linear_combination r5242
    have ha5 : rho 43471 * (1 - rho 43469) = rho 43466 - rho 43467 - rho 43468 := by
      linear_combination r5243
    have haddx :
        rho 43470 * (1 + 3021 * (rho 43464 * seg45AccX173 rho) * (rho 43463 * seg45AccY173 rho)) =
          rho 43464 * seg45AccX173 rho + rho 43463 * seg45AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43471 * (1 - 3021 * (rho 43464 * seg45AccX173 rho) * (rho 43463 * seg45AccY173 rho)) =
          (-1) * (rho 43464 * seg45AccX173 rho) - rho 43463 * seg45AccY173 rho +
            (seg45AccY173 rho - seg45AccX173 rho * (-1)) * (rho 43463 + rho 43464) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43471 * (1 - rho 43469) = rho 43466 - rho 43467 - rho 43468 := ha5
        _ = (-1) * rho 43467 - rho 43468 + (seg45AccY173 rho - seg45AccX173 rho * (-1)) * (rho 43463 + rho 43464) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX174 rho = seg45AccX173 rho - Bool.toZMod bit * (seg45AccX173 rho - rho 43470) := by
      have hd : rho 43472 = Bool.toZMod bit * (rho 43470 - seg45AccX173 rho) := by
        rw [← hbit]
        unfold seg45AccX173
        linear_combination -r5244
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY174 rho = seg45AccY173 rho - Bool.toZMod bit * (seg45AccY173 rho - rho 43471) := by
      have hd : rho 43473 = Bool.toZMod bit * (rho 43471 - seg45AccY173 rho) := by
        rw [← hbit]
        unfold seg45AccY173
        linear_combination -r5245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43463 * rho 43464 = rho 43474 := by linear_combination r5246
    have hd1 : rho 43463 * rho 43463 = rho 43475 := by linear_combination r5247
    have hd2 : rho 43464 * rho 43464 = rho 43476 := by linear_combination r5248
    have hd3 : rho 43477 * (rho 43464 * rho 43464 + rho 43463 * rho 43463 * (-1)) = 2 * (rho 43463 * rho 43464) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 43478 * (2 - (rho 43464 * rho 43464 + rho 43463 * rho 43463 * (-1))) = rho 43464 * rho 43464 - rho 43463 * rho 43463 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX173 rho : Seg45.F), (seg45AccY173 rho : Seg45.F)⟩
      ⟨(rho 43463 : Seg45.F), (rho 43464 : Seg45.F)⟩
      ⟨(rho 43470 : Seg45.F), (rho 43471 : Seg45.F)⟩
      ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
      ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg45_rows174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5251 rho ∧ Seg45.relationRow5252 rho ∧ Seg45.relationRow5253 rho ∧ Seg45.relationRow5254 rho ∧ Seg45.relationRow5255 rho ∧ Seg45.relationRow5256 rho ∧ Seg45.relationRow5257 rho ∧ Seg45.relationRow5258 rho ∧ Seg45.relationRow5259 rho ∧ Seg45.relationRow5260 rho ∧ Seg45.relationRow5261 rho ∧ Seg45.relationRow5262 rho ∧ Seg45.relationRow5263 rho ∧ Seg45.relationRow5264 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩

theorem seg45_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41122 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩ := by
  obtain ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩ := seg45_rows174 rho h
  unfold Seg45.relationRow5251 at r5251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5251
  unfold Seg45.relationRow5252 at r5252
  unfold Seg45.relationRow5253 at r5253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253
  unfold Seg45.relationRow5254 at r5254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5254
  unfold Seg45.relationRow5255 at r5255
  unfold Seg45.relationRow5256 at r5256
  unfold Seg45.relationRow5257 at r5257
  unfold Seg45.relationRow5258 at r5258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5258
  unfold Seg45.relationRow5259 at r5259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259
  unfold Seg45.relationRow5260 at r5260
  unfold Seg45.relationRow5261 at r5261
  unfold Seg45.relationRow5262 at r5262
  unfold Seg45.relationRow5263 at r5263
  unfold Seg45.relationRow5264 at r5264
  have hrung174 (bit : Bool) (hbit : rho 41122 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
        ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩ := by
    have hnextx : seg45AccX175 rho = seg45AccX174 rho + rho 43486 := by
      unfold seg45AccX175 seg45AccX174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 24]
      ring
    have hnexty : seg45AccY175 rho = seg45AccY174 rho + rho 43487 := by
      unfold seg45AccY175 seg45AccY174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 24]
      ring
    have hsum : seg45AccX174 rho + seg45AccY174 rho = rho 43479 := by
      unfold seg45AccX174 seg45AccY174
      linear_combination r5251
    have ha0 : (rho 43477 + rho 43478) * (seg45AccX174 rho + seg45AccY174 rho) = rho 43480 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 43478 * seg45AccX174 rho = rho 43481 := by
      unfold seg45AccX174
      linear_combination r5253
    have ha2 : rho 43477 * seg45AccY174 rho = rho 43482 := by
      unfold seg45AccY174
      linear_combination r5254
    have ha3 : 3021 * rho 43481 * rho 43482 = rho 43483 := by
      linear_combination r5255
    have ha4 : rho 43484 * (1 + rho 43483) = rho 43481 + rho 43482 := by
      linear_combination r5256
    have ha5 : rho 43485 * (1 - rho 43483) = rho 43480 - rho 43481 - rho 43482 := by
      linear_combination r5257
    have haddx :
        rho 43484 * (1 + 3021 * (rho 43478 * seg45AccX174 rho) * (rho 43477 * seg45AccY174 rho)) =
          rho 43478 * seg45AccX174 rho + rho 43477 * seg45AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43485 * (1 - 3021 * (rho 43478 * seg45AccX174 rho) * (rho 43477 * seg45AccY174 rho)) =
          (-1) * (rho 43478 * seg45AccX174 rho) - rho 43477 * seg45AccY174 rho +
            (seg45AccY174 rho - seg45AccX174 rho * (-1)) * (rho 43477 + rho 43478) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43485 * (1 - rho 43483) = rho 43480 - rho 43481 - rho 43482 := ha5
        _ = (-1) * rho 43481 - rho 43482 + (seg45AccY174 rho - seg45AccX174 rho * (-1)) * (rho 43477 + rho 43478) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX175 rho = seg45AccX174 rho - Bool.toZMod bit * (seg45AccX174 rho - rho 43484) := by
      have hd : rho 43486 = Bool.toZMod bit * (rho 43484 - seg45AccX174 rho) := by
        rw [← hbit]
        unfold seg45AccX174
        linear_combination -r5258
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY175 rho = seg45AccY174 rho - Bool.toZMod bit * (seg45AccY174 rho - rho 43485) := by
      have hd : rho 43487 = Bool.toZMod bit * (rho 43485 - seg45AccY174 rho) := by
        rw [← hbit]
        unfold seg45AccY174
        linear_combination -r5259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43477 * rho 43478 = rho 43488 := by linear_combination r5260
    have hd1 : rho 43477 * rho 43477 = rho 43489 := by linear_combination r5261
    have hd2 : rho 43478 * rho 43478 = rho 43490 := by linear_combination r5262
    have hd3 : rho 43491 * (rho 43478 * rho 43478 + rho 43477 * rho 43477 * (-1)) = 2 * (rho 43477 * rho 43478) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 43492 * (2 - (rho 43478 * rho 43478 + rho 43477 * rho 43477 * (-1))) = rho 43478 * rho 43478 - rho 43477 * rho 43477 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX174 rho : Seg45.F), (seg45AccY174 rho : Seg45.F)⟩
      ⟨(rho 43477 : Seg45.F), (rho 43478 : Seg45.F)⟩
      ⟨(rho 43484 : Seg45.F), (rho 43485 : Seg45.F)⟩
      ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
      ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg45_rows175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5265 rho ∧ Seg45.relationRow5266 rho ∧ Seg45.relationRow5267 rho ∧ Seg45.relationRow5268 rho ∧ Seg45.relationRow5269 rho ∧ Seg45.relationRow5270 rho ∧ Seg45.relationRow5271 rho ∧ Seg45.relationRow5272 rho ∧ Seg45.relationRow5273 rho ∧ Seg45.relationRow5274 rho ∧ Seg45.relationRow5275 rho ∧ Seg45.relationRow5276 rho ∧ Seg45.relationRow5277 rho ∧ Seg45.relationRow5278 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  exact ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩

theorem seg45_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41123 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩ := by
  obtain ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩ := seg45_rows175 rho h
  unfold Seg45.relationRow5265 at r5265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265
  unfold Seg45.relationRow5266 at r5266
  unfold Seg45.relationRow5267 at r5267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5267
  unfold Seg45.relationRow5268 at r5268
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5268
  unfold Seg45.relationRow5269 at r5269
  unfold Seg45.relationRow5270 at r5270
  unfold Seg45.relationRow5271 at r5271
  unfold Seg45.relationRow5272 at r5272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272
  unfold Seg45.relationRow5273 at r5273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273
  unfold Seg45.relationRow5274 at r5274
  unfold Seg45.relationRow5275 at r5275
  unfold Seg45.relationRow5276 at r5276
  unfold Seg45.relationRow5277 at r5277
  unfold Seg45.relationRow5278 at r5278
  have hrung175 (bit : Bool) (hbit : rho 41123 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
        ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
        ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
        ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩ := by
    have hnextx : seg45AccX176 rho = seg45AccX175 rho + rho 43500 := by
      unfold seg45AccX176 seg45AccX175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 25]
      ring
    have hnexty : seg45AccY176 rho = seg45AccY175 rho + rho 43501 := by
      unfold seg45AccY176 seg45AccY175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 25]
      ring
    have hsum : seg45AccX175 rho + seg45AccY175 rho = rho 43493 := by
      unfold seg45AccX175 seg45AccY175
      linear_combination r5265
    have ha0 : (rho 43491 + rho 43492) * (seg45AccX175 rho + seg45AccY175 rho) = rho 43494 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 43492 * seg45AccX175 rho = rho 43495 := by
      unfold seg45AccX175
      linear_combination r5267
    have ha2 : rho 43491 * seg45AccY175 rho = rho 43496 := by
      unfold seg45AccY175
      linear_combination r5268
    have ha3 : 3021 * rho 43495 * rho 43496 = rho 43497 := by
      linear_combination r5269
    have ha4 : rho 43498 * (1 + rho 43497) = rho 43495 + rho 43496 := by
      linear_combination r5270
    have ha5 : rho 43499 * (1 - rho 43497) = rho 43494 - rho 43495 - rho 43496 := by
      linear_combination r5271
    have haddx :
        rho 43498 * (1 + 3021 * (rho 43492 * seg45AccX175 rho) * (rho 43491 * seg45AccY175 rho)) =
          rho 43492 * seg45AccX175 rho + rho 43491 * seg45AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43499 * (1 - 3021 * (rho 43492 * seg45AccX175 rho) * (rho 43491 * seg45AccY175 rho)) =
          (-1) * (rho 43492 * seg45AccX175 rho) - rho 43491 * seg45AccY175 rho +
            (seg45AccY175 rho - seg45AccX175 rho * (-1)) * (rho 43491 + rho 43492) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43499 * (1 - rho 43497) = rho 43494 - rho 43495 - rho 43496 := ha5
        _ = (-1) * rho 43495 - rho 43496 + (seg45AccY175 rho - seg45AccX175 rho * (-1)) * (rho 43491 + rho 43492) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX176 rho = seg45AccX175 rho - Bool.toZMod bit * (seg45AccX175 rho - rho 43498) := by
      have hd : rho 43500 = Bool.toZMod bit * (rho 43498 - seg45AccX175 rho) := by
        rw [← hbit]
        unfold seg45AccX175
        linear_combination -r5272
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY176 rho = seg45AccY175 rho - Bool.toZMod bit * (seg45AccY175 rho - rho 43499) := by
      have hd : rho 43501 = Bool.toZMod bit * (rho 43499 - seg45AccY175 rho) := by
        rw [← hbit]
        unfold seg45AccY175
        linear_combination -r5273
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43491 * rho 43492 = rho 43502 := by linear_combination r5274
    have hd1 : rho 43491 * rho 43491 = rho 43503 := by linear_combination r5275
    have hd2 : rho 43492 * rho 43492 = rho 43504 := by linear_combination r5276
    have hd3 : rho 43505 * (rho 43492 * rho 43492 + rho 43491 * rho 43491 * (-1)) = 2 * (rho 43491 * rho 43492) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 43506 * (2 - (rho 43492 * rho 43492 + rho 43491 * rho 43491 * (-1))) = rho 43492 * rho 43492 - rho 43491 * rho 43491 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX175 rho : Seg45.F), (seg45AccY175 rho : Seg45.F)⟩
      ⟨(rho 43491 : Seg45.F), (rho 43492 : Seg45.F)⟩
      ⟨(rho 43498 : Seg45.F), (rho 43499 : Seg45.F)⟩
      ⟨(seg45AccX176 rho : Seg45.F), (seg45AccY176 rho : Seg45.F)⟩
      ⟨(rho 43505 : Seg45.F), (rho 43506 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg45_hstep_c15 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 165 ≤ i → i < 176 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg45_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg45_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg45_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg45_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg45_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg45_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg45_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg45_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg45_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg45_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
