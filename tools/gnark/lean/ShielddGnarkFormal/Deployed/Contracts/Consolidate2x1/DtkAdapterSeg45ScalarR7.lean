import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3966 rho ∧ Seg45.relationRow3967 rho ∧ Seg45.relationRow3968 rho ∧ Seg45.relationRow3969 rho ∧ Seg45.relationRow3970 rho ∧ Seg45.relationRow3971 rho ∧ Seg45.relationRow3972 rho ∧ Seg45.relationRow3973 rho ∧ Seg45.relationRow3974 rho ∧ Seg45.relationRow3975 rho ∧ Seg45.relationRow3976 rho ∧ Seg45.relationRow3977 rho ∧ Seg45.relationRow3978 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩

theorem seg45_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41025 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩ := by
  obtain ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩ := seg45_rows77 rho h
  unfold Seg45.relationRow3966 at r3966
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3966
  unfold Seg45.relationRow3967 at r3967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967
  unfold Seg45.relationRow3968 at r3968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3968
  unfold Seg45.relationRow3969 at r3969
  unfold Seg45.relationRow3970 at r3970
  unfold Seg45.relationRow3971 at r3971
  unfold Seg45.relationRow3972 at r3972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3972
  unfold Seg45.relationRow3973 at r3973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3973
  unfold Seg45.relationRow3974 at r3974
  unfold Seg45.relationRow3975 at r3975
  unfold Seg45.relationRow3976 at r3976
  unfold Seg45.relationRow3977 at r3977
  unfold Seg45.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 41025 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
        ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩ := by
    have hnextx : seg45AccX78 rho = seg45AccX77 rho + rho 42200 := by
      unfold seg45AccX78 seg45AccX77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 77]
      ring
    have hnexty : seg45AccY78 rho = seg45AccY77 rho + rho 42201 := by
      unfold seg45AccY78 seg45AccY77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 77]
      ring
    have ha0 : (rho 42192 + rho 42193) * (seg45AccX77 rho + seg45AccY77 rho) = rho 42194 := by
      unfold seg45AccX77 seg45AccY77
      linear_combination r3966
    have ha1 : rho 42193 * seg45AccX77 rho = rho 42195 := by
      unfold seg45AccX77
      linear_combination r3967
    have ha2 : rho 42192 * seg45AccY77 rho = rho 42196 := by
      unfold seg45AccY77
      linear_combination r3968
    have ha3 : 3021 * rho 42195 * rho 42196 = rho 42197 := by
      linear_combination r3969
    have ha4 : rho 42198 * (1 + rho 42197) = rho 42195 + rho 42196 := by
      linear_combination r3970
    have ha5 : rho 42199 * (1 - rho 42197) = rho 42194 - rho 42195 - rho 42196 := by
      linear_combination r3971
    have haddx :
        rho 42198 * (1 + 3021 * (rho 42193 * seg45AccX77 rho) * (rho 42192 * seg45AccY77 rho)) =
          rho 42193 * seg45AccX77 rho + rho 42192 * seg45AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42199 * (1 - 3021 * (rho 42193 * seg45AccX77 rho) * (rho 42192 * seg45AccY77 rho)) =
          (-1) * (rho 42193 * seg45AccX77 rho) - rho 42192 * seg45AccY77 rho +
            (seg45AccY77 rho - seg45AccX77 rho * (-1)) * (rho 42192 + rho 42193) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42199 * (1 - rho 42197) = rho 42194 - rho 42195 - rho 42196 := ha5
        _ = (-1) * rho 42195 - rho 42196 + (seg45AccY77 rho - seg45AccX77 rho * (-1)) * (rho 42192 + rho 42193) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX78 rho = seg45AccX77 rho - Bool.toZMod bit * (seg45AccX77 rho - rho 42198) := by
      have hd : rho 42200 = Bool.toZMod bit * (rho 42198 - seg45AccX77 rho) := by
        rw [← hbit]
        unfold seg45AccX77
        linear_combination -r3972
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY78 rho = seg45AccY77 rho - Bool.toZMod bit * (seg45AccY77 rho - rho 42199) := by
      have hd : rho 42201 = Bool.toZMod bit * (rho 42199 - seg45AccY77 rho) := by
        rw [← hbit]
        unfold seg45AccY77
        linear_combination -r3973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42192 * rho 42193 = rho 42202 := by linear_combination r3974
    have hd1 : rho 42192 * rho 42192 = rho 42203 := by linear_combination r3975
    have hd2 : rho 42193 * rho 42193 = rho 42204 := by linear_combination r3976
    have hd3 : rho 42205 * (rho 42193 * rho 42193 + rho 42192 * rho 42192 * (-1)) = 2 * (rho 42192 * rho 42193) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 42206 * (2 - (rho 42193 * rho 42193 + rho 42192 * rho 42192 * (-1))) = rho 42193 * rho 42193 - rho 42192 * rho 42192 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX77 rho : Seg45.F), (seg45AccY77 rho : Seg45.F)⟩
      ⟨(rho 42192 : Seg45.F), (rho 42193 : Seg45.F)⟩
      ⟨(rho 42198 : Seg45.F), (rho 42199 : Seg45.F)⟩
      ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
      ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg45_rows78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3979 rho ∧ Seg45.relationRow3980 rho ∧ Seg45.relationRow3981 rho ∧ Seg45.relationRow3982 rho ∧ Seg45.relationRow3983 rho ∧ Seg45.relationRow3984 rho ∧ Seg45.relationRow3985 rho ∧ Seg45.relationRow3986 rho ∧ Seg45.relationRow3987 rho ∧ Seg45.relationRow3988 rho ∧ Seg45.relationRow3989 rho ∧ Seg45.relationRow3990 rho ∧ Seg45.relationRow3991 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  exact ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩

theorem seg45_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41026 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩ := by
  obtain ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩ := seg45_rows78 rho h
  unfold Seg45.relationRow3979 at r3979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3979
  unfold Seg45.relationRow3980 at r3980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980
  unfold Seg45.relationRow3981 at r3981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3981
  unfold Seg45.relationRow3982 at r3982
  unfold Seg45.relationRow3983 at r3983
  unfold Seg45.relationRow3984 at r3984
  unfold Seg45.relationRow3985 at r3985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3985
  unfold Seg45.relationRow3986 at r3986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3986
  unfold Seg45.relationRow3987 at r3987
  unfold Seg45.relationRow3988 at r3988
  unfold Seg45.relationRow3989 at r3989
  unfold Seg45.relationRow3990 at r3990
  unfold Seg45.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 41026 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
        ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩ := by
    have hnextx : seg45AccX79 rho = seg45AccX78 rho + rho 42213 := by
      unfold seg45AccX79 seg45AccX78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 78]
      ring
    have hnexty : seg45AccY79 rho = seg45AccY78 rho + rho 42214 := by
      unfold seg45AccY79 seg45AccY78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 78]
      ring
    have ha0 : (rho 42205 + rho 42206) * (seg45AccX78 rho + seg45AccY78 rho) = rho 42207 := by
      unfold seg45AccX78 seg45AccY78
      linear_combination r3979
    have ha1 : rho 42206 * seg45AccX78 rho = rho 42208 := by
      unfold seg45AccX78
      linear_combination r3980
    have ha2 : rho 42205 * seg45AccY78 rho = rho 42209 := by
      unfold seg45AccY78
      linear_combination r3981
    have ha3 : 3021 * rho 42208 * rho 42209 = rho 42210 := by
      linear_combination r3982
    have ha4 : rho 42211 * (1 + rho 42210) = rho 42208 + rho 42209 := by
      linear_combination r3983
    have ha5 : rho 42212 * (1 - rho 42210) = rho 42207 - rho 42208 - rho 42209 := by
      linear_combination r3984
    have haddx :
        rho 42211 * (1 + 3021 * (rho 42206 * seg45AccX78 rho) * (rho 42205 * seg45AccY78 rho)) =
          rho 42206 * seg45AccX78 rho + rho 42205 * seg45AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42212 * (1 - 3021 * (rho 42206 * seg45AccX78 rho) * (rho 42205 * seg45AccY78 rho)) =
          (-1) * (rho 42206 * seg45AccX78 rho) - rho 42205 * seg45AccY78 rho +
            (seg45AccY78 rho - seg45AccX78 rho * (-1)) * (rho 42205 + rho 42206) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42212 * (1 - rho 42210) = rho 42207 - rho 42208 - rho 42209 := ha5
        _ = (-1) * rho 42208 - rho 42209 + (seg45AccY78 rho - seg45AccX78 rho * (-1)) * (rho 42205 + rho 42206) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX79 rho = seg45AccX78 rho - Bool.toZMod bit * (seg45AccX78 rho - rho 42211) := by
      have hd : rho 42213 = Bool.toZMod bit * (rho 42211 - seg45AccX78 rho) := by
        rw [← hbit]
        unfold seg45AccX78
        linear_combination -r3985
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY79 rho = seg45AccY78 rho - Bool.toZMod bit * (seg45AccY78 rho - rho 42212) := by
      have hd : rho 42214 = Bool.toZMod bit * (rho 42212 - seg45AccY78 rho) := by
        rw [← hbit]
        unfold seg45AccY78
        linear_combination -r3986
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42205 * rho 42206 = rho 42215 := by linear_combination r3987
    have hd1 : rho 42205 * rho 42205 = rho 42216 := by linear_combination r3988
    have hd2 : rho 42206 * rho 42206 = rho 42217 := by linear_combination r3989
    have hd3 : rho 42218 * (rho 42206 * rho 42206 + rho 42205 * rho 42205 * (-1)) = 2 * (rho 42205 * rho 42206) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 42219 * (2 - (rho 42206 * rho 42206 + rho 42205 * rho 42205 * (-1))) = rho 42206 * rho 42206 - rho 42205 * rho 42205 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX78 rho : Seg45.F), (seg45AccY78 rho : Seg45.F)⟩
      ⟨(rho 42205 : Seg45.F), (rho 42206 : Seg45.F)⟩
      ⟨(rho 42211 : Seg45.F), (rho 42212 : Seg45.F)⟩
      ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
      ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg45_rows79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow3992 rho ∧ Seg45.relationRow3993 rho ∧ Seg45.relationRow3994 rho ∧ Seg45.relationRow3995 rho ∧ Seg45.relationRow3996 rho ∧ Seg45.relationRow3997 rho ∧ Seg45.relationRow3998 rho ∧ Seg45.relationRow3999 rho ∧ Seg45.relationRow4000 rho ∧ Seg45.relationRow4001 rho ∧ Seg45.relationRow4002 rho ∧ Seg45.relationRow4003 rho ∧ Seg45.relationRow4004 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩

theorem seg45_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41027 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩ := by
  obtain ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩ := seg45_rows79 rho h
  unfold Seg45.relationRow3992 at r3992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3992
  unfold Seg45.relationRow3993 at r3993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993
  unfold Seg45.relationRow3994 at r3994
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3994
  unfold Seg45.relationRow3995 at r3995
  unfold Seg45.relationRow3996 at r3996
  unfold Seg45.relationRow3997 at r3997
  unfold Seg45.relationRow3998 at r3998
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3998
  unfold Seg45.relationRow3999 at r3999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3999
  unfold Seg45.relationRow4000 at r4000
  unfold Seg45.relationRow4001 at r4001
  unfold Seg45.relationRow4002 at r4002
  unfold Seg45.relationRow4003 at r4003
  unfold Seg45.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 41027 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
        ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩ := by
    have hnextx : seg45AccX80 rho = seg45AccX79 rho + rho 42226 := by
      unfold seg45AccX80 seg45AccX79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 79]
      ring
    have hnexty : seg45AccY80 rho = seg45AccY79 rho + rho 42227 := by
      unfold seg45AccY80 seg45AccY79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 79]
      ring
    have ha0 : (rho 42218 + rho 42219) * (seg45AccX79 rho + seg45AccY79 rho) = rho 42220 := by
      unfold seg45AccX79 seg45AccY79
      linear_combination r3992
    have ha1 : rho 42219 * seg45AccX79 rho = rho 42221 := by
      unfold seg45AccX79
      linear_combination r3993
    have ha2 : rho 42218 * seg45AccY79 rho = rho 42222 := by
      unfold seg45AccY79
      linear_combination r3994
    have ha3 : 3021 * rho 42221 * rho 42222 = rho 42223 := by
      linear_combination r3995
    have ha4 : rho 42224 * (1 + rho 42223) = rho 42221 + rho 42222 := by
      linear_combination r3996
    have ha5 : rho 42225 * (1 - rho 42223) = rho 42220 - rho 42221 - rho 42222 := by
      linear_combination r3997
    have haddx :
        rho 42224 * (1 + 3021 * (rho 42219 * seg45AccX79 rho) * (rho 42218 * seg45AccY79 rho)) =
          rho 42219 * seg45AccX79 rho + rho 42218 * seg45AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42225 * (1 - 3021 * (rho 42219 * seg45AccX79 rho) * (rho 42218 * seg45AccY79 rho)) =
          (-1) * (rho 42219 * seg45AccX79 rho) - rho 42218 * seg45AccY79 rho +
            (seg45AccY79 rho - seg45AccX79 rho * (-1)) * (rho 42218 + rho 42219) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42225 * (1 - rho 42223) = rho 42220 - rho 42221 - rho 42222 := ha5
        _ = (-1) * rho 42221 - rho 42222 + (seg45AccY79 rho - seg45AccX79 rho * (-1)) * (rho 42218 + rho 42219) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX80 rho = seg45AccX79 rho - Bool.toZMod bit * (seg45AccX79 rho - rho 42224) := by
      have hd : rho 42226 = Bool.toZMod bit * (rho 42224 - seg45AccX79 rho) := by
        rw [← hbit]
        unfold seg45AccX79
        linear_combination -r3998
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY80 rho = seg45AccY79 rho - Bool.toZMod bit * (seg45AccY79 rho - rho 42225) := by
      have hd : rho 42227 = Bool.toZMod bit * (rho 42225 - seg45AccY79 rho) := by
        rw [← hbit]
        unfold seg45AccY79
        linear_combination -r3999
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42218 * rho 42219 = rho 42228 := by linear_combination r4000
    have hd1 : rho 42218 * rho 42218 = rho 42229 := by linear_combination r4001
    have hd2 : rho 42219 * rho 42219 = rho 42230 := by linear_combination r4002
    have hd3 : rho 42231 * (rho 42219 * rho 42219 + rho 42218 * rho 42218 * (-1)) = 2 * (rho 42218 * rho 42219) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 42232 * (2 - (rho 42219 * rho 42219 + rho 42218 * rho 42218 * (-1))) = rho 42219 * rho 42219 - rho 42218 * rho 42218 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX79 rho : Seg45.F), (seg45AccY79 rho : Seg45.F)⟩
      ⟨(rho 42218 : Seg45.F), (rho 42219 : Seg45.F)⟩
      ⟨(rho 42224 : Seg45.F), (rho 42225 : Seg45.F)⟩
      ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
      ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg45_rows80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4005 rho ∧ Seg45.relationRow4006 rho ∧ Seg45.relationRow4007 rho ∧ Seg45.relationRow4008 rho ∧ Seg45.relationRow4009 rho ∧ Seg45.relationRow4010 rho ∧ Seg45.relationRow4011 rho ∧ Seg45.relationRow4012 rho ∧ Seg45.relationRow4013 rho ∧ Seg45.relationRow4014 rho ∧ Seg45.relationRow4015 rho ∧ Seg45.relationRow4016 rho ∧ Seg45.relationRow4017 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩

theorem seg45_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41028 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩ := by
  obtain ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩ := seg45_rows80 rho h
  unfold Seg45.relationRow4005 at r4005
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4005
  unfold Seg45.relationRow4006 at r4006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006
  unfold Seg45.relationRow4007 at r4007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4007
  unfold Seg45.relationRow4008 at r4008
  unfold Seg45.relationRow4009 at r4009
  unfold Seg45.relationRow4010 at r4010
  unfold Seg45.relationRow4011 at r4011
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4011
  unfold Seg45.relationRow4012 at r4012
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4012
  unfold Seg45.relationRow4013 at r4013
  unfold Seg45.relationRow4014 at r4014
  unfold Seg45.relationRow4015 at r4015
  unfold Seg45.relationRow4016 at r4016
  unfold Seg45.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 41028 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
        ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩ := by
    have hnextx : seg45AccX81 rho = seg45AccX80 rho + rho 42239 := by
      unfold seg45AccX81 seg45AccX80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 80]
      ring
    have hnexty : seg45AccY81 rho = seg45AccY80 rho + rho 42240 := by
      unfold seg45AccY81 seg45AccY80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 80]
      ring
    have ha0 : (rho 42231 + rho 42232) * (seg45AccX80 rho + seg45AccY80 rho) = rho 42233 := by
      unfold seg45AccX80 seg45AccY80
      linear_combination r4005
    have ha1 : rho 42232 * seg45AccX80 rho = rho 42234 := by
      unfold seg45AccX80
      linear_combination r4006
    have ha2 : rho 42231 * seg45AccY80 rho = rho 42235 := by
      unfold seg45AccY80
      linear_combination r4007
    have ha3 : 3021 * rho 42234 * rho 42235 = rho 42236 := by
      linear_combination r4008
    have ha4 : rho 42237 * (1 + rho 42236) = rho 42234 + rho 42235 := by
      linear_combination r4009
    have ha5 : rho 42238 * (1 - rho 42236) = rho 42233 - rho 42234 - rho 42235 := by
      linear_combination r4010
    have haddx :
        rho 42237 * (1 + 3021 * (rho 42232 * seg45AccX80 rho) * (rho 42231 * seg45AccY80 rho)) =
          rho 42232 * seg45AccX80 rho + rho 42231 * seg45AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42238 * (1 - 3021 * (rho 42232 * seg45AccX80 rho) * (rho 42231 * seg45AccY80 rho)) =
          (-1) * (rho 42232 * seg45AccX80 rho) - rho 42231 * seg45AccY80 rho +
            (seg45AccY80 rho - seg45AccX80 rho * (-1)) * (rho 42231 + rho 42232) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42238 * (1 - rho 42236) = rho 42233 - rho 42234 - rho 42235 := ha5
        _ = (-1) * rho 42234 - rho 42235 + (seg45AccY80 rho - seg45AccX80 rho * (-1)) * (rho 42231 + rho 42232) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX81 rho = seg45AccX80 rho - Bool.toZMod bit * (seg45AccX80 rho - rho 42237) := by
      have hd : rho 42239 = Bool.toZMod bit * (rho 42237 - seg45AccX80 rho) := by
        rw [← hbit]
        unfold seg45AccX80
        linear_combination -r4011
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY81 rho = seg45AccY80 rho - Bool.toZMod bit * (seg45AccY80 rho - rho 42238) := by
      have hd : rho 42240 = Bool.toZMod bit * (rho 42238 - seg45AccY80 rho) := by
        rw [← hbit]
        unfold seg45AccY80
        linear_combination -r4012
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42231 * rho 42232 = rho 42241 := by linear_combination r4013
    have hd1 : rho 42231 * rho 42231 = rho 42242 := by linear_combination r4014
    have hd2 : rho 42232 * rho 42232 = rho 42243 := by linear_combination r4015
    have hd3 : rho 42244 * (rho 42232 * rho 42232 + rho 42231 * rho 42231 * (-1)) = 2 * (rho 42231 * rho 42232) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 42245 * (2 - (rho 42232 * rho 42232 + rho 42231 * rho 42231 * (-1))) = rho 42232 * rho 42232 - rho 42231 * rho 42231 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX80 rho : Seg45.F), (seg45AccY80 rho : Seg45.F)⟩
      ⟨(rho 42231 : Seg45.F), (rho 42232 : Seg45.F)⟩
      ⟨(rho 42237 : Seg45.F), (rho 42238 : Seg45.F)⟩
      ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
      ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg45_rows81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4018 rho ∧ Seg45.relationRow4019 rho ∧ Seg45.relationRow4020 rho ∧ Seg45.relationRow4021 rho ∧ Seg45.relationRow4022 rho ∧ Seg45.relationRow4023 rho ∧ Seg45.relationRow4024 rho ∧ Seg45.relationRow4025 rho ∧ Seg45.relationRow4026 rho ∧ Seg45.relationRow4027 rho ∧ Seg45.relationRow4028 rho ∧ Seg45.relationRow4029 rho ∧ Seg45.relationRow4030 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩

theorem seg45_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41029 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩ := by
  obtain ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩ := seg45_rows81 rho h
  unfold Seg45.relationRow4018 at r4018
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4018
  unfold Seg45.relationRow4019 at r4019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019
  unfold Seg45.relationRow4020 at r4020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4020
  unfold Seg45.relationRow4021 at r4021
  unfold Seg45.relationRow4022 at r4022
  unfold Seg45.relationRow4023 at r4023
  unfold Seg45.relationRow4024 at r4024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4024
  unfold Seg45.relationRow4025 at r4025
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4025
  unfold Seg45.relationRow4026 at r4026
  unfold Seg45.relationRow4027 at r4027
  unfold Seg45.relationRow4028 at r4028
  unfold Seg45.relationRow4029 at r4029
  unfold Seg45.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 41029 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
        ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩ := by
    have hnextx : seg45AccX82 rho = seg45AccX81 rho + rho 42252 := by
      unfold seg45AccX82 seg45AccX81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 81]
      ring
    have hnexty : seg45AccY82 rho = seg45AccY81 rho + rho 42253 := by
      unfold seg45AccY82 seg45AccY81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 81]
      ring
    have ha0 : (rho 42244 + rho 42245) * (seg45AccX81 rho + seg45AccY81 rho) = rho 42246 := by
      unfold seg45AccX81 seg45AccY81
      linear_combination r4018
    have ha1 : rho 42245 * seg45AccX81 rho = rho 42247 := by
      unfold seg45AccX81
      linear_combination r4019
    have ha2 : rho 42244 * seg45AccY81 rho = rho 42248 := by
      unfold seg45AccY81
      linear_combination r4020
    have ha3 : 3021 * rho 42247 * rho 42248 = rho 42249 := by
      linear_combination r4021
    have ha4 : rho 42250 * (1 + rho 42249) = rho 42247 + rho 42248 := by
      linear_combination r4022
    have ha5 : rho 42251 * (1 - rho 42249) = rho 42246 - rho 42247 - rho 42248 := by
      linear_combination r4023
    have haddx :
        rho 42250 * (1 + 3021 * (rho 42245 * seg45AccX81 rho) * (rho 42244 * seg45AccY81 rho)) =
          rho 42245 * seg45AccX81 rho + rho 42244 * seg45AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42251 * (1 - 3021 * (rho 42245 * seg45AccX81 rho) * (rho 42244 * seg45AccY81 rho)) =
          (-1) * (rho 42245 * seg45AccX81 rho) - rho 42244 * seg45AccY81 rho +
            (seg45AccY81 rho - seg45AccX81 rho * (-1)) * (rho 42244 + rho 42245) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42251 * (1 - rho 42249) = rho 42246 - rho 42247 - rho 42248 := ha5
        _ = (-1) * rho 42247 - rho 42248 + (seg45AccY81 rho - seg45AccX81 rho * (-1)) * (rho 42244 + rho 42245) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX82 rho = seg45AccX81 rho - Bool.toZMod bit * (seg45AccX81 rho - rho 42250) := by
      have hd : rho 42252 = Bool.toZMod bit * (rho 42250 - seg45AccX81 rho) := by
        rw [← hbit]
        unfold seg45AccX81
        linear_combination -r4024
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY82 rho = seg45AccY81 rho - Bool.toZMod bit * (seg45AccY81 rho - rho 42251) := by
      have hd : rho 42253 = Bool.toZMod bit * (rho 42251 - seg45AccY81 rho) := by
        rw [← hbit]
        unfold seg45AccY81
        linear_combination -r4025
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42244 * rho 42245 = rho 42254 := by linear_combination r4026
    have hd1 : rho 42244 * rho 42244 = rho 42255 := by linear_combination r4027
    have hd2 : rho 42245 * rho 42245 = rho 42256 := by linear_combination r4028
    have hd3 : rho 42257 * (rho 42245 * rho 42245 + rho 42244 * rho 42244 * (-1)) = 2 * (rho 42244 * rho 42245) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 42258 * (2 - (rho 42245 * rho 42245 + rho 42244 * rho 42244 * (-1))) = rho 42245 * rho 42245 - rho 42244 * rho 42244 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX81 rho : Seg45.F), (seg45AccY81 rho : Seg45.F)⟩
      ⟨(rho 42244 : Seg45.F), (rho 42245 : Seg45.F)⟩
      ⟨(rho 42250 : Seg45.F), (rho 42251 : Seg45.F)⟩
      ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
      ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg45_rows82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4031 rho ∧ Seg45.relationRow4032 rho ∧ Seg45.relationRow4033 rho ∧ Seg45.relationRow4034 rho ∧ Seg45.relationRow4035 rho ∧ Seg45.relationRow4036 rho ∧ Seg45.relationRow4037 rho ∧ Seg45.relationRow4038 rho ∧ Seg45.relationRow4039 rho ∧ Seg45.relationRow4040 rho ∧ Seg45.relationRow4041 rho ∧ Seg45.relationRow4042 rho ∧ Seg45.relationRow4043 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩

theorem seg45_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41030 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩ := by
  obtain ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩ := seg45_rows82 rho h
  unfold Seg45.relationRow4031 at r4031
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4031
  unfold Seg45.relationRow4032 at r4032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032
  unfold Seg45.relationRow4033 at r4033
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4033
  unfold Seg45.relationRow4034 at r4034
  unfold Seg45.relationRow4035 at r4035
  unfold Seg45.relationRow4036 at r4036
  unfold Seg45.relationRow4037 at r4037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4037
  unfold Seg45.relationRow4038 at r4038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4038
  unfold Seg45.relationRow4039 at r4039
  unfold Seg45.relationRow4040 at r4040
  unfold Seg45.relationRow4041 at r4041
  unfold Seg45.relationRow4042 at r4042
  unfold Seg45.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 41030 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
        ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩ := by
    have hnextx : seg45AccX83 rho = seg45AccX82 rho + rho 42265 := by
      unfold seg45AccX83 seg45AccX82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 82]
      ring
    have hnexty : seg45AccY83 rho = seg45AccY82 rho + rho 42266 := by
      unfold seg45AccY83 seg45AccY82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 82]
      ring
    have ha0 : (rho 42257 + rho 42258) * (seg45AccX82 rho + seg45AccY82 rho) = rho 42259 := by
      unfold seg45AccX82 seg45AccY82
      linear_combination r4031
    have ha1 : rho 42258 * seg45AccX82 rho = rho 42260 := by
      unfold seg45AccX82
      linear_combination r4032
    have ha2 : rho 42257 * seg45AccY82 rho = rho 42261 := by
      unfold seg45AccY82
      linear_combination r4033
    have ha3 : 3021 * rho 42260 * rho 42261 = rho 42262 := by
      linear_combination r4034
    have ha4 : rho 42263 * (1 + rho 42262) = rho 42260 + rho 42261 := by
      linear_combination r4035
    have ha5 : rho 42264 * (1 - rho 42262) = rho 42259 - rho 42260 - rho 42261 := by
      linear_combination r4036
    have haddx :
        rho 42263 * (1 + 3021 * (rho 42258 * seg45AccX82 rho) * (rho 42257 * seg45AccY82 rho)) =
          rho 42258 * seg45AccX82 rho + rho 42257 * seg45AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42264 * (1 - 3021 * (rho 42258 * seg45AccX82 rho) * (rho 42257 * seg45AccY82 rho)) =
          (-1) * (rho 42258 * seg45AccX82 rho) - rho 42257 * seg45AccY82 rho +
            (seg45AccY82 rho - seg45AccX82 rho * (-1)) * (rho 42257 + rho 42258) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42264 * (1 - rho 42262) = rho 42259 - rho 42260 - rho 42261 := ha5
        _ = (-1) * rho 42260 - rho 42261 + (seg45AccY82 rho - seg45AccX82 rho * (-1)) * (rho 42257 + rho 42258) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX83 rho = seg45AccX82 rho - Bool.toZMod bit * (seg45AccX82 rho - rho 42263) := by
      have hd : rho 42265 = Bool.toZMod bit * (rho 42263 - seg45AccX82 rho) := by
        rw [← hbit]
        unfold seg45AccX82
        linear_combination -r4037
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY83 rho = seg45AccY82 rho - Bool.toZMod bit * (seg45AccY82 rho - rho 42264) := by
      have hd : rho 42266 = Bool.toZMod bit * (rho 42264 - seg45AccY82 rho) := by
        rw [← hbit]
        unfold seg45AccY82
        linear_combination -r4038
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42257 * rho 42258 = rho 42267 := by linear_combination r4039
    have hd1 : rho 42257 * rho 42257 = rho 42268 := by linear_combination r4040
    have hd2 : rho 42258 * rho 42258 = rho 42269 := by linear_combination r4041
    have hd3 : rho 42270 * (rho 42258 * rho 42258 + rho 42257 * rho 42257 * (-1)) = 2 * (rho 42257 * rho 42258) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 42271 * (2 - (rho 42258 * rho 42258 + rho 42257 * rho 42257 * (-1))) = rho 42258 * rho 42258 - rho 42257 * rho 42257 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX82 rho : Seg45.F), (seg45AccY82 rho : Seg45.F)⟩
      ⟨(rho 42257 : Seg45.F), (rho 42258 : Seg45.F)⟩
      ⟨(rho 42263 : Seg45.F), (rho 42264 : Seg45.F)⟩
      ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
      ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg45_rows83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4044 rho ∧ Seg45.relationRow4045 rho ∧ Seg45.relationRow4046 rho ∧ Seg45.relationRow4047 rho ∧ Seg45.relationRow4048 rho ∧ Seg45.relationRow4049 rho ∧ Seg45.relationRow4050 rho ∧ Seg45.relationRow4051 rho ∧ Seg45.relationRow4052 rho ∧ Seg45.relationRow4053 rho ∧ Seg45.relationRow4054 rho ∧ Seg45.relationRow4055 rho ∧ Seg45.relationRow4056 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩

theorem seg45_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41031 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩ := by
  obtain ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩ := seg45_rows83 rho h
  unfold Seg45.relationRow4044 at r4044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4044
  unfold Seg45.relationRow4045 at r4045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045
  unfold Seg45.relationRow4046 at r4046
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4046
  unfold Seg45.relationRow4047 at r4047
  unfold Seg45.relationRow4048 at r4048
  unfold Seg45.relationRow4049 at r4049
  unfold Seg45.relationRow4050 at r4050
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4050
  unfold Seg45.relationRow4051 at r4051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4051
  unfold Seg45.relationRow4052 at r4052
  unfold Seg45.relationRow4053 at r4053
  unfold Seg45.relationRow4054 at r4054
  unfold Seg45.relationRow4055 at r4055
  unfold Seg45.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 41031 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
        ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩ := by
    have hnextx : seg45AccX84 rho = seg45AccX83 rho + rho 42278 := by
      unfold seg45AccX84 seg45AccX83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 83]
      ring
    have hnexty : seg45AccY84 rho = seg45AccY83 rho + rho 42279 := by
      unfold seg45AccY84 seg45AccY83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 83]
      ring
    have ha0 : (rho 42270 + rho 42271) * (seg45AccX83 rho + seg45AccY83 rho) = rho 42272 := by
      unfold seg45AccX83 seg45AccY83
      linear_combination r4044
    have ha1 : rho 42271 * seg45AccX83 rho = rho 42273 := by
      unfold seg45AccX83
      linear_combination r4045
    have ha2 : rho 42270 * seg45AccY83 rho = rho 42274 := by
      unfold seg45AccY83
      linear_combination r4046
    have ha3 : 3021 * rho 42273 * rho 42274 = rho 42275 := by
      linear_combination r4047
    have ha4 : rho 42276 * (1 + rho 42275) = rho 42273 + rho 42274 := by
      linear_combination r4048
    have ha5 : rho 42277 * (1 - rho 42275) = rho 42272 - rho 42273 - rho 42274 := by
      linear_combination r4049
    have haddx :
        rho 42276 * (1 + 3021 * (rho 42271 * seg45AccX83 rho) * (rho 42270 * seg45AccY83 rho)) =
          rho 42271 * seg45AccX83 rho + rho 42270 * seg45AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42277 * (1 - 3021 * (rho 42271 * seg45AccX83 rho) * (rho 42270 * seg45AccY83 rho)) =
          (-1) * (rho 42271 * seg45AccX83 rho) - rho 42270 * seg45AccY83 rho +
            (seg45AccY83 rho - seg45AccX83 rho * (-1)) * (rho 42270 + rho 42271) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42277 * (1 - rho 42275) = rho 42272 - rho 42273 - rho 42274 := ha5
        _ = (-1) * rho 42273 - rho 42274 + (seg45AccY83 rho - seg45AccX83 rho * (-1)) * (rho 42270 + rho 42271) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX84 rho = seg45AccX83 rho - Bool.toZMod bit * (seg45AccX83 rho - rho 42276) := by
      have hd : rho 42278 = Bool.toZMod bit * (rho 42276 - seg45AccX83 rho) := by
        rw [← hbit]
        unfold seg45AccX83
        linear_combination -r4050
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY84 rho = seg45AccY83 rho - Bool.toZMod bit * (seg45AccY83 rho - rho 42277) := by
      have hd : rho 42279 = Bool.toZMod bit * (rho 42277 - seg45AccY83 rho) := by
        rw [← hbit]
        unfold seg45AccY83
        linear_combination -r4051
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42270 * rho 42271 = rho 42280 := by linear_combination r4052
    have hd1 : rho 42270 * rho 42270 = rho 42281 := by linear_combination r4053
    have hd2 : rho 42271 * rho 42271 = rho 42282 := by linear_combination r4054
    have hd3 : rho 42283 * (rho 42271 * rho 42271 + rho 42270 * rho 42270 * (-1)) = 2 * (rho 42270 * rho 42271) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 42284 * (2 - (rho 42271 * rho 42271 + rho 42270 * rho 42270 * (-1))) = rho 42271 * rho 42271 - rho 42270 * rho 42270 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX83 rho : Seg45.F), (seg45AccY83 rho : Seg45.F)⟩
      ⟨(rho 42270 : Seg45.F), (rho 42271 : Seg45.F)⟩
      ⟨(rho 42276 : Seg45.F), (rho 42277 : Seg45.F)⟩
      ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
      ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg45_rows84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4057 rho ∧ Seg45.relationRow4058 rho ∧ Seg45.relationRow4059 rho ∧ Seg45.relationRow4060 rho ∧ Seg45.relationRow4061 rho ∧ Seg45.relationRow4062 rho ∧ Seg45.relationRow4063 rho ∧ Seg45.relationRow4064 rho ∧ Seg45.relationRow4065 rho ∧ Seg45.relationRow4066 rho ∧ Seg45.relationRow4067 rho ∧ Seg45.relationRow4068 rho ∧ Seg45.relationRow4069 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩

theorem seg45_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41032 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩ := by
  obtain ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩ := seg45_rows84 rho h
  unfold Seg45.relationRow4057 at r4057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4057
  unfold Seg45.relationRow4058 at r4058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058
  unfold Seg45.relationRow4059 at r4059
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4059
  unfold Seg45.relationRow4060 at r4060
  unfold Seg45.relationRow4061 at r4061
  unfold Seg45.relationRow4062 at r4062
  unfold Seg45.relationRow4063 at r4063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4063
  unfold Seg45.relationRow4064 at r4064
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4064
  unfold Seg45.relationRow4065 at r4065
  unfold Seg45.relationRow4066 at r4066
  unfold Seg45.relationRow4067 at r4067
  unfold Seg45.relationRow4068 at r4068
  unfold Seg45.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 41032 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
        ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩ := by
    have hnextx : seg45AccX85 rho = seg45AccX84 rho + rho 42291 := by
      unfold seg45AccX85 seg45AccX84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 84]
      ring
    have hnexty : seg45AccY85 rho = seg45AccY84 rho + rho 42292 := by
      unfold seg45AccY85 seg45AccY84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 84]
      ring
    have ha0 : (rho 42283 + rho 42284) * (seg45AccX84 rho + seg45AccY84 rho) = rho 42285 := by
      unfold seg45AccX84 seg45AccY84
      linear_combination r4057
    have ha1 : rho 42284 * seg45AccX84 rho = rho 42286 := by
      unfold seg45AccX84
      linear_combination r4058
    have ha2 : rho 42283 * seg45AccY84 rho = rho 42287 := by
      unfold seg45AccY84
      linear_combination r4059
    have ha3 : 3021 * rho 42286 * rho 42287 = rho 42288 := by
      linear_combination r4060
    have ha4 : rho 42289 * (1 + rho 42288) = rho 42286 + rho 42287 := by
      linear_combination r4061
    have ha5 : rho 42290 * (1 - rho 42288) = rho 42285 - rho 42286 - rho 42287 := by
      linear_combination r4062
    have haddx :
        rho 42289 * (1 + 3021 * (rho 42284 * seg45AccX84 rho) * (rho 42283 * seg45AccY84 rho)) =
          rho 42284 * seg45AccX84 rho + rho 42283 * seg45AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42290 * (1 - 3021 * (rho 42284 * seg45AccX84 rho) * (rho 42283 * seg45AccY84 rho)) =
          (-1) * (rho 42284 * seg45AccX84 rho) - rho 42283 * seg45AccY84 rho +
            (seg45AccY84 rho - seg45AccX84 rho * (-1)) * (rho 42283 + rho 42284) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42290 * (1 - rho 42288) = rho 42285 - rho 42286 - rho 42287 := ha5
        _ = (-1) * rho 42286 - rho 42287 + (seg45AccY84 rho - seg45AccX84 rho * (-1)) * (rho 42283 + rho 42284) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX85 rho = seg45AccX84 rho - Bool.toZMod bit * (seg45AccX84 rho - rho 42289) := by
      have hd : rho 42291 = Bool.toZMod bit * (rho 42289 - seg45AccX84 rho) := by
        rw [← hbit]
        unfold seg45AccX84
        linear_combination -r4063
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY85 rho = seg45AccY84 rho - Bool.toZMod bit * (seg45AccY84 rho - rho 42290) := by
      have hd : rho 42292 = Bool.toZMod bit * (rho 42290 - seg45AccY84 rho) := by
        rw [← hbit]
        unfold seg45AccY84
        linear_combination -r4064
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42283 * rho 42284 = rho 42293 := by linear_combination r4065
    have hd1 : rho 42283 * rho 42283 = rho 42294 := by linear_combination r4066
    have hd2 : rho 42284 * rho 42284 = rho 42295 := by linear_combination r4067
    have hd3 : rho 42296 * (rho 42284 * rho 42284 + rho 42283 * rho 42283 * (-1)) = 2 * (rho 42283 * rho 42284) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 42297 * (2 - (rho 42284 * rho 42284 + rho 42283 * rho 42283 * (-1))) = rho 42284 * rho 42284 - rho 42283 * rho 42283 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX84 rho : Seg45.F), (seg45AccY84 rho : Seg45.F)⟩
      ⟨(rho 42283 : Seg45.F), (rho 42284 : Seg45.F)⟩
      ⟨(rho 42289 : Seg45.F), (rho 42290 : Seg45.F)⟩
      ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
      ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg45_rows85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4070 rho ∧ Seg45.relationRow4071 rho ∧ Seg45.relationRow4072 rho ∧ Seg45.relationRow4073 rho ∧ Seg45.relationRow4074 rho ∧ Seg45.relationRow4075 rho ∧ Seg45.relationRow4076 rho ∧ Seg45.relationRow4077 rho ∧ Seg45.relationRow4078 rho ∧ Seg45.relationRow4079 rho ∧ Seg45.relationRow4080 rho ∧ Seg45.relationRow4081 rho ∧ Seg45.relationRow4082 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩

theorem seg45_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41033 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩ := by
  obtain ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩ := seg45_rows85 rho h
  unfold Seg45.relationRow4070 at r4070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4070
  unfold Seg45.relationRow4071 at r4071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071
  unfold Seg45.relationRow4072 at r4072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4072
  unfold Seg45.relationRow4073 at r4073
  unfold Seg45.relationRow4074 at r4074
  unfold Seg45.relationRow4075 at r4075
  unfold Seg45.relationRow4076 at r4076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4076
  unfold Seg45.relationRow4077 at r4077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4077
  unfold Seg45.relationRow4078 at r4078
  unfold Seg45.relationRow4079 at r4079
  unfold Seg45.relationRow4080 at r4080
  unfold Seg45.relationRow4081 at r4081
  unfold Seg45.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 41033 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
        ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩ := by
    have hnextx : seg45AccX86 rho = seg45AccX85 rho + rho 42304 := by
      unfold seg45AccX86 seg45AccX85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 85]
      ring
    have hnexty : seg45AccY86 rho = seg45AccY85 rho + rho 42305 := by
      unfold seg45AccY86 seg45AccY85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 85]
      ring
    have ha0 : (rho 42296 + rho 42297) * (seg45AccX85 rho + seg45AccY85 rho) = rho 42298 := by
      unfold seg45AccX85 seg45AccY85
      linear_combination r4070
    have ha1 : rho 42297 * seg45AccX85 rho = rho 42299 := by
      unfold seg45AccX85
      linear_combination r4071
    have ha2 : rho 42296 * seg45AccY85 rho = rho 42300 := by
      unfold seg45AccY85
      linear_combination r4072
    have ha3 : 3021 * rho 42299 * rho 42300 = rho 42301 := by
      linear_combination r4073
    have ha4 : rho 42302 * (1 + rho 42301) = rho 42299 + rho 42300 := by
      linear_combination r4074
    have ha5 : rho 42303 * (1 - rho 42301) = rho 42298 - rho 42299 - rho 42300 := by
      linear_combination r4075
    have haddx :
        rho 42302 * (1 + 3021 * (rho 42297 * seg45AccX85 rho) * (rho 42296 * seg45AccY85 rho)) =
          rho 42297 * seg45AccX85 rho + rho 42296 * seg45AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42303 * (1 - 3021 * (rho 42297 * seg45AccX85 rho) * (rho 42296 * seg45AccY85 rho)) =
          (-1) * (rho 42297 * seg45AccX85 rho) - rho 42296 * seg45AccY85 rho +
            (seg45AccY85 rho - seg45AccX85 rho * (-1)) * (rho 42296 + rho 42297) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42303 * (1 - rho 42301) = rho 42298 - rho 42299 - rho 42300 := ha5
        _ = (-1) * rho 42299 - rho 42300 + (seg45AccY85 rho - seg45AccX85 rho * (-1)) * (rho 42296 + rho 42297) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX86 rho = seg45AccX85 rho - Bool.toZMod bit * (seg45AccX85 rho - rho 42302) := by
      have hd : rho 42304 = Bool.toZMod bit * (rho 42302 - seg45AccX85 rho) := by
        rw [← hbit]
        unfold seg45AccX85
        linear_combination -r4076
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY86 rho = seg45AccY85 rho - Bool.toZMod bit * (seg45AccY85 rho - rho 42303) := by
      have hd : rho 42305 = Bool.toZMod bit * (rho 42303 - seg45AccY85 rho) := by
        rw [← hbit]
        unfold seg45AccY85
        linear_combination -r4077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42296 * rho 42297 = rho 42306 := by linear_combination r4078
    have hd1 : rho 42296 * rho 42296 = rho 42307 := by linear_combination r4079
    have hd2 : rho 42297 * rho 42297 = rho 42308 := by linear_combination r4080
    have hd3 : rho 42309 * (rho 42297 * rho 42297 + rho 42296 * rho 42296 * (-1)) = 2 * (rho 42296 * rho 42297) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 42310 * (2 - (rho 42297 * rho 42297 + rho 42296 * rho 42296 * (-1))) = rho 42297 * rho 42297 - rho 42296 * rho 42296 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX85 rho : Seg45.F), (seg45AccY85 rho : Seg45.F)⟩
      ⟨(rho 42296 : Seg45.F), (rho 42297 : Seg45.F)⟩
      ⟨(rho 42302 : Seg45.F), (rho 42303 : Seg45.F)⟩
      ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
      ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg45_rows86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4083 rho ∧ Seg45.relationRow4084 rho ∧ Seg45.relationRow4085 rho ∧ Seg45.relationRow4086 rho ∧ Seg45.relationRow4087 rho ∧ Seg45.relationRow4088 rho ∧ Seg45.relationRow4089 rho ∧ Seg45.relationRow4090 rho ∧ Seg45.relationRow4091 rho ∧ Seg45.relationRow4092 rho ∧ Seg45.relationRow4093 rho ∧ Seg45.relationRow4094 rho ∧ Seg45.relationRow4095 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩

theorem seg45_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41034 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩ := by
  obtain ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩ := seg45_rows86 rho h
  unfold Seg45.relationRow4083 at r4083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4083
  unfold Seg45.relationRow4084 at r4084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084
  unfold Seg45.relationRow4085 at r4085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4085
  unfold Seg45.relationRow4086 at r4086
  unfold Seg45.relationRow4087 at r4087
  unfold Seg45.relationRow4088 at r4088
  unfold Seg45.relationRow4089 at r4089
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4089
  unfold Seg45.relationRow4090 at r4090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4090
  unfold Seg45.relationRow4091 at r4091
  unfold Seg45.relationRow4092 at r4092
  unfold Seg45.relationRow4093 at r4093
  unfold Seg45.relationRow4094 at r4094
  unfold Seg45.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 41034 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
        ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩ := by
    have hnextx : seg45AccX87 rho = seg45AccX86 rho + rho 42317 := by
      unfold seg45AccX87 seg45AccX86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 86]
      ring
    have hnexty : seg45AccY87 rho = seg45AccY86 rho + rho 42318 := by
      unfold seg45AccY87 seg45AccY86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 86]
      ring
    have ha0 : (rho 42309 + rho 42310) * (seg45AccX86 rho + seg45AccY86 rho) = rho 42311 := by
      unfold seg45AccX86 seg45AccY86
      linear_combination r4083
    have ha1 : rho 42310 * seg45AccX86 rho = rho 42312 := by
      unfold seg45AccX86
      linear_combination r4084
    have ha2 : rho 42309 * seg45AccY86 rho = rho 42313 := by
      unfold seg45AccY86
      linear_combination r4085
    have ha3 : 3021 * rho 42312 * rho 42313 = rho 42314 := by
      linear_combination r4086
    have ha4 : rho 42315 * (1 + rho 42314) = rho 42312 + rho 42313 := by
      linear_combination r4087
    have ha5 : rho 42316 * (1 - rho 42314) = rho 42311 - rho 42312 - rho 42313 := by
      linear_combination r4088
    have haddx :
        rho 42315 * (1 + 3021 * (rho 42310 * seg45AccX86 rho) * (rho 42309 * seg45AccY86 rho)) =
          rho 42310 * seg45AccX86 rho + rho 42309 * seg45AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42316 * (1 - 3021 * (rho 42310 * seg45AccX86 rho) * (rho 42309 * seg45AccY86 rho)) =
          (-1) * (rho 42310 * seg45AccX86 rho) - rho 42309 * seg45AccY86 rho +
            (seg45AccY86 rho - seg45AccX86 rho * (-1)) * (rho 42309 + rho 42310) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42316 * (1 - rho 42314) = rho 42311 - rho 42312 - rho 42313 := ha5
        _ = (-1) * rho 42312 - rho 42313 + (seg45AccY86 rho - seg45AccX86 rho * (-1)) * (rho 42309 + rho 42310) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX87 rho = seg45AccX86 rho - Bool.toZMod bit * (seg45AccX86 rho - rho 42315) := by
      have hd : rho 42317 = Bool.toZMod bit * (rho 42315 - seg45AccX86 rho) := by
        rw [← hbit]
        unfold seg45AccX86
        linear_combination -r4089
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY87 rho = seg45AccY86 rho - Bool.toZMod bit * (seg45AccY86 rho - rho 42316) := by
      have hd : rho 42318 = Bool.toZMod bit * (rho 42316 - seg45AccY86 rho) := by
        rw [← hbit]
        unfold seg45AccY86
        linear_combination -r4090
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42309 * rho 42310 = rho 42319 := by linear_combination r4091
    have hd1 : rho 42309 * rho 42309 = rho 42320 := by linear_combination r4092
    have hd2 : rho 42310 * rho 42310 = rho 42321 := by linear_combination r4093
    have hd3 : rho 42322 * (rho 42310 * rho 42310 + rho 42309 * rho 42309 * (-1)) = 2 * (rho 42309 * rho 42310) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 42323 * (2 - (rho 42310 * rho 42310 + rho 42309 * rho 42309 * (-1))) = rho 42310 * rho 42310 - rho 42309 * rho 42309 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX86 rho : Seg45.F), (seg45AccY86 rho : Seg45.F)⟩
      ⟨(rho 42309 : Seg45.F), (rho 42310 : Seg45.F)⟩
      ⟨(rho 42315 : Seg45.F), (rho 42316 : Seg45.F)⟩
      ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
      ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg45_rows87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow4096 rho ∧ Seg45.relationRow4097 rho ∧ Seg45.relationRow4098 rho ∧ Seg45.relationRow4099 rho ∧ Seg45.relationRow4100 rho ∧ Seg45.relationRow4101 rho ∧ Seg45.relationRow4102 rho ∧ Seg45.relationRow4103 rho ∧ Seg45.relationRow4104 rho ∧ Seg45.relationRow4105 rho ∧ Seg45.relationRow4106 rho ∧ Seg45.relationRow4107 rho ∧ Seg45.relationRow4108 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩

theorem seg45_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41035 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩ := by
  obtain ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩ := seg45_rows87 rho h
  unfold Seg45.relationRow4096 at r4096
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4096
  unfold Seg45.relationRow4097 at r4097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097
  unfold Seg45.relationRow4098 at r4098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4098
  unfold Seg45.relationRow4099 at r4099
  unfold Seg45.relationRow4100 at r4100
  unfold Seg45.relationRow4101 at r4101
  unfold Seg45.relationRow4102 at r4102
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4102
  unfold Seg45.relationRow4103 at r4103
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4103
  unfold Seg45.relationRow4104 at r4104
  unfold Seg45.relationRow4105 at r4105
  unfold Seg45.relationRow4106 at r4106
  unfold Seg45.relationRow4107 at r4107
  unfold Seg45.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 41035 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
        ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
        ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
        ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩ := by
    have hnextx : seg45AccX88 rho = seg45AccX87 rho + rho 42330 := by
      unfold seg45AccX88 seg45AccX87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41199 13 87]
      ring
    have hnexty : seg45AccY88 rho = seg45AccY87 rho + rho 42331 := by
      unfold seg45AccY88 seg45AccY87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 41200 13 87]
      ring
    have ha0 : (rho 42322 + rho 42323) * (seg45AccX87 rho + seg45AccY87 rho) = rho 42324 := by
      unfold seg45AccX87 seg45AccY87
      linear_combination r4096
    have ha1 : rho 42323 * seg45AccX87 rho = rho 42325 := by
      unfold seg45AccX87
      linear_combination r4097
    have ha2 : rho 42322 * seg45AccY87 rho = rho 42326 := by
      unfold seg45AccY87
      linear_combination r4098
    have ha3 : 3021 * rho 42325 * rho 42326 = rho 42327 := by
      linear_combination r4099
    have ha4 : rho 42328 * (1 + rho 42327) = rho 42325 + rho 42326 := by
      linear_combination r4100
    have ha5 : rho 42329 * (1 - rho 42327) = rho 42324 - rho 42325 - rho 42326 := by
      linear_combination r4101
    have haddx :
        rho 42328 * (1 + 3021 * (rho 42323 * seg45AccX87 rho) * (rho 42322 * seg45AccY87 rho)) =
          rho 42323 * seg45AccX87 rho + rho 42322 * seg45AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 42329 * (1 - 3021 * (rho 42323 * seg45AccX87 rho) * (rho 42322 * seg45AccY87 rho)) =
          (-1) * (rho 42323 * seg45AccX87 rho) - rho 42322 * seg45AccY87 rho +
            (seg45AccY87 rho - seg45AccX87 rho * (-1)) * (rho 42322 + rho 42323) := by
      rw [ha1, ha2, ha3]
      calc
        rho 42329 * (1 - rho 42327) = rho 42324 - rho 42325 - rho 42326 := ha5
        _ = (-1) * rho 42325 - rho 42326 + (seg45AccY87 rho - seg45AccX87 rho * (-1)) * (rho 42322 + rho 42323) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX88 rho = seg45AccX87 rho - Bool.toZMod bit * (seg45AccX87 rho - rho 42328) := by
      have hd : rho 42330 = Bool.toZMod bit * (rho 42328 - seg45AccX87 rho) := by
        rw [← hbit]
        unfold seg45AccX87
        linear_combination -r4102
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY88 rho = seg45AccY87 rho - Bool.toZMod bit * (seg45AccY87 rho - rho 42329) := by
      have hd : rho 42331 = Bool.toZMod bit * (rho 42329 - seg45AccY87 rho) := by
        rw [← hbit]
        unfold seg45AccY87
        linear_combination -r4103
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 42322 * rho 42323 = rho 42332 := by linear_combination r4104
    have hd1 : rho 42322 * rho 42322 = rho 42333 := by linear_combination r4105
    have hd2 : rho 42323 * rho 42323 = rho 42334 := by linear_combination r4106
    have hd3 : rho 42335 * (rho 42323 * rho 42323 + rho 42322 * rho 42322 * (-1)) = 2 * (rho 42322 * rho 42323) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 42336 * (2 - (rho 42323 * rho 42323 + rho 42322 * rho 42322 * (-1))) = rho 42323 * rho 42323 - rho 42322 * rho 42322 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX87 rho : Seg45.F), (seg45AccY87 rho : Seg45.F)⟩
      ⟨(rho 42322 : Seg45.F), (rho 42323 : Seg45.F)⟩
      ⟨(rho 42328 : Seg45.F), (rho 42329 : Seg45.F)⟩
      ⟨(seg45AccX88 rho : Seg45.F), (seg45AccY88 rho : Seg45.F)⟩
      ⟨(rho 42335 : Seg45.F), (rho 42336 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg45_hstep_c7 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg45_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg45_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg45_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg45_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg45_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg45_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg45_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg45_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg45_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg45_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
