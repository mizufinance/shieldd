import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3966 rho ∧ Seg34.relationRow3967 rho ∧ Seg34.relationRow3968 rho ∧ Seg34.relationRow3969 rho ∧ Seg34.relationRow3970 rho ∧ Seg34.relationRow3971 rho ∧ Seg34.relationRow3972 rho ∧ Seg34.relationRow3973 rho ∧ Seg34.relationRow3974 rho ∧ Seg34.relationRow3975 rho ∧ Seg34.relationRow3976 rho ∧ Seg34.relationRow3977 rho ∧ Seg34.relationRow3978 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩

theorem seg34_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩ := by
  obtain ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩ := seg34_rows77 rho h
  unfold Seg34.relationRow3966 at r3966
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3966
  unfold Seg34.relationRow3967 at r3967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967
  unfold Seg34.relationRow3968 at r3968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3968
  unfold Seg34.relationRow3969 at r3969
  unfold Seg34.relationRow3970 at r3970
  unfold Seg34.relationRow3971 at r3971
  unfold Seg34.relationRow3972 at r3972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3972
  unfold Seg34.relationRow3973 at r3973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3973
  unfold Seg34.relationRow3974 at r3974
  unfold Seg34.relationRow3975 at r3975
  unfold Seg34.relationRow3976 at r3976
  unfold Seg34.relationRow3977 at r3977
  unfold Seg34.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 34069 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
        ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩ := by
    have hnextx : seg34AccX78 rho = seg34AccX77 rho + rho 35244 := by
      unfold seg34AccX78 seg34AccX77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 77]
      ring
    have hnexty : seg34AccY78 rho = seg34AccY77 rho + rho 35245 := by
      unfold seg34AccY78 seg34AccY77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 77]
      ring
    have ha0 : (rho 35236 + rho 35237) * (seg34AccX77 rho + seg34AccY77 rho) = rho 35238 := by
      unfold seg34AccX77 seg34AccY77
      linear_combination r3966
    have ha1 : rho 35237 * seg34AccX77 rho = rho 35239 := by
      unfold seg34AccX77
      linear_combination r3967
    have ha2 : rho 35236 * seg34AccY77 rho = rho 35240 := by
      unfold seg34AccY77
      linear_combination r3968
    have ha3 : 3021 * rho 35239 * rho 35240 = rho 35241 := by
      linear_combination r3969
    have ha4 : rho 35242 * (1 + rho 35241) = rho 35239 + rho 35240 := by
      linear_combination r3970
    have ha5 : rho 35243 * (1 - rho 35241) = rho 35238 - rho 35239 - rho 35240 := by
      linear_combination r3971
    have haddx :
        rho 35242 * (1 + 3021 * (rho 35237 * seg34AccX77 rho) * (rho 35236 * seg34AccY77 rho)) =
          rho 35237 * seg34AccX77 rho + rho 35236 * seg34AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35243 * (1 - 3021 * (rho 35237 * seg34AccX77 rho) * (rho 35236 * seg34AccY77 rho)) =
          (-1) * (rho 35237 * seg34AccX77 rho) - rho 35236 * seg34AccY77 rho +
            (seg34AccY77 rho - seg34AccX77 rho * (-1)) * (rho 35236 + rho 35237) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35243 * (1 - rho 35241) = rho 35238 - rho 35239 - rho 35240 := ha5
        _ = (-1) * rho 35239 - rho 35240 + (seg34AccY77 rho - seg34AccX77 rho * (-1)) * (rho 35236 + rho 35237) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX78 rho = seg34AccX77 rho - Bool.toZMod bit * (seg34AccX77 rho - rho 35242) := by
      have hd : rho 35244 = Bool.toZMod bit * (rho 35242 - seg34AccX77 rho) := by
        rw [← hbit]
        unfold seg34AccX77
        linear_combination -r3972
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY78 rho = seg34AccY77 rho - Bool.toZMod bit * (seg34AccY77 rho - rho 35243) := by
      have hd : rho 35245 = Bool.toZMod bit * (rho 35243 - seg34AccY77 rho) := by
        rw [← hbit]
        unfold seg34AccY77
        linear_combination -r3973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35236 * rho 35237 = rho 35246 := by linear_combination r3974
    have hd1 : rho 35236 * rho 35236 = rho 35247 := by linear_combination r3975
    have hd2 : rho 35237 * rho 35237 = rho 35248 := by linear_combination r3976
    have hd3 : rho 35249 * (rho 35237 * rho 35237 + rho 35236 * rho 35236 * (-1)) = 2 * (rho 35236 * rho 35237) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 35250 * (2 - (rho 35237 * rho 35237 + rho 35236 * rho 35236 * (-1))) = rho 35237 * rho 35237 - rho 35236 * rho 35236 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX77 rho : Seg34.F), (seg34AccY77 rho : Seg34.F)⟩
      ⟨(rho 35236 : Seg34.F), (rho 35237 : Seg34.F)⟩
      ⟨(rho 35242 : Seg34.F), (rho 35243 : Seg34.F)⟩
      ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
      ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg34_rows78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3979 rho ∧ Seg34.relationRow3980 rho ∧ Seg34.relationRow3981 rho ∧ Seg34.relationRow3982 rho ∧ Seg34.relationRow3983 rho ∧ Seg34.relationRow3984 rho ∧ Seg34.relationRow3985 rho ∧ Seg34.relationRow3986 rho ∧ Seg34.relationRow3987 rho ∧ Seg34.relationRow3988 rho ∧ Seg34.relationRow3989 rho ∧ Seg34.relationRow3990 rho ∧ Seg34.relationRow3991 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  exact ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩

theorem seg34_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩ := by
  obtain ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩ := seg34_rows78 rho h
  unfold Seg34.relationRow3979 at r3979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3979
  unfold Seg34.relationRow3980 at r3980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980
  unfold Seg34.relationRow3981 at r3981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3981
  unfold Seg34.relationRow3982 at r3982
  unfold Seg34.relationRow3983 at r3983
  unfold Seg34.relationRow3984 at r3984
  unfold Seg34.relationRow3985 at r3985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3985
  unfold Seg34.relationRow3986 at r3986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3986
  unfold Seg34.relationRow3987 at r3987
  unfold Seg34.relationRow3988 at r3988
  unfold Seg34.relationRow3989 at r3989
  unfold Seg34.relationRow3990 at r3990
  unfold Seg34.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 34070 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
        ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩ := by
    have hnextx : seg34AccX79 rho = seg34AccX78 rho + rho 35257 := by
      unfold seg34AccX79 seg34AccX78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 78]
      ring
    have hnexty : seg34AccY79 rho = seg34AccY78 rho + rho 35258 := by
      unfold seg34AccY79 seg34AccY78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 78]
      ring
    have ha0 : (rho 35249 + rho 35250) * (seg34AccX78 rho + seg34AccY78 rho) = rho 35251 := by
      unfold seg34AccX78 seg34AccY78
      linear_combination r3979
    have ha1 : rho 35250 * seg34AccX78 rho = rho 35252 := by
      unfold seg34AccX78
      linear_combination r3980
    have ha2 : rho 35249 * seg34AccY78 rho = rho 35253 := by
      unfold seg34AccY78
      linear_combination r3981
    have ha3 : 3021 * rho 35252 * rho 35253 = rho 35254 := by
      linear_combination r3982
    have ha4 : rho 35255 * (1 + rho 35254) = rho 35252 + rho 35253 := by
      linear_combination r3983
    have ha5 : rho 35256 * (1 - rho 35254) = rho 35251 - rho 35252 - rho 35253 := by
      linear_combination r3984
    have haddx :
        rho 35255 * (1 + 3021 * (rho 35250 * seg34AccX78 rho) * (rho 35249 * seg34AccY78 rho)) =
          rho 35250 * seg34AccX78 rho + rho 35249 * seg34AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35256 * (1 - 3021 * (rho 35250 * seg34AccX78 rho) * (rho 35249 * seg34AccY78 rho)) =
          (-1) * (rho 35250 * seg34AccX78 rho) - rho 35249 * seg34AccY78 rho +
            (seg34AccY78 rho - seg34AccX78 rho * (-1)) * (rho 35249 + rho 35250) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35256 * (1 - rho 35254) = rho 35251 - rho 35252 - rho 35253 := ha5
        _ = (-1) * rho 35252 - rho 35253 + (seg34AccY78 rho - seg34AccX78 rho * (-1)) * (rho 35249 + rho 35250) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX79 rho = seg34AccX78 rho - Bool.toZMod bit * (seg34AccX78 rho - rho 35255) := by
      have hd : rho 35257 = Bool.toZMod bit * (rho 35255 - seg34AccX78 rho) := by
        rw [← hbit]
        unfold seg34AccX78
        linear_combination -r3985
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY79 rho = seg34AccY78 rho - Bool.toZMod bit * (seg34AccY78 rho - rho 35256) := by
      have hd : rho 35258 = Bool.toZMod bit * (rho 35256 - seg34AccY78 rho) := by
        rw [← hbit]
        unfold seg34AccY78
        linear_combination -r3986
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35249 * rho 35250 = rho 35259 := by linear_combination r3987
    have hd1 : rho 35249 * rho 35249 = rho 35260 := by linear_combination r3988
    have hd2 : rho 35250 * rho 35250 = rho 35261 := by linear_combination r3989
    have hd3 : rho 35262 * (rho 35250 * rho 35250 + rho 35249 * rho 35249 * (-1)) = 2 * (rho 35249 * rho 35250) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 35263 * (2 - (rho 35250 * rho 35250 + rho 35249 * rho 35249 * (-1))) = rho 35250 * rho 35250 - rho 35249 * rho 35249 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX78 rho : Seg34.F), (seg34AccY78 rho : Seg34.F)⟩
      ⟨(rho 35249 : Seg34.F), (rho 35250 : Seg34.F)⟩
      ⟨(rho 35255 : Seg34.F), (rho 35256 : Seg34.F)⟩
      ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
      ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg34_rows79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow3992 rho ∧ Seg34.relationRow3993 rho ∧ Seg34.relationRow3994 rho ∧ Seg34.relationRow3995 rho ∧ Seg34.relationRow3996 rho ∧ Seg34.relationRow3997 rho ∧ Seg34.relationRow3998 rho ∧ Seg34.relationRow3999 rho ∧ Seg34.relationRow4000 rho ∧ Seg34.relationRow4001 rho ∧ Seg34.relationRow4002 rho ∧ Seg34.relationRow4003 rho ∧ Seg34.relationRow4004 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩

theorem seg34_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩ := by
  obtain ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩ := seg34_rows79 rho h
  unfold Seg34.relationRow3992 at r3992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3992
  unfold Seg34.relationRow3993 at r3993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993
  unfold Seg34.relationRow3994 at r3994
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3994
  unfold Seg34.relationRow3995 at r3995
  unfold Seg34.relationRow3996 at r3996
  unfold Seg34.relationRow3997 at r3997
  unfold Seg34.relationRow3998 at r3998
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3998
  unfold Seg34.relationRow3999 at r3999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3999
  unfold Seg34.relationRow4000 at r4000
  unfold Seg34.relationRow4001 at r4001
  unfold Seg34.relationRow4002 at r4002
  unfold Seg34.relationRow4003 at r4003
  unfold Seg34.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 34071 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
        ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩ := by
    have hnextx : seg34AccX80 rho = seg34AccX79 rho + rho 35270 := by
      unfold seg34AccX80 seg34AccX79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 79]
      ring
    have hnexty : seg34AccY80 rho = seg34AccY79 rho + rho 35271 := by
      unfold seg34AccY80 seg34AccY79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 79]
      ring
    have ha0 : (rho 35262 + rho 35263) * (seg34AccX79 rho + seg34AccY79 rho) = rho 35264 := by
      unfold seg34AccX79 seg34AccY79
      linear_combination r3992
    have ha1 : rho 35263 * seg34AccX79 rho = rho 35265 := by
      unfold seg34AccX79
      linear_combination r3993
    have ha2 : rho 35262 * seg34AccY79 rho = rho 35266 := by
      unfold seg34AccY79
      linear_combination r3994
    have ha3 : 3021 * rho 35265 * rho 35266 = rho 35267 := by
      linear_combination r3995
    have ha4 : rho 35268 * (1 + rho 35267) = rho 35265 + rho 35266 := by
      linear_combination r3996
    have ha5 : rho 35269 * (1 - rho 35267) = rho 35264 - rho 35265 - rho 35266 := by
      linear_combination r3997
    have haddx :
        rho 35268 * (1 + 3021 * (rho 35263 * seg34AccX79 rho) * (rho 35262 * seg34AccY79 rho)) =
          rho 35263 * seg34AccX79 rho + rho 35262 * seg34AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35269 * (1 - 3021 * (rho 35263 * seg34AccX79 rho) * (rho 35262 * seg34AccY79 rho)) =
          (-1) * (rho 35263 * seg34AccX79 rho) - rho 35262 * seg34AccY79 rho +
            (seg34AccY79 rho - seg34AccX79 rho * (-1)) * (rho 35262 + rho 35263) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35269 * (1 - rho 35267) = rho 35264 - rho 35265 - rho 35266 := ha5
        _ = (-1) * rho 35265 - rho 35266 + (seg34AccY79 rho - seg34AccX79 rho * (-1)) * (rho 35262 + rho 35263) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX80 rho = seg34AccX79 rho - Bool.toZMod bit * (seg34AccX79 rho - rho 35268) := by
      have hd : rho 35270 = Bool.toZMod bit * (rho 35268 - seg34AccX79 rho) := by
        rw [← hbit]
        unfold seg34AccX79
        linear_combination -r3998
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY80 rho = seg34AccY79 rho - Bool.toZMod bit * (seg34AccY79 rho - rho 35269) := by
      have hd : rho 35271 = Bool.toZMod bit * (rho 35269 - seg34AccY79 rho) := by
        rw [← hbit]
        unfold seg34AccY79
        linear_combination -r3999
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35262 * rho 35263 = rho 35272 := by linear_combination r4000
    have hd1 : rho 35262 * rho 35262 = rho 35273 := by linear_combination r4001
    have hd2 : rho 35263 * rho 35263 = rho 35274 := by linear_combination r4002
    have hd3 : rho 35275 * (rho 35263 * rho 35263 + rho 35262 * rho 35262 * (-1)) = 2 * (rho 35262 * rho 35263) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 35276 * (2 - (rho 35263 * rho 35263 + rho 35262 * rho 35262 * (-1))) = rho 35263 * rho 35263 - rho 35262 * rho 35262 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX79 rho : Seg34.F), (seg34AccY79 rho : Seg34.F)⟩
      ⟨(rho 35262 : Seg34.F), (rho 35263 : Seg34.F)⟩
      ⟨(rho 35268 : Seg34.F), (rho 35269 : Seg34.F)⟩
      ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
      ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg34_rows80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4005 rho ∧ Seg34.relationRow4006 rho ∧ Seg34.relationRow4007 rho ∧ Seg34.relationRow4008 rho ∧ Seg34.relationRow4009 rho ∧ Seg34.relationRow4010 rho ∧ Seg34.relationRow4011 rho ∧ Seg34.relationRow4012 rho ∧ Seg34.relationRow4013 rho ∧ Seg34.relationRow4014 rho ∧ Seg34.relationRow4015 rho ∧ Seg34.relationRow4016 rho ∧ Seg34.relationRow4017 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩

theorem seg34_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩ := by
  obtain ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩ := seg34_rows80 rho h
  unfold Seg34.relationRow4005 at r4005
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4005
  unfold Seg34.relationRow4006 at r4006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006
  unfold Seg34.relationRow4007 at r4007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4007
  unfold Seg34.relationRow4008 at r4008
  unfold Seg34.relationRow4009 at r4009
  unfold Seg34.relationRow4010 at r4010
  unfold Seg34.relationRow4011 at r4011
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4011
  unfold Seg34.relationRow4012 at r4012
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4012
  unfold Seg34.relationRow4013 at r4013
  unfold Seg34.relationRow4014 at r4014
  unfold Seg34.relationRow4015 at r4015
  unfold Seg34.relationRow4016 at r4016
  unfold Seg34.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 34072 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
        ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩ := by
    have hnextx : seg34AccX81 rho = seg34AccX80 rho + rho 35283 := by
      unfold seg34AccX81 seg34AccX80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 80]
      ring
    have hnexty : seg34AccY81 rho = seg34AccY80 rho + rho 35284 := by
      unfold seg34AccY81 seg34AccY80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 80]
      ring
    have ha0 : (rho 35275 + rho 35276) * (seg34AccX80 rho + seg34AccY80 rho) = rho 35277 := by
      unfold seg34AccX80 seg34AccY80
      linear_combination r4005
    have ha1 : rho 35276 * seg34AccX80 rho = rho 35278 := by
      unfold seg34AccX80
      linear_combination r4006
    have ha2 : rho 35275 * seg34AccY80 rho = rho 35279 := by
      unfold seg34AccY80
      linear_combination r4007
    have ha3 : 3021 * rho 35278 * rho 35279 = rho 35280 := by
      linear_combination r4008
    have ha4 : rho 35281 * (1 + rho 35280) = rho 35278 + rho 35279 := by
      linear_combination r4009
    have ha5 : rho 35282 * (1 - rho 35280) = rho 35277 - rho 35278 - rho 35279 := by
      linear_combination r4010
    have haddx :
        rho 35281 * (1 + 3021 * (rho 35276 * seg34AccX80 rho) * (rho 35275 * seg34AccY80 rho)) =
          rho 35276 * seg34AccX80 rho + rho 35275 * seg34AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35282 * (1 - 3021 * (rho 35276 * seg34AccX80 rho) * (rho 35275 * seg34AccY80 rho)) =
          (-1) * (rho 35276 * seg34AccX80 rho) - rho 35275 * seg34AccY80 rho +
            (seg34AccY80 rho - seg34AccX80 rho * (-1)) * (rho 35275 + rho 35276) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35282 * (1 - rho 35280) = rho 35277 - rho 35278 - rho 35279 := ha5
        _ = (-1) * rho 35278 - rho 35279 + (seg34AccY80 rho - seg34AccX80 rho * (-1)) * (rho 35275 + rho 35276) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX81 rho = seg34AccX80 rho - Bool.toZMod bit * (seg34AccX80 rho - rho 35281) := by
      have hd : rho 35283 = Bool.toZMod bit * (rho 35281 - seg34AccX80 rho) := by
        rw [← hbit]
        unfold seg34AccX80
        linear_combination -r4011
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY81 rho = seg34AccY80 rho - Bool.toZMod bit * (seg34AccY80 rho - rho 35282) := by
      have hd : rho 35284 = Bool.toZMod bit * (rho 35282 - seg34AccY80 rho) := by
        rw [← hbit]
        unfold seg34AccY80
        linear_combination -r4012
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35275 * rho 35276 = rho 35285 := by linear_combination r4013
    have hd1 : rho 35275 * rho 35275 = rho 35286 := by linear_combination r4014
    have hd2 : rho 35276 * rho 35276 = rho 35287 := by linear_combination r4015
    have hd3 : rho 35288 * (rho 35276 * rho 35276 + rho 35275 * rho 35275 * (-1)) = 2 * (rho 35275 * rho 35276) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 35289 * (2 - (rho 35276 * rho 35276 + rho 35275 * rho 35275 * (-1))) = rho 35276 * rho 35276 - rho 35275 * rho 35275 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX80 rho : Seg34.F), (seg34AccY80 rho : Seg34.F)⟩
      ⟨(rho 35275 : Seg34.F), (rho 35276 : Seg34.F)⟩
      ⟨(rho 35281 : Seg34.F), (rho 35282 : Seg34.F)⟩
      ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
      ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg34_rows81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4018 rho ∧ Seg34.relationRow4019 rho ∧ Seg34.relationRow4020 rho ∧ Seg34.relationRow4021 rho ∧ Seg34.relationRow4022 rho ∧ Seg34.relationRow4023 rho ∧ Seg34.relationRow4024 rho ∧ Seg34.relationRow4025 rho ∧ Seg34.relationRow4026 rho ∧ Seg34.relationRow4027 rho ∧ Seg34.relationRow4028 rho ∧ Seg34.relationRow4029 rho ∧ Seg34.relationRow4030 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩

theorem seg34_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩ := by
  obtain ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩ := seg34_rows81 rho h
  unfold Seg34.relationRow4018 at r4018
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4018
  unfold Seg34.relationRow4019 at r4019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019
  unfold Seg34.relationRow4020 at r4020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4020
  unfold Seg34.relationRow4021 at r4021
  unfold Seg34.relationRow4022 at r4022
  unfold Seg34.relationRow4023 at r4023
  unfold Seg34.relationRow4024 at r4024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4024
  unfold Seg34.relationRow4025 at r4025
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4025
  unfold Seg34.relationRow4026 at r4026
  unfold Seg34.relationRow4027 at r4027
  unfold Seg34.relationRow4028 at r4028
  unfold Seg34.relationRow4029 at r4029
  unfold Seg34.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 34073 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
        ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩ := by
    have hnextx : seg34AccX82 rho = seg34AccX81 rho + rho 35296 := by
      unfold seg34AccX82 seg34AccX81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 81]
      ring
    have hnexty : seg34AccY82 rho = seg34AccY81 rho + rho 35297 := by
      unfold seg34AccY82 seg34AccY81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 81]
      ring
    have ha0 : (rho 35288 + rho 35289) * (seg34AccX81 rho + seg34AccY81 rho) = rho 35290 := by
      unfold seg34AccX81 seg34AccY81
      linear_combination r4018
    have ha1 : rho 35289 * seg34AccX81 rho = rho 35291 := by
      unfold seg34AccX81
      linear_combination r4019
    have ha2 : rho 35288 * seg34AccY81 rho = rho 35292 := by
      unfold seg34AccY81
      linear_combination r4020
    have ha3 : 3021 * rho 35291 * rho 35292 = rho 35293 := by
      linear_combination r4021
    have ha4 : rho 35294 * (1 + rho 35293) = rho 35291 + rho 35292 := by
      linear_combination r4022
    have ha5 : rho 35295 * (1 - rho 35293) = rho 35290 - rho 35291 - rho 35292 := by
      linear_combination r4023
    have haddx :
        rho 35294 * (1 + 3021 * (rho 35289 * seg34AccX81 rho) * (rho 35288 * seg34AccY81 rho)) =
          rho 35289 * seg34AccX81 rho + rho 35288 * seg34AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35295 * (1 - 3021 * (rho 35289 * seg34AccX81 rho) * (rho 35288 * seg34AccY81 rho)) =
          (-1) * (rho 35289 * seg34AccX81 rho) - rho 35288 * seg34AccY81 rho +
            (seg34AccY81 rho - seg34AccX81 rho * (-1)) * (rho 35288 + rho 35289) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35295 * (1 - rho 35293) = rho 35290 - rho 35291 - rho 35292 := ha5
        _ = (-1) * rho 35291 - rho 35292 + (seg34AccY81 rho - seg34AccX81 rho * (-1)) * (rho 35288 + rho 35289) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX82 rho = seg34AccX81 rho - Bool.toZMod bit * (seg34AccX81 rho - rho 35294) := by
      have hd : rho 35296 = Bool.toZMod bit * (rho 35294 - seg34AccX81 rho) := by
        rw [← hbit]
        unfold seg34AccX81
        linear_combination -r4024
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY82 rho = seg34AccY81 rho - Bool.toZMod bit * (seg34AccY81 rho - rho 35295) := by
      have hd : rho 35297 = Bool.toZMod bit * (rho 35295 - seg34AccY81 rho) := by
        rw [← hbit]
        unfold seg34AccY81
        linear_combination -r4025
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35288 * rho 35289 = rho 35298 := by linear_combination r4026
    have hd1 : rho 35288 * rho 35288 = rho 35299 := by linear_combination r4027
    have hd2 : rho 35289 * rho 35289 = rho 35300 := by linear_combination r4028
    have hd3 : rho 35301 * (rho 35289 * rho 35289 + rho 35288 * rho 35288 * (-1)) = 2 * (rho 35288 * rho 35289) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 35302 * (2 - (rho 35289 * rho 35289 + rho 35288 * rho 35288 * (-1))) = rho 35289 * rho 35289 - rho 35288 * rho 35288 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX81 rho : Seg34.F), (seg34AccY81 rho : Seg34.F)⟩
      ⟨(rho 35288 : Seg34.F), (rho 35289 : Seg34.F)⟩
      ⟨(rho 35294 : Seg34.F), (rho 35295 : Seg34.F)⟩
      ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
      ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg34_rows82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4031 rho ∧ Seg34.relationRow4032 rho ∧ Seg34.relationRow4033 rho ∧ Seg34.relationRow4034 rho ∧ Seg34.relationRow4035 rho ∧ Seg34.relationRow4036 rho ∧ Seg34.relationRow4037 rho ∧ Seg34.relationRow4038 rho ∧ Seg34.relationRow4039 rho ∧ Seg34.relationRow4040 rho ∧ Seg34.relationRow4041 rho ∧ Seg34.relationRow4042 rho ∧ Seg34.relationRow4043 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩

theorem seg34_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩ := by
  obtain ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩ := seg34_rows82 rho h
  unfold Seg34.relationRow4031 at r4031
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4031
  unfold Seg34.relationRow4032 at r4032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032
  unfold Seg34.relationRow4033 at r4033
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4033
  unfold Seg34.relationRow4034 at r4034
  unfold Seg34.relationRow4035 at r4035
  unfold Seg34.relationRow4036 at r4036
  unfold Seg34.relationRow4037 at r4037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4037
  unfold Seg34.relationRow4038 at r4038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4038
  unfold Seg34.relationRow4039 at r4039
  unfold Seg34.relationRow4040 at r4040
  unfold Seg34.relationRow4041 at r4041
  unfold Seg34.relationRow4042 at r4042
  unfold Seg34.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 34074 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
        ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩ := by
    have hnextx : seg34AccX83 rho = seg34AccX82 rho + rho 35309 := by
      unfold seg34AccX83 seg34AccX82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 82]
      ring
    have hnexty : seg34AccY83 rho = seg34AccY82 rho + rho 35310 := by
      unfold seg34AccY83 seg34AccY82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 82]
      ring
    have ha0 : (rho 35301 + rho 35302) * (seg34AccX82 rho + seg34AccY82 rho) = rho 35303 := by
      unfold seg34AccX82 seg34AccY82
      linear_combination r4031
    have ha1 : rho 35302 * seg34AccX82 rho = rho 35304 := by
      unfold seg34AccX82
      linear_combination r4032
    have ha2 : rho 35301 * seg34AccY82 rho = rho 35305 := by
      unfold seg34AccY82
      linear_combination r4033
    have ha3 : 3021 * rho 35304 * rho 35305 = rho 35306 := by
      linear_combination r4034
    have ha4 : rho 35307 * (1 + rho 35306) = rho 35304 + rho 35305 := by
      linear_combination r4035
    have ha5 : rho 35308 * (1 - rho 35306) = rho 35303 - rho 35304 - rho 35305 := by
      linear_combination r4036
    have haddx :
        rho 35307 * (1 + 3021 * (rho 35302 * seg34AccX82 rho) * (rho 35301 * seg34AccY82 rho)) =
          rho 35302 * seg34AccX82 rho + rho 35301 * seg34AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35308 * (1 - 3021 * (rho 35302 * seg34AccX82 rho) * (rho 35301 * seg34AccY82 rho)) =
          (-1) * (rho 35302 * seg34AccX82 rho) - rho 35301 * seg34AccY82 rho +
            (seg34AccY82 rho - seg34AccX82 rho * (-1)) * (rho 35301 + rho 35302) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35308 * (1 - rho 35306) = rho 35303 - rho 35304 - rho 35305 := ha5
        _ = (-1) * rho 35304 - rho 35305 + (seg34AccY82 rho - seg34AccX82 rho * (-1)) * (rho 35301 + rho 35302) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX83 rho = seg34AccX82 rho - Bool.toZMod bit * (seg34AccX82 rho - rho 35307) := by
      have hd : rho 35309 = Bool.toZMod bit * (rho 35307 - seg34AccX82 rho) := by
        rw [← hbit]
        unfold seg34AccX82
        linear_combination -r4037
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY83 rho = seg34AccY82 rho - Bool.toZMod bit * (seg34AccY82 rho - rho 35308) := by
      have hd : rho 35310 = Bool.toZMod bit * (rho 35308 - seg34AccY82 rho) := by
        rw [← hbit]
        unfold seg34AccY82
        linear_combination -r4038
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35301 * rho 35302 = rho 35311 := by linear_combination r4039
    have hd1 : rho 35301 * rho 35301 = rho 35312 := by linear_combination r4040
    have hd2 : rho 35302 * rho 35302 = rho 35313 := by linear_combination r4041
    have hd3 : rho 35314 * (rho 35302 * rho 35302 + rho 35301 * rho 35301 * (-1)) = 2 * (rho 35301 * rho 35302) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 35315 * (2 - (rho 35302 * rho 35302 + rho 35301 * rho 35301 * (-1))) = rho 35302 * rho 35302 - rho 35301 * rho 35301 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX82 rho : Seg34.F), (seg34AccY82 rho : Seg34.F)⟩
      ⟨(rho 35301 : Seg34.F), (rho 35302 : Seg34.F)⟩
      ⟨(rho 35307 : Seg34.F), (rho 35308 : Seg34.F)⟩
      ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
      ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg34_rows83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4044 rho ∧ Seg34.relationRow4045 rho ∧ Seg34.relationRow4046 rho ∧ Seg34.relationRow4047 rho ∧ Seg34.relationRow4048 rho ∧ Seg34.relationRow4049 rho ∧ Seg34.relationRow4050 rho ∧ Seg34.relationRow4051 rho ∧ Seg34.relationRow4052 rho ∧ Seg34.relationRow4053 rho ∧ Seg34.relationRow4054 rho ∧ Seg34.relationRow4055 rho ∧ Seg34.relationRow4056 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩

theorem seg34_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩ := by
  obtain ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩ := seg34_rows83 rho h
  unfold Seg34.relationRow4044 at r4044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4044
  unfold Seg34.relationRow4045 at r4045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045
  unfold Seg34.relationRow4046 at r4046
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4046
  unfold Seg34.relationRow4047 at r4047
  unfold Seg34.relationRow4048 at r4048
  unfold Seg34.relationRow4049 at r4049
  unfold Seg34.relationRow4050 at r4050
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4050
  unfold Seg34.relationRow4051 at r4051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4051
  unfold Seg34.relationRow4052 at r4052
  unfold Seg34.relationRow4053 at r4053
  unfold Seg34.relationRow4054 at r4054
  unfold Seg34.relationRow4055 at r4055
  unfold Seg34.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 34075 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
        ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩ := by
    have hnextx : seg34AccX84 rho = seg34AccX83 rho + rho 35322 := by
      unfold seg34AccX84 seg34AccX83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 83]
      ring
    have hnexty : seg34AccY84 rho = seg34AccY83 rho + rho 35323 := by
      unfold seg34AccY84 seg34AccY83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 83]
      ring
    have ha0 : (rho 35314 + rho 35315) * (seg34AccX83 rho + seg34AccY83 rho) = rho 35316 := by
      unfold seg34AccX83 seg34AccY83
      linear_combination r4044
    have ha1 : rho 35315 * seg34AccX83 rho = rho 35317 := by
      unfold seg34AccX83
      linear_combination r4045
    have ha2 : rho 35314 * seg34AccY83 rho = rho 35318 := by
      unfold seg34AccY83
      linear_combination r4046
    have ha3 : 3021 * rho 35317 * rho 35318 = rho 35319 := by
      linear_combination r4047
    have ha4 : rho 35320 * (1 + rho 35319) = rho 35317 + rho 35318 := by
      linear_combination r4048
    have ha5 : rho 35321 * (1 - rho 35319) = rho 35316 - rho 35317 - rho 35318 := by
      linear_combination r4049
    have haddx :
        rho 35320 * (1 + 3021 * (rho 35315 * seg34AccX83 rho) * (rho 35314 * seg34AccY83 rho)) =
          rho 35315 * seg34AccX83 rho + rho 35314 * seg34AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35321 * (1 - 3021 * (rho 35315 * seg34AccX83 rho) * (rho 35314 * seg34AccY83 rho)) =
          (-1) * (rho 35315 * seg34AccX83 rho) - rho 35314 * seg34AccY83 rho +
            (seg34AccY83 rho - seg34AccX83 rho * (-1)) * (rho 35314 + rho 35315) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35321 * (1 - rho 35319) = rho 35316 - rho 35317 - rho 35318 := ha5
        _ = (-1) * rho 35317 - rho 35318 + (seg34AccY83 rho - seg34AccX83 rho * (-1)) * (rho 35314 + rho 35315) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX84 rho = seg34AccX83 rho - Bool.toZMod bit * (seg34AccX83 rho - rho 35320) := by
      have hd : rho 35322 = Bool.toZMod bit * (rho 35320 - seg34AccX83 rho) := by
        rw [← hbit]
        unfold seg34AccX83
        linear_combination -r4050
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY84 rho = seg34AccY83 rho - Bool.toZMod bit * (seg34AccY83 rho - rho 35321) := by
      have hd : rho 35323 = Bool.toZMod bit * (rho 35321 - seg34AccY83 rho) := by
        rw [← hbit]
        unfold seg34AccY83
        linear_combination -r4051
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35314 * rho 35315 = rho 35324 := by linear_combination r4052
    have hd1 : rho 35314 * rho 35314 = rho 35325 := by linear_combination r4053
    have hd2 : rho 35315 * rho 35315 = rho 35326 := by linear_combination r4054
    have hd3 : rho 35327 * (rho 35315 * rho 35315 + rho 35314 * rho 35314 * (-1)) = 2 * (rho 35314 * rho 35315) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 35328 * (2 - (rho 35315 * rho 35315 + rho 35314 * rho 35314 * (-1))) = rho 35315 * rho 35315 - rho 35314 * rho 35314 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX83 rho : Seg34.F), (seg34AccY83 rho : Seg34.F)⟩
      ⟨(rho 35314 : Seg34.F), (rho 35315 : Seg34.F)⟩
      ⟨(rho 35320 : Seg34.F), (rho 35321 : Seg34.F)⟩
      ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
      ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg34_rows84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4057 rho ∧ Seg34.relationRow4058 rho ∧ Seg34.relationRow4059 rho ∧ Seg34.relationRow4060 rho ∧ Seg34.relationRow4061 rho ∧ Seg34.relationRow4062 rho ∧ Seg34.relationRow4063 rho ∧ Seg34.relationRow4064 rho ∧ Seg34.relationRow4065 rho ∧ Seg34.relationRow4066 rho ∧ Seg34.relationRow4067 rho ∧ Seg34.relationRow4068 rho ∧ Seg34.relationRow4069 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩

theorem seg34_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩ := by
  obtain ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩ := seg34_rows84 rho h
  unfold Seg34.relationRow4057 at r4057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4057
  unfold Seg34.relationRow4058 at r4058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058
  unfold Seg34.relationRow4059 at r4059
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4059
  unfold Seg34.relationRow4060 at r4060
  unfold Seg34.relationRow4061 at r4061
  unfold Seg34.relationRow4062 at r4062
  unfold Seg34.relationRow4063 at r4063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4063
  unfold Seg34.relationRow4064 at r4064
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4064
  unfold Seg34.relationRow4065 at r4065
  unfold Seg34.relationRow4066 at r4066
  unfold Seg34.relationRow4067 at r4067
  unfold Seg34.relationRow4068 at r4068
  unfold Seg34.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 34076 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
        ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩ := by
    have hnextx : seg34AccX85 rho = seg34AccX84 rho + rho 35335 := by
      unfold seg34AccX85 seg34AccX84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 84]
      ring
    have hnexty : seg34AccY85 rho = seg34AccY84 rho + rho 35336 := by
      unfold seg34AccY85 seg34AccY84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 84]
      ring
    have ha0 : (rho 35327 + rho 35328) * (seg34AccX84 rho + seg34AccY84 rho) = rho 35329 := by
      unfold seg34AccX84 seg34AccY84
      linear_combination r4057
    have ha1 : rho 35328 * seg34AccX84 rho = rho 35330 := by
      unfold seg34AccX84
      linear_combination r4058
    have ha2 : rho 35327 * seg34AccY84 rho = rho 35331 := by
      unfold seg34AccY84
      linear_combination r4059
    have ha3 : 3021 * rho 35330 * rho 35331 = rho 35332 := by
      linear_combination r4060
    have ha4 : rho 35333 * (1 + rho 35332) = rho 35330 + rho 35331 := by
      linear_combination r4061
    have ha5 : rho 35334 * (1 - rho 35332) = rho 35329 - rho 35330 - rho 35331 := by
      linear_combination r4062
    have haddx :
        rho 35333 * (1 + 3021 * (rho 35328 * seg34AccX84 rho) * (rho 35327 * seg34AccY84 rho)) =
          rho 35328 * seg34AccX84 rho + rho 35327 * seg34AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35334 * (1 - 3021 * (rho 35328 * seg34AccX84 rho) * (rho 35327 * seg34AccY84 rho)) =
          (-1) * (rho 35328 * seg34AccX84 rho) - rho 35327 * seg34AccY84 rho +
            (seg34AccY84 rho - seg34AccX84 rho * (-1)) * (rho 35327 + rho 35328) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35334 * (1 - rho 35332) = rho 35329 - rho 35330 - rho 35331 := ha5
        _ = (-1) * rho 35330 - rho 35331 + (seg34AccY84 rho - seg34AccX84 rho * (-1)) * (rho 35327 + rho 35328) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX85 rho = seg34AccX84 rho - Bool.toZMod bit * (seg34AccX84 rho - rho 35333) := by
      have hd : rho 35335 = Bool.toZMod bit * (rho 35333 - seg34AccX84 rho) := by
        rw [← hbit]
        unfold seg34AccX84
        linear_combination -r4063
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY85 rho = seg34AccY84 rho - Bool.toZMod bit * (seg34AccY84 rho - rho 35334) := by
      have hd : rho 35336 = Bool.toZMod bit * (rho 35334 - seg34AccY84 rho) := by
        rw [← hbit]
        unfold seg34AccY84
        linear_combination -r4064
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35327 * rho 35328 = rho 35337 := by linear_combination r4065
    have hd1 : rho 35327 * rho 35327 = rho 35338 := by linear_combination r4066
    have hd2 : rho 35328 * rho 35328 = rho 35339 := by linear_combination r4067
    have hd3 : rho 35340 * (rho 35328 * rho 35328 + rho 35327 * rho 35327 * (-1)) = 2 * (rho 35327 * rho 35328) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 35341 * (2 - (rho 35328 * rho 35328 + rho 35327 * rho 35327 * (-1))) = rho 35328 * rho 35328 - rho 35327 * rho 35327 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX84 rho : Seg34.F), (seg34AccY84 rho : Seg34.F)⟩
      ⟨(rho 35327 : Seg34.F), (rho 35328 : Seg34.F)⟩
      ⟨(rho 35333 : Seg34.F), (rho 35334 : Seg34.F)⟩
      ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
      ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg34_rows85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4070 rho ∧ Seg34.relationRow4071 rho ∧ Seg34.relationRow4072 rho ∧ Seg34.relationRow4073 rho ∧ Seg34.relationRow4074 rho ∧ Seg34.relationRow4075 rho ∧ Seg34.relationRow4076 rho ∧ Seg34.relationRow4077 rho ∧ Seg34.relationRow4078 rho ∧ Seg34.relationRow4079 rho ∧ Seg34.relationRow4080 rho ∧ Seg34.relationRow4081 rho ∧ Seg34.relationRow4082 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p50, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩

theorem seg34_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩ := by
  obtain ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩ := seg34_rows85 rho h
  unfold Seg34.relationRow4070 at r4070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4070
  unfold Seg34.relationRow4071 at r4071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071
  unfold Seg34.relationRow4072 at r4072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4072
  unfold Seg34.relationRow4073 at r4073
  unfold Seg34.relationRow4074 at r4074
  unfold Seg34.relationRow4075 at r4075
  unfold Seg34.relationRow4076 at r4076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4076
  unfold Seg34.relationRow4077 at r4077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4077
  unfold Seg34.relationRow4078 at r4078
  unfold Seg34.relationRow4079 at r4079
  unfold Seg34.relationRow4080 at r4080
  unfold Seg34.relationRow4081 at r4081
  unfold Seg34.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 34077 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
        ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩ := by
    have hnextx : seg34AccX86 rho = seg34AccX85 rho + rho 35348 := by
      unfold seg34AccX86 seg34AccX85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 85]
      ring
    have hnexty : seg34AccY86 rho = seg34AccY85 rho + rho 35349 := by
      unfold seg34AccY86 seg34AccY85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 85]
      ring
    have ha0 : (rho 35340 + rho 35341) * (seg34AccX85 rho + seg34AccY85 rho) = rho 35342 := by
      unfold seg34AccX85 seg34AccY85
      linear_combination r4070
    have ha1 : rho 35341 * seg34AccX85 rho = rho 35343 := by
      unfold seg34AccX85
      linear_combination r4071
    have ha2 : rho 35340 * seg34AccY85 rho = rho 35344 := by
      unfold seg34AccY85
      linear_combination r4072
    have ha3 : 3021 * rho 35343 * rho 35344 = rho 35345 := by
      linear_combination r4073
    have ha4 : rho 35346 * (1 + rho 35345) = rho 35343 + rho 35344 := by
      linear_combination r4074
    have ha5 : rho 35347 * (1 - rho 35345) = rho 35342 - rho 35343 - rho 35344 := by
      linear_combination r4075
    have haddx :
        rho 35346 * (1 + 3021 * (rho 35341 * seg34AccX85 rho) * (rho 35340 * seg34AccY85 rho)) =
          rho 35341 * seg34AccX85 rho + rho 35340 * seg34AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35347 * (1 - 3021 * (rho 35341 * seg34AccX85 rho) * (rho 35340 * seg34AccY85 rho)) =
          (-1) * (rho 35341 * seg34AccX85 rho) - rho 35340 * seg34AccY85 rho +
            (seg34AccY85 rho - seg34AccX85 rho * (-1)) * (rho 35340 + rho 35341) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35347 * (1 - rho 35345) = rho 35342 - rho 35343 - rho 35344 := ha5
        _ = (-1) * rho 35343 - rho 35344 + (seg34AccY85 rho - seg34AccX85 rho * (-1)) * (rho 35340 + rho 35341) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX86 rho = seg34AccX85 rho - Bool.toZMod bit * (seg34AccX85 rho - rho 35346) := by
      have hd : rho 35348 = Bool.toZMod bit * (rho 35346 - seg34AccX85 rho) := by
        rw [← hbit]
        unfold seg34AccX85
        linear_combination -r4076
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY86 rho = seg34AccY85 rho - Bool.toZMod bit * (seg34AccY85 rho - rho 35347) := by
      have hd : rho 35349 = Bool.toZMod bit * (rho 35347 - seg34AccY85 rho) := by
        rw [← hbit]
        unfold seg34AccY85
        linear_combination -r4077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35340 * rho 35341 = rho 35350 := by linear_combination r4078
    have hd1 : rho 35340 * rho 35340 = rho 35351 := by linear_combination r4079
    have hd2 : rho 35341 * rho 35341 = rho 35352 := by linear_combination r4080
    have hd3 : rho 35353 * (rho 35341 * rho 35341 + rho 35340 * rho 35340 * (-1)) = 2 * (rho 35340 * rho 35341) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 35354 * (2 - (rho 35341 * rho 35341 + rho 35340 * rho 35340 * (-1))) = rho 35341 * rho 35341 - rho 35340 * rho 35340 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX85 rho : Seg34.F), (seg34AccY85 rho : Seg34.F)⟩
      ⟨(rho 35340 : Seg34.F), (rho 35341 : Seg34.F)⟩
      ⟨(rho 35346 : Seg34.F), (rho 35347 : Seg34.F)⟩
      ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
      ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg34_rows86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4083 rho ∧ Seg34.relationRow4084 rho ∧ Seg34.relationRow4085 rho ∧ Seg34.relationRow4086 rho ∧ Seg34.relationRow4087 rho ∧ Seg34.relationRow4088 rho ∧ Seg34.relationRow4089 rho ∧ Seg34.relationRow4090 rho ∧ Seg34.relationRow4091 rho ∧ Seg34.relationRow4092 rho ∧ Seg34.relationRow4093 rho ∧ Seg34.relationRow4094 rho ∧ Seg34.relationRow4095 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩

theorem seg34_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩ := by
  obtain ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩ := seg34_rows86 rho h
  unfold Seg34.relationRow4083 at r4083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4083
  unfold Seg34.relationRow4084 at r4084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084
  unfold Seg34.relationRow4085 at r4085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4085
  unfold Seg34.relationRow4086 at r4086
  unfold Seg34.relationRow4087 at r4087
  unfold Seg34.relationRow4088 at r4088
  unfold Seg34.relationRow4089 at r4089
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4089
  unfold Seg34.relationRow4090 at r4090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4090
  unfold Seg34.relationRow4091 at r4091
  unfold Seg34.relationRow4092 at r4092
  unfold Seg34.relationRow4093 at r4093
  unfold Seg34.relationRow4094 at r4094
  unfold Seg34.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 34078 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
        ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩ := by
    have hnextx : seg34AccX87 rho = seg34AccX86 rho + rho 35361 := by
      unfold seg34AccX87 seg34AccX86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 86]
      ring
    have hnexty : seg34AccY87 rho = seg34AccY86 rho + rho 35362 := by
      unfold seg34AccY87 seg34AccY86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 86]
      ring
    have ha0 : (rho 35353 + rho 35354) * (seg34AccX86 rho + seg34AccY86 rho) = rho 35355 := by
      unfold seg34AccX86 seg34AccY86
      linear_combination r4083
    have ha1 : rho 35354 * seg34AccX86 rho = rho 35356 := by
      unfold seg34AccX86
      linear_combination r4084
    have ha2 : rho 35353 * seg34AccY86 rho = rho 35357 := by
      unfold seg34AccY86
      linear_combination r4085
    have ha3 : 3021 * rho 35356 * rho 35357 = rho 35358 := by
      linear_combination r4086
    have ha4 : rho 35359 * (1 + rho 35358) = rho 35356 + rho 35357 := by
      linear_combination r4087
    have ha5 : rho 35360 * (1 - rho 35358) = rho 35355 - rho 35356 - rho 35357 := by
      linear_combination r4088
    have haddx :
        rho 35359 * (1 + 3021 * (rho 35354 * seg34AccX86 rho) * (rho 35353 * seg34AccY86 rho)) =
          rho 35354 * seg34AccX86 rho + rho 35353 * seg34AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35360 * (1 - 3021 * (rho 35354 * seg34AccX86 rho) * (rho 35353 * seg34AccY86 rho)) =
          (-1) * (rho 35354 * seg34AccX86 rho) - rho 35353 * seg34AccY86 rho +
            (seg34AccY86 rho - seg34AccX86 rho * (-1)) * (rho 35353 + rho 35354) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35360 * (1 - rho 35358) = rho 35355 - rho 35356 - rho 35357 := ha5
        _ = (-1) * rho 35356 - rho 35357 + (seg34AccY86 rho - seg34AccX86 rho * (-1)) * (rho 35353 + rho 35354) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX87 rho = seg34AccX86 rho - Bool.toZMod bit * (seg34AccX86 rho - rho 35359) := by
      have hd : rho 35361 = Bool.toZMod bit * (rho 35359 - seg34AccX86 rho) := by
        rw [← hbit]
        unfold seg34AccX86
        linear_combination -r4089
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY87 rho = seg34AccY86 rho - Bool.toZMod bit * (seg34AccY86 rho - rho 35360) := by
      have hd : rho 35362 = Bool.toZMod bit * (rho 35360 - seg34AccY86 rho) := by
        rw [← hbit]
        unfold seg34AccY86
        linear_combination -r4090
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35353 * rho 35354 = rho 35363 := by linear_combination r4091
    have hd1 : rho 35353 * rho 35353 = rho 35364 := by linear_combination r4092
    have hd2 : rho 35354 * rho 35354 = rho 35365 := by linear_combination r4093
    have hd3 : rho 35366 * (rho 35354 * rho 35354 + rho 35353 * rho 35353 * (-1)) = 2 * (rho 35353 * rho 35354) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 35367 * (2 - (rho 35354 * rho 35354 + rho 35353 * rho 35353 * (-1))) = rho 35354 * rho 35354 - rho 35353 * rho 35353 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX86 rho : Seg34.F), (seg34AccY86 rho : Seg34.F)⟩
      ⟨(rho 35353 : Seg34.F), (rho 35354 : Seg34.F)⟩
      ⟨(rho 35359 : Seg34.F), (rho 35360 : Seg34.F)⟩
      ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
      ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg34_rows87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow4096 rho ∧ Seg34.relationRow4097 rho ∧ Seg34.relationRow4098 rho ∧ Seg34.relationRow4099 rho ∧ Seg34.relationRow4100 rho ∧ Seg34.relationRow4101 rho ∧ Seg34.relationRow4102 rho ∧ Seg34.relationRow4103 rho ∧ Seg34.relationRow4104 rho ∧ Seg34.relationRow4105 rho ∧ Seg34.relationRow4106 rho ∧ Seg34.relationRow4107 rho ∧ Seg34.relationRow4108 rho := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩

theorem seg34_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩ := by
  obtain ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩ := seg34_rows87 rho h
  unfold Seg34.relationRow4096 at r4096
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4096
  unfold Seg34.relationRow4097 at r4097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097
  unfold Seg34.relationRow4098 at r4098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4098
  unfold Seg34.relationRow4099 at r4099
  unfold Seg34.relationRow4100 at r4100
  unfold Seg34.relationRow4101 at r4101
  unfold Seg34.relationRow4102 at r4102
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4102
  unfold Seg34.relationRow4103 at r4103
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4103
  unfold Seg34.relationRow4104 at r4104
  unfold Seg34.relationRow4105 at r4105
  unfold Seg34.relationRow4106 at r4106
  unfold Seg34.relationRow4107 at r4107
  unfold Seg34.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 34079 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
        ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
        ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
        ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩ := by
    have hnextx : seg34AccX88 rho = seg34AccX87 rho + rho 35374 := by
      unfold seg34AccX88 seg34AccX87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34243 13 87]
      ring
    have hnexty : seg34AccY88 rho = seg34AccY87 rho + rho 35375 := by
      unfold seg34AccY88 seg34AccY87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 34244 13 87]
      ring
    have ha0 : (rho 35366 + rho 35367) * (seg34AccX87 rho + seg34AccY87 rho) = rho 35368 := by
      unfold seg34AccX87 seg34AccY87
      linear_combination r4096
    have ha1 : rho 35367 * seg34AccX87 rho = rho 35369 := by
      unfold seg34AccX87
      linear_combination r4097
    have ha2 : rho 35366 * seg34AccY87 rho = rho 35370 := by
      unfold seg34AccY87
      linear_combination r4098
    have ha3 : 3021 * rho 35369 * rho 35370 = rho 35371 := by
      linear_combination r4099
    have ha4 : rho 35372 * (1 + rho 35371) = rho 35369 + rho 35370 := by
      linear_combination r4100
    have ha5 : rho 35373 * (1 - rho 35371) = rho 35368 - rho 35369 - rho 35370 := by
      linear_combination r4101
    have haddx :
        rho 35372 * (1 + 3021 * (rho 35367 * seg34AccX87 rho) * (rho 35366 * seg34AccY87 rho)) =
          rho 35367 * seg34AccX87 rho + rho 35366 * seg34AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 35373 * (1 - 3021 * (rho 35367 * seg34AccX87 rho) * (rho 35366 * seg34AccY87 rho)) =
          (-1) * (rho 35367 * seg34AccX87 rho) - rho 35366 * seg34AccY87 rho +
            (seg34AccY87 rho - seg34AccX87 rho * (-1)) * (rho 35366 + rho 35367) := by
      rw [ha1, ha2, ha3]
      calc
        rho 35373 * (1 - rho 35371) = rho 35368 - rho 35369 - rho 35370 := ha5
        _ = (-1) * rho 35369 - rho 35370 + (seg34AccY87 rho - seg34AccX87 rho * (-1)) * (rho 35366 + rho 35367) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX88 rho = seg34AccX87 rho - Bool.toZMod bit * (seg34AccX87 rho - rho 35372) := by
      have hd : rho 35374 = Bool.toZMod bit * (rho 35372 - seg34AccX87 rho) := by
        rw [← hbit]
        unfold seg34AccX87
        linear_combination -r4102
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY88 rho = seg34AccY87 rho - Bool.toZMod bit * (seg34AccY87 rho - rho 35373) := by
      have hd : rho 35375 = Bool.toZMod bit * (rho 35373 - seg34AccY87 rho) := by
        rw [← hbit]
        unfold seg34AccY87
        linear_combination -r4103
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 35366 * rho 35367 = rho 35376 := by linear_combination r4104
    have hd1 : rho 35366 * rho 35366 = rho 35377 := by linear_combination r4105
    have hd2 : rho 35367 * rho 35367 = rho 35378 := by linear_combination r4106
    have hd3 : rho 35379 * (rho 35367 * rho 35367 + rho 35366 * rho 35366 * (-1)) = 2 * (rho 35366 * rho 35367) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 35380 * (2 - (rho 35367 * rho 35367 + rho 35366 * rho 35366 * (-1))) = rho 35367 * rho 35367 - rho 35366 * rho 35366 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX87 rho : Seg34.F), (seg34AccY87 rho : Seg34.F)⟩
      ⟨(rho 35366 : Seg34.F), (rho 35367 : Seg34.F)⟩
      ⟨(rho 35372 : Seg34.F), (rho 35373 : Seg34.F)⟩
      ⟨(seg34AccX88 rho : Seg34.F), (seg34AccY88 rho : Seg34.F)⟩
      ⟨(rho 35379 : Seg34.F), (rho 35380 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg34_hstep_c7 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg34_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg34_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg34_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg34_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg34_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg34_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg34_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg34_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg34_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg34_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
