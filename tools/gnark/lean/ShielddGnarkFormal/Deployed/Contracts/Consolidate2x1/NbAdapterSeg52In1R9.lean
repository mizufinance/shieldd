import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3973 rho ∧ Seg52.relationRow3974 rho ∧ Seg52.relationRow3975 rho ∧ Seg52.relationRow3976 rho ∧ Seg52.relationRow3977 rho ∧ Seg52.relationRow3978 rho ∧ Seg52.relationRow3979 rho ∧ Seg52.relationRow3980 rho ∧ Seg52.relationRow3981 rho ∧ Seg52.relationRow3982 rho ∧ Seg52.relationRow3983 rho ∧ Seg52.relationRow3984 rho ∧ Seg52.relationRow3985 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985⟩

theorem seg52In1_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48361, rho 48362⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 48361, rho 48362⟩
        ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 48374, rho 48375⟩ := by
  obtain ⟨r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985⟩ := seg52In1_rows99 rho h
  unfold Seg52.relationRow3973 at r3973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3973

  unfold Seg52.relationRow3974 at r3974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3974

  unfold Seg52.relationRow3975 at r3975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3975

  unfold Seg52.relationRow3976 at r3976

  unfold Seg52.relationRow3977 at r3977

  unfold Seg52.relationRow3978 at r3978

  unfold Seg52.relationRow3979 at r3979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3979

  unfold Seg52.relationRow3980 at r3980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980

  unfold Seg52.relationRow3981 at r3981

  unfold Seg52.relationRow3982 at r3982

  unfold Seg52.relationRow3983 at r3983

  unfold Seg52.relationRow3984 at r3984

  unfold Seg52.relationRow3985 at r3985

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX100 rho = seg52In1AccX99 rho + rho 48369 := by
    unfold seg52In1AccX100 seg52In1AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 99]

    ring

  have hnexty : seg52In1AccY100 rho = seg52In1AccY99 rho + rho 48370 := by
    unfold seg52In1AccY100 seg52In1AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 99]

    ring

  have ha0 : (rho 48361 + rho 48362) * (seg52In1AccX99 rho + seg52In1AccY99 rho) = rho 48363 := by
    unfold seg52In1AccX99 seg52In1AccY99
    linear_combination r3973
  have ha1 : rho 48362 * seg52In1AccX99 rho = rho 48364 := by
    unfold seg52In1AccX99
    linear_combination r3974
  have ha2 : rho 48361 * seg52In1AccY99 rho = rho 48365 := by
    unfold seg52In1AccY99
    linear_combination r3975
  have ha3 : 3021 * rho 48364 * rho 48365 = rho 48366 := by
    linear_combination r3976
  have ha4 : rho 48367 * (1 + rho 48366) = rho 48364 + rho 48365 := by
    linear_combination r3977
  have ha5 : rho 48368 * (1 - rho 48366) = rho 48363 - rho 48364 - rho 48365 := by
    linear_combination r3978
  have haddx :
      rho 48367 * (1 + 3021 * (rho 48362 * seg52In1AccX99 rho) * (rho 48361 * seg52In1AccY99 rho)) =
        rho 48362 * seg52In1AccX99 rho + rho 48361 * seg52In1AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48368 * (1 - 3021 * (rho 48362 * seg52In1AccX99 rho) * (rho 48361 * seg52In1AccY99 rho)) =
        (-1) * (rho 48362 * seg52In1AccX99 rho) - rho 48361 * seg52In1AccY99 rho +
          (seg52In1AccY99 rho - seg52In1AccX99 rho * (-1)) * (rho 48361 + rho 48362) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48368 * (1 - rho 48366) = rho 48363 - rho 48364 - rho 48365 := ha5
      _ = (-1) * rho 48364 - rho 48365 + (seg52In1AccY99 rho - seg52In1AccX99 rho * (-1)) *
          (rho 48361 + rho 48362) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX100 rho = seg52In1AccX99 rho - Bool.toZMod bit * (seg52In1AccX99 rho - rho 48367) := by
    have hd : rho 48369 = Bool.toZMod bit * (rho 48367 - seg52In1AccX99 rho) := by
      rw [← hbit]
      unfold seg52In1AccX99
      linear_combination -r3979
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY100 rho = seg52In1AccY99 rho - Bool.toZMod bit * (seg52In1AccY99 rho - rho 48368) := by
    have hd : rho 48370 = Bool.toZMod bit * (rho 48368 - seg52In1AccY99 rho) := by
      rw [← hbit]
      unfold seg52In1AccY99
      linear_combination -r3980
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48361 * rho 48362 = rho 48371 := by linear_combination r3981
  have hd1 : rho 48361 * rho 48361 = rho 48372 := by linear_combination r3982
  have hd2 : rho 48362 * rho 48362 = rho 48373 := by linear_combination r3983
  have hd3 : rho 48374 * (rho 48362 * rho 48362 + rho 48361 * rho 48361 * (-1)) =
      2 * (rho 48361 * rho 48362) := by
    rw [hd0, hd1, hd2]
    linear_combination r3984
  have hd4 : rho 48375 * (2 - (rho 48362 * rho 48362 + rho 48361 * rho 48361 * (-1))) =
      rho 48362 * rho 48362 - rho 48361 * rho 48361 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3985
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 48361, rho 48362⟩
    ⟨rho 48367, rho 48368⟩ ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 48374, rho 48375⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3986 rho ∧ Seg52.relationRow3987 rho ∧ Seg52.relationRow3988 rho ∧ Seg52.relationRow3989 rho ∧ Seg52.relationRow3990 rho ∧ Seg52.relationRow3991 rho ∧ Seg52.relationRow3992 rho ∧ Seg52.relationRow3993 rho ∧ Seg52.relationRow3994 rho ∧ Seg52.relationRow3995 rho ∧ Seg52.relationRow3996 rho ∧ Seg52.relationRow3997 rho ∧ Seg52.relationRow3998 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, _⟩

  exact ⟨r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998⟩

theorem seg52In1_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48374, rho 48375⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 48374, rho 48375⟩
        ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 48387, rho 48388⟩ := by
  obtain ⟨r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998⟩ := seg52In1_rows100 rho h
  unfold Seg52.relationRow3986 at r3986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3986

  unfold Seg52.relationRow3987 at r3987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3987

  unfold Seg52.relationRow3988 at r3988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3988

  unfold Seg52.relationRow3989 at r3989

  unfold Seg52.relationRow3990 at r3990

  unfold Seg52.relationRow3991 at r3991

  unfold Seg52.relationRow3992 at r3992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3992

  unfold Seg52.relationRow3993 at r3993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993

  unfold Seg52.relationRow3994 at r3994

  unfold Seg52.relationRow3995 at r3995

  unfold Seg52.relationRow3996 at r3996

  unfold Seg52.relationRow3997 at r3997

  unfold Seg52.relationRow3998 at r3998

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX101 rho = seg52In1AccX100 rho + rho 48382 := by
    unfold seg52In1AccX101 seg52In1AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 100]

    ring

  have hnexty : seg52In1AccY101 rho = seg52In1AccY100 rho + rho 48383 := by
    unfold seg52In1AccY101 seg52In1AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 100]

    ring

  have ha0 : (rho 48374 + rho 48375) * (seg52In1AccX100 rho + seg52In1AccY100 rho) = rho 48376 := by
    unfold seg52In1AccX100 seg52In1AccY100
    linear_combination r3986
  have ha1 : rho 48375 * seg52In1AccX100 rho = rho 48377 := by
    unfold seg52In1AccX100
    linear_combination r3987
  have ha2 : rho 48374 * seg52In1AccY100 rho = rho 48378 := by
    unfold seg52In1AccY100
    linear_combination r3988
  have ha3 : 3021 * rho 48377 * rho 48378 = rho 48379 := by
    linear_combination r3989
  have ha4 : rho 48380 * (1 + rho 48379) = rho 48377 + rho 48378 := by
    linear_combination r3990
  have ha5 : rho 48381 * (1 - rho 48379) = rho 48376 - rho 48377 - rho 48378 := by
    linear_combination r3991
  have haddx :
      rho 48380 * (1 + 3021 * (rho 48375 * seg52In1AccX100 rho) * (rho 48374 * seg52In1AccY100 rho)) =
        rho 48375 * seg52In1AccX100 rho + rho 48374 * seg52In1AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48381 * (1 - 3021 * (rho 48375 * seg52In1AccX100 rho) * (rho 48374 * seg52In1AccY100 rho)) =
        (-1) * (rho 48375 * seg52In1AccX100 rho) - rho 48374 * seg52In1AccY100 rho +
          (seg52In1AccY100 rho - seg52In1AccX100 rho * (-1)) * (rho 48374 + rho 48375) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48381 * (1 - rho 48379) = rho 48376 - rho 48377 - rho 48378 := ha5
      _ = (-1) * rho 48377 - rho 48378 + (seg52In1AccY100 rho - seg52In1AccX100 rho * (-1)) *
          (rho 48374 + rho 48375) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX101 rho = seg52In1AccX100 rho - Bool.toZMod bit * (seg52In1AccX100 rho - rho 48380) := by
    have hd : rho 48382 = Bool.toZMod bit * (rho 48380 - seg52In1AccX100 rho) := by
      rw [← hbit]
      unfold seg52In1AccX100
      linear_combination -r3992
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY101 rho = seg52In1AccY100 rho - Bool.toZMod bit * (seg52In1AccY100 rho - rho 48381) := by
    have hd : rho 48383 = Bool.toZMod bit * (rho 48381 - seg52In1AccY100 rho) := by
      rw [← hbit]
      unfold seg52In1AccY100
      linear_combination -r3993
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48374 * rho 48375 = rho 48384 := by linear_combination r3994
  have hd1 : rho 48374 * rho 48374 = rho 48385 := by linear_combination r3995
  have hd2 : rho 48375 * rho 48375 = rho 48386 := by linear_combination r3996
  have hd3 : rho 48387 * (rho 48375 * rho 48375 + rho 48374 * rho 48374 * (-1)) =
      2 * (rho 48374 * rho 48375) := by
    rw [hd0, hd1, hd2]
    linear_combination r3997
  have hd4 : rho 48388 * (2 - (rho 48375 * rho 48375 + rho 48374 * rho 48374 * (-1))) =
      rho 48375 * rho 48375 - rho 48374 * rho 48374 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3998
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 48374, rho 48375⟩
    ⟨rho 48380, rho 48381⟩ ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 48387, rho 48388⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3999 rho ∧ Seg52.relationRow4000 rho ∧ Seg52.relationRow4001 rho ∧ Seg52.relationRow4002 rho ∧ Seg52.relationRow4003 rho ∧ Seg52.relationRow4004 rho ∧ Seg52.relationRow4005 rho ∧ Seg52.relationRow4006 rho ∧ Seg52.relationRow4007 rho ∧ Seg52.relationRow4008 rho ∧ Seg52.relationRow4009 rho ∧ Seg52.relationRow4010 rho ∧ Seg52.relationRow4011 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3999⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3999, r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011⟩

theorem seg52In1_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48387, rho 48388⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 48387, rho 48388⟩
        ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 48400, rho 48401⟩ := by
  obtain ⟨r3999, r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011⟩ := seg52In1_rows101 rho h
  unfold Seg52.relationRow3999 at r3999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3999

  unfold Seg52.relationRow4000 at r4000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4000

  unfold Seg52.relationRow4001 at r4001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4001

  unfold Seg52.relationRow4002 at r4002

  unfold Seg52.relationRow4003 at r4003

  unfold Seg52.relationRow4004 at r4004

  unfold Seg52.relationRow4005 at r4005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4005

  unfold Seg52.relationRow4006 at r4006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006

  unfold Seg52.relationRow4007 at r4007

  unfold Seg52.relationRow4008 at r4008

  unfold Seg52.relationRow4009 at r4009

  unfold Seg52.relationRow4010 at r4010

  unfold Seg52.relationRow4011 at r4011

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX102 rho = seg52In1AccX101 rho + rho 48395 := by
    unfold seg52In1AccX102 seg52In1AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 101]

    ring

  have hnexty : seg52In1AccY102 rho = seg52In1AccY101 rho + rho 48396 := by
    unfold seg52In1AccY102 seg52In1AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 101]

    ring

  have ha0 : (rho 48387 + rho 48388) * (seg52In1AccX101 rho + seg52In1AccY101 rho) = rho 48389 := by
    unfold seg52In1AccX101 seg52In1AccY101
    linear_combination r3999
  have ha1 : rho 48388 * seg52In1AccX101 rho = rho 48390 := by
    unfold seg52In1AccX101
    linear_combination r4000
  have ha2 : rho 48387 * seg52In1AccY101 rho = rho 48391 := by
    unfold seg52In1AccY101
    linear_combination r4001
  have ha3 : 3021 * rho 48390 * rho 48391 = rho 48392 := by
    linear_combination r4002
  have ha4 : rho 48393 * (1 + rho 48392) = rho 48390 + rho 48391 := by
    linear_combination r4003
  have ha5 : rho 48394 * (1 - rho 48392) = rho 48389 - rho 48390 - rho 48391 := by
    linear_combination r4004
  have haddx :
      rho 48393 * (1 + 3021 * (rho 48388 * seg52In1AccX101 rho) * (rho 48387 * seg52In1AccY101 rho)) =
        rho 48388 * seg52In1AccX101 rho + rho 48387 * seg52In1AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48394 * (1 - 3021 * (rho 48388 * seg52In1AccX101 rho) * (rho 48387 * seg52In1AccY101 rho)) =
        (-1) * (rho 48388 * seg52In1AccX101 rho) - rho 48387 * seg52In1AccY101 rho +
          (seg52In1AccY101 rho - seg52In1AccX101 rho * (-1)) * (rho 48387 + rho 48388) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48394 * (1 - rho 48392) = rho 48389 - rho 48390 - rho 48391 := ha5
      _ = (-1) * rho 48390 - rho 48391 + (seg52In1AccY101 rho - seg52In1AccX101 rho * (-1)) *
          (rho 48387 + rho 48388) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX102 rho = seg52In1AccX101 rho - Bool.toZMod bit * (seg52In1AccX101 rho - rho 48393) := by
    have hd : rho 48395 = Bool.toZMod bit * (rho 48393 - seg52In1AccX101 rho) := by
      rw [← hbit]
      unfold seg52In1AccX101
      linear_combination -r4005
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY102 rho = seg52In1AccY101 rho - Bool.toZMod bit * (seg52In1AccY101 rho - rho 48394) := by
    have hd : rho 48396 = Bool.toZMod bit * (rho 48394 - seg52In1AccY101 rho) := by
      rw [← hbit]
      unfold seg52In1AccY101
      linear_combination -r4006
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48387 * rho 48388 = rho 48397 := by linear_combination r4007
  have hd1 : rho 48387 * rho 48387 = rho 48398 := by linear_combination r4008
  have hd2 : rho 48388 * rho 48388 = rho 48399 := by linear_combination r4009
  have hd3 : rho 48400 * (rho 48388 * rho 48388 + rho 48387 * rho 48387 * (-1)) =
      2 * (rho 48387 * rho 48388) := by
    rw [hd0, hd1, hd2]
    linear_combination r4010
  have hd4 : rho 48401 * (2 - (rho 48388 * rho 48388 + rho 48387 * rho 48387 * (-1))) =
      rho 48388 * rho 48388 - rho 48387 * rho 48387 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4011
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 48387, rho 48388⟩
    ⟨rho 48393, rho 48394⟩ ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 48400, rho 48401⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4012 rho ∧ Seg52.relationRow4013 rho ∧ Seg52.relationRow4014 rho ∧ Seg52.relationRow4015 rho ∧ Seg52.relationRow4016 rho ∧ Seg52.relationRow4017 rho ∧ Seg52.relationRow4018 rho ∧ Seg52.relationRow4019 rho ∧ Seg52.relationRow4020 rho ∧ Seg52.relationRow4021 rho ∧ Seg52.relationRow4022 rho ∧ Seg52.relationRow4023 rho ∧ Seg52.relationRow4024 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024⟩

theorem seg52In1_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48400, rho 48401⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 48400, rho 48401⟩
        ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 48413, rho 48414⟩ := by
  obtain ⟨r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024⟩ := seg52In1_rows102 rho h
  unfold Seg52.relationRow4012 at r4012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4012

  unfold Seg52.relationRow4013 at r4013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4013

  unfold Seg52.relationRow4014 at r4014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4014

  unfold Seg52.relationRow4015 at r4015

  unfold Seg52.relationRow4016 at r4016

  unfold Seg52.relationRow4017 at r4017

  unfold Seg52.relationRow4018 at r4018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4018

  unfold Seg52.relationRow4019 at r4019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019

  unfold Seg52.relationRow4020 at r4020

  unfold Seg52.relationRow4021 at r4021

  unfold Seg52.relationRow4022 at r4022

  unfold Seg52.relationRow4023 at r4023

  unfold Seg52.relationRow4024 at r4024

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX103 rho = seg52In1AccX102 rho + rho 48408 := by
    unfold seg52In1AccX103 seg52In1AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 102]

    ring

  have hnexty : seg52In1AccY103 rho = seg52In1AccY102 rho + rho 48409 := by
    unfold seg52In1AccY103 seg52In1AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 102]

    ring

  have ha0 : (rho 48400 + rho 48401) * (seg52In1AccX102 rho + seg52In1AccY102 rho) = rho 48402 := by
    unfold seg52In1AccX102 seg52In1AccY102
    linear_combination r4012
  have ha1 : rho 48401 * seg52In1AccX102 rho = rho 48403 := by
    unfold seg52In1AccX102
    linear_combination r4013
  have ha2 : rho 48400 * seg52In1AccY102 rho = rho 48404 := by
    unfold seg52In1AccY102
    linear_combination r4014
  have ha3 : 3021 * rho 48403 * rho 48404 = rho 48405 := by
    linear_combination r4015
  have ha4 : rho 48406 * (1 + rho 48405) = rho 48403 + rho 48404 := by
    linear_combination r4016
  have ha5 : rho 48407 * (1 - rho 48405) = rho 48402 - rho 48403 - rho 48404 := by
    linear_combination r4017
  have haddx :
      rho 48406 * (1 + 3021 * (rho 48401 * seg52In1AccX102 rho) * (rho 48400 * seg52In1AccY102 rho)) =
        rho 48401 * seg52In1AccX102 rho + rho 48400 * seg52In1AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48407 * (1 - 3021 * (rho 48401 * seg52In1AccX102 rho) * (rho 48400 * seg52In1AccY102 rho)) =
        (-1) * (rho 48401 * seg52In1AccX102 rho) - rho 48400 * seg52In1AccY102 rho +
          (seg52In1AccY102 rho - seg52In1AccX102 rho * (-1)) * (rho 48400 + rho 48401) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48407 * (1 - rho 48405) = rho 48402 - rho 48403 - rho 48404 := ha5
      _ = (-1) * rho 48403 - rho 48404 + (seg52In1AccY102 rho - seg52In1AccX102 rho * (-1)) *
          (rho 48400 + rho 48401) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX103 rho = seg52In1AccX102 rho - Bool.toZMod bit * (seg52In1AccX102 rho - rho 48406) := by
    have hd : rho 48408 = Bool.toZMod bit * (rho 48406 - seg52In1AccX102 rho) := by
      rw [← hbit]
      unfold seg52In1AccX102
      linear_combination -r4018
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY103 rho = seg52In1AccY102 rho - Bool.toZMod bit * (seg52In1AccY102 rho - rho 48407) := by
    have hd : rho 48409 = Bool.toZMod bit * (rho 48407 - seg52In1AccY102 rho) := by
      rw [← hbit]
      unfold seg52In1AccY102
      linear_combination -r4019
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48400 * rho 48401 = rho 48410 := by linear_combination r4020
  have hd1 : rho 48400 * rho 48400 = rho 48411 := by linear_combination r4021
  have hd2 : rho 48401 * rho 48401 = rho 48412 := by linear_combination r4022
  have hd3 : rho 48413 * (rho 48401 * rho 48401 + rho 48400 * rho 48400 * (-1)) =
      2 * (rho 48400 * rho 48401) := by
    rw [hd0, hd1, hd2]
    linear_combination r4023
  have hd4 : rho 48414 * (2 - (rho 48401 * rho 48401 + rho 48400 * rho 48400 * (-1))) =
      rho 48401 * rho 48401 - rho 48400 * rho 48400 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4024
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 48400, rho 48401⟩
    ⟨rho 48406, rho 48407⟩ ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 48413, rho 48414⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4025 rho ∧ Seg52.relationRow4026 rho ∧ Seg52.relationRow4027 rho ∧ Seg52.relationRow4028 rho ∧ Seg52.relationRow4029 rho ∧ Seg52.relationRow4030 rho ∧ Seg52.relationRow4031 rho ∧ Seg52.relationRow4032 rho ∧ Seg52.relationRow4033 rho ∧ Seg52.relationRow4034 rho ∧ Seg52.relationRow4035 rho ∧ Seg52.relationRow4036 rho ∧ Seg52.relationRow4037 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037⟩

theorem seg52In1_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48413, rho 48414⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 48413, rho 48414⟩
        ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 48426, rho 48427⟩ := by
  obtain ⟨r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037⟩ := seg52In1_rows103 rho h
  unfold Seg52.relationRow4025 at r4025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4025

  unfold Seg52.relationRow4026 at r4026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4026

  unfold Seg52.relationRow4027 at r4027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4027

  unfold Seg52.relationRow4028 at r4028

  unfold Seg52.relationRow4029 at r4029

  unfold Seg52.relationRow4030 at r4030

  unfold Seg52.relationRow4031 at r4031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4031

  unfold Seg52.relationRow4032 at r4032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032

  unfold Seg52.relationRow4033 at r4033

  unfold Seg52.relationRow4034 at r4034

  unfold Seg52.relationRow4035 at r4035

  unfold Seg52.relationRow4036 at r4036

  unfold Seg52.relationRow4037 at r4037

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX104 rho = seg52In1AccX103 rho + rho 48421 := by
    unfold seg52In1AccX104 seg52In1AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 103]

    ring

  have hnexty : seg52In1AccY104 rho = seg52In1AccY103 rho + rho 48422 := by
    unfold seg52In1AccY104 seg52In1AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 103]

    ring

  have ha0 : (rho 48413 + rho 48414) * (seg52In1AccX103 rho + seg52In1AccY103 rho) = rho 48415 := by
    unfold seg52In1AccX103 seg52In1AccY103
    linear_combination r4025
  have ha1 : rho 48414 * seg52In1AccX103 rho = rho 48416 := by
    unfold seg52In1AccX103
    linear_combination r4026
  have ha2 : rho 48413 * seg52In1AccY103 rho = rho 48417 := by
    unfold seg52In1AccY103
    linear_combination r4027
  have ha3 : 3021 * rho 48416 * rho 48417 = rho 48418 := by
    linear_combination r4028
  have ha4 : rho 48419 * (1 + rho 48418) = rho 48416 + rho 48417 := by
    linear_combination r4029
  have ha5 : rho 48420 * (1 - rho 48418) = rho 48415 - rho 48416 - rho 48417 := by
    linear_combination r4030
  have haddx :
      rho 48419 * (1 + 3021 * (rho 48414 * seg52In1AccX103 rho) * (rho 48413 * seg52In1AccY103 rho)) =
        rho 48414 * seg52In1AccX103 rho + rho 48413 * seg52In1AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48420 * (1 - 3021 * (rho 48414 * seg52In1AccX103 rho) * (rho 48413 * seg52In1AccY103 rho)) =
        (-1) * (rho 48414 * seg52In1AccX103 rho) - rho 48413 * seg52In1AccY103 rho +
          (seg52In1AccY103 rho - seg52In1AccX103 rho * (-1)) * (rho 48413 + rho 48414) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48420 * (1 - rho 48418) = rho 48415 - rho 48416 - rho 48417 := ha5
      _ = (-1) * rho 48416 - rho 48417 + (seg52In1AccY103 rho - seg52In1AccX103 rho * (-1)) *
          (rho 48413 + rho 48414) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX104 rho = seg52In1AccX103 rho - Bool.toZMod bit * (seg52In1AccX103 rho - rho 48419) := by
    have hd : rho 48421 = Bool.toZMod bit * (rho 48419 - seg52In1AccX103 rho) := by
      rw [← hbit]
      unfold seg52In1AccX103
      linear_combination -r4031
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY104 rho = seg52In1AccY103 rho - Bool.toZMod bit * (seg52In1AccY103 rho - rho 48420) := by
    have hd : rho 48422 = Bool.toZMod bit * (rho 48420 - seg52In1AccY103 rho) := by
      rw [← hbit]
      unfold seg52In1AccY103
      linear_combination -r4032
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48413 * rho 48414 = rho 48423 := by linear_combination r4033
  have hd1 : rho 48413 * rho 48413 = rho 48424 := by linear_combination r4034
  have hd2 : rho 48414 * rho 48414 = rho 48425 := by linear_combination r4035
  have hd3 : rho 48426 * (rho 48414 * rho 48414 + rho 48413 * rho 48413 * (-1)) =
      2 * (rho 48413 * rho 48414) := by
    rw [hd0, hd1, hd2]
    linear_combination r4036
  have hd4 : rho 48427 * (2 - (rho 48414 * rho 48414 + rho 48413 * rho 48413 * (-1))) =
      rho 48414 * rho 48414 - rho 48413 * rho 48413 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4037
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 48413, rho 48414⟩
    ⟨rho 48419, rho 48420⟩ ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 48426, rho 48427⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4038 rho ∧ Seg52.relationRow4039 rho ∧ Seg52.relationRow4040 rho ∧ Seg52.relationRow4041 rho ∧ Seg52.relationRow4042 rho ∧ Seg52.relationRow4043 rho ∧ Seg52.relationRow4044 rho ∧ Seg52.relationRow4045 rho ∧ Seg52.relationRow4046 rho ∧ Seg52.relationRow4047 rho ∧ Seg52.relationRow4048 rho ∧ Seg52.relationRow4049 rho ∧ Seg52.relationRow4050 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050⟩

theorem seg52In1_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48426, rho 48427⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 48426, rho 48427⟩
        ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 48439, rho 48440⟩ := by
  obtain ⟨r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050⟩ := seg52In1_rows104 rho h
  unfold Seg52.relationRow4038 at r4038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4038

  unfold Seg52.relationRow4039 at r4039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4039

  unfold Seg52.relationRow4040 at r4040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4040

  unfold Seg52.relationRow4041 at r4041

  unfold Seg52.relationRow4042 at r4042

  unfold Seg52.relationRow4043 at r4043

  unfold Seg52.relationRow4044 at r4044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4044

  unfold Seg52.relationRow4045 at r4045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045

  unfold Seg52.relationRow4046 at r4046

  unfold Seg52.relationRow4047 at r4047

  unfold Seg52.relationRow4048 at r4048

  unfold Seg52.relationRow4049 at r4049

  unfold Seg52.relationRow4050 at r4050

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX105 rho = seg52In1AccX104 rho + rho 48434 := by
    unfold seg52In1AccX105 seg52In1AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 104]

    ring

  have hnexty : seg52In1AccY105 rho = seg52In1AccY104 rho + rho 48435 := by
    unfold seg52In1AccY105 seg52In1AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 104]

    ring

  have ha0 : (rho 48426 + rho 48427) * (seg52In1AccX104 rho + seg52In1AccY104 rho) = rho 48428 := by
    unfold seg52In1AccX104 seg52In1AccY104
    linear_combination r4038
  have ha1 : rho 48427 * seg52In1AccX104 rho = rho 48429 := by
    unfold seg52In1AccX104
    linear_combination r4039
  have ha2 : rho 48426 * seg52In1AccY104 rho = rho 48430 := by
    unfold seg52In1AccY104
    linear_combination r4040
  have ha3 : 3021 * rho 48429 * rho 48430 = rho 48431 := by
    linear_combination r4041
  have ha4 : rho 48432 * (1 + rho 48431) = rho 48429 + rho 48430 := by
    linear_combination r4042
  have ha5 : rho 48433 * (1 - rho 48431) = rho 48428 - rho 48429 - rho 48430 := by
    linear_combination r4043
  have haddx :
      rho 48432 * (1 + 3021 * (rho 48427 * seg52In1AccX104 rho) * (rho 48426 * seg52In1AccY104 rho)) =
        rho 48427 * seg52In1AccX104 rho + rho 48426 * seg52In1AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48433 * (1 - 3021 * (rho 48427 * seg52In1AccX104 rho) * (rho 48426 * seg52In1AccY104 rho)) =
        (-1) * (rho 48427 * seg52In1AccX104 rho) - rho 48426 * seg52In1AccY104 rho +
          (seg52In1AccY104 rho - seg52In1AccX104 rho * (-1)) * (rho 48426 + rho 48427) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48433 * (1 - rho 48431) = rho 48428 - rho 48429 - rho 48430 := ha5
      _ = (-1) * rho 48429 - rho 48430 + (seg52In1AccY104 rho - seg52In1AccX104 rho * (-1)) *
          (rho 48426 + rho 48427) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX105 rho = seg52In1AccX104 rho - Bool.toZMod bit * (seg52In1AccX104 rho - rho 48432) := by
    have hd : rho 48434 = Bool.toZMod bit * (rho 48432 - seg52In1AccX104 rho) := by
      rw [← hbit]
      unfold seg52In1AccX104
      linear_combination -r4044
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY105 rho = seg52In1AccY104 rho - Bool.toZMod bit * (seg52In1AccY104 rho - rho 48433) := by
    have hd : rho 48435 = Bool.toZMod bit * (rho 48433 - seg52In1AccY104 rho) := by
      rw [← hbit]
      unfold seg52In1AccY104
      linear_combination -r4045
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48426 * rho 48427 = rho 48436 := by linear_combination r4046
  have hd1 : rho 48426 * rho 48426 = rho 48437 := by linear_combination r4047
  have hd2 : rho 48427 * rho 48427 = rho 48438 := by linear_combination r4048
  have hd3 : rho 48439 * (rho 48427 * rho 48427 + rho 48426 * rho 48426 * (-1)) =
      2 * (rho 48426 * rho 48427) := by
    rw [hd0, hd1, hd2]
    linear_combination r4049
  have hd4 : rho 48440 * (2 - (rho 48427 * rho 48427 + rho 48426 * rho 48426 * (-1))) =
      rho 48427 * rho 48427 - rho 48426 * rho 48426 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4050
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 48426, rho 48427⟩
    ⟨rho 48432, rho 48433⟩ ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 48439, rho 48440⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4051 rho ∧ Seg52.relationRow4052 rho ∧ Seg52.relationRow4053 rho ∧ Seg52.relationRow4054 rho ∧ Seg52.relationRow4055 rho ∧ Seg52.relationRow4056 rho ∧ Seg52.relationRow4057 rho ∧ Seg52.relationRow4058 rho ∧ Seg52.relationRow4059 rho ∧ Seg52.relationRow4060 rho ∧ Seg52.relationRow4061 rho ∧ Seg52.relationRow4062 rho ∧ Seg52.relationRow4063 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063⟩

theorem seg52In1_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48439, rho 48440⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 48439, rho 48440⟩
        ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 48452, rho 48453⟩ := by
  obtain ⟨r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063⟩ := seg52In1_rows105 rho h
  unfold Seg52.relationRow4051 at r4051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4051

  unfold Seg52.relationRow4052 at r4052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4052

  unfold Seg52.relationRow4053 at r4053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4053

  unfold Seg52.relationRow4054 at r4054

  unfold Seg52.relationRow4055 at r4055

  unfold Seg52.relationRow4056 at r4056

  unfold Seg52.relationRow4057 at r4057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4057

  unfold Seg52.relationRow4058 at r4058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058

  unfold Seg52.relationRow4059 at r4059

  unfold Seg52.relationRow4060 at r4060

  unfold Seg52.relationRow4061 at r4061

  unfold Seg52.relationRow4062 at r4062

  unfold Seg52.relationRow4063 at r4063

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX106 rho = seg52In1AccX105 rho + rho 48447 := by
    unfold seg52In1AccX106 seg52In1AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 105]

    ring

  have hnexty : seg52In1AccY106 rho = seg52In1AccY105 rho + rho 48448 := by
    unfold seg52In1AccY106 seg52In1AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 105]

    ring

  have ha0 : (rho 48439 + rho 48440) * (seg52In1AccX105 rho + seg52In1AccY105 rho) = rho 48441 := by
    unfold seg52In1AccX105 seg52In1AccY105
    linear_combination r4051
  have ha1 : rho 48440 * seg52In1AccX105 rho = rho 48442 := by
    unfold seg52In1AccX105
    linear_combination r4052
  have ha2 : rho 48439 * seg52In1AccY105 rho = rho 48443 := by
    unfold seg52In1AccY105
    linear_combination r4053
  have ha3 : 3021 * rho 48442 * rho 48443 = rho 48444 := by
    linear_combination r4054
  have ha4 : rho 48445 * (1 + rho 48444) = rho 48442 + rho 48443 := by
    linear_combination r4055
  have ha5 : rho 48446 * (1 - rho 48444) = rho 48441 - rho 48442 - rho 48443 := by
    linear_combination r4056
  have haddx :
      rho 48445 * (1 + 3021 * (rho 48440 * seg52In1AccX105 rho) * (rho 48439 * seg52In1AccY105 rho)) =
        rho 48440 * seg52In1AccX105 rho + rho 48439 * seg52In1AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48446 * (1 - 3021 * (rho 48440 * seg52In1AccX105 rho) * (rho 48439 * seg52In1AccY105 rho)) =
        (-1) * (rho 48440 * seg52In1AccX105 rho) - rho 48439 * seg52In1AccY105 rho +
          (seg52In1AccY105 rho - seg52In1AccX105 rho * (-1)) * (rho 48439 + rho 48440) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48446 * (1 - rho 48444) = rho 48441 - rho 48442 - rho 48443 := ha5
      _ = (-1) * rho 48442 - rho 48443 + (seg52In1AccY105 rho - seg52In1AccX105 rho * (-1)) *
          (rho 48439 + rho 48440) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX106 rho = seg52In1AccX105 rho - Bool.toZMod bit * (seg52In1AccX105 rho - rho 48445) := by
    have hd : rho 48447 = Bool.toZMod bit * (rho 48445 - seg52In1AccX105 rho) := by
      rw [← hbit]
      unfold seg52In1AccX105
      linear_combination -r4057
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY106 rho = seg52In1AccY105 rho - Bool.toZMod bit * (seg52In1AccY105 rho - rho 48446) := by
    have hd : rho 48448 = Bool.toZMod bit * (rho 48446 - seg52In1AccY105 rho) := by
      rw [← hbit]
      unfold seg52In1AccY105
      linear_combination -r4058
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48439 * rho 48440 = rho 48449 := by linear_combination r4059
  have hd1 : rho 48439 * rho 48439 = rho 48450 := by linear_combination r4060
  have hd2 : rho 48440 * rho 48440 = rho 48451 := by linear_combination r4061
  have hd3 : rho 48452 * (rho 48440 * rho 48440 + rho 48439 * rho 48439 * (-1)) =
      2 * (rho 48439 * rho 48440) := by
    rw [hd0, hd1, hd2]
    linear_combination r4062
  have hd4 : rho 48453 * (2 - (rho 48440 * rho 48440 + rho 48439 * rho 48439 * (-1))) =
      rho 48440 * rho 48440 - rho 48439 * rho 48439 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4063
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 48439, rho 48440⟩
    ⟨rho 48445, rho 48446⟩ ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 48452, rho 48453⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4064 rho ∧ Seg52.relationRow4065 rho ∧ Seg52.relationRow4066 rho ∧ Seg52.relationRow4067 rho ∧ Seg52.relationRow4068 rho ∧ Seg52.relationRow4069 rho ∧ Seg52.relationRow4070 rho ∧ Seg52.relationRow4071 rho ∧ Seg52.relationRow4072 rho ∧ Seg52.relationRow4073 rho ∧ Seg52.relationRow4074 rho ∧ Seg52.relationRow4075 rho ∧ Seg52.relationRow4076 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, _, _, _⟩

  exact ⟨r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076⟩

theorem seg52In1_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47060 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48452, rho 48453⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 48452, rho 48453⟩
        ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 48465, rho 48466⟩ := by
  obtain ⟨r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076⟩ := seg52In1_rows106 rho h
  unfold Seg52.relationRow4064 at r4064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4064

  unfold Seg52.relationRow4065 at r4065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4065

  unfold Seg52.relationRow4066 at r4066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4066

  unfold Seg52.relationRow4067 at r4067

  unfold Seg52.relationRow4068 at r4068

  unfold Seg52.relationRow4069 at r4069

  unfold Seg52.relationRow4070 at r4070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4070

  unfold Seg52.relationRow4071 at r4071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071

  unfold Seg52.relationRow4072 at r4072

  unfold Seg52.relationRow4073 at r4073

  unfold Seg52.relationRow4074 at r4074

  unfold Seg52.relationRow4075 at r4075

  unfold Seg52.relationRow4076 at r4076

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX107 rho = seg52In1AccX106 rho + rho 48460 := by
    unfold seg52In1AccX107 seg52In1AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 106]

    ring

  have hnexty : seg52In1AccY107 rho = seg52In1AccY106 rho + rho 48461 := by
    unfold seg52In1AccY107 seg52In1AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 106]

    ring

  have ha0 : (rho 48452 + rho 48453) * (seg52In1AccX106 rho + seg52In1AccY106 rho) = rho 48454 := by
    unfold seg52In1AccX106 seg52In1AccY106
    linear_combination r4064
  have ha1 : rho 48453 * seg52In1AccX106 rho = rho 48455 := by
    unfold seg52In1AccX106
    linear_combination r4065
  have ha2 : rho 48452 * seg52In1AccY106 rho = rho 48456 := by
    unfold seg52In1AccY106
    linear_combination r4066
  have ha3 : 3021 * rho 48455 * rho 48456 = rho 48457 := by
    linear_combination r4067
  have ha4 : rho 48458 * (1 + rho 48457) = rho 48455 + rho 48456 := by
    linear_combination r4068
  have ha5 : rho 48459 * (1 - rho 48457) = rho 48454 - rho 48455 - rho 48456 := by
    linear_combination r4069
  have haddx :
      rho 48458 * (1 + 3021 * (rho 48453 * seg52In1AccX106 rho) * (rho 48452 * seg52In1AccY106 rho)) =
        rho 48453 * seg52In1AccX106 rho + rho 48452 * seg52In1AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48459 * (1 - 3021 * (rho 48453 * seg52In1AccX106 rho) * (rho 48452 * seg52In1AccY106 rho)) =
        (-1) * (rho 48453 * seg52In1AccX106 rho) - rho 48452 * seg52In1AccY106 rho +
          (seg52In1AccY106 rho - seg52In1AccX106 rho * (-1)) * (rho 48452 + rho 48453) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48459 * (1 - rho 48457) = rho 48454 - rho 48455 - rho 48456 := ha5
      _ = (-1) * rho 48455 - rho 48456 + (seg52In1AccY106 rho - seg52In1AccX106 rho * (-1)) *
          (rho 48452 + rho 48453) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX107 rho = seg52In1AccX106 rho - Bool.toZMod bit * (seg52In1AccX106 rho - rho 48458) := by
    have hd : rho 48460 = Bool.toZMod bit * (rho 48458 - seg52In1AccX106 rho) := by
      rw [← hbit]
      unfold seg52In1AccX106
      linear_combination -r4070
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY107 rho = seg52In1AccY106 rho - Bool.toZMod bit * (seg52In1AccY106 rho - rho 48459) := by
    have hd : rho 48461 = Bool.toZMod bit * (rho 48459 - seg52In1AccY106 rho) := by
      rw [← hbit]
      unfold seg52In1AccY106
      linear_combination -r4071
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48452 * rho 48453 = rho 48462 := by linear_combination r4072
  have hd1 : rho 48452 * rho 48452 = rho 48463 := by linear_combination r4073
  have hd2 : rho 48453 * rho 48453 = rho 48464 := by linear_combination r4074
  have hd3 : rho 48465 * (rho 48453 * rho 48453 + rho 48452 * rho 48452 * (-1)) =
      2 * (rho 48452 * rho 48453) := by
    rw [hd0, hd1, hd2]
    linear_combination r4075
  have hd4 : rho 48466 * (2 - (rho 48453 * rho 48453 + rho 48452 * rho 48452 * (-1))) =
      rho 48453 * rho 48453 - rho 48452 * rho 48452 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4076
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 48452, rho 48453⟩
    ⟨rho 48458, rho 48459⟩ ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 48465, rho 48466⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4077 rho ∧ Seg52.relationRow4078 rho ∧ Seg52.relationRow4079 rho ∧ Seg52.relationRow4080 rho ∧ Seg52.relationRow4081 rho ∧ Seg52.relationRow4082 rho ∧ Seg52.relationRow4083 rho ∧ Seg52.relationRow4084 rho ∧ Seg52.relationRow4085 rho ∧ Seg52.relationRow4086 rho ∧ Seg52.relationRow4087 rho ∧ Seg52.relationRow4088 rho ∧ Seg52.relationRow4089 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4077, r4078, r4079⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4077, r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089⟩

theorem seg52In1_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47061 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48465, rho 48466⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 48465, rho 48466⟩
        ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 48478, rho 48479⟩ := by
  obtain ⟨r4077, r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089⟩ := seg52In1_rows107 rho h
  unfold Seg52.relationRow4077 at r4077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4077

  unfold Seg52.relationRow4078 at r4078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4078

  unfold Seg52.relationRow4079 at r4079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4079

  unfold Seg52.relationRow4080 at r4080

  unfold Seg52.relationRow4081 at r4081

  unfold Seg52.relationRow4082 at r4082

  unfold Seg52.relationRow4083 at r4083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4083

  unfold Seg52.relationRow4084 at r4084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084

  unfold Seg52.relationRow4085 at r4085

  unfold Seg52.relationRow4086 at r4086

  unfold Seg52.relationRow4087 at r4087

  unfold Seg52.relationRow4088 at r4088

  unfold Seg52.relationRow4089 at r4089

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX108 rho = seg52In1AccX107 rho + rho 48473 := by
    unfold seg52In1AccX108 seg52In1AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 107]

    ring

  have hnexty : seg52In1AccY108 rho = seg52In1AccY107 rho + rho 48474 := by
    unfold seg52In1AccY108 seg52In1AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 107]

    ring

  have ha0 : (rho 48465 + rho 48466) * (seg52In1AccX107 rho + seg52In1AccY107 rho) = rho 48467 := by
    unfold seg52In1AccX107 seg52In1AccY107
    linear_combination r4077
  have ha1 : rho 48466 * seg52In1AccX107 rho = rho 48468 := by
    unfold seg52In1AccX107
    linear_combination r4078
  have ha2 : rho 48465 * seg52In1AccY107 rho = rho 48469 := by
    unfold seg52In1AccY107
    linear_combination r4079
  have ha3 : 3021 * rho 48468 * rho 48469 = rho 48470 := by
    linear_combination r4080
  have ha4 : rho 48471 * (1 + rho 48470) = rho 48468 + rho 48469 := by
    linear_combination r4081
  have ha5 : rho 48472 * (1 - rho 48470) = rho 48467 - rho 48468 - rho 48469 := by
    linear_combination r4082
  have haddx :
      rho 48471 * (1 + 3021 * (rho 48466 * seg52In1AccX107 rho) * (rho 48465 * seg52In1AccY107 rho)) =
        rho 48466 * seg52In1AccX107 rho + rho 48465 * seg52In1AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48472 * (1 - 3021 * (rho 48466 * seg52In1AccX107 rho) * (rho 48465 * seg52In1AccY107 rho)) =
        (-1) * (rho 48466 * seg52In1AccX107 rho) - rho 48465 * seg52In1AccY107 rho +
          (seg52In1AccY107 rho - seg52In1AccX107 rho * (-1)) * (rho 48465 + rho 48466) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48472 * (1 - rho 48470) = rho 48467 - rho 48468 - rho 48469 := ha5
      _ = (-1) * rho 48468 - rho 48469 + (seg52In1AccY107 rho - seg52In1AccX107 rho * (-1)) *
          (rho 48465 + rho 48466) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX108 rho = seg52In1AccX107 rho - Bool.toZMod bit * (seg52In1AccX107 rho - rho 48471) := by
    have hd : rho 48473 = Bool.toZMod bit * (rho 48471 - seg52In1AccX107 rho) := by
      rw [← hbit]
      unfold seg52In1AccX107
      linear_combination -r4083
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY108 rho = seg52In1AccY107 rho - Bool.toZMod bit * (seg52In1AccY107 rho - rho 48472) := by
    have hd : rho 48474 = Bool.toZMod bit * (rho 48472 - seg52In1AccY107 rho) := by
      rw [← hbit]
      unfold seg52In1AccY107
      linear_combination -r4084
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48465 * rho 48466 = rho 48475 := by linear_combination r4085
  have hd1 : rho 48465 * rho 48465 = rho 48476 := by linear_combination r4086
  have hd2 : rho 48466 * rho 48466 = rho 48477 := by linear_combination r4087
  have hd3 : rho 48478 * (rho 48466 * rho 48466 + rho 48465 * rho 48465 * (-1)) =
      2 * (rho 48465 * rho 48466) := by
    rw [hd0, hd1, hd2]
    linear_combination r4088
  have hd4 : rho 48479 * (2 - (rho 48466 * rho 48466 + rho 48465 * rho 48465 * (-1))) =
      rho 48466 * rho 48466 - rho 48465 * rho 48465 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4089
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 48465, rho 48466⟩
    ⟨rho 48471, rho 48472⟩ ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 48478, rho 48479⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4090 rho ∧ Seg52.relationRow4091 rho ∧ Seg52.relationRow4092 rho ∧ Seg52.relationRow4093 rho ∧ Seg52.relationRow4094 rho ∧ Seg52.relationRow4095 rho ∧ Seg52.relationRow4096 rho ∧ Seg52.relationRow4097 rho ∧ Seg52.relationRow4098 rho ∧ Seg52.relationRow4099 rho ∧ Seg52.relationRow4100 rho ∧ Seg52.relationRow4101 rho ∧ Seg52.relationRow4102 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102⟩

theorem seg52In1_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47062 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48478, rho 48479⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 48478, rho 48479⟩
        ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 48491, rho 48492⟩ := by
  obtain ⟨r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102⟩ := seg52In1_rows108 rho h
  unfold Seg52.relationRow4090 at r4090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4090

  unfold Seg52.relationRow4091 at r4091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4091

  unfold Seg52.relationRow4092 at r4092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4092

  unfold Seg52.relationRow4093 at r4093

  unfold Seg52.relationRow4094 at r4094

  unfold Seg52.relationRow4095 at r4095

  unfold Seg52.relationRow4096 at r4096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4096

  unfold Seg52.relationRow4097 at r4097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097

  unfold Seg52.relationRow4098 at r4098

  unfold Seg52.relationRow4099 at r4099

  unfold Seg52.relationRow4100 at r4100

  unfold Seg52.relationRow4101 at r4101

  unfold Seg52.relationRow4102 at r4102

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX109 rho = seg52In1AccX108 rho + rho 48486 := by
    unfold seg52In1AccX109 seg52In1AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 108]

    ring

  have hnexty : seg52In1AccY109 rho = seg52In1AccY108 rho + rho 48487 := by
    unfold seg52In1AccY109 seg52In1AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 108]

    ring

  have ha0 : (rho 48478 + rho 48479) * (seg52In1AccX108 rho + seg52In1AccY108 rho) = rho 48480 := by
    unfold seg52In1AccX108 seg52In1AccY108
    linear_combination r4090
  have ha1 : rho 48479 * seg52In1AccX108 rho = rho 48481 := by
    unfold seg52In1AccX108
    linear_combination r4091
  have ha2 : rho 48478 * seg52In1AccY108 rho = rho 48482 := by
    unfold seg52In1AccY108
    linear_combination r4092
  have ha3 : 3021 * rho 48481 * rho 48482 = rho 48483 := by
    linear_combination r4093
  have ha4 : rho 48484 * (1 + rho 48483) = rho 48481 + rho 48482 := by
    linear_combination r4094
  have ha5 : rho 48485 * (1 - rho 48483) = rho 48480 - rho 48481 - rho 48482 := by
    linear_combination r4095
  have haddx :
      rho 48484 * (1 + 3021 * (rho 48479 * seg52In1AccX108 rho) * (rho 48478 * seg52In1AccY108 rho)) =
        rho 48479 * seg52In1AccX108 rho + rho 48478 * seg52In1AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48485 * (1 - 3021 * (rho 48479 * seg52In1AccX108 rho) * (rho 48478 * seg52In1AccY108 rho)) =
        (-1) * (rho 48479 * seg52In1AccX108 rho) - rho 48478 * seg52In1AccY108 rho +
          (seg52In1AccY108 rho - seg52In1AccX108 rho * (-1)) * (rho 48478 + rho 48479) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48485 * (1 - rho 48483) = rho 48480 - rho 48481 - rho 48482 := ha5
      _ = (-1) * rho 48481 - rho 48482 + (seg52In1AccY108 rho - seg52In1AccX108 rho * (-1)) *
          (rho 48478 + rho 48479) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX109 rho = seg52In1AccX108 rho - Bool.toZMod bit * (seg52In1AccX108 rho - rho 48484) := by
    have hd : rho 48486 = Bool.toZMod bit * (rho 48484 - seg52In1AccX108 rho) := by
      rw [← hbit]
      unfold seg52In1AccX108
      linear_combination -r4096
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY109 rho = seg52In1AccY108 rho - Bool.toZMod bit * (seg52In1AccY108 rho - rho 48485) := by
    have hd : rho 48487 = Bool.toZMod bit * (rho 48485 - seg52In1AccY108 rho) := by
      rw [← hbit]
      unfold seg52In1AccY108
      linear_combination -r4097
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48478 * rho 48479 = rho 48488 := by linear_combination r4098
  have hd1 : rho 48478 * rho 48478 = rho 48489 := by linear_combination r4099
  have hd2 : rho 48479 * rho 48479 = rho 48490 := by linear_combination r4100
  have hd3 : rho 48491 * (rho 48479 * rho 48479 + rho 48478 * rho 48478 * (-1)) =
      2 * (rho 48478 * rho 48479) := by
    rw [hd0, hd1, hd2]
    linear_combination r4101
  have hd4 : rho 48492 * (2 - (rho 48479 * rho 48479 + rho 48478 * rho 48478 * (-1))) =
      rho 48479 * rho 48479 - rho 48478 * rho 48478 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4102
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 48478, rho 48479⟩
    ⟨rho 48484, rho 48485⟩ ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 48491, rho 48492⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4103 rho ∧ Seg52.relationRow4104 rho ∧ Seg52.relationRow4105 rho ∧ Seg52.relationRow4106 rho ∧ Seg52.relationRow4107 rho ∧ Seg52.relationRow4108 rho ∧ Seg52.relationRow4109 rho ∧ Seg52.relationRow4110 rho ∧ Seg52.relationRow4111 rho ∧ Seg52.relationRow4112 rho ∧ Seg52.relationRow4113 rho ∧ Seg52.relationRow4114 rho ∧ Seg52.relationRow4115 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p51, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115⟩

theorem seg52In1_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47063 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48491, rho 48492⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 48491, rho 48492⟩
        ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 48504, rho 48505⟩ := by
  obtain ⟨r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115⟩ := seg52In1_rows109 rho h
  unfold Seg52.relationRow4103 at r4103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4103

  unfold Seg52.relationRow4104 at r4104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4104

  unfold Seg52.relationRow4105 at r4105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4105

  unfold Seg52.relationRow4106 at r4106

  unfold Seg52.relationRow4107 at r4107

  unfold Seg52.relationRow4108 at r4108

  unfold Seg52.relationRow4109 at r4109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4109

  unfold Seg52.relationRow4110 at r4110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110

  unfold Seg52.relationRow4111 at r4111

  unfold Seg52.relationRow4112 at r4112

  unfold Seg52.relationRow4113 at r4113

  unfold Seg52.relationRow4114 at r4114

  unfold Seg52.relationRow4115 at r4115

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX110 rho = seg52In1AccX109 rho + rho 48499 := by
    unfold seg52In1AccX110 seg52In1AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 109]

    ring

  have hnexty : seg52In1AccY110 rho = seg52In1AccY109 rho + rho 48500 := by
    unfold seg52In1AccY110 seg52In1AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 109]

    ring

  have ha0 : (rho 48491 + rho 48492) * (seg52In1AccX109 rho + seg52In1AccY109 rho) = rho 48493 := by
    unfold seg52In1AccX109 seg52In1AccY109
    linear_combination r4103
  have ha1 : rho 48492 * seg52In1AccX109 rho = rho 48494 := by
    unfold seg52In1AccX109
    linear_combination r4104
  have ha2 : rho 48491 * seg52In1AccY109 rho = rho 48495 := by
    unfold seg52In1AccY109
    linear_combination r4105
  have ha3 : 3021 * rho 48494 * rho 48495 = rho 48496 := by
    linear_combination r4106
  have ha4 : rho 48497 * (1 + rho 48496) = rho 48494 + rho 48495 := by
    linear_combination r4107
  have ha5 : rho 48498 * (1 - rho 48496) = rho 48493 - rho 48494 - rho 48495 := by
    linear_combination r4108
  have haddx :
      rho 48497 * (1 + 3021 * (rho 48492 * seg52In1AccX109 rho) * (rho 48491 * seg52In1AccY109 rho)) =
        rho 48492 * seg52In1AccX109 rho + rho 48491 * seg52In1AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48498 * (1 - 3021 * (rho 48492 * seg52In1AccX109 rho) * (rho 48491 * seg52In1AccY109 rho)) =
        (-1) * (rho 48492 * seg52In1AccX109 rho) - rho 48491 * seg52In1AccY109 rho +
          (seg52In1AccY109 rho - seg52In1AccX109 rho * (-1)) * (rho 48491 + rho 48492) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48498 * (1 - rho 48496) = rho 48493 - rho 48494 - rho 48495 := ha5
      _ = (-1) * rho 48494 - rho 48495 + (seg52In1AccY109 rho - seg52In1AccX109 rho * (-1)) *
          (rho 48491 + rho 48492) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX110 rho = seg52In1AccX109 rho - Bool.toZMod bit * (seg52In1AccX109 rho - rho 48497) := by
    have hd : rho 48499 = Bool.toZMod bit * (rho 48497 - seg52In1AccX109 rho) := by
      rw [← hbit]
      unfold seg52In1AccX109
      linear_combination -r4109
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY110 rho = seg52In1AccY109 rho - Bool.toZMod bit * (seg52In1AccY109 rho - rho 48498) := by
    have hd : rho 48500 = Bool.toZMod bit * (rho 48498 - seg52In1AccY109 rho) := by
      rw [← hbit]
      unfold seg52In1AccY109
      linear_combination -r4110
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48491 * rho 48492 = rho 48501 := by linear_combination r4111
  have hd1 : rho 48491 * rho 48491 = rho 48502 := by linear_combination r4112
  have hd2 : rho 48492 * rho 48492 = rho 48503 := by linear_combination r4113
  have hd3 : rho 48504 * (rho 48492 * rho 48492 + rho 48491 * rho 48491 * (-1)) =
      2 * (rho 48491 * rho 48492) := by
    rw [hd0, hd1, hd2]
    linear_combination r4114
  have hd4 : rho 48505 * (2 - (rho 48492 * rho 48492 + rho 48491 * rho 48491 * (-1))) =
      rho 48492 * rho 48492 - rho 48491 * rho 48491 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4115
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 48491, rho 48492⟩
    ⟨rho 48497, rho 48498⟩ ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 48504, rho 48505⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg52In1_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg52In1_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg52In1_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg52In1_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg52In1_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg52In1_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg52In1_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg52In1_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg52In1_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg52In1_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
