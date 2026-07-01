import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3966 rho ∧ Seg16.relationRow3967 rho ∧ Seg16.relationRow3968 rho ∧ Seg16.relationRow3969 rho ∧ Seg16.relationRow3970 rho ∧ Seg16.relationRow3971 rho ∧ Seg16.relationRow3972 rho ∧ Seg16.relationRow3973 rho ∧ Seg16.relationRow3974 rho ∧ Seg16.relationRow3975 rho ∧ Seg16.relationRow3976 rho ∧ Seg16.relationRow3977 rho ∧ Seg16.relationRow3978 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩

theorem seg16_rung77 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15369 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩ := by
  obtain ⟨r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, r3976, r3977, r3978⟩ := seg16_rows77 rho h
  unfold Seg16.relationRow3966 at r3966
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3966
  unfold Seg16.relationRow3967 at r3967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967
  unfold Seg16.relationRow3968 at r3968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3968
  unfold Seg16.relationRow3969 at r3969
  unfold Seg16.relationRow3970 at r3970
  unfold Seg16.relationRow3971 at r3971
  unfold Seg16.relationRow3972 at r3972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3972
  unfold Seg16.relationRow3973 at r3973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3973
  unfold Seg16.relationRow3974 at r3974
  unfold Seg16.relationRow3975 at r3975
  unfold Seg16.relationRow3976 at r3976
  unfold Seg16.relationRow3977 at r3977
  unfold Seg16.relationRow3978 at r3978
  have hrung77 (bit : Bool) (hbit : rho 15369 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
        ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩ := by
    have hnextx : seg16AccX78 rho = seg16AccX77 rho + rho 16544 := by
      unfold seg16AccX78 seg16AccX77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 77]
      ring
    have hnexty : seg16AccY78 rho = seg16AccY77 rho + rho 16545 := by
      unfold seg16AccY78 seg16AccY77
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 77]
      ring
    have ha0 : (rho 16536 + rho 16537) * (seg16AccX77 rho + seg16AccY77 rho) = rho 16538 := by
      unfold seg16AccX77 seg16AccY77
      linear_combination r3966
    have ha1 : rho 16537 * seg16AccX77 rho = rho 16539 := by
      unfold seg16AccX77
      linear_combination r3967
    have ha2 : rho 16536 * seg16AccY77 rho = rho 16540 := by
      unfold seg16AccY77
      linear_combination r3968
    have ha3 : 3021 * rho 16539 * rho 16540 = rho 16541 := by
      linear_combination r3969
    have ha4 : rho 16542 * (1 + rho 16541) = rho 16539 + rho 16540 := by
      linear_combination r3970
    have ha5 : rho 16543 * (1 - rho 16541) = rho 16538 - rho 16539 - rho 16540 := by
      linear_combination r3971
    have haddx :
        rho 16542 * (1 + 3021 * (rho 16537 * seg16AccX77 rho) * (rho 16536 * seg16AccY77 rho)) =
          rho 16537 * seg16AccX77 rho + rho 16536 * seg16AccY77 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16543 * (1 - 3021 * (rho 16537 * seg16AccX77 rho) * (rho 16536 * seg16AccY77 rho)) =
          (-1) * (rho 16537 * seg16AccX77 rho) - rho 16536 * seg16AccY77 rho +
            (seg16AccY77 rho - seg16AccX77 rho * (-1)) * (rho 16536 + rho 16537) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16543 * (1 - rho 16541) = rho 16538 - rho 16539 - rho 16540 := ha5
        _ = (-1) * rho 16539 - rho 16540 + (seg16AccY77 rho - seg16AccX77 rho * (-1)) * (rho 16536 + rho 16537) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX78 rho = seg16AccX77 rho - Bool.toZMod bit * (seg16AccX77 rho - rho 16542) := by
      have hd : rho 16544 = Bool.toZMod bit * (rho 16542 - seg16AccX77 rho) := by
        rw [← hbit]
        unfold seg16AccX77
        linear_combination -r3972
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY78 rho = seg16AccY77 rho - Bool.toZMod bit * (seg16AccY77 rho - rho 16543) := by
      have hd : rho 16545 = Bool.toZMod bit * (rho 16543 - seg16AccY77 rho) := by
        rw [← hbit]
        unfold seg16AccY77
        linear_combination -r3973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16536 * rho 16537 = rho 16546 := by linear_combination r3974
    have hd1 : rho 16536 * rho 16536 = rho 16547 := by linear_combination r3975
    have hd2 : rho 16537 * rho 16537 = rho 16548 := by linear_combination r3976
    have hd3 : rho 16549 * (rho 16537 * rho 16537 + rho 16536 * rho 16536 * (-1)) = 2 * (rho 16536 * rho 16537) := by
      rw [hd0, hd1, hd2]
      linear_combination r3977
    have hd4 : rho 16550 * (2 - (rho 16537 * rho 16537 + rho 16536 * rho 16536 * (-1))) = rho 16537 * rho 16537 - rho 16536 * rho 16536 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX77 rho : Seg16.F), (seg16AccY77 rho : Seg16.F)⟩
      ⟨(rho 16536 : Seg16.F), (rho 16537 : Seg16.F)⟩
      ⟨(rho 16542 : Seg16.F), (rho 16543 : Seg16.F)⟩
      ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
      ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung77

theorem seg16_rows78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3979 rho ∧ Seg16.relationRow3980 rho ∧ Seg16.relationRow3981 rho ∧ Seg16.relationRow3982 rho ∧ Seg16.relationRow3983 rho ∧ Seg16.relationRow3984 rho ∧ Seg16.relationRow3985 rho ∧ Seg16.relationRow3986 rho ∧ Seg16.relationRow3987 rho ∧ Seg16.relationRow3988 rho ∧ Seg16.relationRow3989 rho ∧ Seg16.relationRow3990 rho ∧ Seg16.relationRow3991 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991, _, _, _, _, _, _, _, _⟩
  exact ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩

theorem seg16_rung78 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15370 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩ := by
  obtain ⟨r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, r3989, r3990, r3991⟩ := seg16_rows78 rho h
  unfold Seg16.relationRow3979 at r3979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3979
  unfold Seg16.relationRow3980 at r3980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980
  unfold Seg16.relationRow3981 at r3981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3981
  unfold Seg16.relationRow3982 at r3982
  unfold Seg16.relationRow3983 at r3983
  unfold Seg16.relationRow3984 at r3984
  unfold Seg16.relationRow3985 at r3985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3985
  unfold Seg16.relationRow3986 at r3986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3986
  unfold Seg16.relationRow3987 at r3987
  unfold Seg16.relationRow3988 at r3988
  unfold Seg16.relationRow3989 at r3989
  unfold Seg16.relationRow3990 at r3990
  unfold Seg16.relationRow3991 at r3991
  have hrung78 (bit : Bool) (hbit : rho 15370 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
        ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩ := by
    have hnextx : seg16AccX79 rho = seg16AccX78 rho + rho 16557 := by
      unfold seg16AccX79 seg16AccX78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 78]
      ring
    have hnexty : seg16AccY79 rho = seg16AccY78 rho + rho 16558 := by
      unfold seg16AccY79 seg16AccY78
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 78]
      ring
    have ha0 : (rho 16549 + rho 16550) * (seg16AccX78 rho + seg16AccY78 rho) = rho 16551 := by
      unfold seg16AccX78 seg16AccY78
      linear_combination r3979
    have ha1 : rho 16550 * seg16AccX78 rho = rho 16552 := by
      unfold seg16AccX78
      linear_combination r3980
    have ha2 : rho 16549 * seg16AccY78 rho = rho 16553 := by
      unfold seg16AccY78
      linear_combination r3981
    have ha3 : 3021 * rho 16552 * rho 16553 = rho 16554 := by
      linear_combination r3982
    have ha4 : rho 16555 * (1 + rho 16554) = rho 16552 + rho 16553 := by
      linear_combination r3983
    have ha5 : rho 16556 * (1 - rho 16554) = rho 16551 - rho 16552 - rho 16553 := by
      linear_combination r3984
    have haddx :
        rho 16555 * (1 + 3021 * (rho 16550 * seg16AccX78 rho) * (rho 16549 * seg16AccY78 rho)) =
          rho 16550 * seg16AccX78 rho + rho 16549 * seg16AccY78 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16556 * (1 - 3021 * (rho 16550 * seg16AccX78 rho) * (rho 16549 * seg16AccY78 rho)) =
          (-1) * (rho 16550 * seg16AccX78 rho) - rho 16549 * seg16AccY78 rho +
            (seg16AccY78 rho - seg16AccX78 rho * (-1)) * (rho 16549 + rho 16550) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16556 * (1 - rho 16554) = rho 16551 - rho 16552 - rho 16553 := ha5
        _ = (-1) * rho 16552 - rho 16553 + (seg16AccY78 rho - seg16AccX78 rho * (-1)) * (rho 16549 + rho 16550) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX79 rho = seg16AccX78 rho - Bool.toZMod bit * (seg16AccX78 rho - rho 16555) := by
      have hd : rho 16557 = Bool.toZMod bit * (rho 16555 - seg16AccX78 rho) := by
        rw [← hbit]
        unfold seg16AccX78
        linear_combination -r3985
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY79 rho = seg16AccY78 rho - Bool.toZMod bit * (seg16AccY78 rho - rho 16556) := by
      have hd : rho 16558 = Bool.toZMod bit * (rho 16556 - seg16AccY78 rho) := by
        rw [← hbit]
        unfold seg16AccY78
        linear_combination -r3986
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16549 * rho 16550 = rho 16559 := by linear_combination r3987
    have hd1 : rho 16549 * rho 16549 = rho 16560 := by linear_combination r3988
    have hd2 : rho 16550 * rho 16550 = rho 16561 := by linear_combination r3989
    have hd3 : rho 16562 * (rho 16550 * rho 16550 + rho 16549 * rho 16549 * (-1)) = 2 * (rho 16549 * rho 16550) := by
      rw [hd0, hd1, hd2]
      linear_combination r3990
    have hd4 : rho 16563 * (2 - (rho 16550 * rho 16550 + rho 16549 * rho 16549 * (-1))) = rho 16550 * rho 16550 - rho 16549 * rho 16549 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3991
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX78 rho : Seg16.F), (seg16AccY78 rho : Seg16.F)⟩
      ⟨(rho 16549 : Seg16.F), (rho 16550 : Seg16.F)⟩
      ⟨(rho 16555 : Seg16.F), (rho 16556 : Seg16.F)⟩
      ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
      ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung78

theorem seg16_rows79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow3992 rho ∧ Seg16.relationRow3993 rho ∧ Seg16.relationRow3994 rho ∧ Seg16.relationRow3995 rho ∧ Seg16.relationRow3996 rho ∧ Seg16.relationRow3997 rho ∧ Seg16.relationRow3998 rho ∧ Seg16.relationRow3999 rho ∧ Seg16.relationRow4000 rho ∧ Seg16.relationRow4001 rho ∧ Seg16.relationRow4002 rho ∧ Seg16.relationRow4003 rho ∧ Seg16.relationRow4004 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩

theorem seg16_rung79 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15371 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩ := by
  obtain ⟨r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001, r4002, r4003, r4004⟩ := seg16_rows79 rho h
  unfold Seg16.relationRow3992 at r3992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3992
  unfold Seg16.relationRow3993 at r3993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993
  unfold Seg16.relationRow3994 at r3994
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3994
  unfold Seg16.relationRow3995 at r3995
  unfold Seg16.relationRow3996 at r3996
  unfold Seg16.relationRow3997 at r3997
  unfold Seg16.relationRow3998 at r3998
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3998
  unfold Seg16.relationRow3999 at r3999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3999
  unfold Seg16.relationRow4000 at r4000
  unfold Seg16.relationRow4001 at r4001
  unfold Seg16.relationRow4002 at r4002
  unfold Seg16.relationRow4003 at r4003
  unfold Seg16.relationRow4004 at r4004
  have hrung79 (bit : Bool) (hbit : rho 15371 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
        ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩ := by
    have hnextx : seg16AccX80 rho = seg16AccX79 rho + rho 16570 := by
      unfold seg16AccX80 seg16AccX79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 79]
      ring
    have hnexty : seg16AccY80 rho = seg16AccY79 rho + rho 16571 := by
      unfold seg16AccY80 seg16AccY79
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 79]
      ring
    have ha0 : (rho 16562 + rho 16563) * (seg16AccX79 rho + seg16AccY79 rho) = rho 16564 := by
      unfold seg16AccX79 seg16AccY79
      linear_combination r3992
    have ha1 : rho 16563 * seg16AccX79 rho = rho 16565 := by
      unfold seg16AccX79
      linear_combination r3993
    have ha2 : rho 16562 * seg16AccY79 rho = rho 16566 := by
      unfold seg16AccY79
      linear_combination r3994
    have ha3 : 3021 * rho 16565 * rho 16566 = rho 16567 := by
      linear_combination r3995
    have ha4 : rho 16568 * (1 + rho 16567) = rho 16565 + rho 16566 := by
      linear_combination r3996
    have ha5 : rho 16569 * (1 - rho 16567) = rho 16564 - rho 16565 - rho 16566 := by
      linear_combination r3997
    have haddx :
        rho 16568 * (1 + 3021 * (rho 16563 * seg16AccX79 rho) * (rho 16562 * seg16AccY79 rho)) =
          rho 16563 * seg16AccX79 rho + rho 16562 * seg16AccY79 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16569 * (1 - 3021 * (rho 16563 * seg16AccX79 rho) * (rho 16562 * seg16AccY79 rho)) =
          (-1) * (rho 16563 * seg16AccX79 rho) - rho 16562 * seg16AccY79 rho +
            (seg16AccY79 rho - seg16AccX79 rho * (-1)) * (rho 16562 + rho 16563) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16569 * (1 - rho 16567) = rho 16564 - rho 16565 - rho 16566 := ha5
        _ = (-1) * rho 16565 - rho 16566 + (seg16AccY79 rho - seg16AccX79 rho * (-1)) * (rho 16562 + rho 16563) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX80 rho = seg16AccX79 rho - Bool.toZMod bit * (seg16AccX79 rho - rho 16568) := by
      have hd : rho 16570 = Bool.toZMod bit * (rho 16568 - seg16AccX79 rho) := by
        rw [← hbit]
        unfold seg16AccX79
        linear_combination -r3998
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY80 rho = seg16AccY79 rho - Bool.toZMod bit * (seg16AccY79 rho - rho 16569) := by
      have hd : rho 16571 = Bool.toZMod bit * (rho 16569 - seg16AccY79 rho) := by
        rw [← hbit]
        unfold seg16AccY79
        linear_combination -r3999
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16562 * rho 16563 = rho 16572 := by linear_combination r4000
    have hd1 : rho 16562 * rho 16562 = rho 16573 := by linear_combination r4001
    have hd2 : rho 16563 * rho 16563 = rho 16574 := by linear_combination r4002
    have hd3 : rho 16575 * (rho 16563 * rho 16563 + rho 16562 * rho 16562 * (-1)) = 2 * (rho 16562 * rho 16563) := by
      rw [hd0, hd1, hd2]
      linear_combination r4003
    have hd4 : rho 16576 * (2 - (rho 16563 * rho 16563 + rho 16562 * rho 16562 * (-1))) = rho 16563 * rho 16563 - rho 16562 * rho 16562 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4004
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX79 rho : Seg16.F), (seg16AccY79 rho : Seg16.F)⟩
      ⟨(rho 16562 : Seg16.F), (rho 16563 : Seg16.F)⟩
      ⟨(rho 16568 : Seg16.F), (rho 16569 : Seg16.F)⟩
      ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
      ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung79

theorem seg16_rows80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4005 rho ∧ Seg16.relationRow4006 rho ∧ Seg16.relationRow4007 rho ∧ Seg16.relationRow4008 rho ∧ Seg16.relationRow4009 rho ∧ Seg16.relationRow4010 rho ∧ Seg16.relationRow4011 rho ∧ Seg16.relationRow4012 rho ∧ Seg16.relationRow4013 rho ∧ Seg16.relationRow4014 rho ∧ Seg16.relationRow4015 rho ∧ Seg16.relationRow4016 rho ∧ Seg16.relationRow4017 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩

theorem seg16_rung80 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15372 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩ := by
  obtain ⟨r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, r4015, r4016, r4017⟩ := seg16_rows80 rho h
  unfold Seg16.relationRow4005 at r4005
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4005
  unfold Seg16.relationRow4006 at r4006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006
  unfold Seg16.relationRow4007 at r4007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4007
  unfold Seg16.relationRow4008 at r4008
  unfold Seg16.relationRow4009 at r4009
  unfold Seg16.relationRow4010 at r4010
  unfold Seg16.relationRow4011 at r4011
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4011
  unfold Seg16.relationRow4012 at r4012
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4012
  unfold Seg16.relationRow4013 at r4013
  unfold Seg16.relationRow4014 at r4014
  unfold Seg16.relationRow4015 at r4015
  unfold Seg16.relationRow4016 at r4016
  unfold Seg16.relationRow4017 at r4017
  have hrung80 (bit : Bool) (hbit : rho 15372 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
        ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩ := by
    have hnextx : seg16AccX81 rho = seg16AccX80 rho + rho 16583 := by
      unfold seg16AccX81 seg16AccX80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 80]
      ring
    have hnexty : seg16AccY81 rho = seg16AccY80 rho + rho 16584 := by
      unfold seg16AccY81 seg16AccY80
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 80]
      ring
    have ha0 : (rho 16575 + rho 16576) * (seg16AccX80 rho + seg16AccY80 rho) = rho 16577 := by
      unfold seg16AccX80 seg16AccY80
      linear_combination r4005
    have ha1 : rho 16576 * seg16AccX80 rho = rho 16578 := by
      unfold seg16AccX80
      linear_combination r4006
    have ha2 : rho 16575 * seg16AccY80 rho = rho 16579 := by
      unfold seg16AccY80
      linear_combination r4007
    have ha3 : 3021 * rho 16578 * rho 16579 = rho 16580 := by
      linear_combination r4008
    have ha4 : rho 16581 * (1 + rho 16580) = rho 16578 + rho 16579 := by
      linear_combination r4009
    have ha5 : rho 16582 * (1 - rho 16580) = rho 16577 - rho 16578 - rho 16579 := by
      linear_combination r4010
    have haddx :
        rho 16581 * (1 + 3021 * (rho 16576 * seg16AccX80 rho) * (rho 16575 * seg16AccY80 rho)) =
          rho 16576 * seg16AccX80 rho + rho 16575 * seg16AccY80 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16582 * (1 - 3021 * (rho 16576 * seg16AccX80 rho) * (rho 16575 * seg16AccY80 rho)) =
          (-1) * (rho 16576 * seg16AccX80 rho) - rho 16575 * seg16AccY80 rho +
            (seg16AccY80 rho - seg16AccX80 rho * (-1)) * (rho 16575 + rho 16576) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16582 * (1 - rho 16580) = rho 16577 - rho 16578 - rho 16579 := ha5
        _ = (-1) * rho 16578 - rho 16579 + (seg16AccY80 rho - seg16AccX80 rho * (-1)) * (rho 16575 + rho 16576) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX81 rho = seg16AccX80 rho - Bool.toZMod bit * (seg16AccX80 rho - rho 16581) := by
      have hd : rho 16583 = Bool.toZMod bit * (rho 16581 - seg16AccX80 rho) := by
        rw [← hbit]
        unfold seg16AccX80
        linear_combination -r4011
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY81 rho = seg16AccY80 rho - Bool.toZMod bit * (seg16AccY80 rho - rho 16582) := by
      have hd : rho 16584 = Bool.toZMod bit * (rho 16582 - seg16AccY80 rho) := by
        rw [← hbit]
        unfold seg16AccY80
        linear_combination -r4012
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16575 * rho 16576 = rho 16585 := by linear_combination r4013
    have hd1 : rho 16575 * rho 16575 = rho 16586 := by linear_combination r4014
    have hd2 : rho 16576 * rho 16576 = rho 16587 := by linear_combination r4015
    have hd3 : rho 16588 * (rho 16576 * rho 16576 + rho 16575 * rho 16575 * (-1)) = 2 * (rho 16575 * rho 16576) := by
      rw [hd0, hd1, hd2]
      linear_combination r4016
    have hd4 : rho 16589 * (2 - (rho 16576 * rho 16576 + rho 16575 * rho 16575 * (-1))) = rho 16576 * rho 16576 - rho 16575 * rho 16575 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4017
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX80 rho : Seg16.F), (seg16AccY80 rho : Seg16.F)⟩
      ⟨(rho 16575 : Seg16.F), (rho 16576 : Seg16.F)⟩
      ⟨(rho 16581 : Seg16.F), (rho 16582 : Seg16.F)⟩
      ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
      ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung80

theorem seg16_rows81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4018 rho ∧ Seg16.relationRow4019 rho ∧ Seg16.relationRow4020 rho ∧ Seg16.relationRow4021 rho ∧ Seg16.relationRow4022 rho ∧ Seg16.relationRow4023 rho ∧ Seg16.relationRow4024 rho ∧ Seg16.relationRow4025 rho ∧ Seg16.relationRow4026 rho ∧ Seg16.relationRow4027 rho ∧ Seg16.relationRow4028 rho ∧ Seg16.relationRow4029 rho ∧ Seg16.relationRow4030 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩

theorem seg16_rung81 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15373 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩ := by
  obtain ⟨r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, r4028, r4029, r4030⟩ := seg16_rows81 rho h
  unfold Seg16.relationRow4018 at r4018
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4018
  unfold Seg16.relationRow4019 at r4019
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019
  unfold Seg16.relationRow4020 at r4020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4020
  unfold Seg16.relationRow4021 at r4021
  unfold Seg16.relationRow4022 at r4022
  unfold Seg16.relationRow4023 at r4023
  unfold Seg16.relationRow4024 at r4024
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4024
  unfold Seg16.relationRow4025 at r4025
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4025
  unfold Seg16.relationRow4026 at r4026
  unfold Seg16.relationRow4027 at r4027
  unfold Seg16.relationRow4028 at r4028
  unfold Seg16.relationRow4029 at r4029
  unfold Seg16.relationRow4030 at r4030
  have hrung81 (bit : Bool) (hbit : rho 15373 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
        ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩ := by
    have hnextx : seg16AccX82 rho = seg16AccX81 rho + rho 16596 := by
      unfold seg16AccX82 seg16AccX81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 81]
      ring
    have hnexty : seg16AccY82 rho = seg16AccY81 rho + rho 16597 := by
      unfold seg16AccY82 seg16AccY81
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 81]
      ring
    have ha0 : (rho 16588 + rho 16589) * (seg16AccX81 rho + seg16AccY81 rho) = rho 16590 := by
      unfold seg16AccX81 seg16AccY81
      linear_combination r4018
    have ha1 : rho 16589 * seg16AccX81 rho = rho 16591 := by
      unfold seg16AccX81
      linear_combination r4019
    have ha2 : rho 16588 * seg16AccY81 rho = rho 16592 := by
      unfold seg16AccY81
      linear_combination r4020
    have ha3 : 3021 * rho 16591 * rho 16592 = rho 16593 := by
      linear_combination r4021
    have ha4 : rho 16594 * (1 + rho 16593) = rho 16591 + rho 16592 := by
      linear_combination r4022
    have ha5 : rho 16595 * (1 - rho 16593) = rho 16590 - rho 16591 - rho 16592 := by
      linear_combination r4023
    have haddx :
        rho 16594 * (1 + 3021 * (rho 16589 * seg16AccX81 rho) * (rho 16588 * seg16AccY81 rho)) =
          rho 16589 * seg16AccX81 rho + rho 16588 * seg16AccY81 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16595 * (1 - 3021 * (rho 16589 * seg16AccX81 rho) * (rho 16588 * seg16AccY81 rho)) =
          (-1) * (rho 16589 * seg16AccX81 rho) - rho 16588 * seg16AccY81 rho +
            (seg16AccY81 rho - seg16AccX81 rho * (-1)) * (rho 16588 + rho 16589) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16595 * (1 - rho 16593) = rho 16590 - rho 16591 - rho 16592 := ha5
        _ = (-1) * rho 16591 - rho 16592 + (seg16AccY81 rho - seg16AccX81 rho * (-1)) * (rho 16588 + rho 16589) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX82 rho = seg16AccX81 rho - Bool.toZMod bit * (seg16AccX81 rho - rho 16594) := by
      have hd : rho 16596 = Bool.toZMod bit * (rho 16594 - seg16AccX81 rho) := by
        rw [← hbit]
        unfold seg16AccX81
        linear_combination -r4024
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY82 rho = seg16AccY81 rho - Bool.toZMod bit * (seg16AccY81 rho - rho 16595) := by
      have hd : rho 16597 = Bool.toZMod bit * (rho 16595 - seg16AccY81 rho) := by
        rw [← hbit]
        unfold seg16AccY81
        linear_combination -r4025
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16588 * rho 16589 = rho 16598 := by linear_combination r4026
    have hd1 : rho 16588 * rho 16588 = rho 16599 := by linear_combination r4027
    have hd2 : rho 16589 * rho 16589 = rho 16600 := by linear_combination r4028
    have hd3 : rho 16601 * (rho 16589 * rho 16589 + rho 16588 * rho 16588 * (-1)) = 2 * (rho 16588 * rho 16589) := by
      rw [hd0, hd1, hd2]
      linear_combination r4029
    have hd4 : rho 16602 * (2 - (rho 16589 * rho 16589 + rho 16588 * rho 16588 * (-1))) = rho 16589 * rho 16589 - rho 16588 * rho 16588 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4030
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX81 rho : Seg16.F), (seg16AccY81 rho : Seg16.F)⟩
      ⟨(rho 16588 : Seg16.F), (rho 16589 : Seg16.F)⟩
      ⟨(rho 16594 : Seg16.F), (rho 16595 : Seg16.F)⟩
      ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
      ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung81

theorem seg16_rows82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4031 rho ∧ Seg16.relationRow4032 rho ∧ Seg16.relationRow4033 rho ∧ Seg16.relationRow4034 rho ∧ Seg16.relationRow4035 rho ∧ Seg16.relationRow4036 rho ∧ Seg16.relationRow4037 rho ∧ Seg16.relationRow4038 rho ∧ Seg16.relationRow4039 rho ∧ Seg16.relationRow4040 rho ∧ Seg16.relationRow4041 rho ∧ Seg16.relationRow4042 rho ∧ Seg16.relationRow4043 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩

theorem seg16_rung82 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15374 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩ := by
  obtain ⟨r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, r4041, r4042, r4043⟩ := seg16_rows82 rho h
  unfold Seg16.relationRow4031 at r4031
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4031
  unfold Seg16.relationRow4032 at r4032
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032
  unfold Seg16.relationRow4033 at r4033
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4033
  unfold Seg16.relationRow4034 at r4034
  unfold Seg16.relationRow4035 at r4035
  unfold Seg16.relationRow4036 at r4036
  unfold Seg16.relationRow4037 at r4037
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4037
  unfold Seg16.relationRow4038 at r4038
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4038
  unfold Seg16.relationRow4039 at r4039
  unfold Seg16.relationRow4040 at r4040
  unfold Seg16.relationRow4041 at r4041
  unfold Seg16.relationRow4042 at r4042
  unfold Seg16.relationRow4043 at r4043
  have hrung82 (bit : Bool) (hbit : rho 15374 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
        ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩ := by
    have hnextx : seg16AccX83 rho = seg16AccX82 rho + rho 16609 := by
      unfold seg16AccX83 seg16AccX82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 82]
      ring
    have hnexty : seg16AccY83 rho = seg16AccY82 rho + rho 16610 := by
      unfold seg16AccY83 seg16AccY82
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 82]
      ring
    have ha0 : (rho 16601 + rho 16602) * (seg16AccX82 rho + seg16AccY82 rho) = rho 16603 := by
      unfold seg16AccX82 seg16AccY82
      linear_combination r4031
    have ha1 : rho 16602 * seg16AccX82 rho = rho 16604 := by
      unfold seg16AccX82
      linear_combination r4032
    have ha2 : rho 16601 * seg16AccY82 rho = rho 16605 := by
      unfold seg16AccY82
      linear_combination r4033
    have ha3 : 3021 * rho 16604 * rho 16605 = rho 16606 := by
      linear_combination r4034
    have ha4 : rho 16607 * (1 + rho 16606) = rho 16604 + rho 16605 := by
      linear_combination r4035
    have ha5 : rho 16608 * (1 - rho 16606) = rho 16603 - rho 16604 - rho 16605 := by
      linear_combination r4036
    have haddx :
        rho 16607 * (1 + 3021 * (rho 16602 * seg16AccX82 rho) * (rho 16601 * seg16AccY82 rho)) =
          rho 16602 * seg16AccX82 rho + rho 16601 * seg16AccY82 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16608 * (1 - 3021 * (rho 16602 * seg16AccX82 rho) * (rho 16601 * seg16AccY82 rho)) =
          (-1) * (rho 16602 * seg16AccX82 rho) - rho 16601 * seg16AccY82 rho +
            (seg16AccY82 rho - seg16AccX82 rho * (-1)) * (rho 16601 + rho 16602) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16608 * (1 - rho 16606) = rho 16603 - rho 16604 - rho 16605 := ha5
        _ = (-1) * rho 16604 - rho 16605 + (seg16AccY82 rho - seg16AccX82 rho * (-1)) * (rho 16601 + rho 16602) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX83 rho = seg16AccX82 rho - Bool.toZMod bit * (seg16AccX82 rho - rho 16607) := by
      have hd : rho 16609 = Bool.toZMod bit * (rho 16607 - seg16AccX82 rho) := by
        rw [← hbit]
        unfold seg16AccX82
        linear_combination -r4037
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY83 rho = seg16AccY82 rho - Bool.toZMod bit * (seg16AccY82 rho - rho 16608) := by
      have hd : rho 16610 = Bool.toZMod bit * (rho 16608 - seg16AccY82 rho) := by
        rw [← hbit]
        unfold seg16AccY82
        linear_combination -r4038
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16601 * rho 16602 = rho 16611 := by linear_combination r4039
    have hd1 : rho 16601 * rho 16601 = rho 16612 := by linear_combination r4040
    have hd2 : rho 16602 * rho 16602 = rho 16613 := by linear_combination r4041
    have hd3 : rho 16614 * (rho 16602 * rho 16602 + rho 16601 * rho 16601 * (-1)) = 2 * (rho 16601 * rho 16602) := by
      rw [hd0, hd1, hd2]
      linear_combination r4042
    have hd4 : rho 16615 * (2 - (rho 16602 * rho 16602 + rho 16601 * rho 16601 * (-1))) = rho 16602 * rho 16602 - rho 16601 * rho 16601 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4043
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX82 rho : Seg16.F), (seg16AccY82 rho : Seg16.F)⟩
      ⟨(rho 16601 : Seg16.F), (rho 16602 : Seg16.F)⟩
      ⟨(rho 16607 : Seg16.F), (rho 16608 : Seg16.F)⟩
      ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
      ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung82

theorem seg16_rows83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4044 rho ∧ Seg16.relationRow4045 rho ∧ Seg16.relationRow4046 rho ∧ Seg16.relationRow4047 rho ∧ Seg16.relationRow4048 rho ∧ Seg16.relationRow4049 rho ∧ Seg16.relationRow4050 rho ∧ Seg16.relationRow4051 rho ∧ Seg16.relationRow4052 rho ∧ Seg16.relationRow4053 rho ∧ Seg16.relationRow4054 rho ∧ Seg16.relationRow4055 rho ∧ Seg16.relationRow4056 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩

theorem seg16_rung83 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15375 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩ := by
  obtain ⟨r4044, r4045, r4046, r4047, r4048, r4049, r4050, r4051, r4052, r4053, r4054, r4055, r4056⟩ := seg16_rows83 rho h
  unfold Seg16.relationRow4044 at r4044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4044
  unfold Seg16.relationRow4045 at r4045
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045
  unfold Seg16.relationRow4046 at r4046
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4046
  unfold Seg16.relationRow4047 at r4047
  unfold Seg16.relationRow4048 at r4048
  unfold Seg16.relationRow4049 at r4049
  unfold Seg16.relationRow4050 at r4050
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4050
  unfold Seg16.relationRow4051 at r4051
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4051
  unfold Seg16.relationRow4052 at r4052
  unfold Seg16.relationRow4053 at r4053
  unfold Seg16.relationRow4054 at r4054
  unfold Seg16.relationRow4055 at r4055
  unfold Seg16.relationRow4056 at r4056
  have hrung83 (bit : Bool) (hbit : rho 15375 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
        ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩ := by
    have hnextx : seg16AccX84 rho = seg16AccX83 rho + rho 16622 := by
      unfold seg16AccX84 seg16AccX83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 83]
      ring
    have hnexty : seg16AccY84 rho = seg16AccY83 rho + rho 16623 := by
      unfold seg16AccY84 seg16AccY83
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 83]
      ring
    have ha0 : (rho 16614 + rho 16615) * (seg16AccX83 rho + seg16AccY83 rho) = rho 16616 := by
      unfold seg16AccX83 seg16AccY83
      linear_combination r4044
    have ha1 : rho 16615 * seg16AccX83 rho = rho 16617 := by
      unfold seg16AccX83
      linear_combination r4045
    have ha2 : rho 16614 * seg16AccY83 rho = rho 16618 := by
      unfold seg16AccY83
      linear_combination r4046
    have ha3 : 3021 * rho 16617 * rho 16618 = rho 16619 := by
      linear_combination r4047
    have ha4 : rho 16620 * (1 + rho 16619) = rho 16617 + rho 16618 := by
      linear_combination r4048
    have ha5 : rho 16621 * (1 - rho 16619) = rho 16616 - rho 16617 - rho 16618 := by
      linear_combination r4049
    have haddx :
        rho 16620 * (1 + 3021 * (rho 16615 * seg16AccX83 rho) * (rho 16614 * seg16AccY83 rho)) =
          rho 16615 * seg16AccX83 rho + rho 16614 * seg16AccY83 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16621 * (1 - 3021 * (rho 16615 * seg16AccX83 rho) * (rho 16614 * seg16AccY83 rho)) =
          (-1) * (rho 16615 * seg16AccX83 rho) - rho 16614 * seg16AccY83 rho +
            (seg16AccY83 rho - seg16AccX83 rho * (-1)) * (rho 16614 + rho 16615) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16621 * (1 - rho 16619) = rho 16616 - rho 16617 - rho 16618 := ha5
        _ = (-1) * rho 16617 - rho 16618 + (seg16AccY83 rho - seg16AccX83 rho * (-1)) * (rho 16614 + rho 16615) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX84 rho = seg16AccX83 rho - Bool.toZMod bit * (seg16AccX83 rho - rho 16620) := by
      have hd : rho 16622 = Bool.toZMod bit * (rho 16620 - seg16AccX83 rho) := by
        rw [← hbit]
        unfold seg16AccX83
        linear_combination -r4050
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY84 rho = seg16AccY83 rho - Bool.toZMod bit * (seg16AccY83 rho - rho 16621) := by
      have hd : rho 16623 = Bool.toZMod bit * (rho 16621 - seg16AccY83 rho) := by
        rw [← hbit]
        unfold seg16AccY83
        linear_combination -r4051
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16614 * rho 16615 = rho 16624 := by linear_combination r4052
    have hd1 : rho 16614 * rho 16614 = rho 16625 := by linear_combination r4053
    have hd2 : rho 16615 * rho 16615 = rho 16626 := by linear_combination r4054
    have hd3 : rho 16627 * (rho 16615 * rho 16615 + rho 16614 * rho 16614 * (-1)) = 2 * (rho 16614 * rho 16615) := by
      rw [hd0, hd1, hd2]
      linear_combination r4055
    have hd4 : rho 16628 * (2 - (rho 16615 * rho 16615 + rho 16614 * rho 16614 * (-1))) = rho 16615 * rho 16615 - rho 16614 * rho 16614 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4056
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX83 rho : Seg16.F), (seg16AccY83 rho : Seg16.F)⟩
      ⟨(rho 16614 : Seg16.F), (rho 16615 : Seg16.F)⟩
      ⟨(rho 16620 : Seg16.F), (rho 16621 : Seg16.F)⟩
      ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
      ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung83

theorem seg16_rows84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4057 rho ∧ Seg16.relationRow4058 rho ∧ Seg16.relationRow4059 rho ∧ Seg16.relationRow4060 rho ∧ Seg16.relationRow4061 rho ∧ Seg16.relationRow4062 rho ∧ Seg16.relationRow4063 rho ∧ Seg16.relationRow4064 rho ∧ Seg16.relationRow4065 rho ∧ Seg16.relationRow4066 rho ∧ Seg16.relationRow4067 rho ∧ Seg16.relationRow4068 rho ∧ Seg16.relationRow4069 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩

theorem seg16_rung84 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15376 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩ := by
  obtain ⟨r4057, r4058, r4059, r4060, r4061, r4062, r4063, r4064, r4065, r4066, r4067, r4068, r4069⟩ := seg16_rows84 rho h
  unfold Seg16.relationRow4057 at r4057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4057
  unfold Seg16.relationRow4058 at r4058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058
  unfold Seg16.relationRow4059 at r4059
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4059
  unfold Seg16.relationRow4060 at r4060
  unfold Seg16.relationRow4061 at r4061
  unfold Seg16.relationRow4062 at r4062
  unfold Seg16.relationRow4063 at r4063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4063
  unfold Seg16.relationRow4064 at r4064
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4064
  unfold Seg16.relationRow4065 at r4065
  unfold Seg16.relationRow4066 at r4066
  unfold Seg16.relationRow4067 at r4067
  unfold Seg16.relationRow4068 at r4068
  unfold Seg16.relationRow4069 at r4069
  have hrung84 (bit : Bool) (hbit : rho 15376 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
        ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩ := by
    have hnextx : seg16AccX85 rho = seg16AccX84 rho + rho 16635 := by
      unfold seg16AccX85 seg16AccX84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 84]
      ring
    have hnexty : seg16AccY85 rho = seg16AccY84 rho + rho 16636 := by
      unfold seg16AccY85 seg16AccY84
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 84]
      ring
    have ha0 : (rho 16627 + rho 16628) * (seg16AccX84 rho + seg16AccY84 rho) = rho 16629 := by
      unfold seg16AccX84 seg16AccY84
      linear_combination r4057
    have ha1 : rho 16628 * seg16AccX84 rho = rho 16630 := by
      unfold seg16AccX84
      linear_combination r4058
    have ha2 : rho 16627 * seg16AccY84 rho = rho 16631 := by
      unfold seg16AccY84
      linear_combination r4059
    have ha3 : 3021 * rho 16630 * rho 16631 = rho 16632 := by
      linear_combination r4060
    have ha4 : rho 16633 * (1 + rho 16632) = rho 16630 + rho 16631 := by
      linear_combination r4061
    have ha5 : rho 16634 * (1 - rho 16632) = rho 16629 - rho 16630 - rho 16631 := by
      linear_combination r4062
    have haddx :
        rho 16633 * (1 + 3021 * (rho 16628 * seg16AccX84 rho) * (rho 16627 * seg16AccY84 rho)) =
          rho 16628 * seg16AccX84 rho + rho 16627 * seg16AccY84 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16634 * (1 - 3021 * (rho 16628 * seg16AccX84 rho) * (rho 16627 * seg16AccY84 rho)) =
          (-1) * (rho 16628 * seg16AccX84 rho) - rho 16627 * seg16AccY84 rho +
            (seg16AccY84 rho - seg16AccX84 rho * (-1)) * (rho 16627 + rho 16628) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16634 * (1 - rho 16632) = rho 16629 - rho 16630 - rho 16631 := ha5
        _ = (-1) * rho 16630 - rho 16631 + (seg16AccY84 rho - seg16AccX84 rho * (-1)) * (rho 16627 + rho 16628) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX85 rho = seg16AccX84 rho - Bool.toZMod bit * (seg16AccX84 rho - rho 16633) := by
      have hd : rho 16635 = Bool.toZMod bit * (rho 16633 - seg16AccX84 rho) := by
        rw [← hbit]
        unfold seg16AccX84
        linear_combination -r4063
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY85 rho = seg16AccY84 rho - Bool.toZMod bit * (seg16AccY84 rho - rho 16634) := by
      have hd : rho 16636 = Bool.toZMod bit * (rho 16634 - seg16AccY84 rho) := by
        rw [← hbit]
        unfold seg16AccY84
        linear_combination -r4064
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16627 * rho 16628 = rho 16637 := by linear_combination r4065
    have hd1 : rho 16627 * rho 16627 = rho 16638 := by linear_combination r4066
    have hd2 : rho 16628 * rho 16628 = rho 16639 := by linear_combination r4067
    have hd3 : rho 16640 * (rho 16628 * rho 16628 + rho 16627 * rho 16627 * (-1)) = 2 * (rho 16627 * rho 16628) := by
      rw [hd0, hd1, hd2]
      linear_combination r4068
    have hd4 : rho 16641 * (2 - (rho 16628 * rho 16628 + rho 16627 * rho 16627 * (-1))) = rho 16628 * rho 16628 - rho 16627 * rho 16627 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4069
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX84 rho : Seg16.F), (seg16AccY84 rho : Seg16.F)⟩
      ⟨(rho 16627 : Seg16.F), (rho 16628 : Seg16.F)⟩
      ⟨(rho 16633 : Seg16.F), (rho 16634 : Seg16.F)⟩
      ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
      ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung84

theorem seg16_rows85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4070 rho ∧ Seg16.relationRow4071 rho ∧ Seg16.relationRow4072 rho ∧ Seg16.relationRow4073 rho ∧ Seg16.relationRow4074 rho ∧ Seg16.relationRow4075 rho ∧ Seg16.relationRow4076 rho ∧ Seg16.relationRow4077 rho ∧ Seg16.relationRow4078 rho ∧ Seg16.relationRow4079 rho ∧ Seg16.relationRow4080 rho ∧ Seg16.relationRow4081 rho ∧ Seg16.relationRow4082 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart50 at p50
  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨r4080, r4081, r4082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩

theorem seg16_rung85 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15377 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩ := by
  obtain ⟨r4070, r4071, r4072, r4073, r4074, r4075, r4076, r4077, r4078, r4079, r4080, r4081, r4082⟩ := seg16_rows85 rho h
  unfold Seg16.relationRow4070 at r4070
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4070
  unfold Seg16.relationRow4071 at r4071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071
  unfold Seg16.relationRow4072 at r4072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4072
  unfold Seg16.relationRow4073 at r4073
  unfold Seg16.relationRow4074 at r4074
  unfold Seg16.relationRow4075 at r4075
  unfold Seg16.relationRow4076 at r4076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4076
  unfold Seg16.relationRow4077 at r4077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4077
  unfold Seg16.relationRow4078 at r4078
  unfold Seg16.relationRow4079 at r4079
  unfold Seg16.relationRow4080 at r4080
  unfold Seg16.relationRow4081 at r4081
  unfold Seg16.relationRow4082 at r4082
  have hrung85 (bit : Bool) (hbit : rho 15377 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
        ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩ := by
    have hnextx : seg16AccX86 rho = seg16AccX85 rho + rho 16648 := by
      unfold seg16AccX86 seg16AccX85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 85]
      ring
    have hnexty : seg16AccY86 rho = seg16AccY85 rho + rho 16649 := by
      unfold seg16AccY86 seg16AccY85
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 85]
      ring
    have ha0 : (rho 16640 + rho 16641) * (seg16AccX85 rho + seg16AccY85 rho) = rho 16642 := by
      unfold seg16AccX85 seg16AccY85
      linear_combination r4070
    have ha1 : rho 16641 * seg16AccX85 rho = rho 16643 := by
      unfold seg16AccX85
      linear_combination r4071
    have ha2 : rho 16640 * seg16AccY85 rho = rho 16644 := by
      unfold seg16AccY85
      linear_combination r4072
    have ha3 : 3021 * rho 16643 * rho 16644 = rho 16645 := by
      linear_combination r4073
    have ha4 : rho 16646 * (1 + rho 16645) = rho 16643 + rho 16644 := by
      linear_combination r4074
    have ha5 : rho 16647 * (1 - rho 16645) = rho 16642 - rho 16643 - rho 16644 := by
      linear_combination r4075
    have haddx :
        rho 16646 * (1 + 3021 * (rho 16641 * seg16AccX85 rho) * (rho 16640 * seg16AccY85 rho)) =
          rho 16641 * seg16AccX85 rho + rho 16640 * seg16AccY85 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16647 * (1 - 3021 * (rho 16641 * seg16AccX85 rho) * (rho 16640 * seg16AccY85 rho)) =
          (-1) * (rho 16641 * seg16AccX85 rho) - rho 16640 * seg16AccY85 rho +
            (seg16AccY85 rho - seg16AccX85 rho * (-1)) * (rho 16640 + rho 16641) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16647 * (1 - rho 16645) = rho 16642 - rho 16643 - rho 16644 := ha5
        _ = (-1) * rho 16643 - rho 16644 + (seg16AccY85 rho - seg16AccX85 rho * (-1)) * (rho 16640 + rho 16641) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX86 rho = seg16AccX85 rho - Bool.toZMod bit * (seg16AccX85 rho - rho 16646) := by
      have hd : rho 16648 = Bool.toZMod bit * (rho 16646 - seg16AccX85 rho) := by
        rw [← hbit]
        unfold seg16AccX85
        linear_combination -r4076
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY86 rho = seg16AccY85 rho - Bool.toZMod bit * (seg16AccY85 rho - rho 16647) := by
      have hd : rho 16649 = Bool.toZMod bit * (rho 16647 - seg16AccY85 rho) := by
        rw [← hbit]
        unfold seg16AccY85
        linear_combination -r4077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16640 * rho 16641 = rho 16650 := by linear_combination r4078
    have hd1 : rho 16640 * rho 16640 = rho 16651 := by linear_combination r4079
    have hd2 : rho 16641 * rho 16641 = rho 16652 := by linear_combination r4080
    have hd3 : rho 16653 * (rho 16641 * rho 16641 + rho 16640 * rho 16640 * (-1)) = 2 * (rho 16640 * rho 16641) := by
      rw [hd0, hd1, hd2]
      linear_combination r4081
    have hd4 : rho 16654 * (2 - (rho 16641 * rho 16641 + rho 16640 * rho 16640 * (-1))) = rho 16641 * rho 16641 - rho 16640 * rho 16640 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX85 rho : Seg16.F), (seg16AccY85 rho : Seg16.F)⟩
      ⟨(rho 16640 : Seg16.F), (rho 16641 : Seg16.F)⟩
      ⟨(rho 16646 : Seg16.F), (rho 16647 : Seg16.F)⟩
      ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
      ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung85

theorem seg16_rows86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4083 rho ∧ Seg16.relationRow4084 rho ∧ Seg16.relationRow4085 rho ∧ Seg16.relationRow4086 rho ∧ Seg16.relationRow4087 rho ∧ Seg16.relationRow4088 rho ∧ Seg16.relationRow4089 rho ∧ Seg16.relationRow4090 rho ∧ Seg16.relationRow4091 rho ∧ Seg16.relationRow4092 rho ∧ Seg16.relationRow4093 rho ∧ Seg16.relationRow4094 rho ∧ Seg16.relationRow4095 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩

theorem seg16_rung86 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15378 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩ := by
  obtain ⟨r4083, r4084, r4085, r4086, r4087, r4088, r4089, r4090, r4091, r4092, r4093, r4094, r4095⟩ := seg16_rows86 rho h
  unfold Seg16.relationRow4083 at r4083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4083
  unfold Seg16.relationRow4084 at r4084
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084
  unfold Seg16.relationRow4085 at r4085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4085
  unfold Seg16.relationRow4086 at r4086
  unfold Seg16.relationRow4087 at r4087
  unfold Seg16.relationRow4088 at r4088
  unfold Seg16.relationRow4089 at r4089
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4089
  unfold Seg16.relationRow4090 at r4090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4090
  unfold Seg16.relationRow4091 at r4091
  unfold Seg16.relationRow4092 at r4092
  unfold Seg16.relationRow4093 at r4093
  unfold Seg16.relationRow4094 at r4094
  unfold Seg16.relationRow4095 at r4095
  have hrung86 (bit : Bool) (hbit : rho 15378 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
        ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩ := by
    have hnextx : seg16AccX87 rho = seg16AccX86 rho + rho 16661 := by
      unfold seg16AccX87 seg16AccX86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 86]
      ring
    have hnexty : seg16AccY87 rho = seg16AccY86 rho + rho 16662 := by
      unfold seg16AccY87 seg16AccY86
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 86]
      ring
    have ha0 : (rho 16653 + rho 16654) * (seg16AccX86 rho + seg16AccY86 rho) = rho 16655 := by
      unfold seg16AccX86 seg16AccY86
      linear_combination r4083
    have ha1 : rho 16654 * seg16AccX86 rho = rho 16656 := by
      unfold seg16AccX86
      linear_combination r4084
    have ha2 : rho 16653 * seg16AccY86 rho = rho 16657 := by
      unfold seg16AccY86
      linear_combination r4085
    have ha3 : 3021 * rho 16656 * rho 16657 = rho 16658 := by
      linear_combination r4086
    have ha4 : rho 16659 * (1 + rho 16658) = rho 16656 + rho 16657 := by
      linear_combination r4087
    have ha5 : rho 16660 * (1 - rho 16658) = rho 16655 - rho 16656 - rho 16657 := by
      linear_combination r4088
    have haddx :
        rho 16659 * (1 + 3021 * (rho 16654 * seg16AccX86 rho) * (rho 16653 * seg16AccY86 rho)) =
          rho 16654 * seg16AccX86 rho + rho 16653 * seg16AccY86 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16660 * (1 - 3021 * (rho 16654 * seg16AccX86 rho) * (rho 16653 * seg16AccY86 rho)) =
          (-1) * (rho 16654 * seg16AccX86 rho) - rho 16653 * seg16AccY86 rho +
            (seg16AccY86 rho - seg16AccX86 rho * (-1)) * (rho 16653 + rho 16654) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16660 * (1 - rho 16658) = rho 16655 - rho 16656 - rho 16657 := ha5
        _ = (-1) * rho 16656 - rho 16657 + (seg16AccY86 rho - seg16AccX86 rho * (-1)) * (rho 16653 + rho 16654) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX87 rho = seg16AccX86 rho - Bool.toZMod bit * (seg16AccX86 rho - rho 16659) := by
      have hd : rho 16661 = Bool.toZMod bit * (rho 16659 - seg16AccX86 rho) := by
        rw [← hbit]
        unfold seg16AccX86
        linear_combination -r4089
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY87 rho = seg16AccY86 rho - Bool.toZMod bit * (seg16AccY86 rho - rho 16660) := by
      have hd : rho 16662 = Bool.toZMod bit * (rho 16660 - seg16AccY86 rho) := by
        rw [← hbit]
        unfold seg16AccY86
        linear_combination -r4090
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16653 * rho 16654 = rho 16663 := by linear_combination r4091
    have hd1 : rho 16653 * rho 16653 = rho 16664 := by linear_combination r4092
    have hd2 : rho 16654 * rho 16654 = rho 16665 := by linear_combination r4093
    have hd3 : rho 16666 * (rho 16654 * rho 16654 + rho 16653 * rho 16653 * (-1)) = 2 * (rho 16653 * rho 16654) := by
      rw [hd0, hd1, hd2]
      linear_combination r4094
    have hd4 : rho 16667 * (2 - (rho 16654 * rho 16654 + rho 16653 * rho 16653 * (-1))) = rho 16654 * rho 16654 - rho 16653 * rho 16653 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4095
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX86 rho : Seg16.F), (seg16AccY86 rho : Seg16.F)⟩
      ⟨(rho 16653 : Seg16.F), (rho 16654 : Seg16.F)⟩
      ⟨(rho 16659 : Seg16.F), (rho 16660 : Seg16.F)⟩
      ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
      ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung86

theorem seg16_rows87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4096 rho ∧ Seg16.relationRow4097 rho ∧ Seg16.relationRow4098 rho ∧ Seg16.relationRow4099 rho ∧ Seg16.relationRow4100 rho ∧ Seg16.relationRow4101 rho ∧ Seg16.relationRow4102 rho ∧ Seg16.relationRow4103 rho ∧ Seg16.relationRow4104 rho ∧ Seg16.relationRow4105 rho ∧ Seg16.relationRow4106 rho ∧ Seg16.relationRow4107 rho ∧ Seg16.relationRow4108 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩

theorem seg16_rung87 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15379 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩ := by
  obtain ⟨r4096, r4097, r4098, r4099, r4100, r4101, r4102, r4103, r4104, r4105, r4106, r4107, r4108⟩ := seg16_rows87 rho h
  unfold Seg16.relationRow4096 at r4096
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4096
  unfold Seg16.relationRow4097 at r4097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097
  unfold Seg16.relationRow4098 at r4098
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4098
  unfold Seg16.relationRow4099 at r4099
  unfold Seg16.relationRow4100 at r4100
  unfold Seg16.relationRow4101 at r4101
  unfold Seg16.relationRow4102 at r4102
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4102
  unfold Seg16.relationRow4103 at r4103
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4103
  unfold Seg16.relationRow4104 at r4104
  unfold Seg16.relationRow4105 at r4105
  unfold Seg16.relationRow4106 at r4106
  unfold Seg16.relationRow4107 at r4107
  unfold Seg16.relationRow4108 at r4108
  have hrung87 (bit : Bool) (hbit : rho 15379 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
        ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩ := by
    have hnextx : seg16AccX88 rho = seg16AccX87 rho + rho 16674 := by
      unfold seg16AccX88 seg16AccX87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 87]
      ring
    have hnexty : seg16AccY88 rho = seg16AccY87 rho + rho 16675 := by
      unfold seg16AccY88 seg16AccY87
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 87]
      ring
    have ha0 : (rho 16666 + rho 16667) * (seg16AccX87 rho + seg16AccY87 rho) = rho 16668 := by
      unfold seg16AccX87 seg16AccY87
      linear_combination r4096
    have ha1 : rho 16667 * seg16AccX87 rho = rho 16669 := by
      unfold seg16AccX87
      linear_combination r4097
    have ha2 : rho 16666 * seg16AccY87 rho = rho 16670 := by
      unfold seg16AccY87
      linear_combination r4098
    have ha3 : 3021 * rho 16669 * rho 16670 = rho 16671 := by
      linear_combination r4099
    have ha4 : rho 16672 * (1 + rho 16671) = rho 16669 + rho 16670 := by
      linear_combination r4100
    have ha5 : rho 16673 * (1 - rho 16671) = rho 16668 - rho 16669 - rho 16670 := by
      linear_combination r4101
    have haddx :
        rho 16672 * (1 + 3021 * (rho 16667 * seg16AccX87 rho) * (rho 16666 * seg16AccY87 rho)) =
          rho 16667 * seg16AccX87 rho + rho 16666 * seg16AccY87 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16673 * (1 - 3021 * (rho 16667 * seg16AccX87 rho) * (rho 16666 * seg16AccY87 rho)) =
          (-1) * (rho 16667 * seg16AccX87 rho) - rho 16666 * seg16AccY87 rho +
            (seg16AccY87 rho - seg16AccX87 rho * (-1)) * (rho 16666 + rho 16667) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16673 * (1 - rho 16671) = rho 16668 - rho 16669 - rho 16670 := ha5
        _ = (-1) * rho 16669 - rho 16670 + (seg16AccY87 rho - seg16AccX87 rho * (-1)) * (rho 16666 + rho 16667) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX88 rho = seg16AccX87 rho - Bool.toZMod bit * (seg16AccX87 rho - rho 16672) := by
      have hd : rho 16674 = Bool.toZMod bit * (rho 16672 - seg16AccX87 rho) := by
        rw [← hbit]
        unfold seg16AccX87
        linear_combination -r4102
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY88 rho = seg16AccY87 rho - Bool.toZMod bit * (seg16AccY87 rho - rho 16673) := by
      have hd : rho 16675 = Bool.toZMod bit * (rho 16673 - seg16AccY87 rho) := by
        rw [← hbit]
        unfold seg16AccY87
        linear_combination -r4103
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16666 * rho 16667 = rho 16676 := by linear_combination r4104
    have hd1 : rho 16666 * rho 16666 = rho 16677 := by linear_combination r4105
    have hd2 : rho 16667 * rho 16667 = rho 16678 := by linear_combination r4106
    have hd3 : rho 16679 * (rho 16667 * rho 16667 + rho 16666 * rho 16666 * (-1)) = 2 * (rho 16666 * rho 16667) := by
      rw [hd0, hd1, hd2]
      linear_combination r4107
    have hd4 : rho 16680 * (2 - (rho 16667 * rho 16667 + rho 16666 * rho 16666 * (-1))) = rho 16667 * rho 16667 - rho 16666 * rho 16666 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4108
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX87 rho : Seg16.F), (seg16AccY87 rho : Seg16.F)⟩
      ⟨(rho 16666 : Seg16.F), (rho 16667 : Seg16.F)⟩
      ⟨(rho 16672 : Seg16.F), (rho 16673 : Seg16.F)⟩
      ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
      ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung87

theorem seg16_hstep_c7 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg16_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg16_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg16_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg16_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg16_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg16_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg16_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg16_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg16_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg16_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
