import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2972 rho ∧ Seg52.relationRow2973 rho ∧ Seg52.relationRow2974 rho ∧ Seg52.relationRow2975 rho ∧ Seg52.relationRow2976 rho ∧ Seg52.relationRow2977 rho ∧ Seg52.relationRow2978 rho ∧ Seg52.relationRow2979 rho ∧ Seg52.relationRow2980 rho ∧ Seg52.relationRow2981 rho ∧ Seg52.relationRow2982 rho ∧ Seg52.relationRow2983 rho ∧ Seg52.relationRow2984 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984⟩

theorem seg52In1_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46976 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47360, rho 47361⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 47360, rho 47361⟩
        ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 47373, rho 47374⟩ := by
  obtain ⟨r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984⟩ := seg52In1_rows22 rho h
  unfold Seg52.relationRow2972 at r2972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2972

  unfold Seg52.relationRow2973 at r2973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2973

  unfold Seg52.relationRow2974 at r2974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2974

  unfold Seg52.relationRow2975 at r2975

  unfold Seg52.relationRow2976 at r2976

  unfold Seg52.relationRow2977 at r2977

  unfold Seg52.relationRow2978 at r2978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2978

  unfold Seg52.relationRow2979 at r2979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2979

  unfold Seg52.relationRow2980 at r2980

  unfold Seg52.relationRow2981 at r2981

  unfold Seg52.relationRow2982 at r2982

  unfold Seg52.relationRow2983 at r2983

  unfold Seg52.relationRow2984 at r2984

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX23 rho = seg52In1AccX22 rho + rho 47368 := by
    unfold seg52In1AccX23 seg52In1AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 22]

    ring

  have hnexty : seg52In1AccY23 rho = seg52In1AccY22 rho + rho 47369 := by
    unfold seg52In1AccY23 seg52In1AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 22]

    ring

  have ha0 : (rho 47360 + rho 47361) * (seg52In1AccX22 rho + seg52In1AccY22 rho) = rho 47362 := by
    unfold seg52In1AccX22 seg52In1AccY22
    linear_combination r2972
  have ha1 : rho 47361 * seg52In1AccX22 rho = rho 47363 := by
    unfold seg52In1AccX22
    linear_combination r2973
  have ha2 : rho 47360 * seg52In1AccY22 rho = rho 47364 := by
    unfold seg52In1AccY22
    linear_combination r2974
  have ha3 : 3021 * rho 47363 * rho 47364 = rho 47365 := by
    linear_combination r2975
  have ha4 : rho 47366 * (1 + rho 47365) = rho 47363 + rho 47364 := by
    linear_combination r2976
  have ha5 : rho 47367 * (1 - rho 47365) = rho 47362 - rho 47363 - rho 47364 := by
    linear_combination r2977
  have haddx :
      rho 47366 * (1 + 3021 * (rho 47361 * seg52In1AccX22 rho) * (rho 47360 * seg52In1AccY22 rho)) =
        rho 47361 * seg52In1AccX22 rho + rho 47360 * seg52In1AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47367 * (1 - 3021 * (rho 47361 * seg52In1AccX22 rho) * (rho 47360 * seg52In1AccY22 rho)) =
        (-1) * (rho 47361 * seg52In1AccX22 rho) - rho 47360 * seg52In1AccY22 rho +
          (seg52In1AccY22 rho - seg52In1AccX22 rho * (-1)) * (rho 47360 + rho 47361) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47367 * (1 - rho 47365) = rho 47362 - rho 47363 - rho 47364 := ha5
      _ = (-1) * rho 47363 - rho 47364 + (seg52In1AccY22 rho - seg52In1AccX22 rho * (-1)) *
          (rho 47360 + rho 47361) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX23 rho = seg52In1AccX22 rho - Bool.toZMod bit * (seg52In1AccX22 rho - rho 47366) := by
    have hd : rho 47368 = Bool.toZMod bit * (rho 47366 - seg52In1AccX22 rho) := by
      rw [← hbit]
      unfold seg52In1AccX22
      linear_combination -r2978
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY23 rho = seg52In1AccY22 rho - Bool.toZMod bit * (seg52In1AccY22 rho - rho 47367) := by
    have hd : rho 47369 = Bool.toZMod bit * (rho 47367 - seg52In1AccY22 rho) := by
      rw [← hbit]
      unfold seg52In1AccY22
      linear_combination -r2979
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47360 * rho 47361 = rho 47370 := by linear_combination r2980
  have hd1 : rho 47360 * rho 47360 = rho 47371 := by linear_combination r2981
  have hd2 : rho 47361 * rho 47361 = rho 47372 := by linear_combination r2982
  have hd3 : rho 47373 * (rho 47361 * rho 47361 + rho 47360 * rho 47360 * (-1)) =
      2 * (rho 47360 * rho 47361) := by
    rw [hd0, hd1, hd2]
    linear_combination r2983
  have hd4 : rho 47374 * (2 - (rho 47361 * rho 47361 + rho 47360 * rho 47360 * (-1))) =
      rho 47361 * rho 47361 - rho 47360 * rho 47360 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2984
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 47360, rho 47361⟩
    ⟨rho 47366, rho 47367⟩ ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 47373, rho 47374⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2985 rho ∧ Seg52.relationRow2986 rho ∧ Seg52.relationRow2987 rho ∧ Seg52.relationRow2988 rho ∧ Seg52.relationRow2989 rho ∧ Seg52.relationRow2990 rho ∧ Seg52.relationRow2991 rho ∧ Seg52.relationRow2992 rho ∧ Seg52.relationRow2993 rho ∧ Seg52.relationRow2994 rho ∧ Seg52.relationRow2995 rho ∧ Seg52.relationRow2996 rho ∧ Seg52.relationRow2997 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997⟩

theorem seg52In1_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46977 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47373, rho 47374⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 47373, rho 47374⟩
        ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 47386, rho 47387⟩ := by
  obtain ⟨r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997⟩ := seg52In1_rows23 rho h
  unfold Seg52.relationRow2985 at r2985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2985

  unfold Seg52.relationRow2986 at r2986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2986

  unfold Seg52.relationRow2987 at r2987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2987

  unfold Seg52.relationRow2988 at r2988

  unfold Seg52.relationRow2989 at r2989

  unfold Seg52.relationRow2990 at r2990

  unfold Seg52.relationRow2991 at r2991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2991

  unfold Seg52.relationRow2992 at r2992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2992

  unfold Seg52.relationRow2993 at r2993

  unfold Seg52.relationRow2994 at r2994

  unfold Seg52.relationRow2995 at r2995

  unfold Seg52.relationRow2996 at r2996

  unfold Seg52.relationRow2997 at r2997

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX24 rho = seg52In1AccX23 rho + rho 47381 := by
    unfold seg52In1AccX24 seg52In1AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 23]

    ring

  have hnexty : seg52In1AccY24 rho = seg52In1AccY23 rho + rho 47382 := by
    unfold seg52In1AccY24 seg52In1AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 23]

    ring

  have ha0 : (rho 47373 + rho 47374) * (seg52In1AccX23 rho + seg52In1AccY23 rho) = rho 47375 := by
    unfold seg52In1AccX23 seg52In1AccY23
    linear_combination r2985
  have ha1 : rho 47374 * seg52In1AccX23 rho = rho 47376 := by
    unfold seg52In1AccX23
    linear_combination r2986
  have ha2 : rho 47373 * seg52In1AccY23 rho = rho 47377 := by
    unfold seg52In1AccY23
    linear_combination r2987
  have ha3 : 3021 * rho 47376 * rho 47377 = rho 47378 := by
    linear_combination r2988
  have ha4 : rho 47379 * (1 + rho 47378) = rho 47376 + rho 47377 := by
    linear_combination r2989
  have ha5 : rho 47380 * (1 - rho 47378) = rho 47375 - rho 47376 - rho 47377 := by
    linear_combination r2990
  have haddx :
      rho 47379 * (1 + 3021 * (rho 47374 * seg52In1AccX23 rho) * (rho 47373 * seg52In1AccY23 rho)) =
        rho 47374 * seg52In1AccX23 rho + rho 47373 * seg52In1AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47380 * (1 - 3021 * (rho 47374 * seg52In1AccX23 rho) * (rho 47373 * seg52In1AccY23 rho)) =
        (-1) * (rho 47374 * seg52In1AccX23 rho) - rho 47373 * seg52In1AccY23 rho +
          (seg52In1AccY23 rho - seg52In1AccX23 rho * (-1)) * (rho 47373 + rho 47374) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47380 * (1 - rho 47378) = rho 47375 - rho 47376 - rho 47377 := ha5
      _ = (-1) * rho 47376 - rho 47377 + (seg52In1AccY23 rho - seg52In1AccX23 rho * (-1)) *
          (rho 47373 + rho 47374) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX24 rho = seg52In1AccX23 rho - Bool.toZMod bit * (seg52In1AccX23 rho - rho 47379) := by
    have hd : rho 47381 = Bool.toZMod bit * (rho 47379 - seg52In1AccX23 rho) := by
      rw [← hbit]
      unfold seg52In1AccX23
      linear_combination -r2991
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY24 rho = seg52In1AccY23 rho - Bool.toZMod bit * (seg52In1AccY23 rho - rho 47380) := by
    have hd : rho 47382 = Bool.toZMod bit * (rho 47380 - seg52In1AccY23 rho) := by
      rw [← hbit]
      unfold seg52In1AccY23
      linear_combination -r2992
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47373 * rho 47374 = rho 47383 := by linear_combination r2993
  have hd1 : rho 47373 * rho 47373 = rho 47384 := by linear_combination r2994
  have hd2 : rho 47374 * rho 47374 = rho 47385 := by linear_combination r2995
  have hd3 : rho 47386 * (rho 47374 * rho 47374 + rho 47373 * rho 47373 * (-1)) =
      2 * (rho 47373 * rho 47374) := by
    rw [hd0, hd1, hd2]
    linear_combination r2996
  have hd4 : rho 47387 * (2 - (rho 47374 * rho 47374 + rho 47373 * rho 47373 * (-1))) =
      rho 47374 * rho 47374 - rho 47373 * rho 47373 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2997
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 47373, rho 47374⟩
    ⟨rho 47379, rho 47380⟩ ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 47386, rho 47387⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2998 rho ∧ Seg52.relationRow2999 rho ∧ Seg52.relationRow3000 rho ∧ Seg52.relationRow3001 rho ∧ Seg52.relationRow3002 rho ∧ Seg52.relationRow3003 rho ∧ Seg52.relationRow3004 rho ∧ Seg52.relationRow3005 rho ∧ Seg52.relationRow3006 rho ∧ Seg52.relationRow3007 rho ∧ Seg52.relationRow3008 rho ∧ Seg52.relationRow3009 rho ∧ Seg52.relationRow3010 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010⟩

theorem seg52In1_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46978 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47386, rho 47387⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 47386, rho 47387⟩
        ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 47399, rho 47400⟩ := by
  obtain ⟨r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010⟩ := seg52In1_rows24 rho h
  unfold Seg52.relationRow2998 at r2998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2998

  unfold Seg52.relationRow2999 at r2999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2999

  unfold Seg52.relationRow3000 at r3000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3000

  unfold Seg52.relationRow3001 at r3001

  unfold Seg52.relationRow3002 at r3002

  unfold Seg52.relationRow3003 at r3003

  unfold Seg52.relationRow3004 at r3004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3004

  unfold Seg52.relationRow3005 at r3005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3005

  unfold Seg52.relationRow3006 at r3006

  unfold Seg52.relationRow3007 at r3007

  unfold Seg52.relationRow3008 at r3008

  unfold Seg52.relationRow3009 at r3009

  unfold Seg52.relationRow3010 at r3010

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX25 rho = seg52In1AccX24 rho + rho 47394 := by
    unfold seg52In1AccX25 seg52In1AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 24]

    ring

  have hnexty : seg52In1AccY25 rho = seg52In1AccY24 rho + rho 47395 := by
    unfold seg52In1AccY25 seg52In1AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 24]

    ring

  have ha0 : (rho 47386 + rho 47387) * (seg52In1AccX24 rho + seg52In1AccY24 rho) = rho 47388 := by
    unfold seg52In1AccX24 seg52In1AccY24
    linear_combination r2998
  have ha1 : rho 47387 * seg52In1AccX24 rho = rho 47389 := by
    unfold seg52In1AccX24
    linear_combination r2999
  have ha2 : rho 47386 * seg52In1AccY24 rho = rho 47390 := by
    unfold seg52In1AccY24
    linear_combination r3000
  have ha3 : 3021 * rho 47389 * rho 47390 = rho 47391 := by
    linear_combination r3001
  have ha4 : rho 47392 * (1 + rho 47391) = rho 47389 + rho 47390 := by
    linear_combination r3002
  have ha5 : rho 47393 * (1 - rho 47391) = rho 47388 - rho 47389 - rho 47390 := by
    linear_combination r3003
  have haddx :
      rho 47392 * (1 + 3021 * (rho 47387 * seg52In1AccX24 rho) * (rho 47386 * seg52In1AccY24 rho)) =
        rho 47387 * seg52In1AccX24 rho + rho 47386 * seg52In1AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47393 * (1 - 3021 * (rho 47387 * seg52In1AccX24 rho) * (rho 47386 * seg52In1AccY24 rho)) =
        (-1) * (rho 47387 * seg52In1AccX24 rho) - rho 47386 * seg52In1AccY24 rho +
          (seg52In1AccY24 rho - seg52In1AccX24 rho * (-1)) * (rho 47386 + rho 47387) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47393 * (1 - rho 47391) = rho 47388 - rho 47389 - rho 47390 := ha5
      _ = (-1) * rho 47389 - rho 47390 + (seg52In1AccY24 rho - seg52In1AccX24 rho * (-1)) *
          (rho 47386 + rho 47387) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX25 rho = seg52In1AccX24 rho - Bool.toZMod bit * (seg52In1AccX24 rho - rho 47392) := by
    have hd : rho 47394 = Bool.toZMod bit * (rho 47392 - seg52In1AccX24 rho) := by
      rw [← hbit]
      unfold seg52In1AccX24
      linear_combination -r3004
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY25 rho = seg52In1AccY24 rho - Bool.toZMod bit * (seg52In1AccY24 rho - rho 47393) := by
    have hd : rho 47395 = Bool.toZMod bit * (rho 47393 - seg52In1AccY24 rho) := by
      rw [← hbit]
      unfold seg52In1AccY24
      linear_combination -r3005
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47386 * rho 47387 = rho 47396 := by linear_combination r3006
  have hd1 : rho 47386 * rho 47386 = rho 47397 := by linear_combination r3007
  have hd2 : rho 47387 * rho 47387 = rho 47398 := by linear_combination r3008
  have hd3 : rho 47399 * (rho 47387 * rho 47387 + rho 47386 * rho 47386 * (-1)) =
      2 * (rho 47386 * rho 47387) := by
    rw [hd0, hd1, hd2]
    linear_combination r3009
  have hd4 : rho 47400 * (2 - (rho 47387 * rho 47387 + rho 47386 * rho 47386 * (-1))) =
      rho 47387 * rho 47387 - rho 47386 * rho 47386 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3010
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 47386, rho 47387⟩
    ⟨rho 47392, rho 47393⟩ ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 47399, rho 47400⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3011 rho ∧ Seg52.relationRow3012 rho ∧ Seg52.relationRow3013 rho ∧ Seg52.relationRow3014 rho ∧ Seg52.relationRow3015 rho ∧ Seg52.relationRow3016 rho ∧ Seg52.relationRow3017 rho ∧ Seg52.relationRow3018 rho ∧ Seg52.relationRow3019 rho ∧ Seg52.relationRow3020 rho ∧ Seg52.relationRow3021 rho ∧ Seg52.relationRow3022 rho ∧ Seg52.relationRow3023 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023⟩

theorem seg52In1_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46979 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47399, rho 47400⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 47399, rho 47400⟩
        ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 47412, rho 47413⟩ := by
  obtain ⟨r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, r3021, r3022, r3023⟩ := seg52In1_rows25 rho h
  unfold Seg52.relationRow3011 at r3011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3011

  unfold Seg52.relationRow3012 at r3012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3012

  unfold Seg52.relationRow3013 at r3013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3013

  unfold Seg52.relationRow3014 at r3014

  unfold Seg52.relationRow3015 at r3015

  unfold Seg52.relationRow3016 at r3016

  unfold Seg52.relationRow3017 at r3017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3017

  unfold Seg52.relationRow3018 at r3018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3018

  unfold Seg52.relationRow3019 at r3019

  unfold Seg52.relationRow3020 at r3020

  unfold Seg52.relationRow3021 at r3021

  unfold Seg52.relationRow3022 at r3022

  unfold Seg52.relationRow3023 at r3023

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX26 rho = seg52In1AccX25 rho + rho 47407 := by
    unfold seg52In1AccX26 seg52In1AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 25]

    ring

  have hnexty : seg52In1AccY26 rho = seg52In1AccY25 rho + rho 47408 := by
    unfold seg52In1AccY26 seg52In1AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 25]

    ring

  have ha0 : (rho 47399 + rho 47400) * (seg52In1AccX25 rho + seg52In1AccY25 rho) = rho 47401 := by
    unfold seg52In1AccX25 seg52In1AccY25
    linear_combination r3011
  have ha1 : rho 47400 * seg52In1AccX25 rho = rho 47402 := by
    unfold seg52In1AccX25
    linear_combination r3012
  have ha2 : rho 47399 * seg52In1AccY25 rho = rho 47403 := by
    unfold seg52In1AccY25
    linear_combination r3013
  have ha3 : 3021 * rho 47402 * rho 47403 = rho 47404 := by
    linear_combination r3014
  have ha4 : rho 47405 * (1 + rho 47404) = rho 47402 + rho 47403 := by
    linear_combination r3015
  have ha5 : rho 47406 * (1 - rho 47404) = rho 47401 - rho 47402 - rho 47403 := by
    linear_combination r3016
  have haddx :
      rho 47405 * (1 + 3021 * (rho 47400 * seg52In1AccX25 rho) * (rho 47399 * seg52In1AccY25 rho)) =
        rho 47400 * seg52In1AccX25 rho + rho 47399 * seg52In1AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47406 * (1 - 3021 * (rho 47400 * seg52In1AccX25 rho) * (rho 47399 * seg52In1AccY25 rho)) =
        (-1) * (rho 47400 * seg52In1AccX25 rho) - rho 47399 * seg52In1AccY25 rho +
          (seg52In1AccY25 rho - seg52In1AccX25 rho * (-1)) * (rho 47399 + rho 47400) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47406 * (1 - rho 47404) = rho 47401 - rho 47402 - rho 47403 := ha5
      _ = (-1) * rho 47402 - rho 47403 + (seg52In1AccY25 rho - seg52In1AccX25 rho * (-1)) *
          (rho 47399 + rho 47400) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX26 rho = seg52In1AccX25 rho - Bool.toZMod bit * (seg52In1AccX25 rho - rho 47405) := by
    have hd : rho 47407 = Bool.toZMod bit * (rho 47405 - seg52In1AccX25 rho) := by
      rw [← hbit]
      unfold seg52In1AccX25
      linear_combination -r3017
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY26 rho = seg52In1AccY25 rho - Bool.toZMod bit * (seg52In1AccY25 rho - rho 47406) := by
    have hd : rho 47408 = Bool.toZMod bit * (rho 47406 - seg52In1AccY25 rho) := by
      rw [← hbit]
      unfold seg52In1AccY25
      linear_combination -r3018
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47399 * rho 47400 = rho 47409 := by linear_combination r3019
  have hd1 : rho 47399 * rho 47399 = rho 47410 := by linear_combination r3020
  have hd2 : rho 47400 * rho 47400 = rho 47411 := by linear_combination r3021
  have hd3 : rho 47412 * (rho 47400 * rho 47400 + rho 47399 * rho 47399 * (-1)) =
      2 * (rho 47399 * rho 47400) := by
    rw [hd0, hd1, hd2]
    linear_combination r3022
  have hd4 : rho 47413 * (2 - (rho 47400 * rho 47400 + rho 47399 * rho 47399 * (-1))) =
      rho 47400 * rho 47400 - rho 47399 * rho 47399 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3023
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 47399, rho 47400⟩
    ⟨rho 47405, rho 47406⟩ ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 47412, rho 47413⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3024 rho ∧ Seg52.relationRow3025 rho ∧ Seg52.relationRow3026 rho ∧ Seg52.relationRow3027 rho ∧ Seg52.relationRow3028 rho ∧ Seg52.relationRow3029 rho ∧ Seg52.relationRow3030 rho ∧ Seg52.relationRow3031 rho ∧ Seg52.relationRow3032 rho ∧ Seg52.relationRow3033 rho ∧ Seg52.relationRow3034 rho ∧ Seg52.relationRow3035 rho ∧ Seg52.relationRow3036 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036, _, _, _⟩

  exact ⟨r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036⟩

theorem seg52In1_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46980 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47412, rho 47413⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 47412, rho 47413⟩
        ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 47425, rho 47426⟩ := by
  obtain ⟨r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, r3034, r3035, r3036⟩ := seg52In1_rows26 rho h
  unfold Seg52.relationRow3024 at r3024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3024

  unfold Seg52.relationRow3025 at r3025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3025

  unfold Seg52.relationRow3026 at r3026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3026

  unfold Seg52.relationRow3027 at r3027

  unfold Seg52.relationRow3028 at r3028

  unfold Seg52.relationRow3029 at r3029

  unfold Seg52.relationRow3030 at r3030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3030

  unfold Seg52.relationRow3031 at r3031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3031

  unfold Seg52.relationRow3032 at r3032

  unfold Seg52.relationRow3033 at r3033

  unfold Seg52.relationRow3034 at r3034

  unfold Seg52.relationRow3035 at r3035

  unfold Seg52.relationRow3036 at r3036

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX27 rho = seg52In1AccX26 rho + rho 47420 := by
    unfold seg52In1AccX27 seg52In1AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 26]

    ring

  have hnexty : seg52In1AccY27 rho = seg52In1AccY26 rho + rho 47421 := by
    unfold seg52In1AccY27 seg52In1AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 26]

    ring

  have ha0 : (rho 47412 + rho 47413) * (seg52In1AccX26 rho + seg52In1AccY26 rho) = rho 47414 := by
    unfold seg52In1AccX26 seg52In1AccY26
    linear_combination r3024
  have ha1 : rho 47413 * seg52In1AccX26 rho = rho 47415 := by
    unfold seg52In1AccX26
    linear_combination r3025
  have ha2 : rho 47412 * seg52In1AccY26 rho = rho 47416 := by
    unfold seg52In1AccY26
    linear_combination r3026
  have ha3 : 3021 * rho 47415 * rho 47416 = rho 47417 := by
    linear_combination r3027
  have ha4 : rho 47418 * (1 + rho 47417) = rho 47415 + rho 47416 := by
    linear_combination r3028
  have ha5 : rho 47419 * (1 - rho 47417) = rho 47414 - rho 47415 - rho 47416 := by
    linear_combination r3029
  have haddx :
      rho 47418 * (1 + 3021 * (rho 47413 * seg52In1AccX26 rho) * (rho 47412 * seg52In1AccY26 rho)) =
        rho 47413 * seg52In1AccX26 rho + rho 47412 * seg52In1AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47419 * (1 - 3021 * (rho 47413 * seg52In1AccX26 rho) * (rho 47412 * seg52In1AccY26 rho)) =
        (-1) * (rho 47413 * seg52In1AccX26 rho) - rho 47412 * seg52In1AccY26 rho +
          (seg52In1AccY26 rho - seg52In1AccX26 rho * (-1)) * (rho 47412 + rho 47413) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47419 * (1 - rho 47417) = rho 47414 - rho 47415 - rho 47416 := ha5
      _ = (-1) * rho 47415 - rho 47416 + (seg52In1AccY26 rho - seg52In1AccX26 rho * (-1)) *
          (rho 47412 + rho 47413) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX27 rho = seg52In1AccX26 rho - Bool.toZMod bit * (seg52In1AccX26 rho - rho 47418) := by
    have hd : rho 47420 = Bool.toZMod bit * (rho 47418 - seg52In1AccX26 rho) := by
      rw [← hbit]
      unfold seg52In1AccX26
      linear_combination -r3030
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY27 rho = seg52In1AccY26 rho - Bool.toZMod bit * (seg52In1AccY26 rho - rho 47419) := by
    have hd : rho 47421 = Bool.toZMod bit * (rho 47419 - seg52In1AccY26 rho) := by
      rw [← hbit]
      unfold seg52In1AccY26
      linear_combination -r3031
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47412 * rho 47413 = rho 47422 := by linear_combination r3032
  have hd1 : rho 47412 * rho 47412 = rho 47423 := by linear_combination r3033
  have hd2 : rho 47413 * rho 47413 = rho 47424 := by linear_combination r3034
  have hd3 : rho 47425 * (rho 47413 * rho 47413 + rho 47412 * rho 47412 * (-1)) =
      2 * (rho 47412 * rho 47413) := by
    rw [hd0, hd1, hd2]
    linear_combination r3035
  have hd4 : rho 47426 * (2 - (rho 47413 * rho 47413 + rho 47412 * rho 47412 * (-1))) =
      rho 47413 * rho 47413 - rho 47412 * rho 47412 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3036
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 47412, rho 47413⟩
    ⟨rho 47418, rho 47419⟩ ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 47425, rho 47426⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3037 rho ∧ Seg52.relationRow3038 rho ∧ Seg52.relationRow3039 rho ∧ Seg52.relationRow3040 rho ∧ Seg52.relationRow3041 rho ∧ Seg52.relationRow3042 rho ∧ Seg52.relationRow3043 rho ∧ Seg52.relationRow3044 rho ∧ Seg52.relationRow3045 rho ∧ Seg52.relationRow3046 rho ∧ Seg52.relationRow3047 rho ∧ Seg52.relationRow3048 rho ∧ Seg52.relationRow3049 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3037, r3038, r3039⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3037, r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049⟩

theorem seg52In1_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46981 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47425, rho 47426⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 47425, rho 47426⟩
        ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 47438, rho 47439⟩ := by
  obtain ⟨r3037, r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046, r3047, r3048, r3049⟩ := seg52In1_rows27 rho h
  unfold Seg52.relationRow3037 at r3037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3037

  unfold Seg52.relationRow3038 at r3038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3038

  unfold Seg52.relationRow3039 at r3039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3039

  unfold Seg52.relationRow3040 at r3040

  unfold Seg52.relationRow3041 at r3041

  unfold Seg52.relationRow3042 at r3042

  unfold Seg52.relationRow3043 at r3043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3043

  unfold Seg52.relationRow3044 at r3044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3044

  unfold Seg52.relationRow3045 at r3045

  unfold Seg52.relationRow3046 at r3046

  unfold Seg52.relationRow3047 at r3047

  unfold Seg52.relationRow3048 at r3048

  unfold Seg52.relationRow3049 at r3049

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX28 rho = seg52In1AccX27 rho + rho 47433 := by
    unfold seg52In1AccX28 seg52In1AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 27]

    ring

  have hnexty : seg52In1AccY28 rho = seg52In1AccY27 rho + rho 47434 := by
    unfold seg52In1AccY28 seg52In1AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 27]

    ring

  have ha0 : (rho 47425 + rho 47426) * (seg52In1AccX27 rho + seg52In1AccY27 rho) = rho 47427 := by
    unfold seg52In1AccX27 seg52In1AccY27
    linear_combination r3037
  have ha1 : rho 47426 * seg52In1AccX27 rho = rho 47428 := by
    unfold seg52In1AccX27
    linear_combination r3038
  have ha2 : rho 47425 * seg52In1AccY27 rho = rho 47429 := by
    unfold seg52In1AccY27
    linear_combination r3039
  have ha3 : 3021 * rho 47428 * rho 47429 = rho 47430 := by
    linear_combination r3040
  have ha4 : rho 47431 * (1 + rho 47430) = rho 47428 + rho 47429 := by
    linear_combination r3041
  have ha5 : rho 47432 * (1 - rho 47430) = rho 47427 - rho 47428 - rho 47429 := by
    linear_combination r3042
  have haddx :
      rho 47431 * (1 + 3021 * (rho 47426 * seg52In1AccX27 rho) * (rho 47425 * seg52In1AccY27 rho)) =
        rho 47426 * seg52In1AccX27 rho + rho 47425 * seg52In1AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47432 * (1 - 3021 * (rho 47426 * seg52In1AccX27 rho) * (rho 47425 * seg52In1AccY27 rho)) =
        (-1) * (rho 47426 * seg52In1AccX27 rho) - rho 47425 * seg52In1AccY27 rho +
          (seg52In1AccY27 rho - seg52In1AccX27 rho * (-1)) * (rho 47425 + rho 47426) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47432 * (1 - rho 47430) = rho 47427 - rho 47428 - rho 47429 := ha5
      _ = (-1) * rho 47428 - rho 47429 + (seg52In1AccY27 rho - seg52In1AccX27 rho * (-1)) *
          (rho 47425 + rho 47426) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX28 rho = seg52In1AccX27 rho - Bool.toZMod bit * (seg52In1AccX27 rho - rho 47431) := by
    have hd : rho 47433 = Bool.toZMod bit * (rho 47431 - seg52In1AccX27 rho) := by
      rw [← hbit]
      unfold seg52In1AccX27
      linear_combination -r3043
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY28 rho = seg52In1AccY27 rho - Bool.toZMod bit * (seg52In1AccY27 rho - rho 47432) := by
    have hd : rho 47434 = Bool.toZMod bit * (rho 47432 - seg52In1AccY27 rho) := by
      rw [← hbit]
      unfold seg52In1AccY27
      linear_combination -r3044
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47425 * rho 47426 = rho 47435 := by linear_combination r3045
  have hd1 : rho 47425 * rho 47425 = rho 47436 := by linear_combination r3046
  have hd2 : rho 47426 * rho 47426 = rho 47437 := by linear_combination r3047
  have hd3 : rho 47438 * (rho 47426 * rho 47426 + rho 47425 * rho 47425 * (-1)) =
      2 * (rho 47425 * rho 47426) := by
    rw [hd0, hd1, hd2]
    linear_combination r3048
  have hd4 : rho 47439 * (2 - (rho 47426 * rho 47426 + rho 47425 * rho 47425 * (-1))) =
      rho 47426 * rho 47426 - rho 47425 * rho 47425 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3049
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 47425, rho 47426⟩
    ⟨rho 47431, rho 47432⟩ ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 47438, rho 47439⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3050 rho ∧ Seg52.relationRow3051 rho ∧ Seg52.relationRow3052 rho ∧ Seg52.relationRow3053 rho ∧ Seg52.relationRow3054 rho ∧ Seg52.relationRow3055 rho ∧ Seg52.relationRow3056 rho ∧ Seg52.relationRow3057 rho ∧ Seg52.relationRow3058 rho ∧ Seg52.relationRow3059 rho ∧ Seg52.relationRow3060 rho ∧ Seg52.relationRow3061 rho ∧ Seg52.relationRow3062 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062⟩

theorem seg52In1_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46982 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47438, rho 47439⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 47438, rho 47439⟩
        ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 47451, rho 47452⟩ := by
  obtain ⟨r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, r3060, r3061, r3062⟩ := seg52In1_rows28 rho h
  unfold Seg52.relationRow3050 at r3050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3050

  unfold Seg52.relationRow3051 at r3051

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3051

  unfold Seg52.relationRow3052 at r3052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3052

  unfold Seg52.relationRow3053 at r3053

  unfold Seg52.relationRow3054 at r3054

  unfold Seg52.relationRow3055 at r3055

  unfold Seg52.relationRow3056 at r3056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3056

  unfold Seg52.relationRow3057 at r3057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3057

  unfold Seg52.relationRow3058 at r3058

  unfold Seg52.relationRow3059 at r3059

  unfold Seg52.relationRow3060 at r3060

  unfold Seg52.relationRow3061 at r3061

  unfold Seg52.relationRow3062 at r3062

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX29 rho = seg52In1AccX28 rho + rho 47446 := by
    unfold seg52In1AccX29 seg52In1AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 28]

    ring

  have hnexty : seg52In1AccY29 rho = seg52In1AccY28 rho + rho 47447 := by
    unfold seg52In1AccY29 seg52In1AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 28]

    ring

  have ha0 : (rho 47438 + rho 47439) * (seg52In1AccX28 rho + seg52In1AccY28 rho) = rho 47440 := by
    unfold seg52In1AccX28 seg52In1AccY28
    linear_combination r3050
  have ha1 : rho 47439 * seg52In1AccX28 rho = rho 47441 := by
    unfold seg52In1AccX28
    linear_combination r3051
  have ha2 : rho 47438 * seg52In1AccY28 rho = rho 47442 := by
    unfold seg52In1AccY28
    linear_combination r3052
  have ha3 : 3021 * rho 47441 * rho 47442 = rho 47443 := by
    linear_combination r3053
  have ha4 : rho 47444 * (1 + rho 47443) = rho 47441 + rho 47442 := by
    linear_combination r3054
  have ha5 : rho 47445 * (1 - rho 47443) = rho 47440 - rho 47441 - rho 47442 := by
    linear_combination r3055
  have haddx :
      rho 47444 * (1 + 3021 * (rho 47439 * seg52In1AccX28 rho) * (rho 47438 * seg52In1AccY28 rho)) =
        rho 47439 * seg52In1AccX28 rho + rho 47438 * seg52In1AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47445 * (1 - 3021 * (rho 47439 * seg52In1AccX28 rho) * (rho 47438 * seg52In1AccY28 rho)) =
        (-1) * (rho 47439 * seg52In1AccX28 rho) - rho 47438 * seg52In1AccY28 rho +
          (seg52In1AccY28 rho - seg52In1AccX28 rho * (-1)) * (rho 47438 + rho 47439) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47445 * (1 - rho 47443) = rho 47440 - rho 47441 - rho 47442 := ha5
      _ = (-1) * rho 47441 - rho 47442 + (seg52In1AccY28 rho - seg52In1AccX28 rho * (-1)) *
          (rho 47438 + rho 47439) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX29 rho = seg52In1AccX28 rho - Bool.toZMod bit * (seg52In1AccX28 rho - rho 47444) := by
    have hd : rho 47446 = Bool.toZMod bit * (rho 47444 - seg52In1AccX28 rho) := by
      rw [← hbit]
      unfold seg52In1AccX28
      linear_combination -r3056
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY29 rho = seg52In1AccY28 rho - Bool.toZMod bit * (seg52In1AccY28 rho - rho 47445) := by
    have hd : rho 47447 = Bool.toZMod bit * (rho 47445 - seg52In1AccY28 rho) := by
      rw [← hbit]
      unfold seg52In1AccY28
      linear_combination -r3057
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47438 * rho 47439 = rho 47448 := by linear_combination r3058
  have hd1 : rho 47438 * rho 47438 = rho 47449 := by linear_combination r3059
  have hd2 : rho 47439 * rho 47439 = rho 47450 := by linear_combination r3060
  have hd3 : rho 47451 * (rho 47439 * rho 47439 + rho 47438 * rho 47438 * (-1)) =
      2 * (rho 47438 * rho 47439) := by
    rw [hd0, hd1, hd2]
    linear_combination r3061
  have hd4 : rho 47452 * (2 - (rho 47439 * rho 47439 + rho 47438 * rho 47438 * (-1))) =
      rho 47439 * rho 47439 - rho 47438 * rho 47438 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3062
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 47438, rho 47439⟩
    ⟨rho 47444, rho 47445⟩ ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 47451, rho 47452⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3063 rho ∧ Seg52.relationRow3064 rho ∧ Seg52.relationRow3065 rho ∧ Seg52.relationRow3066 rho ∧ Seg52.relationRow3067 rho ∧ Seg52.relationRow3068 rho ∧ Seg52.relationRow3069 rho ∧ Seg52.relationRow3070 rho ∧ Seg52.relationRow3071 rho ∧ Seg52.relationRow3072 rho ∧ Seg52.relationRow3073 rho ∧ Seg52.relationRow3074 rho ∧ Seg52.relationRow3075 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075⟩

theorem seg52In1_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46983 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47451, rho 47452⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 47451, rho 47452⟩
        ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 47464, rho 47465⟩ := by
  obtain ⟨r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, r3073, r3074, r3075⟩ := seg52In1_rows29 rho h
  unfold Seg52.relationRow3063 at r3063

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3063

  unfold Seg52.relationRow3064 at r3064

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3064

  unfold Seg52.relationRow3065 at r3065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3065

  unfold Seg52.relationRow3066 at r3066

  unfold Seg52.relationRow3067 at r3067

  unfold Seg52.relationRow3068 at r3068

  unfold Seg52.relationRow3069 at r3069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3069

  unfold Seg52.relationRow3070 at r3070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3070

  unfold Seg52.relationRow3071 at r3071

  unfold Seg52.relationRow3072 at r3072

  unfold Seg52.relationRow3073 at r3073

  unfold Seg52.relationRow3074 at r3074

  unfold Seg52.relationRow3075 at r3075

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX30 rho = seg52In1AccX29 rho + rho 47459 := by
    unfold seg52In1AccX30 seg52In1AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 29]

    ring

  have hnexty : seg52In1AccY30 rho = seg52In1AccY29 rho + rho 47460 := by
    unfold seg52In1AccY30 seg52In1AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 29]

    ring

  have ha0 : (rho 47451 + rho 47452) * (seg52In1AccX29 rho + seg52In1AccY29 rho) = rho 47453 := by
    unfold seg52In1AccX29 seg52In1AccY29
    linear_combination r3063
  have ha1 : rho 47452 * seg52In1AccX29 rho = rho 47454 := by
    unfold seg52In1AccX29
    linear_combination r3064
  have ha2 : rho 47451 * seg52In1AccY29 rho = rho 47455 := by
    unfold seg52In1AccY29
    linear_combination r3065
  have ha3 : 3021 * rho 47454 * rho 47455 = rho 47456 := by
    linear_combination r3066
  have ha4 : rho 47457 * (1 + rho 47456) = rho 47454 + rho 47455 := by
    linear_combination r3067
  have ha5 : rho 47458 * (1 - rho 47456) = rho 47453 - rho 47454 - rho 47455 := by
    linear_combination r3068
  have haddx :
      rho 47457 * (1 + 3021 * (rho 47452 * seg52In1AccX29 rho) * (rho 47451 * seg52In1AccY29 rho)) =
        rho 47452 * seg52In1AccX29 rho + rho 47451 * seg52In1AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47458 * (1 - 3021 * (rho 47452 * seg52In1AccX29 rho) * (rho 47451 * seg52In1AccY29 rho)) =
        (-1) * (rho 47452 * seg52In1AccX29 rho) - rho 47451 * seg52In1AccY29 rho +
          (seg52In1AccY29 rho - seg52In1AccX29 rho * (-1)) * (rho 47451 + rho 47452) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47458 * (1 - rho 47456) = rho 47453 - rho 47454 - rho 47455 := ha5
      _ = (-1) * rho 47454 - rho 47455 + (seg52In1AccY29 rho - seg52In1AccX29 rho * (-1)) *
          (rho 47451 + rho 47452) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX30 rho = seg52In1AccX29 rho - Bool.toZMod bit * (seg52In1AccX29 rho - rho 47457) := by
    have hd : rho 47459 = Bool.toZMod bit * (rho 47457 - seg52In1AccX29 rho) := by
      rw [← hbit]
      unfold seg52In1AccX29
      linear_combination -r3069
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY30 rho = seg52In1AccY29 rho - Bool.toZMod bit * (seg52In1AccY29 rho - rho 47458) := by
    have hd : rho 47460 = Bool.toZMod bit * (rho 47458 - seg52In1AccY29 rho) := by
      rw [← hbit]
      unfold seg52In1AccY29
      linear_combination -r3070
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47451 * rho 47452 = rho 47461 := by linear_combination r3071
  have hd1 : rho 47451 * rho 47451 = rho 47462 := by linear_combination r3072
  have hd2 : rho 47452 * rho 47452 = rho 47463 := by linear_combination r3073
  have hd3 : rho 47464 * (rho 47452 * rho 47452 + rho 47451 * rho 47451 * (-1)) =
      2 * (rho 47451 * rho 47452) := by
    rw [hd0, hd1, hd2]
    linear_combination r3074
  have hd4 : rho 47465 * (2 - (rho 47452 * rho 47452 + rho 47451 * rho 47451 * (-1))) =
      rho 47452 * rho 47452 - rho 47451 * rho 47451 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3075
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 47451, rho 47452⟩
    ⟨rho 47457, rho 47458⟩ ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 47464, rho 47465⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3076 rho ∧ Seg52.relationRow3077 rho ∧ Seg52.relationRow3078 rho ∧ Seg52.relationRow3079 rho ∧ Seg52.relationRow3080 rho ∧ Seg52.relationRow3081 rho ∧ Seg52.relationRow3082 rho ∧ Seg52.relationRow3083 rho ∧ Seg52.relationRow3084 rho ∧ Seg52.relationRow3085 rho ∧ Seg52.relationRow3086 rho ∧ Seg52.relationRow3087 rho ∧ Seg52.relationRow3088 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088⟩

theorem seg52In1_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46984 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47464, rho 47465⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 47464, rho 47465⟩
        ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 47477, rho 47478⟩ := by
  obtain ⟨r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, r3086, r3087, r3088⟩ := seg52In1_rows30 rho h
  unfold Seg52.relationRow3076 at r3076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3076

  unfold Seg52.relationRow3077 at r3077

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3077

  unfold Seg52.relationRow3078 at r3078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3078

  unfold Seg52.relationRow3079 at r3079

  unfold Seg52.relationRow3080 at r3080

  unfold Seg52.relationRow3081 at r3081

  unfold Seg52.relationRow3082 at r3082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3082

  unfold Seg52.relationRow3083 at r3083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3083

  unfold Seg52.relationRow3084 at r3084

  unfold Seg52.relationRow3085 at r3085

  unfold Seg52.relationRow3086 at r3086

  unfold Seg52.relationRow3087 at r3087

  unfold Seg52.relationRow3088 at r3088

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX31 rho = seg52In1AccX30 rho + rho 47472 := by
    unfold seg52In1AccX31 seg52In1AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 30]

    ring

  have hnexty : seg52In1AccY31 rho = seg52In1AccY30 rho + rho 47473 := by
    unfold seg52In1AccY31 seg52In1AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 30]

    ring

  have ha0 : (rho 47464 + rho 47465) * (seg52In1AccX30 rho + seg52In1AccY30 rho) = rho 47466 := by
    unfold seg52In1AccX30 seg52In1AccY30
    linear_combination r3076
  have ha1 : rho 47465 * seg52In1AccX30 rho = rho 47467 := by
    unfold seg52In1AccX30
    linear_combination r3077
  have ha2 : rho 47464 * seg52In1AccY30 rho = rho 47468 := by
    unfold seg52In1AccY30
    linear_combination r3078
  have ha3 : 3021 * rho 47467 * rho 47468 = rho 47469 := by
    linear_combination r3079
  have ha4 : rho 47470 * (1 + rho 47469) = rho 47467 + rho 47468 := by
    linear_combination r3080
  have ha5 : rho 47471 * (1 - rho 47469) = rho 47466 - rho 47467 - rho 47468 := by
    linear_combination r3081
  have haddx :
      rho 47470 * (1 + 3021 * (rho 47465 * seg52In1AccX30 rho) * (rho 47464 * seg52In1AccY30 rho)) =
        rho 47465 * seg52In1AccX30 rho + rho 47464 * seg52In1AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47471 * (1 - 3021 * (rho 47465 * seg52In1AccX30 rho) * (rho 47464 * seg52In1AccY30 rho)) =
        (-1) * (rho 47465 * seg52In1AccX30 rho) - rho 47464 * seg52In1AccY30 rho +
          (seg52In1AccY30 rho - seg52In1AccX30 rho * (-1)) * (rho 47464 + rho 47465) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47471 * (1 - rho 47469) = rho 47466 - rho 47467 - rho 47468 := ha5
      _ = (-1) * rho 47467 - rho 47468 + (seg52In1AccY30 rho - seg52In1AccX30 rho * (-1)) *
          (rho 47464 + rho 47465) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX31 rho = seg52In1AccX30 rho - Bool.toZMod bit * (seg52In1AccX30 rho - rho 47470) := by
    have hd : rho 47472 = Bool.toZMod bit * (rho 47470 - seg52In1AccX30 rho) := by
      rw [← hbit]
      unfold seg52In1AccX30
      linear_combination -r3082
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY31 rho = seg52In1AccY30 rho - Bool.toZMod bit * (seg52In1AccY30 rho - rho 47471) := by
    have hd : rho 47473 = Bool.toZMod bit * (rho 47471 - seg52In1AccY30 rho) := by
      rw [← hbit]
      unfold seg52In1AccY30
      linear_combination -r3083
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47464 * rho 47465 = rho 47474 := by linear_combination r3084
  have hd1 : rho 47464 * rho 47464 = rho 47475 := by linear_combination r3085
  have hd2 : rho 47465 * rho 47465 = rho 47476 := by linear_combination r3086
  have hd3 : rho 47477 * (rho 47465 * rho 47465 + rho 47464 * rho 47464 * (-1)) =
      2 * (rho 47464 * rho 47465) := by
    rw [hd0, hd1, hd2]
    linear_combination r3087
  have hd4 : rho 47478 * (2 - (rho 47465 * rho 47465 + rho 47464 * rho 47464 * (-1))) =
      rho 47465 * rho 47465 - rho 47464 * rho 47464 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3088
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 47464, rho 47465⟩
    ⟨rho 47470, rho 47471⟩ ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 47477, rho 47478⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3089 rho ∧ Seg52.relationRow3090 rho ∧ Seg52.relationRow3091 rho ∧ Seg52.relationRow3092 rho ∧ Seg52.relationRow3093 rho ∧ Seg52.relationRow3094 rho ∧ Seg52.relationRow3095 rho ∧ Seg52.relationRow3096 rho ∧ Seg52.relationRow3097 rho ∧ Seg52.relationRow3098 rho ∧ Seg52.relationRow3099 rho ∧ Seg52.relationRow3100 rho ∧ Seg52.relationRow3101 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101⟩

theorem seg52In1_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46985 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47477, rho 47478⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 47477, rho 47478⟩
        ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 47490, rho 47491⟩ := by
  obtain ⟨r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, r3099, r3100, r3101⟩ := seg52In1_rows31 rho h
  unfold Seg52.relationRow3089 at r3089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3089

  unfold Seg52.relationRow3090 at r3090

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3090

  unfold Seg52.relationRow3091 at r3091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3091

  unfold Seg52.relationRow3092 at r3092

  unfold Seg52.relationRow3093 at r3093

  unfold Seg52.relationRow3094 at r3094

  unfold Seg52.relationRow3095 at r3095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3095

  unfold Seg52.relationRow3096 at r3096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3096

  unfold Seg52.relationRow3097 at r3097

  unfold Seg52.relationRow3098 at r3098

  unfold Seg52.relationRow3099 at r3099

  unfold Seg52.relationRow3100 at r3100

  unfold Seg52.relationRow3101 at r3101

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX32 rho = seg52In1AccX31 rho + rho 47485 := by
    unfold seg52In1AccX32 seg52In1AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 31]

    ring

  have hnexty : seg52In1AccY32 rho = seg52In1AccY31 rho + rho 47486 := by
    unfold seg52In1AccY32 seg52In1AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 31]

    ring

  have ha0 : (rho 47477 + rho 47478) * (seg52In1AccX31 rho + seg52In1AccY31 rho) = rho 47479 := by
    unfold seg52In1AccX31 seg52In1AccY31
    linear_combination r3089
  have ha1 : rho 47478 * seg52In1AccX31 rho = rho 47480 := by
    unfold seg52In1AccX31
    linear_combination r3090
  have ha2 : rho 47477 * seg52In1AccY31 rho = rho 47481 := by
    unfold seg52In1AccY31
    linear_combination r3091
  have ha3 : 3021 * rho 47480 * rho 47481 = rho 47482 := by
    linear_combination r3092
  have ha4 : rho 47483 * (1 + rho 47482) = rho 47480 + rho 47481 := by
    linear_combination r3093
  have ha5 : rho 47484 * (1 - rho 47482) = rho 47479 - rho 47480 - rho 47481 := by
    linear_combination r3094
  have haddx :
      rho 47483 * (1 + 3021 * (rho 47478 * seg52In1AccX31 rho) * (rho 47477 * seg52In1AccY31 rho)) =
        rho 47478 * seg52In1AccX31 rho + rho 47477 * seg52In1AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47484 * (1 - 3021 * (rho 47478 * seg52In1AccX31 rho) * (rho 47477 * seg52In1AccY31 rho)) =
        (-1) * (rho 47478 * seg52In1AccX31 rho) - rho 47477 * seg52In1AccY31 rho +
          (seg52In1AccY31 rho - seg52In1AccX31 rho * (-1)) * (rho 47477 + rho 47478) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47484 * (1 - rho 47482) = rho 47479 - rho 47480 - rho 47481 := ha5
      _ = (-1) * rho 47480 - rho 47481 + (seg52In1AccY31 rho - seg52In1AccX31 rho * (-1)) *
          (rho 47477 + rho 47478) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX32 rho = seg52In1AccX31 rho - Bool.toZMod bit * (seg52In1AccX31 rho - rho 47483) := by
    have hd : rho 47485 = Bool.toZMod bit * (rho 47483 - seg52In1AccX31 rho) := by
      rw [← hbit]
      unfold seg52In1AccX31
      linear_combination -r3095
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY32 rho = seg52In1AccY31 rho - Bool.toZMod bit * (seg52In1AccY31 rho - rho 47484) := by
    have hd : rho 47486 = Bool.toZMod bit * (rho 47484 - seg52In1AccY31 rho) := by
      rw [← hbit]
      unfold seg52In1AccY31
      linear_combination -r3096
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47477 * rho 47478 = rho 47487 := by linear_combination r3097
  have hd1 : rho 47477 * rho 47477 = rho 47488 := by linear_combination r3098
  have hd2 : rho 47478 * rho 47478 = rho 47489 := by linear_combination r3099
  have hd3 : rho 47490 * (rho 47478 * rho 47478 + rho 47477 * rho 47477 * (-1)) =
      2 * (rho 47477 * rho 47478) := by
    rw [hd0, hd1, hd2]
    linear_combination r3100
  have hd4 : rho 47491 * (2 - (rho 47478 * rho 47478 + rho 47477 * rho 47477 * (-1))) =
      rho 47478 * rho 47478 - rho 47477 * rho 47477 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3101
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 47477, rho 47478⟩
    ⟨rho 47483, rho 47484⟩ ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 47490, rho 47491⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3102 rho ∧ Seg52.relationRow3103 rho ∧ Seg52.relationRow3104 rho ∧ Seg52.relationRow3105 rho ∧ Seg52.relationRow3106 rho ∧ Seg52.relationRow3107 rho ∧ Seg52.relationRow3108 rho ∧ Seg52.relationRow3109 rho ∧ Seg52.relationRow3110 rho ∧ Seg52.relationRow3111 rho ∧ Seg52.relationRow3112 rho ∧ Seg52.relationRow3113 rho ∧ Seg52.relationRow3114 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114, _, _, _, _, _⟩

  exact ⟨r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114⟩

theorem seg52In1_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 46986 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47490, rho 47491⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 47490, rho 47491⟩
        ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 47503, rho 47504⟩ := by
  obtain ⟨r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, r3112, r3113, r3114⟩ := seg52In1_rows32 rho h
  unfold Seg52.relationRow3102 at r3102

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3102

  unfold Seg52.relationRow3103 at r3103

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3103

  unfold Seg52.relationRow3104 at r3104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3104

  unfold Seg52.relationRow3105 at r3105

  unfold Seg52.relationRow3106 at r3106

  unfold Seg52.relationRow3107 at r3107

  unfold Seg52.relationRow3108 at r3108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3108

  unfold Seg52.relationRow3109 at r3109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3109

  unfold Seg52.relationRow3110 at r3110

  unfold Seg52.relationRow3111 at r3111

  unfold Seg52.relationRow3112 at r3112

  unfold Seg52.relationRow3113 at r3113

  unfold Seg52.relationRow3114 at r3114

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX33 rho = seg52In1AccX32 rho + rho 47498 := by
    unfold seg52In1AccX33 seg52In1AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47082 13 32]

    ring

  have hnexty : seg52In1AccY33 rho = seg52In1AccY32 rho + rho 47499 := by
    unfold seg52In1AccY33 seg52In1AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47083 13 32]

    ring

  have ha0 : (rho 47490 + rho 47491) * (seg52In1AccX32 rho + seg52In1AccY32 rho) = rho 47492 := by
    unfold seg52In1AccX32 seg52In1AccY32
    linear_combination r3102
  have ha1 : rho 47491 * seg52In1AccX32 rho = rho 47493 := by
    unfold seg52In1AccX32
    linear_combination r3103
  have ha2 : rho 47490 * seg52In1AccY32 rho = rho 47494 := by
    unfold seg52In1AccY32
    linear_combination r3104
  have ha3 : 3021 * rho 47493 * rho 47494 = rho 47495 := by
    linear_combination r3105
  have ha4 : rho 47496 * (1 + rho 47495) = rho 47493 + rho 47494 := by
    linear_combination r3106
  have ha5 : rho 47497 * (1 - rho 47495) = rho 47492 - rho 47493 - rho 47494 := by
    linear_combination r3107
  have haddx :
      rho 47496 * (1 + 3021 * (rho 47491 * seg52In1AccX32 rho) * (rho 47490 * seg52In1AccY32 rho)) =
        rho 47491 * seg52In1AccX32 rho + rho 47490 * seg52In1AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47497 * (1 - 3021 * (rho 47491 * seg52In1AccX32 rho) * (rho 47490 * seg52In1AccY32 rho)) =
        (-1) * (rho 47491 * seg52In1AccX32 rho) - rho 47490 * seg52In1AccY32 rho +
          (seg52In1AccY32 rho - seg52In1AccX32 rho * (-1)) * (rho 47490 + rho 47491) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47497 * (1 - rho 47495) = rho 47492 - rho 47493 - rho 47494 := ha5
      _ = (-1) * rho 47493 - rho 47494 + (seg52In1AccY32 rho - seg52In1AccX32 rho * (-1)) *
          (rho 47490 + rho 47491) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX33 rho = seg52In1AccX32 rho - Bool.toZMod bit * (seg52In1AccX32 rho - rho 47496) := by
    have hd : rho 47498 = Bool.toZMod bit * (rho 47496 - seg52In1AccX32 rho) := by
      rw [← hbit]
      unfold seg52In1AccX32
      linear_combination -r3108
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY33 rho = seg52In1AccY32 rho - Bool.toZMod bit * (seg52In1AccY32 rho - rho 47497) := by
    have hd : rho 47499 = Bool.toZMod bit * (rho 47497 - seg52In1AccY32 rho) := by
      rw [← hbit]
      unfold seg52In1AccY32
      linear_combination -r3109
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47490 * rho 47491 = rho 47500 := by linear_combination r3110
  have hd1 : rho 47490 * rho 47490 = rho 47501 := by linear_combination r3111
  have hd2 : rho 47491 * rho 47491 = rho 47502 := by linear_combination r3112
  have hd3 : rho 47503 * (rho 47491 * rho 47491 + rho 47490 * rho 47490 * (-1)) =
      2 * (rho 47490 * rho 47491) := by
    rw [hd0, hd1, hd2]
    linear_combination r3113
  have hd4 : rho 47504 * (2 - (rho 47491 * rho 47491 + rho 47490 * rho 47490 * (-1))) =
      rho 47491 * rho 47491 - rho 47490 * rho 47490 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3114
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 47490, rho 47491⟩
    ⟨rho 47496, rho 47497⟩ ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 47503, rho 47504⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (46954 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg52In1_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg52In1_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg52In1_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg52In1_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg52In1_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg52In1_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg52In1_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg52In1_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg52In1_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg52In1_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
