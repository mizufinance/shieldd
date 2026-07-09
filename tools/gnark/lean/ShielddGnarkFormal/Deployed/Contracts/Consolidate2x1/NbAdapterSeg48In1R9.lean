import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3973 rho ∧ Seg48.relationRow3974 rho ∧ Seg48.relationRow3975 rho ∧ Seg48.relationRow3976 rho ∧ Seg48.relationRow3977 rho ∧ Seg48.relationRow3978 rho ∧ Seg48.relationRow3979 rho ∧ Seg48.relationRow3980 rho ∧ Seg48.relationRow3981 rho ∧ Seg48.relationRow3982 rho ∧ Seg48.relationRow3983 rho ∧ Seg48.relationRow3984 rho ∧ Seg48.relationRow3985 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985⟩

theorem seg48In1_rung99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35421 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX99 rho, seg48In1AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36729, rho 36730⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX99 rho, seg48In1AccY99 rho⟩ ⟨rho 36729, rho 36730⟩
        ⟨seg48In1AccX100 rho, seg48In1AccY100 rho⟩ ⟨rho 36742, rho 36743⟩ := by
  obtain ⟨r3973, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985⟩ := seg48In1_rows99 rho h
  unfold Seg48.relationRow3973 at r3973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3973

  unfold Seg48.relationRow3974 at r3974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3974

  unfold Seg48.relationRow3975 at r3975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3975

  unfold Seg48.relationRow3976 at r3976

  unfold Seg48.relationRow3977 at r3977

  unfold Seg48.relationRow3978 at r3978

  unfold Seg48.relationRow3979 at r3979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3979

  unfold Seg48.relationRow3980 at r3980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980

  unfold Seg48.relationRow3981 at r3981

  unfold Seg48.relationRow3982 at r3982

  unfold Seg48.relationRow3983 at r3983

  unfold Seg48.relationRow3984 at r3984

  unfold Seg48.relationRow3985 at r3985

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX100 rho = seg48In1AccX99 rho + rho 36737 := by
    unfold seg48In1AccX100 seg48In1AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 99]

    ring

  have hnexty : seg48In1AccY100 rho = seg48In1AccY99 rho + rho 36738 := by
    unfold seg48In1AccY100 seg48In1AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 99]

    ring

  have ha0 : (rho 36729 + rho 36730) * (seg48In1AccX99 rho + seg48In1AccY99 rho) = rho 36731 := by
    unfold seg48In1AccX99 seg48In1AccY99
    linear_combination r3973
  have ha1 : rho 36730 * seg48In1AccX99 rho = rho 36732 := by
    unfold seg48In1AccX99
    linear_combination r3974
  have ha2 : rho 36729 * seg48In1AccY99 rho = rho 36733 := by
    unfold seg48In1AccY99
    linear_combination r3975
  have ha3 : 3021 * rho 36732 * rho 36733 = rho 36734 := by
    linear_combination r3976
  have ha4 : rho 36735 * (1 + rho 36734) = rho 36732 + rho 36733 := by
    linear_combination r3977
  have ha5 : rho 36736 * (1 - rho 36734) = rho 36731 - rho 36732 - rho 36733 := by
    linear_combination r3978
  have haddx :
      rho 36735 * (1 + 3021 * (rho 36730 * seg48In1AccX99 rho) * (rho 36729 * seg48In1AccY99 rho)) =
        rho 36730 * seg48In1AccX99 rho + rho 36729 * seg48In1AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36736 * (1 - 3021 * (rho 36730 * seg48In1AccX99 rho) * (rho 36729 * seg48In1AccY99 rho)) =
        (-1) * (rho 36730 * seg48In1AccX99 rho) - rho 36729 * seg48In1AccY99 rho +
          (seg48In1AccY99 rho - seg48In1AccX99 rho * (-1)) * (rho 36729 + rho 36730) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36736 * (1 - rho 36734) = rho 36731 - rho 36732 - rho 36733 := ha5
      _ = (-1) * rho 36732 - rho 36733 + (seg48In1AccY99 rho - seg48In1AccX99 rho * (-1)) *
          (rho 36729 + rho 36730) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX100 rho = seg48In1AccX99 rho - Bool.toZMod bit * (seg48In1AccX99 rho - rho 36735) := by
    have hd : rho 36737 = Bool.toZMod bit * (rho 36735 - seg48In1AccX99 rho) := by
      rw [← hbit]
      unfold seg48In1AccX99
      linear_combination -r3979
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY100 rho = seg48In1AccY99 rho - Bool.toZMod bit * (seg48In1AccY99 rho - rho 36736) := by
    have hd : rho 36738 = Bool.toZMod bit * (rho 36736 - seg48In1AccY99 rho) := by
      rw [← hbit]
      unfold seg48In1AccY99
      linear_combination -r3980
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36729 * rho 36730 = rho 36739 := by linear_combination r3981
  have hd1 : rho 36729 * rho 36729 = rho 36740 := by linear_combination r3982
  have hd2 : rho 36730 * rho 36730 = rho 36741 := by linear_combination r3983
  have hd3 : rho 36742 * (rho 36730 * rho 36730 + rho 36729 * rho 36729 * (-1)) =
      2 * (rho 36729 * rho 36730) := by
    rw [hd0, hd1, hd2]
    linear_combination r3984
  have hd4 : rho 36743 * (2 - (rho 36730 * rho 36730 + rho 36729 * rho 36729 * (-1))) =
      rho 36730 * rho 36730 - rho 36729 * rho 36729 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3985
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX99 rho, seg48In1AccY99 rho⟩ ⟨rho 36729, rho 36730⟩
    ⟨rho 36735, rho 36736⟩ ⟨seg48In1AccX100 rho, seg48In1AccY100 rho⟩ ⟨rho 36742, rho 36743⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3986 rho ∧ Seg48.relationRow3987 rho ∧ Seg48.relationRow3988 rho ∧ Seg48.relationRow3989 rho ∧ Seg48.relationRow3990 rho ∧ Seg48.relationRow3991 rho ∧ Seg48.relationRow3992 rho ∧ Seg48.relationRow3993 rho ∧ Seg48.relationRow3994 rho ∧ Seg48.relationRow3995 rho ∧ Seg48.relationRow3996 rho ∧ Seg48.relationRow3997 rho ∧ Seg48.relationRow3998 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, _⟩

  exact ⟨r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998⟩

theorem seg48In1_rung100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35422 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX100 rho, seg48In1AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36742, rho 36743⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX100 rho, seg48In1AccY100 rho⟩ ⟨rho 36742, rho 36743⟩
        ⟨seg48In1AccX101 rho, seg48In1AccY101 rho⟩ ⟨rho 36755, rho 36756⟩ := by
  obtain ⟨r3986, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998⟩ := seg48In1_rows100 rho h
  unfold Seg48.relationRow3986 at r3986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3986

  unfold Seg48.relationRow3987 at r3987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3987

  unfold Seg48.relationRow3988 at r3988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3988

  unfold Seg48.relationRow3989 at r3989

  unfold Seg48.relationRow3990 at r3990

  unfold Seg48.relationRow3991 at r3991

  unfold Seg48.relationRow3992 at r3992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3992

  unfold Seg48.relationRow3993 at r3993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993

  unfold Seg48.relationRow3994 at r3994

  unfold Seg48.relationRow3995 at r3995

  unfold Seg48.relationRow3996 at r3996

  unfold Seg48.relationRow3997 at r3997

  unfold Seg48.relationRow3998 at r3998

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX101 rho = seg48In1AccX100 rho + rho 36750 := by
    unfold seg48In1AccX101 seg48In1AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 100]

    ring

  have hnexty : seg48In1AccY101 rho = seg48In1AccY100 rho + rho 36751 := by
    unfold seg48In1AccY101 seg48In1AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 100]

    ring

  have ha0 : (rho 36742 + rho 36743) * (seg48In1AccX100 rho + seg48In1AccY100 rho) = rho 36744 := by
    unfold seg48In1AccX100 seg48In1AccY100
    linear_combination r3986
  have ha1 : rho 36743 * seg48In1AccX100 rho = rho 36745 := by
    unfold seg48In1AccX100
    linear_combination r3987
  have ha2 : rho 36742 * seg48In1AccY100 rho = rho 36746 := by
    unfold seg48In1AccY100
    linear_combination r3988
  have ha3 : 3021 * rho 36745 * rho 36746 = rho 36747 := by
    linear_combination r3989
  have ha4 : rho 36748 * (1 + rho 36747) = rho 36745 + rho 36746 := by
    linear_combination r3990
  have ha5 : rho 36749 * (1 - rho 36747) = rho 36744 - rho 36745 - rho 36746 := by
    linear_combination r3991
  have haddx :
      rho 36748 * (1 + 3021 * (rho 36743 * seg48In1AccX100 rho) * (rho 36742 * seg48In1AccY100 rho)) =
        rho 36743 * seg48In1AccX100 rho + rho 36742 * seg48In1AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36749 * (1 - 3021 * (rho 36743 * seg48In1AccX100 rho) * (rho 36742 * seg48In1AccY100 rho)) =
        (-1) * (rho 36743 * seg48In1AccX100 rho) - rho 36742 * seg48In1AccY100 rho +
          (seg48In1AccY100 rho - seg48In1AccX100 rho * (-1)) * (rho 36742 + rho 36743) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36749 * (1 - rho 36747) = rho 36744 - rho 36745 - rho 36746 := ha5
      _ = (-1) * rho 36745 - rho 36746 + (seg48In1AccY100 rho - seg48In1AccX100 rho * (-1)) *
          (rho 36742 + rho 36743) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX101 rho = seg48In1AccX100 rho - Bool.toZMod bit * (seg48In1AccX100 rho - rho 36748) := by
    have hd : rho 36750 = Bool.toZMod bit * (rho 36748 - seg48In1AccX100 rho) := by
      rw [← hbit]
      unfold seg48In1AccX100
      linear_combination -r3992
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY101 rho = seg48In1AccY100 rho - Bool.toZMod bit * (seg48In1AccY100 rho - rho 36749) := by
    have hd : rho 36751 = Bool.toZMod bit * (rho 36749 - seg48In1AccY100 rho) := by
      rw [← hbit]
      unfold seg48In1AccY100
      linear_combination -r3993
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36742 * rho 36743 = rho 36752 := by linear_combination r3994
  have hd1 : rho 36742 * rho 36742 = rho 36753 := by linear_combination r3995
  have hd2 : rho 36743 * rho 36743 = rho 36754 := by linear_combination r3996
  have hd3 : rho 36755 * (rho 36743 * rho 36743 + rho 36742 * rho 36742 * (-1)) =
      2 * (rho 36742 * rho 36743) := by
    rw [hd0, hd1, hd2]
    linear_combination r3997
  have hd4 : rho 36756 * (2 - (rho 36743 * rho 36743 + rho 36742 * rho 36742 * (-1))) =
      rho 36743 * rho 36743 - rho 36742 * rho 36742 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3998
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX100 rho, seg48In1AccY100 rho⟩ ⟨rho 36742, rho 36743⟩
    ⟨rho 36748, rho 36749⟩ ⟨seg48In1AccX101 rho, seg48In1AccY101 rho⟩ ⟨rho 36755, rho 36756⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3999 rho ∧ Seg48.relationRow4000 rho ∧ Seg48.relationRow4001 rho ∧ Seg48.relationRow4002 rho ∧ Seg48.relationRow4003 rho ∧ Seg48.relationRow4004 rho ∧ Seg48.relationRow4005 rho ∧ Seg48.relationRow4006 rho ∧ Seg48.relationRow4007 rho ∧ Seg48.relationRow4008 rho ∧ Seg48.relationRow4009 rho ∧ Seg48.relationRow4010 rho ∧ Seg48.relationRow4011 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3999⟩

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3999, r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011⟩

theorem seg48In1_rung101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35423 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX101 rho, seg48In1AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36755, rho 36756⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX101 rho, seg48In1AccY101 rho⟩ ⟨rho 36755, rho 36756⟩
        ⟨seg48In1AccX102 rho, seg48In1AccY102 rho⟩ ⟨rho 36768, rho 36769⟩ := by
  obtain ⟨r3999, r4000, r4001, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011⟩ := seg48In1_rows101 rho h
  unfold Seg48.relationRow3999 at r3999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3999

  unfold Seg48.relationRow4000 at r4000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4000

  unfold Seg48.relationRow4001 at r4001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4001

  unfold Seg48.relationRow4002 at r4002

  unfold Seg48.relationRow4003 at r4003

  unfold Seg48.relationRow4004 at r4004

  unfold Seg48.relationRow4005 at r4005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4005

  unfold Seg48.relationRow4006 at r4006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4006

  unfold Seg48.relationRow4007 at r4007

  unfold Seg48.relationRow4008 at r4008

  unfold Seg48.relationRow4009 at r4009

  unfold Seg48.relationRow4010 at r4010

  unfold Seg48.relationRow4011 at r4011

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX102 rho = seg48In1AccX101 rho + rho 36763 := by
    unfold seg48In1AccX102 seg48In1AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 101]

    ring

  have hnexty : seg48In1AccY102 rho = seg48In1AccY101 rho + rho 36764 := by
    unfold seg48In1AccY102 seg48In1AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 101]

    ring

  have ha0 : (rho 36755 + rho 36756) * (seg48In1AccX101 rho + seg48In1AccY101 rho) = rho 36757 := by
    unfold seg48In1AccX101 seg48In1AccY101
    linear_combination r3999
  have ha1 : rho 36756 * seg48In1AccX101 rho = rho 36758 := by
    unfold seg48In1AccX101
    linear_combination r4000
  have ha2 : rho 36755 * seg48In1AccY101 rho = rho 36759 := by
    unfold seg48In1AccY101
    linear_combination r4001
  have ha3 : 3021 * rho 36758 * rho 36759 = rho 36760 := by
    linear_combination r4002
  have ha4 : rho 36761 * (1 + rho 36760) = rho 36758 + rho 36759 := by
    linear_combination r4003
  have ha5 : rho 36762 * (1 - rho 36760) = rho 36757 - rho 36758 - rho 36759 := by
    linear_combination r4004
  have haddx :
      rho 36761 * (1 + 3021 * (rho 36756 * seg48In1AccX101 rho) * (rho 36755 * seg48In1AccY101 rho)) =
        rho 36756 * seg48In1AccX101 rho + rho 36755 * seg48In1AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36762 * (1 - 3021 * (rho 36756 * seg48In1AccX101 rho) * (rho 36755 * seg48In1AccY101 rho)) =
        (-1) * (rho 36756 * seg48In1AccX101 rho) - rho 36755 * seg48In1AccY101 rho +
          (seg48In1AccY101 rho - seg48In1AccX101 rho * (-1)) * (rho 36755 + rho 36756) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36762 * (1 - rho 36760) = rho 36757 - rho 36758 - rho 36759 := ha5
      _ = (-1) * rho 36758 - rho 36759 + (seg48In1AccY101 rho - seg48In1AccX101 rho * (-1)) *
          (rho 36755 + rho 36756) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX102 rho = seg48In1AccX101 rho - Bool.toZMod bit * (seg48In1AccX101 rho - rho 36761) := by
    have hd : rho 36763 = Bool.toZMod bit * (rho 36761 - seg48In1AccX101 rho) := by
      rw [← hbit]
      unfold seg48In1AccX101
      linear_combination -r4005
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY102 rho = seg48In1AccY101 rho - Bool.toZMod bit * (seg48In1AccY101 rho - rho 36762) := by
    have hd : rho 36764 = Bool.toZMod bit * (rho 36762 - seg48In1AccY101 rho) := by
      rw [← hbit]
      unfold seg48In1AccY101
      linear_combination -r4006
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36755 * rho 36756 = rho 36765 := by linear_combination r4007
  have hd1 : rho 36755 * rho 36755 = rho 36766 := by linear_combination r4008
  have hd2 : rho 36756 * rho 36756 = rho 36767 := by linear_combination r4009
  have hd3 : rho 36768 * (rho 36756 * rho 36756 + rho 36755 * rho 36755 * (-1)) =
      2 * (rho 36755 * rho 36756) := by
    rw [hd0, hd1, hd2]
    linear_combination r4010
  have hd4 : rho 36769 * (2 - (rho 36756 * rho 36756 + rho 36755 * rho 36755 * (-1))) =
      rho 36756 * rho 36756 - rho 36755 * rho 36755 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4011
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX101 rho, seg48In1AccY101 rho⟩ ⟨rho 36755, rho 36756⟩
    ⟨rho 36761, rho 36762⟩ ⟨seg48In1AccX102 rho, seg48In1AccY102 rho⟩ ⟨rho 36768, rho 36769⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4012 rho ∧ Seg48.relationRow4013 rho ∧ Seg48.relationRow4014 rho ∧ Seg48.relationRow4015 rho ∧ Seg48.relationRow4016 rho ∧ Seg48.relationRow4017 rho ∧ Seg48.relationRow4018 rho ∧ Seg48.relationRow4019 rho ∧ Seg48.relationRow4020 rho ∧ Seg48.relationRow4021 rho ∧ Seg48.relationRow4022 rho ∧ Seg48.relationRow4023 rho ∧ Seg48.relationRow4024 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024⟩

theorem seg48In1_rung102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35424 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX102 rho, seg48In1AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36768, rho 36769⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX102 rho, seg48In1AccY102 rho⟩ ⟨rho 36768, rho 36769⟩
        ⟨seg48In1AccX103 rho, seg48In1AccY103 rho⟩ ⟨rho 36781, rho 36782⟩ := by
  obtain ⟨r4012, r4013, r4014, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024⟩ := seg48In1_rows102 rho h
  unfold Seg48.relationRow4012 at r4012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4012

  unfold Seg48.relationRow4013 at r4013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4013

  unfold Seg48.relationRow4014 at r4014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4014

  unfold Seg48.relationRow4015 at r4015

  unfold Seg48.relationRow4016 at r4016

  unfold Seg48.relationRow4017 at r4017

  unfold Seg48.relationRow4018 at r4018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4018

  unfold Seg48.relationRow4019 at r4019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4019

  unfold Seg48.relationRow4020 at r4020

  unfold Seg48.relationRow4021 at r4021

  unfold Seg48.relationRow4022 at r4022

  unfold Seg48.relationRow4023 at r4023

  unfold Seg48.relationRow4024 at r4024

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX103 rho = seg48In1AccX102 rho + rho 36776 := by
    unfold seg48In1AccX103 seg48In1AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 102]

    ring

  have hnexty : seg48In1AccY103 rho = seg48In1AccY102 rho + rho 36777 := by
    unfold seg48In1AccY103 seg48In1AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 102]

    ring

  have ha0 : (rho 36768 + rho 36769) * (seg48In1AccX102 rho + seg48In1AccY102 rho) = rho 36770 := by
    unfold seg48In1AccX102 seg48In1AccY102
    linear_combination r4012
  have ha1 : rho 36769 * seg48In1AccX102 rho = rho 36771 := by
    unfold seg48In1AccX102
    linear_combination r4013
  have ha2 : rho 36768 * seg48In1AccY102 rho = rho 36772 := by
    unfold seg48In1AccY102
    linear_combination r4014
  have ha3 : 3021 * rho 36771 * rho 36772 = rho 36773 := by
    linear_combination r4015
  have ha4 : rho 36774 * (1 + rho 36773) = rho 36771 + rho 36772 := by
    linear_combination r4016
  have ha5 : rho 36775 * (1 - rho 36773) = rho 36770 - rho 36771 - rho 36772 := by
    linear_combination r4017
  have haddx :
      rho 36774 * (1 + 3021 * (rho 36769 * seg48In1AccX102 rho) * (rho 36768 * seg48In1AccY102 rho)) =
        rho 36769 * seg48In1AccX102 rho + rho 36768 * seg48In1AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36775 * (1 - 3021 * (rho 36769 * seg48In1AccX102 rho) * (rho 36768 * seg48In1AccY102 rho)) =
        (-1) * (rho 36769 * seg48In1AccX102 rho) - rho 36768 * seg48In1AccY102 rho +
          (seg48In1AccY102 rho - seg48In1AccX102 rho * (-1)) * (rho 36768 + rho 36769) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36775 * (1 - rho 36773) = rho 36770 - rho 36771 - rho 36772 := ha5
      _ = (-1) * rho 36771 - rho 36772 + (seg48In1AccY102 rho - seg48In1AccX102 rho * (-1)) *
          (rho 36768 + rho 36769) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX103 rho = seg48In1AccX102 rho - Bool.toZMod bit * (seg48In1AccX102 rho - rho 36774) := by
    have hd : rho 36776 = Bool.toZMod bit * (rho 36774 - seg48In1AccX102 rho) := by
      rw [← hbit]
      unfold seg48In1AccX102
      linear_combination -r4018
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY103 rho = seg48In1AccY102 rho - Bool.toZMod bit * (seg48In1AccY102 rho - rho 36775) := by
    have hd : rho 36777 = Bool.toZMod bit * (rho 36775 - seg48In1AccY102 rho) := by
      rw [← hbit]
      unfold seg48In1AccY102
      linear_combination -r4019
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36768 * rho 36769 = rho 36778 := by linear_combination r4020
  have hd1 : rho 36768 * rho 36768 = rho 36779 := by linear_combination r4021
  have hd2 : rho 36769 * rho 36769 = rho 36780 := by linear_combination r4022
  have hd3 : rho 36781 * (rho 36769 * rho 36769 + rho 36768 * rho 36768 * (-1)) =
      2 * (rho 36768 * rho 36769) := by
    rw [hd0, hd1, hd2]
    linear_combination r4023
  have hd4 : rho 36782 * (2 - (rho 36769 * rho 36769 + rho 36768 * rho 36768 * (-1))) =
      rho 36769 * rho 36769 - rho 36768 * rho 36768 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4024
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX102 rho, seg48In1AccY102 rho⟩ ⟨rho 36768, rho 36769⟩
    ⟨rho 36774, rho 36775⟩ ⟨seg48In1AccX103 rho, seg48In1AccY103 rho⟩ ⟨rho 36781, rho 36782⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4025 rho ∧ Seg48.relationRow4026 rho ∧ Seg48.relationRow4027 rho ∧ Seg48.relationRow4028 rho ∧ Seg48.relationRow4029 rho ∧ Seg48.relationRow4030 rho ∧ Seg48.relationRow4031 rho ∧ Seg48.relationRow4032 rho ∧ Seg48.relationRow4033 rho ∧ Seg48.relationRow4034 rho ∧ Seg48.relationRow4035 rho ∧ Seg48.relationRow4036 rho ∧ Seg48.relationRow4037 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037⟩

theorem seg48In1_rung103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35425 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX103 rho, seg48In1AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36781, rho 36782⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX103 rho, seg48In1AccY103 rho⟩ ⟨rho 36781, rho 36782⟩
        ⟨seg48In1AccX104 rho, seg48In1AccY104 rho⟩ ⟨rho 36794, rho 36795⟩ := by
  obtain ⟨r4025, r4026, r4027, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037⟩ := seg48In1_rows103 rho h
  unfold Seg48.relationRow4025 at r4025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4025

  unfold Seg48.relationRow4026 at r4026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4026

  unfold Seg48.relationRow4027 at r4027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4027

  unfold Seg48.relationRow4028 at r4028

  unfold Seg48.relationRow4029 at r4029

  unfold Seg48.relationRow4030 at r4030

  unfold Seg48.relationRow4031 at r4031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4031

  unfold Seg48.relationRow4032 at r4032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4032

  unfold Seg48.relationRow4033 at r4033

  unfold Seg48.relationRow4034 at r4034

  unfold Seg48.relationRow4035 at r4035

  unfold Seg48.relationRow4036 at r4036

  unfold Seg48.relationRow4037 at r4037

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX104 rho = seg48In1AccX103 rho + rho 36789 := by
    unfold seg48In1AccX104 seg48In1AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 103]

    ring

  have hnexty : seg48In1AccY104 rho = seg48In1AccY103 rho + rho 36790 := by
    unfold seg48In1AccY104 seg48In1AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 103]

    ring

  have ha0 : (rho 36781 + rho 36782) * (seg48In1AccX103 rho + seg48In1AccY103 rho) = rho 36783 := by
    unfold seg48In1AccX103 seg48In1AccY103
    linear_combination r4025
  have ha1 : rho 36782 * seg48In1AccX103 rho = rho 36784 := by
    unfold seg48In1AccX103
    linear_combination r4026
  have ha2 : rho 36781 * seg48In1AccY103 rho = rho 36785 := by
    unfold seg48In1AccY103
    linear_combination r4027
  have ha3 : 3021 * rho 36784 * rho 36785 = rho 36786 := by
    linear_combination r4028
  have ha4 : rho 36787 * (1 + rho 36786) = rho 36784 + rho 36785 := by
    linear_combination r4029
  have ha5 : rho 36788 * (1 - rho 36786) = rho 36783 - rho 36784 - rho 36785 := by
    linear_combination r4030
  have haddx :
      rho 36787 * (1 + 3021 * (rho 36782 * seg48In1AccX103 rho) * (rho 36781 * seg48In1AccY103 rho)) =
        rho 36782 * seg48In1AccX103 rho + rho 36781 * seg48In1AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36788 * (1 - 3021 * (rho 36782 * seg48In1AccX103 rho) * (rho 36781 * seg48In1AccY103 rho)) =
        (-1) * (rho 36782 * seg48In1AccX103 rho) - rho 36781 * seg48In1AccY103 rho +
          (seg48In1AccY103 rho - seg48In1AccX103 rho * (-1)) * (rho 36781 + rho 36782) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36788 * (1 - rho 36786) = rho 36783 - rho 36784 - rho 36785 := ha5
      _ = (-1) * rho 36784 - rho 36785 + (seg48In1AccY103 rho - seg48In1AccX103 rho * (-1)) *
          (rho 36781 + rho 36782) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX104 rho = seg48In1AccX103 rho - Bool.toZMod bit * (seg48In1AccX103 rho - rho 36787) := by
    have hd : rho 36789 = Bool.toZMod bit * (rho 36787 - seg48In1AccX103 rho) := by
      rw [← hbit]
      unfold seg48In1AccX103
      linear_combination -r4031
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY104 rho = seg48In1AccY103 rho - Bool.toZMod bit * (seg48In1AccY103 rho - rho 36788) := by
    have hd : rho 36790 = Bool.toZMod bit * (rho 36788 - seg48In1AccY103 rho) := by
      rw [← hbit]
      unfold seg48In1AccY103
      linear_combination -r4032
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36781 * rho 36782 = rho 36791 := by linear_combination r4033
  have hd1 : rho 36781 * rho 36781 = rho 36792 := by linear_combination r4034
  have hd2 : rho 36782 * rho 36782 = rho 36793 := by linear_combination r4035
  have hd3 : rho 36794 * (rho 36782 * rho 36782 + rho 36781 * rho 36781 * (-1)) =
      2 * (rho 36781 * rho 36782) := by
    rw [hd0, hd1, hd2]
    linear_combination r4036
  have hd4 : rho 36795 * (2 - (rho 36782 * rho 36782 + rho 36781 * rho 36781 * (-1))) =
      rho 36782 * rho 36782 - rho 36781 * rho 36781 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4037
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX103 rho, seg48In1AccY103 rho⟩ ⟨rho 36781, rho 36782⟩
    ⟨rho 36787, rho 36788⟩ ⟨seg48In1AccX104 rho, seg48In1AccY104 rho⟩ ⟨rho 36794, rho 36795⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4038 rho ∧ Seg48.relationRow4039 rho ∧ Seg48.relationRow4040 rho ∧ Seg48.relationRow4041 rho ∧ Seg48.relationRow4042 rho ∧ Seg48.relationRow4043 rho ∧ Seg48.relationRow4044 rho ∧ Seg48.relationRow4045 rho ∧ Seg48.relationRow4046 rho ∧ Seg48.relationRow4047 rho ∧ Seg48.relationRow4048 rho ∧ Seg48.relationRow4049 rho ∧ Seg48.relationRow4050 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050⟩

theorem seg48In1_rung104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35426 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX104 rho, seg48In1AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36794, rho 36795⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX104 rho, seg48In1AccY104 rho⟩ ⟨rho 36794, rho 36795⟩
        ⟨seg48In1AccX105 rho, seg48In1AccY105 rho⟩ ⟨rho 36807, rho 36808⟩ := by
  obtain ⟨r4038, r4039, r4040, r4041, r4042, r4043, r4044, r4045, r4046, r4047, r4048, r4049, r4050⟩ := seg48In1_rows104 rho h
  unfold Seg48.relationRow4038 at r4038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4038

  unfold Seg48.relationRow4039 at r4039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4039

  unfold Seg48.relationRow4040 at r4040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4040

  unfold Seg48.relationRow4041 at r4041

  unfold Seg48.relationRow4042 at r4042

  unfold Seg48.relationRow4043 at r4043

  unfold Seg48.relationRow4044 at r4044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4044

  unfold Seg48.relationRow4045 at r4045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4045

  unfold Seg48.relationRow4046 at r4046

  unfold Seg48.relationRow4047 at r4047

  unfold Seg48.relationRow4048 at r4048

  unfold Seg48.relationRow4049 at r4049

  unfold Seg48.relationRow4050 at r4050

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX105 rho = seg48In1AccX104 rho + rho 36802 := by
    unfold seg48In1AccX105 seg48In1AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 104]

    ring

  have hnexty : seg48In1AccY105 rho = seg48In1AccY104 rho + rho 36803 := by
    unfold seg48In1AccY105 seg48In1AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 104]

    ring

  have ha0 : (rho 36794 + rho 36795) * (seg48In1AccX104 rho + seg48In1AccY104 rho) = rho 36796 := by
    unfold seg48In1AccX104 seg48In1AccY104
    linear_combination r4038
  have ha1 : rho 36795 * seg48In1AccX104 rho = rho 36797 := by
    unfold seg48In1AccX104
    linear_combination r4039
  have ha2 : rho 36794 * seg48In1AccY104 rho = rho 36798 := by
    unfold seg48In1AccY104
    linear_combination r4040
  have ha3 : 3021 * rho 36797 * rho 36798 = rho 36799 := by
    linear_combination r4041
  have ha4 : rho 36800 * (1 + rho 36799) = rho 36797 + rho 36798 := by
    linear_combination r4042
  have ha5 : rho 36801 * (1 - rho 36799) = rho 36796 - rho 36797 - rho 36798 := by
    linear_combination r4043
  have haddx :
      rho 36800 * (1 + 3021 * (rho 36795 * seg48In1AccX104 rho) * (rho 36794 * seg48In1AccY104 rho)) =
        rho 36795 * seg48In1AccX104 rho + rho 36794 * seg48In1AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36801 * (1 - 3021 * (rho 36795 * seg48In1AccX104 rho) * (rho 36794 * seg48In1AccY104 rho)) =
        (-1) * (rho 36795 * seg48In1AccX104 rho) - rho 36794 * seg48In1AccY104 rho +
          (seg48In1AccY104 rho - seg48In1AccX104 rho * (-1)) * (rho 36794 + rho 36795) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36801 * (1 - rho 36799) = rho 36796 - rho 36797 - rho 36798 := ha5
      _ = (-1) * rho 36797 - rho 36798 + (seg48In1AccY104 rho - seg48In1AccX104 rho * (-1)) *
          (rho 36794 + rho 36795) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX105 rho = seg48In1AccX104 rho - Bool.toZMod bit * (seg48In1AccX104 rho - rho 36800) := by
    have hd : rho 36802 = Bool.toZMod bit * (rho 36800 - seg48In1AccX104 rho) := by
      rw [← hbit]
      unfold seg48In1AccX104
      linear_combination -r4044
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY105 rho = seg48In1AccY104 rho - Bool.toZMod bit * (seg48In1AccY104 rho - rho 36801) := by
    have hd : rho 36803 = Bool.toZMod bit * (rho 36801 - seg48In1AccY104 rho) := by
      rw [← hbit]
      unfold seg48In1AccY104
      linear_combination -r4045
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36794 * rho 36795 = rho 36804 := by linear_combination r4046
  have hd1 : rho 36794 * rho 36794 = rho 36805 := by linear_combination r4047
  have hd2 : rho 36795 * rho 36795 = rho 36806 := by linear_combination r4048
  have hd3 : rho 36807 * (rho 36795 * rho 36795 + rho 36794 * rho 36794 * (-1)) =
      2 * (rho 36794 * rho 36795) := by
    rw [hd0, hd1, hd2]
    linear_combination r4049
  have hd4 : rho 36808 * (2 - (rho 36795 * rho 36795 + rho 36794 * rho 36794 * (-1))) =
      rho 36795 * rho 36795 - rho 36794 * rho 36794 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4050
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX104 rho, seg48In1AccY104 rho⟩ ⟨rho 36794, rho 36795⟩
    ⟨rho 36800, rho 36801⟩ ⟨seg48In1AccX105 rho, seg48In1AccY105 rho⟩ ⟨rho 36807, rho 36808⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4051 rho ∧ Seg48.relationRow4052 rho ∧ Seg48.relationRow4053 rho ∧ Seg48.relationRow4054 rho ∧ Seg48.relationRow4055 rho ∧ Seg48.relationRow4056 rho ∧ Seg48.relationRow4057 rho ∧ Seg48.relationRow4058 rho ∧ Seg48.relationRow4059 rho ∧ Seg48.relationRow4060 rho ∧ Seg48.relationRow4061 rho ∧ Seg48.relationRow4062 rho ∧ Seg48.relationRow4063 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063⟩

theorem seg48In1_rung105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35427 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX105 rho, seg48In1AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36807, rho 36808⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX105 rho, seg48In1AccY105 rho⟩ ⟨rho 36807, rho 36808⟩
        ⟨seg48In1AccX106 rho, seg48In1AccY106 rho⟩ ⟨rho 36820, rho 36821⟩ := by
  obtain ⟨r4051, r4052, r4053, r4054, r4055, r4056, r4057, r4058, r4059, r4060, r4061, r4062, r4063⟩ := seg48In1_rows105 rho h
  unfold Seg48.relationRow4051 at r4051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4051

  unfold Seg48.relationRow4052 at r4052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4052

  unfold Seg48.relationRow4053 at r4053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4053

  unfold Seg48.relationRow4054 at r4054

  unfold Seg48.relationRow4055 at r4055

  unfold Seg48.relationRow4056 at r4056

  unfold Seg48.relationRow4057 at r4057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4057

  unfold Seg48.relationRow4058 at r4058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4058

  unfold Seg48.relationRow4059 at r4059

  unfold Seg48.relationRow4060 at r4060

  unfold Seg48.relationRow4061 at r4061

  unfold Seg48.relationRow4062 at r4062

  unfold Seg48.relationRow4063 at r4063

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX106 rho = seg48In1AccX105 rho + rho 36815 := by
    unfold seg48In1AccX106 seg48In1AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 105]

    ring

  have hnexty : seg48In1AccY106 rho = seg48In1AccY105 rho + rho 36816 := by
    unfold seg48In1AccY106 seg48In1AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 105]

    ring

  have ha0 : (rho 36807 + rho 36808) * (seg48In1AccX105 rho + seg48In1AccY105 rho) = rho 36809 := by
    unfold seg48In1AccX105 seg48In1AccY105
    linear_combination r4051
  have ha1 : rho 36808 * seg48In1AccX105 rho = rho 36810 := by
    unfold seg48In1AccX105
    linear_combination r4052
  have ha2 : rho 36807 * seg48In1AccY105 rho = rho 36811 := by
    unfold seg48In1AccY105
    linear_combination r4053
  have ha3 : 3021 * rho 36810 * rho 36811 = rho 36812 := by
    linear_combination r4054
  have ha4 : rho 36813 * (1 + rho 36812) = rho 36810 + rho 36811 := by
    linear_combination r4055
  have ha5 : rho 36814 * (1 - rho 36812) = rho 36809 - rho 36810 - rho 36811 := by
    linear_combination r4056
  have haddx :
      rho 36813 * (1 + 3021 * (rho 36808 * seg48In1AccX105 rho) * (rho 36807 * seg48In1AccY105 rho)) =
        rho 36808 * seg48In1AccX105 rho + rho 36807 * seg48In1AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36814 * (1 - 3021 * (rho 36808 * seg48In1AccX105 rho) * (rho 36807 * seg48In1AccY105 rho)) =
        (-1) * (rho 36808 * seg48In1AccX105 rho) - rho 36807 * seg48In1AccY105 rho +
          (seg48In1AccY105 rho - seg48In1AccX105 rho * (-1)) * (rho 36807 + rho 36808) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36814 * (1 - rho 36812) = rho 36809 - rho 36810 - rho 36811 := ha5
      _ = (-1) * rho 36810 - rho 36811 + (seg48In1AccY105 rho - seg48In1AccX105 rho * (-1)) *
          (rho 36807 + rho 36808) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX106 rho = seg48In1AccX105 rho - Bool.toZMod bit * (seg48In1AccX105 rho - rho 36813) := by
    have hd : rho 36815 = Bool.toZMod bit * (rho 36813 - seg48In1AccX105 rho) := by
      rw [← hbit]
      unfold seg48In1AccX105
      linear_combination -r4057
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY106 rho = seg48In1AccY105 rho - Bool.toZMod bit * (seg48In1AccY105 rho - rho 36814) := by
    have hd : rho 36816 = Bool.toZMod bit * (rho 36814 - seg48In1AccY105 rho) := by
      rw [← hbit]
      unfold seg48In1AccY105
      linear_combination -r4058
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36807 * rho 36808 = rho 36817 := by linear_combination r4059
  have hd1 : rho 36807 * rho 36807 = rho 36818 := by linear_combination r4060
  have hd2 : rho 36808 * rho 36808 = rho 36819 := by linear_combination r4061
  have hd3 : rho 36820 * (rho 36808 * rho 36808 + rho 36807 * rho 36807 * (-1)) =
      2 * (rho 36807 * rho 36808) := by
    rw [hd0, hd1, hd2]
    linear_combination r4062
  have hd4 : rho 36821 * (2 - (rho 36808 * rho 36808 + rho 36807 * rho 36807 * (-1))) =
      rho 36808 * rho 36808 - rho 36807 * rho 36807 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4063
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX105 rho, seg48In1AccY105 rho⟩ ⟨rho 36807, rho 36808⟩
    ⟨rho 36813, rho 36814⟩ ⟨seg48In1AccX106 rho, seg48In1AccY106 rho⟩ ⟨rho 36820, rho 36821⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4064 rho ∧ Seg48.relationRow4065 rho ∧ Seg48.relationRow4066 rho ∧ Seg48.relationRow4067 rho ∧ Seg48.relationRow4068 rho ∧ Seg48.relationRow4069 rho ∧ Seg48.relationRow4070 rho ∧ Seg48.relationRow4071 rho ∧ Seg48.relationRow4072 rho ∧ Seg48.relationRow4073 rho ∧ Seg48.relationRow4074 rho ∧ Seg48.relationRow4075 rho ∧ Seg48.relationRow4076 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076, _, _, _⟩

  exact ⟨r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076⟩

theorem seg48In1_rung106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35428 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX106 rho, seg48In1AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36820, rho 36821⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX106 rho, seg48In1AccY106 rho⟩ ⟨rho 36820, rho 36821⟩
        ⟨seg48In1AccX107 rho, seg48In1AccY107 rho⟩ ⟨rho 36833, rho 36834⟩ := by
  obtain ⟨r4064, r4065, r4066, r4067, r4068, r4069, r4070, r4071, r4072, r4073, r4074, r4075, r4076⟩ := seg48In1_rows106 rho h
  unfold Seg48.relationRow4064 at r4064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4064

  unfold Seg48.relationRow4065 at r4065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4065

  unfold Seg48.relationRow4066 at r4066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4066

  unfold Seg48.relationRow4067 at r4067

  unfold Seg48.relationRow4068 at r4068

  unfold Seg48.relationRow4069 at r4069

  unfold Seg48.relationRow4070 at r4070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4070

  unfold Seg48.relationRow4071 at r4071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4071

  unfold Seg48.relationRow4072 at r4072

  unfold Seg48.relationRow4073 at r4073

  unfold Seg48.relationRow4074 at r4074

  unfold Seg48.relationRow4075 at r4075

  unfold Seg48.relationRow4076 at r4076

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX107 rho = seg48In1AccX106 rho + rho 36828 := by
    unfold seg48In1AccX107 seg48In1AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 106]

    ring

  have hnexty : seg48In1AccY107 rho = seg48In1AccY106 rho + rho 36829 := by
    unfold seg48In1AccY107 seg48In1AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 106]

    ring

  have ha0 : (rho 36820 + rho 36821) * (seg48In1AccX106 rho + seg48In1AccY106 rho) = rho 36822 := by
    unfold seg48In1AccX106 seg48In1AccY106
    linear_combination r4064
  have ha1 : rho 36821 * seg48In1AccX106 rho = rho 36823 := by
    unfold seg48In1AccX106
    linear_combination r4065
  have ha2 : rho 36820 * seg48In1AccY106 rho = rho 36824 := by
    unfold seg48In1AccY106
    linear_combination r4066
  have ha3 : 3021 * rho 36823 * rho 36824 = rho 36825 := by
    linear_combination r4067
  have ha4 : rho 36826 * (1 + rho 36825) = rho 36823 + rho 36824 := by
    linear_combination r4068
  have ha5 : rho 36827 * (1 - rho 36825) = rho 36822 - rho 36823 - rho 36824 := by
    linear_combination r4069
  have haddx :
      rho 36826 * (1 + 3021 * (rho 36821 * seg48In1AccX106 rho) * (rho 36820 * seg48In1AccY106 rho)) =
        rho 36821 * seg48In1AccX106 rho + rho 36820 * seg48In1AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36827 * (1 - 3021 * (rho 36821 * seg48In1AccX106 rho) * (rho 36820 * seg48In1AccY106 rho)) =
        (-1) * (rho 36821 * seg48In1AccX106 rho) - rho 36820 * seg48In1AccY106 rho +
          (seg48In1AccY106 rho - seg48In1AccX106 rho * (-1)) * (rho 36820 + rho 36821) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36827 * (1 - rho 36825) = rho 36822 - rho 36823 - rho 36824 := ha5
      _ = (-1) * rho 36823 - rho 36824 + (seg48In1AccY106 rho - seg48In1AccX106 rho * (-1)) *
          (rho 36820 + rho 36821) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX107 rho = seg48In1AccX106 rho - Bool.toZMod bit * (seg48In1AccX106 rho - rho 36826) := by
    have hd : rho 36828 = Bool.toZMod bit * (rho 36826 - seg48In1AccX106 rho) := by
      rw [← hbit]
      unfold seg48In1AccX106
      linear_combination -r4070
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY107 rho = seg48In1AccY106 rho - Bool.toZMod bit * (seg48In1AccY106 rho - rho 36827) := by
    have hd : rho 36829 = Bool.toZMod bit * (rho 36827 - seg48In1AccY106 rho) := by
      rw [← hbit]
      unfold seg48In1AccY106
      linear_combination -r4071
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36820 * rho 36821 = rho 36830 := by linear_combination r4072
  have hd1 : rho 36820 * rho 36820 = rho 36831 := by linear_combination r4073
  have hd2 : rho 36821 * rho 36821 = rho 36832 := by linear_combination r4074
  have hd3 : rho 36833 * (rho 36821 * rho 36821 + rho 36820 * rho 36820 * (-1)) =
      2 * (rho 36820 * rho 36821) := by
    rw [hd0, hd1, hd2]
    linear_combination r4075
  have hd4 : rho 36834 * (2 - (rho 36821 * rho 36821 + rho 36820 * rho 36820 * (-1))) =
      rho 36821 * rho 36821 - rho 36820 * rho 36820 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4076
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX106 rho, seg48In1AccY106 rho⟩ ⟨rho 36820, rho 36821⟩
    ⟨rho 36826, rho 36827⟩ ⟨seg48In1AccX107 rho, seg48In1AccY107 rho⟩ ⟨rho 36833, rho 36834⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4077 rho ∧ Seg48.relationRow4078 rho ∧ Seg48.relationRow4079 rho ∧ Seg48.relationRow4080 rho ∧ Seg48.relationRow4081 rho ∧ Seg48.relationRow4082 rho ∧ Seg48.relationRow4083 rho ∧ Seg48.relationRow4084 rho ∧ Seg48.relationRow4085 rho ∧ Seg48.relationRow4086 rho ∧ Seg48.relationRow4087 rho ∧ Seg48.relationRow4088 rho ∧ Seg48.relationRow4089 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4077, r4078, r4079⟩

  unfold Seg48.relationPart51 at p51

  rcases p51 with ⟨r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4077, r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089⟩

theorem seg48In1_rung107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35429 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX107 rho, seg48In1AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36833, rho 36834⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX107 rho, seg48In1AccY107 rho⟩ ⟨rho 36833, rho 36834⟩
        ⟨seg48In1AccX108 rho, seg48In1AccY108 rho⟩ ⟨rho 36846, rho 36847⟩ := by
  obtain ⟨r4077, r4078, r4079, r4080, r4081, r4082, r4083, r4084, r4085, r4086, r4087, r4088, r4089⟩ := seg48In1_rows107 rho h
  unfold Seg48.relationRow4077 at r4077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4077

  unfold Seg48.relationRow4078 at r4078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4078

  unfold Seg48.relationRow4079 at r4079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4079

  unfold Seg48.relationRow4080 at r4080

  unfold Seg48.relationRow4081 at r4081

  unfold Seg48.relationRow4082 at r4082

  unfold Seg48.relationRow4083 at r4083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4083

  unfold Seg48.relationRow4084 at r4084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4084

  unfold Seg48.relationRow4085 at r4085

  unfold Seg48.relationRow4086 at r4086

  unfold Seg48.relationRow4087 at r4087

  unfold Seg48.relationRow4088 at r4088

  unfold Seg48.relationRow4089 at r4089

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX108 rho = seg48In1AccX107 rho + rho 36841 := by
    unfold seg48In1AccX108 seg48In1AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 107]

    ring

  have hnexty : seg48In1AccY108 rho = seg48In1AccY107 rho + rho 36842 := by
    unfold seg48In1AccY108 seg48In1AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 107]

    ring

  have ha0 : (rho 36833 + rho 36834) * (seg48In1AccX107 rho + seg48In1AccY107 rho) = rho 36835 := by
    unfold seg48In1AccX107 seg48In1AccY107
    linear_combination r4077
  have ha1 : rho 36834 * seg48In1AccX107 rho = rho 36836 := by
    unfold seg48In1AccX107
    linear_combination r4078
  have ha2 : rho 36833 * seg48In1AccY107 rho = rho 36837 := by
    unfold seg48In1AccY107
    linear_combination r4079
  have ha3 : 3021 * rho 36836 * rho 36837 = rho 36838 := by
    linear_combination r4080
  have ha4 : rho 36839 * (1 + rho 36838) = rho 36836 + rho 36837 := by
    linear_combination r4081
  have ha5 : rho 36840 * (1 - rho 36838) = rho 36835 - rho 36836 - rho 36837 := by
    linear_combination r4082
  have haddx :
      rho 36839 * (1 + 3021 * (rho 36834 * seg48In1AccX107 rho) * (rho 36833 * seg48In1AccY107 rho)) =
        rho 36834 * seg48In1AccX107 rho + rho 36833 * seg48In1AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36840 * (1 - 3021 * (rho 36834 * seg48In1AccX107 rho) * (rho 36833 * seg48In1AccY107 rho)) =
        (-1) * (rho 36834 * seg48In1AccX107 rho) - rho 36833 * seg48In1AccY107 rho +
          (seg48In1AccY107 rho - seg48In1AccX107 rho * (-1)) * (rho 36833 + rho 36834) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36840 * (1 - rho 36838) = rho 36835 - rho 36836 - rho 36837 := ha5
      _ = (-1) * rho 36836 - rho 36837 + (seg48In1AccY107 rho - seg48In1AccX107 rho * (-1)) *
          (rho 36833 + rho 36834) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX108 rho = seg48In1AccX107 rho - Bool.toZMod bit * (seg48In1AccX107 rho - rho 36839) := by
    have hd : rho 36841 = Bool.toZMod bit * (rho 36839 - seg48In1AccX107 rho) := by
      rw [← hbit]
      unfold seg48In1AccX107
      linear_combination -r4083
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY108 rho = seg48In1AccY107 rho - Bool.toZMod bit * (seg48In1AccY107 rho - rho 36840) := by
    have hd : rho 36842 = Bool.toZMod bit * (rho 36840 - seg48In1AccY107 rho) := by
      rw [← hbit]
      unfold seg48In1AccY107
      linear_combination -r4084
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36833 * rho 36834 = rho 36843 := by linear_combination r4085
  have hd1 : rho 36833 * rho 36833 = rho 36844 := by linear_combination r4086
  have hd2 : rho 36834 * rho 36834 = rho 36845 := by linear_combination r4087
  have hd3 : rho 36846 * (rho 36834 * rho 36834 + rho 36833 * rho 36833 * (-1)) =
      2 * (rho 36833 * rho 36834) := by
    rw [hd0, hd1, hd2]
    linear_combination r4088
  have hd4 : rho 36847 * (2 - (rho 36834 * rho 36834 + rho 36833 * rho 36833 * (-1))) =
      rho 36834 * rho 36834 - rho 36833 * rho 36833 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4089
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX107 rho, seg48In1AccY107 rho⟩ ⟨rho 36833, rho 36834⟩
    ⟨rho 36839, rho 36840⟩ ⟨seg48In1AccX108 rho, seg48In1AccY108 rho⟩ ⟨rho 36846, rho 36847⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4090 rho ∧ Seg48.relationRow4091 rho ∧ Seg48.relationRow4092 rho ∧ Seg48.relationRow4093 rho ∧ Seg48.relationRow4094 rho ∧ Seg48.relationRow4095 rho ∧ Seg48.relationRow4096 rho ∧ Seg48.relationRow4097 rho ∧ Seg48.relationRow4098 rho ∧ Seg48.relationRow4099 rho ∧ Seg48.relationRow4100 rho ∧ Seg48.relationRow4101 rho ∧ Seg48.relationRow4102 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102⟩

theorem seg48In1_rung108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35430 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX108 rho, seg48In1AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36846, rho 36847⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX108 rho, seg48In1AccY108 rho⟩ ⟨rho 36846, rho 36847⟩
        ⟨seg48In1AccX109 rho, seg48In1AccY109 rho⟩ ⟨rho 36859, rho 36860⟩ := by
  obtain ⟨r4090, r4091, r4092, r4093, r4094, r4095, r4096, r4097, r4098, r4099, r4100, r4101, r4102⟩ := seg48In1_rows108 rho h
  unfold Seg48.relationRow4090 at r4090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4090

  unfold Seg48.relationRow4091 at r4091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4091

  unfold Seg48.relationRow4092 at r4092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4092

  unfold Seg48.relationRow4093 at r4093

  unfold Seg48.relationRow4094 at r4094

  unfold Seg48.relationRow4095 at r4095

  unfold Seg48.relationRow4096 at r4096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4096

  unfold Seg48.relationRow4097 at r4097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4097

  unfold Seg48.relationRow4098 at r4098

  unfold Seg48.relationRow4099 at r4099

  unfold Seg48.relationRow4100 at r4100

  unfold Seg48.relationRow4101 at r4101

  unfold Seg48.relationRow4102 at r4102

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX109 rho = seg48In1AccX108 rho + rho 36854 := by
    unfold seg48In1AccX109 seg48In1AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 108]

    ring

  have hnexty : seg48In1AccY109 rho = seg48In1AccY108 rho + rho 36855 := by
    unfold seg48In1AccY109 seg48In1AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 108]

    ring

  have ha0 : (rho 36846 + rho 36847) * (seg48In1AccX108 rho + seg48In1AccY108 rho) = rho 36848 := by
    unfold seg48In1AccX108 seg48In1AccY108
    linear_combination r4090
  have ha1 : rho 36847 * seg48In1AccX108 rho = rho 36849 := by
    unfold seg48In1AccX108
    linear_combination r4091
  have ha2 : rho 36846 * seg48In1AccY108 rho = rho 36850 := by
    unfold seg48In1AccY108
    linear_combination r4092
  have ha3 : 3021 * rho 36849 * rho 36850 = rho 36851 := by
    linear_combination r4093
  have ha4 : rho 36852 * (1 + rho 36851) = rho 36849 + rho 36850 := by
    linear_combination r4094
  have ha5 : rho 36853 * (1 - rho 36851) = rho 36848 - rho 36849 - rho 36850 := by
    linear_combination r4095
  have haddx :
      rho 36852 * (1 + 3021 * (rho 36847 * seg48In1AccX108 rho) * (rho 36846 * seg48In1AccY108 rho)) =
        rho 36847 * seg48In1AccX108 rho + rho 36846 * seg48In1AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36853 * (1 - 3021 * (rho 36847 * seg48In1AccX108 rho) * (rho 36846 * seg48In1AccY108 rho)) =
        (-1) * (rho 36847 * seg48In1AccX108 rho) - rho 36846 * seg48In1AccY108 rho +
          (seg48In1AccY108 rho - seg48In1AccX108 rho * (-1)) * (rho 36846 + rho 36847) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36853 * (1 - rho 36851) = rho 36848 - rho 36849 - rho 36850 := ha5
      _ = (-1) * rho 36849 - rho 36850 + (seg48In1AccY108 rho - seg48In1AccX108 rho * (-1)) *
          (rho 36846 + rho 36847) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX109 rho = seg48In1AccX108 rho - Bool.toZMod bit * (seg48In1AccX108 rho - rho 36852) := by
    have hd : rho 36854 = Bool.toZMod bit * (rho 36852 - seg48In1AccX108 rho) := by
      rw [← hbit]
      unfold seg48In1AccX108
      linear_combination -r4096
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY109 rho = seg48In1AccY108 rho - Bool.toZMod bit * (seg48In1AccY108 rho - rho 36853) := by
    have hd : rho 36855 = Bool.toZMod bit * (rho 36853 - seg48In1AccY108 rho) := by
      rw [← hbit]
      unfold seg48In1AccY108
      linear_combination -r4097
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36846 * rho 36847 = rho 36856 := by linear_combination r4098
  have hd1 : rho 36846 * rho 36846 = rho 36857 := by linear_combination r4099
  have hd2 : rho 36847 * rho 36847 = rho 36858 := by linear_combination r4100
  have hd3 : rho 36859 * (rho 36847 * rho 36847 + rho 36846 * rho 36846 * (-1)) =
      2 * (rho 36846 * rho 36847) := by
    rw [hd0, hd1, hd2]
    linear_combination r4101
  have hd4 : rho 36860 * (2 - (rho 36847 * rho 36847 + rho 36846 * rho 36846 * (-1))) =
      rho 36847 * rho 36847 - rho 36846 * rho 36846 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4102
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX108 rho, seg48In1AccY108 rho⟩ ⟨rho 36846, rho 36847⟩
    ⟨rho 36852, rho 36853⟩ ⟨seg48In1AccX109 rho, seg48In1AccY109 rho⟩ ⟨rho 36859, rho 36860⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4103 rho ∧ Seg48.relationRow4104 rho ∧ Seg48.relationRow4105 rho ∧ Seg48.relationRow4106 rho ∧ Seg48.relationRow4107 rho ∧ Seg48.relationRow4108 rho ∧ Seg48.relationRow4109 rho ∧ Seg48.relationRow4110 rho ∧ Seg48.relationRow4111 rho ∧ Seg48.relationRow4112 rho ∧ Seg48.relationRow4113 rho ∧ Seg48.relationRow4114 rho ∧ Seg48.relationRow4115 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart51 at p51

  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115⟩

theorem seg48In1_rung109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35431 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX109 rho, seg48In1AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 36859, rho 36860⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX109 rho, seg48In1AccY109 rho⟩ ⟨rho 36859, rho 36860⟩
        ⟨seg48In1AccX110 rho, seg48In1AccY110 rho⟩ ⟨rho 36872, rho 36873⟩ := by
  obtain ⟨r4103, r4104, r4105, r4106, r4107, r4108, r4109, r4110, r4111, r4112, r4113, r4114, r4115⟩ := seg48In1_rows109 rho h
  unfold Seg48.relationRow4103 at r4103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4103

  unfold Seg48.relationRow4104 at r4104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4104

  unfold Seg48.relationRow4105 at r4105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4105

  unfold Seg48.relationRow4106 at r4106

  unfold Seg48.relationRow4107 at r4107

  unfold Seg48.relationRow4108 at r4108

  unfold Seg48.relationRow4109 at r4109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4109

  unfold Seg48.relationRow4110 at r4110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110

  unfold Seg48.relationRow4111 at r4111

  unfold Seg48.relationRow4112 at r4112

  unfold Seg48.relationRow4113 at r4113

  unfold Seg48.relationRow4114 at r4114

  unfold Seg48.relationRow4115 at r4115

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX110 rho = seg48In1AccX109 rho + rho 36867 := by
    unfold seg48In1AccX110 seg48In1AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 109]

    ring

  have hnexty : seg48In1AccY110 rho = seg48In1AccY109 rho + rho 36868 := by
    unfold seg48In1AccY110 seg48In1AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 109]

    ring

  have ha0 : (rho 36859 + rho 36860) * (seg48In1AccX109 rho + seg48In1AccY109 rho) = rho 36861 := by
    unfold seg48In1AccX109 seg48In1AccY109
    linear_combination r4103
  have ha1 : rho 36860 * seg48In1AccX109 rho = rho 36862 := by
    unfold seg48In1AccX109
    linear_combination r4104
  have ha2 : rho 36859 * seg48In1AccY109 rho = rho 36863 := by
    unfold seg48In1AccY109
    linear_combination r4105
  have ha3 : 3021 * rho 36862 * rho 36863 = rho 36864 := by
    linear_combination r4106
  have ha4 : rho 36865 * (1 + rho 36864) = rho 36862 + rho 36863 := by
    linear_combination r4107
  have ha5 : rho 36866 * (1 - rho 36864) = rho 36861 - rho 36862 - rho 36863 := by
    linear_combination r4108
  have haddx :
      rho 36865 * (1 + 3021 * (rho 36860 * seg48In1AccX109 rho) * (rho 36859 * seg48In1AccY109 rho)) =
        rho 36860 * seg48In1AccX109 rho + rho 36859 * seg48In1AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 36866 * (1 - 3021 * (rho 36860 * seg48In1AccX109 rho) * (rho 36859 * seg48In1AccY109 rho)) =
        (-1) * (rho 36860 * seg48In1AccX109 rho) - rho 36859 * seg48In1AccY109 rho +
          (seg48In1AccY109 rho - seg48In1AccX109 rho * (-1)) * (rho 36859 + rho 36860) := by
    rw [ha1, ha2, ha3]
    calc
      rho 36866 * (1 - rho 36864) = rho 36861 - rho 36862 - rho 36863 := ha5
      _ = (-1) * rho 36862 - rho 36863 + (seg48In1AccY109 rho - seg48In1AccX109 rho * (-1)) *
          (rho 36859 + rho 36860) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX110 rho = seg48In1AccX109 rho - Bool.toZMod bit * (seg48In1AccX109 rho - rho 36865) := by
    have hd : rho 36867 = Bool.toZMod bit * (rho 36865 - seg48In1AccX109 rho) := by
      rw [← hbit]
      unfold seg48In1AccX109
      linear_combination -r4109
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY110 rho = seg48In1AccY109 rho - Bool.toZMod bit * (seg48In1AccY109 rho - rho 36866) := by
    have hd : rho 36868 = Bool.toZMod bit * (rho 36866 - seg48In1AccY109 rho) := by
      rw [← hbit]
      unfold seg48In1AccY109
      linear_combination -r4110
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 36859 * rho 36860 = rho 36869 := by linear_combination r4111
  have hd1 : rho 36859 * rho 36859 = rho 36870 := by linear_combination r4112
  have hd2 : rho 36860 * rho 36860 = rho 36871 := by linear_combination r4113
  have hd3 : rho 36872 * (rho 36860 * rho 36860 + rho 36859 * rho 36859 * (-1)) =
      2 * (rho 36859 * rho 36860) := by
    rw [hd0, hd1, hd2]
    linear_combination r4114
  have hd4 : rho 36873 * (2 - (rho 36860 * rho 36860 + rho 36859 * rho 36859 * (-1))) =
      rho 36860 * rho 36860 - rho 36859 * rho 36859 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4115
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX109 rho, seg48In1AccY109 rho⟩ ⟨rho 36859, rho 36860⟩
    ⟨rho 36865, rho 36866⟩ ⟨seg48In1AccX110 rho, seg48In1AccY110 rho⟩ ⟨rho 36872, rho 36873⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c9 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg48In1_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg48In1_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg48In1_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg48In1_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg48In1_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg48In1_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg48In1_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg48In1_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg48In1_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg48In1_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
