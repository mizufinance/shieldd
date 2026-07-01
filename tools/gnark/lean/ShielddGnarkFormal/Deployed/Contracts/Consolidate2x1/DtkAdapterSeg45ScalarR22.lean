import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6203 rho ∧ Seg45.relationRow6204 rho ∧ Seg45.relationRow6205 rho ∧ Seg45.relationRow6206 rho ∧ Seg45.relationRow6207 rho ∧ Seg45.relationRow6208 rho ∧ Seg45.relationRow6209 rho ∧ Seg45.relationRow6210 rho ∧ Seg45.relationRow6211 rho ∧ Seg45.relationRow6212 rho ∧ Seg45.relationRow6213 rho ∧ Seg45.relationRow6214 rho ∧ Seg45.relationRow6215 rho ∧ Seg45.relationRow6216 rho := by
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
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩

theorem seg45_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41190 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩ := by
  obtain ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩ := seg45_rows242 rho h
  unfold Seg45.relationRow6203 at r6203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6203
  unfold Seg45.relationRow6204 at r6204
  unfold Seg45.relationRow6205 at r6205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6205
  unfold Seg45.relationRow6206 at r6206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6206
  unfold Seg45.relationRow6207 at r6207
  unfold Seg45.relationRow6208 at r6208
  unfold Seg45.relationRow6209 at r6209
  unfold Seg45.relationRow6210 at r6210
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6210
  unfold Seg45.relationRow6211 at r6211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6211
  unfold Seg45.relationRow6212 at r6212
  unfold Seg45.relationRow6213 at r6213
  unfold Seg45.relationRow6214 at r6214
  unfold Seg45.relationRow6215 at r6215
  unfold Seg45.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 41190 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
        ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩ := by
    have hnextx : seg45AccX243 rho = seg45AccX242 rho + rho 44438 := by
      unfold seg45AccX243 seg45AccX242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 92]
      ring
    have hnexty : seg45AccY243 rho = seg45AccY242 rho + rho 44439 := by
      unfold seg45AccY243 seg45AccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 92]
      ring
    have hsum : seg45AccX242 rho + seg45AccY242 rho = rho 44431 := by
      unfold seg45AccX242 seg45AccY242
      linear_combination r6203
    have ha0 : (rho 44429 + rho 44430) * (seg45AccX242 rho + seg45AccY242 rho) = rho 44432 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 44430 * seg45AccX242 rho = rho 44433 := by
      unfold seg45AccX242
      linear_combination r6205
    have ha2 : rho 44429 * seg45AccY242 rho = rho 44434 := by
      unfold seg45AccY242
      linear_combination r6206
    have ha3 : 3021 * rho 44433 * rho 44434 = rho 44435 := by
      linear_combination r6207
    have ha4 : rho 44436 * (1 + rho 44435) = rho 44433 + rho 44434 := by
      linear_combination r6208
    have ha5 : rho 44437 * (1 - rho 44435) = rho 44432 - rho 44433 - rho 44434 := by
      linear_combination r6209
    have haddx :
        rho 44436 * (1 + 3021 * (rho 44430 * seg45AccX242 rho) * (rho 44429 * seg45AccY242 rho)) =
          rho 44430 * seg45AccX242 rho + rho 44429 * seg45AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44437 * (1 - 3021 * (rho 44430 * seg45AccX242 rho) * (rho 44429 * seg45AccY242 rho)) =
          (-1) * (rho 44430 * seg45AccX242 rho) - rho 44429 * seg45AccY242 rho +
            (seg45AccY242 rho - seg45AccX242 rho * (-1)) * (rho 44429 + rho 44430) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44437 * (1 - rho 44435) = rho 44432 - rho 44433 - rho 44434 := ha5
        _ = (-1) * rho 44433 - rho 44434 + (seg45AccY242 rho - seg45AccX242 rho * (-1)) * (rho 44429 + rho 44430) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX243 rho = seg45AccX242 rho - Bool.toZMod bit * (seg45AccX242 rho - rho 44436) := by
      have hd : rho 44438 = Bool.toZMod bit * (rho 44436 - seg45AccX242 rho) := by
        rw [← hbit]
        unfold seg45AccX242
        linear_combination -r6210
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY243 rho = seg45AccY242 rho - Bool.toZMod bit * (seg45AccY242 rho - rho 44437) := by
      have hd : rho 44439 = Bool.toZMod bit * (rho 44437 - seg45AccY242 rho) := by
        rw [← hbit]
        unfold seg45AccY242
        linear_combination -r6211
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44429 * rho 44430 = rho 44440 := by linear_combination r6212
    have hd1 : rho 44429 * rho 44429 = rho 44441 := by linear_combination r6213
    have hd2 : rho 44430 * rho 44430 = rho 44442 := by linear_combination r6214
    have hd3 : rho 44443 * (rho 44430 * rho 44430 + rho 44429 * rho 44429 * (-1)) = 2 * (rho 44429 * rho 44430) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 44444 * (2 - (rho 44430 * rho 44430 + rho 44429 * rho 44429 * (-1))) = rho 44430 * rho 44430 - rho 44429 * rho 44429 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX242 rho : Seg45.F), (seg45AccY242 rho : Seg45.F)⟩
      ⟨(rho 44429 : Seg45.F), (rho 44430 : Seg45.F)⟩
      ⟨(rho 44436 : Seg45.F), (rho 44437 : Seg45.F)⟩
      ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
      ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg45_rows243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6217 rho ∧ Seg45.relationRow6218 rho ∧ Seg45.relationRow6219 rho ∧ Seg45.relationRow6220 rho ∧ Seg45.relationRow6221 rho ∧ Seg45.relationRow6222 rho ∧ Seg45.relationRow6223 rho ∧ Seg45.relationRow6224 rho ∧ Seg45.relationRow6225 rho ∧ Seg45.relationRow6226 rho ∧ Seg45.relationRow6227 rho ∧ Seg45.relationRow6228 rho ∧ Seg45.relationRow6229 rho ∧ Seg45.relationRow6230 rho := by
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
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩

theorem seg45_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41191 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩ := by
  obtain ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩ := seg45_rows243 rho h
  unfold Seg45.relationRow6217 at r6217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6217
  unfold Seg45.relationRow6218 at r6218
  unfold Seg45.relationRow6219 at r6219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6219
  unfold Seg45.relationRow6220 at r6220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6220
  unfold Seg45.relationRow6221 at r6221
  unfold Seg45.relationRow6222 at r6222
  unfold Seg45.relationRow6223 at r6223
  unfold Seg45.relationRow6224 at r6224
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6224
  unfold Seg45.relationRow6225 at r6225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6225
  unfold Seg45.relationRow6226 at r6226
  unfold Seg45.relationRow6227 at r6227
  unfold Seg45.relationRow6228 at r6228
  unfold Seg45.relationRow6229 at r6229
  unfold Seg45.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 41191 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
        ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩ := by
    have hnextx : seg45AccX244 rho = seg45AccX243 rho + rho 44452 := by
      unfold seg45AccX244 seg45AccX243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 93]
      ring
    have hnexty : seg45AccY244 rho = seg45AccY243 rho + rho 44453 := by
      unfold seg45AccY244 seg45AccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 93]
      ring
    have hsum : seg45AccX243 rho + seg45AccY243 rho = rho 44445 := by
      unfold seg45AccX243 seg45AccY243
      linear_combination r6217
    have ha0 : (rho 44443 + rho 44444) * (seg45AccX243 rho + seg45AccY243 rho) = rho 44446 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 44444 * seg45AccX243 rho = rho 44447 := by
      unfold seg45AccX243
      linear_combination r6219
    have ha2 : rho 44443 * seg45AccY243 rho = rho 44448 := by
      unfold seg45AccY243
      linear_combination r6220
    have ha3 : 3021 * rho 44447 * rho 44448 = rho 44449 := by
      linear_combination r6221
    have ha4 : rho 44450 * (1 + rho 44449) = rho 44447 + rho 44448 := by
      linear_combination r6222
    have ha5 : rho 44451 * (1 - rho 44449) = rho 44446 - rho 44447 - rho 44448 := by
      linear_combination r6223
    have haddx :
        rho 44450 * (1 + 3021 * (rho 44444 * seg45AccX243 rho) * (rho 44443 * seg45AccY243 rho)) =
          rho 44444 * seg45AccX243 rho + rho 44443 * seg45AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44451 * (1 - 3021 * (rho 44444 * seg45AccX243 rho) * (rho 44443 * seg45AccY243 rho)) =
          (-1) * (rho 44444 * seg45AccX243 rho) - rho 44443 * seg45AccY243 rho +
            (seg45AccY243 rho - seg45AccX243 rho * (-1)) * (rho 44443 + rho 44444) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44451 * (1 - rho 44449) = rho 44446 - rho 44447 - rho 44448 := ha5
        _ = (-1) * rho 44447 - rho 44448 + (seg45AccY243 rho - seg45AccX243 rho * (-1)) * (rho 44443 + rho 44444) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX244 rho = seg45AccX243 rho - Bool.toZMod bit * (seg45AccX243 rho - rho 44450) := by
      have hd : rho 44452 = Bool.toZMod bit * (rho 44450 - seg45AccX243 rho) := by
        rw [← hbit]
        unfold seg45AccX243
        linear_combination -r6224
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY244 rho = seg45AccY243 rho - Bool.toZMod bit * (seg45AccY243 rho - rho 44451) := by
      have hd : rho 44453 = Bool.toZMod bit * (rho 44451 - seg45AccY243 rho) := by
        rw [← hbit]
        unfold seg45AccY243
        linear_combination -r6225
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44443 * rho 44444 = rho 44454 := by linear_combination r6226
    have hd1 : rho 44443 * rho 44443 = rho 44455 := by linear_combination r6227
    have hd2 : rho 44444 * rho 44444 = rho 44456 := by linear_combination r6228
    have hd3 : rho 44457 * (rho 44444 * rho 44444 + rho 44443 * rho 44443 * (-1)) = 2 * (rho 44443 * rho 44444) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 44458 * (2 - (rho 44444 * rho 44444 + rho 44443 * rho 44443 * (-1))) = rho 44444 * rho 44444 - rho 44443 * rho 44443 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX243 rho : Seg45.F), (seg45AccY243 rho : Seg45.F)⟩
      ⟨(rho 44443 : Seg45.F), (rho 44444 : Seg45.F)⟩
      ⟨(rho 44450 : Seg45.F), (rho 44451 : Seg45.F)⟩
      ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
      ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg45_rows244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6231 rho ∧ Seg45.relationRow6232 rho ∧ Seg45.relationRow6233 rho ∧ Seg45.relationRow6234 rho ∧ Seg45.relationRow6235 rho ∧ Seg45.relationRow6236 rho ∧ Seg45.relationRow6237 rho ∧ Seg45.relationRow6238 rho ∧ Seg45.relationRow6239 rho ∧ Seg45.relationRow6240 rho ∧ Seg45.relationRow6241 rho ∧ Seg45.relationRow6242 rho ∧ Seg45.relationRow6243 rho ∧ Seg45.relationRow6244 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p77, p78, _
  ⟩
  unfold Seg45.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩

theorem seg45_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41192 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩ := by
  obtain ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩ := seg45_rows244 rho h
  unfold Seg45.relationRow6231 at r6231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6231
  unfold Seg45.relationRow6232 at r6232
  unfold Seg45.relationRow6233 at r6233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6233
  unfold Seg45.relationRow6234 at r6234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6234
  unfold Seg45.relationRow6235 at r6235
  unfold Seg45.relationRow6236 at r6236
  unfold Seg45.relationRow6237 at r6237
  unfold Seg45.relationRow6238 at r6238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6238
  unfold Seg45.relationRow6239 at r6239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6239
  unfold Seg45.relationRow6240 at r6240
  unfold Seg45.relationRow6241 at r6241
  unfold Seg45.relationRow6242 at r6242
  unfold Seg45.relationRow6243 at r6243
  unfold Seg45.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 41192 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
        ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩ := by
    have hnextx : seg45AccX245 rho = seg45AccX244 rho + rho 44466 := by
      unfold seg45AccX245 seg45AccX244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 94]
      ring
    have hnexty : seg45AccY245 rho = seg45AccY244 rho + rho 44467 := by
      unfold seg45AccY245 seg45AccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 94]
      ring
    have hsum : seg45AccX244 rho + seg45AccY244 rho = rho 44459 := by
      unfold seg45AccX244 seg45AccY244
      linear_combination r6231
    have ha0 : (rho 44457 + rho 44458) * (seg45AccX244 rho + seg45AccY244 rho) = rho 44460 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 44458 * seg45AccX244 rho = rho 44461 := by
      unfold seg45AccX244
      linear_combination r6233
    have ha2 : rho 44457 * seg45AccY244 rho = rho 44462 := by
      unfold seg45AccY244
      linear_combination r6234
    have ha3 : 3021 * rho 44461 * rho 44462 = rho 44463 := by
      linear_combination r6235
    have ha4 : rho 44464 * (1 + rho 44463) = rho 44461 + rho 44462 := by
      linear_combination r6236
    have ha5 : rho 44465 * (1 - rho 44463) = rho 44460 - rho 44461 - rho 44462 := by
      linear_combination r6237
    have haddx :
        rho 44464 * (1 + 3021 * (rho 44458 * seg45AccX244 rho) * (rho 44457 * seg45AccY244 rho)) =
          rho 44458 * seg45AccX244 rho + rho 44457 * seg45AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44465 * (1 - 3021 * (rho 44458 * seg45AccX244 rho) * (rho 44457 * seg45AccY244 rho)) =
          (-1) * (rho 44458 * seg45AccX244 rho) - rho 44457 * seg45AccY244 rho +
            (seg45AccY244 rho - seg45AccX244 rho * (-1)) * (rho 44457 + rho 44458) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44465 * (1 - rho 44463) = rho 44460 - rho 44461 - rho 44462 := ha5
        _ = (-1) * rho 44461 - rho 44462 + (seg45AccY244 rho - seg45AccX244 rho * (-1)) * (rho 44457 + rho 44458) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX245 rho = seg45AccX244 rho - Bool.toZMod bit * (seg45AccX244 rho - rho 44464) := by
      have hd : rho 44466 = Bool.toZMod bit * (rho 44464 - seg45AccX244 rho) := by
        rw [← hbit]
        unfold seg45AccX244
        linear_combination -r6238
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY245 rho = seg45AccY244 rho - Bool.toZMod bit * (seg45AccY244 rho - rho 44465) := by
      have hd : rho 44467 = Bool.toZMod bit * (rho 44465 - seg45AccY244 rho) := by
        rw [← hbit]
        unfold seg45AccY244
        linear_combination -r6239
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44457 * rho 44458 = rho 44468 := by linear_combination r6240
    have hd1 : rho 44457 * rho 44457 = rho 44469 := by linear_combination r6241
    have hd2 : rho 44458 * rho 44458 = rho 44470 := by linear_combination r6242
    have hd3 : rho 44471 * (rho 44458 * rho 44458 + rho 44457 * rho 44457 * (-1)) = 2 * (rho 44457 * rho 44458) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 44472 * (2 - (rho 44458 * rho 44458 + rho 44457 * rho 44457 * (-1))) = rho 44458 * rho 44458 - rho 44457 * rho 44457 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX244 rho : Seg45.F), (seg45AccY244 rho : Seg45.F)⟩
      ⟨(rho 44457 : Seg45.F), (rho 44458 : Seg45.F)⟩
      ⟨(rho 44464 : Seg45.F), (rho 44465 : Seg45.F)⟩
      ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
      ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg45_rows245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6245 rho ∧ Seg45.relationRow6246 rho ∧ Seg45.relationRow6247 rho ∧ Seg45.relationRow6248 rho ∧ Seg45.relationRow6249 rho ∧ Seg45.relationRow6250 rho ∧ Seg45.relationRow6251 rho ∧ Seg45.relationRow6252 rho ∧ Seg45.relationRow6253 rho ∧ Seg45.relationRow6254 rho ∧ Seg45.relationRow6255 rho ∧ Seg45.relationRow6256 rho ∧ Seg45.relationRow6257 rho ∧ Seg45.relationRow6258 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩

theorem seg45_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩ := by
  obtain ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩ := seg45_rows245 rho h
  unfold Seg45.relationRow6245 at r6245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6245
  unfold Seg45.relationRow6246 at r6246
  unfold Seg45.relationRow6247 at r6247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6247
  unfold Seg45.relationRow6248 at r6248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6248
  unfold Seg45.relationRow6249 at r6249
  unfold Seg45.relationRow6250 at r6250
  unfold Seg45.relationRow6251 at r6251
  unfold Seg45.relationRow6252 at r6252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6252
  unfold Seg45.relationRow6253 at r6253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6253
  unfold Seg45.relationRow6254 at r6254
  unfold Seg45.relationRow6255 at r6255
  unfold Seg45.relationRow6256 at r6256
  unfold Seg45.relationRow6257 at r6257
  unfold Seg45.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 41193 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
        ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩ := by
    have hnextx : seg45AccX246 rho = seg45AccX245 rho + rho 44480 := by
      unfold seg45AccX246 seg45AccX245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 95]
      ring
    have hnexty : seg45AccY246 rho = seg45AccY245 rho + rho 44481 := by
      unfold seg45AccY246 seg45AccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 95]
      ring
    have hsum : seg45AccX245 rho + seg45AccY245 rho = rho 44473 := by
      unfold seg45AccX245 seg45AccY245
      linear_combination r6245
    have ha0 : (rho 44471 + rho 44472) * (seg45AccX245 rho + seg45AccY245 rho) = rho 44474 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 44472 * seg45AccX245 rho = rho 44475 := by
      unfold seg45AccX245
      linear_combination r6247
    have ha2 : rho 44471 * seg45AccY245 rho = rho 44476 := by
      unfold seg45AccY245
      linear_combination r6248
    have ha3 : 3021 * rho 44475 * rho 44476 = rho 44477 := by
      linear_combination r6249
    have ha4 : rho 44478 * (1 + rho 44477) = rho 44475 + rho 44476 := by
      linear_combination r6250
    have ha5 : rho 44479 * (1 - rho 44477) = rho 44474 - rho 44475 - rho 44476 := by
      linear_combination r6251
    have haddx :
        rho 44478 * (1 + 3021 * (rho 44472 * seg45AccX245 rho) * (rho 44471 * seg45AccY245 rho)) =
          rho 44472 * seg45AccX245 rho + rho 44471 * seg45AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44479 * (1 - 3021 * (rho 44472 * seg45AccX245 rho) * (rho 44471 * seg45AccY245 rho)) =
          (-1) * (rho 44472 * seg45AccX245 rho) - rho 44471 * seg45AccY245 rho +
            (seg45AccY245 rho - seg45AccX245 rho * (-1)) * (rho 44471 + rho 44472) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44479 * (1 - rho 44477) = rho 44474 - rho 44475 - rho 44476 := ha5
        _ = (-1) * rho 44475 - rho 44476 + (seg45AccY245 rho - seg45AccX245 rho * (-1)) * (rho 44471 + rho 44472) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX246 rho = seg45AccX245 rho - Bool.toZMod bit * (seg45AccX245 rho - rho 44478) := by
      have hd : rho 44480 = Bool.toZMod bit * (rho 44478 - seg45AccX245 rho) := by
        rw [← hbit]
        unfold seg45AccX245
        linear_combination -r6252
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY246 rho = seg45AccY245 rho - Bool.toZMod bit * (seg45AccY245 rho - rho 44479) := by
      have hd : rho 44481 = Bool.toZMod bit * (rho 44479 - seg45AccY245 rho) := by
        rw [← hbit]
        unfold seg45AccY245
        linear_combination -r6253
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44471 * rho 44472 = rho 44482 := by linear_combination r6254
    have hd1 : rho 44471 * rho 44471 = rho 44483 := by linear_combination r6255
    have hd2 : rho 44472 * rho 44472 = rho 44484 := by linear_combination r6256
    have hd3 : rho 44485 * (rho 44472 * rho 44472 + rho 44471 * rho 44471 * (-1)) = 2 * (rho 44471 * rho 44472) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 44486 * (2 - (rho 44472 * rho 44472 + rho 44471 * rho 44471 * (-1))) = rho 44472 * rho 44472 - rho 44471 * rho 44471 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX245 rho : Seg45.F), (seg45AccY245 rho : Seg45.F)⟩
      ⟨(rho 44471 : Seg45.F), (rho 44472 : Seg45.F)⟩
      ⟨(rho 44478 : Seg45.F), (rho 44479 : Seg45.F)⟩
      ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
      ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg45_rows246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6259 rho ∧ Seg45.relationRow6260 rho ∧ Seg45.relationRow6261 rho ∧ Seg45.relationRow6262 rho ∧ Seg45.relationRow6263 rho ∧ Seg45.relationRow6264 rho ∧ Seg45.relationRow6265 rho ∧ Seg45.relationRow6266 rho ∧ Seg45.relationRow6267 rho ∧ Seg45.relationRow6268 rho ∧ Seg45.relationRow6269 rho ∧ Seg45.relationRow6270 rho ∧ Seg45.relationRow6271 rho ∧ Seg45.relationRow6272 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩

theorem seg45_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩ := by
  obtain ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩ := seg45_rows246 rho h
  unfold Seg45.relationRow6259 at r6259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6259
  unfold Seg45.relationRow6260 at r6260
  unfold Seg45.relationRow6261 at r6261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6261
  unfold Seg45.relationRow6262 at r6262
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6262
  unfold Seg45.relationRow6263 at r6263
  unfold Seg45.relationRow6264 at r6264
  unfold Seg45.relationRow6265 at r6265
  unfold Seg45.relationRow6266 at r6266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6266
  unfold Seg45.relationRow6267 at r6267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6267
  unfold Seg45.relationRow6268 at r6268
  unfold Seg45.relationRow6269 at r6269
  unfold Seg45.relationRow6270 at r6270
  unfold Seg45.relationRow6271 at r6271
  unfold Seg45.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 41194 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
        ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩ := by
    have hnextx : seg45AccX247 rho = seg45AccX246 rho + rho 44494 := by
      unfold seg45AccX247 seg45AccX246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 96]
      ring
    have hnexty : seg45AccY247 rho = seg45AccY246 rho + rho 44495 := by
      unfold seg45AccY247 seg45AccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 96]
      ring
    have hsum : seg45AccX246 rho + seg45AccY246 rho = rho 44487 := by
      unfold seg45AccX246 seg45AccY246
      linear_combination r6259
    have ha0 : (rho 44485 + rho 44486) * (seg45AccX246 rho + seg45AccY246 rho) = rho 44488 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 44486 * seg45AccX246 rho = rho 44489 := by
      unfold seg45AccX246
      linear_combination r6261
    have ha2 : rho 44485 * seg45AccY246 rho = rho 44490 := by
      unfold seg45AccY246
      linear_combination r6262
    have ha3 : 3021 * rho 44489 * rho 44490 = rho 44491 := by
      linear_combination r6263
    have ha4 : rho 44492 * (1 + rho 44491) = rho 44489 + rho 44490 := by
      linear_combination r6264
    have ha5 : rho 44493 * (1 - rho 44491) = rho 44488 - rho 44489 - rho 44490 := by
      linear_combination r6265
    have haddx :
        rho 44492 * (1 + 3021 * (rho 44486 * seg45AccX246 rho) * (rho 44485 * seg45AccY246 rho)) =
          rho 44486 * seg45AccX246 rho + rho 44485 * seg45AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44493 * (1 - 3021 * (rho 44486 * seg45AccX246 rho) * (rho 44485 * seg45AccY246 rho)) =
          (-1) * (rho 44486 * seg45AccX246 rho) - rho 44485 * seg45AccY246 rho +
            (seg45AccY246 rho - seg45AccX246 rho * (-1)) * (rho 44485 + rho 44486) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44493 * (1 - rho 44491) = rho 44488 - rho 44489 - rho 44490 := ha5
        _ = (-1) * rho 44489 - rho 44490 + (seg45AccY246 rho - seg45AccX246 rho * (-1)) * (rho 44485 + rho 44486) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX247 rho = seg45AccX246 rho - Bool.toZMod bit * (seg45AccX246 rho - rho 44492) := by
      have hd : rho 44494 = Bool.toZMod bit * (rho 44492 - seg45AccX246 rho) := by
        rw [← hbit]
        unfold seg45AccX246
        linear_combination -r6266
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY247 rho = seg45AccY246 rho - Bool.toZMod bit * (seg45AccY246 rho - rho 44493) := by
      have hd : rho 44495 = Bool.toZMod bit * (rho 44493 - seg45AccY246 rho) := by
        rw [← hbit]
        unfold seg45AccY246
        linear_combination -r6267
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44485 * rho 44486 = rho 44496 := by linear_combination r6268
    have hd1 : rho 44485 * rho 44485 = rho 44497 := by linear_combination r6269
    have hd2 : rho 44486 * rho 44486 = rho 44498 := by linear_combination r6270
    have hd3 : rho 44499 * (rho 44486 * rho 44486 + rho 44485 * rho 44485 * (-1)) = 2 * (rho 44485 * rho 44486) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 44500 * (2 - (rho 44486 * rho 44486 + rho 44485 * rho 44485 * (-1))) = rho 44486 * rho 44486 - rho 44485 * rho 44485 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX246 rho : Seg45.F), (seg45AccY246 rho : Seg45.F)⟩
      ⟨(rho 44485 : Seg45.F), (rho 44486 : Seg45.F)⟩
      ⟨(rho 44492 : Seg45.F), (rho 44493 : Seg45.F)⟩
      ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
      ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg45_rows247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6273 rho ∧ Seg45.relationRow6274 rho ∧ Seg45.relationRow6275 rho ∧ Seg45.relationRow6276 rho ∧ Seg45.relationRow6277 rho ∧ Seg45.relationRow6278 rho ∧ Seg45.relationRow6279 rho ∧ Seg45.relationRow6280 rho ∧ Seg45.relationRow6281 rho ∧ Seg45.relationRow6282 rho ∧ Seg45.relationRow6283 rho ∧ Seg45.relationRow6284 rho ∧ Seg45.relationRow6285 rho ∧ Seg45.relationRow6286 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩

theorem seg45_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩ := by
  obtain ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩ := seg45_rows247 rho h
  unfold Seg45.relationRow6273 at r6273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6273
  unfold Seg45.relationRow6274 at r6274
  unfold Seg45.relationRow6275 at r6275
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6275
  unfold Seg45.relationRow6276 at r6276
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6276
  unfold Seg45.relationRow6277 at r6277
  unfold Seg45.relationRow6278 at r6278
  unfold Seg45.relationRow6279 at r6279
  unfold Seg45.relationRow6280 at r6280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6280
  unfold Seg45.relationRow6281 at r6281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6281
  unfold Seg45.relationRow6282 at r6282
  unfold Seg45.relationRow6283 at r6283
  unfold Seg45.relationRow6284 at r6284
  unfold Seg45.relationRow6285 at r6285
  unfold Seg45.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 41195 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
        ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩ := by
    have hnextx : seg45AccX248 rho = seg45AccX247 rho + rho 44508 := by
      unfold seg45AccX248 seg45AccX247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 97]
      ring
    have hnexty : seg45AccY248 rho = seg45AccY247 rho + rho 44509 := by
      unfold seg45AccY248 seg45AccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 97]
      ring
    have hsum : seg45AccX247 rho + seg45AccY247 rho = rho 44501 := by
      unfold seg45AccX247 seg45AccY247
      linear_combination r6273
    have ha0 : (rho 44499 + rho 44500) * (seg45AccX247 rho + seg45AccY247 rho) = rho 44502 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 44500 * seg45AccX247 rho = rho 44503 := by
      unfold seg45AccX247
      linear_combination r6275
    have ha2 : rho 44499 * seg45AccY247 rho = rho 44504 := by
      unfold seg45AccY247
      linear_combination r6276
    have ha3 : 3021 * rho 44503 * rho 44504 = rho 44505 := by
      linear_combination r6277
    have ha4 : rho 44506 * (1 + rho 44505) = rho 44503 + rho 44504 := by
      linear_combination r6278
    have ha5 : rho 44507 * (1 - rho 44505) = rho 44502 - rho 44503 - rho 44504 := by
      linear_combination r6279
    have haddx :
        rho 44506 * (1 + 3021 * (rho 44500 * seg45AccX247 rho) * (rho 44499 * seg45AccY247 rho)) =
          rho 44500 * seg45AccX247 rho + rho 44499 * seg45AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44507 * (1 - 3021 * (rho 44500 * seg45AccX247 rho) * (rho 44499 * seg45AccY247 rho)) =
          (-1) * (rho 44500 * seg45AccX247 rho) - rho 44499 * seg45AccY247 rho +
            (seg45AccY247 rho - seg45AccX247 rho * (-1)) * (rho 44499 + rho 44500) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44507 * (1 - rho 44505) = rho 44502 - rho 44503 - rho 44504 := ha5
        _ = (-1) * rho 44503 - rho 44504 + (seg45AccY247 rho - seg45AccX247 rho * (-1)) * (rho 44499 + rho 44500) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX248 rho = seg45AccX247 rho - Bool.toZMod bit * (seg45AccX247 rho - rho 44506) := by
      have hd : rho 44508 = Bool.toZMod bit * (rho 44506 - seg45AccX247 rho) := by
        rw [← hbit]
        unfold seg45AccX247
        linear_combination -r6280
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY248 rho = seg45AccY247 rho - Bool.toZMod bit * (seg45AccY247 rho - rho 44507) := by
      have hd : rho 44509 = Bool.toZMod bit * (rho 44507 - seg45AccY247 rho) := by
        rw [← hbit]
        unfold seg45AccY247
        linear_combination -r6281
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44499 * rho 44500 = rho 44510 := by linear_combination r6282
    have hd1 : rho 44499 * rho 44499 = rho 44511 := by linear_combination r6283
    have hd2 : rho 44500 * rho 44500 = rho 44512 := by linear_combination r6284
    have hd3 : rho 44513 * (rho 44500 * rho 44500 + rho 44499 * rho 44499 * (-1)) = 2 * (rho 44499 * rho 44500) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 44514 * (2 - (rho 44500 * rho 44500 + rho 44499 * rho 44499 * (-1))) = rho 44500 * rho 44500 - rho 44499 * rho 44499 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX247 rho : Seg45.F), (seg45AccY247 rho : Seg45.F)⟩
      ⟨(rho 44499 : Seg45.F), (rho 44500 : Seg45.F)⟩
      ⟨(rho 44506 : Seg45.F), (rho 44507 : Seg45.F)⟩
      ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
      ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg45_rows248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6287 rho ∧ Seg45.relationRow6288 rho ∧ Seg45.relationRow6289 rho ∧ Seg45.relationRow6290 rho ∧ Seg45.relationRow6291 rho ∧ Seg45.relationRow6292 rho ∧ Seg45.relationRow6293 rho ∧ Seg45.relationRow6294 rho ∧ Seg45.relationRow6295 rho ∧ Seg45.relationRow6296 rho ∧ Seg45.relationRow6297 rho ∧ Seg45.relationRow6298 rho ∧ Seg45.relationRow6299 rho ∧ Seg45.relationRow6300 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩

theorem seg45_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩ := by
  obtain ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩ := seg45_rows248 rho h
  unfold Seg45.relationRow6287 at r6287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6287
  unfold Seg45.relationRow6288 at r6288
  unfold Seg45.relationRow6289 at r6289
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6289
  unfold Seg45.relationRow6290 at r6290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6290
  unfold Seg45.relationRow6291 at r6291
  unfold Seg45.relationRow6292 at r6292
  unfold Seg45.relationRow6293 at r6293
  unfold Seg45.relationRow6294 at r6294
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6294
  unfold Seg45.relationRow6295 at r6295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6295
  unfold Seg45.relationRow6296 at r6296
  unfold Seg45.relationRow6297 at r6297
  unfold Seg45.relationRow6298 at r6298
  unfold Seg45.relationRow6299 at r6299
  unfold Seg45.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 41196 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
        ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩ := by
    have hnextx : seg45AccX249 rho = seg45AccX248 rho + rho 44522 := by
      unfold seg45AccX249 seg45AccX248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 98]
      ring
    have hnexty : seg45AccY249 rho = seg45AccY248 rho + rho 44523 := by
      unfold seg45AccY249 seg45AccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 98]
      ring
    have hsum : seg45AccX248 rho + seg45AccY248 rho = rho 44515 := by
      unfold seg45AccX248 seg45AccY248
      linear_combination r6287
    have ha0 : (rho 44513 + rho 44514) * (seg45AccX248 rho + seg45AccY248 rho) = rho 44516 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 44514 * seg45AccX248 rho = rho 44517 := by
      unfold seg45AccX248
      linear_combination r6289
    have ha2 : rho 44513 * seg45AccY248 rho = rho 44518 := by
      unfold seg45AccY248
      linear_combination r6290
    have ha3 : 3021 * rho 44517 * rho 44518 = rho 44519 := by
      linear_combination r6291
    have ha4 : rho 44520 * (1 + rho 44519) = rho 44517 + rho 44518 := by
      linear_combination r6292
    have ha5 : rho 44521 * (1 - rho 44519) = rho 44516 - rho 44517 - rho 44518 := by
      linear_combination r6293
    have haddx :
        rho 44520 * (1 + 3021 * (rho 44514 * seg45AccX248 rho) * (rho 44513 * seg45AccY248 rho)) =
          rho 44514 * seg45AccX248 rho + rho 44513 * seg45AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44521 * (1 - 3021 * (rho 44514 * seg45AccX248 rho) * (rho 44513 * seg45AccY248 rho)) =
          (-1) * (rho 44514 * seg45AccX248 rho) - rho 44513 * seg45AccY248 rho +
            (seg45AccY248 rho - seg45AccX248 rho * (-1)) * (rho 44513 + rho 44514) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44521 * (1 - rho 44519) = rho 44516 - rho 44517 - rho 44518 := ha5
        _ = (-1) * rho 44517 - rho 44518 + (seg45AccY248 rho - seg45AccX248 rho * (-1)) * (rho 44513 + rho 44514) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX249 rho = seg45AccX248 rho - Bool.toZMod bit * (seg45AccX248 rho - rho 44520) := by
      have hd : rho 44522 = Bool.toZMod bit * (rho 44520 - seg45AccX248 rho) := by
        rw [← hbit]
        unfold seg45AccX248
        linear_combination -r6294
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY249 rho = seg45AccY248 rho - Bool.toZMod bit * (seg45AccY248 rho - rho 44521) := by
      have hd : rho 44523 = Bool.toZMod bit * (rho 44521 - seg45AccY248 rho) := by
        rw [← hbit]
        unfold seg45AccY248
        linear_combination -r6295
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44513 * rho 44514 = rho 44524 := by linear_combination r6296
    have hd1 : rho 44513 * rho 44513 = rho 44525 := by linear_combination r6297
    have hd2 : rho 44514 * rho 44514 = rho 44526 := by linear_combination r6298
    have hd3 : rho 44527 * (rho 44514 * rho 44514 + rho 44513 * rho 44513 * (-1)) = 2 * (rho 44513 * rho 44514) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 44528 * (2 - (rho 44514 * rho 44514 + rho 44513 * rho 44513 * (-1))) = rho 44514 * rho 44514 - rho 44513 * rho 44513 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX248 rho : Seg45.F), (seg45AccY248 rho : Seg45.F)⟩
      ⟨(rho 44513 : Seg45.F), (rho 44514 : Seg45.F)⟩
      ⟨(rho 44520 : Seg45.F), (rho 44521 : Seg45.F)⟩
      ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
      ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg45_rows249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6301 rho ∧ Seg45.relationRow6302 rho ∧ Seg45.relationRow6303 rho ∧ Seg45.relationRow6304 rho ∧ Seg45.relationRow6305 rho ∧ Seg45.relationRow6306 rho ∧ Seg45.relationRow6307 rho ∧ Seg45.relationRow6308 rho ∧ Seg45.relationRow6309 rho ∧ Seg45.relationRow6310 rho ∧ Seg45.relationRow6311 rho ∧ Seg45.relationRow6312 rho ∧ Seg45.relationRow6313 rho ∧ Seg45.relationRow6314 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, _
  ⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  exact ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩

theorem seg45_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩ := by
  obtain ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩ := seg45_rows249 rho h
  unfold Seg45.relationRow6301 at r6301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6301
  unfold Seg45.relationRow6302 at r6302
  unfold Seg45.relationRow6303 at r6303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6303
  unfold Seg45.relationRow6304 at r6304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6304
  unfold Seg45.relationRow6305 at r6305
  unfold Seg45.relationRow6306 at r6306
  unfold Seg45.relationRow6307 at r6307
  unfold Seg45.relationRow6308 at r6308
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6308
  unfold Seg45.relationRow6309 at r6309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6309
  unfold Seg45.relationRow6310 at r6310
  unfold Seg45.relationRow6311 at r6311
  unfold Seg45.relationRow6312 at r6312
  unfold Seg45.relationRow6313 at r6313
  unfold Seg45.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 41197 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
        ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩ := by
    have hnextx : seg45AccX250 rho = seg45AccX249 rho + rho 44536 := by
      unfold seg45AccX250 seg45AccX249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 99]
      ring
    have hnexty : seg45AccY250 rho = seg45AccY249 rho + rho 44537 := by
      unfold seg45AccY250 seg45AccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 99]
      ring
    have hsum : seg45AccX249 rho + seg45AccY249 rho = rho 44529 := by
      unfold seg45AccX249 seg45AccY249
      linear_combination r6301
    have ha0 : (rho 44527 + rho 44528) * (seg45AccX249 rho + seg45AccY249 rho) = rho 44530 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 44528 * seg45AccX249 rho = rho 44531 := by
      unfold seg45AccX249
      linear_combination r6303
    have ha2 : rho 44527 * seg45AccY249 rho = rho 44532 := by
      unfold seg45AccY249
      linear_combination r6304
    have ha3 : 3021 * rho 44531 * rho 44532 = rho 44533 := by
      linear_combination r6305
    have ha4 : rho 44534 * (1 + rho 44533) = rho 44531 + rho 44532 := by
      linear_combination r6306
    have ha5 : rho 44535 * (1 - rho 44533) = rho 44530 - rho 44531 - rho 44532 := by
      linear_combination r6307
    have haddx :
        rho 44534 * (1 + 3021 * (rho 44528 * seg45AccX249 rho) * (rho 44527 * seg45AccY249 rho)) =
          rho 44528 * seg45AccX249 rho + rho 44527 * seg45AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44535 * (1 - 3021 * (rho 44528 * seg45AccX249 rho) * (rho 44527 * seg45AccY249 rho)) =
          (-1) * (rho 44528 * seg45AccX249 rho) - rho 44527 * seg45AccY249 rho +
            (seg45AccY249 rho - seg45AccX249 rho * (-1)) * (rho 44527 + rho 44528) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44535 * (1 - rho 44533) = rho 44530 - rho 44531 - rho 44532 := ha5
        _ = (-1) * rho 44531 - rho 44532 + (seg45AccY249 rho - seg45AccX249 rho * (-1)) * (rho 44527 + rho 44528) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX250 rho = seg45AccX249 rho - Bool.toZMod bit * (seg45AccX249 rho - rho 44534) := by
      have hd : rho 44536 = Bool.toZMod bit * (rho 44534 - seg45AccX249 rho) := by
        rw [← hbit]
        unfold seg45AccX249
        linear_combination -r6308
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY250 rho = seg45AccY249 rho - Bool.toZMod bit * (seg45AccY249 rho - rho 44535) := by
      have hd : rho 44537 = Bool.toZMod bit * (rho 44535 - seg45AccY249 rho) := by
        rw [← hbit]
        unfold seg45AccY249
        linear_combination -r6309
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44527 * rho 44528 = rho 44538 := by linear_combination r6310
    have hd1 : rho 44527 * rho 44527 = rho 44539 := by linear_combination r6311
    have hd2 : rho 44528 * rho 44528 = rho 44540 := by linear_combination r6312
    have hd3 : rho 44541 * (rho 44528 * rho 44528 + rho 44527 * rho 44527 * (-1)) = 2 * (rho 44527 * rho 44528) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 44542 * (2 - (rho 44528 * rho 44528 + rho 44527 * rho 44527 * (-1))) = rho 44528 * rho 44528 - rho 44527 * rho 44527 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX249 rho : Seg45.F), (seg45AccY249 rho : Seg45.F)⟩
      ⟨(rho 44527 : Seg45.F), (rho 44528 : Seg45.F)⟩
      ⟨(rho 44534 : Seg45.F), (rho 44535 : Seg45.F)⟩
      ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
      ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg45_rows250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow6315 rho ∧ Seg45.relationRow6316 rho ∧ Seg45.relationRow6317 rho ∧ Seg45.relationRow6318 rho ∧ Seg45.relationRow6319 rho ∧ Seg45.relationRow6320 rho ∧ Seg45.relationRow6321 rho ∧ Seg45.relationRow6322 rho ∧ Seg45.relationRow6323 rho ∧ Seg45.relationRow6324 rho ∧ Seg45.relationRow6325 rho ∧ Seg45.relationRow6326 rho ∧ Seg45.relationRow6327 rho ∧ Seg45.relationRow6328 rho := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p78, p79
  ⟩
  unfold Seg45.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg45.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  exact ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩

theorem seg45_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
        ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩
        ⟨(rho 44555 : Seg45.F), (rho 44556 : Seg45.F)⟩ := by
  obtain ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩ := seg45_rows250 rho h
  unfold Seg45.relationRow6315 at r6315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6315
  unfold Seg45.relationRow6316 at r6316
  unfold Seg45.relationRow6317 at r6317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6317
  unfold Seg45.relationRow6318 at r6318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6318
  unfold Seg45.relationRow6319 at r6319
  unfold Seg45.relationRow6320 at r6320
  unfold Seg45.relationRow6321 at r6321
  unfold Seg45.relationRow6322 at r6322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6322
  unfold Seg45.relationRow6323 at r6323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6323
  unfold Seg45.relationRow6324 at r6324
  unfold Seg45.relationRow6325 at r6325
  unfold Seg45.relationRow6326 at r6326
  unfold Seg45.relationRow6327 at r6327
  unfold Seg45.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 41198 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
        ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
        ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩
        ⟨(rho 44555 : Seg45.F), (rho 44556 : Seg45.F)⟩ := by
    have hnextx : seg45AccX251 rho = seg45AccX250 rho + rho 44550 := by
      unfold seg45AccX251 seg45AccX250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 100]
      ring
    have hnexty : seg45AccY251 rho = seg45AccY250 rho + rho 44551 := by
      unfold seg45AccY251 seg45AccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 100]
      ring
    have hsum : seg45AccX250 rho + seg45AccY250 rho = rho 44543 := by
      unfold seg45AccX250 seg45AccY250
      linear_combination r6315
    have ha0 : (rho 44541 + rho 44542) * (seg45AccX250 rho + seg45AccY250 rho) = rho 44544 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 44542 * seg45AccX250 rho = rho 44545 := by
      unfold seg45AccX250
      linear_combination r6317
    have ha2 : rho 44541 * seg45AccY250 rho = rho 44546 := by
      unfold seg45AccY250
      linear_combination r6318
    have ha3 : 3021 * rho 44545 * rho 44546 = rho 44547 := by
      linear_combination r6319
    have ha4 : rho 44548 * (1 + rho 44547) = rho 44545 + rho 44546 := by
      linear_combination r6320
    have ha5 : rho 44549 * (1 - rho 44547) = rho 44544 - rho 44545 - rho 44546 := by
      linear_combination r6321
    have haddx :
        rho 44548 * (1 + 3021 * (rho 44542 * seg45AccX250 rho) * (rho 44541 * seg45AccY250 rho)) =
          rho 44542 * seg45AccX250 rho + rho 44541 * seg45AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 44549 * (1 - 3021 * (rho 44542 * seg45AccX250 rho) * (rho 44541 * seg45AccY250 rho)) =
          (-1) * (rho 44542 * seg45AccX250 rho) - rho 44541 * seg45AccY250 rho +
            (seg45AccY250 rho - seg45AccX250 rho * (-1)) * (rho 44541 + rho 44542) := by
      rw [ha1, ha2, ha3]
      calc
        rho 44549 * (1 - rho 44547) = rho 44544 - rho 44545 - rho 44546 := ha5
        _ = (-1) * rho 44545 - rho 44546 + (seg45AccY250 rho - seg45AccX250 rho * (-1)) * (rho 44541 + rho 44542) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX251 rho = seg45AccX250 rho - Bool.toZMod bit * (seg45AccX250 rho - rho 44548) := by
      have hd : rho 44550 = Bool.toZMod bit * (rho 44548 - seg45AccX250 rho) := by
        rw [← hbit]
        unfold seg45AccX250
        linear_combination -r6322
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY251 rho = seg45AccY250 rho - Bool.toZMod bit * (seg45AccY250 rho - rho 44549) := by
      have hd : rho 44551 = Bool.toZMod bit * (rho 44549 - seg45AccY250 rho) := by
        rw [← hbit]
        unfold seg45AccY250
        linear_combination -r6323
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 44541 * rho 44542 = rho 44552 := by linear_combination r6324
    have hd1 : rho 44541 * rho 44541 = rho 44553 := by linear_combination r6325
    have hd2 : rho 44542 * rho 44542 = rho 44554 := by linear_combination r6326
    have hd3 : rho 44555 * (rho 44542 * rho 44542 + rho 44541 * rho 44541 * (-1)) = 2 * (rho 44541 * rho 44542) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 44556 * (2 - (rho 44542 * rho 44542 + rho 44541 * rho 44541 * (-1))) = rho 44542 * rho 44542 - rho 44541 * rho 44541 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX250 rho : Seg45.F), (seg45AccY250 rho : Seg45.F)⟩
      ⟨(rho 44541 : Seg45.F), (rho 44542 : Seg45.F)⟩
      ⟨(rho 44548 : Seg45.F), (rho 44549 : Seg45.F)⟩
      ⟨(seg45AccX251 rho : Seg45.F), (seg45AccY251 rho : Seg45.F)⟩
      ⟨(rho 44555 : Seg45.F), (rho 44556 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg45_hstep_c22 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 242 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg45_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg45_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg45_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg45_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg45_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg45_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg45_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg45_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
