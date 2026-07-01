import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6049 rho ∧ Seg34.relationRow6050 rho ∧ Seg34.relationRow6051 rho ∧ Seg34.relationRow6052 rho ∧ Seg34.relationRow6053 rho ∧ Seg34.relationRow6054 rho ∧ Seg34.relationRow6055 rho ∧ Seg34.relationRow6056 rho ∧ Seg34.relationRow6057 rho ∧ Seg34.relationRow6058 rho ∧ Seg34.relationRow6059 rho ∧ Seg34.relationRow6060 rho ∧ Seg34.relationRow6061 rho ∧ Seg34.relationRow6062 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩

theorem seg34_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34223 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩ := by
  obtain ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩ := seg34_rows231 rho h
  unfold Seg34.relationRow6049 at r6049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049
  unfold Seg34.relationRow6050 at r6050
  unfold Seg34.relationRow6051 at r6051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6051
  unfold Seg34.relationRow6052 at r6052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052
  unfold Seg34.relationRow6053 at r6053
  unfold Seg34.relationRow6054 at r6054
  unfold Seg34.relationRow6055 at r6055
  unfold Seg34.relationRow6056 at r6056
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056
  unfold Seg34.relationRow6057 at r6057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057
  unfold Seg34.relationRow6058 at r6058
  unfold Seg34.relationRow6059 at r6059
  unfold Seg34.relationRow6060 at r6060
  unfold Seg34.relationRow6061 at r6061
  unfold Seg34.relationRow6062 at r6062
  have hrung231 (bit : Bool) (hbit : rho 34223 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
        ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩ := by
    have hnextx : seg34AccX232 rho = seg34AccX231 rho + rho 37328 := by
      unfold seg34AccX232 seg34AccX231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 81]
      ring
    have hnexty : seg34AccY232 rho = seg34AccY231 rho + rho 37329 := by
      unfold seg34AccY232 seg34AccY231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 81]
      ring
    have hsum : seg34AccX231 rho + seg34AccY231 rho = rho 37321 := by
      unfold seg34AccX231 seg34AccY231
      linear_combination r6049
    have ha0 : (rho 37319 + rho 37320) * (seg34AccX231 rho + seg34AccY231 rho) = rho 37322 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 37320 * seg34AccX231 rho = rho 37323 := by
      unfold seg34AccX231
      linear_combination r6051
    have ha2 : rho 37319 * seg34AccY231 rho = rho 37324 := by
      unfold seg34AccY231
      linear_combination r6052
    have ha3 : 3021 * rho 37323 * rho 37324 = rho 37325 := by
      linear_combination r6053
    have ha4 : rho 37326 * (1 + rho 37325) = rho 37323 + rho 37324 := by
      linear_combination r6054
    have ha5 : rho 37327 * (1 - rho 37325) = rho 37322 - rho 37323 - rho 37324 := by
      linear_combination r6055
    have haddx :
        rho 37326 * (1 + 3021 * (rho 37320 * seg34AccX231 rho) * (rho 37319 * seg34AccY231 rho)) =
          rho 37320 * seg34AccX231 rho + rho 37319 * seg34AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37327 * (1 - 3021 * (rho 37320 * seg34AccX231 rho) * (rho 37319 * seg34AccY231 rho)) =
          (-1) * (rho 37320 * seg34AccX231 rho) - rho 37319 * seg34AccY231 rho +
            (seg34AccY231 rho - seg34AccX231 rho * (-1)) * (rho 37319 + rho 37320) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37327 * (1 - rho 37325) = rho 37322 - rho 37323 - rho 37324 := ha5
        _ = (-1) * rho 37323 - rho 37324 + (seg34AccY231 rho - seg34AccX231 rho * (-1)) * (rho 37319 + rho 37320) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX232 rho = seg34AccX231 rho - Bool.toZMod bit * (seg34AccX231 rho - rho 37326) := by
      have hd : rho 37328 = Bool.toZMod bit * (rho 37326 - seg34AccX231 rho) := by
        rw [← hbit]
        unfold seg34AccX231
        linear_combination -r6056
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY232 rho = seg34AccY231 rho - Bool.toZMod bit * (seg34AccY231 rho - rho 37327) := by
      have hd : rho 37329 = Bool.toZMod bit * (rho 37327 - seg34AccY231 rho) := by
        rw [← hbit]
        unfold seg34AccY231
        linear_combination -r6057
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37319 * rho 37320 = rho 37330 := by linear_combination r6058
    have hd1 : rho 37319 * rho 37319 = rho 37331 := by linear_combination r6059
    have hd2 : rho 37320 * rho 37320 = rho 37332 := by linear_combination r6060
    have hd3 : rho 37333 * (rho 37320 * rho 37320 + rho 37319 * rho 37319 * (-1)) = 2 * (rho 37319 * rho 37320) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 37334 * (2 - (rho 37320 * rho 37320 + rho 37319 * rho 37319 * (-1))) = rho 37320 * rho 37320 - rho 37319 * rho 37319 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX231 rho : Seg34.F), (seg34AccY231 rho : Seg34.F)⟩
      ⟨(rho 37319 : Seg34.F), (rho 37320 : Seg34.F)⟩
      ⟨(rho 37326 : Seg34.F), (rho 37327 : Seg34.F)⟩
      ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
      ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg34_rows232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6063 rho ∧ Seg34.relationRow6064 rho ∧ Seg34.relationRow6065 rho ∧ Seg34.relationRow6066 rho ∧ Seg34.relationRow6067 rho ∧ Seg34.relationRow6068 rho ∧ Seg34.relationRow6069 rho ∧ Seg34.relationRow6070 rho ∧ Seg34.relationRow6071 rho ∧ Seg34.relationRow6072 rho ∧ Seg34.relationRow6073 rho ∧ Seg34.relationRow6074 rho ∧ Seg34.relationRow6075 rho ∧ Seg34.relationRow6076 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, _, _, _, _
  ⟩
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, _, _, _⟩
  exact ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩

theorem seg34_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34224 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩ := by
  obtain ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩ := seg34_rows232 rho h
  unfold Seg34.relationRow6063 at r6063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6063
  unfold Seg34.relationRow6064 at r6064
  unfold Seg34.relationRow6065 at r6065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065
  unfold Seg34.relationRow6066 at r6066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066
  unfold Seg34.relationRow6067 at r6067
  unfold Seg34.relationRow6068 at r6068
  unfold Seg34.relationRow6069 at r6069
  unfold Seg34.relationRow6070 at r6070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070
  unfold Seg34.relationRow6071 at r6071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071
  unfold Seg34.relationRow6072 at r6072
  unfold Seg34.relationRow6073 at r6073
  unfold Seg34.relationRow6074 at r6074
  unfold Seg34.relationRow6075 at r6075
  unfold Seg34.relationRow6076 at r6076
  have hrung232 (bit : Bool) (hbit : rho 34224 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
        ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩ := by
    have hnextx : seg34AccX233 rho = seg34AccX232 rho + rho 37342 := by
      unfold seg34AccX233 seg34AccX232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 82]
      ring
    have hnexty : seg34AccY233 rho = seg34AccY232 rho + rho 37343 := by
      unfold seg34AccY233 seg34AccY232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 82]
      ring
    have hsum : seg34AccX232 rho + seg34AccY232 rho = rho 37335 := by
      unfold seg34AccX232 seg34AccY232
      linear_combination r6063
    have ha0 : (rho 37333 + rho 37334) * (seg34AccX232 rho + seg34AccY232 rho) = rho 37336 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 37334 * seg34AccX232 rho = rho 37337 := by
      unfold seg34AccX232
      linear_combination r6065
    have ha2 : rho 37333 * seg34AccY232 rho = rho 37338 := by
      unfold seg34AccY232
      linear_combination r6066
    have ha3 : 3021 * rho 37337 * rho 37338 = rho 37339 := by
      linear_combination r6067
    have ha4 : rho 37340 * (1 + rho 37339) = rho 37337 + rho 37338 := by
      linear_combination r6068
    have ha5 : rho 37341 * (1 - rho 37339) = rho 37336 - rho 37337 - rho 37338 := by
      linear_combination r6069
    have haddx :
        rho 37340 * (1 + 3021 * (rho 37334 * seg34AccX232 rho) * (rho 37333 * seg34AccY232 rho)) =
          rho 37334 * seg34AccX232 rho + rho 37333 * seg34AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37341 * (1 - 3021 * (rho 37334 * seg34AccX232 rho) * (rho 37333 * seg34AccY232 rho)) =
          (-1) * (rho 37334 * seg34AccX232 rho) - rho 37333 * seg34AccY232 rho +
            (seg34AccY232 rho - seg34AccX232 rho * (-1)) * (rho 37333 + rho 37334) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37341 * (1 - rho 37339) = rho 37336 - rho 37337 - rho 37338 := ha5
        _ = (-1) * rho 37337 - rho 37338 + (seg34AccY232 rho - seg34AccX232 rho * (-1)) * (rho 37333 + rho 37334) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX233 rho = seg34AccX232 rho - Bool.toZMod bit * (seg34AccX232 rho - rho 37340) := by
      have hd : rho 37342 = Bool.toZMod bit * (rho 37340 - seg34AccX232 rho) := by
        rw [← hbit]
        unfold seg34AccX232
        linear_combination -r6070
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY233 rho = seg34AccY232 rho - Bool.toZMod bit * (seg34AccY232 rho - rho 37341) := by
      have hd : rho 37343 = Bool.toZMod bit * (rho 37341 - seg34AccY232 rho) := by
        rw [← hbit]
        unfold seg34AccY232
        linear_combination -r6071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37333 * rho 37334 = rho 37344 := by linear_combination r6072
    have hd1 : rho 37333 * rho 37333 = rho 37345 := by linear_combination r6073
    have hd2 : rho 37334 * rho 37334 = rho 37346 := by linear_combination r6074
    have hd3 : rho 37347 * (rho 37334 * rho 37334 + rho 37333 * rho 37333 * (-1)) = 2 * (rho 37333 * rho 37334) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 37348 * (2 - (rho 37334 * rho 37334 + rho 37333 * rho 37333 * (-1))) = rho 37334 * rho 37334 - rho 37333 * rho 37333 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX232 rho : Seg34.F), (seg34AccY232 rho : Seg34.F)⟩
      ⟨(rho 37333 : Seg34.F), (rho 37334 : Seg34.F)⟩
      ⟨(rho 37340 : Seg34.F), (rho 37341 : Seg34.F)⟩
      ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
      ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg34_rows233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6077 rho ∧ Seg34.relationRow6078 rho ∧ Seg34.relationRow6079 rho ∧ Seg34.relationRow6080 rho ∧ Seg34.relationRow6081 rho ∧ Seg34.relationRow6082 rho ∧ Seg34.relationRow6083 rho ∧ Seg34.relationRow6084 rho ∧ Seg34.relationRow6085 rho ∧ Seg34.relationRow6086 rho ∧ Seg34.relationRow6087 rho ∧ Seg34.relationRow6088 rho ∧ Seg34.relationRow6089 rho ∧ Seg34.relationRow6090 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p75, p76, _, _, _
  ⟩
  unfold Seg34.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6077, r6078, r6079⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩

theorem seg34_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34225 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩ := by
  obtain ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩ := seg34_rows233 rho h
  unfold Seg34.relationRow6077 at r6077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6077
  unfold Seg34.relationRow6078 at r6078
  unfold Seg34.relationRow6079 at r6079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6079
  unfold Seg34.relationRow6080 at r6080
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6080
  unfold Seg34.relationRow6081 at r6081
  unfold Seg34.relationRow6082 at r6082
  unfold Seg34.relationRow6083 at r6083
  unfold Seg34.relationRow6084 at r6084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6084
  unfold Seg34.relationRow6085 at r6085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6085
  unfold Seg34.relationRow6086 at r6086
  unfold Seg34.relationRow6087 at r6087
  unfold Seg34.relationRow6088 at r6088
  unfold Seg34.relationRow6089 at r6089
  unfold Seg34.relationRow6090 at r6090
  have hrung233 (bit : Bool) (hbit : rho 34225 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
        ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩ := by
    have hnextx : seg34AccX234 rho = seg34AccX233 rho + rho 37356 := by
      unfold seg34AccX234 seg34AccX233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 83]
      ring
    have hnexty : seg34AccY234 rho = seg34AccY233 rho + rho 37357 := by
      unfold seg34AccY234 seg34AccY233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 83]
      ring
    have hsum : seg34AccX233 rho + seg34AccY233 rho = rho 37349 := by
      unfold seg34AccX233 seg34AccY233
      linear_combination r6077
    have ha0 : (rho 37347 + rho 37348) * (seg34AccX233 rho + seg34AccY233 rho) = rho 37350 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 37348 * seg34AccX233 rho = rho 37351 := by
      unfold seg34AccX233
      linear_combination r6079
    have ha2 : rho 37347 * seg34AccY233 rho = rho 37352 := by
      unfold seg34AccY233
      linear_combination r6080
    have ha3 : 3021 * rho 37351 * rho 37352 = rho 37353 := by
      linear_combination r6081
    have ha4 : rho 37354 * (1 + rho 37353) = rho 37351 + rho 37352 := by
      linear_combination r6082
    have ha5 : rho 37355 * (1 - rho 37353) = rho 37350 - rho 37351 - rho 37352 := by
      linear_combination r6083
    have haddx :
        rho 37354 * (1 + 3021 * (rho 37348 * seg34AccX233 rho) * (rho 37347 * seg34AccY233 rho)) =
          rho 37348 * seg34AccX233 rho + rho 37347 * seg34AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37355 * (1 - 3021 * (rho 37348 * seg34AccX233 rho) * (rho 37347 * seg34AccY233 rho)) =
          (-1) * (rho 37348 * seg34AccX233 rho) - rho 37347 * seg34AccY233 rho +
            (seg34AccY233 rho - seg34AccX233 rho * (-1)) * (rho 37347 + rho 37348) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37355 * (1 - rho 37353) = rho 37350 - rho 37351 - rho 37352 := ha5
        _ = (-1) * rho 37351 - rho 37352 + (seg34AccY233 rho - seg34AccX233 rho * (-1)) * (rho 37347 + rho 37348) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX234 rho = seg34AccX233 rho - Bool.toZMod bit * (seg34AccX233 rho - rho 37354) := by
      have hd : rho 37356 = Bool.toZMod bit * (rho 37354 - seg34AccX233 rho) := by
        rw [← hbit]
        unfold seg34AccX233
        linear_combination -r6084
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY234 rho = seg34AccY233 rho - Bool.toZMod bit * (seg34AccY233 rho - rho 37355) := by
      have hd : rho 37357 = Bool.toZMod bit * (rho 37355 - seg34AccY233 rho) := by
        rw [← hbit]
        unfold seg34AccY233
        linear_combination -r6085
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37347 * rho 37348 = rho 37358 := by linear_combination r6086
    have hd1 : rho 37347 * rho 37347 = rho 37359 := by linear_combination r6087
    have hd2 : rho 37348 * rho 37348 = rho 37360 := by linear_combination r6088
    have hd3 : rho 37361 * (rho 37348 * rho 37348 + rho 37347 * rho 37347 * (-1)) = 2 * (rho 37347 * rho 37348) := by
      rw [hd0, hd1, hd2]
      linear_combination r6089
    have hd4 : rho 37362 * (2 - (rho 37348 * rho 37348 + rho 37347 * rho 37347 * (-1))) = rho 37348 * rho 37348 - rho 37347 * rho 37347 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX233 rho : Seg34.F), (seg34AccY233 rho : Seg34.F)⟩
      ⟨(rho 37347 : Seg34.F), (rho 37348 : Seg34.F)⟩
      ⟨(rho 37354 : Seg34.F), (rho 37355 : Seg34.F)⟩
      ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
      ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg34_rows234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6091 rho ∧ Seg34.relationRow6092 rho ∧ Seg34.relationRow6093 rho ∧ Seg34.relationRow6094 rho ∧ Seg34.relationRow6095 rho ∧ Seg34.relationRow6096 rho ∧ Seg34.relationRow6097 rho ∧ Seg34.relationRow6098 rho ∧ Seg34.relationRow6099 rho ∧ Seg34.relationRow6100 rho ∧ Seg34.relationRow6101 rho ∧ Seg34.relationRow6102 rho ∧ Seg34.relationRow6103 rho ∧ Seg34.relationRow6104 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩

theorem seg34_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34226 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩ := by
  obtain ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩ := seg34_rows234 rho h
  unfold Seg34.relationRow6091 at r6091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6091
  unfold Seg34.relationRow6092 at r6092
  unfold Seg34.relationRow6093 at r6093
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6093
  unfold Seg34.relationRow6094 at r6094
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6094
  unfold Seg34.relationRow6095 at r6095
  unfold Seg34.relationRow6096 at r6096
  unfold Seg34.relationRow6097 at r6097
  unfold Seg34.relationRow6098 at r6098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6098
  unfold Seg34.relationRow6099 at r6099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6099
  unfold Seg34.relationRow6100 at r6100
  unfold Seg34.relationRow6101 at r6101
  unfold Seg34.relationRow6102 at r6102
  unfold Seg34.relationRow6103 at r6103
  unfold Seg34.relationRow6104 at r6104
  have hrung234 (bit : Bool) (hbit : rho 34226 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
        ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩ := by
    have hnextx : seg34AccX235 rho = seg34AccX234 rho + rho 37370 := by
      unfold seg34AccX235 seg34AccX234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 84]
      ring
    have hnexty : seg34AccY235 rho = seg34AccY234 rho + rho 37371 := by
      unfold seg34AccY235 seg34AccY234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 84]
      ring
    have hsum : seg34AccX234 rho + seg34AccY234 rho = rho 37363 := by
      unfold seg34AccX234 seg34AccY234
      linear_combination r6091
    have ha0 : (rho 37361 + rho 37362) * (seg34AccX234 rho + seg34AccY234 rho) = rho 37364 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 37362 * seg34AccX234 rho = rho 37365 := by
      unfold seg34AccX234
      linear_combination r6093
    have ha2 : rho 37361 * seg34AccY234 rho = rho 37366 := by
      unfold seg34AccY234
      linear_combination r6094
    have ha3 : 3021 * rho 37365 * rho 37366 = rho 37367 := by
      linear_combination r6095
    have ha4 : rho 37368 * (1 + rho 37367) = rho 37365 + rho 37366 := by
      linear_combination r6096
    have ha5 : rho 37369 * (1 - rho 37367) = rho 37364 - rho 37365 - rho 37366 := by
      linear_combination r6097
    have haddx :
        rho 37368 * (1 + 3021 * (rho 37362 * seg34AccX234 rho) * (rho 37361 * seg34AccY234 rho)) =
          rho 37362 * seg34AccX234 rho + rho 37361 * seg34AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37369 * (1 - 3021 * (rho 37362 * seg34AccX234 rho) * (rho 37361 * seg34AccY234 rho)) =
          (-1) * (rho 37362 * seg34AccX234 rho) - rho 37361 * seg34AccY234 rho +
            (seg34AccY234 rho - seg34AccX234 rho * (-1)) * (rho 37361 + rho 37362) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37369 * (1 - rho 37367) = rho 37364 - rho 37365 - rho 37366 := ha5
        _ = (-1) * rho 37365 - rho 37366 + (seg34AccY234 rho - seg34AccX234 rho * (-1)) * (rho 37361 + rho 37362) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX235 rho = seg34AccX234 rho - Bool.toZMod bit * (seg34AccX234 rho - rho 37368) := by
      have hd : rho 37370 = Bool.toZMod bit * (rho 37368 - seg34AccX234 rho) := by
        rw [← hbit]
        unfold seg34AccX234
        linear_combination -r6098
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY235 rho = seg34AccY234 rho - Bool.toZMod bit * (seg34AccY234 rho - rho 37369) := by
      have hd : rho 37371 = Bool.toZMod bit * (rho 37369 - seg34AccY234 rho) := by
        rw [← hbit]
        unfold seg34AccY234
        linear_combination -r6099
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37361 * rho 37362 = rho 37372 := by linear_combination r6100
    have hd1 : rho 37361 * rho 37361 = rho 37373 := by linear_combination r6101
    have hd2 : rho 37362 * rho 37362 = rho 37374 := by linear_combination r6102
    have hd3 : rho 37375 * (rho 37362 * rho 37362 + rho 37361 * rho 37361 * (-1)) = 2 * (rho 37361 * rho 37362) := by
      rw [hd0, hd1, hd2]
      linear_combination r6103
    have hd4 : rho 37376 * (2 - (rho 37362 * rho 37362 + rho 37361 * rho 37361 * (-1))) = rho 37362 * rho 37362 - rho 37361 * rho 37361 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6104
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX234 rho : Seg34.F), (seg34AccY234 rho : Seg34.F)⟩
      ⟨(rho 37361 : Seg34.F), (rho 37362 : Seg34.F)⟩
      ⟨(rho 37368 : Seg34.F), (rho 37369 : Seg34.F)⟩
      ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
      ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg34_rows235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6105 rho ∧ Seg34.relationRow6106 rho ∧ Seg34.relationRow6107 rho ∧ Seg34.relationRow6108 rho ∧ Seg34.relationRow6109 rho ∧ Seg34.relationRow6110 rho ∧ Seg34.relationRow6111 rho ∧ Seg34.relationRow6112 rho ∧ Seg34.relationRow6113 rho ∧ Seg34.relationRow6114 rho ∧ Seg34.relationRow6115 rho ∧ Seg34.relationRow6116 rho ∧ Seg34.relationRow6117 rho ∧ Seg34.relationRow6118 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩

theorem seg34_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34227 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩ := by
  obtain ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩ := seg34_rows235 rho h
  unfold Seg34.relationRow6105 at r6105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6105
  unfold Seg34.relationRow6106 at r6106
  unfold Seg34.relationRow6107 at r6107
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6107
  unfold Seg34.relationRow6108 at r6108
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6108
  unfold Seg34.relationRow6109 at r6109
  unfold Seg34.relationRow6110 at r6110
  unfold Seg34.relationRow6111 at r6111
  unfold Seg34.relationRow6112 at r6112
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6112
  unfold Seg34.relationRow6113 at r6113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6113
  unfold Seg34.relationRow6114 at r6114
  unfold Seg34.relationRow6115 at r6115
  unfold Seg34.relationRow6116 at r6116
  unfold Seg34.relationRow6117 at r6117
  unfold Seg34.relationRow6118 at r6118
  have hrung235 (bit : Bool) (hbit : rho 34227 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
        ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩ := by
    have hnextx : seg34AccX236 rho = seg34AccX235 rho + rho 37384 := by
      unfold seg34AccX236 seg34AccX235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 85]
      ring
    have hnexty : seg34AccY236 rho = seg34AccY235 rho + rho 37385 := by
      unfold seg34AccY236 seg34AccY235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 85]
      ring
    have hsum : seg34AccX235 rho + seg34AccY235 rho = rho 37377 := by
      unfold seg34AccX235 seg34AccY235
      linear_combination r6105
    have ha0 : (rho 37375 + rho 37376) * (seg34AccX235 rho + seg34AccY235 rho) = rho 37378 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 37376 * seg34AccX235 rho = rho 37379 := by
      unfold seg34AccX235
      linear_combination r6107
    have ha2 : rho 37375 * seg34AccY235 rho = rho 37380 := by
      unfold seg34AccY235
      linear_combination r6108
    have ha3 : 3021 * rho 37379 * rho 37380 = rho 37381 := by
      linear_combination r6109
    have ha4 : rho 37382 * (1 + rho 37381) = rho 37379 + rho 37380 := by
      linear_combination r6110
    have ha5 : rho 37383 * (1 - rho 37381) = rho 37378 - rho 37379 - rho 37380 := by
      linear_combination r6111
    have haddx :
        rho 37382 * (1 + 3021 * (rho 37376 * seg34AccX235 rho) * (rho 37375 * seg34AccY235 rho)) =
          rho 37376 * seg34AccX235 rho + rho 37375 * seg34AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37383 * (1 - 3021 * (rho 37376 * seg34AccX235 rho) * (rho 37375 * seg34AccY235 rho)) =
          (-1) * (rho 37376 * seg34AccX235 rho) - rho 37375 * seg34AccY235 rho +
            (seg34AccY235 rho - seg34AccX235 rho * (-1)) * (rho 37375 + rho 37376) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37383 * (1 - rho 37381) = rho 37378 - rho 37379 - rho 37380 := ha5
        _ = (-1) * rho 37379 - rho 37380 + (seg34AccY235 rho - seg34AccX235 rho * (-1)) * (rho 37375 + rho 37376) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX236 rho = seg34AccX235 rho - Bool.toZMod bit * (seg34AccX235 rho - rho 37382) := by
      have hd : rho 37384 = Bool.toZMod bit * (rho 37382 - seg34AccX235 rho) := by
        rw [← hbit]
        unfold seg34AccX235
        linear_combination -r6112
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY236 rho = seg34AccY235 rho - Bool.toZMod bit * (seg34AccY235 rho - rho 37383) := by
      have hd : rho 37385 = Bool.toZMod bit * (rho 37383 - seg34AccY235 rho) := by
        rw [← hbit]
        unfold seg34AccY235
        linear_combination -r6113
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37375 * rho 37376 = rho 37386 := by linear_combination r6114
    have hd1 : rho 37375 * rho 37375 = rho 37387 := by linear_combination r6115
    have hd2 : rho 37376 * rho 37376 = rho 37388 := by linear_combination r6116
    have hd3 : rho 37389 * (rho 37376 * rho 37376 + rho 37375 * rho 37375 * (-1)) = 2 * (rho 37375 * rho 37376) := by
      rw [hd0, hd1, hd2]
      linear_combination r6117
    have hd4 : rho 37390 * (2 - (rho 37376 * rho 37376 + rho 37375 * rho 37375 * (-1))) = rho 37376 * rho 37376 - rho 37375 * rho 37375 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6118
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX235 rho : Seg34.F), (seg34AccY235 rho : Seg34.F)⟩
      ⟨(rho 37375 : Seg34.F), (rho 37376 : Seg34.F)⟩
      ⟨(rho 37382 : Seg34.F), (rho 37383 : Seg34.F)⟩
      ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
      ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg34_rows236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6119 rho ∧ Seg34.relationRow6120 rho ∧ Seg34.relationRow6121 rho ∧ Seg34.relationRow6122 rho ∧ Seg34.relationRow6123 rho ∧ Seg34.relationRow6124 rho ∧ Seg34.relationRow6125 rho ∧ Seg34.relationRow6126 rho ∧ Seg34.relationRow6127 rho ∧ Seg34.relationRow6128 rho ∧ Seg34.relationRow6129 rho ∧ Seg34.relationRow6130 rho ∧ Seg34.relationRow6131 rho ∧ Seg34.relationRow6132 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩

theorem seg34_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34228 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩ := by
  obtain ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩ := seg34_rows236 rho h
  unfold Seg34.relationRow6119 at r6119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6119
  unfold Seg34.relationRow6120 at r6120
  unfold Seg34.relationRow6121 at r6121
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6121
  unfold Seg34.relationRow6122 at r6122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6122
  unfold Seg34.relationRow6123 at r6123
  unfold Seg34.relationRow6124 at r6124
  unfold Seg34.relationRow6125 at r6125
  unfold Seg34.relationRow6126 at r6126
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6126
  unfold Seg34.relationRow6127 at r6127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6127
  unfold Seg34.relationRow6128 at r6128
  unfold Seg34.relationRow6129 at r6129
  unfold Seg34.relationRow6130 at r6130
  unfold Seg34.relationRow6131 at r6131
  unfold Seg34.relationRow6132 at r6132
  have hrung236 (bit : Bool) (hbit : rho 34228 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
        ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩ := by
    have hnextx : seg34AccX237 rho = seg34AccX236 rho + rho 37398 := by
      unfold seg34AccX237 seg34AccX236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 86]
      ring
    have hnexty : seg34AccY237 rho = seg34AccY236 rho + rho 37399 := by
      unfold seg34AccY237 seg34AccY236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 86]
      ring
    have hsum : seg34AccX236 rho + seg34AccY236 rho = rho 37391 := by
      unfold seg34AccX236 seg34AccY236
      linear_combination r6119
    have ha0 : (rho 37389 + rho 37390) * (seg34AccX236 rho + seg34AccY236 rho) = rho 37392 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 37390 * seg34AccX236 rho = rho 37393 := by
      unfold seg34AccX236
      linear_combination r6121
    have ha2 : rho 37389 * seg34AccY236 rho = rho 37394 := by
      unfold seg34AccY236
      linear_combination r6122
    have ha3 : 3021 * rho 37393 * rho 37394 = rho 37395 := by
      linear_combination r6123
    have ha4 : rho 37396 * (1 + rho 37395) = rho 37393 + rho 37394 := by
      linear_combination r6124
    have ha5 : rho 37397 * (1 - rho 37395) = rho 37392 - rho 37393 - rho 37394 := by
      linear_combination r6125
    have haddx :
        rho 37396 * (1 + 3021 * (rho 37390 * seg34AccX236 rho) * (rho 37389 * seg34AccY236 rho)) =
          rho 37390 * seg34AccX236 rho + rho 37389 * seg34AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37397 * (1 - 3021 * (rho 37390 * seg34AccX236 rho) * (rho 37389 * seg34AccY236 rho)) =
          (-1) * (rho 37390 * seg34AccX236 rho) - rho 37389 * seg34AccY236 rho +
            (seg34AccY236 rho - seg34AccX236 rho * (-1)) * (rho 37389 + rho 37390) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37397 * (1 - rho 37395) = rho 37392 - rho 37393 - rho 37394 := ha5
        _ = (-1) * rho 37393 - rho 37394 + (seg34AccY236 rho - seg34AccX236 rho * (-1)) * (rho 37389 + rho 37390) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX237 rho = seg34AccX236 rho - Bool.toZMod bit * (seg34AccX236 rho - rho 37396) := by
      have hd : rho 37398 = Bool.toZMod bit * (rho 37396 - seg34AccX236 rho) := by
        rw [← hbit]
        unfold seg34AccX236
        linear_combination -r6126
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY237 rho = seg34AccY236 rho - Bool.toZMod bit * (seg34AccY236 rho - rho 37397) := by
      have hd : rho 37399 = Bool.toZMod bit * (rho 37397 - seg34AccY236 rho) := by
        rw [← hbit]
        unfold seg34AccY236
        linear_combination -r6127
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37389 * rho 37390 = rho 37400 := by linear_combination r6128
    have hd1 : rho 37389 * rho 37389 = rho 37401 := by linear_combination r6129
    have hd2 : rho 37390 * rho 37390 = rho 37402 := by linear_combination r6130
    have hd3 : rho 37403 * (rho 37390 * rho 37390 + rho 37389 * rho 37389 * (-1)) = 2 * (rho 37389 * rho 37390) := by
      rw [hd0, hd1, hd2]
      linear_combination r6131
    have hd4 : rho 37404 * (2 - (rho 37390 * rho 37390 + rho 37389 * rho 37389 * (-1))) = rho 37390 * rho 37390 - rho 37389 * rho 37389 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6132
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX236 rho : Seg34.F), (seg34AccY236 rho : Seg34.F)⟩
      ⟨(rho 37389 : Seg34.F), (rho 37390 : Seg34.F)⟩
      ⟨(rho 37396 : Seg34.F), (rho 37397 : Seg34.F)⟩
      ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
      ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg34_rows237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6133 rho ∧ Seg34.relationRow6134 rho ∧ Seg34.relationRow6135 rho ∧ Seg34.relationRow6136 rho ∧ Seg34.relationRow6137 rho ∧ Seg34.relationRow6138 rho ∧ Seg34.relationRow6139 rho ∧ Seg34.relationRow6140 rho ∧ Seg34.relationRow6141 rho ∧ Seg34.relationRow6142 rho ∧ Seg34.relationRow6143 rho ∧ Seg34.relationRow6144 rho ∧ Seg34.relationRow6145 rho ∧ Seg34.relationRow6146 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, _, _, _
  ⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩

theorem seg34_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34229 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩ := by
  obtain ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩ := seg34_rows237 rho h
  unfold Seg34.relationRow6133 at r6133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6133
  unfold Seg34.relationRow6134 at r6134
  unfold Seg34.relationRow6135 at r6135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6135
  unfold Seg34.relationRow6136 at r6136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6136
  unfold Seg34.relationRow6137 at r6137
  unfold Seg34.relationRow6138 at r6138
  unfold Seg34.relationRow6139 at r6139
  unfold Seg34.relationRow6140 at r6140
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6140
  unfold Seg34.relationRow6141 at r6141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6141
  unfold Seg34.relationRow6142 at r6142
  unfold Seg34.relationRow6143 at r6143
  unfold Seg34.relationRow6144 at r6144
  unfold Seg34.relationRow6145 at r6145
  unfold Seg34.relationRow6146 at r6146
  have hrung237 (bit : Bool) (hbit : rho 34229 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
        ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩ := by
    have hnextx : seg34AccX238 rho = seg34AccX237 rho + rho 37412 := by
      unfold seg34AccX238 seg34AccX237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 87]
      ring
    have hnexty : seg34AccY238 rho = seg34AccY237 rho + rho 37413 := by
      unfold seg34AccY238 seg34AccY237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 87]
      ring
    have hsum : seg34AccX237 rho + seg34AccY237 rho = rho 37405 := by
      unfold seg34AccX237 seg34AccY237
      linear_combination r6133
    have ha0 : (rho 37403 + rho 37404) * (seg34AccX237 rho + seg34AccY237 rho) = rho 37406 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 37404 * seg34AccX237 rho = rho 37407 := by
      unfold seg34AccX237
      linear_combination r6135
    have ha2 : rho 37403 * seg34AccY237 rho = rho 37408 := by
      unfold seg34AccY237
      linear_combination r6136
    have ha3 : 3021 * rho 37407 * rho 37408 = rho 37409 := by
      linear_combination r6137
    have ha4 : rho 37410 * (1 + rho 37409) = rho 37407 + rho 37408 := by
      linear_combination r6138
    have ha5 : rho 37411 * (1 - rho 37409) = rho 37406 - rho 37407 - rho 37408 := by
      linear_combination r6139
    have haddx :
        rho 37410 * (1 + 3021 * (rho 37404 * seg34AccX237 rho) * (rho 37403 * seg34AccY237 rho)) =
          rho 37404 * seg34AccX237 rho + rho 37403 * seg34AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37411 * (1 - 3021 * (rho 37404 * seg34AccX237 rho) * (rho 37403 * seg34AccY237 rho)) =
          (-1) * (rho 37404 * seg34AccX237 rho) - rho 37403 * seg34AccY237 rho +
            (seg34AccY237 rho - seg34AccX237 rho * (-1)) * (rho 37403 + rho 37404) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37411 * (1 - rho 37409) = rho 37406 - rho 37407 - rho 37408 := ha5
        _ = (-1) * rho 37407 - rho 37408 + (seg34AccY237 rho - seg34AccX237 rho * (-1)) * (rho 37403 + rho 37404) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX238 rho = seg34AccX237 rho - Bool.toZMod bit * (seg34AccX237 rho - rho 37410) := by
      have hd : rho 37412 = Bool.toZMod bit * (rho 37410 - seg34AccX237 rho) := by
        rw [← hbit]
        unfold seg34AccX237
        linear_combination -r6140
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY238 rho = seg34AccY237 rho - Bool.toZMod bit * (seg34AccY237 rho - rho 37411) := by
      have hd : rho 37413 = Bool.toZMod bit * (rho 37411 - seg34AccY237 rho) := by
        rw [← hbit]
        unfold seg34AccY237
        linear_combination -r6141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37403 * rho 37404 = rho 37414 := by linear_combination r6142
    have hd1 : rho 37403 * rho 37403 = rho 37415 := by linear_combination r6143
    have hd2 : rho 37404 * rho 37404 = rho 37416 := by linear_combination r6144
    have hd3 : rho 37417 * (rho 37404 * rho 37404 + rho 37403 * rho 37403 * (-1)) = 2 * (rho 37403 * rho 37404) := by
      rw [hd0, hd1, hd2]
      linear_combination r6145
    have hd4 : rho 37418 * (2 - (rho 37404 * rho 37404 + rho 37403 * rho 37403 * (-1))) = rho 37404 * rho 37404 - rho 37403 * rho 37403 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX237 rho : Seg34.F), (seg34AccY237 rho : Seg34.F)⟩
      ⟨(rho 37403 : Seg34.F), (rho 37404 : Seg34.F)⟩
      ⟨(rho 37410 : Seg34.F), (rho 37411 : Seg34.F)⟩
      ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
      ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg34_rows238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6147 rho ∧ Seg34.relationRow6148 rho ∧ Seg34.relationRow6149 rho ∧ Seg34.relationRow6150 rho ∧ Seg34.relationRow6151 rho ∧ Seg34.relationRow6152 rho ∧ Seg34.relationRow6153 rho ∧ Seg34.relationRow6154 rho ∧ Seg34.relationRow6155 rho ∧ Seg34.relationRow6156 rho ∧ Seg34.relationRow6157 rho ∧ Seg34.relationRow6158 rho ∧ Seg34.relationRow6159 rho ∧ Seg34.relationRow6160 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p76, p77, _, _
  ⟩
  unfold Seg34.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩

theorem seg34_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34230 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩ := by
  obtain ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩ := seg34_rows238 rho h
  unfold Seg34.relationRow6147 at r6147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6147
  unfold Seg34.relationRow6148 at r6148
  unfold Seg34.relationRow6149 at r6149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6149
  unfold Seg34.relationRow6150 at r6150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6150
  unfold Seg34.relationRow6151 at r6151
  unfold Seg34.relationRow6152 at r6152
  unfold Seg34.relationRow6153 at r6153
  unfold Seg34.relationRow6154 at r6154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6154
  unfold Seg34.relationRow6155 at r6155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6155
  unfold Seg34.relationRow6156 at r6156
  unfold Seg34.relationRow6157 at r6157
  unfold Seg34.relationRow6158 at r6158
  unfold Seg34.relationRow6159 at r6159
  unfold Seg34.relationRow6160 at r6160
  have hrung238 (bit : Bool) (hbit : rho 34230 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
        ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩ := by
    have hnextx : seg34AccX239 rho = seg34AccX238 rho + rho 37426 := by
      unfold seg34AccX239 seg34AccX238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 88]
      ring
    have hnexty : seg34AccY239 rho = seg34AccY238 rho + rho 37427 := by
      unfold seg34AccY239 seg34AccY238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 88]
      ring
    have hsum : seg34AccX238 rho + seg34AccY238 rho = rho 37419 := by
      unfold seg34AccX238 seg34AccY238
      linear_combination r6147
    have ha0 : (rho 37417 + rho 37418) * (seg34AccX238 rho + seg34AccY238 rho) = rho 37420 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 37418 * seg34AccX238 rho = rho 37421 := by
      unfold seg34AccX238
      linear_combination r6149
    have ha2 : rho 37417 * seg34AccY238 rho = rho 37422 := by
      unfold seg34AccY238
      linear_combination r6150
    have ha3 : 3021 * rho 37421 * rho 37422 = rho 37423 := by
      linear_combination r6151
    have ha4 : rho 37424 * (1 + rho 37423) = rho 37421 + rho 37422 := by
      linear_combination r6152
    have ha5 : rho 37425 * (1 - rho 37423) = rho 37420 - rho 37421 - rho 37422 := by
      linear_combination r6153
    have haddx :
        rho 37424 * (1 + 3021 * (rho 37418 * seg34AccX238 rho) * (rho 37417 * seg34AccY238 rho)) =
          rho 37418 * seg34AccX238 rho + rho 37417 * seg34AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37425 * (1 - 3021 * (rho 37418 * seg34AccX238 rho) * (rho 37417 * seg34AccY238 rho)) =
          (-1) * (rho 37418 * seg34AccX238 rho) - rho 37417 * seg34AccY238 rho +
            (seg34AccY238 rho - seg34AccX238 rho * (-1)) * (rho 37417 + rho 37418) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37425 * (1 - rho 37423) = rho 37420 - rho 37421 - rho 37422 := ha5
        _ = (-1) * rho 37421 - rho 37422 + (seg34AccY238 rho - seg34AccX238 rho * (-1)) * (rho 37417 + rho 37418) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX239 rho = seg34AccX238 rho - Bool.toZMod bit * (seg34AccX238 rho - rho 37424) := by
      have hd : rho 37426 = Bool.toZMod bit * (rho 37424 - seg34AccX238 rho) := by
        rw [← hbit]
        unfold seg34AccX238
        linear_combination -r6154
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY239 rho = seg34AccY238 rho - Bool.toZMod bit * (seg34AccY238 rho - rho 37425) := by
      have hd : rho 37427 = Bool.toZMod bit * (rho 37425 - seg34AccY238 rho) := by
        rw [← hbit]
        unfold seg34AccY238
        linear_combination -r6155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37417 * rho 37418 = rho 37428 := by linear_combination r6156
    have hd1 : rho 37417 * rho 37417 = rho 37429 := by linear_combination r6157
    have hd2 : rho 37418 * rho 37418 = rho 37430 := by linear_combination r6158
    have hd3 : rho 37431 * (rho 37418 * rho 37418 + rho 37417 * rho 37417 * (-1)) = 2 * (rho 37417 * rho 37418) := by
      rw [hd0, hd1, hd2]
      linear_combination r6159
    have hd4 : rho 37432 * (2 - (rho 37418 * rho 37418 + rho 37417 * rho 37417 * (-1))) = rho 37418 * rho 37418 - rho 37417 * rho 37417 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX238 rho : Seg34.F), (seg34AccY238 rho : Seg34.F)⟩
      ⟨(rho 37417 : Seg34.F), (rho 37418 : Seg34.F)⟩
      ⟨(rho 37424 : Seg34.F), (rho 37425 : Seg34.F)⟩
      ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
      ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg34_rows239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6161 rho ∧ Seg34.relationRow6162 rho ∧ Seg34.relationRow6163 rho ∧ Seg34.relationRow6164 rho ∧ Seg34.relationRow6165 rho ∧ Seg34.relationRow6166 rho ∧ Seg34.relationRow6167 rho ∧ Seg34.relationRow6168 rho ∧ Seg34.relationRow6169 rho ∧ Seg34.relationRow6170 rho ∧ Seg34.relationRow6171 rho ∧ Seg34.relationRow6172 rho ∧ Seg34.relationRow6173 rho ∧ Seg34.relationRow6174 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩

theorem seg34_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34231 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩ := by
  obtain ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩ := seg34_rows239 rho h
  unfold Seg34.relationRow6161 at r6161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6161
  unfold Seg34.relationRow6162 at r6162
  unfold Seg34.relationRow6163 at r6163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6163
  unfold Seg34.relationRow6164 at r6164
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6164
  unfold Seg34.relationRow6165 at r6165
  unfold Seg34.relationRow6166 at r6166
  unfold Seg34.relationRow6167 at r6167
  unfold Seg34.relationRow6168 at r6168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6168
  unfold Seg34.relationRow6169 at r6169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6169
  unfold Seg34.relationRow6170 at r6170
  unfold Seg34.relationRow6171 at r6171
  unfold Seg34.relationRow6172 at r6172
  unfold Seg34.relationRow6173 at r6173
  unfold Seg34.relationRow6174 at r6174
  have hrung239 (bit : Bool) (hbit : rho 34231 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
        ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩ := by
    have hnextx : seg34AccX240 rho = seg34AccX239 rho + rho 37440 := by
      unfold seg34AccX240 seg34AccX239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 89]
      ring
    have hnexty : seg34AccY240 rho = seg34AccY239 rho + rho 37441 := by
      unfold seg34AccY240 seg34AccY239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 89]
      ring
    have hsum : seg34AccX239 rho + seg34AccY239 rho = rho 37433 := by
      unfold seg34AccX239 seg34AccY239
      linear_combination r6161
    have ha0 : (rho 37431 + rho 37432) * (seg34AccX239 rho + seg34AccY239 rho) = rho 37434 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 37432 * seg34AccX239 rho = rho 37435 := by
      unfold seg34AccX239
      linear_combination r6163
    have ha2 : rho 37431 * seg34AccY239 rho = rho 37436 := by
      unfold seg34AccY239
      linear_combination r6164
    have ha3 : 3021 * rho 37435 * rho 37436 = rho 37437 := by
      linear_combination r6165
    have ha4 : rho 37438 * (1 + rho 37437) = rho 37435 + rho 37436 := by
      linear_combination r6166
    have ha5 : rho 37439 * (1 - rho 37437) = rho 37434 - rho 37435 - rho 37436 := by
      linear_combination r6167
    have haddx :
        rho 37438 * (1 + 3021 * (rho 37432 * seg34AccX239 rho) * (rho 37431 * seg34AccY239 rho)) =
          rho 37432 * seg34AccX239 rho + rho 37431 * seg34AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37439 * (1 - 3021 * (rho 37432 * seg34AccX239 rho) * (rho 37431 * seg34AccY239 rho)) =
          (-1) * (rho 37432 * seg34AccX239 rho) - rho 37431 * seg34AccY239 rho +
            (seg34AccY239 rho - seg34AccX239 rho * (-1)) * (rho 37431 + rho 37432) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37439 * (1 - rho 37437) = rho 37434 - rho 37435 - rho 37436 := ha5
        _ = (-1) * rho 37435 - rho 37436 + (seg34AccY239 rho - seg34AccX239 rho * (-1)) * (rho 37431 + rho 37432) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX240 rho = seg34AccX239 rho - Bool.toZMod bit * (seg34AccX239 rho - rho 37438) := by
      have hd : rho 37440 = Bool.toZMod bit * (rho 37438 - seg34AccX239 rho) := by
        rw [← hbit]
        unfold seg34AccX239
        linear_combination -r6168
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY240 rho = seg34AccY239 rho - Bool.toZMod bit * (seg34AccY239 rho - rho 37439) := by
      have hd : rho 37441 = Bool.toZMod bit * (rho 37439 - seg34AccY239 rho) := by
        rw [← hbit]
        unfold seg34AccY239
        linear_combination -r6169
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37431 * rho 37432 = rho 37442 := by linear_combination r6170
    have hd1 : rho 37431 * rho 37431 = rho 37443 := by linear_combination r6171
    have hd2 : rho 37432 * rho 37432 = rho 37444 := by linear_combination r6172
    have hd3 : rho 37445 * (rho 37432 * rho 37432 + rho 37431 * rho 37431 * (-1)) = 2 * (rho 37431 * rho 37432) := by
      rw [hd0, hd1, hd2]
      linear_combination r6173
    have hd4 : rho 37446 * (2 - (rho 37432 * rho 37432 + rho 37431 * rho 37431 * (-1))) = rho 37432 * rho 37432 - rho 37431 * rho 37431 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6174
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX239 rho : Seg34.F), (seg34AccY239 rho : Seg34.F)⟩
      ⟨(rho 37431 : Seg34.F), (rho 37432 : Seg34.F)⟩
      ⟨(rho 37438 : Seg34.F), (rho 37439 : Seg34.F)⟩
      ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
      ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg34_rows240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6175 rho ∧ Seg34.relationRow6176 rho ∧ Seg34.relationRow6177 rho ∧ Seg34.relationRow6178 rho ∧ Seg34.relationRow6179 rho ∧ Seg34.relationRow6180 rho ∧ Seg34.relationRow6181 rho ∧ Seg34.relationRow6182 rho ∧ Seg34.relationRow6183 rho ∧ Seg34.relationRow6184 rho ∧ Seg34.relationRow6185 rho ∧ Seg34.relationRow6186 rho ∧ Seg34.relationRow6187 rho ∧ Seg34.relationRow6188 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩

theorem seg34_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34232 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩ := by
  obtain ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩ := seg34_rows240 rho h
  unfold Seg34.relationRow6175 at r6175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6175
  unfold Seg34.relationRow6176 at r6176
  unfold Seg34.relationRow6177 at r6177
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6177
  unfold Seg34.relationRow6178 at r6178
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6178
  unfold Seg34.relationRow6179 at r6179
  unfold Seg34.relationRow6180 at r6180
  unfold Seg34.relationRow6181 at r6181
  unfold Seg34.relationRow6182 at r6182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6182
  unfold Seg34.relationRow6183 at r6183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6183
  unfold Seg34.relationRow6184 at r6184
  unfold Seg34.relationRow6185 at r6185
  unfold Seg34.relationRow6186 at r6186
  unfold Seg34.relationRow6187 at r6187
  unfold Seg34.relationRow6188 at r6188
  have hrung240 (bit : Bool) (hbit : rho 34232 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
        ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩ := by
    have hnextx : seg34AccX241 rho = seg34AccX240 rho + rho 37454 := by
      unfold seg34AccX241 seg34AccX240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 90]
      ring
    have hnexty : seg34AccY241 rho = seg34AccY240 rho + rho 37455 := by
      unfold seg34AccY241 seg34AccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 90]
      ring
    have hsum : seg34AccX240 rho + seg34AccY240 rho = rho 37447 := by
      unfold seg34AccX240 seg34AccY240
      linear_combination r6175
    have ha0 : (rho 37445 + rho 37446) * (seg34AccX240 rho + seg34AccY240 rho) = rho 37448 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 37446 * seg34AccX240 rho = rho 37449 := by
      unfold seg34AccX240
      linear_combination r6177
    have ha2 : rho 37445 * seg34AccY240 rho = rho 37450 := by
      unfold seg34AccY240
      linear_combination r6178
    have ha3 : 3021 * rho 37449 * rho 37450 = rho 37451 := by
      linear_combination r6179
    have ha4 : rho 37452 * (1 + rho 37451) = rho 37449 + rho 37450 := by
      linear_combination r6180
    have ha5 : rho 37453 * (1 - rho 37451) = rho 37448 - rho 37449 - rho 37450 := by
      linear_combination r6181
    have haddx :
        rho 37452 * (1 + 3021 * (rho 37446 * seg34AccX240 rho) * (rho 37445 * seg34AccY240 rho)) =
          rho 37446 * seg34AccX240 rho + rho 37445 * seg34AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37453 * (1 - 3021 * (rho 37446 * seg34AccX240 rho) * (rho 37445 * seg34AccY240 rho)) =
          (-1) * (rho 37446 * seg34AccX240 rho) - rho 37445 * seg34AccY240 rho +
            (seg34AccY240 rho - seg34AccX240 rho * (-1)) * (rho 37445 + rho 37446) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37453 * (1 - rho 37451) = rho 37448 - rho 37449 - rho 37450 := ha5
        _ = (-1) * rho 37449 - rho 37450 + (seg34AccY240 rho - seg34AccX240 rho * (-1)) * (rho 37445 + rho 37446) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX241 rho = seg34AccX240 rho - Bool.toZMod bit * (seg34AccX240 rho - rho 37452) := by
      have hd : rho 37454 = Bool.toZMod bit * (rho 37452 - seg34AccX240 rho) := by
        rw [← hbit]
        unfold seg34AccX240
        linear_combination -r6182
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY241 rho = seg34AccY240 rho - Bool.toZMod bit * (seg34AccY240 rho - rho 37453) := by
      have hd : rho 37455 = Bool.toZMod bit * (rho 37453 - seg34AccY240 rho) := by
        rw [← hbit]
        unfold seg34AccY240
        linear_combination -r6183
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37445 * rho 37446 = rho 37456 := by linear_combination r6184
    have hd1 : rho 37445 * rho 37445 = rho 37457 := by linear_combination r6185
    have hd2 : rho 37446 * rho 37446 = rho 37458 := by linear_combination r6186
    have hd3 : rho 37459 * (rho 37446 * rho 37446 + rho 37445 * rho 37445 * (-1)) = 2 * (rho 37445 * rho 37446) := by
      rw [hd0, hd1, hd2]
      linear_combination r6187
    have hd4 : rho 37460 * (2 - (rho 37446 * rho 37446 + rho 37445 * rho 37445 * (-1))) = rho 37446 * rho 37446 - rho 37445 * rho 37445 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6188
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX240 rho : Seg34.F), (seg34AccY240 rho : Seg34.F)⟩
      ⟨(rho 37445 : Seg34.F), (rho 37446 : Seg34.F)⟩
      ⟨(rho 37452 : Seg34.F), (rho 37453 : Seg34.F)⟩
      ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
      ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg34_rows241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6189 rho ∧ Seg34.relationRow6190 rho ∧ Seg34.relationRow6191 rho ∧ Seg34.relationRow6192 rho ∧ Seg34.relationRow6193 rho ∧ Seg34.relationRow6194 rho ∧ Seg34.relationRow6195 rho ∧ Seg34.relationRow6196 rho ∧ Seg34.relationRow6197 rho ∧ Seg34.relationRow6198 rho ∧ Seg34.relationRow6199 rho ∧ Seg34.relationRow6200 rho ∧ Seg34.relationRow6201 rho ∧ Seg34.relationRow6202 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, _, _
  ⟩
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩

theorem seg34_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34233 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩ := by
  obtain ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩ := seg34_rows241 rho h
  unfold Seg34.relationRow6189 at r6189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6189
  unfold Seg34.relationRow6190 at r6190
  unfold Seg34.relationRow6191 at r6191
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6191
  unfold Seg34.relationRow6192 at r6192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6192
  unfold Seg34.relationRow6193 at r6193
  unfold Seg34.relationRow6194 at r6194
  unfold Seg34.relationRow6195 at r6195
  unfold Seg34.relationRow6196 at r6196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6196
  unfold Seg34.relationRow6197 at r6197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6197
  unfold Seg34.relationRow6198 at r6198
  unfold Seg34.relationRow6199 at r6199
  unfold Seg34.relationRow6200 at r6200
  unfold Seg34.relationRow6201 at r6201
  unfold Seg34.relationRow6202 at r6202
  have hrung241 (bit : Bool) (hbit : rho 34233 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
        ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩ := by
    have hnextx : seg34AccX242 rho = seg34AccX241 rho + rho 37468 := by
      unfold seg34AccX242 seg34AccX241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 91]
      ring
    have hnexty : seg34AccY242 rho = seg34AccY241 rho + rho 37469 := by
      unfold seg34AccY242 seg34AccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 91]
      ring
    have hsum : seg34AccX241 rho + seg34AccY241 rho = rho 37461 := by
      unfold seg34AccX241 seg34AccY241
      linear_combination r6189
    have ha0 : (rho 37459 + rho 37460) * (seg34AccX241 rho + seg34AccY241 rho) = rho 37462 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 37460 * seg34AccX241 rho = rho 37463 := by
      unfold seg34AccX241
      linear_combination r6191
    have ha2 : rho 37459 * seg34AccY241 rho = rho 37464 := by
      unfold seg34AccY241
      linear_combination r6192
    have ha3 : 3021 * rho 37463 * rho 37464 = rho 37465 := by
      linear_combination r6193
    have ha4 : rho 37466 * (1 + rho 37465) = rho 37463 + rho 37464 := by
      linear_combination r6194
    have ha5 : rho 37467 * (1 - rho 37465) = rho 37462 - rho 37463 - rho 37464 := by
      linear_combination r6195
    have haddx :
        rho 37466 * (1 + 3021 * (rho 37460 * seg34AccX241 rho) * (rho 37459 * seg34AccY241 rho)) =
          rho 37460 * seg34AccX241 rho + rho 37459 * seg34AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37467 * (1 - 3021 * (rho 37460 * seg34AccX241 rho) * (rho 37459 * seg34AccY241 rho)) =
          (-1) * (rho 37460 * seg34AccX241 rho) - rho 37459 * seg34AccY241 rho +
            (seg34AccY241 rho - seg34AccX241 rho * (-1)) * (rho 37459 + rho 37460) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37467 * (1 - rho 37465) = rho 37462 - rho 37463 - rho 37464 := ha5
        _ = (-1) * rho 37463 - rho 37464 + (seg34AccY241 rho - seg34AccX241 rho * (-1)) * (rho 37459 + rho 37460) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX242 rho = seg34AccX241 rho - Bool.toZMod bit * (seg34AccX241 rho - rho 37466) := by
      have hd : rho 37468 = Bool.toZMod bit * (rho 37466 - seg34AccX241 rho) := by
        rw [← hbit]
        unfold seg34AccX241
        linear_combination -r6196
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY242 rho = seg34AccY241 rho - Bool.toZMod bit * (seg34AccY241 rho - rho 37467) := by
      have hd : rho 37469 = Bool.toZMod bit * (rho 37467 - seg34AccY241 rho) := by
        rw [← hbit]
        unfold seg34AccY241
        linear_combination -r6197
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37459 * rho 37460 = rho 37470 := by linear_combination r6198
    have hd1 : rho 37459 * rho 37459 = rho 37471 := by linear_combination r6199
    have hd2 : rho 37460 * rho 37460 = rho 37472 := by linear_combination r6200
    have hd3 : rho 37473 * (rho 37460 * rho 37460 + rho 37459 * rho 37459 * (-1)) = 2 * (rho 37459 * rho 37460) := by
      rw [hd0, hd1, hd2]
      linear_combination r6201
    have hd4 : rho 37474 * (2 - (rho 37460 * rho 37460 + rho 37459 * rho 37459 * (-1))) = rho 37460 * rho 37460 - rho 37459 * rho 37459 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6202
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX241 rho : Seg34.F), (seg34AccY241 rho : Seg34.F)⟩
      ⟨(rho 37459 : Seg34.F), (rho 37460 : Seg34.F)⟩
      ⟨(rho 37466 : Seg34.F), (rho 37467 : Seg34.F)⟩
      ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
      ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg34_hstep_c21 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 231 ≤ i → i < 242 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg34_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg34_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg34_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg34_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg34_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg34_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg34_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg34_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg34_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg34_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
