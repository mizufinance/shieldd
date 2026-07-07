import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6203 rho ∧ Seg34.relationRow6204 rho ∧ Seg34.relationRow6205 rho ∧ Seg34.relationRow6206 rho ∧ Seg34.relationRow6207 rho ∧ Seg34.relationRow6208 rho ∧ Seg34.relationRow6209 rho ∧ Seg34.relationRow6210 rho ∧ Seg34.relationRow6211 rho ∧ Seg34.relationRow6212 rho ∧ Seg34.relationRow6213 rho ∧ Seg34.relationRow6214 rho ∧ Seg34.relationRow6215 rho ∧ Seg34.relationRow6216 rho := by
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
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩

theorem seg34_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34234 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩ := by
  obtain ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩ := seg34_rows242 rho h
  unfold Seg34.relationRow6203 at r6203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6203
  unfold Seg34.relationRow6204 at r6204
  unfold Seg34.relationRow6205 at r6205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6205
  unfold Seg34.relationRow6206 at r6206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6206
  unfold Seg34.relationRow6207 at r6207
  unfold Seg34.relationRow6208 at r6208
  unfold Seg34.relationRow6209 at r6209
  unfold Seg34.relationRow6210 at r6210
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6210
  unfold Seg34.relationRow6211 at r6211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6211
  unfold Seg34.relationRow6212 at r6212
  unfold Seg34.relationRow6213 at r6213
  unfold Seg34.relationRow6214 at r6214
  unfold Seg34.relationRow6215 at r6215
  unfold Seg34.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 34234 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
        ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩ := by
    have hnextx : seg34AccX243 rho = seg34AccX242 rho + rho 37482 := by
      unfold seg34AccX243 seg34AccX242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 92]
      ring
    have hnexty : seg34AccY243 rho = seg34AccY242 rho + rho 37483 := by
      unfold seg34AccY243 seg34AccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 92]
      ring
    have hsum : seg34AccX242 rho + seg34AccY242 rho = rho 37475 := by
      unfold seg34AccX242 seg34AccY242
      linear_combination r6203
    have ha0 : (rho 37473 + rho 37474) * (seg34AccX242 rho + seg34AccY242 rho) = rho 37476 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 37474 * seg34AccX242 rho = rho 37477 := by
      unfold seg34AccX242
      linear_combination r6205
    have ha2 : rho 37473 * seg34AccY242 rho = rho 37478 := by
      unfold seg34AccY242
      linear_combination r6206
    have ha3 : 3021 * rho 37477 * rho 37478 = rho 37479 := by
      linear_combination r6207
    have ha4 : rho 37480 * (1 + rho 37479) = rho 37477 + rho 37478 := by
      linear_combination r6208
    have ha5 : rho 37481 * (1 - rho 37479) = rho 37476 - rho 37477 - rho 37478 := by
      linear_combination r6209
    have haddx :
        rho 37480 * (1 + 3021 * (rho 37474 * seg34AccX242 rho) * (rho 37473 * seg34AccY242 rho)) =
          rho 37474 * seg34AccX242 rho + rho 37473 * seg34AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37481 * (1 - 3021 * (rho 37474 * seg34AccX242 rho) * (rho 37473 * seg34AccY242 rho)) =
          (-1) * (rho 37474 * seg34AccX242 rho) - rho 37473 * seg34AccY242 rho +
            (seg34AccY242 rho - seg34AccX242 rho * (-1)) * (rho 37473 + rho 37474) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37481 * (1 - rho 37479) = rho 37476 - rho 37477 - rho 37478 := ha5
        _ = (-1) * rho 37477 - rho 37478 + (seg34AccY242 rho - seg34AccX242 rho * (-1)) * (rho 37473 + rho 37474) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX243 rho = seg34AccX242 rho - Bool.toZMod bit * (seg34AccX242 rho - rho 37480) := by
      have hd : rho 37482 = Bool.toZMod bit * (rho 37480 - seg34AccX242 rho) := by
        rw [← hbit]
        unfold seg34AccX242
        linear_combination -r6210
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY243 rho = seg34AccY242 rho - Bool.toZMod bit * (seg34AccY242 rho - rho 37481) := by
      have hd : rho 37483 = Bool.toZMod bit * (rho 37481 - seg34AccY242 rho) := by
        rw [← hbit]
        unfold seg34AccY242
        linear_combination -r6211
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37473 * rho 37474 = rho 37484 := by linear_combination r6212
    have hd1 : rho 37473 * rho 37473 = rho 37485 := by linear_combination r6213
    have hd2 : rho 37474 * rho 37474 = rho 37486 := by linear_combination r6214
    have hd3 : rho 37487 * (rho 37474 * rho 37474 + rho 37473 * rho 37473 * (-1)) = 2 * (rho 37473 * rho 37474) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 37488 * (2 - (rho 37474 * rho 37474 + rho 37473 * rho 37473 * (-1))) = rho 37474 * rho 37474 - rho 37473 * rho 37473 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX242 rho : Seg34.F), (seg34AccY242 rho : Seg34.F)⟩
      ⟨(rho 37473 : Seg34.F), (rho 37474 : Seg34.F)⟩
      ⟨(rho 37480 : Seg34.F), (rho 37481 : Seg34.F)⟩
      ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
      ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg34_rows243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6217 rho ∧ Seg34.relationRow6218 rho ∧ Seg34.relationRow6219 rho ∧ Seg34.relationRow6220 rho ∧ Seg34.relationRow6221 rho ∧ Seg34.relationRow6222 rho ∧ Seg34.relationRow6223 rho ∧ Seg34.relationRow6224 rho ∧ Seg34.relationRow6225 rho ∧ Seg34.relationRow6226 rho ∧ Seg34.relationRow6227 rho ∧ Seg34.relationRow6228 rho ∧ Seg34.relationRow6229 rho ∧ Seg34.relationRow6230 rho := by
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
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩

theorem seg34_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34235 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩ := by
  obtain ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩ := seg34_rows243 rho h
  unfold Seg34.relationRow6217 at r6217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6217
  unfold Seg34.relationRow6218 at r6218
  unfold Seg34.relationRow6219 at r6219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6219
  unfold Seg34.relationRow6220 at r6220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6220
  unfold Seg34.relationRow6221 at r6221
  unfold Seg34.relationRow6222 at r6222
  unfold Seg34.relationRow6223 at r6223
  unfold Seg34.relationRow6224 at r6224
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6224
  unfold Seg34.relationRow6225 at r6225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6225
  unfold Seg34.relationRow6226 at r6226
  unfold Seg34.relationRow6227 at r6227
  unfold Seg34.relationRow6228 at r6228
  unfold Seg34.relationRow6229 at r6229
  unfold Seg34.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 34235 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
        ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩ := by
    have hnextx : seg34AccX244 rho = seg34AccX243 rho + rho 37496 := by
      unfold seg34AccX244 seg34AccX243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 93]
      ring
    have hnexty : seg34AccY244 rho = seg34AccY243 rho + rho 37497 := by
      unfold seg34AccY244 seg34AccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 93]
      ring
    have hsum : seg34AccX243 rho + seg34AccY243 rho = rho 37489 := by
      unfold seg34AccX243 seg34AccY243
      linear_combination r6217
    have ha0 : (rho 37487 + rho 37488) * (seg34AccX243 rho + seg34AccY243 rho) = rho 37490 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 37488 * seg34AccX243 rho = rho 37491 := by
      unfold seg34AccX243
      linear_combination r6219
    have ha2 : rho 37487 * seg34AccY243 rho = rho 37492 := by
      unfold seg34AccY243
      linear_combination r6220
    have ha3 : 3021 * rho 37491 * rho 37492 = rho 37493 := by
      linear_combination r6221
    have ha4 : rho 37494 * (1 + rho 37493) = rho 37491 + rho 37492 := by
      linear_combination r6222
    have ha5 : rho 37495 * (1 - rho 37493) = rho 37490 - rho 37491 - rho 37492 := by
      linear_combination r6223
    have haddx :
        rho 37494 * (1 + 3021 * (rho 37488 * seg34AccX243 rho) * (rho 37487 * seg34AccY243 rho)) =
          rho 37488 * seg34AccX243 rho + rho 37487 * seg34AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37495 * (1 - 3021 * (rho 37488 * seg34AccX243 rho) * (rho 37487 * seg34AccY243 rho)) =
          (-1) * (rho 37488 * seg34AccX243 rho) - rho 37487 * seg34AccY243 rho +
            (seg34AccY243 rho - seg34AccX243 rho * (-1)) * (rho 37487 + rho 37488) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37495 * (1 - rho 37493) = rho 37490 - rho 37491 - rho 37492 := ha5
        _ = (-1) * rho 37491 - rho 37492 + (seg34AccY243 rho - seg34AccX243 rho * (-1)) * (rho 37487 + rho 37488) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX244 rho = seg34AccX243 rho - Bool.toZMod bit * (seg34AccX243 rho - rho 37494) := by
      have hd : rho 37496 = Bool.toZMod bit * (rho 37494 - seg34AccX243 rho) := by
        rw [← hbit]
        unfold seg34AccX243
        linear_combination -r6224
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY244 rho = seg34AccY243 rho - Bool.toZMod bit * (seg34AccY243 rho - rho 37495) := by
      have hd : rho 37497 = Bool.toZMod bit * (rho 37495 - seg34AccY243 rho) := by
        rw [← hbit]
        unfold seg34AccY243
        linear_combination -r6225
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37487 * rho 37488 = rho 37498 := by linear_combination r6226
    have hd1 : rho 37487 * rho 37487 = rho 37499 := by linear_combination r6227
    have hd2 : rho 37488 * rho 37488 = rho 37500 := by linear_combination r6228
    have hd3 : rho 37501 * (rho 37488 * rho 37488 + rho 37487 * rho 37487 * (-1)) = 2 * (rho 37487 * rho 37488) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 37502 * (2 - (rho 37488 * rho 37488 + rho 37487 * rho 37487 * (-1))) = rho 37488 * rho 37488 - rho 37487 * rho 37487 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX243 rho : Seg34.F), (seg34AccY243 rho : Seg34.F)⟩
      ⟨(rho 37487 : Seg34.F), (rho 37488 : Seg34.F)⟩
      ⟨(rho 37494 : Seg34.F), (rho 37495 : Seg34.F)⟩
      ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
      ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg34_rows244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6231 rho ∧ Seg34.relationRow6232 rho ∧ Seg34.relationRow6233 rho ∧ Seg34.relationRow6234 rho ∧ Seg34.relationRow6235 rho ∧ Seg34.relationRow6236 rho ∧ Seg34.relationRow6237 rho ∧ Seg34.relationRow6238 rho ∧ Seg34.relationRow6239 rho ∧ Seg34.relationRow6240 rho ∧ Seg34.relationRow6241 rho ∧ Seg34.relationRow6242 rho ∧ Seg34.relationRow6243 rho ∧ Seg34.relationRow6244 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩

theorem seg34_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34236 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩ := by
  obtain ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩ := seg34_rows244 rho h
  unfold Seg34.relationRow6231 at r6231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6231
  unfold Seg34.relationRow6232 at r6232
  unfold Seg34.relationRow6233 at r6233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6233
  unfold Seg34.relationRow6234 at r6234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6234
  unfold Seg34.relationRow6235 at r6235
  unfold Seg34.relationRow6236 at r6236
  unfold Seg34.relationRow6237 at r6237
  unfold Seg34.relationRow6238 at r6238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6238
  unfold Seg34.relationRow6239 at r6239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6239
  unfold Seg34.relationRow6240 at r6240
  unfold Seg34.relationRow6241 at r6241
  unfold Seg34.relationRow6242 at r6242
  unfold Seg34.relationRow6243 at r6243
  unfold Seg34.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 34236 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
        ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩ := by
    have hnextx : seg34AccX245 rho = seg34AccX244 rho + rho 37510 := by
      unfold seg34AccX245 seg34AccX244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 94]
      ring
    have hnexty : seg34AccY245 rho = seg34AccY244 rho + rho 37511 := by
      unfold seg34AccY245 seg34AccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 94]
      ring
    have hsum : seg34AccX244 rho + seg34AccY244 rho = rho 37503 := by
      unfold seg34AccX244 seg34AccY244
      linear_combination r6231
    have ha0 : (rho 37501 + rho 37502) * (seg34AccX244 rho + seg34AccY244 rho) = rho 37504 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 37502 * seg34AccX244 rho = rho 37505 := by
      unfold seg34AccX244
      linear_combination r6233
    have ha2 : rho 37501 * seg34AccY244 rho = rho 37506 := by
      unfold seg34AccY244
      linear_combination r6234
    have ha3 : 3021 * rho 37505 * rho 37506 = rho 37507 := by
      linear_combination r6235
    have ha4 : rho 37508 * (1 + rho 37507) = rho 37505 + rho 37506 := by
      linear_combination r6236
    have ha5 : rho 37509 * (1 - rho 37507) = rho 37504 - rho 37505 - rho 37506 := by
      linear_combination r6237
    have haddx :
        rho 37508 * (1 + 3021 * (rho 37502 * seg34AccX244 rho) * (rho 37501 * seg34AccY244 rho)) =
          rho 37502 * seg34AccX244 rho + rho 37501 * seg34AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37509 * (1 - 3021 * (rho 37502 * seg34AccX244 rho) * (rho 37501 * seg34AccY244 rho)) =
          (-1) * (rho 37502 * seg34AccX244 rho) - rho 37501 * seg34AccY244 rho +
            (seg34AccY244 rho - seg34AccX244 rho * (-1)) * (rho 37501 + rho 37502) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37509 * (1 - rho 37507) = rho 37504 - rho 37505 - rho 37506 := ha5
        _ = (-1) * rho 37505 - rho 37506 + (seg34AccY244 rho - seg34AccX244 rho * (-1)) * (rho 37501 + rho 37502) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX245 rho = seg34AccX244 rho - Bool.toZMod bit * (seg34AccX244 rho - rho 37508) := by
      have hd : rho 37510 = Bool.toZMod bit * (rho 37508 - seg34AccX244 rho) := by
        rw [← hbit]
        unfold seg34AccX244
        linear_combination -r6238
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY245 rho = seg34AccY244 rho - Bool.toZMod bit * (seg34AccY244 rho - rho 37509) := by
      have hd : rho 37511 = Bool.toZMod bit * (rho 37509 - seg34AccY244 rho) := by
        rw [← hbit]
        unfold seg34AccY244
        linear_combination -r6239
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37501 * rho 37502 = rho 37512 := by linear_combination r6240
    have hd1 : rho 37501 * rho 37501 = rho 37513 := by linear_combination r6241
    have hd2 : rho 37502 * rho 37502 = rho 37514 := by linear_combination r6242
    have hd3 : rho 37515 * (rho 37502 * rho 37502 + rho 37501 * rho 37501 * (-1)) = 2 * (rho 37501 * rho 37502) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 37516 * (2 - (rho 37502 * rho 37502 + rho 37501 * rho 37501 * (-1))) = rho 37502 * rho 37502 - rho 37501 * rho 37501 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX244 rho : Seg34.F), (seg34AccY244 rho : Seg34.F)⟩
      ⟨(rho 37501 : Seg34.F), (rho 37502 : Seg34.F)⟩
      ⟨(rho 37508 : Seg34.F), (rho 37509 : Seg34.F)⟩
      ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
      ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg34_rows245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6245 rho ∧ Seg34.relationRow6246 rho ∧ Seg34.relationRow6247 rho ∧ Seg34.relationRow6248 rho ∧ Seg34.relationRow6249 rho ∧ Seg34.relationRow6250 rho ∧ Seg34.relationRow6251 rho ∧ Seg34.relationRow6252 rho ∧ Seg34.relationRow6253 rho ∧ Seg34.relationRow6254 rho ∧ Seg34.relationRow6255 rho ∧ Seg34.relationRow6256 rho ∧ Seg34.relationRow6257 rho ∧ Seg34.relationRow6258 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩

theorem seg34_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34237 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩ := by
  obtain ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩ := seg34_rows245 rho h
  unfold Seg34.relationRow6245 at r6245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6245
  unfold Seg34.relationRow6246 at r6246
  unfold Seg34.relationRow6247 at r6247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6247
  unfold Seg34.relationRow6248 at r6248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6248
  unfold Seg34.relationRow6249 at r6249
  unfold Seg34.relationRow6250 at r6250
  unfold Seg34.relationRow6251 at r6251
  unfold Seg34.relationRow6252 at r6252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6252
  unfold Seg34.relationRow6253 at r6253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6253
  unfold Seg34.relationRow6254 at r6254
  unfold Seg34.relationRow6255 at r6255
  unfold Seg34.relationRow6256 at r6256
  unfold Seg34.relationRow6257 at r6257
  unfold Seg34.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 34237 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
        ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩ := by
    have hnextx : seg34AccX246 rho = seg34AccX245 rho + rho 37524 := by
      unfold seg34AccX246 seg34AccX245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 95]
      ring
    have hnexty : seg34AccY246 rho = seg34AccY245 rho + rho 37525 := by
      unfold seg34AccY246 seg34AccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 95]
      ring
    have hsum : seg34AccX245 rho + seg34AccY245 rho = rho 37517 := by
      unfold seg34AccX245 seg34AccY245
      linear_combination r6245
    have ha0 : (rho 37515 + rho 37516) * (seg34AccX245 rho + seg34AccY245 rho) = rho 37518 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 37516 * seg34AccX245 rho = rho 37519 := by
      unfold seg34AccX245
      linear_combination r6247
    have ha2 : rho 37515 * seg34AccY245 rho = rho 37520 := by
      unfold seg34AccY245
      linear_combination r6248
    have ha3 : 3021 * rho 37519 * rho 37520 = rho 37521 := by
      linear_combination r6249
    have ha4 : rho 37522 * (1 + rho 37521) = rho 37519 + rho 37520 := by
      linear_combination r6250
    have ha5 : rho 37523 * (1 - rho 37521) = rho 37518 - rho 37519 - rho 37520 := by
      linear_combination r6251
    have haddx :
        rho 37522 * (1 + 3021 * (rho 37516 * seg34AccX245 rho) * (rho 37515 * seg34AccY245 rho)) =
          rho 37516 * seg34AccX245 rho + rho 37515 * seg34AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37523 * (1 - 3021 * (rho 37516 * seg34AccX245 rho) * (rho 37515 * seg34AccY245 rho)) =
          (-1) * (rho 37516 * seg34AccX245 rho) - rho 37515 * seg34AccY245 rho +
            (seg34AccY245 rho - seg34AccX245 rho * (-1)) * (rho 37515 + rho 37516) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37523 * (1 - rho 37521) = rho 37518 - rho 37519 - rho 37520 := ha5
        _ = (-1) * rho 37519 - rho 37520 + (seg34AccY245 rho - seg34AccX245 rho * (-1)) * (rho 37515 + rho 37516) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX246 rho = seg34AccX245 rho - Bool.toZMod bit * (seg34AccX245 rho - rho 37522) := by
      have hd : rho 37524 = Bool.toZMod bit * (rho 37522 - seg34AccX245 rho) := by
        rw [← hbit]
        unfold seg34AccX245
        linear_combination -r6252
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY246 rho = seg34AccY245 rho - Bool.toZMod bit * (seg34AccY245 rho - rho 37523) := by
      have hd : rho 37525 = Bool.toZMod bit * (rho 37523 - seg34AccY245 rho) := by
        rw [← hbit]
        unfold seg34AccY245
        linear_combination -r6253
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37515 * rho 37516 = rho 37526 := by linear_combination r6254
    have hd1 : rho 37515 * rho 37515 = rho 37527 := by linear_combination r6255
    have hd2 : rho 37516 * rho 37516 = rho 37528 := by linear_combination r6256
    have hd3 : rho 37529 * (rho 37516 * rho 37516 + rho 37515 * rho 37515 * (-1)) = 2 * (rho 37515 * rho 37516) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 37530 * (2 - (rho 37516 * rho 37516 + rho 37515 * rho 37515 * (-1))) = rho 37516 * rho 37516 - rho 37515 * rho 37515 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX245 rho : Seg34.F), (seg34AccY245 rho : Seg34.F)⟩
      ⟨(rho 37515 : Seg34.F), (rho 37516 : Seg34.F)⟩
      ⟨(rho 37522 : Seg34.F), (rho 37523 : Seg34.F)⟩
      ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
      ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg34_rows246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6259 rho ∧ Seg34.relationRow6260 rho ∧ Seg34.relationRow6261 rho ∧ Seg34.relationRow6262 rho ∧ Seg34.relationRow6263 rho ∧ Seg34.relationRow6264 rho ∧ Seg34.relationRow6265 rho ∧ Seg34.relationRow6266 rho ∧ Seg34.relationRow6267 rho ∧ Seg34.relationRow6268 rho ∧ Seg34.relationRow6269 rho ∧ Seg34.relationRow6270 rho ∧ Seg34.relationRow6271 rho ∧ Seg34.relationRow6272 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩

theorem seg34_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34238 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩ := by
  obtain ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩ := seg34_rows246 rho h
  unfold Seg34.relationRow6259 at r6259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6259
  unfold Seg34.relationRow6260 at r6260
  unfold Seg34.relationRow6261 at r6261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6261
  unfold Seg34.relationRow6262 at r6262
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6262
  unfold Seg34.relationRow6263 at r6263
  unfold Seg34.relationRow6264 at r6264
  unfold Seg34.relationRow6265 at r6265
  unfold Seg34.relationRow6266 at r6266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6266
  unfold Seg34.relationRow6267 at r6267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6267
  unfold Seg34.relationRow6268 at r6268
  unfold Seg34.relationRow6269 at r6269
  unfold Seg34.relationRow6270 at r6270
  unfold Seg34.relationRow6271 at r6271
  unfold Seg34.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 34238 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
        ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩ := by
    have hnextx : seg34AccX247 rho = seg34AccX246 rho + rho 37538 := by
      unfold seg34AccX247 seg34AccX246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 96]
      ring
    have hnexty : seg34AccY247 rho = seg34AccY246 rho + rho 37539 := by
      unfold seg34AccY247 seg34AccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 96]
      ring
    have hsum : seg34AccX246 rho + seg34AccY246 rho = rho 37531 := by
      unfold seg34AccX246 seg34AccY246
      linear_combination r6259
    have ha0 : (rho 37529 + rho 37530) * (seg34AccX246 rho + seg34AccY246 rho) = rho 37532 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 37530 * seg34AccX246 rho = rho 37533 := by
      unfold seg34AccX246
      linear_combination r6261
    have ha2 : rho 37529 * seg34AccY246 rho = rho 37534 := by
      unfold seg34AccY246
      linear_combination r6262
    have ha3 : 3021 * rho 37533 * rho 37534 = rho 37535 := by
      linear_combination r6263
    have ha4 : rho 37536 * (1 + rho 37535) = rho 37533 + rho 37534 := by
      linear_combination r6264
    have ha5 : rho 37537 * (1 - rho 37535) = rho 37532 - rho 37533 - rho 37534 := by
      linear_combination r6265
    have haddx :
        rho 37536 * (1 + 3021 * (rho 37530 * seg34AccX246 rho) * (rho 37529 * seg34AccY246 rho)) =
          rho 37530 * seg34AccX246 rho + rho 37529 * seg34AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37537 * (1 - 3021 * (rho 37530 * seg34AccX246 rho) * (rho 37529 * seg34AccY246 rho)) =
          (-1) * (rho 37530 * seg34AccX246 rho) - rho 37529 * seg34AccY246 rho +
            (seg34AccY246 rho - seg34AccX246 rho * (-1)) * (rho 37529 + rho 37530) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37537 * (1 - rho 37535) = rho 37532 - rho 37533 - rho 37534 := ha5
        _ = (-1) * rho 37533 - rho 37534 + (seg34AccY246 rho - seg34AccX246 rho * (-1)) * (rho 37529 + rho 37530) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX247 rho = seg34AccX246 rho - Bool.toZMod bit * (seg34AccX246 rho - rho 37536) := by
      have hd : rho 37538 = Bool.toZMod bit * (rho 37536 - seg34AccX246 rho) := by
        rw [← hbit]
        unfold seg34AccX246
        linear_combination -r6266
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY247 rho = seg34AccY246 rho - Bool.toZMod bit * (seg34AccY246 rho - rho 37537) := by
      have hd : rho 37539 = Bool.toZMod bit * (rho 37537 - seg34AccY246 rho) := by
        rw [← hbit]
        unfold seg34AccY246
        linear_combination -r6267
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37529 * rho 37530 = rho 37540 := by linear_combination r6268
    have hd1 : rho 37529 * rho 37529 = rho 37541 := by linear_combination r6269
    have hd2 : rho 37530 * rho 37530 = rho 37542 := by linear_combination r6270
    have hd3 : rho 37543 * (rho 37530 * rho 37530 + rho 37529 * rho 37529 * (-1)) = 2 * (rho 37529 * rho 37530) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 37544 * (2 - (rho 37530 * rho 37530 + rho 37529 * rho 37529 * (-1))) = rho 37530 * rho 37530 - rho 37529 * rho 37529 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX246 rho : Seg34.F), (seg34AccY246 rho : Seg34.F)⟩
      ⟨(rho 37529 : Seg34.F), (rho 37530 : Seg34.F)⟩
      ⟨(rho 37536 : Seg34.F), (rho 37537 : Seg34.F)⟩
      ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
      ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg34_rows247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6273 rho ∧ Seg34.relationRow6274 rho ∧ Seg34.relationRow6275 rho ∧ Seg34.relationRow6276 rho ∧ Seg34.relationRow6277 rho ∧ Seg34.relationRow6278 rho ∧ Seg34.relationRow6279 rho ∧ Seg34.relationRow6280 rho ∧ Seg34.relationRow6281 rho ∧ Seg34.relationRow6282 rho ∧ Seg34.relationRow6283 rho ∧ Seg34.relationRow6284 rho ∧ Seg34.relationRow6285 rho ∧ Seg34.relationRow6286 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩

theorem seg34_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34239 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩ := by
  obtain ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩ := seg34_rows247 rho h
  unfold Seg34.relationRow6273 at r6273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6273
  unfold Seg34.relationRow6274 at r6274
  unfold Seg34.relationRow6275 at r6275
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6275
  unfold Seg34.relationRow6276 at r6276
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6276
  unfold Seg34.relationRow6277 at r6277
  unfold Seg34.relationRow6278 at r6278
  unfold Seg34.relationRow6279 at r6279
  unfold Seg34.relationRow6280 at r6280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6280
  unfold Seg34.relationRow6281 at r6281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6281
  unfold Seg34.relationRow6282 at r6282
  unfold Seg34.relationRow6283 at r6283
  unfold Seg34.relationRow6284 at r6284
  unfold Seg34.relationRow6285 at r6285
  unfold Seg34.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 34239 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
        ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩ := by
    have hnextx : seg34AccX248 rho = seg34AccX247 rho + rho 37552 := by
      unfold seg34AccX248 seg34AccX247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 97]
      ring
    have hnexty : seg34AccY248 rho = seg34AccY247 rho + rho 37553 := by
      unfold seg34AccY248 seg34AccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 97]
      ring
    have hsum : seg34AccX247 rho + seg34AccY247 rho = rho 37545 := by
      unfold seg34AccX247 seg34AccY247
      linear_combination r6273
    have ha0 : (rho 37543 + rho 37544) * (seg34AccX247 rho + seg34AccY247 rho) = rho 37546 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 37544 * seg34AccX247 rho = rho 37547 := by
      unfold seg34AccX247
      linear_combination r6275
    have ha2 : rho 37543 * seg34AccY247 rho = rho 37548 := by
      unfold seg34AccY247
      linear_combination r6276
    have ha3 : 3021 * rho 37547 * rho 37548 = rho 37549 := by
      linear_combination r6277
    have ha4 : rho 37550 * (1 + rho 37549) = rho 37547 + rho 37548 := by
      linear_combination r6278
    have ha5 : rho 37551 * (1 - rho 37549) = rho 37546 - rho 37547 - rho 37548 := by
      linear_combination r6279
    have haddx :
        rho 37550 * (1 + 3021 * (rho 37544 * seg34AccX247 rho) * (rho 37543 * seg34AccY247 rho)) =
          rho 37544 * seg34AccX247 rho + rho 37543 * seg34AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37551 * (1 - 3021 * (rho 37544 * seg34AccX247 rho) * (rho 37543 * seg34AccY247 rho)) =
          (-1) * (rho 37544 * seg34AccX247 rho) - rho 37543 * seg34AccY247 rho +
            (seg34AccY247 rho - seg34AccX247 rho * (-1)) * (rho 37543 + rho 37544) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37551 * (1 - rho 37549) = rho 37546 - rho 37547 - rho 37548 := ha5
        _ = (-1) * rho 37547 - rho 37548 + (seg34AccY247 rho - seg34AccX247 rho * (-1)) * (rho 37543 + rho 37544) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX248 rho = seg34AccX247 rho - Bool.toZMod bit * (seg34AccX247 rho - rho 37550) := by
      have hd : rho 37552 = Bool.toZMod bit * (rho 37550 - seg34AccX247 rho) := by
        rw [← hbit]
        unfold seg34AccX247
        linear_combination -r6280
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY248 rho = seg34AccY247 rho - Bool.toZMod bit * (seg34AccY247 rho - rho 37551) := by
      have hd : rho 37553 = Bool.toZMod bit * (rho 37551 - seg34AccY247 rho) := by
        rw [← hbit]
        unfold seg34AccY247
        linear_combination -r6281
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37543 * rho 37544 = rho 37554 := by linear_combination r6282
    have hd1 : rho 37543 * rho 37543 = rho 37555 := by linear_combination r6283
    have hd2 : rho 37544 * rho 37544 = rho 37556 := by linear_combination r6284
    have hd3 : rho 37557 * (rho 37544 * rho 37544 + rho 37543 * rho 37543 * (-1)) = 2 * (rho 37543 * rho 37544) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 37558 * (2 - (rho 37544 * rho 37544 + rho 37543 * rho 37543 * (-1))) = rho 37544 * rho 37544 - rho 37543 * rho 37543 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX247 rho : Seg34.F), (seg34AccY247 rho : Seg34.F)⟩
      ⟨(rho 37543 : Seg34.F), (rho 37544 : Seg34.F)⟩
      ⟨(rho 37550 : Seg34.F), (rho 37551 : Seg34.F)⟩
      ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
      ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg34_rows248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6287 rho ∧ Seg34.relationRow6288 rho ∧ Seg34.relationRow6289 rho ∧ Seg34.relationRow6290 rho ∧ Seg34.relationRow6291 rho ∧ Seg34.relationRow6292 rho ∧ Seg34.relationRow6293 rho ∧ Seg34.relationRow6294 rho ∧ Seg34.relationRow6295 rho ∧ Seg34.relationRow6296 rho ∧ Seg34.relationRow6297 rho ∧ Seg34.relationRow6298 rho ∧ Seg34.relationRow6299 rho ∧ Seg34.relationRow6300 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩

theorem seg34_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34240 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩ := by
  obtain ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩ := seg34_rows248 rho h
  unfold Seg34.relationRow6287 at r6287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6287
  unfold Seg34.relationRow6288 at r6288
  unfold Seg34.relationRow6289 at r6289
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6289
  unfold Seg34.relationRow6290 at r6290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6290
  unfold Seg34.relationRow6291 at r6291
  unfold Seg34.relationRow6292 at r6292
  unfold Seg34.relationRow6293 at r6293
  unfold Seg34.relationRow6294 at r6294
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6294
  unfold Seg34.relationRow6295 at r6295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6295
  unfold Seg34.relationRow6296 at r6296
  unfold Seg34.relationRow6297 at r6297
  unfold Seg34.relationRow6298 at r6298
  unfold Seg34.relationRow6299 at r6299
  unfold Seg34.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 34240 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
        ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩ := by
    have hnextx : seg34AccX249 rho = seg34AccX248 rho + rho 37566 := by
      unfold seg34AccX249 seg34AccX248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 98]
      ring
    have hnexty : seg34AccY249 rho = seg34AccY248 rho + rho 37567 := by
      unfold seg34AccY249 seg34AccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 98]
      ring
    have hsum : seg34AccX248 rho + seg34AccY248 rho = rho 37559 := by
      unfold seg34AccX248 seg34AccY248
      linear_combination r6287
    have ha0 : (rho 37557 + rho 37558) * (seg34AccX248 rho + seg34AccY248 rho) = rho 37560 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 37558 * seg34AccX248 rho = rho 37561 := by
      unfold seg34AccX248
      linear_combination r6289
    have ha2 : rho 37557 * seg34AccY248 rho = rho 37562 := by
      unfold seg34AccY248
      linear_combination r6290
    have ha3 : 3021 * rho 37561 * rho 37562 = rho 37563 := by
      linear_combination r6291
    have ha4 : rho 37564 * (1 + rho 37563) = rho 37561 + rho 37562 := by
      linear_combination r6292
    have ha5 : rho 37565 * (1 - rho 37563) = rho 37560 - rho 37561 - rho 37562 := by
      linear_combination r6293
    have haddx :
        rho 37564 * (1 + 3021 * (rho 37558 * seg34AccX248 rho) * (rho 37557 * seg34AccY248 rho)) =
          rho 37558 * seg34AccX248 rho + rho 37557 * seg34AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37565 * (1 - 3021 * (rho 37558 * seg34AccX248 rho) * (rho 37557 * seg34AccY248 rho)) =
          (-1) * (rho 37558 * seg34AccX248 rho) - rho 37557 * seg34AccY248 rho +
            (seg34AccY248 rho - seg34AccX248 rho * (-1)) * (rho 37557 + rho 37558) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37565 * (1 - rho 37563) = rho 37560 - rho 37561 - rho 37562 := ha5
        _ = (-1) * rho 37561 - rho 37562 + (seg34AccY248 rho - seg34AccX248 rho * (-1)) * (rho 37557 + rho 37558) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX249 rho = seg34AccX248 rho - Bool.toZMod bit * (seg34AccX248 rho - rho 37564) := by
      have hd : rho 37566 = Bool.toZMod bit * (rho 37564 - seg34AccX248 rho) := by
        rw [← hbit]
        unfold seg34AccX248
        linear_combination -r6294
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY249 rho = seg34AccY248 rho - Bool.toZMod bit * (seg34AccY248 rho - rho 37565) := by
      have hd : rho 37567 = Bool.toZMod bit * (rho 37565 - seg34AccY248 rho) := by
        rw [← hbit]
        unfold seg34AccY248
        linear_combination -r6295
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37557 * rho 37558 = rho 37568 := by linear_combination r6296
    have hd1 : rho 37557 * rho 37557 = rho 37569 := by linear_combination r6297
    have hd2 : rho 37558 * rho 37558 = rho 37570 := by linear_combination r6298
    have hd3 : rho 37571 * (rho 37558 * rho 37558 + rho 37557 * rho 37557 * (-1)) = 2 * (rho 37557 * rho 37558) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 37572 * (2 - (rho 37558 * rho 37558 + rho 37557 * rho 37557 * (-1))) = rho 37558 * rho 37558 - rho 37557 * rho 37557 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX248 rho : Seg34.F), (seg34AccY248 rho : Seg34.F)⟩
      ⟨(rho 37557 : Seg34.F), (rho 37558 : Seg34.F)⟩
      ⟨(rho 37564 : Seg34.F), (rho 37565 : Seg34.F)⟩
      ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
      ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg34_rows249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6301 rho ∧ Seg34.relationRow6302 rho ∧ Seg34.relationRow6303 rho ∧ Seg34.relationRow6304 rho ∧ Seg34.relationRow6305 rho ∧ Seg34.relationRow6306 rho ∧ Seg34.relationRow6307 rho ∧ Seg34.relationRow6308 rho ∧ Seg34.relationRow6309 rho ∧ Seg34.relationRow6310 rho ∧ Seg34.relationRow6311 rho ∧ Seg34.relationRow6312 rho ∧ Seg34.relationRow6313 rho ∧ Seg34.relationRow6314 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  exact ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩

theorem seg34_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34241 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩ := by
  obtain ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩ := seg34_rows249 rho h
  unfold Seg34.relationRow6301 at r6301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6301
  unfold Seg34.relationRow6302 at r6302
  unfold Seg34.relationRow6303 at r6303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6303
  unfold Seg34.relationRow6304 at r6304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6304
  unfold Seg34.relationRow6305 at r6305
  unfold Seg34.relationRow6306 at r6306
  unfold Seg34.relationRow6307 at r6307
  unfold Seg34.relationRow6308 at r6308
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6308
  unfold Seg34.relationRow6309 at r6309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6309
  unfold Seg34.relationRow6310 at r6310
  unfold Seg34.relationRow6311 at r6311
  unfold Seg34.relationRow6312 at r6312
  unfold Seg34.relationRow6313 at r6313
  unfold Seg34.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 34241 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
        ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩ := by
    have hnextx : seg34AccX250 rho = seg34AccX249 rho + rho 37580 := by
      unfold seg34AccX250 seg34AccX249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 99]
      ring
    have hnexty : seg34AccY250 rho = seg34AccY249 rho + rho 37581 := by
      unfold seg34AccY250 seg34AccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 99]
      ring
    have hsum : seg34AccX249 rho + seg34AccY249 rho = rho 37573 := by
      unfold seg34AccX249 seg34AccY249
      linear_combination r6301
    have ha0 : (rho 37571 + rho 37572) * (seg34AccX249 rho + seg34AccY249 rho) = rho 37574 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 37572 * seg34AccX249 rho = rho 37575 := by
      unfold seg34AccX249
      linear_combination r6303
    have ha2 : rho 37571 * seg34AccY249 rho = rho 37576 := by
      unfold seg34AccY249
      linear_combination r6304
    have ha3 : 3021 * rho 37575 * rho 37576 = rho 37577 := by
      linear_combination r6305
    have ha4 : rho 37578 * (1 + rho 37577) = rho 37575 + rho 37576 := by
      linear_combination r6306
    have ha5 : rho 37579 * (1 - rho 37577) = rho 37574 - rho 37575 - rho 37576 := by
      linear_combination r6307
    have haddx :
        rho 37578 * (1 + 3021 * (rho 37572 * seg34AccX249 rho) * (rho 37571 * seg34AccY249 rho)) =
          rho 37572 * seg34AccX249 rho + rho 37571 * seg34AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37579 * (1 - 3021 * (rho 37572 * seg34AccX249 rho) * (rho 37571 * seg34AccY249 rho)) =
          (-1) * (rho 37572 * seg34AccX249 rho) - rho 37571 * seg34AccY249 rho +
            (seg34AccY249 rho - seg34AccX249 rho * (-1)) * (rho 37571 + rho 37572) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37579 * (1 - rho 37577) = rho 37574 - rho 37575 - rho 37576 := ha5
        _ = (-1) * rho 37575 - rho 37576 + (seg34AccY249 rho - seg34AccX249 rho * (-1)) * (rho 37571 + rho 37572) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX250 rho = seg34AccX249 rho - Bool.toZMod bit * (seg34AccX249 rho - rho 37578) := by
      have hd : rho 37580 = Bool.toZMod bit * (rho 37578 - seg34AccX249 rho) := by
        rw [← hbit]
        unfold seg34AccX249
        linear_combination -r6308
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY250 rho = seg34AccY249 rho - Bool.toZMod bit * (seg34AccY249 rho - rho 37579) := by
      have hd : rho 37581 = Bool.toZMod bit * (rho 37579 - seg34AccY249 rho) := by
        rw [← hbit]
        unfold seg34AccY249
        linear_combination -r6309
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37571 * rho 37572 = rho 37582 := by linear_combination r6310
    have hd1 : rho 37571 * rho 37571 = rho 37583 := by linear_combination r6311
    have hd2 : rho 37572 * rho 37572 = rho 37584 := by linear_combination r6312
    have hd3 : rho 37585 * (rho 37572 * rho 37572 + rho 37571 * rho 37571 * (-1)) = 2 * (rho 37571 * rho 37572) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 37586 * (2 - (rho 37572 * rho 37572 + rho 37571 * rho 37571 * (-1))) = rho 37572 * rho 37572 - rho 37571 * rho 37571 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX249 rho : Seg34.F), (seg34AccY249 rho : Seg34.F)⟩
      ⟨(rho 37571 : Seg34.F), (rho 37572 : Seg34.F)⟩
      ⟨(rho 37578 : Seg34.F), (rho 37579 : Seg34.F)⟩
      ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
      ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg34_rows250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow6315 rho ∧ Seg34.relationRow6316 rho ∧ Seg34.relationRow6317 rho ∧ Seg34.relationRow6318 rho ∧ Seg34.relationRow6319 rho ∧ Seg34.relationRow6320 rho ∧ Seg34.relationRow6321 rho ∧ Seg34.relationRow6322 rho ∧ Seg34.relationRow6323 rho ∧ Seg34.relationRow6324 rho ∧ Seg34.relationRow6325 rho ∧ Seg34.relationRow6326 rho ∧ Seg34.relationRow6327 rho ∧ Seg34.relationRow6328 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg34.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  exact ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩

theorem seg34_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34242 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
        ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩
        ⟨(rho 37599 : Seg34.F), (rho 37600 : Seg34.F)⟩ := by
  obtain ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩ := seg34_rows250 rho h
  unfold Seg34.relationRow6315 at r6315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6315
  unfold Seg34.relationRow6316 at r6316
  unfold Seg34.relationRow6317 at r6317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6317
  unfold Seg34.relationRow6318 at r6318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6318
  unfold Seg34.relationRow6319 at r6319
  unfold Seg34.relationRow6320 at r6320
  unfold Seg34.relationRow6321 at r6321
  unfold Seg34.relationRow6322 at r6322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6322
  unfold Seg34.relationRow6323 at r6323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6323
  unfold Seg34.relationRow6324 at r6324
  unfold Seg34.relationRow6325 at r6325
  unfold Seg34.relationRow6326 at r6326
  unfold Seg34.relationRow6327 at r6327
  unfold Seg34.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 34242 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
        ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
        ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩
        ⟨(rho 37599 : Seg34.F), (rho 37600 : Seg34.F)⟩ := by
    have hnextx : seg34AccX251 rho = seg34AccX250 rho + rho 37594 := by
      unfold seg34AccX251 seg34AccX250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 100]
      ring
    have hnexty : seg34AccY251 rho = seg34AccY250 rho + rho 37595 := by
      unfold seg34AccY251 seg34AccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 100]
      ring
    have hsum : seg34AccX250 rho + seg34AccY250 rho = rho 37587 := by
      unfold seg34AccX250 seg34AccY250
      linear_combination r6315
    have ha0 : (rho 37585 + rho 37586) * (seg34AccX250 rho + seg34AccY250 rho) = rho 37588 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 37586 * seg34AccX250 rho = rho 37589 := by
      unfold seg34AccX250
      linear_combination r6317
    have ha2 : rho 37585 * seg34AccY250 rho = rho 37590 := by
      unfold seg34AccY250
      linear_combination r6318
    have ha3 : 3021 * rho 37589 * rho 37590 = rho 37591 := by
      linear_combination r6319
    have ha4 : rho 37592 * (1 + rho 37591) = rho 37589 + rho 37590 := by
      linear_combination r6320
    have ha5 : rho 37593 * (1 - rho 37591) = rho 37588 - rho 37589 - rho 37590 := by
      linear_combination r6321
    have haddx :
        rho 37592 * (1 + 3021 * (rho 37586 * seg34AccX250 rho) * (rho 37585 * seg34AccY250 rho)) =
          rho 37586 * seg34AccX250 rho + rho 37585 * seg34AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 37593 * (1 - 3021 * (rho 37586 * seg34AccX250 rho) * (rho 37585 * seg34AccY250 rho)) =
          (-1) * (rho 37586 * seg34AccX250 rho) - rho 37585 * seg34AccY250 rho +
            (seg34AccY250 rho - seg34AccX250 rho * (-1)) * (rho 37585 + rho 37586) := by
      rw [ha1, ha2, ha3]
      calc
        rho 37593 * (1 - rho 37591) = rho 37588 - rho 37589 - rho 37590 := ha5
        _ = (-1) * rho 37589 - rho 37590 + (seg34AccY250 rho - seg34AccX250 rho * (-1)) * (rho 37585 + rho 37586) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX251 rho = seg34AccX250 rho - Bool.toZMod bit * (seg34AccX250 rho - rho 37592) := by
      have hd : rho 37594 = Bool.toZMod bit * (rho 37592 - seg34AccX250 rho) := by
        rw [← hbit]
        unfold seg34AccX250
        linear_combination -r6322
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY251 rho = seg34AccY250 rho - Bool.toZMod bit * (seg34AccY250 rho - rho 37593) := by
      have hd : rho 37595 = Bool.toZMod bit * (rho 37593 - seg34AccY250 rho) := by
        rw [← hbit]
        unfold seg34AccY250
        linear_combination -r6323
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 37585 * rho 37586 = rho 37596 := by linear_combination r6324
    have hd1 : rho 37585 * rho 37585 = rho 37597 := by linear_combination r6325
    have hd2 : rho 37586 * rho 37586 = rho 37598 := by linear_combination r6326
    have hd3 : rho 37599 * (rho 37586 * rho 37586 + rho 37585 * rho 37585 * (-1)) = 2 * (rho 37585 * rho 37586) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 37600 * (2 - (rho 37586 * rho 37586 + rho 37585 * rho 37585 * (-1))) = rho 37586 * rho 37586 - rho 37585 * rho 37585 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX250 rho : Seg34.F), (seg34AccY250 rho : Seg34.F)⟩
      ⟨(rho 37585 : Seg34.F), (rho 37586 : Seg34.F)⟩
      ⟨(rho 37592 : Seg34.F), (rho 37593 : Seg34.F)⟩
      ⟨(seg34AccX251 rho : Seg34.F), (seg34AccY251 rho : Seg34.F)⟩
      ⟨(rho 37599 : Seg34.F), (rho 37600 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg34_hstep_c22 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 242 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg34_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg34_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg34_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg34_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg34_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg34_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg34_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg34_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
