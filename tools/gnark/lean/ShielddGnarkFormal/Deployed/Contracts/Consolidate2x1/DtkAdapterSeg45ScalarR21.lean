import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6049 rho ∧ Seg45.relationRow6050 rho ∧ Seg45.relationRow6051 rho ∧ Seg45.relationRow6052 rho ∧ Seg45.relationRow6053 rho ∧ Seg45.relationRow6054 rho ∧ Seg45.relationRow6055 rho ∧ Seg45.relationRow6056 rho ∧ Seg45.relationRow6057 rho ∧ Seg45.relationRow6058 rho ∧ Seg45.relationRow6059 rho ∧ Seg45.relationRow6060 rho ∧ Seg45.relationRow6061 rho ∧ Seg45.relationRow6062 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩

theorem seg45_rung231 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩ := by
  obtain ⟨r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062⟩ := seg45_rows231 rho h
  unfold Seg45.relationRow6049 at r6049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6049
  unfold Seg45.relationRow6050 at r6050
  unfold Seg45.relationRow6051 at r6051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6051
  unfold Seg45.relationRow6052 at r6052
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6052
  unfold Seg45.relationRow6053 at r6053
  unfold Seg45.relationRow6054 at r6054
  unfold Seg45.relationRow6055 at r6055
  unfold Seg45.relationRow6056 at r6056
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6056
  unfold Seg45.relationRow6057 at r6057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6057
  unfold Seg45.relationRow6058 at r6058
  unfold Seg45.relationRow6059 at r6059
  unfold Seg45.relationRow6060 at r6060
  unfold Seg45.relationRow6061 at r6061
  unfold Seg45.relationRow6062 at r6062
  have hrung231 (bit : Bool) (hbit : rho 41179 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
        ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩ := by
    have hnextx : seg45AccX232 rho = seg45AccX231 rho + rho 44284 := by
      unfold seg45AccX232 seg45AccX231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 81]
      ring
    have hnexty : seg45AccY232 rho = seg45AccY231 rho + rho 44285 := by
      unfold seg45AccY232 seg45AccY231
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 81]
      ring
    have hsum : seg45AccX231 rho + seg45AccY231 rho = rho 44277 := by
      unfold seg45AccX231 seg45AccY231
      linear_combination r6049
    have ha0 : (rho 44275 + rho 44276) * (seg45AccX231 rho + seg45AccY231 rho) = rho 44278 := by
      rw [hsum]
      linear_combination r6050
    have ha1 : rho 44276 * seg45AccX231 rho = rho 44279 := by
      unfold seg45AccX231
      linear_combination r6051
    have ha2 : rho 44275 * seg45AccY231 rho = rho 44280 := by
      unfold seg45AccY231
      linear_combination r6052
    have ha3 : 3021 * rho 44279 * rho 44280 = rho 44281 := by
      linear_combination r6053
    have ha4 : rho 44282 * (1 + rho 44281) = rho 44279 + rho 44280 := by
      linear_combination r6054
    have ha5 : rho 44283 * (1 - rho 44281) = rho 44278 - rho 44279 - rho 44280 := by
      linear_combination r6055
    have haddx :
        rho 44282 * (1 + 3021 * (rho 44276 * seg45AccX231 rho) * (rho 44275 * seg45AccY231 rho)) =
          rho 44276 * seg45AccX231 rho + rho 44275 * seg45AccY231 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44283 * (1 - 3021 * (rho 44276 * seg45AccX231 rho) * (rho 44275 * seg45AccY231 rho)) =
          (-1) * (rho 44276 * seg45AccX231 rho) - rho 44275 * seg45AccY231 rho +
            (seg45AccY231 rho - seg45AccX231 rho * (-1)) * (rho 44275 + rho 44276) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44283 * (1 - rho 44281) = rho 44278 - rho 44279 - rho 44280 := ha5
        _ = (-1) * rho 44279 - rho 44280 + (seg45AccY231 rho - seg45AccX231 rho * (-1)) * (rho 44275 + rho 44276) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX232 rho = seg45AccX231 rho - Bool.toZMod bit * (seg45AccX231 rho - rho 44282) := by
      have hd : rho 44284 = Bool.toZMod bit * (rho 44282 - seg45AccX231 rho) := by
        rw [← hbit]
        unfold seg45AccX231
        linear_combination -r6056
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY232 rho = seg45AccY231 rho - Bool.toZMod bit * (seg45AccY231 rho - rho 44283) := by
      have hd : rho 44285 = Bool.toZMod bit * (rho 44283 - seg45AccY231 rho) := by
        rw [← hbit]
        unfold seg45AccY231
        linear_combination -r6057
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44275 * rho 44276 = rho 44286 := by linear_combination r6058
    have hd1 : rho 44275 * rho 44275 = rho 44287 := by linear_combination r6059
    have hd2 : rho 44276 * rho 44276 = rho 44288 := by linear_combination r6060
    have hd3 : rho 44289 * (rho 44276 * rho 44276 + rho 44275 * rho 44275 * (-1)) = 2 * (rho 44275 * rho 44276) := by
      rw [hd0, hd1, hd2]
      linear_combination r6061
    have hd4 : rho 44290 * (2 - (rho 44276 * rho 44276 + rho 44275 * rho 44275 * (-1))) = rho 44276 * rho 44276 - rho 44275 * rho 44275 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6062
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX231 rho : Seg45.F), (seg45AccY231 rho : Seg45.F)⟩
      ⟨(rho 44275 : Seg45.F), (rho 44276 : Seg45.F)⟩
      ⟨(rho 44282 : Seg45.F), (rho 44283 : Seg45.F)⟩
      ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
      ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung231

theorem seg45_rows232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6063 rho ∧ Seg45.relationRow6064 rho ∧ Seg45.relationRow6065 rho ∧ Seg45.relationRow6066 rho ∧ Seg45.relationRow6067 rho ∧ Seg45.relationRow6068 rho ∧ Seg45.relationRow6069 rho ∧ Seg45.relationRow6070 rho ∧ Seg45.relationRow6071 rho ∧ Seg45.relationRow6072 rho ∧ Seg45.relationRow6073 rho ∧ Seg45.relationRow6074 rho ∧ Seg45.relationRow6075 rho ∧ Seg45.relationRow6076 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, _, _, _⟩
  exact ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩

theorem seg45_rung232 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩ := by
  obtain ⟨r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076⟩ := seg45_rows232 rho h
  unfold Seg45.relationRow6063 at r6063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6063
  unfold Seg45.relationRow6064 at r6064
  unfold Seg45.relationRow6065 at r6065
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6065
  unfold Seg45.relationRow6066 at r6066
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6066
  unfold Seg45.relationRow6067 at r6067
  unfold Seg45.relationRow6068 at r6068
  unfold Seg45.relationRow6069 at r6069
  unfold Seg45.relationRow6070 at r6070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6070
  unfold Seg45.relationRow6071 at r6071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6071
  unfold Seg45.relationRow6072 at r6072
  unfold Seg45.relationRow6073 at r6073
  unfold Seg45.relationRow6074 at r6074
  unfold Seg45.relationRow6075 at r6075
  unfold Seg45.relationRow6076 at r6076
  have hrung232 (bit : Bool) (hbit : rho 41180 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
        ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩ := by
    have hnextx : seg45AccX233 rho = seg45AccX232 rho + rho 44298 := by
      unfold seg45AccX233 seg45AccX232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 82]
      ring
    have hnexty : seg45AccY233 rho = seg45AccY232 rho + rho 44299 := by
      unfold seg45AccY233 seg45AccY232
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 82]
      ring
    have hsum : seg45AccX232 rho + seg45AccY232 rho = rho 44291 := by
      unfold seg45AccX232 seg45AccY232
      linear_combination r6063
    have ha0 : (rho 44289 + rho 44290) * (seg45AccX232 rho + seg45AccY232 rho) = rho 44292 := by
      rw [hsum]
      linear_combination r6064
    have ha1 : rho 44290 * seg45AccX232 rho = rho 44293 := by
      unfold seg45AccX232
      linear_combination r6065
    have ha2 : rho 44289 * seg45AccY232 rho = rho 44294 := by
      unfold seg45AccY232
      linear_combination r6066
    have ha3 : 3021 * rho 44293 * rho 44294 = rho 44295 := by
      linear_combination r6067
    have ha4 : rho 44296 * (1 + rho 44295) = rho 44293 + rho 44294 := by
      linear_combination r6068
    have ha5 : rho 44297 * (1 - rho 44295) = rho 44292 - rho 44293 - rho 44294 := by
      linear_combination r6069
    have haddx :
        rho 44296 * (1 + 3021 * (rho 44290 * seg45AccX232 rho) * (rho 44289 * seg45AccY232 rho)) =
          rho 44290 * seg45AccX232 rho + rho 44289 * seg45AccY232 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44297 * (1 - 3021 * (rho 44290 * seg45AccX232 rho) * (rho 44289 * seg45AccY232 rho)) =
          (-1) * (rho 44290 * seg45AccX232 rho) - rho 44289 * seg45AccY232 rho +
            (seg45AccY232 rho - seg45AccX232 rho * (-1)) * (rho 44289 + rho 44290) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44297 * (1 - rho 44295) = rho 44292 - rho 44293 - rho 44294 := ha5
        _ = (-1) * rho 44293 - rho 44294 + (seg45AccY232 rho - seg45AccX232 rho * (-1)) * (rho 44289 + rho 44290) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX233 rho = seg45AccX232 rho - Bool.toZMod bit * (seg45AccX232 rho - rho 44296) := by
      have hd : rho 44298 = Bool.toZMod bit * (rho 44296 - seg45AccX232 rho) := by
        rw [← hbit]
        unfold seg45AccX232
        linear_combination -r6070
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY233 rho = seg45AccY232 rho - Bool.toZMod bit * (seg45AccY232 rho - rho 44297) := by
      have hd : rho 44299 = Bool.toZMod bit * (rho 44297 - seg45AccY232 rho) := by
        rw [← hbit]
        unfold seg45AccY232
        linear_combination -r6071
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44289 * rho 44290 = rho 44300 := by linear_combination r6072
    have hd1 : rho 44289 * rho 44289 = rho 44301 := by linear_combination r6073
    have hd2 : rho 44290 * rho 44290 = rho 44302 := by linear_combination r6074
    have hd3 : rho 44303 * (rho 44290 * rho 44290 + rho 44289 * rho 44289 * (-1)) = 2 * (rho 44289 * rho 44290) := by
      rw [hd0, hd1, hd2]
      linear_combination r6075
    have hd4 : rho 44304 * (2 - (rho 44290 * rho 44290 + rho 44289 * rho 44289 * (-1))) = rho 44290 * rho 44290 - rho 44289 * rho 44289 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6076
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX232 rho : Seg45.F), (seg45AccY232 rho : Seg45.F)⟩
      ⟨(rho 44289 : Seg45.F), (rho 44290 : Seg45.F)⟩
      ⟨(rho 44296 : Seg45.F), (rho 44297 : Seg45.F)⟩
      ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
      ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung232

theorem seg45_rows233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6077 rho ∧ Seg45.relationRow6078 rho ∧ Seg45.relationRow6079 rho ∧ Seg45.relationRow6080 rho ∧ Seg45.relationRow6081 rho ∧ Seg45.relationRow6082 rho ∧ Seg45.relationRow6083 rho ∧ Seg45.relationRow6084 rho ∧ Seg45.relationRow6085 rho ∧ Seg45.relationRow6086 rho ∧ Seg45.relationRow6087 rho ∧ Seg45.relationRow6088 rho ∧ Seg45.relationRow6089 rho ∧ Seg45.relationRow6090 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart75 at p75
  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6077, r6078, r6079⟩
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩

theorem seg45_rung233 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41181 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩ := by
  obtain ⟨r6077, r6078, r6079, r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090⟩ := seg45_rows233 rho h
  unfold Seg45.relationRow6077 at r6077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6077
  unfold Seg45.relationRow6078 at r6078
  unfold Seg45.relationRow6079 at r6079
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6079
  unfold Seg45.relationRow6080 at r6080
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6080
  unfold Seg45.relationRow6081 at r6081
  unfold Seg45.relationRow6082 at r6082
  unfold Seg45.relationRow6083 at r6083
  unfold Seg45.relationRow6084 at r6084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6084
  unfold Seg45.relationRow6085 at r6085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6085
  unfold Seg45.relationRow6086 at r6086
  unfold Seg45.relationRow6087 at r6087
  unfold Seg45.relationRow6088 at r6088
  unfold Seg45.relationRow6089 at r6089
  unfold Seg45.relationRow6090 at r6090
  have hrung233 (bit : Bool) (hbit : rho 41181 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
        ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩ := by
    have hnextx : seg45AccX234 rho = seg45AccX233 rho + rho 44312 := by
      unfold seg45AccX234 seg45AccX233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 83]
      ring
    have hnexty : seg45AccY234 rho = seg45AccY233 rho + rho 44313 := by
      unfold seg45AccY234 seg45AccY233
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 83]
      ring
    have hsum : seg45AccX233 rho + seg45AccY233 rho = rho 44305 := by
      unfold seg45AccX233 seg45AccY233
      linear_combination r6077
    have ha0 : (rho 44303 + rho 44304) * (seg45AccX233 rho + seg45AccY233 rho) = rho 44306 := by
      rw [hsum]
      linear_combination r6078
    have ha1 : rho 44304 * seg45AccX233 rho = rho 44307 := by
      unfold seg45AccX233
      linear_combination r6079
    have ha2 : rho 44303 * seg45AccY233 rho = rho 44308 := by
      unfold seg45AccY233
      linear_combination r6080
    have ha3 : 3021 * rho 44307 * rho 44308 = rho 44309 := by
      linear_combination r6081
    have ha4 : rho 44310 * (1 + rho 44309) = rho 44307 + rho 44308 := by
      linear_combination r6082
    have ha5 : rho 44311 * (1 - rho 44309) = rho 44306 - rho 44307 - rho 44308 := by
      linear_combination r6083
    have haddx :
        rho 44310 * (1 + 3021 * (rho 44304 * seg45AccX233 rho) * (rho 44303 * seg45AccY233 rho)) =
          rho 44304 * seg45AccX233 rho + rho 44303 * seg45AccY233 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44311 * (1 - 3021 * (rho 44304 * seg45AccX233 rho) * (rho 44303 * seg45AccY233 rho)) =
          (-1) * (rho 44304 * seg45AccX233 rho) - rho 44303 * seg45AccY233 rho +
            (seg45AccY233 rho - seg45AccX233 rho * (-1)) * (rho 44303 + rho 44304) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44311 * (1 - rho 44309) = rho 44306 - rho 44307 - rho 44308 := ha5
        _ = (-1) * rho 44307 - rho 44308 + (seg45AccY233 rho - seg45AccX233 rho * (-1)) * (rho 44303 + rho 44304) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX234 rho = seg45AccX233 rho - Bool.toZMod bit * (seg45AccX233 rho - rho 44310) := by
      have hd : rho 44312 = Bool.toZMod bit * (rho 44310 - seg45AccX233 rho) := by
        rw [← hbit]
        unfold seg45AccX233
        linear_combination -r6084
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY234 rho = seg45AccY233 rho - Bool.toZMod bit * (seg45AccY233 rho - rho 44311) := by
      have hd : rho 44313 = Bool.toZMod bit * (rho 44311 - seg45AccY233 rho) := by
        rw [← hbit]
        unfold seg45AccY233
        linear_combination -r6085
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44303 * rho 44304 = rho 44314 := by linear_combination r6086
    have hd1 : rho 44303 * rho 44303 = rho 44315 := by linear_combination r6087
    have hd2 : rho 44304 * rho 44304 = rho 44316 := by linear_combination r6088
    have hd3 : rho 44317 * (rho 44304 * rho 44304 + rho 44303 * rho 44303 * (-1)) = 2 * (rho 44303 * rho 44304) := by
      rw [hd0, hd1, hd2]
      linear_combination r6089
    have hd4 : rho 44318 * (2 - (rho 44304 * rho 44304 + rho 44303 * rho 44303 * (-1))) = rho 44304 * rho 44304 - rho 44303 * rho 44303 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6090
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX233 rho : Seg45.F), (seg45AccY233 rho : Seg45.F)⟩
      ⟨(rho 44303 : Seg45.F), (rho 44304 : Seg45.F)⟩
      ⟨(rho 44310 : Seg45.F), (rho 44311 : Seg45.F)⟩
      ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
      ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung233

theorem seg45_rows234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6091 rho ∧ Seg45.relationRow6092 rho ∧ Seg45.relationRow6093 rho ∧ Seg45.relationRow6094 rho ∧ Seg45.relationRow6095 rho ∧ Seg45.relationRow6096 rho ∧ Seg45.relationRow6097 rho ∧ Seg45.relationRow6098 rho ∧ Seg45.relationRow6099 rho ∧ Seg45.relationRow6100 rho ∧ Seg45.relationRow6101 rho ∧ Seg45.relationRow6102 rho ∧ Seg45.relationRow6103 rho ∧ Seg45.relationRow6104 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩

theorem seg45_rung234 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41182 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩ := by
  obtain ⟨r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, r6103, r6104⟩ := seg45_rows234 rho h
  unfold Seg45.relationRow6091 at r6091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6091
  unfold Seg45.relationRow6092 at r6092
  unfold Seg45.relationRow6093 at r6093
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6093
  unfold Seg45.relationRow6094 at r6094
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6094
  unfold Seg45.relationRow6095 at r6095
  unfold Seg45.relationRow6096 at r6096
  unfold Seg45.relationRow6097 at r6097
  unfold Seg45.relationRow6098 at r6098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6098
  unfold Seg45.relationRow6099 at r6099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6099
  unfold Seg45.relationRow6100 at r6100
  unfold Seg45.relationRow6101 at r6101
  unfold Seg45.relationRow6102 at r6102
  unfold Seg45.relationRow6103 at r6103
  unfold Seg45.relationRow6104 at r6104
  have hrung234 (bit : Bool) (hbit : rho 41182 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
        ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩ := by
    have hnextx : seg45AccX235 rho = seg45AccX234 rho + rho 44326 := by
      unfold seg45AccX235 seg45AccX234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 84]
      ring
    have hnexty : seg45AccY235 rho = seg45AccY234 rho + rho 44327 := by
      unfold seg45AccY235 seg45AccY234
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 84]
      ring
    have hsum : seg45AccX234 rho + seg45AccY234 rho = rho 44319 := by
      unfold seg45AccX234 seg45AccY234
      linear_combination r6091
    have ha0 : (rho 44317 + rho 44318) * (seg45AccX234 rho + seg45AccY234 rho) = rho 44320 := by
      rw [hsum]
      linear_combination r6092
    have ha1 : rho 44318 * seg45AccX234 rho = rho 44321 := by
      unfold seg45AccX234
      linear_combination r6093
    have ha2 : rho 44317 * seg45AccY234 rho = rho 44322 := by
      unfold seg45AccY234
      linear_combination r6094
    have ha3 : 3021 * rho 44321 * rho 44322 = rho 44323 := by
      linear_combination r6095
    have ha4 : rho 44324 * (1 + rho 44323) = rho 44321 + rho 44322 := by
      linear_combination r6096
    have ha5 : rho 44325 * (1 - rho 44323) = rho 44320 - rho 44321 - rho 44322 := by
      linear_combination r6097
    have haddx :
        rho 44324 * (1 + 3021 * (rho 44318 * seg45AccX234 rho) * (rho 44317 * seg45AccY234 rho)) =
          rho 44318 * seg45AccX234 rho + rho 44317 * seg45AccY234 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44325 * (1 - 3021 * (rho 44318 * seg45AccX234 rho) * (rho 44317 * seg45AccY234 rho)) =
          (-1) * (rho 44318 * seg45AccX234 rho) - rho 44317 * seg45AccY234 rho +
            (seg45AccY234 rho - seg45AccX234 rho * (-1)) * (rho 44317 + rho 44318) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44325 * (1 - rho 44323) = rho 44320 - rho 44321 - rho 44322 := ha5
        _ = (-1) * rho 44321 - rho 44322 + (seg45AccY234 rho - seg45AccX234 rho * (-1)) * (rho 44317 + rho 44318) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX235 rho = seg45AccX234 rho - Bool.toZMod bit * (seg45AccX234 rho - rho 44324) := by
      have hd : rho 44326 = Bool.toZMod bit * (rho 44324 - seg45AccX234 rho) := by
        rw [← hbit]
        unfold seg45AccX234
        linear_combination -r6098
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY235 rho = seg45AccY234 rho - Bool.toZMod bit * (seg45AccY234 rho - rho 44325) := by
      have hd : rho 44327 = Bool.toZMod bit * (rho 44325 - seg45AccY234 rho) := by
        rw [← hbit]
        unfold seg45AccY234
        linear_combination -r6099
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44317 * rho 44318 = rho 44328 := by linear_combination r6100
    have hd1 : rho 44317 * rho 44317 = rho 44329 := by linear_combination r6101
    have hd2 : rho 44318 * rho 44318 = rho 44330 := by linear_combination r6102
    have hd3 : rho 44331 * (rho 44318 * rho 44318 + rho 44317 * rho 44317 * (-1)) = 2 * (rho 44317 * rho 44318) := by
      rw [hd0, hd1, hd2]
      linear_combination r6103
    have hd4 : rho 44332 * (2 - (rho 44318 * rho 44318 + rho 44317 * rho 44317 * (-1))) = rho 44318 * rho 44318 - rho 44317 * rho 44317 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6104
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX234 rho : Seg45.F), (seg45AccY234 rho : Seg45.F)⟩
      ⟨(rho 44317 : Seg45.F), (rho 44318 : Seg45.F)⟩
      ⟨(rho 44324 : Seg45.F), (rho 44325 : Seg45.F)⟩
      ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
      ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung234

theorem seg45_rows235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6105 rho ∧ Seg45.relationRow6106 rho ∧ Seg45.relationRow6107 rho ∧ Seg45.relationRow6108 rho ∧ Seg45.relationRow6109 rho ∧ Seg45.relationRow6110 rho ∧ Seg45.relationRow6111 rho ∧ Seg45.relationRow6112 rho ∧ Seg45.relationRow6113 rho ∧ Seg45.relationRow6114 rho ∧ Seg45.relationRow6115 rho ∧ Seg45.relationRow6116 rho ∧ Seg45.relationRow6117 rho ∧ Seg45.relationRow6118 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩

theorem seg45_rung235 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41183 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩ := by
  obtain ⟨r6105, r6106, r6107, r6108, r6109, r6110, r6111, r6112, r6113, r6114, r6115, r6116, r6117, r6118⟩ := seg45_rows235 rho h
  unfold Seg45.relationRow6105 at r6105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6105
  unfold Seg45.relationRow6106 at r6106
  unfold Seg45.relationRow6107 at r6107
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6107
  unfold Seg45.relationRow6108 at r6108
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6108
  unfold Seg45.relationRow6109 at r6109
  unfold Seg45.relationRow6110 at r6110
  unfold Seg45.relationRow6111 at r6111
  unfold Seg45.relationRow6112 at r6112
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6112
  unfold Seg45.relationRow6113 at r6113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6113
  unfold Seg45.relationRow6114 at r6114
  unfold Seg45.relationRow6115 at r6115
  unfold Seg45.relationRow6116 at r6116
  unfold Seg45.relationRow6117 at r6117
  unfold Seg45.relationRow6118 at r6118
  have hrung235 (bit : Bool) (hbit : rho 41183 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
        ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩ := by
    have hnextx : seg45AccX236 rho = seg45AccX235 rho + rho 44340 := by
      unfold seg45AccX236 seg45AccX235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 85]
      ring
    have hnexty : seg45AccY236 rho = seg45AccY235 rho + rho 44341 := by
      unfold seg45AccY236 seg45AccY235
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 85]
      ring
    have hsum : seg45AccX235 rho + seg45AccY235 rho = rho 44333 := by
      unfold seg45AccX235 seg45AccY235
      linear_combination r6105
    have ha0 : (rho 44331 + rho 44332) * (seg45AccX235 rho + seg45AccY235 rho) = rho 44334 := by
      rw [hsum]
      linear_combination r6106
    have ha1 : rho 44332 * seg45AccX235 rho = rho 44335 := by
      unfold seg45AccX235
      linear_combination r6107
    have ha2 : rho 44331 * seg45AccY235 rho = rho 44336 := by
      unfold seg45AccY235
      linear_combination r6108
    have ha3 : 3021 * rho 44335 * rho 44336 = rho 44337 := by
      linear_combination r6109
    have ha4 : rho 44338 * (1 + rho 44337) = rho 44335 + rho 44336 := by
      linear_combination r6110
    have ha5 : rho 44339 * (1 - rho 44337) = rho 44334 - rho 44335 - rho 44336 := by
      linear_combination r6111
    have haddx :
        rho 44338 * (1 + 3021 * (rho 44332 * seg45AccX235 rho) * (rho 44331 * seg45AccY235 rho)) =
          rho 44332 * seg45AccX235 rho + rho 44331 * seg45AccY235 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44339 * (1 - 3021 * (rho 44332 * seg45AccX235 rho) * (rho 44331 * seg45AccY235 rho)) =
          (-1) * (rho 44332 * seg45AccX235 rho) - rho 44331 * seg45AccY235 rho +
            (seg45AccY235 rho - seg45AccX235 rho * (-1)) * (rho 44331 + rho 44332) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44339 * (1 - rho 44337) = rho 44334 - rho 44335 - rho 44336 := ha5
        _ = (-1) * rho 44335 - rho 44336 + (seg45AccY235 rho - seg45AccX235 rho * (-1)) * (rho 44331 + rho 44332) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX236 rho = seg45AccX235 rho - Bool.toZMod bit * (seg45AccX235 rho - rho 44338) := by
      have hd : rho 44340 = Bool.toZMod bit * (rho 44338 - seg45AccX235 rho) := by
        rw [← hbit]
        unfold seg45AccX235
        linear_combination -r6112
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY236 rho = seg45AccY235 rho - Bool.toZMod bit * (seg45AccY235 rho - rho 44339) := by
      have hd : rho 44341 = Bool.toZMod bit * (rho 44339 - seg45AccY235 rho) := by
        rw [← hbit]
        unfold seg45AccY235
        linear_combination -r6113
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44331 * rho 44332 = rho 44342 := by linear_combination r6114
    have hd1 : rho 44331 * rho 44331 = rho 44343 := by linear_combination r6115
    have hd2 : rho 44332 * rho 44332 = rho 44344 := by linear_combination r6116
    have hd3 : rho 44345 * (rho 44332 * rho 44332 + rho 44331 * rho 44331 * (-1)) = 2 * (rho 44331 * rho 44332) := by
      rw [hd0, hd1, hd2]
      linear_combination r6117
    have hd4 : rho 44346 * (2 - (rho 44332 * rho 44332 + rho 44331 * rho 44331 * (-1))) = rho 44332 * rho 44332 - rho 44331 * rho 44331 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6118
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX235 rho : Seg45.F), (seg45AccY235 rho : Seg45.F)⟩
      ⟨(rho 44331 : Seg45.F), (rho 44332 : Seg45.F)⟩
      ⟨(rho 44338 : Seg45.F), (rho 44339 : Seg45.F)⟩
      ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
      ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung235

theorem seg45_rows236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6119 rho ∧ Seg45.relationRow6120 rho ∧ Seg45.relationRow6121 rho ∧ Seg45.relationRow6122 rho ∧ Seg45.relationRow6123 rho ∧ Seg45.relationRow6124 rho ∧ Seg45.relationRow6125 rho ∧ Seg45.relationRow6126 rho ∧ Seg45.relationRow6127 rho ∧ Seg45.relationRow6128 rho ∧ Seg45.relationRow6129 rho ∧ Seg45.relationRow6130 rho ∧ Seg45.relationRow6131 rho ∧ Seg45.relationRow6132 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩

theorem seg45_rung236 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41184 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩ := by
  obtain ⟨r6119, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩ := seg45_rows236 rho h
  unfold Seg45.relationRow6119 at r6119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6119
  unfold Seg45.relationRow6120 at r6120
  unfold Seg45.relationRow6121 at r6121
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6121
  unfold Seg45.relationRow6122 at r6122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6122
  unfold Seg45.relationRow6123 at r6123
  unfold Seg45.relationRow6124 at r6124
  unfold Seg45.relationRow6125 at r6125
  unfold Seg45.relationRow6126 at r6126
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6126
  unfold Seg45.relationRow6127 at r6127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6127
  unfold Seg45.relationRow6128 at r6128
  unfold Seg45.relationRow6129 at r6129
  unfold Seg45.relationRow6130 at r6130
  unfold Seg45.relationRow6131 at r6131
  unfold Seg45.relationRow6132 at r6132
  have hrung236 (bit : Bool) (hbit : rho 41184 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
        ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩ := by
    have hnextx : seg45AccX237 rho = seg45AccX236 rho + rho 44354 := by
      unfold seg45AccX237 seg45AccX236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 86]
      ring
    have hnexty : seg45AccY237 rho = seg45AccY236 rho + rho 44355 := by
      unfold seg45AccY237 seg45AccY236
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 86]
      ring
    have hsum : seg45AccX236 rho + seg45AccY236 rho = rho 44347 := by
      unfold seg45AccX236 seg45AccY236
      linear_combination r6119
    have ha0 : (rho 44345 + rho 44346) * (seg45AccX236 rho + seg45AccY236 rho) = rho 44348 := by
      rw [hsum]
      linear_combination r6120
    have ha1 : rho 44346 * seg45AccX236 rho = rho 44349 := by
      unfold seg45AccX236
      linear_combination r6121
    have ha2 : rho 44345 * seg45AccY236 rho = rho 44350 := by
      unfold seg45AccY236
      linear_combination r6122
    have ha3 : 3021 * rho 44349 * rho 44350 = rho 44351 := by
      linear_combination r6123
    have ha4 : rho 44352 * (1 + rho 44351) = rho 44349 + rho 44350 := by
      linear_combination r6124
    have ha5 : rho 44353 * (1 - rho 44351) = rho 44348 - rho 44349 - rho 44350 := by
      linear_combination r6125
    have haddx :
        rho 44352 * (1 + 3021 * (rho 44346 * seg45AccX236 rho) * (rho 44345 * seg45AccY236 rho)) =
          rho 44346 * seg45AccX236 rho + rho 44345 * seg45AccY236 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44353 * (1 - 3021 * (rho 44346 * seg45AccX236 rho) * (rho 44345 * seg45AccY236 rho)) =
          (-1) * (rho 44346 * seg45AccX236 rho) - rho 44345 * seg45AccY236 rho +
            (seg45AccY236 rho - seg45AccX236 rho * (-1)) * (rho 44345 + rho 44346) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44353 * (1 - rho 44351) = rho 44348 - rho 44349 - rho 44350 := ha5
        _ = (-1) * rho 44349 - rho 44350 + (seg45AccY236 rho - seg45AccX236 rho * (-1)) * (rho 44345 + rho 44346) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX237 rho = seg45AccX236 rho - Bool.toZMod bit * (seg45AccX236 rho - rho 44352) := by
      have hd : rho 44354 = Bool.toZMod bit * (rho 44352 - seg45AccX236 rho) := by
        rw [← hbit]
        unfold seg45AccX236
        linear_combination -r6126
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY237 rho = seg45AccY236 rho - Bool.toZMod bit * (seg45AccY236 rho - rho 44353) := by
      have hd : rho 44355 = Bool.toZMod bit * (rho 44353 - seg45AccY236 rho) := by
        rw [← hbit]
        unfold seg45AccY236
        linear_combination -r6127
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44345 * rho 44346 = rho 44356 := by linear_combination r6128
    have hd1 : rho 44345 * rho 44345 = rho 44357 := by linear_combination r6129
    have hd2 : rho 44346 * rho 44346 = rho 44358 := by linear_combination r6130
    have hd3 : rho 44359 * (rho 44346 * rho 44346 + rho 44345 * rho 44345 * (-1)) = 2 * (rho 44345 * rho 44346) := by
      rw [hd0, hd1, hd2]
      linear_combination r6131
    have hd4 : rho 44360 * (2 - (rho 44346 * rho 44346 + rho 44345 * rho 44345 * (-1))) = rho 44346 * rho 44346 - rho 44345 * rho 44345 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6132
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX236 rho : Seg45.F), (seg45AccY236 rho : Seg45.F)⟩
      ⟨(rho 44345 : Seg45.F), (rho 44346 : Seg45.F)⟩
      ⟨(rho 44352 : Seg45.F), (rho 44353 : Seg45.F)⟩
      ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
      ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung236

theorem seg45_rows237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6133 rho ∧ Seg45.relationRow6134 rho ∧ Seg45.relationRow6135 rho ∧ Seg45.relationRow6136 rho ∧ Seg45.relationRow6137 rho ∧ Seg45.relationRow6138 rho ∧ Seg45.relationRow6139 rho ∧ Seg45.relationRow6140 rho ∧ Seg45.relationRow6141 rho ∧ Seg45.relationRow6142 rho ∧ Seg45.relationRow6143 rho ∧ Seg45.relationRow6144 rho ∧ Seg45.relationRow6145 rho ∧ Seg45.relationRow6146 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩

theorem seg45_rung237 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41185 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩ := by
  obtain ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, r6146⟩ := seg45_rows237 rho h
  unfold Seg45.relationRow6133 at r6133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6133
  unfold Seg45.relationRow6134 at r6134
  unfold Seg45.relationRow6135 at r6135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6135
  unfold Seg45.relationRow6136 at r6136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6136
  unfold Seg45.relationRow6137 at r6137
  unfold Seg45.relationRow6138 at r6138
  unfold Seg45.relationRow6139 at r6139
  unfold Seg45.relationRow6140 at r6140
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6140
  unfold Seg45.relationRow6141 at r6141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6141
  unfold Seg45.relationRow6142 at r6142
  unfold Seg45.relationRow6143 at r6143
  unfold Seg45.relationRow6144 at r6144
  unfold Seg45.relationRow6145 at r6145
  unfold Seg45.relationRow6146 at r6146
  have hrung237 (bit : Bool) (hbit : rho 41185 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
        ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩ := by
    have hnextx : seg45AccX238 rho = seg45AccX237 rho + rho 44368 := by
      unfold seg45AccX238 seg45AccX237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 87]
      ring
    have hnexty : seg45AccY238 rho = seg45AccY237 rho + rho 44369 := by
      unfold seg45AccY238 seg45AccY237
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 87]
      ring
    have hsum : seg45AccX237 rho + seg45AccY237 rho = rho 44361 := by
      unfold seg45AccX237 seg45AccY237
      linear_combination r6133
    have ha0 : (rho 44359 + rho 44360) * (seg45AccX237 rho + seg45AccY237 rho) = rho 44362 := by
      rw [hsum]
      linear_combination r6134
    have ha1 : rho 44360 * seg45AccX237 rho = rho 44363 := by
      unfold seg45AccX237
      linear_combination r6135
    have ha2 : rho 44359 * seg45AccY237 rho = rho 44364 := by
      unfold seg45AccY237
      linear_combination r6136
    have ha3 : 3021 * rho 44363 * rho 44364 = rho 44365 := by
      linear_combination r6137
    have ha4 : rho 44366 * (1 + rho 44365) = rho 44363 + rho 44364 := by
      linear_combination r6138
    have ha5 : rho 44367 * (1 - rho 44365) = rho 44362 - rho 44363 - rho 44364 := by
      linear_combination r6139
    have haddx :
        rho 44366 * (1 + 3021 * (rho 44360 * seg45AccX237 rho) * (rho 44359 * seg45AccY237 rho)) =
          rho 44360 * seg45AccX237 rho + rho 44359 * seg45AccY237 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44367 * (1 - 3021 * (rho 44360 * seg45AccX237 rho) * (rho 44359 * seg45AccY237 rho)) =
          (-1) * (rho 44360 * seg45AccX237 rho) - rho 44359 * seg45AccY237 rho +
            (seg45AccY237 rho - seg45AccX237 rho * (-1)) * (rho 44359 + rho 44360) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44367 * (1 - rho 44365) = rho 44362 - rho 44363 - rho 44364 := ha5
        _ = (-1) * rho 44363 - rho 44364 + (seg45AccY237 rho - seg45AccX237 rho * (-1)) * (rho 44359 + rho 44360) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX238 rho = seg45AccX237 rho - Bool.toZMod bit * (seg45AccX237 rho - rho 44366) := by
      have hd : rho 44368 = Bool.toZMod bit * (rho 44366 - seg45AccX237 rho) := by
        rw [← hbit]
        unfold seg45AccX237
        linear_combination -r6140
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY238 rho = seg45AccY237 rho - Bool.toZMod bit * (seg45AccY237 rho - rho 44367) := by
      have hd : rho 44369 = Bool.toZMod bit * (rho 44367 - seg45AccY237 rho) := by
        rw [← hbit]
        unfold seg45AccY237
        linear_combination -r6141
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44359 * rho 44360 = rho 44370 := by linear_combination r6142
    have hd1 : rho 44359 * rho 44359 = rho 44371 := by linear_combination r6143
    have hd2 : rho 44360 * rho 44360 = rho 44372 := by linear_combination r6144
    have hd3 : rho 44373 * (rho 44360 * rho 44360 + rho 44359 * rho 44359 * (-1)) = 2 * (rho 44359 * rho 44360) := by
      rw [hd0, hd1, hd2]
      linear_combination r6145
    have hd4 : rho 44374 * (2 - (rho 44360 * rho 44360 + rho 44359 * rho 44359 * (-1))) = rho 44360 * rho 44360 - rho 44359 * rho 44359 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6146
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX237 rho : Seg45.F), (seg45AccY237 rho : Seg45.F)⟩
      ⟨(rho 44359 : Seg45.F), (rho 44360 : Seg45.F)⟩
      ⟨(rho 44366 : Seg45.F), (rho 44367 : Seg45.F)⟩
      ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
      ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung237

theorem seg45_rows238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6147 rho ∧ Seg45.relationRow6148 rho ∧ Seg45.relationRow6149 rho ∧ Seg45.relationRow6150 rho ∧ Seg45.relationRow6151 rho ∧ Seg45.relationRow6152 rho ∧ Seg45.relationRow6153 rho ∧ Seg45.relationRow6154 rho ∧ Seg45.relationRow6155 rho ∧ Seg45.relationRow6156 rho ∧ Seg45.relationRow6157 rho ∧ Seg45.relationRow6158 rho ∧ Seg45.relationRow6159 rho ∧ Seg45.relationRow6160 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart76 at p76
  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159⟩
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨r6160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩

theorem seg45_rung238 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41186 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩ := by
  obtain ⟨r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, r6159, r6160⟩ := seg45_rows238 rho h
  unfold Seg45.relationRow6147 at r6147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6147
  unfold Seg45.relationRow6148 at r6148
  unfold Seg45.relationRow6149 at r6149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6149
  unfold Seg45.relationRow6150 at r6150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6150
  unfold Seg45.relationRow6151 at r6151
  unfold Seg45.relationRow6152 at r6152
  unfold Seg45.relationRow6153 at r6153
  unfold Seg45.relationRow6154 at r6154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6154
  unfold Seg45.relationRow6155 at r6155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6155
  unfold Seg45.relationRow6156 at r6156
  unfold Seg45.relationRow6157 at r6157
  unfold Seg45.relationRow6158 at r6158
  unfold Seg45.relationRow6159 at r6159
  unfold Seg45.relationRow6160 at r6160
  have hrung238 (bit : Bool) (hbit : rho 41186 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
        ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩ := by
    have hnextx : seg45AccX239 rho = seg45AccX238 rho + rho 44382 := by
      unfold seg45AccX239 seg45AccX238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 88]
      ring
    have hnexty : seg45AccY239 rho = seg45AccY238 rho + rho 44383 := by
      unfold seg45AccY239 seg45AccY238
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 88]
      ring
    have hsum : seg45AccX238 rho + seg45AccY238 rho = rho 44375 := by
      unfold seg45AccX238 seg45AccY238
      linear_combination r6147
    have ha0 : (rho 44373 + rho 44374) * (seg45AccX238 rho + seg45AccY238 rho) = rho 44376 := by
      rw [hsum]
      linear_combination r6148
    have ha1 : rho 44374 * seg45AccX238 rho = rho 44377 := by
      unfold seg45AccX238
      linear_combination r6149
    have ha2 : rho 44373 * seg45AccY238 rho = rho 44378 := by
      unfold seg45AccY238
      linear_combination r6150
    have ha3 : 3021 * rho 44377 * rho 44378 = rho 44379 := by
      linear_combination r6151
    have ha4 : rho 44380 * (1 + rho 44379) = rho 44377 + rho 44378 := by
      linear_combination r6152
    have ha5 : rho 44381 * (1 - rho 44379) = rho 44376 - rho 44377 - rho 44378 := by
      linear_combination r6153
    have haddx :
        rho 44380 * (1 + 3021 * (rho 44374 * seg45AccX238 rho) * (rho 44373 * seg45AccY238 rho)) =
          rho 44374 * seg45AccX238 rho + rho 44373 * seg45AccY238 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44381 * (1 - 3021 * (rho 44374 * seg45AccX238 rho) * (rho 44373 * seg45AccY238 rho)) =
          (-1) * (rho 44374 * seg45AccX238 rho) - rho 44373 * seg45AccY238 rho +
            (seg45AccY238 rho - seg45AccX238 rho * (-1)) * (rho 44373 + rho 44374) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44381 * (1 - rho 44379) = rho 44376 - rho 44377 - rho 44378 := ha5
        _ = (-1) * rho 44377 - rho 44378 + (seg45AccY238 rho - seg45AccX238 rho * (-1)) * (rho 44373 + rho 44374) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX239 rho = seg45AccX238 rho - Bool.toZMod bit * (seg45AccX238 rho - rho 44380) := by
      have hd : rho 44382 = Bool.toZMod bit * (rho 44380 - seg45AccX238 rho) := by
        rw [← hbit]
        unfold seg45AccX238
        linear_combination -r6154
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY239 rho = seg45AccY238 rho - Bool.toZMod bit * (seg45AccY238 rho - rho 44381) := by
      have hd : rho 44383 = Bool.toZMod bit * (rho 44381 - seg45AccY238 rho) := by
        rw [← hbit]
        unfold seg45AccY238
        linear_combination -r6155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44373 * rho 44374 = rho 44384 := by linear_combination r6156
    have hd1 : rho 44373 * rho 44373 = rho 44385 := by linear_combination r6157
    have hd2 : rho 44374 * rho 44374 = rho 44386 := by linear_combination r6158
    have hd3 : rho 44387 * (rho 44374 * rho 44374 + rho 44373 * rho 44373 * (-1)) = 2 * (rho 44373 * rho 44374) := by
      rw [hd0, hd1, hd2]
      linear_combination r6159
    have hd4 : rho 44388 * (2 - (rho 44374 * rho 44374 + rho 44373 * rho 44373 * (-1))) = rho 44374 * rho 44374 - rho 44373 * rho 44373 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX238 rho : Seg45.F), (seg45AccY238 rho : Seg45.F)⟩
      ⟨(rho 44373 : Seg45.F), (rho 44374 : Seg45.F)⟩
      ⟨(rho 44380 : Seg45.F), (rho 44381 : Seg45.F)⟩
      ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
      ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung238

theorem seg45_rows239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6161 rho ∧ Seg45.relationRow6162 rho ∧ Seg45.relationRow6163 rho ∧ Seg45.relationRow6164 rho ∧ Seg45.relationRow6165 rho ∧ Seg45.relationRow6166 rho ∧ Seg45.relationRow6167 rho ∧ Seg45.relationRow6168 rho ∧ Seg45.relationRow6169 rho ∧ Seg45.relationRow6170 rho ∧ Seg45.relationRow6171 rho ∧ Seg45.relationRow6172 rho ∧ Seg45.relationRow6173 rho ∧ Seg45.relationRow6174 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩

theorem seg45_rung239 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41187 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩ := by
  obtain ⟨r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, r6172, r6173, r6174⟩ := seg45_rows239 rho h
  unfold Seg45.relationRow6161 at r6161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6161
  unfold Seg45.relationRow6162 at r6162
  unfold Seg45.relationRow6163 at r6163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6163
  unfold Seg45.relationRow6164 at r6164
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6164
  unfold Seg45.relationRow6165 at r6165
  unfold Seg45.relationRow6166 at r6166
  unfold Seg45.relationRow6167 at r6167
  unfold Seg45.relationRow6168 at r6168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6168
  unfold Seg45.relationRow6169 at r6169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6169
  unfold Seg45.relationRow6170 at r6170
  unfold Seg45.relationRow6171 at r6171
  unfold Seg45.relationRow6172 at r6172
  unfold Seg45.relationRow6173 at r6173
  unfold Seg45.relationRow6174 at r6174
  have hrung239 (bit : Bool) (hbit : rho 41187 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
        ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩ := by
    have hnextx : seg45AccX240 rho = seg45AccX239 rho + rho 44396 := by
      unfold seg45AccX240 seg45AccX239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 89]
      ring
    have hnexty : seg45AccY240 rho = seg45AccY239 rho + rho 44397 := by
      unfold seg45AccY240 seg45AccY239
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 89]
      ring
    have hsum : seg45AccX239 rho + seg45AccY239 rho = rho 44389 := by
      unfold seg45AccX239 seg45AccY239
      linear_combination r6161
    have ha0 : (rho 44387 + rho 44388) * (seg45AccX239 rho + seg45AccY239 rho) = rho 44390 := by
      rw [hsum]
      linear_combination r6162
    have ha1 : rho 44388 * seg45AccX239 rho = rho 44391 := by
      unfold seg45AccX239
      linear_combination r6163
    have ha2 : rho 44387 * seg45AccY239 rho = rho 44392 := by
      unfold seg45AccY239
      linear_combination r6164
    have ha3 : 3021 * rho 44391 * rho 44392 = rho 44393 := by
      linear_combination r6165
    have ha4 : rho 44394 * (1 + rho 44393) = rho 44391 + rho 44392 := by
      linear_combination r6166
    have ha5 : rho 44395 * (1 - rho 44393) = rho 44390 - rho 44391 - rho 44392 := by
      linear_combination r6167
    have haddx :
        rho 44394 * (1 + 3021 * (rho 44388 * seg45AccX239 rho) * (rho 44387 * seg45AccY239 rho)) =
          rho 44388 * seg45AccX239 rho + rho 44387 * seg45AccY239 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44395 * (1 - 3021 * (rho 44388 * seg45AccX239 rho) * (rho 44387 * seg45AccY239 rho)) =
          (-1) * (rho 44388 * seg45AccX239 rho) - rho 44387 * seg45AccY239 rho +
            (seg45AccY239 rho - seg45AccX239 rho * (-1)) * (rho 44387 + rho 44388) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44395 * (1 - rho 44393) = rho 44390 - rho 44391 - rho 44392 := ha5
        _ = (-1) * rho 44391 - rho 44392 + (seg45AccY239 rho - seg45AccX239 rho * (-1)) * (rho 44387 + rho 44388) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX240 rho = seg45AccX239 rho - Bool.toZMod bit * (seg45AccX239 rho - rho 44394) := by
      have hd : rho 44396 = Bool.toZMod bit * (rho 44394 - seg45AccX239 rho) := by
        rw [← hbit]
        unfold seg45AccX239
        linear_combination -r6168
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY240 rho = seg45AccY239 rho - Bool.toZMod bit * (seg45AccY239 rho - rho 44395) := by
      have hd : rho 44397 = Bool.toZMod bit * (rho 44395 - seg45AccY239 rho) := by
        rw [← hbit]
        unfold seg45AccY239
        linear_combination -r6169
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44387 * rho 44388 = rho 44398 := by linear_combination r6170
    have hd1 : rho 44387 * rho 44387 = rho 44399 := by linear_combination r6171
    have hd2 : rho 44388 * rho 44388 = rho 44400 := by linear_combination r6172
    have hd3 : rho 44401 * (rho 44388 * rho 44388 + rho 44387 * rho 44387 * (-1)) = 2 * (rho 44387 * rho 44388) := by
      rw [hd0, hd1, hd2]
      linear_combination r6173
    have hd4 : rho 44402 * (2 - (rho 44388 * rho 44388 + rho 44387 * rho 44387 * (-1))) = rho 44388 * rho 44388 - rho 44387 * rho 44387 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6174
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX239 rho : Seg45.F), (seg45AccY239 rho : Seg45.F)⟩
      ⟨(rho 44387 : Seg45.F), (rho 44388 : Seg45.F)⟩
      ⟨(rho 44394 : Seg45.F), (rho 44395 : Seg45.F)⟩
      ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
      ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung239

theorem seg45_rows240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6175 rho ∧ Seg45.relationRow6176 rho ∧ Seg45.relationRow6177 rho ∧ Seg45.relationRow6178 rho ∧ Seg45.relationRow6179 rho ∧ Seg45.relationRow6180 rho ∧ Seg45.relationRow6181 rho ∧ Seg45.relationRow6182 rho ∧ Seg45.relationRow6183 rho ∧ Seg45.relationRow6184 rho ∧ Seg45.relationRow6185 rho ∧ Seg45.relationRow6186 rho ∧ Seg45.relationRow6187 rho ∧ Seg45.relationRow6188 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩

theorem seg45_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41188 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩ := by
  obtain ⟨r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, r6185, r6186, r6187, r6188⟩ := seg45_rows240 rho h
  unfold Seg45.relationRow6175 at r6175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6175
  unfold Seg45.relationRow6176 at r6176
  unfold Seg45.relationRow6177 at r6177
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6177
  unfold Seg45.relationRow6178 at r6178
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6178
  unfold Seg45.relationRow6179 at r6179
  unfold Seg45.relationRow6180 at r6180
  unfold Seg45.relationRow6181 at r6181
  unfold Seg45.relationRow6182 at r6182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6182
  unfold Seg45.relationRow6183 at r6183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6183
  unfold Seg45.relationRow6184 at r6184
  unfold Seg45.relationRow6185 at r6185
  unfold Seg45.relationRow6186 at r6186
  unfold Seg45.relationRow6187 at r6187
  unfold Seg45.relationRow6188 at r6188
  have hrung240 (bit : Bool) (hbit : rho 41188 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
        ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩ := by
    have hnextx : seg45AccX241 rho = seg45AccX240 rho + rho 44410 := by
      unfold seg45AccX241 seg45AccX240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 90]
      ring
    have hnexty : seg45AccY241 rho = seg45AccY240 rho + rho 44411 := by
      unfold seg45AccY241 seg45AccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 90]
      ring
    have hsum : seg45AccX240 rho + seg45AccY240 rho = rho 44403 := by
      unfold seg45AccX240 seg45AccY240
      linear_combination r6175
    have ha0 : (rho 44401 + rho 44402) * (seg45AccX240 rho + seg45AccY240 rho) = rho 44404 := by
      rw [hsum]
      linear_combination r6176
    have ha1 : rho 44402 * seg45AccX240 rho = rho 44405 := by
      unfold seg45AccX240
      linear_combination r6177
    have ha2 : rho 44401 * seg45AccY240 rho = rho 44406 := by
      unfold seg45AccY240
      linear_combination r6178
    have ha3 : 3021 * rho 44405 * rho 44406 = rho 44407 := by
      linear_combination r6179
    have ha4 : rho 44408 * (1 + rho 44407) = rho 44405 + rho 44406 := by
      linear_combination r6180
    have ha5 : rho 44409 * (1 - rho 44407) = rho 44404 - rho 44405 - rho 44406 := by
      linear_combination r6181
    have haddx :
        rho 44408 * (1 + 3021 * (rho 44402 * seg45AccX240 rho) * (rho 44401 * seg45AccY240 rho)) =
          rho 44402 * seg45AccX240 rho + rho 44401 * seg45AccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44409 * (1 - 3021 * (rho 44402 * seg45AccX240 rho) * (rho 44401 * seg45AccY240 rho)) =
          (-1) * (rho 44402 * seg45AccX240 rho) - rho 44401 * seg45AccY240 rho +
            (seg45AccY240 rho - seg45AccX240 rho * (-1)) * (rho 44401 + rho 44402) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44409 * (1 - rho 44407) = rho 44404 - rho 44405 - rho 44406 := ha5
        _ = (-1) * rho 44405 - rho 44406 + (seg45AccY240 rho - seg45AccX240 rho * (-1)) * (rho 44401 + rho 44402) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX241 rho = seg45AccX240 rho - Bool.toZMod bit * (seg45AccX240 rho - rho 44408) := by
      have hd : rho 44410 = Bool.toZMod bit * (rho 44408 - seg45AccX240 rho) := by
        rw [← hbit]
        unfold seg45AccX240
        linear_combination -r6182
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY241 rho = seg45AccY240 rho - Bool.toZMod bit * (seg45AccY240 rho - rho 44409) := by
      have hd : rho 44411 = Bool.toZMod bit * (rho 44409 - seg45AccY240 rho) := by
        rw [← hbit]
        unfold seg45AccY240
        linear_combination -r6183
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44401 * rho 44402 = rho 44412 := by linear_combination r6184
    have hd1 : rho 44401 * rho 44401 = rho 44413 := by linear_combination r6185
    have hd2 : rho 44402 * rho 44402 = rho 44414 := by linear_combination r6186
    have hd3 : rho 44415 * (rho 44402 * rho 44402 + rho 44401 * rho 44401 * (-1)) = 2 * (rho 44401 * rho 44402) := by
      rw [hd0, hd1, hd2]
      linear_combination r6187
    have hd4 : rho 44416 * (2 - (rho 44402 * rho 44402 + rho 44401 * rho 44401 * (-1))) = rho 44402 * rho 44402 - rho 44401 * rho 44401 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6188
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX240 rho : Seg45.F), (seg45AccY240 rho : Seg45.F)⟩
      ⟨(rho 44401 : Seg45.F), (rho 44402 : Seg45.F)⟩
      ⟨(rho 44408 : Seg45.F), (rho 44409 : Seg45.F)⟩
      ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
      ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem seg45_rows241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6189 rho ∧ Seg45.relationRow6190 rho ∧ Seg45.relationRow6191 rho ∧ Seg45.relationRow6192 rho ∧ Seg45.relationRow6193 rho ∧ Seg45.relationRow6194 rho ∧ Seg45.relationRow6195 rho ∧ Seg45.relationRow6196 rho ∧ Seg45.relationRow6197 rho ∧ Seg45.relationRow6198 rho ∧ Seg45.relationRow6199 rho ∧ Seg45.relationRow6200 rho ∧ Seg45.relationRow6201 rho ∧ Seg45.relationRow6202 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩

theorem seg45_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41189 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩ := by
  obtain ⟨r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, r6198, r6199, r6200, r6201, r6202⟩ := seg45_rows241 rho h
  unfold Seg45.relationRow6189 at r6189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6189
  unfold Seg45.relationRow6190 at r6190
  unfold Seg45.relationRow6191 at r6191
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6191
  unfold Seg45.relationRow6192 at r6192
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6192
  unfold Seg45.relationRow6193 at r6193
  unfold Seg45.relationRow6194 at r6194
  unfold Seg45.relationRow6195 at r6195
  unfold Seg45.relationRow6196 at r6196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6196
  unfold Seg45.relationRow6197 at r6197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6197
  unfold Seg45.relationRow6198 at r6198
  unfold Seg45.relationRow6199 at r6199
  unfold Seg45.relationRow6200 at r6200
  unfold Seg45.relationRow6201 at r6201
  unfold Seg45.relationRow6202 at r6202
  have hrung241 (bit : Bool) (hbit : rho 41189 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
        ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩ := by
    have hnextx : seg45AccX242 rho = seg45AccX241 rho + rho 44424 := by
      unfold seg45AccX242 seg45AccX241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 91]
      ring
    have hnexty : seg45AccY242 rho = seg45AccY241 rho + rho 44425 := by
      unfold seg45AccY242 seg45AccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 91]
      ring
    have hsum : seg45AccX241 rho + seg45AccY241 rho = rho 44417 := by
      unfold seg45AccX241 seg45AccY241
      linear_combination r6189
    have ha0 : (rho 44415 + rho 44416) * (seg45AccX241 rho + seg45AccY241 rho) = rho 44418 := by
      rw [hsum]
      linear_combination r6190
    have ha1 : rho 44416 * seg45AccX241 rho = rho 44419 := by
      unfold seg45AccX241
      linear_combination r6191
    have ha2 : rho 44415 * seg45AccY241 rho = rho 44420 := by
      unfold seg45AccY241
      linear_combination r6192
    have ha3 : 3021 * rho 44419 * rho 44420 = rho 44421 := by
      linear_combination r6193
    have ha4 : rho 44422 * (1 + rho 44421) = rho 44419 + rho 44420 := by
      linear_combination r6194
    have ha5 : rho 44423 * (1 - rho 44421) = rho 44418 - rho 44419 - rho 44420 := by
      linear_combination r6195
    have haddx :
        rho 44422 * (1 + 3021 * (rho 44416 * seg45AccX241 rho) * (rho 44415 * seg45AccY241 rho)) =
          rho 44416 * seg45AccX241 rho + rho 44415 * seg45AccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44423 * (1 - 3021 * (rho 44416 * seg45AccX241 rho) * (rho 44415 * seg45AccY241 rho)) =
          (-1) * (rho 44416 * seg45AccX241 rho) - rho 44415 * seg45AccY241 rho +
            (seg45AccY241 rho - seg45AccX241 rho * (-1)) * (rho 44415 + rho 44416) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44423 * (1 - rho 44421) = rho 44418 - rho 44419 - rho 44420 := ha5
        _ = (-1) * rho 44419 - rho 44420 + (seg45AccY241 rho - seg45AccX241 rho * (-1)) * (rho 44415 + rho 44416) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX242 rho = seg45AccX241 rho - Bool.toZMod bit * (seg45AccX241 rho - rho 44422) := by
      have hd : rho 44424 = Bool.toZMod bit * (rho 44422 - seg45AccX241 rho) := by
        rw [← hbit]
        unfold seg45AccX241
        linear_combination -r6196
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY242 rho = seg45AccY241 rho - Bool.toZMod bit * (seg45AccY241 rho - rho 44423) := by
      have hd : rho 44425 = Bool.toZMod bit * (rho 44423 - seg45AccY241 rho) := by
        rw [← hbit]
        unfold seg45AccY241
        linear_combination -r6197
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44415 * rho 44416 = rho 44426 := by linear_combination r6198
    have hd1 : rho 44415 * rho 44415 = rho 44427 := by linear_combination r6199
    have hd2 : rho 44416 * rho 44416 = rho 44428 := by linear_combination r6200
    have hd3 : rho 44429 * (rho 44416 * rho 44416 + rho 44415 * rho 44415 * (-1)) = 2 * (rho 44415 * rho 44416) := by
      rw [hd0, hd1, hd2]
      linear_combination r6201
    have hd4 : rho 44430 * (2 - (rho 44416 * rho 44416 + rho 44415 * rho 44415 * (-1))) = rho 44416 * rho 44416 - rho 44415 * rho 44415 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6202
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX241 rho : Seg45.F), (seg45AccY241 rho : Seg45.F)⟩
      ⟨(rho 44415 : Seg45.F), (rho 44416 : Seg45.F)⟩
      ⟨(rho 44422 : Seg45.F), (rho 44423 : Seg45.F)⟩
      ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
      ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem seg45_hstep_c21 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 231 ≤ i → i < 242 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung231 rho h bits[231]! (hbitAt 231 (by omega)) hacc hcur
  · exact seg45_rung232 rho h bits[232]! (hbitAt 232 (by omega)) hacc hcur
  · exact seg45_rung233 rho h bits[233]! (hbitAt 233 (by omega)) hacc hcur
  · exact seg45_rung234 rho h bits[234]! (hbitAt 234 (by omega)) hacc hcur
  · exact seg45_rung235 rho h bits[235]! (hbitAt 235 (by omega)) hacc hcur
  · exact seg45_rung236 rho h bits[236]! (hbitAt 236 (by omega)) hacc hcur
  · exact seg45_rung237 rho h bits[237]! (hbitAt 237 (by omega)) hacc hcur
  · exact seg45_rung238 rho h bits[238]! (hbitAt 238 (by omega)) hacc hcur
  · exact seg45_rung239 rho h bits[239]! (hbitAt 239 (by omega)) hacc hcur
  · exact seg45_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact seg45_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
