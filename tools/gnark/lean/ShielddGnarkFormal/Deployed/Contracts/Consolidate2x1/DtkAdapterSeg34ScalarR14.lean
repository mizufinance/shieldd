import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4971 rho ∧ Seg34.relationRow4972 rho ∧ Seg34.relationRow4973 rho ∧ Seg34.relationRow4974 rho ∧ Seg34.relationRow4975 rho ∧ Seg34.relationRow4976 rho ∧ Seg34.relationRow4977 rho ∧ Seg34.relationRow4978 rho ∧ Seg34.relationRow4979 rho ∧ Seg34.relationRow4980 rho ∧ Seg34.relationRow4981 rho ∧ Seg34.relationRow4982 rho ∧ Seg34.relationRow4983 rho ∧ Seg34.relationRow4984 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩

theorem seg34_rung154 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34146 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩ := by
  obtain ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩ := seg34_rows154 rho h
  unfold Seg34.relationRow4971 at r4971
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971
  unfold Seg34.relationRow4972 at r4972
  unfold Seg34.relationRow4973 at r4973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973
  unfold Seg34.relationRow4974 at r4974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974
  unfold Seg34.relationRow4975 at r4975
  unfold Seg34.relationRow4976 at r4976
  unfold Seg34.relationRow4977 at r4977
  unfold Seg34.relationRow4978 at r4978
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978
  unfold Seg34.relationRow4979 at r4979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979
  unfold Seg34.relationRow4980 at r4980
  unfold Seg34.relationRow4981 at r4981
  unfold Seg34.relationRow4982 at r4982
  unfold Seg34.relationRow4983 at r4983
  unfold Seg34.relationRow4984 at r4984
  have hrung154 (bit : Bool) (hbit : rho 34146 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
        ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩ := by
    have hnextx : seg34AccX155 rho = seg34AccX154 rho + rho 36250 := by
      unfold seg34AccX155 seg34AccX154
      ring
    have hnexty : seg34AccY155 rho = seg34AccY154 rho + rho 36251 := by
      unfold seg34AccY155 seg34AccY154
      ring
    have hsum : seg34AccX154 rho + seg34AccY154 rho = rho 36243 := by
      unfold seg34AccX154 seg34AccY154
      linear_combination r4971
    have ha0 : (rho 36241 + rho 36242) * (seg34AccX154 rho + seg34AccY154 rho) = rho 36244 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 36242 * seg34AccX154 rho = rho 36245 := by
      unfold seg34AccX154
      linear_combination r4973
    have ha2 : rho 36241 * seg34AccY154 rho = rho 36246 := by
      unfold seg34AccY154
      linear_combination r4974
    have ha3 : 3021 * rho 36245 * rho 36246 = rho 36247 := by
      linear_combination r4975
    have ha4 : rho 36248 * (1 + rho 36247) = rho 36245 + rho 36246 := by
      linear_combination r4976
    have ha5 : rho 36249 * (1 - rho 36247) = rho 36244 - rho 36245 - rho 36246 := by
      linear_combination r4977
    have haddx :
        rho 36248 * (1 + 3021 * (rho 36242 * seg34AccX154 rho) * (rho 36241 * seg34AccY154 rho)) =
          rho 36242 * seg34AccX154 rho + rho 36241 * seg34AccY154 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36249 * (1 - 3021 * (rho 36242 * seg34AccX154 rho) * (rho 36241 * seg34AccY154 rho)) =
          (-1) * (rho 36242 * seg34AccX154 rho) - rho 36241 * seg34AccY154 rho +
            (seg34AccY154 rho - seg34AccX154 rho * (-1)) * (rho 36241 + rho 36242) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36249 * (1 - rho 36247) = rho 36244 - rho 36245 - rho 36246 := ha5
        _ = (-1) * rho 36245 - rho 36246 + (seg34AccY154 rho - seg34AccX154 rho * (-1)) * (rho 36241 + rho 36242) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX155 rho = seg34AccX154 rho - Bool.toZMod bit * (seg34AccX154 rho - rho 36248) := by
      have hd : rho 36250 = Bool.toZMod bit * (rho 36248 - seg34AccX154 rho) := by
        rw [← hbit]
        unfold seg34AccX154
        linear_combination -r4978
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY155 rho = seg34AccY154 rho - Bool.toZMod bit * (seg34AccY154 rho - rho 36249) := by
      have hd : rho 36251 = Bool.toZMod bit * (rho 36249 - seg34AccY154 rho) := by
        rw [← hbit]
        unfold seg34AccY154
        linear_combination -r4979
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36241 * rho 36242 = rho 36252 := by linear_combination r4980
    have hd1 : rho 36241 * rho 36241 = rho 36253 := by linear_combination r4981
    have hd2 : rho 36242 * rho 36242 = rho 36254 := by linear_combination r4982
    have hd3 : rho 36255 * (rho 36242 * rho 36242 + rho 36241 * rho 36241 * (-1)) = 2 * (rho 36241 * rho 36242) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 36256 * (2 - (rho 36242 * rho 36242 + rho 36241 * rho 36241 * (-1))) = rho 36242 * rho 36242 - rho 36241 * rho 36241 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX154 rho : Seg34.F), (seg34AccY154 rho : Seg34.F)⟩
      ⟨(rho 36241 : Seg34.F), (rho 36242 : Seg34.F)⟩
      ⟨(rho 36248 : Seg34.F), (rho 36249 : Seg34.F)⟩
      ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
      ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung154

theorem seg34_rows155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4985 rho ∧ Seg34.relationRow4986 rho ∧ Seg34.relationRow4987 rho ∧ Seg34.relationRow4988 rho ∧ Seg34.relationRow4989 rho ∧ Seg34.relationRow4990 rho ∧ Seg34.relationRow4991 rho ∧ Seg34.relationRow4992 rho ∧ Seg34.relationRow4993 rho ∧ Seg34.relationRow4994 rho ∧ Seg34.relationRow4995 rho ∧ Seg34.relationRow4996 rho ∧ Seg34.relationRow4997 rho ∧ Seg34.relationRow4998 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg34_rung155 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34147 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩ := by
  obtain ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg34_rows155 rho h
  unfold Seg34.relationRow4985 at r4985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4985
  unfold Seg34.relationRow4986 at r4986
  unfold Seg34.relationRow4987 at r4987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987
  unfold Seg34.relationRow4988 at r4988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988
  unfold Seg34.relationRow4989 at r4989
  unfold Seg34.relationRow4990 at r4990
  unfold Seg34.relationRow4991 at r4991
  unfold Seg34.relationRow4992 at r4992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992
  unfold Seg34.relationRow4993 at r4993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993
  unfold Seg34.relationRow4994 at r4994
  unfold Seg34.relationRow4995 at r4995
  unfold Seg34.relationRow4996 at r4996
  unfold Seg34.relationRow4997 at r4997
  unfold Seg34.relationRow4998 at r4998
  have hrung155 (bit : Bool) (hbit : rho 34147 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
        ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩ := by
    have hnextx : seg34AccX156 rho = seg34AccX155 rho + rho 36264 := by
      unfold seg34AccX156 seg34AccX155
      ring
    have hnexty : seg34AccY156 rho = seg34AccY155 rho + rho 36265 := by
      unfold seg34AccY156 seg34AccY155
      ring
    have hsum : seg34AccX155 rho + seg34AccY155 rho = rho 36257 := by
      unfold seg34AccX155 seg34AccY155
      linear_combination r4985
    have ha0 : (rho 36255 + rho 36256) * (seg34AccX155 rho + seg34AccY155 rho) = rho 36258 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 36256 * seg34AccX155 rho = rho 36259 := by
      unfold seg34AccX155
      linear_combination r4987
    have ha2 : rho 36255 * seg34AccY155 rho = rho 36260 := by
      unfold seg34AccY155
      linear_combination r4988
    have ha3 : 3021 * rho 36259 * rho 36260 = rho 36261 := by
      linear_combination r4989
    have ha4 : rho 36262 * (1 + rho 36261) = rho 36259 + rho 36260 := by
      linear_combination r4990
    have ha5 : rho 36263 * (1 - rho 36261) = rho 36258 - rho 36259 - rho 36260 := by
      linear_combination r4991
    have haddx :
        rho 36262 * (1 + 3021 * (rho 36256 * seg34AccX155 rho) * (rho 36255 * seg34AccY155 rho)) =
          rho 36256 * seg34AccX155 rho + rho 36255 * seg34AccY155 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36263 * (1 - 3021 * (rho 36256 * seg34AccX155 rho) * (rho 36255 * seg34AccY155 rho)) =
          (-1) * (rho 36256 * seg34AccX155 rho) - rho 36255 * seg34AccY155 rho +
            (seg34AccY155 rho - seg34AccX155 rho * (-1)) * (rho 36255 + rho 36256) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36263 * (1 - rho 36261) = rho 36258 - rho 36259 - rho 36260 := ha5
        _ = (-1) * rho 36259 - rho 36260 + (seg34AccY155 rho - seg34AccX155 rho * (-1)) * (rho 36255 + rho 36256) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX156 rho = seg34AccX155 rho - Bool.toZMod bit * (seg34AccX155 rho - rho 36262) := by
      have hd : rho 36264 = Bool.toZMod bit * (rho 36262 - seg34AccX155 rho) := by
        rw [← hbit]
        unfold seg34AccX155
        linear_combination -r4992
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY156 rho = seg34AccY155 rho - Bool.toZMod bit * (seg34AccY155 rho - rho 36263) := by
      have hd : rho 36265 = Bool.toZMod bit * (rho 36263 - seg34AccY155 rho) := by
        rw [← hbit]
        unfold seg34AccY155
        linear_combination -r4993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36255 * rho 36256 = rho 36266 := by linear_combination r4994
    have hd1 : rho 36255 * rho 36255 = rho 36267 := by linear_combination r4995
    have hd2 : rho 36256 * rho 36256 = rho 36268 := by linear_combination r4996
    have hd3 : rho 36269 * (rho 36256 * rho 36256 + rho 36255 * rho 36255 * (-1)) = 2 * (rho 36255 * rho 36256) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 36270 * (2 - (rho 36256 * rho 36256 + rho 36255 * rho 36255 * (-1))) = rho 36256 * rho 36256 - rho 36255 * rho 36255 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX155 rho : Seg34.F), (seg34AccY155 rho : Seg34.F)⟩
      ⟨(rho 36255 : Seg34.F), (rho 36256 : Seg34.F)⟩
      ⟨(rho 36262 : Seg34.F), (rho 36263 : Seg34.F)⟩
      ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
      ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung155

theorem seg34_rows156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4999 rho ∧ Seg34.relationRow5000 rho ∧ Seg34.relationRow5001 rho ∧ Seg34.relationRow5002 rho ∧ Seg34.relationRow5003 rho ∧ Seg34.relationRow5004 rho ∧ Seg34.relationRow5005 rho ∧ Seg34.relationRow5006 rho ∧ Seg34.relationRow5007 rho ∧ Seg34.relationRow5008 rho ∧ Seg34.relationRow5009 rho ∧ Seg34.relationRow5010 rho ∧ Seg34.relationRow5011 rho ∧ Seg34.relationRow5012 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩

theorem seg34_rung156 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34148 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩ := seg34_rows156 rho h
  unfold Seg34.relationRow4999 at r4999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999
  unfold Seg34.relationRow5000 at r5000
  unfold Seg34.relationRow5001 at r5001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001
  unfold Seg34.relationRow5002 at r5002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5002
  unfold Seg34.relationRow5003 at r5003
  unfold Seg34.relationRow5004 at r5004
  unfold Seg34.relationRow5005 at r5005
  unfold Seg34.relationRow5006 at r5006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006
  unfold Seg34.relationRow5007 at r5007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5007
  unfold Seg34.relationRow5008 at r5008
  unfold Seg34.relationRow5009 at r5009
  unfold Seg34.relationRow5010 at r5010
  unfold Seg34.relationRow5011 at r5011
  unfold Seg34.relationRow5012 at r5012
  have hrung156 (bit : Bool) (hbit : rho 34148 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
        ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩ := by
    have hnextx : seg34AccX157 rho = seg34AccX156 rho + rho 36278 := by
      unfold seg34AccX157 seg34AccX156
      ring
    have hnexty : seg34AccY157 rho = seg34AccY156 rho + rho 36279 := by
      unfold seg34AccY157 seg34AccY156
      ring
    have hsum : seg34AccX156 rho + seg34AccY156 rho = rho 36271 := by
      unfold seg34AccX156 seg34AccY156
      linear_combination r4999
    have ha0 : (rho 36269 + rho 36270) * (seg34AccX156 rho + seg34AccY156 rho) = rho 36272 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 36270 * seg34AccX156 rho = rho 36273 := by
      unfold seg34AccX156
      linear_combination r5001
    have ha2 : rho 36269 * seg34AccY156 rho = rho 36274 := by
      unfold seg34AccY156
      linear_combination r5002
    have ha3 : 3021 * rho 36273 * rho 36274 = rho 36275 := by
      linear_combination r5003
    have ha4 : rho 36276 * (1 + rho 36275) = rho 36273 + rho 36274 := by
      linear_combination r5004
    have ha5 : rho 36277 * (1 - rho 36275) = rho 36272 - rho 36273 - rho 36274 := by
      linear_combination r5005
    have haddx :
        rho 36276 * (1 + 3021 * (rho 36270 * seg34AccX156 rho) * (rho 36269 * seg34AccY156 rho)) =
          rho 36270 * seg34AccX156 rho + rho 36269 * seg34AccY156 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36277 * (1 - 3021 * (rho 36270 * seg34AccX156 rho) * (rho 36269 * seg34AccY156 rho)) =
          (-1) * (rho 36270 * seg34AccX156 rho) - rho 36269 * seg34AccY156 rho +
            (seg34AccY156 rho - seg34AccX156 rho * (-1)) * (rho 36269 + rho 36270) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36277 * (1 - rho 36275) = rho 36272 - rho 36273 - rho 36274 := ha5
        _ = (-1) * rho 36273 - rho 36274 + (seg34AccY156 rho - seg34AccX156 rho * (-1)) * (rho 36269 + rho 36270) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX157 rho = seg34AccX156 rho - Bool.toZMod bit * (seg34AccX156 rho - rho 36276) := by
      have hd : rho 36278 = Bool.toZMod bit * (rho 36276 - seg34AccX156 rho) := by
        rw [← hbit]
        unfold seg34AccX156
        linear_combination -r5006
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY157 rho = seg34AccY156 rho - Bool.toZMod bit * (seg34AccY156 rho - rho 36277) := by
      have hd : rho 36279 = Bool.toZMod bit * (rho 36277 - seg34AccY156 rho) := by
        rw [← hbit]
        unfold seg34AccY156
        linear_combination -r5007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36269 * rho 36270 = rho 36280 := by linear_combination r5008
    have hd1 : rho 36269 * rho 36269 = rho 36281 := by linear_combination r5009
    have hd2 : rho 36270 * rho 36270 = rho 36282 := by linear_combination r5010
    have hd3 : rho 36283 * (rho 36270 * rho 36270 + rho 36269 * rho 36269 * (-1)) = 2 * (rho 36269 * rho 36270) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 36284 * (2 - (rho 36270 * rho 36270 + rho 36269 * rho 36269 * (-1))) = rho 36270 * rho 36270 - rho 36269 * rho 36269 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX156 rho : Seg34.F), (seg34AccY156 rho : Seg34.F)⟩
      ⟨(rho 36269 : Seg34.F), (rho 36270 : Seg34.F)⟩
      ⟨(rho 36276 : Seg34.F), (rho 36277 : Seg34.F)⟩
      ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
      ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung156

theorem seg34_rows157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5013 rho ∧ Seg34.relationRow5014 rho ∧ Seg34.relationRow5015 rho ∧ Seg34.relationRow5016 rho ∧ Seg34.relationRow5017 rho ∧ Seg34.relationRow5018 rho ∧ Seg34.relationRow5019 rho ∧ Seg34.relationRow5020 rho ∧ Seg34.relationRow5021 rho ∧ Seg34.relationRow5022 rho ∧ Seg34.relationRow5023 rho ∧ Seg34.relationRow5024 rho ∧ Seg34.relationRow5025 rho ∧ Seg34.relationRow5026 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩

theorem seg34_rung157 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34149 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩ := by
  obtain ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩ := seg34_rows157 rho h
  unfold Seg34.relationRow5013 at r5013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013
  unfold Seg34.relationRow5014 at r5014
  unfold Seg34.relationRow5015 at r5015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5015
  unfold Seg34.relationRow5016 at r5016
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5016
  unfold Seg34.relationRow5017 at r5017
  unfold Seg34.relationRow5018 at r5018
  unfold Seg34.relationRow5019 at r5019
  unfold Seg34.relationRow5020 at r5020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5020
  unfold Seg34.relationRow5021 at r5021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5021
  unfold Seg34.relationRow5022 at r5022
  unfold Seg34.relationRow5023 at r5023
  unfold Seg34.relationRow5024 at r5024
  unfold Seg34.relationRow5025 at r5025
  unfold Seg34.relationRow5026 at r5026
  have hrung157 (bit : Bool) (hbit : rho 34149 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
        ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩ := by
    have hnextx : seg34AccX158 rho = seg34AccX157 rho + rho 36292 := by
      unfold seg34AccX158 seg34AccX157
      ring
    have hnexty : seg34AccY158 rho = seg34AccY157 rho + rho 36293 := by
      unfold seg34AccY158 seg34AccY157
      ring
    have hsum : seg34AccX157 rho + seg34AccY157 rho = rho 36285 := by
      unfold seg34AccX157 seg34AccY157
      linear_combination r5013
    have ha0 : (rho 36283 + rho 36284) * (seg34AccX157 rho + seg34AccY157 rho) = rho 36286 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 36284 * seg34AccX157 rho = rho 36287 := by
      unfold seg34AccX157
      linear_combination r5015
    have ha2 : rho 36283 * seg34AccY157 rho = rho 36288 := by
      unfold seg34AccY157
      linear_combination r5016
    have ha3 : 3021 * rho 36287 * rho 36288 = rho 36289 := by
      linear_combination r5017
    have ha4 : rho 36290 * (1 + rho 36289) = rho 36287 + rho 36288 := by
      linear_combination r5018
    have ha5 : rho 36291 * (1 - rho 36289) = rho 36286 - rho 36287 - rho 36288 := by
      linear_combination r5019
    have haddx :
        rho 36290 * (1 + 3021 * (rho 36284 * seg34AccX157 rho) * (rho 36283 * seg34AccY157 rho)) =
          rho 36284 * seg34AccX157 rho + rho 36283 * seg34AccY157 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36291 * (1 - 3021 * (rho 36284 * seg34AccX157 rho) * (rho 36283 * seg34AccY157 rho)) =
          (-1) * (rho 36284 * seg34AccX157 rho) - rho 36283 * seg34AccY157 rho +
            (seg34AccY157 rho - seg34AccX157 rho * (-1)) * (rho 36283 + rho 36284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36291 * (1 - rho 36289) = rho 36286 - rho 36287 - rho 36288 := ha5
        _ = (-1) * rho 36287 - rho 36288 + (seg34AccY157 rho - seg34AccX157 rho * (-1)) * (rho 36283 + rho 36284) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX158 rho = seg34AccX157 rho - Bool.toZMod bit * (seg34AccX157 rho - rho 36290) := by
      have hd : rho 36292 = Bool.toZMod bit * (rho 36290 - seg34AccX157 rho) := by
        rw [← hbit]
        unfold seg34AccX157
        linear_combination -r5020
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY158 rho = seg34AccY157 rho - Bool.toZMod bit * (seg34AccY157 rho - rho 36291) := by
      have hd : rho 36293 = Bool.toZMod bit * (rho 36291 - seg34AccY157 rho) := by
        rw [← hbit]
        unfold seg34AccY157
        linear_combination -r5021
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36283 * rho 36284 = rho 36294 := by linear_combination r5022
    have hd1 : rho 36283 * rho 36283 = rho 36295 := by linear_combination r5023
    have hd2 : rho 36284 * rho 36284 = rho 36296 := by linear_combination r5024
    have hd3 : rho 36297 * (rho 36284 * rho 36284 + rho 36283 * rho 36283 * (-1)) = 2 * (rho 36283 * rho 36284) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 36298 * (2 - (rho 36284 * rho 36284 + rho 36283 * rho 36283 * (-1))) = rho 36284 * rho 36284 - rho 36283 * rho 36283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX157 rho : Seg34.F), (seg34AccY157 rho : Seg34.F)⟩
      ⟨(rho 36283 : Seg34.F), (rho 36284 : Seg34.F)⟩
      ⟨(rho 36290 : Seg34.F), (rho 36291 : Seg34.F)⟩
      ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
      ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung157

theorem seg34_rows158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5027 rho ∧ Seg34.relationRow5028 rho ∧ Seg34.relationRow5029 rho ∧ Seg34.relationRow5030 rho ∧ Seg34.relationRow5031 rho ∧ Seg34.relationRow5032 rho ∧ Seg34.relationRow5033 rho ∧ Seg34.relationRow5034 rho ∧ Seg34.relationRow5035 rho ∧ Seg34.relationRow5036 rho ∧ Seg34.relationRow5037 rho ∧ Seg34.relationRow5038 rho ∧ Seg34.relationRow5039 rho ∧ Seg34.relationRow5040 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩

theorem seg34_rung158 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34150 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩ := by
  obtain ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩ := seg34_rows158 rho h
  unfold Seg34.relationRow5027 at r5027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027
  unfold Seg34.relationRow5028 at r5028
  unfold Seg34.relationRow5029 at r5029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5029
  unfold Seg34.relationRow5030 at r5030
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5030
  unfold Seg34.relationRow5031 at r5031
  unfold Seg34.relationRow5032 at r5032
  unfold Seg34.relationRow5033 at r5033
  unfold Seg34.relationRow5034 at r5034
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5034
  unfold Seg34.relationRow5035 at r5035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5035
  unfold Seg34.relationRow5036 at r5036
  unfold Seg34.relationRow5037 at r5037
  unfold Seg34.relationRow5038 at r5038
  unfold Seg34.relationRow5039 at r5039
  unfold Seg34.relationRow5040 at r5040
  have hrung158 (bit : Bool) (hbit : rho 34150 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
        ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩ := by
    have hnextx : seg34AccX159 rho = seg34AccX158 rho + rho 36306 := by
      unfold seg34AccX159 seg34AccX158
      ring
    have hnexty : seg34AccY159 rho = seg34AccY158 rho + rho 36307 := by
      unfold seg34AccY159 seg34AccY158
      ring
    have hsum : seg34AccX158 rho + seg34AccY158 rho = rho 36299 := by
      unfold seg34AccX158 seg34AccY158
      linear_combination r5027
    have ha0 : (rho 36297 + rho 36298) * (seg34AccX158 rho + seg34AccY158 rho) = rho 36300 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 36298 * seg34AccX158 rho = rho 36301 := by
      unfold seg34AccX158
      linear_combination r5029
    have ha2 : rho 36297 * seg34AccY158 rho = rho 36302 := by
      unfold seg34AccY158
      linear_combination r5030
    have ha3 : 3021 * rho 36301 * rho 36302 = rho 36303 := by
      linear_combination r5031
    have ha4 : rho 36304 * (1 + rho 36303) = rho 36301 + rho 36302 := by
      linear_combination r5032
    have ha5 : rho 36305 * (1 - rho 36303) = rho 36300 - rho 36301 - rho 36302 := by
      linear_combination r5033
    have haddx :
        rho 36304 * (1 + 3021 * (rho 36298 * seg34AccX158 rho) * (rho 36297 * seg34AccY158 rho)) =
          rho 36298 * seg34AccX158 rho + rho 36297 * seg34AccY158 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36305 * (1 - 3021 * (rho 36298 * seg34AccX158 rho) * (rho 36297 * seg34AccY158 rho)) =
          (-1) * (rho 36298 * seg34AccX158 rho) - rho 36297 * seg34AccY158 rho +
            (seg34AccY158 rho - seg34AccX158 rho * (-1)) * (rho 36297 + rho 36298) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36305 * (1 - rho 36303) = rho 36300 - rho 36301 - rho 36302 := ha5
        _ = (-1) * rho 36301 - rho 36302 + (seg34AccY158 rho - seg34AccX158 rho * (-1)) * (rho 36297 + rho 36298) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX159 rho = seg34AccX158 rho - Bool.toZMod bit * (seg34AccX158 rho - rho 36304) := by
      have hd : rho 36306 = Bool.toZMod bit * (rho 36304 - seg34AccX158 rho) := by
        rw [← hbit]
        unfold seg34AccX158
        linear_combination -r5034
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY159 rho = seg34AccY158 rho - Bool.toZMod bit * (seg34AccY158 rho - rho 36305) := by
      have hd : rho 36307 = Bool.toZMod bit * (rho 36305 - seg34AccY158 rho) := by
        rw [← hbit]
        unfold seg34AccY158
        linear_combination -r5035
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36297 * rho 36298 = rho 36308 := by linear_combination r5036
    have hd1 : rho 36297 * rho 36297 = rho 36309 := by linear_combination r5037
    have hd2 : rho 36298 * rho 36298 = rho 36310 := by linear_combination r5038
    have hd3 : rho 36311 * (rho 36298 * rho 36298 + rho 36297 * rho 36297 * (-1)) = 2 * (rho 36297 * rho 36298) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 36312 * (2 - (rho 36298 * rho 36298 + rho 36297 * rho 36297 * (-1))) = rho 36298 * rho 36298 - rho 36297 * rho 36297 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX158 rho : Seg34.F), (seg34AccY158 rho : Seg34.F)⟩
      ⟨(rho 36297 : Seg34.F), (rho 36298 : Seg34.F)⟩
      ⟨(rho 36304 : Seg34.F), (rho 36305 : Seg34.F)⟩
      ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
      ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung158

theorem seg34_rows159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5041 rho ∧ Seg34.relationRow5042 rho ∧ Seg34.relationRow5043 rho ∧ Seg34.relationRow5044 rho ∧ Seg34.relationRow5045 rho ∧ Seg34.relationRow5046 rho ∧ Seg34.relationRow5047 rho ∧ Seg34.relationRow5048 rho ∧ Seg34.relationRow5049 rho ∧ Seg34.relationRow5050 rho ∧ Seg34.relationRow5051 rho ∧ Seg34.relationRow5052 rho ∧ Seg34.relationRow5053 rho ∧ Seg34.relationRow5054 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩

theorem seg34_rung159 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34151 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩ := by
  obtain ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩ := seg34_rows159 rho h
  unfold Seg34.relationRow5041 at r5041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5041
  unfold Seg34.relationRow5042 at r5042
  unfold Seg34.relationRow5043 at r5043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5043
  unfold Seg34.relationRow5044 at r5044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044
  unfold Seg34.relationRow5045 at r5045
  unfold Seg34.relationRow5046 at r5046
  unfold Seg34.relationRow5047 at r5047
  unfold Seg34.relationRow5048 at r5048
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5048
  unfold Seg34.relationRow5049 at r5049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5049
  unfold Seg34.relationRow5050 at r5050
  unfold Seg34.relationRow5051 at r5051
  unfold Seg34.relationRow5052 at r5052
  unfold Seg34.relationRow5053 at r5053
  unfold Seg34.relationRow5054 at r5054
  have hrung159 (bit : Bool) (hbit : rho 34151 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
        ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩ := by
    have hnextx : seg34AccX160 rho = seg34AccX159 rho + rho 36320 := by
      unfold seg34AccX160 seg34AccX159
      ring
    have hnexty : seg34AccY160 rho = seg34AccY159 rho + rho 36321 := by
      unfold seg34AccY160 seg34AccY159
      ring
    have hsum : seg34AccX159 rho + seg34AccY159 rho = rho 36313 := by
      unfold seg34AccX159 seg34AccY159
      linear_combination r5041
    have ha0 : (rho 36311 + rho 36312) * (seg34AccX159 rho + seg34AccY159 rho) = rho 36314 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 36312 * seg34AccX159 rho = rho 36315 := by
      unfold seg34AccX159
      linear_combination r5043
    have ha2 : rho 36311 * seg34AccY159 rho = rho 36316 := by
      unfold seg34AccY159
      linear_combination r5044
    have ha3 : 3021 * rho 36315 * rho 36316 = rho 36317 := by
      linear_combination r5045
    have ha4 : rho 36318 * (1 + rho 36317) = rho 36315 + rho 36316 := by
      linear_combination r5046
    have ha5 : rho 36319 * (1 - rho 36317) = rho 36314 - rho 36315 - rho 36316 := by
      linear_combination r5047
    have haddx :
        rho 36318 * (1 + 3021 * (rho 36312 * seg34AccX159 rho) * (rho 36311 * seg34AccY159 rho)) =
          rho 36312 * seg34AccX159 rho + rho 36311 * seg34AccY159 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36319 * (1 - 3021 * (rho 36312 * seg34AccX159 rho) * (rho 36311 * seg34AccY159 rho)) =
          (-1) * (rho 36312 * seg34AccX159 rho) - rho 36311 * seg34AccY159 rho +
            (seg34AccY159 rho - seg34AccX159 rho * (-1)) * (rho 36311 + rho 36312) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36319 * (1 - rho 36317) = rho 36314 - rho 36315 - rho 36316 := ha5
        _ = (-1) * rho 36315 - rho 36316 + (seg34AccY159 rho - seg34AccX159 rho * (-1)) * (rho 36311 + rho 36312) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX160 rho = seg34AccX159 rho - Bool.toZMod bit * (seg34AccX159 rho - rho 36318) := by
      have hd : rho 36320 = Bool.toZMod bit * (rho 36318 - seg34AccX159 rho) := by
        rw [← hbit]
        unfold seg34AccX159
        linear_combination -r5048
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY160 rho = seg34AccY159 rho - Bool.toZMod bit * (seg34AccY159 rho - rho 36319) := by
      have hd : rho 36321 = Bool.toZMod bit * (rho 36319 - seg34AccY159 rho) := by
        rw [← hbit]
        unfold seg34AccY159
        linear_combination -r5049
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36311 * rho 36312 = rho 36322 := by linear_combination r5050
    have hd1 : rho 36311 * rho 36311 = rho 36323 := by linear_combination r5051
    have hd2 : rho 36312 * rho 36312 = rho 36324 := by linear_combination r5052
    have hd3 : rho 36325 * (rho 36312 * rho 36312 + rho 36311 * rho 36311 * (-1)) = 2 * (rho 36311 * rho 36312) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 36326 * (2 - (rho 36312 * rho 36312 + rho 36311 * rho 36311 * (-1))) = rho 36312 * rho 36312 - rho 36311 * rho 36311 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX159 rho : Seg34.F), (seg34AccY159 rho : Seg34.F)⟩
      ⟨(rho 36311 : Seg34.F), (rho 36312 : Seg34.F)⟩
      ⟨(rho 36318 : Seg34.F), (rho 36319 : Seg34.F)⟩
      ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
      ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung159

theorem seg34_rows160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5055 rho ∧ Seg34.relationRow5056 rho ∧ Seg34.relationRow5057 rho ∧ Seg34.relationRow5058 rho ∧ Seg34.relationRow5059 rho ∧ Seg34.relationRow5060 rho ∧ Seg34.relationRow5061 rho ∧ Seg34.relationRow5062 rho ∧ Seg34.relationRow5063 rho ∧ Seg34.relationRow5064 rho ∧ Seg34.relationRow5065 rho ∧ Seg34.relationRow5066 rho ∧ Seg34.relationRow5067 rho ∧ Seg34.relationRow5068 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩

theorem seg34_rung160 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34152 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩ := by
  obtain ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩ := seg34_rows160 rho h
  unfold Seg34.relationRow5055 at r5055
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5055
  unfold Seg34.relationRow5056 at r5056
  unfold Seg34.relationRow5057 at r5057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057
  unfold Seg34.relationRow5058 at r5058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058
  unfold Seg34.relationRow5059 at r5059
  unfold Seg34.relationRow5060 at r5060
  unfold Seg34.relationRow5061 at r5061
  unfold Seg34.relationRow5062 at r5062
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5062
  unfold Seg34.relationRow5063 at r5063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5063
  unfold Seg34.relationRow5064 at r5064
  unfold Seg34.relationRow5065 at r5065
  unfold Seg34.relationRow5066 at r5066
  unfold Seg34.relationRow5067 at r5067
  unfold Seg34.relationRow5068 at r5068
  have hrung160 (bit : Bool) (hbit : rho 34152 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
        ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩ := by
    have hnextx : seg34AccX161 rho = seg34AccX160 rho + rho 36334 := by
      unfold seg34AccX161 seg34AccX160
      ring
    have hnexty : seg34AccY161 rho = seg34AccY160 rho + rho 36335 := by
      unfold seg34AccY161 seg34AccY160
      ring
    have hsum : seg34AccX160 rho + seg34AccY160 rho = rho 36327 := by
      unfold seg34AccX160 seg34AccY160
      linear_combination r5055
    have ha0 : (rho 36325 + rho 36326) * (seg34AccX160 rho + seg34AccY160 rho) = rho 36328 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 36326 * seg34AccX160 rho = rho 36329 := by
      unfold seg34AccX160
      linear_combination r5057
    have ha2 : rho 36325 * seg34AccY160 rho = rho 36330 := by
      unfold seg34AccY160
      linear_combination r5058
    have ha3 : 3021 * rho 36329 * rho 36330 = rho 36331 := by
      linear_combination r5059
    have ha4 : rho 36332 * (1 + rho 36331) = rho 36329 + rho 36330 := by
      linear_combination r5060
    have ha5 : rho 36333 * (1 - rho 36331) = rho 36328 - rho 36329 - rho 36330 := by
      linear_combination r5061
    have haddx :
        rho 36332 * (1 + 3021 * (rho 36326 * seg34AccX160 rho) * (rho 36325 * seg34AccY160 rho)) =
          rho 36326 * seg34AccX160 rho + rho 36325 * seg34AccY160 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36333 * (1 - 3021 * (rho 36326 * seg34AccX160 rho) * (rho 36325 * seg34AccY160 rho)) =
          (-1) * (rho 36326 * seg34AccX160 rho) - rho 36325 * seg34AccY160 rho +
            (seg34AccY160 rho - seg34AccX160 rho * (-1)) * (rho 36325 + rho 36326) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36333 * (1 - rho 36331) = rho 36328 - rho 36329 - rho 36330 := ha5
        _ = (-1) * rho 36329 - rho 36330 + (seg34AccY160 rho - seg34AccX160 rho * (-1)) * (rho 36325 + rho 36326) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX161 rho = seg34AccX160 rho - Bool.toZMod bit * (seg34AccX160 rho - rho 36332) := by
      have hd : rho 36334 = Bool.toZMod bit * (rho 36332 - seg34AccX160 rho) := by
        rw [← hbit]
        unfold seg34AccX160
        linear_combination -r5062
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY161 rho = seg34AccY160 rho - Bool.toZMod bit * (seg34AccY160 rho - rho 36333) := by
      have hd : rho 36335 = Bool.toZMod bit * (rho 36333 - seg34AccY160 rho) := by
        rw [← hbit]
        unfold seg34AccY160
        linear_combination -r5063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36325 * rho 36326 = rho 36336 := by linear_combination r5064
    have hd1 : rho 36325 * rho 36325 = rho 36337 := by linear_combination r5065
    have hd2 : rho 36326 * rho 36326 = rho 36338 := by linear_combination r5066
    have hd3 : rho 36339 * (rho 36326 * rho 36326 + rho 36325 * rho 36325 * (-1)) = 2 * (rho 36325 * rho 36326) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 36340 * (2 - (rho 36326 * rho 36326 + rho 36325 * rho 36325 * (-1))) = rho 36326 * rho 36326 - rho 36325 * rho 36325 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX160 rho : Seg34.F), (seg34AccY160 rho : Seg34.F)⟩
      ⟨(rho 36325 : Seg34.F), (rho 36326 : Seg34.F)⟩
      ⟨(rho 36332 : Seg34.F), (rho 36333 : Seg34.F)⟩
      ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
      ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung160

theorem seg34_rows161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5069 rho ∧ Seg34.relationRow5070 rho ∧ Seg34.relationRow5071 rho ∧ Seg34.relationRow5072 rho ∧ Seg34.relationRow5073 rho ∧ Seg34.relationRow5074 rho ∧ Seg34.relationRow5075 rho ∧ Seg34.relationRow5076 rho ∧ Seg34.relationRow5077 rho ∧ Seg34.relationRow5078 rho ∧ Seg34.relationRow5079 rho ∧ Seg34.relationRow5080 rho ∧ Seg34.relationRow5081 rho ∧ Seg34.relationRow5082 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩

theorem seg34_rung161 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34153 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩ := by
  obtain ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩ := seg34_rows161 rho h
  unfold Seg34.relationRow5069 at r5069
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5069
  unfold Seg34.relationRow5070 at r5070
  unfold Seg34.relationRow5071 at r5071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071
  unfold Seg34.relationRow5072 at r5072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5072
  unfold Seg34.relationRow5073 at r5073
  unfold Seg34.relationRow5074 at r5074
  unfold Seg34.relationRow5075 at r5075
  unfold Seg34.relationRow5076 at r5076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5076
  unfold Seg34.relationRow5077 at r5077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077
  unfold Seg34.relationRow5078 at r5078
  unfold Seg34.relationRow5079 at r5079
  unfold Seg34.relationRow5080 at r5080
  unfold Seg34.relationRow5081 at r5081
  unfold Seg34.relationRow5082 at r5082
  have hrung161 (bit : Bool) (hbit : rho 34153 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
        ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩ := by
    have hnextx : seg34AccX162 rho = seg34AccX161 rho + rho 36348 := by
      unfold seg34AccX162 seg34AccX161
      ring
    have hnexty : seg34AccY162 rho = seg34AccY161 rho + rho 36349 := by
      unfold seg34AccY162 seg34AccY161
      ring
    have hsum : seg34AccX161 rho + seg34AccY161 rho = rho 36341 := by
      unfold seg34AccX161 seg34AccY161
      linear_combination r5069
    have ha0 : (rho 36339 + rho 36340) * (seg34AccX161 rho + seg34AccY161 rho) = rho 36342 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 36340 * seg34AccX161 rho = rho 36343 := by
      unfold seg34AccX161
      linear_combination r5071
    have ha2 : rho 36339 * seg34AccY161 rho = rho 36344 := by
      unfold seg34AccY161
      linear_combination r5072
    have ha3 : 3021 * rho 36343 * rho 36344 = rho 36345 := by
      linear_combination r5073
    have ha4 : rho 36346 * (1 + rho 36345) = rho 36343 + rho 36344 := by
      linear_combination r5074
    have ha5 : rho 36347 * (1 - rho 36345) = rho 36342 - rho 36343 - rho 36344 := by
      linear_combination r5075
    have haddx :
        rho 36346 * (1 + 3021 * (rho 36340 * seg34AccX161 rho) * (rho 36339 * seg34AccY161 rho)) =
          rho 36340 * seg34AccX161 rho + rho 36339 * seg34AccY161 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36347 * (1 - 3021 * (rho 36340 * seg34AccX161 rho) * (rho 36339 * seg34AccY161 rho)) =
          (-1) * (rho 36340 * seg34AccX161 rho) - rho 36339 * seg34AccY161 rho +
            (seg34AccY161 rho - seg34AccX161 rho * (-1)) * (rho 36339 + rho 36340) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36347 * (1 - rho 36345) = rho 36342 - rho 36343 - rho 36344 := ha5
        _ = (-1) * rho 36343 - rho 36344 + (seg34AccY161 rho - seg34AccX161 rho * (-1)) * (rho 36339 + rho 36340) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX162 rho = seg34AccX161 rho - Bool.toZMod bit * (seg34AccX161 rho - rho 36346) := by
      have hd : rho 36348 = Bool.toZMod bit * (rho 36346 - seg34AccX161 rho) := by
        rw [← hbit]
        unfold seg34AccX161
        linear_combination -r5076
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY162 rho = seg34AccY161 rho - Bool.toZMod bit * (seg34AccY161 rho - rho 36347) := by
      have hd : rho 36349 = Bool.toZMod bit * (rho 36347 - seg34AccY161 rho) := by
        rw [← hbit]
        unfold seg34AccY161
        linear_combination -r5077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36339 * rho 36340 = rho 36350 := by linear_combination r5078
    have hd1 : rho 36339 * rho 36339 = rho 36351 := by linear_combination r5079
    have hd2 : rho 36340 * rho 36340 = rho 36352 := by linear_combination r5080
    have hd3 : rho 36353 * (rho 36340 * rho 36340 + rho 36339 * rho 36339 * (-1)) = 2 * (rho 36339 * rho 36340) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 36354 * (2 - (rho 36340 * rho 36340 + rho 36339 * rho 36339 * (-1))) = rho 36340 * rho 36340 - rho 36339 * rho 36339 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX161 rho : Seg34.F), (seg34AccY161 rho : Seg34.F)⟩
      ⟨(rho 36339 : Seg34.F), (rho 36340 : Seg34.F)⟩
      ⟨(rho 36346 : Seg34.F), (rho 36347 : Seg34.F)⟩
      ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
      ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung161

theorem seg34_rows162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5083 rho ∧ Seg34.relationRow5084 rho ∧ Seg34.relationRow5085 rho ∧ Seg34.relationRow5086 rho ∧ Seg34.relationRow5087 rho ∧ Seg34.relationRow5088 rho ∧ Seg34.relationRow5089 rho ∧ Seg34.relationRow5090 rho ∧ Seg34.relationRow5091 rho ∧ Seg34.relationRow5092 rho ∧ Seg34.relationRow5093 rho ∧ Seg34.relationRow5094 rho ∧ Seg34.relationRow5095 rho ∧ Seg34.relationRow5096 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩

theorem seg34_rung162 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34154 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩ := by
  obtain ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩ := seg34_rows162 rho h
  unfold Seg34.relationRow5083 at r5083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083
  unfold Seg34.relationRow5084 at r5084
  unfold Seg34.relationRow5085 at r5085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5085
  unfold Seg34.relationRow5086 at r5086
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5086
  unfold Seg34.relationRow5087 at r5087
  unfold Seg34.relationRow5088 at r5088
  unfold Seg34.relationRow5089 at r5089
  unfold Seg34.relationRow5090 at r5090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090
  unfold Seg34.relationRow5091 at r5091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091
  unfold Seg34.relationRow5092 at r5092
  unfold Seg34.relationRow5093 at r5093
  unfold Seg34.relationRow5094 at r5094
  unfold Seg34.relationRow5095 at r5095
  unfold Seg34.relationRow5096 at r5096
  have hrung162 (bit : Bool) (hbit : rho 34154 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
        ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩ := by
    have hnextx : seg34AccX163 rho = seg34AccX162 rho + rho 36362 := by
      unfold seg34AccX163 seg34AccX162
      ring
    have hnexty : seg34AccY163 rho = seg34AccY162 rho + rho 36363 := by
      unfold seg34AccY163 seg34AccY162
      ring
    have hsum : seg34AccX162 rho + seg34AccY162 rho = rho 36355 := by
      unfold seg34AccX162 seg34AccY162
      linear_combination r5083
    have ha0 : (rho 36353 + rho 36354) * (seg34AccX162 rho + seg34AccY162 rho) = rho 36356 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 36354 * seg34AccX162 rho = rho 36357 := by
      unfold seg34AccX162
      linear_combination r5085
    have ha2 : rho 36353 * seg34AccY162 rho = rho 36358 := by
      unfold seg34AccY162
      linear_combination r5086
    have ha3 : 3021 * rho 36357 * rho 36358 = rho 36359 := by
      linear_combination r5087
    have ha4 : rho 36360 * (1 + rho 36359) = rho 36357 + rho 36358 := by
      linear_combination r5088
    have ha5 : rho 36361 * (1 - rho 36359) = rho 36356 - rho 36357 - rho 36358 := by
      linear_combination r5089
    have haddx :
        rho 36360 * (1 + 3021 * (rho 36354 * seg34AccX162 rho) * (rho 36353 * seg34AccY162 rho)) =
          rho 36354 * seg34AccX162 rho + rho 36353 * seg34AccY162 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36361 * (1 - 3021 * (rho 36354 * seg34AccX162 rho) * (rho 36353 * seg34AccY162 rho)) =
          (-1) * (rho 36354 * seg34AccX162 rho) - rho 36353 * seg34AccY162 rho +
            (seg34AccY162 rho - seg34AccX162 rho * (-1)) * (rho 36353 + rho 36354) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36361 * (1 - rho 36359) = rho 36356 - rho 36357 - rho 36358 := ha5
        _ = (-1) * rho 36357 - rho 36358 + (seg34AccY162 rho - seg34AccX162 rho * (-1)) * (rho 36353 + rho 36354) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX163 rho = seg34AccX162 rho - Bool.toZMod bit * (seg34AccX162 rho - rho 36360) := by
      have hd : rho 36362 = Bool.toZMod bit * (rho 36360 - seg34AccX162 rho) := by
        rw [← hbit]
        unfold seg34AccX162
        linear_combination -r5090
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY163 rho = seg34AccY162 rho - Bool.toZMod bit * (seg34AccY162 rho - rho 36361) := by
      have hd : rho 36363 = Bool.toZMod bit * (rho 36361 - seg34AccY162 rho) := by
        rw [← hbit]
        unfold seg34AccY162
        linear_combination -r5091
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36353 * rho 36354 = rho 36364 := by linear_combination r5092
    have hd1 : rho 36353 * rho 36353 = rho 36365 := by linear_combination r5093
    have hd2 : rho 36354 * rho 36354 = rho 36366 := by linear_combination r5094
    have hd3 : rho 36367 * (rho 36354 * rho 36354 + rho 36353 * rho 36353 * (-1)) = 2 * (rho 36353 * rho 36354) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 36368 * (2 - (rho 36354 * rho 36354 + rho 36353 * rho 36353 * (-1))) = rho 36354 * rho 36354 - rho 36353 * rho 36353 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX162 rho : Seg34.F), (seg34AccY162 rho : Seg34.F)⟩
      ⟨(rho 36353 : Seg34.F), (rho 36354 : Seg34.F)⟩
      ⟨(rho 36360 : Seg34.F), (rho 36361 : Seg34.F)⟩
      ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
      ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung162

theorem seg34_rows163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5097 rho ∧ Seg34.relationRow5098 rho ∧ Seg34.relationRow5099 rho ∧ Seg34.relationRow5100 rho ∧ Seg34.relationRow5101 rho ∧ Seg34.relationRow5102 rho ∧ Seg34.relationRow5103 rho ∧ Seg34.relationRow5104 rho ∧ Seg34.relationRow5105 rho ∧ Seg34.relationRow5106 rho ∧ Seg34.relationRow5107 rho ∧ Seg34.relationRow5108 rho ∧ Seg34.relationRow5109 rho ∧ Seg34.relationRow5110 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩

theorem seg34_rung163 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34155 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩ := by
  obtain ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩ := seg34_rows163 rho h
  unfold Seg34.relationRow5097 at r5097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097
  unfold Seg34.relationRow5098 at r5098
  unfold Seg34.relationRow5099 at r5099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5099
  unfold Seg34.relationRow5100 at r5100
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5100
  unfold Seg34.relationRow5101 at r5101
  unfold Seg34.relationRow5102 at r5102
  unfold Seg34.relationRow5103 at r5103
  unfold Seg34.relationRow5104 at r5104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104
  unfold Seg34.relationRow5105 at r5105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105
  unfold Seg34.relationRow5106 at r5106
  unfold Seg34.relationRow5107 at r5107
  unfold Seg34.relationRow5108 at r5108
  unfold Seg34.relationRow5109 at r5109
  unfold Seg34.relationRow5110 at r5110
  have hrung163 (bit : Bool) (hbit : rho 34155 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
        ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩ := by
    have hnextx : seg34AccX164 rho = seg34AccX163 rho + rho 36376 := by
      unfold seg34AccX164 seg34AccX163
      ring
    have hnexty : seg34AccY164 rho = seg34AccY163 rho + rho 36377 := by
      unfold seg34AccY164 seg34AccY163
      ring
    have hsum : seg34AccX163 rho + seg34AccY163 rho = rho 36369 := by
      unfold seg34AccX163 seg34AccY163
      linear_combination r5097
    have ha0 : (rho 36367 + rho 36368) * (seg34AccX163 rho + seg34AccY163 rho) = rho 36370 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 36368 * seg34AccX163 rho = rho 36371 := by
      unfold seg34AccX163
      linear_combination r5099
    have ha2 : rho 36367 * seg34AccY163 rho = rho 36372 := by
      unfold seg34AccY163
      linear_combination r5100
    have ha3 : 3021 * rho 36371 * rho 36372 = rho 36373 := by
      linear_combination r5101
    have ha4 : rho 36374 * (1 + rho 36373) = rho 36371 + rho 36372 := by
      linear_combination r5102
    have ha5 : rho 36375 * (1 - rho 36373) = rho 36370 - rho 36371 - rho 36372 := by
      linear_combination r5103
    have haddx :
        rho 36374 * (1 + 3021 * (rho 36368 * seg34AccX163 rho) * (rho 36367 * seg34AccY163 rho)) =
          rho 36368 * seg34AccX163 rho + rho 36367 * seg34AccY163 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36375 * (1 - 3021 * (rho 36368 * seg34AccX163 rho) * (rho 36367 * seg34AccY163 rho)) =
          (-1) * (rho 36368 * seg34AccX163 rho) - rho 36367 * seg34AccY163 rho +
            (seg34AccY163 rho - seg34AccX163 rho * (-1)) * (rho 36367 + rho 36368) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36375 * (1 - rho 36373) = rho 36370 - rho 36371 - rho 36372 := ha5
        _ = (-1) * rho 36371 - rho 36372 + (seg34AccY163 rho - seg34AccX163 rho * (-1)) * (rho 36367 + rho 36368) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX164 rho = seg34AccX163 rho - Bool.toZMod bit * (seg34AccX163 rho - rho 36374) := by
      have hd : rho 36376 = Bool.toZMod bit * (rho 36374 - seg34AccX163 rho) := by
        rw [← hbit]
        unfold seg34AccX163
        linear_combination -r5104
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY164 rho = seg34AccY163 rho - Bool.toZMod bit * (seg34AccY163 rho - rho 36375) := by
      have hd : rho 36377 = Bool.toZMod bit * (rho 36375 - seg34AccY163 rho) := by
        rw [← hbit]
        unfold seg34AccY163
        linear_combination -r5105
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36367 * rho 36368 = rho 36378 := by linear_combination r5106
    have hd1 : rho 36367 * rho 36367 = rho 36379 := by linear_combination r5107
    have hd2 : rho 36368 * rho 36368 = rho 36380 := by linear_combination r5108
    have hd3 : rho 36381 * (rho 36368 * rho 36368 + rho 36367 * rho 36367 * (-1)) = 2 * (rho 36367 * rho 36368) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 36382 * (2 - (rho 36368 * rho 36368 + rho 36367 * rho 36367 * (-1))) = rho 36368 * rho 36368 - rho 36367 * rho 36367 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX163 rho : Seg34.F), (seg34AccY163 rho : Seg34.F)⟩
      ⟨(rho 36367 : Seg34.F), (rho 36368 : Seg34.F)⟩
      ⟨(rho 36374 : Seg34.F), (rho 36375 : Seg34.F)⟩
      ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
      ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung163

theorem seg34_rows164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5111 rho ∧ Seg34.relationRow5112 rho ∧ Seg34.relationRow5113 rho ∧ Seg34.relationRow5114 rho ∧ Seg34.relationRow5115 rho ∧ Seg34.relationRow5116 rho ∧ Seg34.relationRow5117 rho ∧ Seg34.relationRow5118 rho ∧ Seg34.relationRow5119 rho ∧ Seg34.relationRow5120 rho ∧ Seg34.relationRow5121 rho ∧ Seg34.relationRow5122 rho ∧ Seg34.relationRow5123 rho ∧ Seg34.relationRow5124 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg34.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩

theorem seg34_rung164 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34156 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩ := by
  obtain ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩ := seg34_rows164 rho h
  unfold Seg34.relationRow5111 at r5111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5111
  unfold Seg34.relationRow5112 at r5112
  unfold Seg34.relationRow5113 at r5113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5113
  unfold Seg34.relationRow5114 at r5114
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5114
  unfold Seg34.relationRow5115 at r5115
  unfold Seg34.relationRow5116 at r5116
  unfold Seg34.relationRow5117 at r5117
  unfold Seg34.relationRow5118 at r5118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118
  unfold Seg34.relationRow5119 at r5119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5119
  unfold Seg34.relationRow5120 at r5120
  unfold Seg34.relationRow5121 at r5121
  unfold Seg34.relationRow5122 at r5122
  unfold Seg34.relationRow5123 at r5123
  unfold Seg34.relationRow5124 at r5124
  have hrung164 (bit : Bool) (hbit : rho 34156 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
        ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
        ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
        ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩ := by
    have hnextx : seg34AccX165 rho = seg34AccX164 rho + rho 36390 := by
      unfold seg34AccX165 seg34AccX164
      ring
    have hnexty : seg34AccY165 rho = seg34AccY164 rho + rho 36391 := by
      unfold seg34AccY165 seg34AccY164
      ring
    have hsum : seg34AccX164 rho + seg34AccY164 rho = rho 36383 := by
      unfold seg34AccX164 seg34AccY164
      linear_combination r5111
    have ha0 : (rho 36381 + rho 36382) * (seg34AccX164 rho + seg34AccY164 rho) = rho 36384 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 36382 * seg34AccX164 rho = rho 36385 := by
      unfold seg34AccX164
      linear_combination r5113
    have ha2 : rho 36381 * seg34AccY164 rho = rho 36386 := by
      unfold seg34AccY164
      linear_combination r5114
    have ha3 : 3021 * rho 36385 * rho 36386 = rho 36387 := by
      linear_combination r5115
    have ha4 : rho 36388 * (1 + rho 36387) = rho 36385 + rho 36386 := by
      linear_combination r5116
    have ha5 : rho 36389 * (1 - rho 36387) = rho 36384 - rho 36385 - rho 36386 := by
      linear_combination r5117
    have haddx :
        rho 36388 * (1 + 3021 * (rho 36382 * seg34AccX164 rho) * (rho 36381 * seg34AccY164 rho)) =
          rho 36382 * seg34AccX164 rho + rho 36381 * seg34AccY164 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36389 * (1 - 3021 * (rho 36382 * seg34AccX164 rho) * (rho 36381 * seg34AccY164 rho)) =
          (-1) * (rho 36382 * seg34AccX164 rho) - rho 36381 * seg34AccY164 rho +
            (seg34AccY164 rho - seg34AccX164 rho * (-1)) * (rho 36381 + rho 36382) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36389 * (1 - rho 36387) = rho 36384 - rho 36385 - rho 36386 := ha5
        _ = (-1) * rho 36385 - rho 36386 + (seg34AccY164 rho - seg34AccX164 rho * (-1)) * (rho 36381 + rho 36382) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX165 rho = seg34AccX164 rho - Bool.toZMod bit * (seg34AccX164 rho - rho 36388) := by
      have hd : rho 36390 = Bool.toZMod bit * (rho 36388 - seg34AccX164 rho) := by
        rw [← hbit]
        unfold seg34AccX164
        linear_combination -r5118
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY165 rho = seg34AccY164 rho - Bool.toZMod bit * (seg34AccY164 rho - rho 36389) := by
      have hd : rho 36391 = Bool.toZMod bit * (rho 36389 - seg34AccY164 rho) := by
        rw [← hbit]
        unfold seg34AccY164
        linear_combination -r5119
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36381 * rho 36382 = rho 36392 := by linear_combination r5120
    have hd1 : rho 36381 * rho 36381 = rho 36393 := by linear_combination r5121
    have hd2 : rho 36382 * rho 36382 = rho 36394 := by linear_combination r5122
    have hd3 : rho 36395 * (rho 36382 * rho 36382 + rho 36381 * rho 36381 * (-1)) = 2 * (rho 36381 * rho 36382) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 36396 * (2 - (rho 36382 * rho 36382 + rho 36381 * rho 36381 * (-1))) = rho 36382 * rho 36382 - rho 36381 * rho 36381 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX164 rho : Seg34.F), (seg34AccY164 rho : Seg34.F)⟩
      ⟨(rho 36381 : Seg34.F), (rho 36382 : Seg34.F)⟩
      ⟨(rho 36388 : Seg34.F), (rho 36389 : Seg34.F)⟩
      ⟨(seg34AccX165 rho : Seg34.F), (seg34AccY165 rho : Seg34.F)⟩
      ⟨(rho 36395 : Seg34.F), (rho 36396 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung164

theorem seg34_hstep_c14 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 154 ≤ i → i < 165 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung154 rho h bits[154]! (hbitAt 154 (by omega)) hacc hcur
  · exact seg34_rung155 rho h bits[155]! (hbitAt 155 (by omega)) hacc hcur
  · exact seg34_rung156 rho h bits[156]! (hbitAt 156 (by omega)) hacc hcur
  · exact seg34_rung157 rho h bits[157]! (hbitAt 157 (by omega)) hacc hcur
  · exact seg34_rung158 rho h bits[158]! (hbitAt 158 (by omega)) hacc hcur
  · exact seg34_rung159 rho h bits[159]! (hbitAt 159 (by omega)) hacc hcur
  · exact seg34_rung160 rho h bits[160]! (hbitAt 160 (by omega)) hacc hcur
  · exact seg34_rung161 rho h bits[161]! (hbitAt 161 (by omega)) hacc hcur
  · exact seg34_rung162 rho h bits[162]! (hbitAt 162 (by omega)) hacc hcur
  · exact seg34_rung163 rho h bits[163]! (hbitAt 163 (by omega)) hacc hcur
  · exact seg34_rung164 rho h bits[164]! (hbitAt 164 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
