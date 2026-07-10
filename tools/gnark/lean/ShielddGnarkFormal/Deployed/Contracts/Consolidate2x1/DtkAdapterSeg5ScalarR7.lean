import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3966 rho ∧ Seg5.relationRow3967 rho ∧ Seg5.relationRow3968 rho ∧ Seg5.relationRow3969 rho ∧ Seg5.relationRow3970 rho ∧ Seg5.relationRow3971 rho ∧ Seg5.relationRow3972 rho ∧ Seg5.relationRow3973 rho ∧ Seg5.relationRow3974 rho ∧ Seg5.relationRow3975 rho ∧ Seg5.relationRow3976 rho ∧ Seg5.relationRow3977 rho ∧ Seg5.relationRow3978 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩

theorem seg5_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2492 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩
        ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩
        ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩
        ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩ := by
  obtain ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩ := seg5_rows77 rho h
  unfold Seg5.relationRow3966 at r3966
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3966
  unfold Seg5.relationRow3967 at r3967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967
  unfold Seg5.relationRow3968 at r3968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3968
  unfold Seg5.relationRow3969 at r3969
  unfold Seg5.relationRow3970 at r3970
  unfold Seg5.relationRow3971 at r3971
  unfold Seg5.relationRow3972 at r3972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3972
  unfold Seg5.relationRow3973 at r3973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3973
  unfold Seg5.relationRow3974 at r3974
  unfold Seg5.relationRow3975 at r3975
  unfold Seg5.relationRow3976 at r3976
  unfold Seg5.relationRow3977 at r3977
  unfold Seg5.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 2492 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩
        ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩
        ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩
        ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩ := by
    have hnextx : seg5AccX78 rho = seg5AccX77 rho + rho 3667 := by
      unfold seg5AccX78 seg5AccX77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 77]
      ring
    have hnexty : seg5AccY78 rho = seg5AccY77 rho + rho 3668 := by
      unfold seg5AccY78 seg5AccY77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 77]
      ring
    have ha0 : (rho 3659 + rho 3660) * (seg5AccX77 rho + seg5AccY77 rho) = rho 3661 := by
      unfold seg5AccX77 seg5AccY77
      linear_combination r3966
    have ha1 : rho 3660 * seg5AccX77 rho = rho 3662 := by
      unfold seg5AccX77
      linear_combination r3967
    have ha2 : rho 3659 * seg5AccY77 rho = rho 3663 := by
      unfold seg5AccY77
      linear_combination r3968
    have ha3 : 3021 * rho 3662 * rho 3663 = rho 3664 := by
      linear_combination r3969
    have ha4 : rho 3665 * (1 + rho 3664) = rho 3662 + rho 3663 := by
      linear_combination r3970
    have ha5 : rho 3666 * (1 - rho 3664) = rho 3661 - rho 3662 - rho 3663 := by
      linear_combination r3971
    have haddx :
        rho 3665 * (1 + 3021 * (rho 3660 * seg5AccX77 rho) * (rho 3659 * seg5AccY77 rho)) =
          rho 3660 * seg5AccX77 rho + rho 3659 * seg5AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3666 * (1 - 3021 * (rho 3660 * seg5AccX77 rho) * (rho 3659 * seg5AccY77 rho)) =
          (-1) * (rho 3660 * seg5AccX77 rho) - rho 3659 * seg5AccY77 rho +
            (seg5AccY77 rho - seg5AccX77 rho * (-1)) * (rho 3659 + rho 3660) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3666 * (1 - rho 3664) = rho 3661 - rho 3662 - rho 3663 := ha5
        _ = (-1) * rho 3662 - rho 3663 + (seg5AccY77 rho - seg5AccX77 rho * (-1)) * (rho 3659 + rho 3660) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX78 rho = seg5AccX77 rho - Bool.toZMod bit * (seg5AccX77 rho - rho 3665) := by
      have hd : rho 3667 = Bool.toZMod bit * (rho 3665 - seg5AccX77 rho) := by
        rw [← hbit]
        unfold seg5AccX77
        linear_combination -r3972
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY78 rho = seg5AccY77 rho - Bool.toZMod bit * (seg5AccY77 rho - rho 3666) := by
      have hd : rho 3668 = Bool.toZMod bit * (rho 3666 - seg5AccY77 rho) := by
        rw [← hbit]
        unfold seg5AccY77
        linear_combination -r3973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3659 * rho 3660 = rho 3669 := by linear_combination r3974
    have hd1 : rho 3659 * rho 3659 = rho 3670 := by linear_combination r3975
    have hd2 : rho 3660 * rho 3660 = rho 3671 := by linear_combination r3976
    have hd3 : rho 3672 * (rho 3660 * rho 3660 + rho 3659 * rho 3659 * (-1)) = 2 * (rho 3659 * rho 3660) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 3673 * (2 - (rho 3660 * rho 3660 + rho 3659 * rho 3659 * (-1))) = rho 3660 * rho 3660 - rho 3659 * rho 3659 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX77 rho : Seg5.F), (seg5AccY77 rho : Seg5.F)⟩
      ⟨(rho 3659 : Seg5.F), (rho 3660 : Seg5.F)⟩
      ⟨(rho 3665 : Seg5.F), (rho 3666 : Seg5.F)⟩
      ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩
      ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg5_rows78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3979 rho ∧ Seg5.relationRow3980 rho ∧ Seg5.relationRow3981 rho ∧ Seg5.relationRow3982 rho ∧ Seg5.relationRow3983 rho ∧ Seg5.relationRow3984 rho ∧ Seg5.relationRow3985 rho ∧ Seg5.relationRow3986 rho ∧ Seg5.relationRow3987 rho ∧ Seg5.relationRow3988 rho ∧ Seg5.relationRow3989 rho ∧ Seg5.relationRow3990 rho ∧ Seg5.relationRow3991 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  exact ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩

theorem seg5_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2493 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩
        ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩
        ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩
        ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩ := by
  obtain ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩ := seg5_rows78 rho h
  unfold Seg5.relationRow3979 at r3979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3979
  unfold Seg5.relationRow3980 at r3980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980
  unfold Seg5.relationRow3981 at r3981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3981
  unfold Seg5.relationRow3982 at r3982
  unfold Seg5.relationRow3983 at r3983
  unfold Seg5.relationRow3984 at r3984
  unfold Seg5.relationRow3985 at r3985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3985
  unfold Seg5.relationRow3986 at r3986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3986
  unfold Seg5.relationRow3987 at r3987
  unfold Seg5.relationRow3988 at r3988
  unfold Seg5.relationRow3989 at r3989
  unfold Seg5.relationRow3990 at r3990
  unfold Seg5.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 2493 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩
        ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩
        ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩
        ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩ := by
    have hnextx : seg5AccX79 rho = seg5AccX78 rho + rho 3680 := by
      unfold seg5AccX79 seg5AccX78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 78]
      ring
    have hnexty : seg5AccY79 rho = seg5AccY78 rho + rho 3681 := by
      unfold seg5AccY79 seg5AccY78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 78]
      ring
    have ha0 : (rho 3672 + rho 3673) * (seg5AccX78 rho + seg5AccY78 rho) = rho 3674 := by
      unfold seg5AccX78 seg5AccY78
      linear_combination r3979
    have ha1 : rho 3673 * seg5AccX78 rho = rho 3675 := by
      unfold seg5AccX78
      linear_combination r3980
    have ha2 : rho 3672 * seg5AccY78 rho = rho 3676 := by
      unfold seg5AccY78
      linear_combination r3981
    have ha3 : 3021 * rho 3675 * rho 3676 = rho 3677 := by
      linear_combination r3982
    have ha4 : rho 3678 * (1 + rho 3677) = rho 3675 + rho 3676 := by
      linear_combination r3983
    have ha5 : rho 3679 * (1 - rho 3677) = rho 3674 - rho 3675 - rho 3676 := by
      linear_combination r3984
    have haddx :
        rho 3678 * (1 + 3021 * (rho 3673 * seg5AccX78 rho) * (rho 3672 * seg5AccY78 rho)) =
          rho 3673 * seg5AccX78 rho + rho 3672 * seg5AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3679 * (1 - 3021 * (rho 3673 * seg5AccX78 rho) * (rho 3672 * seg5AccY78 rho)) =
          (-1) * (rho 3673 * seg5AccX78 rho) - rho 3672 * seg5AccY78 rho +
            (seg5AccY78 rho - seg5AccX78 rho * (-1)) * (rho 3672 + rho 3673) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3679 * (1 - rho 3677) = rho 3674 - rho 3675 - rho 3676 := ha5
        _ = (-1) * rho 3675 - rho 3676 + (seg5AccY78 rho - seg5AccX78 rho * (-1)) * (rho 3672 + rho 3673) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX79 rho = seg5AccX78 rho - Bool.toZMod bit * (seg5AccX78 rho - rho 3678) := by
      have hd : rho 3680 = Bool.toZMod bit * (rho 3678 - seg5AccX78 rho) := by
        rw [← hbit]
        unfold seg5AccX78
        linear_combination -r3985
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY79 rho = seg5AccY78 rho - Bool.toZMod bit * (seg5AccY78 rho - rho 3679) := by
      have hd : rho 3681 = Bool.toZMod bit * (rho 3679 - seg5AccY78 rho) := by
        rw [← hbit]
        unfold seg5AccY78
        linear_combination -r3986
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3672 * rho 3673 = rho 3682 := by linear_combination r3987
    have hd1 : rho 3672 * rho 3672 = rho 3683 := by linear_combination r3988
    have hd2 : rho 3673 * rho 3673 = rho 3684 := by linear_combination r3989
    have hd3 : rho 3685 * (rho 3673 * rho 3673 + rho 3672 * rho 3672 * (-1)) = 2 * (rho 3672 * rho 3673) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 3686 * (2 - (rho 3673 * rho 3673 + rho 3672 * rho 3672 * (-1))) = rho 3673 * rho 3673 - rho 3672 * rho 3672 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX78 rho : Seg5.F), (seg5AccY78 rho : Seg5.F)⟩
      ⟨(rho 3672 : Seg5.F), (rho 3673 : Seg5.F)⟩
      ⟨(rho 3678 : Seg5.F), (rho 3679 : Seg5.F)⟩
      ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩
      ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg5_rows79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow3992 rho ∧ Seg5.relationRow3993 rho ∧ Seg5.relationRow3994 rho ∧ Seg5.relationRow3995 rho ∧ Seg5.relationRow3996 rho ∧ Seg5.relationRow3997 rho ∧ Seg5.relationRow3998 rho ∧ Seg5.relationRow3999 rho ∧ Seg5.relationRow4000 rho ∧ Seg5.relationRow4001 rho ∧ Seg5.relationRow4002 rho ∧ Seg5.relationRow4003 rho ∧ Seg5.relationRow4004 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩

theorem seg5_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2494 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩
        ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩
        ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩
        ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩ := by
  obtain ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩ := seg5_rows79 rho h
  unfold Seg5.relationRow3992 at r3992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3992
  unfold Seg5.relationRow3993 at r3993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993
  unfold Seg5.relationRow3994 at r3994
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3994
  unfold Seg5.relationRow3995 at r3995
  unfold Seg5.relationRow3996 at r3996
  unfold Seg5.relationRow3997 at r3997
  unfold Seg5.relationRow3998 at r3998
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3998
  unfold Seg5.relationRow3999 at r3999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3999
  unfold Seg5.relationRow4000 at r4000
  unfold Seg5.relationRow4001 at r4001
  unfold Seg5.relationRow4002 at r4002
  unfold Seg5.relationRow4003 at r4003
  unfold Seg5.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 2494 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩
        ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩
        ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩
        ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩ := by
    have hnextx : seg5AccX80 rho = seg5AccX79 rho + rho 3693 := by
      unfold seg5AccX80 seg5AccX79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 79]
      ring
    have hnexty : seg5AccY80 rho = seg5AccY79 rho + rho 3694 := by
      unfold seg5AccY80 seg5AccY79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 79]
      ring
    have ha0 : (rho 3685 + rho 3686) * (seg5AccX79 rho + seg5AccY79 rho) = rho 3687 := by
      unfold seg5AccX79 seg5AccY79
      linear_combination r3992
    have ha1 : rho 3686 * seg5AccX79 rho = rho 3688 := by
      unfold seg5AccX79
      linear_combination r3993
    have ha2 : rho 3685 * seg5AccY79 rho = rho 3689 := by
      unfold seg5AccY79
      linear_combination r3994
    have ha3 : 3021 * rho 3688 * rho 3689 = rho 3690 := by
      linear_combination r3995
    have ha4 : rho 3691 * (1 + rho 3690) = rho 3688 + rho 3689 := by
      linear_combination r3996
    have ha5 : rho 3692 * (1 - rho 3690) = rho 3687 - rho 3688 - rho 3689 := by
      linear_combination r3997
    have haddx :
        rho 3691 * (1 + 3021 * (rho 3686 * seg5AccX79 rho) * (rho 3685 * seg5AccY79 rho)) =
          rho 3686 * seg5AccX79 rho + rho 3685 * seg5AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3692 * (1 - 3021 * (rho 3686 * seg5AccX79 rho) * (rho 3685 * seg5AccY79 rho)) =
          (-1) * (rho 3686 * seg5AccX79 rho) - rho 3685 * seg5AccY79 rho +
            (seg5AccY79 rho - seg5AccX79 rho * (-1)) * (rho 3685 + rho 3686) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3692 * (1 - rho 3690) = rho 3687 - rho 3688 - rho 3689 := ha5
        _ = (-1) * rho 3688 - rho 3689 + (seg5AccY79 rho - seg5AccX79 rho * (-1)) * (rho 3685 + rho 3686) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX80 rho = seg5AccX79 rho - Bool.toZMod bit * (seg5AccX79 rho - rho 3691) := by
      have hd : rho 3693 = Bool.toZMod bit * (rho 3691 - seg5AccX79 rho) := by
        rw [← hbit]
        unfold seg5AccX79
        linear_combination -r3998
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY80 rho = seg5AccY79 rho - Bool.toZMod bit * (seg5AccY79 rho - rho 3692) := by
      have hd : rho 3694 = Bool.toZMod bit * (rho 3692 - seg5AccY79 rho) := by
        rw [← hbit]
        unfold seg5AccY79
        linear_combination -r3999
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3685 * rho 3686 = rho 3695 := by linear_combination r4000
    have hd1 : rho 3685 * rho 3685 = rho 3696 := by linear_combination r4001
    have hd2 : rho 3686 * rho 3686 = rho 3697 := by linear_combination r4002
    have hd3 : rho 3698 * (rho 3686 * rho 3686 + rho 3685 * rho 3685 * (-1)) = 2 * (rho 3685 * rho 3686) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 3699 * (2 - (rho 3686 * rho 3686 + rho 3685 * rho 3685 * (-1))) = rho 3686 * rho 3686 - rho 3685 * rho 3685 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX79 rho : Seg5.F), (seg5AccY79 rho : Seg5.F)⟩
      ⟨(rho 3685 : Seg5.F), (rho 3686 : Seg5.F)⟩
      ⟨(rho 3691 : Seg5.F), (rho 3692 : Seg5.F)⟩
      ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩
      ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg5_rows80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4005 rho ∧ Seg5.relationRow4006 rho ∧ Seg5.relationRow4007 rho ∧ Seg5.relationRow4008 rho ∧ Seg5.relationRow4009 rho ∧ Seg5.relationRow4010 rho ∧ Seg5.relationRow4011 rho ∧ Seg5.relationRow4012 rho ∧ Seg5.relationRow4013 rho ∧ Seg5.relationRow4014 rho ∧ Seg5.relationRow4015 rho ∧ Seg5.relationRow4016 rho ∧ Seg5.relationRow4017 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩

theorem seg5_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2495 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩
        ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩
        ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩
        ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩ := by
  obtain ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩ := seg5_rows80 rho h
  unfold Seg5.relationRow4005 at r4005
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4005
  unfold Seg5.relationRow4006 at r4006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006
  unfold Seg5.relationRow4007 at r4007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4007
  unfold Seg5.relationRow4008 at r4008
  unfold Seg5.relationRow4009 at r4009
  unfold Seg5.relationRow4010 at r4010
  unfold Seg5.relationRow4011 at r4011
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4011
  unfold Seg5.relationRow4012 at r4012
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4012
  unfold Seg5.relationRow4013 at r4013
  unfold Seg5.relationRow4014 at r4014
  unfold Seg5.relationRow4015 at r4015
  unfold Seg5.relationRow4016 at r4016
  unfold Seg5.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 2495 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩
        ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩
        ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩
        ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩ := by
    have hnextx : seg5AccX81 rho = seg5AccX80 rho + rho 3706 := by
      unfold seg5AccX81 seg5AccX80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 80]
      ring
    have hnexty : seg5AccY81 rho = seg5AccY80 rho + rho 3707 := by
      unfold seg5AccY81 seg5AccY80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 80]
      ring
    have ha0 : (rho 3698 + rho 3699) * (seg5AccX80 rho + seg5AccY80 rho) = rho 3700 := by
      unfold seg5AccX80 seg5AccY80
      linear_combination r4005
    have ha1 : rho 3699 * seg5AccX80 rho = rho 3701 := by
      unfold seg5AccX80
      linear_combination r4006
    have ha2 : rho 3698 * seg5AccY80 rho = rho 3702 := by
      unfold seg5AccY80
      linear_combination r4007
    have ha3 : 3021 * rho 3701 * rho 3702 = rho 3703 := by
      linear_combination r4008
    have ha4 : rho 3704 * (1 + rho 3703) = rho 3701 + rho 3702 := by
      linear_combination r4009
    have ha5 : rho 3705 * (1 - rho 3703) = rho 3700 - rho 3701 - rho 3702 := by
      linear_combination r4010
    have haddx :
        rho 3704 * (1 + 3021 * (rho 3699 * seg5AccX80 rho) * (rho 3698 * seg5AccY80 rho)) =
          rho 3699 * seg5AccX80 rho + rho 3698 * seg5AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3705 * (1 - 3021 * (rho 3699 * seg5AccX80 rho) * (rho 3698 * seg5AccY80 rho)) =
          (-1) * (rho 3699 * seg5AccX80 rho) - rho 3698 * seg5AccY80 rho +
            (seg5AccY80 rho - seg5AccX80 rho * (-1)) * (rho 3698 + rho 3699) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3705 * (1 - rho 3703) = rho 3700 - rho 3701 - rho 3702 := ha5
        _ = (-1) * rho 3701 - rho 3702 + (seg5AccY80 rho - seg5AccX80 rho * (-1)) * (rho 3698 + rho 3699) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX81 rho = seg5AccX80 rho - Bool.toZMod bit * (seg5AccX80 rho - rho 3704) := by
      have hd : rho 3706 = Bool.toZMod bit * (rho 3704 - seg5AccX80 rho) := by
        rw [← hbit]
        unfold seg5AccX80
        linear_combination -r4011
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY81 rho = seg5AccY80 rho - Bool.toZMod bit * (seg5AccY80 rho - rho 3705) := by
      have hd : rho 3707 = Bool.toZMod bit * (rho 3705 - seg5AccY80 rho) := by
        rw [← hbit]
        unfold seg5AccY80
        linear_combination -r4012
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3698 * rho 3699 = rho 3708 := by linear_combination r4013
    have hd1 : rho 3698 * rho 3698 = rho 3709 := by linear_combination r4014
    have hd2 : rho 3699 * rho 3699 = rho 3710 := by linear_combination r4015
    have hd3 : rho 3711 * (rho 3699 * rho 3699 + rho 3698 * rho 3698 * (-1)) = 2 * (rho 3698 * rho 3699) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 3712 * (2 - (rho 3699 * rho 3699 + rho 3698 * rho 3698 * (-1))) = rho 3699 * rho 3699 - rho 3698 * rho 3698 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX80 rho : Seg5.F), (seg5AccY80 rho : Seg5.F)⟩
      ⟨(rho 3698 : Seg5.F), (rho 3699 : Seg5.F)⟩
      ⟨(rho 3704 : Seg5.F), (rho 3705 : Seg5.F)⟩
      ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩
      ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg5_rows81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4018 rho ∧ Seg5.relationRow4019 rho ∧ Seg5.relationRow4020 rho ∧ Seg5.relationRow4021 rho ∧ Seg5.relationRow4022 rho ∧ Seg5.relationRow4023 rho ∧ Seg5.relationRow4024 rho ∧ Seg5.relationRow4025 rho ∧ Seg5.relationRow4026 rho ∧ Seg5.relationRow4027 rho ∧ Seg5.relationRow4028 rho ∧ Seg5.relationRow4029 rho ∧ Seg5.relationRow4030 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩

theorem seg5_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2496 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩
        ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩
        ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩
        ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩ := by
  obtain ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩ := seg5_rows81 rho h
  unfold Seg5.relationRow4018 at r4018
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4018
  unfold Seg5.relationRow4019 at r4019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019
  unfold Seg5.relationRow4020 at r4020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4020
  unfold Seg5.relationRow4021 at r4021
  unfold Seg5.relationRow4022 at r4022
  unfold Seg5.relationRow4023 at r4023
  unfold Seg5.relationRow4024 at r4024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4024
  unfold Seg5.relationRow4025 at r4025
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4025
  unfold Seg5.relationRow4026 at r4026
  unfold Seg5.relationRow4027 at r4027
  unfold Seg5.relationRow4028 at r4028
  unfold Seg5.relationRow4029 at r4029
  unfold Seg5.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 2496 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩
        ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩
        ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩
        ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩ := by
    have hnextx : seg5AccX82 rho = seg5AccX81 rho + rho 3719 := by
      unfold seg5AccX82 seg5AccX81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 81]
      ring
    have hnexty : seg5AccY82 rho = seg5AccY81 rho + rho 3720 := by
      unfold seg5AccY82 seg5AccY81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 81]
      ring
    have ha0 : (rho 3711 + rho 3712) * (seg5AccX81 rho + seg5AccY81 rho) = rho 3713 := by
      unfold seg5AccX81 seg5AccY81
      linear_combination r4018
    have ha1 : rho 3712 * seg5AccX81 rho = rho 3714 := by
      unfold seg5AccX81
      linear_combination r4019
    have ha2 : rho 3711 * seg5AccY81 rho = rho 3715 := by
      unfold seg5AccY81
      linear_combination r4020
    have ha3 : 3021 * rho 3714 * rho 3715 = rho 3716 := by
      linear_combination r4021
    have ha4 : rho 3717 * (1 + rho 3716) = rho 3714 + rho 3715 := by
      linear_combination r4022
    have ha5 : rho 3718 * (1 - rho 3716) = rho 3713 - rho 3714 - rho 3715 := by
      linear_combination r4023
    have haddx :
        rho 3717 * (1 + 3021 * (rho 3712 * seg5AccX81 rho) * (rho 3711 * seg5AccY81 rho)) =
          rho 3712 * seg5AccX81 rho + rho 3711 * seg5AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3718 * (1 - 3021 * (rho 3712 * seg5AccX81 rho) * (rho 3711 * seg5AccY81 rho)) =
          (-1) * (rho 3712 * seg5AccX81 rho) - rho 3711 * seg5AccY81 rho +
            (seg5AccY81 rho - seg5AccX81 rho * (-1)) * (rho 3711 + rho 3712) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3718 * (1 - rho 3716) = rho 3713 - rho 3714 - rho 3715 := ha5
        _ = (-1) * rho 3714 - rho 3715 + (seg5AccY81 rho - seg5AccX81 rho * (-1)) * (rho 3711 + rho 3712) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX82 rho = seg5AccX81 rho - Bool.toZMod bit * (seg5AccX81 rho - rho 3717) := by
      have hd : rho 3719 = Bool.toZMod bit * (rho 3717 - seg5AccX81 rho) := by
        rw [← hbit]
        unfold seg5AccX81
        linear_combination -r4024
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY82 rho = seg5AccY81 rho - Bool.toZMod bit * (seg5AccY81 rho - rho 3718) := by
      have hd : rho 3720 = Bool.toZMod bit * (rho 3718 - seg5AccY81 rho) := by
        rw [← hbit]
        unfold seg5AccY81
        linear_combination -r4025
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3711 * rho 3712 = rho 3721 := by linear_combination r4026
    have hd1 : rho 3711 * rho 3711 = rho 3722 := by linear_combination r4027
    have hd2 : rho 3712 * rho 3712 = rho 3723 := by linear_combination r4028
    have hd3 : rho 3724 * (rho 3712 * rho 3712 + rho 3711 * rho 3711 * (-1)) = 2 * (rho 3711 * rho 3712) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 3725 * (2 - (rho 3712 * rho 3712 + rho 3711 * rho 3711 * (-1))) = rho 3712 * rho 3712 - rho 3711 * rho 3711 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX81 rho : Seg5.F), (seg5AccY81 rho : Seg5.F)⟩
      ⟨(rho 3711 : Seg5.F), (rho 3712 : Seg5.F)⟩
      ⟨(rho 3717 : Seg5.F), (rho 3718 : Seg5.F)⟩
      ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩
      ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg5_rows82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4031 rho ∧ Seg5.relationRow4032 rho ∧ Seg5.relationRow4033 rho ∧ Seg5.relationRow4034 rho ∧ Seg5.relationRow4035 rho ∧ Seg5.relationRow4036 rho ∧ Seg5.relationRow4037 rho ∧ Seg5.relationRow4038 rho ∧ Seg5.relationRow4039 rho ∧ Seg5.relationRow4040 rho ∧ Seg5.relationRow4041 rho ∧ Seg5.relationRow4042 rho ∧ Seg5.relationRow4043 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩

theorem seg5_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2497 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩
        ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩
        ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩
        ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩ := by
  obtain ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩ := seg5_rows82 rho h
  unfold Seg5.relationRow4031 at r4031
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4031
  unfold Seg5.relationRow4032 at r4032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032
  unfold Seg5.relationRow4033 at r4033
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4033
  unfold Seg5.relationRow4034 at r4034
  unfold Seg5.relationRow4035 at r4035
  unfold Seg5.relationRow4036 at r4036
  unfold Seg5.relationRow4037 at r4037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4037
  unfold Seg5.relationRow4038 at r4038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4038
  unfold Seg5.relationRow4039 at r4039
  unfold Seg5.relationRow4040 at r4040
  unfold Seg5.relationRow4041 at r4041
  unfold Seg5.relationRow4042 at r4042
  unfold Seg5.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 2497 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩
        ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩
        ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩
        ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩ := by
    have hnextx : seg5AccX83 rho = seg5AccX82 rho + rho 3732 := by
      unfold seg5AccX83 seg5AccX82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 82]
      ring
    have hnexty : seg5AccY83 rho = seg5AccY82 rho + rho 3733 := by
      unfold seg5AccY83 seg5AccY82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 82]
      ring
    have ha0 : (rho 3724 + rho 3725) * (seg5AccX82 rho + seg5AccY82 rho) = rho 3726 := by
      unfold seg5AccX82 seg5AccY82
      linear_combination r4031
    have ha1 : rho 3725 * seg5AccX82 rho = rho 3727 := by
      unfold seg5AccX82
      linear_combination r4032
    have ha2 : rho 3724 * seg5AccY82 rho = rho 3728 := by
      unfold seg5AccY82
      linear_combination r4033
    have ha3 : 3021 * rho 3727 * rho 3728 = rho 3729 := by
      linear_combination r4034
    have ha4 : rho 3730 * (1 + rho 3729) = rho 3727 + rho 3728 := by
      linear_combination r4035
    have ha5 : rho 3731 * (1 - rho 3729) = rho 3726 - rho 3727 - rho 3728 := by
      linear_combination r4036
    have haddx :
        rho 3730 * (1 + 3021 * (rho 3725 * seg5AccX82 rho) * (rho 3724 * seg5AccY82 rho)) =
          rho 3725 * seg5AccX82 rho + rho 3724 * seg5AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3731 * (1 - 3021 * (rho 3725 * seg5AccX82 rho) * (rho 3724 * seg5AccY82 rho)) =
          (-1) * (rho 3725 * seg5AccX82 rho) - rho 3724 * seg5AccY82 rho +
            (seg5AccY82 rho - seg5AccX82 rho * (-1)) * (rho 3724 + rho 3725) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3731 * (1 - rho 3729) = rho 3726 - rho 3727 - rho 3728 := ha5
        _ = (-1) * rho 3727 - rho 3728 + (seg5AccY82 rho - seg5AccX82 rho * (-1)) * (rho 3724 + rho 3725) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX83 rho = seg5AccX82 rho - Bool.toZMod bit * (seg5AccX82 rho - rho 3730) := by
      have hd : rho 3732 = Bool.toZMod bit * (rho 3730 - seg5AccX82 rho) := by
        rw [← hbit]
        unfold seg5AccX82
        linear_combination -r4037
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY83 rho = seg5AccY82 rho - Bool.toZMod bit * (seg5AccY82 rho - rho 3731) := by
      have hd : rho 3733 = Bool.toZMod bit * (rho 3731 - seg5AccY82 rho) := by
        rw [← hbit]
        unfold seg5AccY82
        linear_combination -r4038
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3724 * rho 3725 = rho 3734 := by linear_combination r4039
    have hd1 : rho 3724 * rho 3724 = rho 3735 := by linear_combination r4040
    have hd2 : rho 3725 * rho 3725 = rho 3736 := by linear_combination r4041
    have hd3 : rho 3737 * (rho 3725 * rho 3725 + rho 3724 * rho 3724 * (-1)) = 2 * (rho 3724 * rho 3725) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 3738 * (2 - (rho 3725 * rho 3725 + rho 3724 * rho 3724 * (-1))) = rho 3725 * rho 3725 - rho 3724 * rho 3724 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX82 rho : Seg5.F), (seg5AccY82 rho : Seg5.F)⟩
      ⟨(rho 3724 : Seg5.F), (rho 3725 : Seg5.F)⟩
      ⟨(rho 3730 : Seg5.F), (rho 3731 : Seg5.F)⟩
      ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩
      ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg5_rows83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4044 rho ∧ Seg5.relationRow4045 rho ∧ Seg5.relationRow4046 rho ∧ Seg5.relationRow4047 rho ∧ Seg5.relationRow4048 rho ∧ Seg5.relationRow4049 rho ∧ Seg5.relationRow4050 rho ∧ Seg5.relationRow4051 rho ∧ Seg5.relationRow4052 rho ∧ Seg5.relationRow4053 rho ∧ Seg5.relationRow4054 rho ∧ Seg5.relationRow4055 rho ∧ Seg5.relationRow4056 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩

theorem seg5_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2498 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩
        ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩
        ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩
        ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩ := by
  obtain ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩ := seg5_rows83 rho h
  unfold Seg5.relationRow4044 at r4044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4044
  unfold Seg5.relationRow4045 at r4045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045
  unfold Seg5.relationRow4046 at r4046
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4046
  unfold Seg5.relationRow4047 at r4047
  unfold Seg5.relationRow4048 at r4048
  unfold Seg5.relationRow4049 at r4049
  unfold Seg5.relationRow4050 at r4050
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4050
  unfold Seg5.relationRow4051 at r4051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4051
  unfold Seg5.relationRow4052 at r4052
  unfold Seg5.relationRow4053 at r4053
  unfold Seg5.relationRow4054 at r4054
  unfold Seg5.relationRow4055 at r4055
  unfold Seg5.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 2498 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩
        ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩
        ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩
        ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩ := by
    have hnextx : seg5AccX84 rho = seg5AccX83 rho + rho 3745 := by
      unfold seg5AccX84 seg5AccX83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 83]
      ring
    have hnexty : seg5AccY84 rho = seg5AccY83 rho + rho 3746 := by
      unfold seg5AccY84 seg5AccY83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 83]
      ring
    have ha0 : (rho 3737 + rho 3738) * (seg5AccX83 rho + seg5AccY83 rho) = rho 3739 := by
      unfold seg5AccX83 seg5AccY83
      linear_combination r4044
    have ha1 : rho 3738 * seg5AccX83 rho = rho 3740 := by
      unfold seg5AccX83
      linear_combination r4045
    have ha2 : rho 3737 * seg5AccY83 rho = rho 3741 := by
      unfold seg5AccY83
      linear_combination r4046
    have ha3 : 3021 * rho 3740 * rho 3741 = rho 3742 := by
      linear_combination r4047
    have ha4 : rho 3743 * (1 + rho 3742) = rho 3740 + rho 3741 := by
      linear_combination r4048
    have ha5 : rho 3744 * (1 - rho 3742) = rho 3739 - rho 3740 - rho 3741 := by
      linear_combination r4049
    have haddx :
        rho 3743 * (1 + 3021 * (rho 3738 * seg5AccX83 rho) * (rho 3737 * seg5AccY83 rho)) =
          rho 3738 * seg5AccX83 rho + rho 3737 * seg5AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3744 * (1 - 3021 * (rho 3738 * seg5AccX83 rho) * (rho 3737 * seg5AccY83 rho)) =
          (-1) * (rho 3738 * seg5AccX83 rho) - rho 3737 * seg5AccY83 rho +
            (seg5AccY83 rho - seg5AccX83 rho * (-1)) * (rho 3737 + rho 3738) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3744 * (1 - rho 3742) = rho 3739 - rho 3740 - rho 3741 := ha5
        _ = (-1) * rho 3740 - rho 3741 + (seg5AccY83 rho - seg5AccX83 rho * (-1)) * (rho 3737 + rho 3738) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX84 rho = seg5AccX83 rho - Bool.toZMod bit * (seg5AccX83 rho - rho 3743) := by
      have hd : rho 3745 = Bool.toZMod bit * (rho 3743 - seg5AccX83 rho) := by
        rw [← hbit]
        unfold seg5AccX83
        linear_combination -r4050
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY84 rho = seg5AccY83 rho - Bool.toZMod bit * (seg5AccY83 rho - rho 3744) := by
      have hd : rho 3746 = Bool.toZMod bit * (rho 3744 - seg5AccY83 rho) := by
        rw [← hbit]
        unfold seg5AccY83
        linear_combination -r4051
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3737 * rho 3738 = rho 3747 := by linear_combination r4052
    have hd1 : rho 3737 * rho 3737 = rho 3748 := by linear_combination r4053
    have hd2 : rho 3738 * rho 3738 = rho 3749 := by linear_combination r4054
    have hd3 : rho 3750 * (rho 3738 * rho 3738 + rho 3737 * rho 3737 * (-1)) = 2 * (rho 3737 * rho 3738) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 3751 * (2 - (rho 3738 * rho 3738 + rho 3737 * rho 3737 * (-1))) = rho 3738 * rho 3738 - rho 3737 * rho 3737 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX83 rho : Seg5.F), (seg5AccY83 rho : Seg5.F)⟩
      ⟨(rho 3737 : Seg5.F), (rho 3738 : Seg5.F)⟩
      ⟨(rho 3743 : Seg5.F), (rho 3744 : Seg5.F)⟩
      ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩
      ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg5_rows84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4057 rho ∧ Seg5.relationRow4058 rho ∧ Seg5.relationRow4059 rho ∧ Seg5.relationRow4060 rho ∧ Seg5.relationRow4061 rho ∧ Seg5.relationRow4062 rho ∧ Seg5.relationRow4063 rho ∧ Seg5.relationRow4064 rho ∧ Seg5.relationRow4065 rho ∧ Seg5.relationRow4066 rho ∧ Seg5.relationRow4067 rho ∧ Seg5.relationRow4068 rho ∧ Seg5.relationRow4069 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩

theorem seg5_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2499 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩
        ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩
        ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩
        ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩ := by
  obtain ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩ := seg5_rows84 rho h
  unfold Seg5.relationRow4057 at r4057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4057
  unfold Seg5.relationRow4058 at r4058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058
  unfold Seg5.relationRow4059 at r4059
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4059
  unfold Seg5.relationRow4060 at r4060
  unfold Seg5.relationRow4061 at r4061
  unfold Seg5.relationRow4062 at r4062
  unfold Seg5.relationRow4063 at r4063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4063
  unfold Seg5.relationRow4064 at r4064
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4064
  unfold Seg5.relationRow4065 at r4065
  unfold Seg5.relationRow4066 at r4066
  unfold Seg5.relationRow4067 at r4067
  unfold Seg5.relationRow4068 at r4068
  unfold Seg5.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 2499 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩
        ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩
        ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩
        ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩ := by
    have hnextx : seg5AccX85 rho = seg5AccX84 rho + rho 3758 := by
      unfold seg5AccX85 seg5AccX84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 84]
      ring
    have hnexty : seg5AccY85 rho = seg5AccY84 rho + rho 3759 := by
      unfold seg5AccY85 seg5AccY84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 84]
      ring
    have ha0 : (rho 3750 + rho 3751) * (seg5AccX84 rho + seg5AccY84 rho) = rho 3752 := by
      unfold seg5AccX84 seg5AccY84
      linear_combination r4057
    have ha1 : rho 3751 * seg5AccX84 rho = rho 3753 := by
      unfold seg5AccX84
      linear_combination r4058
    have ha2 : rho 3750 * seg5AccY84 rho = rho 3754 := by
      unfold seg5AccY84
      linear_combination r4059
    have ha3 : 3021 * rho 3753 * rho 3754 = rho 3755 := by
      linear_combination r4060
    have ha4 : rho 3756 * (1 + rho 3755) = rho 3753 + rho 3754 := by
      linear_combination r4061
    have ha5 : rho 3757 * (1 - rho 3755) = rho 3752 - rho 3753 - rho 3754 := by
      linear_combination r4062
    have haddx :
        rho 3756 * (1 + 3021 * (rho 3751 * seg5AccX84 rho) * (rho 3750 * seg5AccY84 rho)) =
          rho 3751 * seg5AccX84 rho + rho 3750 * seg5AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3757 * (1 - 3021 * (rho 3751 * seg5AccX84 rho) * (rho 3750 * seg5AccY84 rho)) =
          (-1) * (rho 3751 * seg5AccX84 rho) - rho 3750 * seg5AccY84 rho +
            (seg5AccY84 rho - seg5AccX84 rho * (-1)) * (rho 3750 + rho 3751) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3757 * (1 - rho 3755) = rho 3752 - rho 3753 - rho 3754 := ha5
        _ = (-1) * rho 3753 - rho 3754 + (seg5AccY84 rho - seg5AccX84 rho * (-1)) * (rho 3750 + rho 3751) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX85 rho = seg5AccX84 rho - Bool.toZMod bit * (seg5AccX84 rho - rho 3756) := by
      have hd : rho 3758 = Bool.toZMod bit * (rho 3756 - seg5AccX84 rho) := by
        rw [← hbit]
        unfold seg5AccX84
        linear_combination -r4063
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY85 rho = seg5AccY84 rho - Bool.toZMod bit * (seg5AccY84 rho - rho 3757) := by
      have hd : rho 3759 = Bool.toZMod bit * (rho 3757 - seg5AccY84 rho) := by
        rw [← hbit]
        unfold seg5AccY84
        linear_combination -r4064
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3750 * rho 3751 = rho 3760 := by linear_combination r4065
    have hd1 : rho 3750 * rho 3750 = rho 3761 := by linear_combination r4066
    have hd2 : rho 3751 * rho 3751 = rho 3762 := by linear_combination r4067
    have hd3 : rho 3763 * (rho 3751 * rho 3751 + rho 3750 * rho 3750 * (-1)) = 2 * (rho 3750 * rho 3751) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 3764 * (2 - (rho 3751 * rho 3751 + rho 3750 * rho 3750 * (-1))) = rho 3751 * rho 3751 - rho 3750 * rho 3750 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX84 rho : Seg5.F), (seg5AccY84 rho : Seg5.F)⟩
      ⟨(rho 3750 : Seg5.F), (rho 3751 : Seg5.F)⟩
      ⟨(rho 3756 : Seg5.F), (rho 3757 : Seg5.F)⟩
      ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩
      ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg5_rows85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4070 rho ∧ Seg5.relationRow4071 rho ∧ Seg5.relationRow4072 rho ∧ Seg5.relationRow4073 rho ∧ Seg5.relationRow4074 rho ∧ Seg5.relationRow4075 rho ∧ Seg5.relationRow4076 rho ∧ Seg5.relationRow4077 rho ∧ Seg5.relationRow4078 rho ∧ Seg5.relationRow4079 rho ∧ Seg5.relationRow4080 rho ∧ Seg5.relationRow4081 rho ∧ Seg5.relationRow4082 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩

theorem seg5_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2500 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩
        ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩
        ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩
        ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩ := by
  obtain ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩ := seg5_rows85 rho h
  unfold Seg5.relationRow4070 at r4070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4070
  unfold Seg5.relationRow4071 at r4071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071
  unfold Seg5.relationRow4072 at r4072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4072
  unfold Seg5.relationRow4073 at r4073
  unfold Seg5.relationRow4074 at r4074
  unfold Seg5.relationRow4075 at r4075
  unfold Seg5.relationRow4076 at r4076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4076
  unfold Seg5.relationRow4077 at r4077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4077
  unfold Seg5.relationRow4078 at r4078
  unfold Seg5.relationRow4079 at r4079
  unfold Seg5.relationRow4080 at r4080
  unfold Seg5.relationRow4081 at r4081
  unfold Seg5.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 2500 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩
        ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩
        ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩
        ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩ := by
    have hnextx : seg5AccX86 rho = seg5AccX85 rho + rho 3771 := by
      unfold seg5AccX86 seg5AccX85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 85]
      ring
    have hnexty : seg5AccY86 rho = seg5AccY85 rho + rho 3772 := by
      unfold seg5AccY86 seg5AccY85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 85]
      ring
    have ha0 : (rho 3763 + rho 3764) * (seg5AccX85 rho + seg5AccY85 rho) = rho 3765 := by
      unfold seg5AccX85 seg5AccY85
      linear_combination r4070
    have ha1 : rho 3764 * seg5AccX85 rho = rho 3766 := by
      unfold seg5AccX85
      linear_combination r4071
    have ha2 : rho 3763 * seg5AccY85 rho = rho 3767 := by
      unfold seg5AccY85
      linear_combination r4072
    have ha3 : 3021 * rho 3766 * rho 3767 = rho 3768 := by
      linear_combination r4073
    have ha4 : rho 3769 * (1 + rho 3768) = rho 3766 + rho 3767 := by
      linear_combination r4074
    have ha5 : rho 3770 * (1 - rho 3768) = rho 3765 - rho 3766 - rho 3767 := by
      linear_combination r4075
    have haddx :
        rho 3769 * (1 + 3021 * (rho 3764 * seg5AccX85 rho) * (rho 3763 * seg5AccY85 rho)) =
          rho 3764 * seg5AccX85 rho + rho 3763 * seg5AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3770 * (1 - 3021 * (rho 3764 * seg5AccX85 rho) * (rho 3763 * seg5AccY85 rho)) =
          (-1) * (rho 3764 * seg5AccX85 rho) - rho 3763 * seg5AccY85 rho +
            (seg5AccY85 rho - seg5AccX85 rho * (-1)) * (rho 3763 + rho 3764) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3770 * (1 - rho 3768) = rho 3765 - rho 3766 - rho 3767 := ha5
        _ = (-1) * rho 3766 - rho 3767 + (seg5AccY85 rho - seg5AccX85 rho * (-1)) * (rho 3763 + rho 3764) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX86 rho = seg5AccX85 rho - Bool.toZMod bit * (seg5AccX85 rho - rho 3769) := by
      have hd : rho 3771 = Bool.toZMod bit * (rho 3769 - seg5AccX85 rho) := by
        rw [← hbit]
        unfold seg5AccX85
        linear_combination -r4076
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY86 rho = seg5AccY85 rho - Bool.toZMod bit * (seg5AccY85 rho - rho 3770) := by
      have hd : rho 3772 = Bool.toZMod bit * (rho 3770 - seg5AccY85 rho) := by
        rw [← hbit]
        unfold seg5AccY85
        linear_combination -r4077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3763 * rho 3764 = rho 3773 := by linear_combination r4078
    have hd1 : rho 3763 * rho 3763 = rho 3774 := by linear_combination r4079
    have hd2 : rho 3764 * rho 3764 = rho 3775 := by linear_combination r4080
    have hd3 : rho 3776 * (rho 3764 * rho 3764 + rho 3763 * rho 3763 * (-1)) = 2 * (rho 3763 * rho 3764) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 3777 * (2 - (rho 3764 * rho 3764 + rho 3763 * rho 3763 * (-1))) = rho 3764 * rho 3764 - rho 3763 * rho 3763 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX85 rho : Seg5.F), (seg5AccY85 rho : Seg5.F)⟩
      ⟨(rho 3763 : Seg5.F), (rho 3764 : Seg5.F)⟩
      ⟨(rho 3769 : Seg5.F), (rho 3770 : Seg5.F)⟩
      ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩
      ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg5_rows86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4083 rho ∧ Seg5.relationRow4084 rho ∧ Seg5.relationRow4085 rho ∧ Seg5.relationRow4086 rho ∧ Seg5.relationRow4087 rho ∧ Seg5.relationRow4088 rho ∧ Seg5.relationRow4089 rho ∧ Seg5.relationRow4090 rho ∧ Seg5.relationRow4091 rho ∧ Seg5.relationRow4092 rho ∧ Seg5.relationRow4093 rho ∧ Seg5.relationRow4094 rho ∧ Seg5.relationRow4095 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩

theorem seg5_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2501 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩
        ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩
        ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩
        ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩ := by
  obtain ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩ := seg5_rows86 rho h
  unfold Seg5.relationRow4083 at r4083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4083
  unfold Seg5.relationRow4084 at r4084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084
  unfold Seg5.relationRow4085 at r4085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4085
  unfold Seg5.relationRow4086 at r4086
  unfold Seg5.relationRow4087 at r4087
  unfold Seg5.relationRow4088 at r4088
  unfold Seg5.relationRow4089 at r4089
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4089
  unfold Seg5.relationRow4090 at r4090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4090
  unfold Seg5.relationRow4091 at r4091
  unfold Seg5.relationRow4092 at r4092
  unfold Seg5.relationRow4093 at r4093
  unfold Seg5.relationRow4094 at r4094
  unfold Seg5.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 2501 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩
        ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩
        ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩
        ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩ := by
    have hnextx : seg5AccX87 rho = seg5AccX86 rho + rho 3784 := by
      unfold seg5AccX87 seg5AccX86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 86]
      ring
    have hnexty : seg5AccY87 rho = seg5AccY86 rho + rho 3785 := by
      unfold seg5AccY87 seg5AccY86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 86]
      ring
    have ha0 : (rho 3776 + rho 3777) * (seg5AccX86 rho + seg5AccY86 rho) = rho 3778 := by
      unfold seg5AccX86 seg5AccY86
      linear_combination r4083
    have ha1 : rho 3777 * seg5AccX86 rho = rho 3779 := by
      unfold seg5AccX86
      linear_combination r4084
    have ha2 : rho 3776 * seg5AccY86 rho = rho 3780 := by
      unfold seg5AccY86
      linear_combination r4085
    have ha3 : 3021 * rho 3779 * rho 3780 = rho 3781 := by
      linear_combination r4086
    have ha4 : rho 3782 * (1 + rho 3781) = rho 3779 + rho 3780 := by
      linear_combination r4087
    have ha5 : rho 3783 * (1 - rho 3781) = rho 3778 - rho 3779 - rho 3780 := by
      linear_combination r4088
    have haddx :
        rho 3782 * (1 + 3021 * (rho 3777 * seg5AccX86 rho) * (rho 3776 * seg5AccY86 rho)) =
          rho 3777 * seg5AccX86 rho + rho 3776 * seg5AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3783 * (1 - 3021 * (rho 3777 * seg5AccX86 rho) * (rho 3776 * seg5AccY86 rho)) =
          (-1) * (rho 3777 * seg5AccX86 rho) - rho 3776 * seg5AccY86 rho +
            (seg5AccY86 rho - seg5AccX86 rho * (-1)) * (rho 3776 + rho 3777) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3783 * (1 - rho 3781) = rho 3778 - rho 3779 - rho 3780 := ha5
        _ = (-1) * rho 3779 - rho 3780 + (seg5AccY86 rho - seg5AccX86 rho * (-1)) * (rho 3776 + rho 3777) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX87 rho = seg5AccX86 rho - Bool.toZMod bit * (seg5AccX86 rho - rho 3782) := by
      have hd : rho 3784 = Bool.toZMod bit * (rho 3782 - seg5AccX86 rho) := by
        rw [← hbit]
        unfold seg5AccX86
        linear_combination -r4089
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY87 rho = seg5AccY86 rho - Bool.toZMod bit * (seg5AccY86 rho - rho 3783) := by
      have hd : rho 3785 = Bool.toZMod bit * (rho 3783 - seg5AccY86 rho) := by
        rw [← hbit]
        unfold seg5AccY86
        linear_combination -r4090
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3776 * rho 3777 = rho 3786 := by linear_combination r4091
    have hd1 : rho 3776 * rho 3776 = rho 3787 := by linear_combination r4092
    have hd2 : rho 3777 * rho 3777 = rho 3788 := by linear_combination r4093
    have hd3 : rho 3789 * (rho 3777 * rho 3777 + rho 3776 * rho 3776 * (-1)) = 2 * (rho 3776 * rho 3777) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 3790 * (2 - (rho 3777 * rho 3777 + rho 3776 * rho 3776 * (-1))) = rho 3777 * rho 3777 - rho 3776 * rho 3776 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX86 rho : Seg5.F), (seg5AccY86 rho : Seg5.F)⟩
      ⟨(rho 3776 : Seg5.F), (rho 3777 : Seg5.F)⟩
      ⟨(rho 3782 : Seg5.F), (rho 3783 : Seg5.F)⟩
      ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩
      ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg5_rows87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow4096 rho ∧ Seg5.relationRow4097 rho ∧ Seg5.relationRow4098 rho ∧ Seg5.relationRow4099 rho ∧ Seg5.relationRow4100 rho ∧ Seg5.relationRow4101 rho ∧ Seg5.relationRow4102 rho ∧ Seg5.relationRow4103 rho ∧ Seg5.relationRow4104 rho ∧ Seg5.relationRow4105 rho ∧ Seg5.relationRow4106 rho ∧ Seg5.relationRow4107 rho ∧ Seg5.relationRow4108 rho := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩

theorem seg5_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2502 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩
        ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩
        ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩
        ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩ := by
  obtain ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩ := seg5_rows87 rho h
  unfold Seg5.relationRow4096 at r4096
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4096
  unfold Seg5.relationRow4097 at r4097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097
  unfold Seg5.relationRow4098 at r4098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4098
  unfold Seg5.relationRow4099 at r4099
  unfold Seg5.relationRow4100 at r4100
  unfold Seg5.relationRow4101 at r4101
  unfold Seg5.relationRow4102 at r4102
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4102
  unfold Seg5.relationRow4103 at r4103
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4103
  unfold Seg5.relationRow4104 at r4104
  unfold Seg5.relationRow4105 at r4105
  unfold Seg5.relationRow4106 at r4106
  unfold Seg5.relationRow4107 at r4107
  unfold Seg5.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 2502 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩
        ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩
        ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩
        ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩ := by
    have hnextx : seg5AccX88 rho = seg5AccX87 rho + rho 3797 := by
      unfold seg5AccX88 seg5AccX87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2666 13 87]
      ring
    have hnexty : seg5AccY88 rho = seg5AccY87 rho + rho 3798 := by
      unfold seg5AccY88 seg5AccY87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2667 13 87]
      ring
    have ha0 : (rho 3789 + rho 3790) * (seg5AccX87 rho + seg5AccY87 rho) = rho 3791 := by
      unfold seg5AccX87 seg5AccY87
      linear_combination r4096
    have ha1 : rho 3790 * seg5AccX87 rho = rho 3792 := by
      unfold seg5AccX87
      linear_combination r4097
    have ha2 : rho 3789 * seg5AccY87 rho = rho 3793 := by
      unfold seg5AccY87
      linear_combination r4098
    have ha3 : 3021 * rho 3792 * rho 3793 = rho 3794 := by
      linear_combination r4099
    have ha4 : rho 3795 * (1 + rho 3794) = rho 3792 + rho 3793 := by
      linear_combination r4100
    have ha5 : rho 3796 * (1 - rho 3794) = rho 3791 - rho 3792 - rho 3793 := by
      linear_combination r4101
    have haddx :
        rho 3795 * (1 + 3021 * (rho 3790 * seg5AccX87 rho) * (rho 3789 * seg5AccY87 rho)) =
          rho 3790 * seg5AccX87 rho + rho 3789 * seg5AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3796 * (1 - 3021 * (rho 3790 * seg5AccX87 rho) * (rho 3789 * seg5AccY87 rho)) =
          (-1) * (rho 3790 * seg5AccX87 rho) - rho 3789 * seg5AccY87 rho +
            (seg5AccY87 rho - seg5AccX87 rho * (-1)) * (rho 3789 + rho 3790) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3796 * (1 - rho 3794) = rho 3791 - rho 3792 - rho 3793 := ha5
        _ = (-1) * rho 3792 - rho 3793 + (seg5AccY87 rho - seg5AccX87 rho * (-1)) * (rho 3789 + rho 3790) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX88 rho = seg5AccX87 rho - Bool.toZMod bit * (seg5AccX87 rho - rho 3795) := by
      have hd : rho 3797 = Bool.toZMod bit * (rho 3795 - seg5AccX87 rho) := by
        rw [← hbit]
        unfold seg5AccX87
        linear_combination -r4102
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY88 rho = seg5AccY87 rho - Bool.toZMod bit * (seg5AccY87 rho - rho 3796) := by
      have hd : rho 3798 = Bool.toZMod bit * (rho 3796 - seg5AccY87 rho) := by
        rw [← hbit]
        unfold seg5AccY87
        linear_combination -r4103
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3789 * rho 3790 = rho 3799 := by linear_combination r4104
    have hd1 : rho 3789 * rho 3789 = rho 3800 := by linear_combination r4105
    have hd2 : rho 3790 * rho 3790 = rho 3801 := by linear_combination r4106
    have hd3 : rho 3802 * (rho 3790 * rho 3790 + rho 3789 * rho 3789 * (-1)) = 2 * (rho 3789 * rho 3790) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 3803 * (2 - (rho 3790 * rho 3790 + rho 3789 * rho 3789 * (-1))) = rho 3790 * rho 3790 - rho 3789 * rho 3789 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX87 rho : Seg5.F), (seg5AccY87 rho : Seg5.F)⟩
      ⟨(rho 3789 : Seg5.F), (rho 3790 : Seg5.F)⟩
      ⟨(rho 3795 : Seg5.F), (rho 3796 : Seg5.F)⟩
      ⟨(seg5AccX88 rho : Seg5.F), (seg5AccY88 rho : Seg5.F)⟩
      ⟨(rho 3802 : Seg5.F), (rho 3803 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg5_hstep_c7 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg5_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg5_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg5_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg5_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg5_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg5_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg5_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg5_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg5_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg5_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
