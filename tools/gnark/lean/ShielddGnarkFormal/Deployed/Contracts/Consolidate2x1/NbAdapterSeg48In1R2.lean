import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2972 rho ∧ Seg48.relationRow2973 rho ∧ Seg48.relationRow2974 rho ∧ Seg48.relationRow2975 rho ∧ Seg48.relationRow2976 rho ∧ Seg48.relationRow2977 rho ∧ Seg48.relationRow2978 rho ∧ Seg48.relationRow2979 rho ∧ Seg48.relationRow2980 rho ∧ Seg48.relationRow2981 rho ∧ Seg48.relationRow2982 rho ∧ Seg48.relationRow2983 rho ∧ Seg48.relationRow2984 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984⟩

theorem seg48In1_rung22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35344 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX22 rho, seg48In1AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35728, rho 35729⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX22 rho, seg48In1AccY22 rho⟩ ⟨rho 35728, rho 35729⟩
        ⟨seg48In1AccX23 rho, seg48In1AccY23 rho⟩ ⟨rho 35741, rho 35742⟩ := by
  obtain ⟨r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984⟩ := seg48In1_rows22 rho h
  unfold Seg48.relationRow2972 at r2972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2972

  unfold Seg48.relationRow2973 at r2973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2973

  unfold Seg48.relationRow2974 at r2974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2974

  unfold Seg48.relationRow2975 at r2975

  unfold Seg48.relationRow2976 at r2976

  unfold Seg48.relationRow2977 at r2977

  unfold Seg48.relationRow2978 at r2978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2978

  unfold Seg48.relationRow2979 at r2979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2979

  unfold Seg48.relationRow2980 at r2980

  unfold Seg48.relationRow2981 at r2981

  unfold Seg48.relationRow2982 at r2982

  unfold Seg48.relationRow2983 at r2983

  unfold Seg48.relationRow2984 at r2984

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX23 rho = seg48In1AccX22 rho + rho 35736 := by
    unfold seg48In1AccX23 seg48In1AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 22]

    ring

  have hnexty : seg48In1AccY23 rho = seg48In1AccY22 rho + rho 35737 := by
    unfold seg48In1AccY23 seg48In1AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 22]

    ring

  have ha0 : (rho 35728 + rho 35729) * (seg48In1AccX22 rho + seg48In1AccY22 rho) = rho 35730 := by
    unfold seg48In1AccX22 seg48In1AccY22
    linear_combination r2972
  have ha1 : rho 35729 * seg48In1AccX22 rho = rho 35731 := by
    unfold seg48In1AccX22
    linear_combination r2973
  have ha2 : rho 35728 * seg48In1AccY22 rho = rho 35732 := by
    unfold seg48In1AccY22
    linear_combination r2974
  have ha3 : 3021 * rho 35731 * rho 35732 = rho 35733 := by
    linear_combination r2975
  have ha4 : rho 35734 * (1 + rho 35733) = rho 35731 + rho 35732 := by
    linear_combination r2976
  have ha5 : rho 35735 * (1 - rho 35733) = rho 35730 - rho 35731 - rho 35732 := by
    linear_combination r2977
  have haddx :
      rho 35734 * (1 + 3021 * (rho 35729 * seg48In1AccX22 rho) * (rho 35728 * seg48In1AccY22 rho)) =
        rho 35729 * seg48In1AccX22 rho + rho 35728 * seg48In1AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35735 * (1 - 3021 * (rho 35729 * seg48In1AccX22 rho) * (rho 35728 * seg48In1AccY22 rho)) =
        (-1) * (rho 35729 * seg48In1AccX22 rho) - rho 35728 * seg48In1AccY22 rho +
          (seg48In1AccY22 rho - seg48In1AccX22 rho * (-1)) * (rho 35728 + rho 35729) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35735 * (1 - rho 35733) = rho 35730 - rho 35731 - rho 35732 := ha5
      _ = (-1) * rho 35731 - rho 35732 + (seg48In1AccY22 rho - seg48In1AccX22 rho * (-1)) *
          (rho 35728 + rho 35729) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX23 rho = seg48In1AccX22 rho - Bool.toZMod bit * (seg48In1AccX22 rho - rho 35734) := by
    have hd : rho 35736 = Bool.toZMod bit * (rho 35734 - seg48In1AccX22 rho) := by
      rw [← hbit]
      unfold seg48In1AccX22
      linear_combination -r2978
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY23 rho = seg48In1AccY22 rho - Bool.toZMod bit * (seg48In1AccY22 rho - rho 35735) := by
    have hd : rho 35737 = Bool.toZMod bit * (rho 35735 - seg48In1AccY22 rho) := by
      rw [← hbit]
      unfold seg48In1AccY22
      linear_combination -r2979
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35728 * rho 35729 = rho 35738 := by linear_combination r2980
  have hd1 : rho 35728 * rho 35728 = rho 35739 := by linear_combination r2981
  have hd2 : rho 35729 * rho 35729 = rho 35740 := by linear_combination r2982
  have hd3 : rho 35741 * (rho 35729 * rho 35729 + rho 35728 * rho 35728 * (-1)) =
      2 * (rho 35728 * rho 35729) := by
    rw [hd0, hd1, hd2]
    linear_combination r2983
  have hd4 : rho 35742 * (2 - (rho 35729 * rho 35729 + rho 35728 * rho 35728 * (-1))) =
      rho 35729 * rho 35729 - rho 35728 * rho 35728 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2984
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX22 rho, seg48In1AccY22 rho⟩ ⟨rho 35728, rho 35729⟩
    ⟨rho 35734, rho 35735⟩ ⟨seg48In1AccX23 rho, seg48In1AccY23 rho⟩ ⟨rho 35741, rho 35742⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2985 rho ∧ Seg48.relationRow2986 rho ∧ Seg48.relationRow2987 rho ∧ Seg48.relationRow2988 rho ∧ Seg48.relationRow2989 rho ∧ Seg48.relationRow2990 rho ∧ Seg48.relationRow2991 rho ∧ Seg48.relationRow2992 rho ∧ Seg48.relationRow2993 rho ∧ Seg48.relationRow2994 rho ∧ Seg48.relationRow2995 rho ∧ Seg48.relationRow2996 rho ∧ Seg48.relationRow2997 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997⟩

theorem seg48In1_rung23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35345 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX23 rho, seg48In1AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35741, rho 35742⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX23 rho, seg48In1AccY23 rho⟩ ⟨rho 35741, rho 35742⟩
        ⟨seg48In1AccX24 rho, seg48In1AccY24 rho⟩ ⟨rho 35754, rho 35755⟩ := by
  obtain ⟨r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997⟩ := seg48In1_rows23 rho h
  unfold Seg48.relationRow2985 at r2985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2985

  unfold Seg48.relationRow2986 at r2986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2986

  unfold Seg48.relationRow2987 at r2987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2987

  unfold Seg48.relationRow2988 at r2988

  unfold Seg48.relationRow2989 at r2989

  unfold Seg48.relationRow2990 at r2990

  unfold Seg48.relationRow2991 at r2991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2991

  unfold Seg48.relationRow2992 at r2992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2992

  unfold Seg48.relationRow2993 at r2993

  unfold Seg48.relationRow2994 at r2994

  unfold Seg48.relationRow2995 at r2995

  unfold Seg48.relationRow2996 at r2996

  unfold Seg48.relationRow2997 at r2997

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX24 rho = seg48In1AccX23 rho + rho 35749 := by
    unfold seg48In1AccX24 seg48In1AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 23]

    ring

  have hnexty : seg48In1AccY24 rho = seg48In1AccY23 rho + rho 35750 := by
    unfold seg48In1AccY24 seg48In1AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 23]

    ring

  have ha0 : (rho 35741 + rho 35742) * (seg48In1AccX23 rho + seg48In1AccY23 rho) = rho 35743 := by
    unfold seg48In1AccX23 seg48In1AccY23
    linear_combination r2985
  have ha1 : rho 35742 * seg48In1AccX23 rho = rho 35744 := by
    unfold seg48In1AccX23
    linear_combination r2986
  have ha2 : rho 35741 * seg48In1AccY23 rho = rho 35745 := by
    unfold seg48In1AccY23
    linear_combination r2987
  have ha3 : 3021 * rho 35744 * rho 35745 = rho 35746 := by
    linear_combination r2988
  have ha4 : rho 35747 * (1 + rho 35746) = rho 35744 + rho 35745 := by
    linear_combination r2989
  have ha5 : rho 35748 * (1 - rho 35746) = rho 35743 - rho 35744 - rho 35745 := by
    linear_combination r2990
  have haddx :
      rho 35747 * (1 + 3021 * (rho 35742 * seg48In1AccX23 rho) * (rho 35741 * seg48In1AccY23 rho)) =
        rho 35742 * seg48In1AccX23 rho + rho 35741 * seg48In1AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35748 * (1 - 3021 * (rho 35742 * seg48In1AccX23 rho) * (rho 35741 * seg48In1AccY23 rho)) =
        (-1) * (rho 35742 * seg48In1AccX23 rho) - rho 35741 * seg48In1AccY23 rho +
          (seg48In1AccY23 rho - seg48In1AccX23 rho * (-1)) * (rho 35741 + rho 35742) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35748 * (1 - rho 35746) = rho 35743 - rho 35744 - rho 35745 := ha5
      _ = (-1) * rho 35744 - rho 35745 + (seg48In1AccY23 rho - seg48In1AccX23 rho * (-1)) *
          (rho 35741 + rho 35742) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX24 rho = seg48In1AccX23 rho - Bool.toZMod bit * (seg48In1AccX23 rho - rho 35747) := by
    have hd : rho 35749 = Bool.toZMod bit * (rho 35747 - seg48In1AccX23 rho) := by
      rw [← hbit]
      unfold seg48In1AccX23
      linear_combination -r2991
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY24 rho = seg48In1AccY23 rho - Bool.toZMod bit * (seg48In1AccY23 rho - rho 35748) := by
    have hd : rho 35750 = Bool.toZMod bit * (rho 35748 - seg48In1AccY23 rho) := by
      rw [← hbit]
      unfold seg48In1AccY23
      linear_combination -r2992
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35741 * rho 35742 = rho 35751 := by linear_combination r2993
  have hd1 : rho 35741 * rho 35741 = rho 35752 := by linear_combination r2994
  have hd2 : rho 35742 * rho 35742 = rho 35753 := by linear_combination r2995
  have hd3 : rho 35754 * (rho 35742 * rho 35742 + rho 35741 * rho 35741 * (-1)) =
      2 * (rho 35741 * rho 35742) := by
    rw [hd0, hd1, hd2]
    linear_combination r2996
  have hd4 : rho 35755 * (2 - (rho 35742 * rho 35742 + rho 35741 * rho 35741 * (-1))) =
      rho 35742 * rho 35742 - rho 35741 * rho 35741 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2997
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX23 rho, seg48In1AccY23 rho⟩ ⟨rho 35741, rho 35742⟩
    ⟨rho 35747, rho 35748⟩ ⟨seg48In1AccX24 rho, seg48In1AccY24 rho⟩ ⟨rho 35754, rho 35755⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2998 rho ∧ Seg48.relationRow2999 rho ∧ Seg48.relationRow3000 rho ∧ Seg48.relationRow3001 rho ∧ Seg48.relationRow3002 rho ∧ Seg48.relationRow3003 rho ∧ Seg48.relationRow3004 rho ∧ Seg48.relationRow3005 rho ∧ Seg48.relationRow3006 rho ∧ Seg48.relationRow3007 rho ∧ Seg48.relationRow3008 rho ∧ Seg48.relationRow3009 rho ∧ Seg48.relationRow3010 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010⟩

theorem seg48In1_rung24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35346 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX24 rho, seg48In1AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35754, rho 35755⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX24 rho, seg48In1AccY24 rho⟩ ⟨rho 35754, rho 35755⟩
        ⟨seg48In1AccX25 rho, seg48In1AccY25 rho⟩ ⟨rho 35767, rho 35768⟩ := by
  obtain ⟨r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010⟩ := seg48In1_rows24 rho h
  unfold Seg48.relationRow2998 at r2998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2998

  unfold Seg48.relationRow2999 at r2999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2999

  unfold Seg48.relationRow3000 at r3000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3000

  unfold Seg48.relationRow3001 at r3001

  unfold Seg48.relationRow3002 at r3002

  unfold Seg48.relationRow3003 at r3003

  unfold Seg48.relationRow3004 at r3004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3004

  unfold Seg48.relationRow3005 at r3005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3005

  unfold Seg48.relationRow3006 at r3006

  unfold Seg48.relationRow3007 at r3007

  unfold Seg48.relationRow3008 at r3008

  unfold Seg48.relationRow3009 at r3009

  unfold Seg48.relationRow3010 at r3010

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX25 rho = seg48In1AccX24 rho + rho 35762 := by
    unfold seg48In1AccX25 seg48In1AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 24]

    ring

  have hnexty : seg48In1AccY25 rho = seg48In1AccY24 rho + rho 35763 := by
    unfold seg48In1AccY25 seg48In1AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 24]

    ring

  have ha0 : (rho 35754 + rho 35755) * (seg48In1AccX24 rho + seg48In1AccY24 rho) = rho 35756 := by
    unfold seg48In1AccX24 seg48In1AccY24
    linear_combination r2998
  have ha1 : rho 35755 * seg48In1AccX24 rho = rho 35757 := by
    unfold seg48In1AccX24
    linear_combination r2999
  have ha2 : rho 35754 * seg48In1AccY24 rho = rho 35758 := by
    unfold seg48In1AccY24
    linear_combination r3000
  have ha3 : 3021 * rho 35757 * rho 35758 = rho 35759 := by
    linear_combination r3001
  have ha4 : rho 35760 * (1 + rho 35759) = rho 35757 + rho 35758 := by
    linear_combination r3002
  have ha5 : rho 35761 * (1 - rho 35759) = rho 35756 - rho 35757 - rho 35758 := by
    linear_combination r3003
  have haddx :
      rho 35760 * (1 + 3021 * (rho 35755 * seg48In1AccX24 rho) * (rho 35754 * seg48In1AccY24 rho)) =
        rho 35755 * seg48In1AccX24 rho + rho 35754 * seg48In1AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35761 * (1 - 3021 * (rho 35755 * seg48In1AccX24 rho) * (rho 35754 * seg48In1AccY24 rho)) =
        (-1) * (rho 35755 * seg48In1AccX24 rho) - rho 35754 * seg48In1AccY24 rho +
          (seg48In1AccY24 rho - seg48In1AccX24 rho * (-1)) * (rho 35754 + rho 35755) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35761 * (1 - rho 35759) = rho 35756 - rho 35757 - rho 35758 := ha5
      _ = (-1) * rho 35757 - rho 35758 + (seg48In1AccY24 rho - seg48In1AccX24 rho * (-1)) *
          (rho 35754 + rho 35755) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX25 rho = seg48In1AccX24 rho - Bool.toZMod bit * (seg48In1AccX24 rho - rho 35760) := by
    have hd : rho 35762 = Bool.toZMod bit * (rho 35760 - seg48In1AccX24 rho) := by
      rw [← hbit]
      unfold seg48In1AccX24
      linear_combination -r3004
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY25 rho = seg48In1AccY24 rho - Bool.toZMod bit * (seg48In1AccY24 rho - rho 35761) := by
    have hd : rho 35763 = Bool.toZMod bit * (rho 35761 - seg48In1AccY24 rho) := by
      rw [← hbit]
      unfold seg48In1AccY24
      linear_combination -r3005
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35754 * rho 35755 = rho 35764 := by linear_combination r3006
  have hd1 : rho 35754 * rho 35754 = rho 35765 := by linear_combination r3007
  have hd2 : rho 35755 * rho 35755 = rho 35766 := by linear_combination r3008
  have hd3 : rho 35767 * (rho 35755 * rho 35755 + rho 35754 * rho 35754 * (-1)) =
      2 * (rho 35754 * rho 35755) := by
    rw [hd0, hd1, hd2]
    linear_combination r3009
  have hd4 : rho 35768 * (2 - (rho 35755 * rho 35755 + rho 35754 * rho 35754 * (-1))) =
      rho 35755 * rho 35755 - rho 35754 * rho 35754 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3010
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX24 rho, seg48In1AccY24 rho⟩ ⟨rho 35754, rho 35755⟩
    ⟨rho 35760, rho 35761⟩ ⟨seg48In1AccX25 rho, seg48In1AccY25 rho⟩ ⟨rho 35767, rho 35768⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3011 rho ∧ Seg48.relationRow3012 rho ∧ Seg48.relationRow3013 rho ∧ Seg48.relationRow3014 rho ∧ Seg48.relationRow3015 rho ∧ Seg48.relationRow3016 rho ∧ Seg48.relationRow3017 rho ∧ Seg48.relationRow3018 rho ∧ Seg48.relationRow3019 rho ∧ Seg48.relationRow3020 rho ∧ Seg48.relationRow3021 rho ∧ Seg48.relationRow3022 rho ∧ Seg48.relationRow3023 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023⟩

theorem seg48In1_rung25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35347 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX25 rho, seg48In1AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35767, rho 35768⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX25 rho, seg48In1AccY25 rho⟩ ⟨rho 35767, rho 35768⟩
        ⟨seg48In1AccX26 rho, seg48In1AccY26 rho⟩ ⟨rho 35780, rho 35781⟩ := by
  obtain ⟨r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023⟩ := seg48In1_rows25 rho h
  unfold Seg48.relationRow3011 at r3011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3011

  unfold Seg48.relationRow3012 at r3012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3012

  unfold Seg48.relationRow3013 at r3013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3013

  unfold Seg48.relationRow3014 at r3014

  unfold Seg48.relationRow3015 at r3015

  unfold Seg48.relationRow3016 at r3016

  unfold Seg48.relationRow3017 at r3017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3017

  unfold Seg48.relationRow3018 at r3018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3018

  unfold Seg48.relationRow3019 at r3019

  unfold Seg48.relationRow3020 at r3020

  unfold Seg48.relationRow3021 at r3021

  unfold Seg48.relationRow3022 at r3022

  unfold Seg48.relationRow3023 at r3023

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX26 rho = seg48In1AccX25 rho + rho 35775 := by
    unfold seg48In1AccX26 seg48In1AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 25]

    ring

  have hnexty : seg48In1AccY26 rho = seg48In1AccY25 rho + rho 35776 := by
    unfold seg48In1AccY26 seg48In1AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 25]

    ring

  have ha0 : (rho 35767 + rho 35768) * (seg48In1AccX25 rho + seg48In1AccY25 rho) = rho 35769 := by
    unfold seg48In1AccX25 seg48In1AccY25
    linear_combination r3011
  have ha1 : rho 35768 * seg48In1AccX25 rho = rho 35770 := by
    unfold seg48In1AccX25
    linear_combination r3012
  have ha2 : rho 35767 * seg48In1AccY25 rho = rho 35771 := by
    unfold seg48In1AccY25
    linear_combination r3013
  have ha3 : 3021 * rho 35770 * rho 35771 = rho 35772 := by
    linear_combination r3014
  have ha4 : rho 35773 * (1 + rho 35772) = rho 35770 + rho 35771 := by
    linear_combination r3015
  have ha5 : rho 35774 * (1 - rho 35772) = rho 35769 - rho 35770 - rho 35771 := by
    linear_combination r3016
  have haddx :
      rho 35773 * (1 + 3021 * (rho 35768 * seg48In1AccX25 rho) * (rho 35767 * seg48In1AccY25 rho)) =
        rho 35768 * seg48In1AccX25 rho + rho 35767 * seg48In1AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35774 * (1 - 3021 * (rho 35768 * seg48In1AccX25 rho) * (rho 35767 * seg48In1AccY25 rho)) =
        (-1) * (rho 35768 * seg48In1AccX25 rho) - rho 35767 * seg48In1AccY25 rho +
          (seg48In1AccY25 rho - seg48In1AccX25 rho * (-1)) * (rho 35767 + rho 35768) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35774 * (1 - rho 35772) = rho 35769 - rho 35770 - rho 35771 := ha5
      _ = (-1) * rho 35770 - rho 35771 + (seg48In1AccY25 rho - seg48In1AccX25 rho * (-1)) *
          (rho 35767 + rho 35768) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX26 rho = seg48In1AccX25 rho - Bool.toZMod bit * (seg48In1AccX25 rho - rho 35773) := by
    have hd : rho 35775 = Bool.toZMod bit * (rho 35773 - seg48In1AccX25 rho) := by
      rw [← hbit]
      unfold seg48In1AccX25
      linear_combination -r3017
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY26 rho = seg48In1AccY25 rho - Bool.toZMod bit * (seg48In1AccY25 rho - rho 35774) := by
    have hd : rho 35776 = Bool.toZMod bit * (rho 35774 - seg48In1AccY25 rho) := by
      rw [← hbit]
      unfold seg48In1AccY25
      linear_combination -r3018
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35767 * rho 35768 = rho 35777 := by linear_combination r3019
  have hd1 : rho 35767 * rho 35767 = rho 35778 := by linear_combination r3020
  have hd2 : rho 35768 * rho 35768 = rho 35779 := by linear_combination r3021
  have hd3 : rho 35780 * (rho 35768 * rho 35768 + rho 35767 * rho 35767 * (-1)) =
      2 * (rho 35767 * rho 35768) := by
    rw [hd0, hd1, hd2]
    linear_combination r3022
  have hd4 : rho 35781 * (2 - (rho 35768 * rho 35768 + rho 35767 * rho 35767 * (-1))) =
      rho 35768 * rho 35768 - rho 35767 * rho 35767 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3023
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX25 rho, seg48In1AccY25 rho⟩ ⟨rho 35767, rho 35768⟩
    ⟨rho 35773, rho 35774⟩ ⟨seg48In1AccX26 rho, seg48In1AccY26 rho⟩ ⟨rho 35780, rho 35781⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3024 rho ∧ Seg48.relationRow3025 rho ∧ Seg48.relationRow3026 rho ∧ Seg48.relationRow3027 rho ∧ Seg48.relationRow3028 rho ∧ Seg48.relationRow3029 rho ∧ Seg48.relationRow3030 rho ∧ Seg48.relationRow3031 rho ∧ Seg48.relationRow3032 rho ∧ Seg48.relationRow3033 rho ∧ Seg48.relationRow3034 rho ∧ Seg48.relationRow3035 rho ∧ Seg48.relationRow3036 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, _, _, _⟩

  exact ⟨r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036⟩

theorem seg48In1_rung26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35348 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX26 rho, seg48In1AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35780, rho 35781⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX26 rho, seg48In1AccY26 rho⟩ ⟨rho 35780, rho 35781⟩
        ⟨seg48In1AccX27 rho, seg48In1AccY27 rho⟩ ⟨rho 35793, rho 35794⟩ := by
  obtain ⟨r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036⟩ := seg48In1_rows26 rho h
  unfold Seg48.relationRow3024 at r3024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3024

  unfold Seg48.relationRow3025 at r3025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3025

  unfold Seg48.relationRow3026 at r3026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3026

  unfold Seg48.relationRow3027 at r3027

  unfold Seg48.relationRow3028 at r3028

  unfold Seg48.relationRow3029 at r3029

  unfold Seg48.relationRow3030 at r3030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3030

  unfold Seg48.relationRow3031 at r3031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3031

  unfold Seg48.relationRow3032 at r3032

  unfold Seg48.relationRow3033 at r3033

  unfold Seg48.relationRow3034 at r3034

  unfold Seg48.relationRow3035 at r3035

  unfold Seg48.relationRow3036 at r3036

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX27 rho = seg48In1AccX26 rho + rho 35788 := by
    unfold seg48In1AccX27 seg48In1AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 26]

    ring

  have hnexty : seg48In1AccY27 rho = seg48In1AccY26 rho + rho 35789 := by
    unfold seg48In1AccY27 seg48In1AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 26]

    ring

  have ha0 : (rho 35780 + rho 35781) * (seg48In1AccX26 rho + seg48In1AccY26 rho) = rho 35782 := by
    unfold seg48In1AccX26 seg48In1AccY26
    linear_combination r3024
  have ha1 : rho 35781 * seg48In1AccX26 rho = rho 35783 := by
    unfold seg48In1AccX26
    linear_combination r3025
  have ha2 : rho 35780 * seg48In1AccY26 rho = rho 35784 := by
    unfold seg48In1AccY26
    linear_combination r3026
  have ha3 : 3021 * rho 35783 * rho 35784 = rho 35785 := by
    linear_combination r3027
  have ha4 : rho 35786 * (1 + rho 35785) = rho 35783 + rho 35784 := by
    linear_combination r3028
  have ha5 : rho 35787 * (1 - rho 35785) = rho 35782 - rho 35783 - rho 35784 := by
    linear_combination r3029
  have haddx :
      rho 35786 * (1 + 3021 * (rho 35781 * seg48In1AccX26 rho) * (rho 35780 * seg48In1AccY26 rho)) =
        rho 35781 * seg48In1AccX26 rho + rho 35780 * seg48In1AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35787 * (1 - 3021 * (rho 35781 * seg48In1AccX26 rho) * (rho 35780 * seg48In1AccY26 rho)) =
        (-1) * (rho 35781 * seg48In1AccX26 rho) - rho 35780 * seg48In1AccY26 rho +
          (seg48In1AccY26 rho - seg48In1AccX26 rho * (-1)) * (rho 35780 + rho 35781) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35787 * (1 - rho 35785) = rho 35782 - rho 35783 - rho 35784 := ha5
      _ = (-1) * rho 35783 - rho 35784 + (seg48In1AccY26 rho - seg48In1AccX26 rho * (-1)) *
          (rho 35780 + rho 35781) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX27 rho = seg48In1AccX26 rho - Bool.toZMod bit * (seg48In1AccX26 rho - rho 35786) := by
    have hd : rho 35788 = Bool.toZMod bit * (rho 35786 - seg48In1AccX26 rho) := by
      rw [← hbit]
      unfold seg48In1AccX26
      linear_combination -r3030
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY27 rho = seg48In1AccY26 rho - Bool.toZMod bit * (seg48In1AccY26 rho - rho 35787) := by
    have hd : rho 35789 = Bool.toZMod bit * (rho 35787 - seg48In1AccY26 rho) := by
      rw [← hbit]
      unfold seg48In1AccY26
      linear_combination -r3031
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35780 * rho 35781 = rho 35790 := by linear_combination r3032
  have hd1 : rho 35780 * rho 35780 = rho 35791 := by linear_combination r3033
  have hd2 : rho 35781 * rho 35781 = rho 35792 := by linear_combination r3034
  have hd3 : rho 35793 * (rho 35781 * rho 35781 + rho 35780 * rho 35780 * (-1)) =
      2 * (rho 35780 * rho 35781) := by
    rw [hd0, hd1, hd2]
    linear_combination r3035
  have hd4 : rho 35794 * (2 - (rho 35781 * rho 35781 + rho 35780 * rho 35780 * (-1))) =
      rho 35781 * rho 35781 - rho 35780 * rho 35780 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3036
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX26 rho, seg48In1AccY26 rho⟩ ⟨rho 35780, rho 35781⟩
    ⟨rho 35786, rho 35787⟩ ⟨seg48In1AccX27 rho, seg48In1AccY27 rho⟩ ⟨rho 35793, rho 35794⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3037 rho ∧ Seg48.relationRow3038 rho ∧ Seg48.relationRow3039 rho ∧ Seg48.relationRow3040 rho ∧ Seg48.relationRow3041 rho ∧ Seg48.relationRow3042 rho ∧ Seg48.relationRow3043 rho ∧ Seg48.relationRow3044 rho ∧ Seg48.relationRow3045 rho ∧ Seg48.relationRow3046 rho ∧ Seg48.relationRow3047 rho ∧ Seg48.relationRow3048 rho ∧ Seg48.relationRow3049 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p37, p38, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3037, r3038, r3039⟩

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3037, r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049⟩

theorem seg48In1_rung27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35349 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX27 rho, seg48In1AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35793, rho 35794⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX27 rho, seg48In1AccY27 rho⟩ ⟨rho 35793, rho 35794⟩
        ⟨seg48In1AccX28 rho, seg48In1AccY28 rho⟩ ⟨rho 35806, rho 35807⟩ := by
  obtain ⟨r3037, r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049⟩ := seg48In1_rows27 rho h
  unfold Seg48.relationRow3037 at r3037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3037

  unfold Seg48.relationRow3038 at r3038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3038

  unfold Seg48.relationRow3039 at r3039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3039

  unfold Seg48.relationRow3040 at r3040

  unfold Seg48.relationRow3041 at r3041

  unfold Seg48.relationRow3042 at r3042

  unfold Seg48.relationRow3043 at r3043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3043

  unfold Seg48.relationRow3044 at r3044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3044

  unfold Seg48.relationRow3045 at r3045

  unfold Seg48.relationRow3046 at r3046

  unfold Seg48.relationRow3047 at r3047

  unfold Seg48.relationRow3048 at r3048

  unfold Seg48.relationRow3049 at r3049

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX28 rho = seg48In1AccX27 rho + rho 35801 := by
    unfold seg48In1AccX28 seg48In1AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 27]

    ring

  have hnexty : seg48In1AccY28 rho = seg48In1AccY27 rho + rho 35802 := by
    unfold seg48In1AccY28 seg48In1AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 27]

    ring

  have ha0 : (rho 35793 + rho 35794) * (seg48In1AccX27 rho + seg48In1AccY27 rho) = rho 35795 := by
    unfold seg48In1AccX27 seg48In1AccY27
    linear_combination r3037
  have ha1 : rho 35794 * seg48In1AccX27 rho = rho 35796 := by
    unfold seg48In1AccX27
    linear_combination r3038
  have ha2 : rho 35793 * seg48In1AccY27 rho = rho 35797 := by
    unfold seg48In1AccY27
    linear_combination r3039
  have ha3 : 3021 * rho 35796 * rho 35797 = rho 35798 := by
    linear_combination r3040
  have ha4 : rho 35799 * (1 + rho 35798) = rho 35796 + rho 35797 := by
    linear_combination r3041
  have ha5 : rho 35800 * (1 - rho 35798) = rho 35795 - rho 35796 - rho 35797 := by
    linear_combination r3042
  have haddx :
      rho 35799 * (1 + 3021 * (rho 35794 * seg48In1AccX27 rho) * (rho 35793 * seg48In1AccY27 rho)) =
        rho 35794 * seg48In1AccX27 rho + rho 35793 * seg48In1AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35800 * (1 - 3021 * (rho 35794 * seg48In1AccX27 rho) * (rho 35793 * seg48In1AccY27 rho)) =
        (-1) * (rho 35794 * seg48In1AccX27 rho) - rho 35793 * seg48In1AccY27 rho +
          (seg48In1AccY27 rho - seg48In1AccX27 rho * (-1)) * (rho 35793 + rho 35794) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35800 * (1 - rho 35798) = rho 35795 - rho 35796 - rho 35797 := ha5
      _ = (-1) * rho 35796 - rho 35797 + (seg48In1AccY27 rho - seg48In1AccX27 rho * (-1)) *
          (rho 35793 + rho 35794) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX28 rho = seg48In1AccX27 rho - Bool.toZMod bit * (seg48In1AccX27 rho - rho 35799) := by
    have hd : rho 35801 = Bool.toZMod bit * (rho 35799 - seg48In1AccX27 rho) := by
      rw [← hbit]
      unfold seg48In1AccX27
      linear_combination -r3043
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY28 rho = seg48In1AccY27 rho - Bool.toZMod bit * (seg48In1AccY27 rho - rho 35800) := by
    have hd : rho 35802 = Bool.toZMod bit * (rho 35800 - seg48In1AccY27 rho) := by
      rw [← hbit]
      unfold seg48In1AccY27
      linear_combination -r3044
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35793 * rho 35794 = rho 35803 := by linear_combination r3045
  have hd1 : rho 35793 * rho 35793 = rho 35804 := by linear_combination r3046
  have hd2 : rho 35794 * rho 35794 = rho 35805 := by linear_combination r3047
  have hd3 : rho 35806 * (rho 35794 * rho 35794 + rho 35793 * rho 35793 * (-1)) =
      2 * (rho 35793 * rho 35794) := by
    rw [hd0, hd1, hd2]
    linear_combination r3048
  have hd4 : rho 35807 * (2 - (rho 35794 * rho 35794 + rho 35793 * rho 35793 * (-1))) =
      rho 35794 * rho 35794 - rho 35793 * rho 35793 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3049
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX27 rho, seg48In1AccY27 rho⟩ ⟨rho 35793, rho 35794⟩
    ⟨rho 35799, rho 35800⟩ ⟨seg48In1AccX28 rho, seg48In1AccY28 rho⟩ ⟨rho 35806, rho 35807⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3050 rho ∧ Seg48.relationRow3051 rho ∧ Seg48.relationRow3052 rho ∧ Seg48.relationRow3053 rho ∧ Seg48.relationRow3054 rho ∧ Seg48.relationRow3055 rho ∧ Seg48.relationRow3056 rho ∧ Seg48.relationRow3057 rho ∧ Seg48.relationRow3058 rho ∧ Seg48.relationRow3059 rho ∧ Seg48.relationRow3060 rho ∧ Seg48.relationRow3061 rho ∧ Seg48.relationRow3062 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p38, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062⟩

theorem seg48In1_rung28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35350 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX28 rho, seg48In1AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35806, rho 35807⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX28 rho, seg48In1AccY28 rho⟩ ⟨rho 35806, rho 35807⟩
        ⟨seg48In1AccX29 rho, seg48In1AccY29 rho⟩ ⟨rho 35819, rho 35820⟩ := by
  obtain ⟨r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062⟩ := seg48In1_rows28 rho h
  unfold Seg48.relationRow3050 at r3050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3050

  unfold Seg48.relationRow3051 at r3051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3051

  unfold Seg48.relationRow3052 at r3052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3052

  unfold Seg48.relationRow3053 at r3053

  unfold Seg48.relationRow3054 at r3054

  unfold Seg48.relationRow3055 at r3055

  unfold Seg48.relationRow3056 at r3056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3056

  unfold Seg48.relationRow3057 at r3057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3057

  unfold Seg48.relationRow3058 at r3058

  unfold Seg48.relationRow3059 at r3059

  unfold Seg48.relationRow3060 at r3060

  unfold Seg48.relationRow3061 at r3061

  unfold Seg48.relationRow3062 at r3062

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX29 rho = seg48In1AccX28 rho + rho 35814 := by
    unfold seg48In1AccX29 seg48In1AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 28]

    ring

  have hnexty : seg48In1AccY29 rho = seg48In1AccY28 rho + rho 35815 := by
    unfold seg48In1AccY29 seg48In1AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 28]

    ring

  have ha0 : (rho 35806 + rho 35807) * (seg48In1AccX28 rho + seg48In1AccY28 rho) = rho 35808 := by
    unfold seg48In1AccX28 seg48In1AccY28
    linear_combination r3050
  have ha1 : rho 35807 * seg48In1AccX28 rho = rho 35809 := by
    unfold seg48In1AccX28
    linear_combination r3051
  have ha2 : rho 35806 * seg48In1AccY28 rho = rho 35810 := by
    unfold seg48In1AccY28
    linear_combination r3052
  have ha3 : 3021 * rho 35809 * rho 35810 = rho 35811 := by
    linear_combination r3053
  have ha4 : rho 35812 * (1 + rho 35811) = rho 35809 + rho 35810 := by
    linear_combination r3054
  have ha5 : rho 35813 * (1 - rho 35811) = rho 35808 - rho 35809 - rho 35810 := by
    linear_combination r3055
  have haddx :
      rho 35812 * (1 + 3021 * (rho 35807 * seg48In1AccX28 rho) * (rho 35806 * seg48In1AccY28 rho)) =
        rho 35807 * seg48In1AccX28 rho + rho 35806 * seg48In1AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35813 * (1 - 3021 * (rho 35807 * seg48In1AccX28 rho) * (rho 35806 * seg48In1AccY28 rho)) =
        (-1) * (rho 35807 * seg48In1AccX28 rho) - rho 35806 * seg48In1AccY28 rho +
          (seg48In1AccY28 rho - seg48In1AccX28 rho * (-1)) * (rho 35806 + rho 35807) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35813 * (1 - rho 35811) = rho 35808 - rho 35809 - rho 35810 := ha5
      _ = (-1) * rho 35809 - rho 35810 + (seg48In1AccY28 rho - seg48In1AccX28 rho * (-1)) *
          (rho 35806 + rho 35807) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX29 rho = seg48In1AccX28 rho - Bool.toZMod bit * (seg48In1AccX28 rho - rho 35812) := by
    have hd : rho 35814 = Bool.toZMod bit * (rho 35812 - seg48In1AccX28 rho) := by
      rw [← hbit]
      unfold seg48In1AccX28
      linear_combination -r3056
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY29 rho = seg48In1AccY28 rho - Bool.toZMod bit * (seg48In1AccY28 rho - rho 35813) := by
    have hd : rho 35815 = Bool.toZMod bit * (rho 35813 - seg48In1AccY28 rho) := by
      rw [← hbit]
      unfold seg48In1AccY28
      linear_combination -r3057
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35806 * rho 35807 = rho 35816 := by linear_combination r3058
  have hd1 : rho 35806 * rho 35806 = rho 35817 := by linear_combination r3059
  have hd2 : rho 35807 * rho 35807 = rho 35818 := by linear_combination r3060
  have hd3 : rho 35819 * (rho 35807 * rho 35807 + rho 35806 * rho 35806 * (-1)) =
      2 * (rho 35806 * rho 35807) := by
    rw [hd0, hd1, hd2]
    linear_combination r3061
  have hd4 : rho 35820 * (2 - (rho 35807 * rho 35807 + rho 35806 * rho 35806 * (-1))) =
      rho 35807 * rho 35807 - rho 35806 * rho 35806 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3062
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX28 rho, seg48In1AccY28 rho⟩ ⟨rho 35806, rho 35807⟩
    ⟨rho 35812, rho 35813⟩ ⟨seg48In1AccX29 rho, seg48In1AccY29 rho⟩ ⟨rho 35819, rho 35820⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3063 rho ∧ Seg48.relationRow3064 rho ∧ Seg48.relationRow3065 rho ∧ Seg48.relationRow3066 rho ∧ Seg48.relationRow3067 rho ∧ Seg48.relationRow3068 rho ∧ Seg48.relationRow3069 rho ∧ Seg48.relationRow3070 rho ∧ Seg48.relationRow3071 rho ∧ Seg48.relationRow3072 rho ∧ Seg48.relationRow3073 rho ∧ Seg48.relationRow3074 rho ∧ Seg48.relationRow3075 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p38, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075⟩

theorem seg48In1_rung29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35351 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX29 rho, seg48In1AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35819, rho 35820⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX29 rho, seg48In1AccY29 rho⟩ ⟨rho 35819, rho 35820⟩
        ⟨seg48In1AccX30 rho, seg48In1AccY30 rho⟩ ⟨rho 35832, rho 35833⟩ := by
  obtain ⟨r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075⟩ := seg48In1_rows29 rho h
  unfold Seg48.relationRow3063 at r3063

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3063

  unfold Seg48.relationRow3064 at r3064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3064

  unfold Seg48.relationRow3065 at r3065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3065

  unfold Seg48.relationRow3066 at r3066

  unfold Seg48.relationRow3067 at r3067

  unfold Seg48.relationRow3068 at r3068

  unfold Seg48.relationRow3069 at r3069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3069

  unfold Seg48.relationRow3070 at r3070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3070

  unfold Seg48.relationRow3071 at r3071

  unfold Seg48.relationRow3072 at r3072

  unfold Seg48.relationRow3073 at r3073

  unfold Seg48.relationRow3074 at r3074

  unfold Seg48.relationRow3075 at r3075

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX30 rho = seg48In1AccX29 rho + rho 35827 := by
    unfold seg48In1AccX30 seg48In1AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 29]

    ring

  have hnexty : seg48In1AccY30 rho = seg48In1AccY29 rho + rho 35828 := by
    unfold seg48In1AccY30 seg48In1AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 29]

    ring

  have ha0 : (rho 35819 + rho 35820) * (seg48In1AccX29 rho + seg48In1AccY29 rho) = rho 35821 := by
    unfold seg48In1AccX29 seg48In1AccY29
    linear_combination r3063
  have ha1 : rho 35820 * seg48In1AccX29 rho = rho 35822 := by
    unfold seg48In1AccX29
    linear_combination r3064
  have ha2 : rho 35819 * seg48In1AccY29 rho = rho 35823 := by
    unfold seg48In1AccY29
    linear_combination r3065
  have ha3 : 3021 * rho 35822 * rho 35823 = rho 35824 := by
    linear_combination r3066
  have ha4 : rho 35825 * (1 + rho 35824) = rho 35822 + rho 35823 := by
    linear_combination r3067
  have ha5 : rho 35826 * (1 - rho 35824) = rho 35821 - rho 35822 - rho 35823 := by
    linear_combination r3068
  have haddx :
      rho 35825 * (1 + 3021 * (rho 35820 * seg48In1AccX29 rho) * (rho 35819 * seg48In1AccY29 rho)) =
        rho 35820 * seg48In1AccX29 rho + rho 35819 * seg48In1AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35826 * (1 - 3021 * (rho 35820 * seg48In1AccX29 rho) * (rho 35819 * seg48In1AccY29 rho)) =
        (-1) * (rho 35820 * seg48In1AccX29 rho) - rho 35819 * seg48In1AccY29 rho +
          (seg48In1AccY29 rho - seg48In1AccX29 rho * (-1)) * (rho 35819 + rho 35820) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35826 * (1 - rho 35824) = rho 35821 - rho 35822 - rho 35823 := ha5
      _ = (-1) * rho 35822 - rho 35823 + (seg48In1AccY29 rho - seg48In1AccX29 rho * (-1)) *
          (rho 35819 + rho 35820) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX30 rho = seg48In1AccX29 rho - Bool.toZMod bit * (seg48In1AccX29 rho - rho 35825) := by
    have hd : rho 35827 = Bool.toZMod bit * (rho 35825 - seg48In1AccX29 rho) := by
      rw [← hbit]
      unfold seg48In1AccX29
      linear_combination -r3069
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY30 rho = seg48In1AccY29 rho - Bool.toZMod bit * (seg48In1AccY29 rho - rho 35826) := by
    have hd : rho 35828 = Bool.toZMod bit * (rho 35826 - seg48In1AccY29 rho) := by
      rw [← hbit]
      unfold seg48In1AccY29
      linear_combination -r3070
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35819 * rho 35820 = rho 35829 := by linear_combination r3071
  have hd1 : rho 35819 * rho 35819 = rho 35830 := by linear_combination r3072
  have hd2 : rho 35820 * rho 35820 = rho 35831 := by linear_combination r3073
  have hd3 : rho 35832 * (rho 35820 * rho 35820 + rho 35819 * rho 35819 * (-1)) =
      2 * (rho 35819 * rho 35820) := by
    rw [hd0, hd1, hd2]
    linear_combination r3074
  have hd4 : rho 35833 * (2 - (rho 35820 * rho 35820 + rho 35819 * rho 35819 * (-1))) =
      rho 35820 * rho 35820 - rho 35819 * rho 35819 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3075
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX29 rho, seg48In1AccY29 rho⟩ ⟨rho 35819, rho 35820⟩
    ⟨rho 35825, rho 35826⟩ ⟨seg48In1AccX30 rho, seg48In1AccY30 rho⟩ ⟨rho 35832, rho 35833⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3076 rho ∧ Seg48.relationRow3077 rho ∧ Seg48.relationRow3078 rho ∧ Seg48.relationRow3079 rho ∧ Seg48.relationRow3080 rho ∧ Seg48.relationRow3081 rho ∧ Seg48.relationRow3082 rho ∧ Seg48.relationRow3083 rho ∧ Seg48.relationRow3084 rho ∧ Seg48.relationRow3085 rho ∧ Seg48.relationRow3086 rho ∧ Seg48.relationRow3087 rho ∧ Seg48.relationRow3088 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p38, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088⟩

theorem seg48In1_rung30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35352 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX30 rho, seg48In1AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35832, rho 35833⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX30 rho, seg48In1AccY30 rho⟩ ⟨rho 35832, rho 35833⟩
        ⟨seg48In1AccX31 rho, seg48In1AccY31 rho⟩ ⟨rho 35845, rho 35846⟩ := by
  obtain ⟨r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088⟩ := seg48In1_rows30 rho h
  unfold Seg48.relationRow3076 at r3076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3076

  unfold Seg48.relationRow3077 at r3077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3077

  unfold Seg48.relationRow3078 at r3078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3078

  unfold Seg48.relationRow3079 at r3079

  unfold Seg48.relationRow3080 at r3080

  unfold Seg48.relationRow3081 at r3081

  unfold Seg48.relationRow3082 at r3082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3082

  unfold Seg48.relationRow3083 at r3083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3083

  unfold Seg48.relationRow3084 at r3084

  unfold Seg48.relationRow3085 at r3085

  unfold Seg48.relationRow3086 at r3086

  unfold Seg48.relationRow3087 at r3087

  unfold Seg48.relationRow3088 at r3088

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX31 rho = seg48In1AccX30 rho + rho 35840 := by
    unfold seg48In1AccX31 seg48In1AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 30]

    ring

  have hnexty : seg48In1AccY31 rho = seg48In1AccY30 rho + rho 35841 := by
    unfold seg48In1AccY31 seg48In1AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 30]

    ring

  have ha0 : (rho 35832 + rho 35833) * (seg48In1AccX30 rho + seg48In1AccY30 rho) = rho 35834 := by
    unfold seg48In1AccX30 seg48In1AccY30
    linear_combination r3076
  have ha1 : rho 35833 * seg48In1AccX30 rho = rho 35835 := by
    unfold seg48In1AccX30
    linear_combination r3077
  have ha2 : rho 35832 * seg48In1AccY30 rho = rho 35836 := by
    unfold seg48In1AccY30
    linear_combination r3078
  have ha3 : 3021 * rho 35835 * rho 35836 = rho 35837 := by
    linear_combination r3079
  have ha4 : rho 35838 * (1 + rho 35837) = rho 35835 + rho 35836 := by
    linear_combination r3080
  have ha5 : rho 35839 * (1 - rho 35837) = rho 35834 - rho 35835 - rho 35836 := by
    linear_combination r3081
  have haddx :
      rho 35838 * (1 + 3021 * (rho 35833 * seg48In1AccX30 rho) * (rho 35832 * seg48In1AccY30 rho)) =
        rho 35833 * seg48In1AccX30 rho + rho 35832 * seg48In1AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35839 * (1 - 3021 * (rho 35833 * seg48In1AccX30 rho) * (rho 35832 * seg48In1AccY30 rho)) =
        (-1) * (rho 35833 * seg48In1AccX30 rho) - rho 35832 * seg48In1AccY30 rho +
          (seg48In1AccY30 rho - seg48In1AccX30 rho * (-1)) * (rho 35832 + rho 35833) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35839 * (1 - rho 35837) = rho 35834 - rho 35835 - rho 35836 := ha5
      _ = (-1) * rho 35835 - rho 35836 + (seg48In1AccY30 rho - seg48In1AccX30 rho * (-1)) *
          (rho 35832 + rho 35833) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX31 rho = seg48In1AccX30 rho - Bool.toZMod bit * (seg48In1AccX30 rho - rho 35838) := by
    have hd : rho 35840 = Bool.toZMod bit * (rho 35838 - seg48In1AccX30 rho) := by
      rw [← hbit]
      unfold seg48In1AccX30
      linear_combination -r3082
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY31 rho = seg48In1AccY30 rho - Bool.toZMod bit * (seg48In1AccY30 rho - rho 35839) := by
    have hd : rho 35841 = Bool.toZMod bit * (rho 35839 - seg48In1AccY30 rho) := by
      rw [← hbit]
      unfold seg48In1AccY30
      linear_combination -r3083
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35832 * rho 35833 = rho 35842 := by linear_combination r3084
  have hd1 : rho 35832 * rho 35832 = rho 35843 := by linear_combination r3085
  have hd2 : rho 35833 * rho 35833 = rho 35844 := by linear_combination r3086
  have hd3 : rho 35845 * (rho 35833 * rho 35833 + rho 35832 * rho 35832 * (-1)) =
      2 * (rho 35832 * rho 35833) := by
    rw [hd0, hd1, hd2]
    linear_combination r3087
  have hd4 : rho 35846 * (2 - (rho 35833 * rho 35833 + rho 35832 * rho 35832 * (-1))) =
      rho 35833 * rho 35833 - rho 35832 * rho 35832 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3088
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX30 rho, seg48In1AccY30 rho⟩ ⟨rho 35832, rho 35833⟩
    ⟨rho 35838, rho 35839⟩ ⟨seg48In1AccX31 rho, seg48In1AccY31 rho⟩ ⟨rho 35845, rho 35846⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3089 rho ∧ Seg48.relationRow3090 rho ∧ Seg48.relationRow3091 rho ∧ Seg48.relationRow3092 rho ∧ Seg48.relationRow3093 rho ∧ Seg48.relationRow3094 rho ∧ Seg48.relationRow3095 rho ∧ Seg48.relationRow3096 rho ∧ Seg48.relationRow3097 rho ∧ Seg48.relationRow3098 rho ∧ Seg48.relationRow3099 rho ∧ Seg48.relationRow3100 rho ∧ Seg48.relationRow3101 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p38, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101⟩

theorem seg48In1_rung31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35353 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX31 rho, seg48In1AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35845, rho 35846⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX31 rho, seg48In1AccY31 rho⟩ ⟨rho 35845, rho 35846⟩
        ⟨seg48In1AccX32 rho, seg48In1AccY32 rho⟩ ⟨rho 35858, rho 35859⟩ := by
  obtain ⟨r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101⟩ := seg48In1_rows31 rho h
  unfold Seg48.relationRow3089 at r3089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3089

  unfold Seg48.relationRow3090 at r3090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3090

  unfold Seg48.relationRow3091 at r3091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3091

  unfold Seg48.relationRow3092 at r3092

  unfold Seg48.relationRow3093 at r3093

  unfold Seg48.relationRow3094 at r3094

  unfold Seg48.relationRow3095 at r3095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3095

  unfold Seg48.relationRow3096 at r3096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3096

  unfold Seg48.relationRow3097 at r3097

  unfold Seg48.relationRow3098 at r3098

  unfold Seg48.relationRow3099 at r3099

  unfold Seg48.relationRow3100 at r3100

  unfold Seg48.relationRow3101 at r3101

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX32 rho = seg48In1AccX31 rho + rho 35853 := by
    unfold seg48In1AccX32 seg48In1AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 31]

    ring

  have hnexty : seg48In1AccY32 rho = seg48In1AccY31 rho + rho 35854 := by
    unfold seg48In1AccY32 seg48In1AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 31]

    ring

  have ha0 : (rho 35845 + rho 35846) * (seg48In1AccX31 rho + seg48In1AccY31 rho) = rho 35847 := by
    unfold seg48In1AccX31 seg48In1AccY31
    linear_combination r3089
  have ha1 : rho 35846 * seg48In1AccX31 rho = rho 35848 := by
    unfold seg48In1AccX31
    linear_combination r3090
  have ha2 : rho 35845 * seg48In1AccY31 rho = rho 35849 := by
    unfold seg48In1AccY31
    linear_combination r3091
  have ha3 : 3021 * rho 35848 * rho 35849 = rho 35850 := by
    linear_combination r3092
  have ha4 : rho 35851 * (1 + rho 35850) = rho 35848 + rho 35849 := by
    linear_combination r3093
  have ha5 : rho 35852 * (1 - rho 35850) = rho 35847 - rho 35848 - rho 35849 := by
    linear_combination r3094
  have haddx :
      rho 35851 * (1 + 3021 * (rho 35846 * seg48In1AccX31 rho) * (rho 35845 * seg48In1AccY31 rho)) =
        rho 35846 * seg48In1AccX31 rho + rho 35845 * seg48In1AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35852 * (1 - 3021 * (rho 35846 * seg48In1AccX31 rho) * (rho 35845 * seg48In1AccY31 rho)) =
        (-1) * (rho 35846 * seg48In1AccX31 rho) - rho 35845 * seg48In1AccY31 rho +
          (seg48In1AccY31 rho - seg48In1AccX31 rho * (-1)) * (rho 35845 + rho 35846) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35852 * (1 - rho 35850) = rho 35847 - rho 35848 - rho 35849 := ha5
      _ = (-1) * rho 35848 - rho 35849 + (seg48In1AccY31 rho - seg48In1AccX31 rho * (-1)) *
          (rho 35845 + rho 35846) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX32 rho = seg48In1AccX31 rho - Bool.toZMod bit * (seg48In1AccX31 rho - rho 35851) := by
    have hd : rho 35853 = Bool.toZMod bit * (rho 35851 - seg48In1AccX31 rho) := by
      rw [← hbit]
      unfold seg48In1AccX31
      linear_combination -r3095
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY32 rho = seg48In1AccY31 rho - Bool.toZMod bit * (seg48In1AccY31 rho - rho 35852) := by
    have hd : rho 35854 = Bool.toZMod bit * (rho 35852 - seg48In1AccY31 rho) := by
      rw [← hbit]
      unfold seg48In1AccY31
      linear_combination -r3096
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35845 * rho 35846 = rho 35855 := by linear_combination r3097
  have hd1 : rho 35845 * rho 35845 = rho 35856 := by linear_combination r3098
  have hd2 : rho 35846 * rho 35846 = rho 35857 := by linear_combination r3099
  have hd3 : rho 35858 * (rho 35846 * rho 35846 + rho 35845 * rho 35845 * (-1)) =
      2 * (rho 35845 * rho 35846) := by
    rw [hd0, hd1, hd2]
    linear_combination r3100
  have hd4 : rho 35859 * (2 - (rho 35846 * rho 35846 + rho 35845 * rho 35845 * (-1))) =
      rho 35846 * rho 35846 - rho 35845 * rho 35845 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3101
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX31 rho, seg48In1AccY31 rho⟩ ⟨rho 35845, rho 35846⟩
    ⟨rho 35851, rho 35852⟩ ⟨seg48In1AccX32 rho, seg48In1AccY32 rho⟩ ⟨rho 35858, rho 35859⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow3102 rho ∧ Seg48.relationRow3103 rho ∧ Seg48.relationRow3104 rho ∧ Seg48.relationRow3105 rho ∧ Seg48.relationRow3106 rho ∧ Seg48.relationRow3107 rho ∧ Seg48.relationRow3108 rho ∧ Seg48.relationRow3109 rho ∧ Seg48.relationRow3110 rho ∧ Seg48.relationRow3111 rho ∧ Seg48.relationRow3112 rho ∧ Seg48.relationRow3113 rho ∧ Seg48.relationRow3114 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p38, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, _, _, _, _, _⟩

  exact ⟨r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114⟩

theorem seg48In1_rung32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35354 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX32 rho, seg48In1AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35858, rho 35859⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX32 rho, seg48In1AccY32 rho⟩ ⟨rho 35858, rho 35859⟩
        ⟨seg48In1AccX33 rho, seg48In1AccY33 rho⟩ ⟨rho 35871, rho 35872⟩ := by
  obtain ⟨r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114⟩ := seg48In1_rows32 rho h
  unfold Seg48.relationRow3102 at r3102

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3102

  unfold Seg48.relationRow3103 at r3103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3103

  unfold Seg48.relationRow3104 at r3104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3104

  unfold Seg48.relationRow3105 at r3105

  unfold Seg48.relationRow3106 at r3106

  unfold Seg48.relationRow3107 at r3107

  unfold Seg48.relationRow3108 at r3108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3108

  unfold Seg48.relationRow3109 at r3109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3109

  unfold Seg48.relationRow3110 at r3110

  unfold Seg48.relationRow3111 at r3111

  unfold Seg48.relationRow3112 at r3112

  unfold Seg48.relationRow3113 at r3113

  unfold Seg48.relationRow3114 at r3114

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX33 rho = seg48In1AccX32 rho + rho 35866 := by
    unfold seg48In1AccX33 seg48In1AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 32]

    ring

  have hnexty : seg48In1AccY33 rho = seg48In1AccY32 rho + rho 35867 := by
    unfold seg48In1AccY33 seg48In1AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 32]

    ring

  have ha0 : (rho 35858 + rho 35859) * (seg48In1AccX32 rho + seg48In1AccY32 rho) = rho 35860 := by
    unfold seg48In1AccX32 seg48In1AccY32
    linear_combination r3102
  have ha1 : rho 35859 * seg48In1AccX32 rho = rho 35861 := by
    unfold seg48In1AccX32
    linear_combination r3103
  have ha2 : rho 35858 * seg48In1AccY32 rho = rho 35862 := by
    unfold seg48In1AccY32
    linear_combination r3104
  have ha3 : 3021 * rho 35861 * rho 35862 = rho 35863 := by
    linear_combination r3105
  have ha4 : rho 35864 * (1 + rho 35863) = rho 35861 + rho 35862 := by
    linear_combination r3106
  have ha5 : rho 35865 * (1 - rho 35863) = rho 35860 - rho 35861 - rho 35862 := by
    linear_combination r3107
  have haddx :
      rho 35864 * (1 + 3021 * (rho 35859 * seg48In1AccX32 rho) * (rho 35858 * seg48In1AccY32 rho)) =
        rho 35859 * seg48In1AccX32 rho + rho 35858 * seg48In1AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35865 * (1 - 3021 * (rho 35859 * seg48In1AccX32 rho) * (rho 35858 * seg48In1AccY32 rho)) =
        (-1) * (rho 35859 * seg48In1AccX32 rho) - rho 35858 * seg48In1AccY32 rho +
          (seg48In1AccY32 rho - seg48In1AccX32 rho * (-1)) * (rho 35858 + rho 35859) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35865 * (1 - rho 35863) = rho 35860 - rho 35861 - rho 35862 := ha5
      _ = (-1) * rho 35861 - rho 35862 + (seg48In1AccY32 rho - seg48In1AccX32 rho * (-1)) *
          (rho 35858 + rho 35859) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX33 rho = seg48In1AccX32 rho - Bool.toZMod bit * (seg48In1AccX32 rho - rho 35864) := by
    have hd : rho 35866 = Bool.toZMod bit * (rho 35864 - seg48In1AccX32 rho) := by
      rw [← hbit]
      unfold seg48In1AccX32
      linear_combination -r3108
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY33 rho = seg48In1AccY32 rho - Bool.toZMod bit * (seg48In1AccY32 rho - rho 35865) := by
    have hd : rho 35867 = Bool.toZMod bit * (rho 35865 - seg48In1AccY32 rho) := by
      rw [← hbit]
      unfold seg48In1AccY32
      linear_combination -r3109
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35858 * rho 35859 = rho 35868 := by linear_combination r3110
  have hd1 : rho 35858 * rho 35858 = rho 35869 := by linear_combination r3111
  have hd2 : rho 35859 * rho 35859 = rho 35870 := by linear_combination r3112
  have hd3 : rho 35871 * (rho 35859 * rho 35859 + rho 35858 * rho 35858 * (-1)) =
      2 * (rho 35858 * rho 35859) := by
    rw [hd0, hd1, hd2]
    linear_combination r3113
  have hd4 : rho 35872 * (2 - (rho 35859 * rho 35859 + rho 35858 * rho 35858 * (-1))) =
      rho 35859 * rho 35859 - rho 35858 * rho 35858 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3114
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX32 rho, seg48In1AccY32 rho⟩ ⟨rho 35858, rho 35859⟩
    ⟨rho 35864, rho 35865⟩ ⟨seg48In1AccX33 rho, seg48In1AccY33 rho⟩ ⟨rho 35871, rho 35872⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c2 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg48In1_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg48In1_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg48In1_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg48In1_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg48In1_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg48In1_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg48In1_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg48In1_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg48In1_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg48In1_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
