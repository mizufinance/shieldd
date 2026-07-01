import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6203 rho ∧ Seg16.relationRow6204 rho ∧ Seg16.relationRow6205 rho ∧ Seg16.relationRow6206 rho ∧ Seg16.relationRow6207 rho ∧ Seg16.relationRow6208 rho ∧ Seg16.relationRow6209 rho ∧ Seg16.relationRow6210 rho ∧ Seg16.relationRow6211 rho ∧ Seg16.relationRow6212 rho ∧ Seg16.relationRow6213 rho ∧ Seg16.relationRow6214 rho ∧ Seg16.relationRow6215 rho ∧ Seg16.relationRow6216 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩

theorem seg16_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15534 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩ := by
  obtain ⟨r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, r6211, r6212, r6213, r6214, r6215, r6216⟩ := seg16_rows242 rho h
  unfold Seg16.relationRow6203 at r6203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6203
  unfold Seg16.relationRow6204 at r6204
  unfold Seg16.relationRow6205 at r6205
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6205
  unfold Seg16.relationRow6206 at r6206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6206
  unfold Seg16.relationRow6207 at r6207
  unfold Seg16.relationRow6208 at r6208
  unfold Seg16.relationRow6209 at r6209
  unfold Seg16.relationRow6210 at r6210
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6210
  unfold Seg16.relationRow6211 at r6211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6211
  unfold Seg16.relationRow6212 at r6212
  unfold Seg16.relationRow6213 at r6213
  unfold Seg16.relationRow6214 at r6214
  unfold Seg16.relationRow6215 at r6215
  unfold Seg16.relationRow6216 at r6216
  have hrung242 (bit : Bool) (hbit : rho 15534 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
        ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩ := by
    have hnextx : seg16AccX243 rho = seg16AccX242 rho + rho 18782 := by
      unfold seg16AccX243 seg16AccX242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 92]
      ring
    have hnexty : seg16AccY243 rho = seg16AccY242 rho + rho 18783 := by
      unfold seg16AccY243 seg16AccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 92]
      ring
    have hsum : seg16AccX242 rho + seg16AccY242 rho = rho 18775 := by
      unfold seg16AccX242 seg16AccY242
      linear_combination r6203
    have ha0 : (rho 18773 + rho 18774) * (seg16AccX242 rho + seg16AccY242 rho) = rho 18776 := by
      rw [hsum]
      linear_combination r6204
    have ha1 : rho 18774 * seg16AccX242 rho = rho 18777 := by
      unfold seg16AccX242
      linear_combination r6205
    have ha2 : rho 18773 * seg16AccY242 rho = rho 18778 := by
      unfold seg16AccY242
      linear_combination r6206
    have ha3 : 3021 * rho 18777 * rho 18778 = rho 18779 := by
      linear_combination r6207
    have ha4 : rho 18780 * (1 + rho 18779) = rho 18777 + rho 18778 := by
      linear_combination r6208
    have ha5 : rho 18781 * (1 - rho 18779) = rho 18776 - rho 18777 - rho 18778 := by
      linear_combination r6209
    have haddx :
        rho 18780 * (1 + 3021 * (rho 18774 * seg16AccX242 rho) * (rho 18773 * seg16AccY242 rho)) =
          rho 18774 * seg16AccX242 rho + rho 18773 * seg16AccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18781 * (1 - 3021 * (rho 18774 * seg16AccX242 rho) * (rho 18773 * seg16AccY242 rho)) =
          (-1) * (rho 18774 * seg16AccX242 rho) - rho 18773 * seg16AccY242 rho +
            (seg16AccY242 rho - seg16AccX242 rho * (-1)) * (rho 18773 + rho 18774) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18781 * (1 - rho 18779) = rho 18776 - rho 18777 - rho 18778 := ha5
        _ = (-1) * rho 18777 - rho 18778 + (seg16AccY242 rho - seg16AccX242 rho * (-1)) * (rho 18773 + rho 18774) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX243 rho = seg16AccX242 rho - Bool.toZMod bit * (seg16AccX242 rho - rho 18780) := by
      have hd : rho 18782 = Bool.toZMod bit * (rho 18780 - seg16AccX242 rho) := by
        rw [← hbit]
        unfold seg16AccX242
        linear_combination -r6210
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY243 rho = seg16AccY242 rho - Bool.toZMod bit * (seg16AccY242 rho - rho 18781) := by
      have hd : rho 18783 = Bool.toZMod bit * (rho 18781 - seg16AccY242 rho) := by
        rw [← hbit]
        unfold seg16AccY242
        linear_combination -r6211
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18773 * rho 18774 = rho 18784 := by linear_combination r6212
    have hd1 : rho 18773 * rho 18773 = rho 18785 := by linear_combination r6213
    have hd2 : rho 18774 * rho 18774 = rho 18786 := by linear_combination r6214
    have hd3 : rho 18787 * (rho 18774 * rho 18774 + rho 18773 * rho 18773 * (-1)) = 2 * (rho 18773 * rho 18774) := by
      rw [hd0, hd1, hd2]
      linear_combination r6215
    have hd4 : rho 18788 * (2 - (rho 18774 * rho 18774 + rho 18773 * rho 18773 * (-1))) = rho 18774 * rho 18774 - rho 18773 * rho 18773 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6216
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX242 rho : Seg16.F), (seg16AccY242 rho : Seg16.F)⟩
      ⟨(rho 18773 : Seg16.F), (rho 18774 : Seg16.F)⟩
      ⟨(rho 18780 : Seg16.F), (rho 18781 : Seg16.F)⟩
      ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
      ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem seg16_rows243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6217 rho ∧ Seg16.relationRow6218 rho ∧ Seg16.relationRow6219 rho ∧ Seg16.relationRow6220 rho ∧ Seg16.relationRow6221 rho ∧ Seg16.relationRow6222 rho ∧ Seg16.relationRow6223 rho ∧ Seg16.relationRow6224 rho ∧ Seg16.relationRow6225 rho ∧ Seg16.relationRow6226 rho ∧ Seg16.relationRow6227 rho ∧ Seg16.relationRow6228 rho ∧ Seg16.relationRow6229 rho ∧ Seg16.relationRow6230 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩

theorem seg16_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15535 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩ := by
  obtain ⟨r6217, r6218, r6219, r6220, r6221, r6222, r6223, r6224, r6225, r6226, r6227, r6228, r6229, r6230⟩ := seg16_rows243 rho h
  unfold Seg16.relationRow6217 at r6217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6217
  unfold Seg16.relationRow6218 at r6218
  unfold Seg16.relationRow6219 at r6219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6219
  unfold Seg16.relationRow6220 at r6220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6220
  unfold Seg16.relationRow6221 at r6221
  unfold Seg16.relationRow6222 at r6222
  unfold Seg16.relationRow6223 at r6223
  unfold Seg16.relationRow6224 at r6224
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6224
  unfold Seg16.relationRow6225 at r6225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6225
  unfold Seg16.relationRow6226 at r6226
  unfold Seg16.relationRow6227 at r6227
  unfold Seg16.relationRow6228 at r6228
  unfold Seg16.relationRow6229 at r6229
  unfold Seg16.relationRow6230 at r6230
  have hrung243 (bit : Bool) (hbit : rho 15535 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
        ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩ := by
    have hnextx : seg16AccX244 rho = seg16AccX243 rho + rho 18796 := by
      unfold seg16AccX244 seg16AccX243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 93]
      ring
    have hnexty : seg16AccY244 rho = seg16AccY243 rho + rho 18797 := by
      unfold seg16AccY244 seg16AccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 93]
      ring
    have hsum : seg16AccX243 rho + seg16AccY243 rho = rho 18789 := by
      unfold seg16AccX243 seg16AccY243
      linear_combination r6217
    have ha0 : (rho 18787 + rho 18788) * (seg16AccX243 rho + seg16AccY243 rho) = rho 18790 := by
      rw [hsum]
      linear_combination r6218
    have ha1 : rho 18788 * seg16AccX243 rho = rho 18791 := by
      unfold seg16AccX243
      linear_combination r6219
    have ha2 : rho 18787 * seg16AccY243 rho = rho 18792 := by
      unfold seg16AccY243
      linear_combination r6220
    have ha3 : 3021 * rho 18791 * rho 18792 = rho 18793 := by
      linear_combination r6221
    have ha4 : rho 18794 * (1 + rho 18793) = rho 18791 + rho 18792 := by
      linear_combination r6222
    have ha5 : rho 18795 * (1 - rho 18793) = rho 18790 - rho 18791 - rho 18792 := by
      linear_combination r6223
    have haddx :
        rho 18794 * (1 + 3021 * (rho 18788 * seg16AccX243 rho) * (rho 18787 * seg16AccY243 rho)) =
          rho 18788 * seg16AccX243 rho + rho 18787 * seg16AccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18795 * (1 - 3021 * (rho 18788 * seg16AccX243 rho) * (rho 18787 * seg16AccY243 rho)) =
          (-1) * (rho 18788 * seg16AccX243 rho) - rho 18787 * seg16AccY243 rho +
            (seg16AccY243 rho - seg16AccX243 rho * (-1)) * (rho 18787 + rho 18788) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18795 * (1 - rho 18793) = rho 18790 - rho 18791 - rho 18792 := ha5
        _ = (-1) * rho 18791 - rho 18792 + (seg16AccY243 rho - seg16AccX243 rho * (-1)) * (rho 18787 + rho 18788) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX244 rho = seg16AccX243 rho - Bool.toZMod bit * (seg16AccX243 rho - rho 18794) := by
      have hd : rho 18796 = Bool.toZMod bit * (rho 18794 - seg16AccX243 rho) := by
        rw [← hbit]
        unfold seg16AccX243
        linear_combination -r6224
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY244 rho = seg16AccY243 rho - Bool.toZMod bit * (seg16AccY243 rho - rho 18795) := by
      have hd : rho 18797 = Bool.toZMod bit * (rho 18795 - seg16AccY243 rho) := by
        rw [← hbit]
        unfold seg16AccY243
        linear_combination -r6225
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18787 * rho 18788 = rho 18798 := by linear_combination r6226
    have hd1 : rho 18787 * rho 18787 = rho 18799 := by linear_combination r6227
    have hd2 : rho 18788 * rho 18788 = rho 18800 := by linear_combination r6228
    have hd3 : rho 18801 * (rho 18788 * rho 18788 + rho 18787 * rho 18787 * (-1)) = 2 * (rho 18787 * rho 18788) := by
      rw [hd0, hd1, hd2]
      linear_combination r6229
    have hd4 : rho 18802 * (2 - (rho 18788 * rho 18788 + rho 18787 * rho 18787 * (-1))) = rho 18788 * rho 18788 - rho 18787 * rho 18787 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6230
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX243 rho : Seg16.F), (seg16AccY243 rho : Seg16.F)⟩
      ⟨(rho 18787 : Seg16.F), (rho 18788 : Seg16.F)⟩
      ⟨(rho 18794 : Seg16.F), (rho 18795 : Seg16.F)⟩
      ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
      ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem seg16_rows244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6231 rho ∧ Seg16.relationRow6232 rho ∧ Seg16.relationRow6233 rho ∧ Seg16.relationRow6234 rho ∧ Seg16.relationRow6235 rho ∧ Seg16.relationRow6236 rho ∧ Seg16.relationRow6237 rho ∧ Seg16.relationRow6238 rho ∧ Seg16.relationRow6239 rho ∧ Seg16.relationRow6240 rho ∧ Seg16.relationRow6241 rho ∧ Seg16.relationRow6242 rho ∧ Seg16.relationRow6243 rho ∧ Seg16.relationRow6244 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart77 at p77
  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239⟩
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩

theorem seg16_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15536 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩ := by
  obtain ⟨r6231, r6232, r6233, r6234, r6235, r6236, r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244⟩ := seg16_rows244 rho h
  unfold Seg16.relationRow6231 at r6231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6231
  unfold Seg16.relationRow6232 at r6232
  unfold Seg16.relationRow6233 at r6233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6233
  unfold Seg16.relationRow6234 at r6234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6234
  unfold Seg16.relationRow6235 at r6235
  unfold Seg16.relationRow6236 at r6236
  unfold Seg16.relationRow6237 at r6237
  unfold Seg16.relationRow6238 at r6238
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6238
  unfold Seg16.relationRow6239 at r6239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6239
  unfold Seg16.relationRow6240 at r6240
  unfold Seg16.relationRow6241 at r6241
  unfold Seg16.relationRow6242 at r6242
  unfold Seg16.relationRow6243 at r6243
  unfold Seg16.relationRow6244 at r6244
  have hrung244 (bit : Bool) (hbit : rho 15536 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
        ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩ := by
    have hnextx : seg16AccX245 rho = seg16AccX244 rho + rho 18810 := by
      unfold seg16AccX245 seg16AccX244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 94]
      ring
    have hnexty : seg16AccY245 rho = seg16AccY244 rho + rho 18811 := by
      unfold seg16AccY245 seg16AccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 94]
      ring
    have hsum : seg16AccX244 rho + seg16AccY244 rho = rho 18803 := by
      unfold seg16AccX244 seg16AccY244
      linear_combination r6231
    have ha0 : (rho 18801 + rho 18802) * (seg16AccX244 rho + seg16AccY244 rho) = rho 18804 := by
      rw [hsum]
      linear_combination r6232
    have ha1 : rho 18802 * seg16AccX244 rho = rho 18805 := by
      unfold seg16AccX244
      linear_combination r6233
    have ha2 : rho 18801 * seg16AccY244 rho = rho 18806 := by
      unfold seg16AccY244
      linear_combination r6234
    have ha3 : 3021 * rho 18805 * rho 18806 = rho 18807 := by
      linear_combination r6235
    have ha4 : rho 18808 * (1 + rho 18807) = rho 18805 + rho 18806 := by
      linear_combination r6236
    have ha5 : rho 18809 * (1 - rho 18807) = rho 18804 - rho 18805 - rho 18806 := by
      linear_combination r6237
    have haddx :
        rho 18808 * (1 + 3021 * (rho 18802 * seg16AccX244 rho) * (rho 18801 * seg16AccY244 rho)) =
          rho 18802 * seg16AccX244 rho + rho 18801 * seg16AccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18809 * (1 - 3021 * (rho 18802 * seg16AccX244 rho) * (rho 18801 * seg16AccY244 rho)) =
          (-1) * (rho 18802 * seg16AccX244 rho) - rho 18801 * seg16AccY244 rho +
            (seg16AccY244 rho - seg16AccX244 rho * (-1)) * (rho 18801 + rho 18802) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18809 * (1 - rho 18807) = rho 18804 - rho 18805 - rho 18806 := ha5
        _ = (-1) * rho 18805 - rho 18806 + (seg16AccY244 rho - seg16AccX244 rho * (-1)) * (rho 18801 + rho 18802) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX245 rho = seg16AccX244 rho - Bool.toZMod bit * (seg16AccX244 rho - rho 18808) := by
      have hd : rho 18810 = Bool.toZMod bit * (rho 18808 - seg16AccX244 rho) := by
        rw [← hbit]
        unfold seg16AccX244
        linear_combination -r6238
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY245 rho = seg16AccY244 rho - Bool.toZMod bit * (seg16AccY244 rho - rho 18809) := by
      have hd : rho 18811 = Bool.toZMod bit * (rho 18809 - seg16AccY244 rho) := by
        rw [← hbit]
        unfold seg16AccY244
        linear_combination -r6239
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18801 * rho 18802 = rho 18812 := by linear_combination r6240
    have hd1 : rho 18801 * rho 18801 = rho 18813 := by linear_combination r6241
    have hd2 : rho 18802 * rho 18802 = rho 18814 := by linear_combination r6242
    have hd3 : rho 18815 * (rho 18802 * rho 18802 + rho 18801 * rho 18801 * (-1)) = 2 * (rho 18801 * rho 18802) := by
      rw [hd0, hd1, hd2]
      linear_combination r6243
    have hd4 : rho 18816 * (2 - (rho 18802 * rho 18802 + rho 18801 * rho 18801 * (-1))) = rho 18802 * rho 18802 - rho 18801 * rho 18801 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6244
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX244 rho : Seg16.F), (seg16AccY244 rho : Seg16.F)⟩
      ⟨(rho 18801 : Seg16.F), (rho 18802 : Seg16.F)⟩
      ⟨(rho 18808 : Seg16.F), (rho 18809 : Seg16.F)⟩
      ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
      ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem seg16_rows245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6245 rho ∧ Seg16.relationRow6246 rho ∧ Seg16.relationRow6247 rho ∧ Seg16.relationRow6248 rho ∧ Seg16.relationRow6249 rho ∧ Seg16.relationRow6250 rho ∧ Seg16.relationRow6251 rho ∧ Seg16.relationRow6252 rho ∧ Seg16.relationRow6253 rho ∧ Seg16.relationRow6254 rho ∧ Seg16.relationRow6255 rho ∧ Seg16.relationRow6256 rho ∧ Seg16.relationRow6257 rho ∧ Seg16.relationRow6258 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩

theorem seg16_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15537 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩ := by
  obtain ⟨r6245, r6246, r6247, r6248, r6249, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258⟩ := seg16_rows245 rho h
  unfold Seg16.relationRow6245 at r6245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6245
  unfold Seg16.relationRow6246 at r6246
  unfold Seg16.relationRow6247 at r6247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6247
  unfold Seg16.relationRow6248 at r6248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6248
  unfold Seg16.relationRow6249 at r6249
  unfold Seg16.relationRow6250 at r6250
  unfold Seg16.relationRow6251 at r6251
  unfold Seg16.relationRow6252 at r6252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6252
  unfold Seg16.relationRow6253 at r6253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6253
  unfold Seg16.relationRow6254 at r6254
  unfold Seg16.relationRow6255 at r6255
  unfold Seg16.relationRow6256 at r6256
  unfold Seg16.relationRow6257 at r6257
  unfold Seg16.relationRow6258 at r6258
  have hrung245 (bit : Bool) (hbit : rho 15537 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
        ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩ := by
    have hnextx : seg16AccX246 rho = seg16AccX245 rho + rho 18824 := by
      unfold seg16AccX246 seg16AccX245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 95]
      ring
    have hnexty : seg16AccY246 rho = seg16AccY245 rho + rho 18825 := by
      unfold seg16AccY246 seg16AccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 95]
      ring
    have hsum : seg16AccX245 rho + seg16AccY245 rho = rho 18817 := by
      unfold seg16AccX245 seg16AccY245
      linear_combination r6245
    have ha0 : (rho 18815 + rho 18816) * (seg16AccX245 rho + seg16AccY245 rho) = rho 18818 := by
      rw [hsum]
      linear_combination r6246
    have ha1 : rho 18816 * seg16AccX245 rho = rho 18819 := by
      unfold seg16AccX245
      linear_combination r6247
    have ha2 : rho 18815 * seg16AccY245 rho = rho 18820 := by
      unfold seg16AccY245
      linear_combination r6248
    have ha3 : 3021 * rho 18819 * rho 18820 = rho 18821 := by
      linear_combination r6249
    have ha4 : rho 18822 * (1 + rho 18821) = rho 18819 + rho 18820 := by
      linear_combination r6250
    have ha5 : rho 18823 * (1 - rho 18821) = rho 18818 - rho 18819 - rho 18820 := by
      linear_combination r6251
    have haddx :
        rho 18822 * (1 + 3021 * (rho 18816 * seg16AccX245 rho) * (rho 18815 * seg16AccY245 rho)) =
          rho 18816 * seg16AccX245 rho + rho 18815 * seg16AccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18823 * (1 - 3021 * (rho 18816 * seg16AccX245 rho) * (rho 18815 * seg16AccY245 rho)) =
          (-1) * (rho 18816 * seg16AccX245 rho) - rho 18815 * seg16AccY245 rho +
            (seg16AccY245 rho - seg16AccX245 rho * (-1)) * (rho 18815 + rho 18816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18823 * (1 - rho 18821) = rho 18818 - rho 18819 - rho 18820 := ha5
        _ = (-1) * rho 18819 - rho 18820 + (seg16AccY245 rho - seg16AccX245 rho * (-1)) * (rho 18815 + rho 18816) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX246 rho = seg16AccX245 rho - Bool.toZMod bit * (seg16AccX245 rho - rho 18822) := by
      have hd : rho 18824 = Bool.toZMod bit * (rho 18822 - seg16AccX245 rho) := by
        rw [← hbit]
        unfold seg16AccX245
        linear_combination -r6252
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY246 rho = seg16AccY245 rho - Bool.toZMod bit * (seg16AccY245 rho - rho 18823) := by
      have hd : rho 18825 = Bool.toZMod bit * (rho 18823 - seg16AccY245 rho) := by
        rw [← hbit]
        unfold seg16AccY245
        linear_combination -r6253
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18815 * rho 18816 = rho 18826 := by linear_combination r6254
    have hd1 : rho 18815 * rho 18815 = rho 18827 := by linear_combination r6255
    have hd2 : rho 18816 * rho 18816 = rho 18828 := by linear_combination r6256
    have hd3 : rho 18829 * (rho 18816 * rho 18816 + rho 18815 * rho 18815 * (-1)) = 2 * (rho 18815 * rho 18816) := by
      rw [hd0, hd1, hd2]
      linear_combination r6257
    have hd4 : rho 18830 * (2 - (rho 18816 * rho 18816 + rho 18815 * rho 18815 * (-1))) = rho 18816 * rho 18816 - rho 18815 * rho 18815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX245 rho : Seg16.F), (seg16AccY245 rho : Seg16.F)⟩
      ⟨(rho 18815 : Seg16.F), (rho 18816 : Seg16.F)⟩
      ⟨(rho 18822 : Seg16.F), (rho 18823 : Seg16.F)⟩
      ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
      ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem seg16_rows246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6259 rho ∧ Seg16.relationRow6260 rho ∧ Seg16.relationRow6261 rho ∧ Seg16.relationRow6262 rho ∧ Seg16.relationRow6263 rho ∧ Seg16.relationRow6264 rho ∧ Seg16.relationRow6265 rho ∧ Seg16.relationRow6266 rho ∧ Seg16.relationRow6267 rho ∧ Seg16.relationRow6268 rho ∧ Seg16.relationRow6269 rho ∧ Seg16.relationRow6270 rho ∧ Seg16.relationRow6271 rho ∧ Seg16.relationRow6272 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩

theorem seg16_rung246 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15538 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩ := by
  obtain ⟨r6259, r6260, r6261, r6262, r6263, r6264, r6265, r6266, r6267, r6268, r6269, r6270, r6271, r6272⟩ := seg16_rows246 rho h
  unfold Seg16.relationRow6259 at r6259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6259
  unfold Seg16.relationRow6260 at r6260
  unfold Seg16.relationRow6261 at r6261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6261
  unfold Seg16.relationRow6262 at r6262
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6262
  unfold Seg16.relationRow6263 at r6263
  unfold Seg16.relationRow6264 at r6264
  unfold Seg16.relationRow6265 at r6265
  unfold Seg16.relationRow6266 at r6266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6266
  unfold Seg16.relationRow6267 at r6267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6267
  unfold Seg16.relationRow6268 at r6268
  unfold Seg16.relationRow6269 at r6269
  unfold Seg16.relationRow6270 at r6270
  unfold Seg16.relationRow6271 at r6271
  unfold Seg16.relationRow6272 at r6272
  have hrung246 (bit : Bool) (hbit : rho 15538 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
        ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩ := by
    have hnextx : seg16AccX247 rho = seg16AccX246 rho + rho 18838 := by
      unfold seg16AccX247 seg16AccX246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 96]
      ring
    have hnexty : seg16AccY247 rho = seg16AccY246 rho + rho 18839 := by
      unfold seg16AccY247 seg16AccY246
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 96]
      ring
    have hsum : seg16AccX246 rho + seg16AccY246 rho = rho 18831 := by
      unfold seg16AccX246 seg16AccY246
      linear_combination r6259
    have ha0 : (rho 18829 + rho 18830) * (seg16AccX246 rho + seg16AccY246 rho) = rho 18832 := by
      rw [hsum]
      linear_combination r6260
    have ha1 : rho 18830 * seg16AccX246 rho = rho 18833 := by
      unfold seg16AccX246
      linear_combination r6261
    have ha2 : rho 18829 * seg16AccY246 rho = rho 18834 := by
      unfold seg16AccY246
      linear_combination r6262
    have ha3 : 3021 * rho 18833 * rho 18834 = rho 18835 := by
      linear_combination r6263
    have ha4 : rho 18836 * (1 + rho 18835) = rho 18833 + rho 18834 := by
      linear_combination r6264
    have ha5 : rho 18837 * (1 - rho 18835) = rho 18832 - rho 18833 - rho 18834 := by
      linear_combination r6265
    have haddx :
        rho 18836 * (1 + 3021 * (rho 18830 * seg16AccX246 rho) * (rho 18829 * seg16AccY246 rho)) =
          rho 18830 * seg16AccX246 rho + rho 18829 * seg16AccY246 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18837 * (1 - 3021 * (rho 18830 * seg16AccX246 rho) * (rho 18829 * seg16AccY246 rho)) =
          (-1) * (rho 18830 * seg16AccX246 rho) - rho 18829 * seg16AccY246 rho +
            (seg16AccY246 rho - seg16AccX246 rho * (-1)) * (rho 18829 + rho 18830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18837 * (1 - rho 18835) = rho 18832 - rho 18833 - rho 18834 := ha5
        _ = (-1) * rho 18833 - rho 18834 + (seg16AccY246 rho - seg16AccX246 rho * (-1)) * (rho 18829 + rho 18830) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX247 rho = seg16AccX246 rho - Bool.toZMod bit * (seg16AccX246 rho - rho 18836) := by
      have hd : rho 18838 = Bool.toZMod bit * (rho 18836 - seg16AccX246 rho) := by
        rw [← hbit]
        unfold seg16AccX246
        linear_combination -r6266
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY247 rho = seg16AccY246 rho - Bool.toZMod bit * (seg16AccY246 rho - rho 18837) := by
      have hd : rho 18839 = Bool.toZMod bit * (rho 18837 - seg16AccY246 rho) := by
        rw [← hbit]
        unfold seg16AccY246
        linear_combination -r6267
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18829 * rho 18830 = rho 18840 := by linear_combination r6268
    have hd1 : rho 18829 * rho 18829 = rho 18841 := by linear_combination r6269
    have hd2 : rho 18830 * rho 18830 = rho 18842 := by linear_combination r6270
    have hd3 : rho 18843 * (rho 18830 * rho 18830 + rho 18829 * rho 18829 * (-1)) = 2 * (rho 18829 * rho 18830) := by
      rw [hd0, hd1, hd2]
      linear_combination r6271
    have hd4 : rho 18844 * (2 - (rho 18830 * rho 18830 + rho 18829 * rho 18829 * (-1))) = rho 18830 * rho 18830 - rho 18829 * rho 18829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX246 rho : Seg16.F), (seg16AccY246 rho : Seg16.F)⟩
      ⟨(rho 18829 : Seg16.F), (rho 18830 : Seg16.F)⟩
      ⟨(rho 18836 : Seg16.F), (rho 18837 : Seg16.F)⟩
      ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
      ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung246

theorem seg16_rows247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6273 rho ∧ Seg16.relationRow6274 rho ∧ Seg16.relationRow6275 rho ∧ Seg16.relationRow6276 rho ∧ Seg16.relationRow6277 rho ∧ Seg16.relationRow6278 rho ∧ Seg16.relationRow6279 rho ∧ Seg16.relationRow6280 rho ∧ Seg16.relationRow6281 rho ∧ Seg16.relationRow6282 rho ∧ Seg16.relationRow6283 rho ∧ Seg16.relationRow6284 rho ∧ Seg16.relationRow6285 rho ∧ Seg16.relationRow6286 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩

theorem seg16_rung247 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15539 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩ := by
  obtain ⟨r6273, r6274, r6275, r6276, r6277, r6278, r6279, r6280, r6281, r6282, r6283, r6284, r6285, r6286⟩ := seg16_rows247 rho h
  unfold Seg16.relationRow6273 at r6273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6273
  unfold Seg16.relationRow6274 at r6274
  unfold Seg16.relationRow6275 at r6275
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6275
  unfold Seg16.relationRow6276 at r6276
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6276
  unfold Seg16.relationRow6277 at r6277
  unfold Seg16.relationRow6278 at r6278
  unfold Seg16.relationRow6279 at r6279
  unfold Seg16.relationRow6280 at r6280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6280
  unfold Seg16.relationRow6281 at r6281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6281
  unfold Seg16.relationRow6282 at r6282
  unfold Seg16.relationRow6283 at r6283
  unfold Seg16.relationRow6284 at r6284
  unfold Seg16.relationRow6285 at r6285
  unfold Seg16.relationRow6286 at r6286
  have hrung247 (bit : Bool) (hbit : rho 15539 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
        ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩ := by
    have hnextx : seg16AccX248 rho = seg16AccX247 rho + rho 18852 := by
      unfold seg16AccX248 seg16AccX247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 97]
      ring
    have hnexty : seg16AccY248 rho = seg16AccY247 rho + rho 18853 := by
      unfold seg16AccY248 seg16AccY247
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 97]
      ring
    have hsum : seg16AccX247 rho + seg16AccY247 rho = rho 18845 := by
      unfold seg16AccX247 seg16AccY247
      linear_combination r6273
    have ha0 : (rho 18843 + rho 18844) * (seg16AccX247 rho + seg16AccY247 rho) = rho 18846 := by
      rw [hsum]
      linear_combination r6274
    have ha1 : rho 18844 * seg16AccX247 rho = rho 18847 := by
      unfold seg16AccX247
      linear_combination r6275
    have ha2 : rho 18843 * seg16AccY247 rho = rho 18848 := by
      unfold seg16AccY247
      linear_combination r6276
    have ha3 : 3021 * rho 18847 * rho 18848 = rho 18849 := by
      linear_combination r6277
    have ha4 : rho 18850 * (1 + rho 18849) = rho 18847 + rho 18848 := by
      linear_combination r6278
    have ha5 : rho 18851 * (1 - rho 18849) = rho 18846 - rho 18847 - rho 18848 := by
      linear_combination r6279
    have haddx :
        rho 18850 * (1 + 3021 * (rho 18844 * seg16AccX247 rho) * (rho 18843 * seg16AccY247 rho)) =
          rho 18844 * seg16AccX247 rho + rho 18843 * seg16AccY247 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18851 * (1 - 3021 * (rho 18844 * seg16AccX247 rho) * (rho 18843 * seg16AccY247 rho)) =
          (-1) * (rho 18844 * seg16AccX247 rho) - rho 18843 * seg16AccY247 rho +
            (seg16AccY247 rho - seg16AccX247 rho * (-1)) * (rho 18843 + rho 18844) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18851 * (1 - rho 18849) = rho 18846 - rho 18847 - rho 18848 := ha5
        _ = (-1) * rho 18847 - rho 18848 + (seg16AccY247 rho - seg16AccX247 rho * (-1)) * (rho 18843 + rho 18844) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX248 rho = seg16AccX247 rho - Bool.toZMod bit * (seg16AccX247 rho - rho 18850) := by
      have hd : rho 18852 = Bool.toZMod bit * (rho 18850 - seg16AccX247 rho) := by
        rw [← hbit]
        unfold seg16AccX247
        linear_combination -r6280
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY248 rho = seg16AccY247 rho - Bool.toZMod bit * (seg16AccY247 rho - rho 18851) := by
      have hd : rho 18853 = Bool.toZMod bit * (rho 18851 - seg16AccY247 rho) := by
        rw [← hbit]
        unfold seg16AccY247
        linear_combination -r6281
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18843 * rho 18844 = rho 18854 := by linear_combination r6282
    have hd1 : rho 18843 * rho 18843 = rho 18855 := by linear_combination r6283
    have hd2 : rho 18844 * rho 18844 = rho 18856 := by linear_combination r6284
    have hd3 : rho 18857 * (rho 18844 * rho 18844 + rho 18843 * rho 18843 * (-1)) = 2 * (rho 18843 * rho 18844) := by
      rw [hd0, hd1, hd2]
      linear_combination r6285
    have hd4 : rho 18858 * (2 - (rho 18844 * rho 18844 + rho 18843 * rho 18843 * (-1))) = rho 18844 * rho 18844 - rho 18843 * rho 18843 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6286
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX247 rho : Seg16.F), (seg16AccY247 rho : Seg16.F)⟩
      ⟨(rho 18843 : Seg16.F), (rho 18844 : Seg16.F)⟩
      ⟨(rho 18850 : Seg16.F), (rho 18851 : Seg16.F)⟩
      ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
      ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung247

theorem seg16_rows248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6287 rho ∧ Seg16.relationRow6288 rho ∧ Seg16.relationRow6289 rho ∧ Seg16.relationRow6290 rho ∧ Seg16.relationRow6291 rho ∧ Seg16.relationRow6292 rho ∧ Seg16.relationRow6293 rho ∧ Seg16.relationRow6294 rho ∧ Seg16.relationRow6295 rho ∧ Seg16.relationRow6296 rho ∧ Seg16.relationRow6297 rho ∧ Seg16.relationRow6298 rho ∧ Seg16.relationRow6299 rho ∧ Seg16.relationRow6300 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩

theorem seg16_rung248 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15540 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩ := by
  obtain ⟨r6287, r6288, r6289, r6290, r6291, r6292, r6293, r6294, r6295, r6296, r6297, r6298, r6299, r6300⟩ := seg16_rows248 rho h
  unfold Seg16.relationRow6287 at r6287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6287
  unfold Seg16.relationRow6288 at r6288
  unfold Seg16.relationRow6289 at r6289
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6289
  unfold Seg16.relationRow6290 at r6290
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6290
  unfold Seg16.relationRow6291 at r6291
  unfold Seg16.relationRow6292 at r6292
  unfold Seg16.relationRow6293 at r6293
  unfold Seg16.relationRow6294 at r6294
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6294
  unfold Seg16.relationRow6295 at r6295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6295
  unfold Seg16.relationRow6296 at r6296
  unfold Seg16.relationRow6297 at r6297
  unfold Seg16.relationRow6298 at r6298
  unfold Seg16.relationRow6299 at r6299
  unfold Seg16.relationRow6300 at r6300
  have hrung248 (bit : Bool) (hbit : rho 15540 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
        ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩ := by
    have hnextx : seg16AccX249 rho = seg16AccX248 rho + rho 18866 := by
      unfold seg16AccX249 seg16AccX248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 98]
      ring
    have hnexty : seg16AccY249 rho = seg16AccY248 rho + rho 18867 := by
      unfold seg16AccY249 seg16AccY248
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 98]
      ring
    have hsum : seg16AccX248 rho + seg16AccY248 rho = rho 18859 := by
      unfold seg16AccX248 seg16AccY248
      linear_combination r6287
    have ha0 : (rho 18857 + rho 18858) * (seg16AccX248 rho + seg16AccY248 rho) = rho 18860 := by
      rw [hsum]
      linear_combination r6288
    have ha1 : rho 18858 * seg16AccX248 rho = rho 18861 := by
      unfold seg16AccX248
      linear_combination r6289
    have ha2 : rho 18857 * seg16AccY248 rho = rho 18862 := by
      unfold seg16AccY248
      linear_combination r6290
    have ha3 : 3021 * rho 18861 * rho 18862 = rho 18863 := by
      linear_combination r6291
    have ha4 : rho 18864 * (1 + rho 18863) = rho 18861 + rho 18862 := by
      linear_combination r6292
    have ha5 : rho 18865 * (1 - rho 18863) = rho 18860 - rho 18861 - rho 18862 := by
      linear_combination r6293
    have haddx :
        rho 18864 * (1 + 3021 * (rho 18858 * seg16AccX248 rho) * (rho 18857 * seg16AccY248 rho)) =
          rho 18858 * seg16AccX248 rho + rho 18857 * seg16AccY248 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18865 * (1 - 3021 * (rho 18858 * seg16AccX248 rho) * (rho 18857 * seg16AccY248 rho)) =
          (-1) * (rho 18858 * seg16AccX248 rho) - rho 18857 * seg16AccY248 rho +
            (seg16AccY248 rho - seg16AccX248 rho * (-1)) * (rho 18857 + rho 18858) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18865 * (1 - rho 18863) = rho 18860 - rho 18861 - rho 18862 := ha5
        _ = (-1) * rho 18861 - rho 18862 + (seg16AccY248 rho - seg16AccX248 rho * (-1)) * (rho 18857 + rho 18858) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX249 rho = seg16AccX248 rho - Bool.toZMod bit * (seg16AccX248 rho - rho 18864) := by
      have hd : rho 18866 = Bool.toZMod bit * (rho 18864 - seg16AccX248 rho) := by
        rw [← hbit]
        unfold seg16AccX248
        linear_combination -r6294
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY249 rho = seg16AccY248 rho - Bool.toZMod bit * (seg16AccY248 rho - rho 18865) := by
      have hd : rho 18867 = Bool.toZMod bit * (rho 18865 - seg16AccY248 rho) := by
        rw [← hbit]
        unfold seg16AccY248
        linear_combination -r6295
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18857 * rho 18858 = rho 18868 := by linear_combination r6296
    have hd1 : rho 18857 * rho 18857 = rho 18869 := by linear_combination r6297
    have hd2 : rho 18858 * rho 18858 = rho 18870 := by linear_combination r6298
    have hd3 : rho 18871 * (rho 18858 * rho 18858 + rho 18857 * rho 18857 * (-1)) = 2 * (rho 18857 * rho 18858) := by
      rw [hd0, hd1, hd2]
      linear_combination r6299
    have hd4 : rho 18872 * (2 - (rho 18858 * rho 18858 + rho 18857 * rho 18857 * (-1))) = rho 18858 * rho 18858 - rho 18857 * rho 18857 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6300
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX248 rho : Seg16.F), (seg16AccY248 rho : Seg16.F)⟩
      ⟨(rho 18857 : Seg16.F), (rho 18858 : Seg16.F)⟩
      ⟨(rho 18864 : Seg16.F), (rho 18865 : Seg16.F)⟩
      ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
      ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung248

theorem seg16_rows249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6301 rho ∧ Seg16.relationRow6302 rho ∧ Seg16.relationRow6303 rho ∧ Seg16.relationRow6304 rho ∧ Seg16.relationRow6305 rho ∧ Seg16.relationRow6306 rho ∧ Seg16.relationRow6307 rho ∧ Seg16.relationRow6308 rho ∧ Seg16.relationRow6309 rho ∧ Seg16.relationRow6310 rho ∧ Seg16.relationRow6311 rho ∧ Seg16.relationRow6312 rho ∧ Seg16.relationRow6313 rho ∧ Seg16.relationRow6314 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314, _, _, _, _, _⟩
  exact ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩

theorem seg16_rung249 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15541 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩ := by
  obtain ⟨r6301, r6302, r6303, r6304, r6305, r6306, r6307, r6308, r6309, r6310, r6311, r6312, r6313, r6314⟩ := seg16_rows249 rho h
  unfold Seg16.relationRow6301 at r6301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6301
  unfold Seg16.relationRow6302 at r6302
  unfold Seg16.relationRow6303 at r6303
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6303
  unfold Seg16.relationRow6304 at r6304
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6304
  unfold Seg16.relationRow6305 at r6305
  unfold Seg16.relationRow6306 at r6306
  unfold Seg16.relationRow6307 at r6307
  unfold Seg16.relationRow6308 at r6308
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6308
  unfold Seg16.relationRow6309 at r6309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6309
  unfold Seg16.relationRow6310 at r6310
  unfold Seg16.relationRow6311 at r6311
  unfold Seg16.relationRow6312 at r6312
  unfold Seg16.relationRow6313 at r6313
  unfold Seg16.relationRow6314 at r6314
  have hrung249 (bit : Bool) (hbit : rho 15541 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
        ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩ := by
    have hnextx : seg16AccX250 rho = seg16AccX249 rho + rho 18880 := by
      unfold seg16AccX250 seg16AccX249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 99]
      ring
    have hnexty : seg16AccY250 rho = seg16AccY249 rho + rho 18881 := by
      unfold seg16AccY250 seg16AccY249
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 99]
      ring
    have hsum : seg16AccX249 rho + seg16AccY249 rho = rho 18873 := by
      unfold seg16AccX249 seg16AccY249
      linear_combination r6301
    have ha0 : (rho 18871 + rho 18872) * (seg16AccX249 rho + seg16AccY249 rho) = rho 18874 := by
      rw [hsum]
      linear_combination r6302
    have ha1 : rho 18872 * seg16AccX249 rho = rho 18875 := by
      unfold seg16AccX249
      linear_combination r6303
    have ha2 : rho 18871 * seg16AccY249 rho = rho 18876 := by
      unfold seg16AccY249
      linear_combination r6304
    have ha3 : 3021 * rho 18875 * rho 18876 = rho 18877 := by
      linear_combination r6305
    have ha4 : rho 18878 * (1 + rho 18877) = rho 18875 + rho 18876 := by
      linear_combination r6306
    have ha5 : rho 18879 * (1 - rho 18877) = rho 18874 - rho 18875 - rho 18876 := by
      linear_combination r6307
    have haddx :
        rho 18878 * (1 + 3021 * (rho 18872 * seg16AccX249 rho) * (rho 18871 * seg16AccY249 rho)) =
          rho 18872 * seg16AccX249 rho + rho 18871 * seg16AccY249 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18879 * (1 - 3021 * (rho 18872 * seg16AccX249 rho) * (rho 18871 * seg16AccY249 rho)) =
          (-1) * (rho 18872 * seg16AccX249 rho) - rho 18871 * seg16AccY249 rho +
            (seg16AccY249 rho - seg16AccX249 rho * (-1)) * (rho 18871 + rho 18872) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18879 * (1 - rho 18877) = rho 18874 - rho 18875 - rho 18876 := ha5
        _ = (-1) * rho 18875 - rho 18876 + (seg16AccY249 rho - seg16AccX249 rho * (-1)) * (rho 18871 + rho 18872) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX250 rho = seg16AccX249 rho - Bool.toZMod bit * (seg16AccX249 rho - rho 18878) := by
      have hd : rho 18880 = Bool.toZMod bit * (rho 18878 - seg16AccX249 rho) := by
        rw [← hbit]
        unfold seg16AccX249
        linear_combination -r6308
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY250 rho = seg16AccY249 rho - Bool.toZMod bit * (seg16AccY249 rho - rho 18879) := by
      have hd : rho 18881 = Bool.toZMod bit * (rho 18879 - seg16AccY249 rho) := by
        rw [← hbit]
        unfold seg16AccY249
        linear_combination -r6309
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18871 * rho 18872 = rho 18882 := by linear_combination r6310
    have hd1 : rho 18871 * rho 18871 = rho 18883 := by linear_combination r6311
    have hd2 : rho 18872 * rho 18872 = rho 18884 := by linear_combination r6312
    have hd3 : rho 18885 * (rho 18872 * rho 18872 + rho 18871 * rho 18871 * (-1)) = 2 * (rho 18871 * rho 18872) := by
      rw [hd0, hd1, hd2]
      linear_combination r6313
    have hd4 : rho 18886 * (2 - (rho 18872 * rho 18872 + rho 18871 * rho 18871 * (-1))) = rho 18872 * rho 18872 - rho 18871 * rho 18871 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6314
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX249 rho : Seg16.F), (seg16AccY249 rho : Seg16.F)⟩
      ⟨(rho 18871 : Seg16.F), (rho 18872 : Seg16.F)⟩
      ⟨(rho 18878 : Seg16.F), (rho 18879 : Seg16.F)⟩
      ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
      ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung249

theorem seg16_rows250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow6315 rho ∧ Seg16.relationRow6316 rho ∧ Seg16.relationRow6317 rho ∧ Seg16.relationRow6318 rho ∧ Seg16.relationRow6319 rho ∧ Seg16.relationRow6320 rho ∧ Seg16.relationRow6321 rho ∧ Seg16.relationRow6322 rho ∧ Seg16.relationRow6323 rho ∧ Seg16.relationRow6324 rho ∧ Seg16.relationRow6325 rho ∧ Seg16.relationRow6326 rho ∧ Seg16.relationRow6327 rho ∧ Seg16.relationRow6328 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart78 at p78
  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6315, r6316, r6317, r6318, r6319⟩
  unfold Seg16.relationPart79 at p79
  rcases p79 with ⟨r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩
  exact ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩

theorem seg16_rung250 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15542 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
        ⟨(seg16AccX251 rho : Seg16.F), (seg16AccY251 rho : Seg16.F)⟩
        ⟨(rho 18899 : Seg16.F), (rho 18900 : Seg16.F)⟩ := by
  obtain ⟨r6315, r6316, r6317, r6318, r6319, r6320, r6321, r6322, r6323, r6324, r6325, r6326, r6327, r6328⟩ := seg16_rows250 rho h
  unfold Seg16.relationRow6315 at r6315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6315
  unfold Seg16.relationRow6316 at r6316
  unfold Seg16.relationRow6317 at r6317
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6317
  unfold Seg16.relationRow6318 at r6318
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6318
  unfold Seg16.relationRow6319 at r6319
  unfold Seg16.relationRow6320 at r6320
  unfold Seg16.relationRow6321 at r6321
  unfold Seg16.relationRow6322 at r6322
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6322
  unfold Seg16.relationRow6323 at r6323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6323
  unfold Seg16.relationRow6324 at r6324
  unfold Seg16.relationRow6325 at r6325
  unfold Seg16.relationRow6326 at r6326
  unfold Seg16.relationRow6327 at r6327
  unfold Seg16.relationRow6328 at r6328
  have hrung250 (bit : Bool) (hbit : rho 15542 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
        ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
        ⟨(seg16AccX251 rho : Seg16.F), (seg16AccY251 rho : Seg16.F)⟩
        ⟨(rho 18899 : Seg16.F), (rho 18900 : Seg16.F)⟩ := by
    have hnextx : seg16AccX251 rho = seg16AccX250 rho + rho 18894 := by
      unfold seg16AccX251 seg16AccX250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 100]
      ring
    have hnexty : seg16AccY251 rho = seg16AccY250 rho + rho 18895 := by
      unfold seg16AccY251 seg16AccY250
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 100]
      ring
    have hsum : seg16AccX250 rho + seg16AccY250 rho = rho 18887 := by
      unfold seg16AccX250 seg16AccY250
      linear_combination r6315
    have ha0 : (rho 18885 + rho 18886) * (seg16AccX250 rho + seg16AccY250 rho) = rho 18888 := by
      rw [hsum]
      linear_combination r6316
    have ha1 : rho 18886 * seg16AccX250 rho = rho 18889 := by
      unfold seg16AccX250
      linear_combination r6317
    have ha2 : rho 18885 * seg16AccY250 rho = rho 18890 := by
      unfold seg16AccY250
      linear_combination r6318
    have ha3 : 3021 * rho 18889 * rho 18890 = rho 18891 := by
      linear_combination r6319
    have ha4 : rho 18892 * (1 + rho 18891) = rho 18889 + rho 18890 := by
      linear_combination r6320
    have ha5 : rho 18893 * (1 - rho 18891) = rho 18888 - rho 18889 - rho 18890 := by
      linear_combination r6321
    have haddx :
        rho 18892 * (1 + 3021 * (rho 18886 * seg16AccX250 rho) * (rho 18885 * seg16AccY250 rho)) =
          rho 18886 * seg16AccX250 rho + rho 18885 * seg16AccY250 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18893 * (1 - 3021 * (rho 18886 * seg16AccX250 rho) * (rho 18885 * seg16AccY250 rho)) =
          (-1) * (rho 18886 * seg16AccX250 rho) - rho 18885 * seg16AccY250 rho +
            (seg16AccY250 rho - seg16AccX250 rho * (-1)) * (rho 18885 + rho 18886) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18893 * (1 - rho 18891) = rho 18888 - rho 18889 - rho 18890 := ha5
        _ = (-1) * rho 18889 - rho 18890 + (seg16AccY250 rho - seg16AccX250 rho * (-1)) * (rho 18885 + rho 18886) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX251 rho = seg16AccX250 rho - Bool.toZMod bit * (seg16AccX250 rho - rho 18892) := by
      have hd : rho 18894 = Bool.toZMod bit * (rho 18892 - seg16AccX250 rho) := by
        rw [← hbit]
        unfold seg16AccX250
        linear_combination -r6322
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY251 rho = seg16AccY250 rho - Bool.toZMod bit * (seg16AccY250 rho - rho 18893) := by
      have hd : rho 18895 = Bool.toZMod bit * (rho 18893 - seg16AccY250 rho) := by
        rw [← hbit]
        unfold seg16AccY250
        linear_combination -r6323
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18885 * rho 18886 = rho 18896 := by linear_combination r6324
    have hd1 : rho 18885 * rho 18885 = rho 18897 := by linear_combination r6325
    have hd2 : rho 18886 * rho 18886 = rho 18898 := by linear_combination r6326
    have hd3 : rho 18899 * (rho 18886 * rho 18886 + rho 18885 * rho 18885 * (-1)) = 2 * (rho 18885 * rho 18886) := by
      rw [hd0, hd1, hd2]
      linear_combination r6327
    have hd4 : rho 18900 * (2 - (rho 18886 * rho 18886 + rho 18885 * rho 18885 * (-1))) = rho 18886 * rho 18886 - rho 18885 * rho 18885 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6328
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX250 rho : Seg16.F), (seg16AccY250 rho : Seg16.F)⟩
      ⟨(rho 18885 : Seg16.F), (rho 18886 : Seg16.F)⟩
      ⟨(rho 18892 : Seg16.F), (rho 18893 : Seg16.F)⟩
      ⟨(seg16AccX251 rho : Seg16.F), (seg16AccY251 rho : Seg16.F)⟩
      ⟨(rho 18899 : Seg16.F), (rho 18900 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung250

theorem seg16_hstep_c22 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 242 ≤ i → i < 251 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact seg16_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact seg16_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact seg16_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
  · exact seg16_rung246 rho h bits[246]! (hbitAt 246 (by omega)) hacc hcur
  · exact seg16_rung247 rho h bits[247]! (hbitAt 247 (by omega)) hacc hcur
  · exact seg16_rung248 rho h bits[248]! (hbitAt 248 (by omega)) hacc hcur
  · exact seg16_rung249 rho h bits[249]! (hbitAt 249 (by omega)) hacc hcur
  · exact seg16_rung250 rho h bits[250]! (hbitAt 250 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
