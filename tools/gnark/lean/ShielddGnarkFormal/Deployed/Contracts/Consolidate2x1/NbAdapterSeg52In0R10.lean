import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2969 rho ∧ Seg52.relationRow2970 rho ∧ Seg52.relationRow2971 rho ∧ Seg52.relationRow2972 rho ∧ Seg52.relationRow2973 rho ∧ Seg52.relationRow2974 rho ∧ Seg52.relationRow2975 rho ∧ Seg52.relationRow2976 rho ∧ Seg52.relationRow2977 rho ∧ Seg52.relationRow2978 rho ∧ Seg52.relationRow2979 rho ∧ Seg52.relationRow2980 rho ∧ Seg52.relationRow2981 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981⟩

theorem seg52In0_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45918 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47358, rho 47359⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 47358, rho 47359⟩
        ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 47371, rho 47372⟩ := by
  obtain ⟨r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981⟩ := seg52In0_rows110 rho h
  unfold Seg52.relationRow2969 at r2969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2969

  unfold Seg52.relationRow2970 at r2970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2970

  unfold Seg52.relationRow2971 at r2971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2971

  unfold Seg52.relationRow2972 at r2972

  unfold Seg52.relationRow2973 at r2973

  unfold Seg52.relationRow2974 at r2974

  unfold Seg52.relationRow2975 at r2975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2975

  unfold Seg52.relationRow2976 at r2976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2976

  unfold Seg52.relationRow2977 at r2977

  unfold Seg52.relationRow2978 at r2978

  unfold Seg52.relationRow2979 at r2979

  unfold Seg52.relationRow2980 at r2980

  unfold Seg52.relationRow2981 at r2981

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX111 rho = seg52In0AccX110 rho + rho 47366 := by
    unfold seg52In0AccX111 seg52In0AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 110]

    ring

  have hnexty : seg52In0AccY111 rho = seg52In0AccY110 rho + rho 47367 := by
    unfold seg52In0AccY111 seg52In0AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 110]

    ring

  have ha0 : (rho 47358 + rho 47359) * (seg52In0AccX110 rho + seg52In0AccY110 rho) = rho 47360 := by
    unfold seg52In0AccX110 seg52In0AccY110
    linear_combination r2969
  have ha1 : rho 47359 * seg52In0AccX110 rho = rho 47361 := by
    unfold seg52In0AccX110
    linear_combination r2970
  have ha2 : rho 47358 * seg52In0AccY110 rho = rho 47362 := by
    unfold seg52In0AccY110
    linear_combination r2971
  have ha3 : 3021 * rho 47361 * rho 47362 = rho 47363 := by
    linear_combination r2972
  have ha4 : rho 47364 * (1 + rho 47363) = rho 47361 + rho 47362 := by
    linear_combination r2973
  have ha5 : rho 47365 * (1 - rho 47363) = rho 47360 - rho 47361 - rho 47362 := by
    linear_combination r2974
  have haddx :
      rho 47364 * (1 + 3021 * (rho 47359 * seg52In0AccX110 rho) * (rho 47358 * seg52In0AccY110 rho)) =
        rho 47359 * seg52In0AccX110 rho + rho 47358 * seg52In0AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47365 * (1 - 3021 * (rho 47359 * seg52In0AccX110 rho) * (rho 47358 * seg52In0AccY110 rho)) =
        (-1) * (rho 47359 * seg52In0AccX110 rho) - rho 47358 * seg52In0AccY110 rho +
          (seg52In0AccY110 rho - seg52In0AccX110 rho * (-1)) * (rho 47358 + rho 47359) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47365 * (1 - rho 47363) = rho 47360 - rho 47361 - rho 47362 := ha5
      _ = (-1) * rho 47361 - rho 47362 + (seg52In0AccY110 rho - seg52In0AccX110 rho * (-1)) *
          (rho 47358 + rho 47359) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX111 rho = seg52In0AccX110 rho - Bool.toZMod bit * (seg52In0AccX110 rho - rho 47364) := by
    have hd : rho 47366 = Bool.toZMod bit * (rho 47364 - seg52In0AccX110 rho) := by
      rw [← hbit]
      unfold seg52In0AccX110
      linear_combination -r2975
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY111 rho = seg52In0AccY110 rho - Bool.toZMod bit * (seg52In0AccY110 rho - rho 47365) := by
    have hd : rho 47367 = Bool.toZMod bit * (rho 47365 - seg52In0AccY110 rho) := by
      rw [← hbit]
      unfold seg52In0AccY110
      linear_combination -r2976
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47358 * rho 47359 = rho 47368 := by linear_combination r2977
  have hd1 : rho 47358 * rho 47358 = rho 47369 := by linear_combination r2978
  have hd2 : rho 47359 * rho 47359 = rho 47370 := by linear_combination r2979
  have hd3 : rho 47371 * (rho 47359 * rho 47359 + rho 47358 * rho 47358 * (-1)) =
      2 * (rho 47358 * rho 47359) := by
    rw [hd0, hd1, hd2]
    linear_combination r2980
  have hd4 : rho 47372 * (2 - (rho 47359 * rho 47359 + rho 47358 * rho 47358 * (-1))) =
      rho 47359 * rho 47359 - rho 47358 * rho 47358 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2981
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 47358, rho 47359⟩
    ⟨rho 47364, rho 47365⟩ ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 47371, rho 47372⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2982 rho ∧ Seg52.relationRow2983 rho ∧ Seg52.relationRow2984 rho ∧ Seg52.relationRow2985 rho ∧ Seg52.relationRow2986 rho ∧ Seg52.relationRow2987 rho ∧ Seg52.relationRow2988 rho ∧ Seg52.relationRow2989 rho ∧ Seg52.relationRow2990 rho ∧ Seg52.relationRow2991 rho ∧ Seg52.relationRow2992 rho ∧ Seg52.relationRow2993 rho ∧ Seg52.relationRow2994 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994⟩

theorem seg52In0_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45919 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47371, rho 47372⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 47371, rho 47372⟩
        ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 47384, rho 47385⟩ := by
  obtain ⟨r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994⟩ := seg52In0_rows111 rho h
  unfold Seg52.relationRow2982 at r2982

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2982

  unfold Seg52.relationRow2983 at r2983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2983

  unfold Seg52.relationRow2984 at r2984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2984

  unfold Seg52.relationRow2985 at r2985

  unfold Seg52.relationRow2986 at r2986

  unfold Seg52.relationRow2987 at r2987

  unfold Seg52.relationRow2988 at r2988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2988

  unfold Seg52.relationRow2989 at r2989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2989

  unfold Seg52.relationRow2990 at r2990

  unfold Seg52.relationRow2991 at r2991

  unfold Seg52.relationRow2992 at r2992

  unfold Seg52.relationRow2993 at r2993

  unfold Seg52.relationRow2994 at r2994

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX112 rho = seg52In0AccX111 rho + rho 47379 := by
    unfold seg52In0AccX112 seg52In0AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 111]

    ring

  have hnexty : seg52In0AccY112 rho = seg52In0AccY111 rho + rho 47380 := by
    unfold seg52In0AccY112 seg52In0AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 111]

    ring

  have ha0 : (rho 47371 + rho 47372) * (seg52In0AccX111 rho + seg52In0AccY111 rho) = rho 47373 := by
    unfold seg52In0AccX111 seg52In0AccY111
    linear_combination r2982
  have ha1 : rho 47372 * seg52In0AccX111 rho = rho 47374 := by
    unfold seg52In0AccX111
    linear_combination r2983
  have ha2 : rho 47371 * seg52In0AccY111 rho = rho 47375 := by
    unfold seg52In0AccY111
    linear_combination r2984
  have ha3 : 3021 * rho 47374 * rho 47375 = rho 47376 := by
    linear_combination r2985
  have ha4 : rho 47377 * (1 + rho 47376) = rho 47374 + rho 47375 := by
    linear_combination r2986
  have ha5 : rho 47378 * (1 - rho 47376) = rho 47373 - rho 47374 - rho 47375 := by
    linear_combination r2987
  have haddx :
      rho 47377 * (1 + 3021 * (rho 47372 * seg52In0AccX111 rho) * (rho 47371 * seg52In0AccY111 rho)) =
        rho 47372 * seg52In0AccX111 rho + rho 47371 * seg52In0AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47378 * (1 - 3021 * (rho 47372 * seg52In0AccX111 rho) * (rho 47371 * seg52In0AccY111 rho)) =
        (-1) * (rho 47372 * seg52In0AccX111 rho) - rho 47371 * seg52In0AccY111 rho +
          (seg52In0AccY111 rho - seg52In0AccX111 rho * (-1)) * (rho 47371 + rho 47372) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47378 * (1 - rho 47376) = rho 47373 - rho 47374 - rho 47375 := ha5
      _ = (-1) * rho 47374 - rho 47375 + (seg52In0AccY111 rho - seg52In0AccX111 rho * (-1)) *
          (rho 47371 + rho 47372) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX112 rho = seg52In0AccX111 rho - Bool.toZMod bit * (seg52In0AccX111 rho - rho 47377) := by
    have hd : rho 47379 = Bool.toZMod bit * (rho 47377 - seg52In0AccX111 rho) := by
      rw [← hbit]
      unfold seg52In0AccX111
      linear_combination -r2988
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY112 rho = seg52In0AccY111 rho - Bool.toZMod bit * (seg52In0AccY111 rho - rho 47378) := by
    have hd : rho 47380 = Bool.toZMod bit * (rho 47378 - seg52In0AccY111 rho) := by
      rw [← hbit]
      unfold seg52In0AccY111
      linear_combination -r2989
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47371 * rho 47372 = rho 47381 := by linear_combination r2990
  have hd1 : rho 47371 * rho 47371 = rho 47382 := by linear_combination r2991
  have hd2 : rho 47372 * rho 47372 = rho 47383 := by linear_combination r2992
  have hd3 : rho 47384 * (rho 47372 * rho 47372 + rho 47371 * rho 47371 * (-1)) =
      2 * (rho 47371 * rho 47372) := by
    rw [hd0, hd1, hd2]
    linear_combination r2993
  have hd4 : rho 47385 * (2 - (rho 47372 * rho 47372 + rho 47371 * rho 47371 * (-1))) =
      rho 47372 * rho 47372 - rho 47371 * rho 47371 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2994
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX111 rho, seg52In0AccY111 rho⟩ ⟨rho 47371, rho 47372⟩
    ⟨rho 47377, rho 47378⟩ ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 47384, rho 47385⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2995 rho ∧ Seg52.relationRow2996 rho ∧ Seg52.relationRow2997 rho ∧ Seg52.relationRow2998 rho ∧ Seg52.relationRow2999 rho ∧ Seg52.relationRow3000 rho ∧ Seg52.relationRow3001 rho ∧ Seg52.relationRow3002 rho ∧ Seg52.relationRow3003 rho ∧ Seg52.relationRow3004 rho ∧ Seg52.relationRow3005 rho ∧ Seg52.relationRow3006 rho ∧ Seg52.relationRow3007 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007⟩

theorem seg52In0_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45920 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47384, rho 47385⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 47384, rho 47385⟩
        ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 47397, rho 47398⟩ := by
  obtain ⟨r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007⟩ := seg52In0_rows112 rho h
  unfold Seg52.relationRow2995 at r2995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2995

  unfold Seg52.relationRow2996 at r2996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2996

  unfold Seg52.relationRow2997 at r2997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2997

  unfold Seg52.relationRow2998 at r2998

  unfold Seg52.relationRow2999 at r2999

  unfold Seg52.relationRow3000 at r3000

  unfold Seg52.relationRow3001 at r3001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3001

  unfold Seg52.relationRow3002 at r3002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3002

  unfold Seg52.relationRow3003 at r3003

  unfold Seg52.relationRow3004 at r3004

  unfold Seg52.relationRow3005 at r3005

  unfold Seg52.relationRow3006 at r3006

  unfold Seg52.relationRow3007 at r3007

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX113 rho = seg52In0AccX112 rho + rho 47392 := by
    unfold seg52In0AccX113 seg52In0AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 112]

    ring

  have hnexty : seg52In0AccY113 rho = seg52In0AccY112 rho + rho 47393 := by
    unfold seg52In0AccY113 seg52In0AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 112]

    ring

  have ha0 : (rho 47384 + rho 47385) * (seg52In0AccX112 rho + seg52In0AccY112 rho) = rho 47386 := by
    unfold seg52In0AccX112 seg52In0AccY112
    linear_combination r2995
  have ha1 : rho 47385 * seg52In0AccX112 rho = rho 47387 := by
    unfold seg52In0AccX112
    linear_combination r2996
  have ha2 : rho 47384 * seg52In0AccY112 rho = rho 47388 := by
    unfold seg52In0AccY112
    linear_combination r2997
  have ha3 : 3021 * rho 47387 * rho 47388 = rho 47389 := by
    linear_combination r2998
  have ha4 : rho 47390 * (1 + rho 47389) = rho 47387 + rho 47388 := by
    linear_combination r2999
  have ha5 : rho 47391 * (1 - rho 47389) = rho 47386 - rho 47387 - rho 47388 := by
    linear_combination r3000
  have haddx :
      rho 47390 * (1 + 3021 * (rho 47385 * seg52In0AccX112 rho) * (rho 47384 * seg52In0AccY112 rho)) =
        rho 47385 * seg52In0AccX112 rho + rho 47384 * seg52In0AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47391 * (1 - 3021 * (rho 47385 * seg52In0AccX112 rho) * (rho 47384 * seg52In0AccY112 rho)) =
        (-1) * (rho 47385 * seg52In0AccX112 rho) - rho 47384 * seg52In0AccY112 rho +
          (seg52In0AccY112 rho - seg52In0AccX112 rho * (-1)) * (rho 47384 + rho 47385) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47391 * (1 - rho 47389) = rho 47386 - rho 47387 - rho 47388 := ha5
      _ = (-1) * rho 47387 - rho 47388 + (seg52In0AccY112 rho - seg52In0AccX112 rho * (-1)) *
          (rho 47384 + rho 47385) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX113 rho = seg52In0AccX112 rho - Bool.toZMod bit * (seg52In0AccX112 rho - rho 47390) := by
    have hd : rho 47392 = Bool.toZMod bit * (rho 47390 - seg52In0AccX112 rho) := by
      rw [← hbit]
      unfold seg52In0AccX112
      linear_combination -r3001
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY113 rho = seg52In0AccY112 rho - Bool.toZMod bit * (seg52In0AccY112 rho - rho 47391) := by
    have hd : rho 47393 = Bool.toZMod bit * (rho 47391 - seg52In0AccY112 rho) := by
      rw [← hbit]
      unfold seg52In0AccY112
      linear_combination -r3002
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47384 * rho 47385 = rho 47394 := by linear_combination r3003
  have hd1 : rho 47384 * rho 47384 = rho 47395 := by linear_combination r3004
  have hd2 : rho 47385 * rho 47385 = rho 47396 := by linear_combination r3005
  have hd3 : rho 47397 * (rho 47385 * rho 47385 + rho 47384 * rho 47384 * (-1)) =
      2 * (rho 47384 * rho 47385) := by
    rw [hd0, hd1, hd2]
    linear_combination r3006
  have hd4 : rho 47398 * (2 - (rho 47385 * rho 47385 + rho 47384 * rho 47384 * (-1))) =
      rho 47385 * rho 47385 - rho 47384 * rho 47384 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3007
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX112 rho, seg52In0AccY112 rho⟩ ⟨rho 47384, rho 47385⟩
    ⟨rho 47390, rho 47391⟩ ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 47397, rho 47398⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3008 rho ∧ Seg52.relationRow3009 rho ∧ Seg52.relationRow3010 rho ∧ Seg52.relationRow3011 rho ∧ Seg52.relationRow3012 rho ∧ Seg52.relationRow3013 rho ∧ Seg52.relationRow3014 rho ∧ Seg52.relationRow3015 rho ∧ Seg52.relationRow3016 rho ∧ Seg52.relationRow3017 rho ∧ Seg52.relationRow3018 rho ∧ Seg52.relationRow3019 rho ∧ Seg52.relationRow3020 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020⟩

theorem seg52In0_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45921 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47397, rho 47398⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 47397, rho 47398⟩
        ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 47410, rho 47411⟩ := by
  obtain ⟨r3008, r3009, r3010, r3011, r3012, r3013, r3014, r3015, r3016, r3017, r3018, r3019, r3020⟩ := seg52In0_rows113 rho h
  unfold Seg52.relationRow3008 at r3008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3008

  unfold Seg52.relationRow3009 at r3009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3009

  unfold Seg52.relationRow3010 at r3010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3010

  unfold Seg52.relationRow3011 at r3011

  unfold Seg52.relationRow3012 at r3012

  unfold Seg52.relationRow3013 at r3013

  unfold Seg52.relationRow3014 at r3014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3014

  unfold Seg52.relationRow3015 at r3015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3015

  unfold Seg52.relationRow3016 at r3016

  unfold Seg52.relationRow3017 at r3017

  unfold Seg52.relationRow3018 at r3018

  unfold Seg52.relationRow3019 at r3019

  unfold Seg52.relationRow3020 at r3020

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX114 rho = seg52In0AccX113 rho + rho 47405 := by
    unfold seg52In0AccX114 seg52In0AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 113]

    ring

  have hnexty : seg52In0AccY114 rho = seg52In0AccY113 rho + rho 47406 := by
    unfold seg52In0AccY114 seg52In0AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 113]

    ring

  have ha0 : (rho 47397 + rho 47398) * (seg52In0AccX113 rho + seg52In0AccY113 rho) = rho 47399 := by
    unfold seg52In0AccX113 seg52In0AccY113
    linear_combination r3008
  have ha1 : rho 47398 * seg52In0AccX113 rho = rho 47400 := by
    unfold seg52In0AccX113
    linear_combination r3009
  have ha2 : rho 47397 * seg52In0AccY113 rho = rho 47401 := by
    unfold seg52In0AccY113
    linear_combination r3010
  have ha3 : 3021 * rho 47400 * rho 47401 = rho 47402 := by
    linear_combination r3011
  have ha4 : rho 47403 * (1 + rho 47402) = rho 47400 + rho 47401 := by
    linear_combination r3012
  have ha5 : rho 47404 * (1 - rho 47402) = rho 47399 - rho 47400 - rho 47401 := by
    linear_combination r3013
  have haddx :
      rho 47403 * (1 + 3021 * (rho 47398 * seg52In0AccX113 rho) * (rho 47397 * seg52In0AccY113 rho)) =
        rho 47398 * seg52In0AccX113 rho + rho 47397 * seg52In0AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47404 * (1 - 3021 * (rho 47398 * seg52In0AccX113 rho) * (rho 47397 * seg52In0AccY113 rho)) =
        (-1) * (rho 47398 * seg52In0AccX113 rho) - rho 47397 * seg52In0AccY113 rho +
          (seg52In0AccY113 rho - seg52In0AccX113 rho * (-1)) * (rho 47397 + rho 47398) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47404 * (1 - rho 47402) = rho 47399 - rho 47400 - rho 47401 := ha5
      _ = (-1) * rho 47400 - rho 47401 + (seg52In0AccY113 rho - seg52In0AccX113 rho * (-1)) *
          (rho 47397 + rho 47398) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX114 rho = seg52In0AccX113 rho - Bool.toZMod bit * (seg52In0AccX113 rho - rho 47403) := by
    have hd : rho 47405 = Bool.toZMod bit * (rho 47403 - seg52In0AccX113 rho) := by
      rw [← hbit]
      unfold seg52In0AccX113
      linear_combination -r3014
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY114 rho = seg52In0AccY113 rho - Bool.toZMod bit * (seg52In0AccY113 rho - rho 47404) := by
    have hd : rho 47406 = Bool.toZMod bit * (rho 47404 - seg52In0AccY113 rho) := by
      rw [← hbit]
      unfold seg52In0AccY113
      linear_combination -r3015
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47397 * rho 47398 = rho 47407 := by linear_combination r3016
  have hd1 : rho 47397 * rho 47397 = rho 47408 := by linear_combination r3017
  have hd2 : rho 47398 * rho 47398 = rho 47409 := by linear_combination r3018
  have hd3 : rho 47410 * (rho 47398 * rho 47398 + rho 47397 * rho 47397 * (-1)) =
      2 * (rho 47397 * rho 47398) := by
    rw [hd0, hd1, hd2]
    linear_combination r3019
  have hd4 : rho 47411 * (2 - (rho 47398 * rho 47398 + rho 47397 * rho 47397 * (-1))) =
      rho 47398 * rho 47398 - rho 47397 * rho 47397 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3020
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX113 rho, seg52In0AccY113 rho⟩ ⟨rho 47397, rho 47398⟩
    ⟨rho 47403, rho 47404⟩ ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 47410, rho 47411⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3021 rho ∧ Seg52.relationRow3022 rho ∧ Seg52.relationRow3023 rho ∧ Seg52.relationRow3024 rho ∧ Seg52.relationRow3025 rho ∧ Seg52.relationRow3026 rho ∧ Seg52.relationRow3027 rho ∧ Seg52.relationRow3028 rho ∧ Seg52.relationRow3029 rho ∧ Seg52.relationRow3030 rho ∧ Seg52.relationRow3031 rho ∧ Seg52.relationRow3032 rho ∧ Seg52.relationRow3033 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033, _, _, _, _, _, _⟩

  exact ⟨r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033⟩

theorem seg52In0_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45922 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47410, rho 47411⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 47410, rho 47411⟩
        ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 47423, rho 47424⟩ := by
  obtain ⟨r3021, r3022, r3023, r3024, r3025, r3026, r3027, r3028, r3029, r3030, r3031, r3032, r3033⟩ := seg52In0_rows114 rho h
  unfold Seg52.relationRow3021 at r3021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3021

  unfold Seg52.relationRow3022 at r3022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3022

  unfold Seg52.relationRow3023 at r3023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3023

  unfold Seg52.relationRow3024 at r3024

  unfold Seg52.relationRow3025 at r3025

  unfold Seg52.relationRow3026 at r3026

  unfold Seg52.relationRow3027 at r3027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3027

  unfold Seg52.relationRow3028 at r3028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3028

  unfold Seg52.relationRow3029 at r3029

  unfold Seg52.relationRow3030 at r3030

  unfold Seg52.relationRow3031 at r3031

  unfold Seg52.relationRow3032 at r3032

  unfold Seg52.relationRow3033 at r3033

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX115 rho = seg52In0AccX114 rho + rho 47418 := by
    unfold seg52In0AccX115 seg52In0AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 114]

    ring

  have hnexty : seg52In0AccY115 rho = seg52In0AccY114 rho + rho 47419 := by
    unfold seg52In0AccY115 seg52In0AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 114]

    ring

  have ha0 : (rho 47410 + rho 47411) * (seg52In0AccX114 rho + seg52In0AccY114 rho) = rho 47412 := by
    unfold seg52In0AccX114 seg52In0AccY114
    linear_combination r3021
  have ha1 : rho 47411 * seg52In0AccX114 rho = rho 47413 := by
    unfold seg52In0AccX114
    linear_combination r3022
  have ha2 : rho 47410 * seg52In0AccY114 rho = rho 47414 := by
    unfold seg52In0AccY114
    linear_combination r3023
  have ha3 : 3021 * rho 47413 * rho 47414 = rho 47415 := by
    linear_combination r3024
  have ha4 : rho 47416 * (1 + rho 47415) = rho 47413 + rho 47414 := by
    linear_combination r3025
  have ha5 : rho 47417 * (1 - rho 47415) = rho 47412 - rho 47413 - rho 47414 := by
    linear_combination r3026
  have haddx :
      rho 47416 * (1 + 3021 * (rho 47411 * seg52In0AccX114 rho) * (rho 47410 * seg52In0AccY114 rho)) =
        rho 47411 * seg52In0AccX114 rho + rho 47410 * seg52In0AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47417 * (1 - 3021 * (rho 47411 * seg52In0AccX114 rho) * (rho 47410 * seg52In0AccY114 rho)) =
        (-1) * (rho 47411 * seg52In0AccX114 rho) - rho 47410 * seg52In0AccY114 rho +
          (seg52In0AccY114 rho - seg52In0AccX114 rho * (-1)) * (rho 47410 + rho 47411) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47417 * (1 - rho 47415) = rho 47412 - rho 47413 - rho 47414 := ha5
      _ = (-1) * rho 47413 - rho 47414 + (seg52In0AccY114 rho - seg52In0AccX114 rho * (-1)) *
          (rho 47410 + rho 47411) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX115 rho = seg52In0AccX114 rho - Bool.toZMod bit * (seg52In0AccX114 rho - rho 47416) := by
    have hd : rho 47418 = Bool.toZMod bit * (rho 47416 - seg52In0AccX114 rho) := by
      rw [← hbit]
      unfold seg52In0AccX114
      linear_combination -r3027
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY115 rho = seg52In0AccY114 rho - Bool.toZMod bit * (seg52In0AccY114 rho - rho 47417) := by
    have hd : rho 47419 = Bool.toZMod bit * (rho 47417 - seg52In0AccY114 rho) := by
      rw [← hbit]
      unfold seg52In0AccY114
      linear_combination -r3028
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47410 * rho 47411 = rho 47420 := by linear_combination r3029
  have hd1 : rho 47410 * rho 47410 = rho 47421 := by linear_combination r3030
  have hd2 : rho 47411 * rho 47411 = rho 47422 := by linear_combination r3031
  have hd3 : rho 47423 * (rho 47411 * rho 47411 + rho 47410 * rho 47410 * (-1)) =
      2 * (rho 47410 * rho 47411) := by
    rw [hd0, hd1, hd2]
    linear_combination r3032
  have hd4 : rho 47424 * (2 - (rho 47411 * rho 47411 + rho 47410 * rho 47410 * (-1))) =
      rho 47411 * rho 47411 - rho 47410 * rho 47410 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3033
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX114 rho, seg52In0AccY114 rho⟩ ⟨rho 47410, rho 47411⟩
    ⟨rho 47416, rho 47417⟩ ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 47423, rho 47424⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3034 rho ∧ Seg52.relationRow3035 rho ∧ Seg52.relationRow3036 rho ∧ Seg52.relationRow3037 rho ∧ Seg52.relationRow3038 rho ∧ Seg52.relationRow3039 rho ∧ Seg52.relationRow3040 rho ∧ Seg52.relationRow3041 rho ∧ Seg52.relationRow3042 rho ∧ Seg52.relationRow3043 rho ∧ Seg52.relationRow3044 rho ∧ Seg52.relationRow3045 rho ∧ Seg52.relationRow3046 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart37 at p37

  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3034, r3035, r3036, r3037, r3038, r3039⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨r3040, r3041, r3042, r3043, r3044, r3045, r3046, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046⟩

theorem seg52In0_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45923 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47423, rho 47424⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 47423, rho 47424⟩
        ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 47436, rho 47437⟩ := by
  obtain ⟨r3034, r3035, r3036, r3037, r3038, r3039, r3040, r3041, r3042, r3043, r3044, r3045, r3046⟩ := seg52In0_rows115 rho h
  unfold Seg52.relationRow3034 at r3034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3034

  unfold Seg52.relationRow3035 at r3035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3035

  unfold Seg52.relationRow3036 at r3036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3036

  unfold Seg52.relationRow3037 at r3037

  unfold Seg52.relationRow3038 at r3038

  unfold Seg52.relationRow3039 at r3039

  unfold Seg52.relationRow3040 at r3040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3040

  unfold Seg52.relationRow3041 at r3041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3041

  unfold Seg52.relationRow3042 at r3042

  unfold Seg52.relationRow3043 at r3043

  unfold Seg52.relationRow3044 at r3044

  unfold Seg52.relationRow3045 at r3045

  unfold Seg52.relationRow3046 at r3046

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX116 rho = seg52In0AccX115 rho + rho 47431 := by
    unfold seg52In0AccX116 seg52In0AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 115]

    ring

  have hnexty : seg52In0AccY116 rho = seg52In0AccY115 rho + rho 47432 := by
    unfold seg52In0AccY116 seg52In0AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 115]

    ring

  have ha0 : (rho 47423 + rho 47424) * (seg52In0AccX115 rho + seg52In0AccY115 rho) = rho 47425 := by
    unfold seg52In0AccX115 seg52In0AccY115
    linear_combination r3034
  have ha1 : rho 47424 * seg52In0AccX115 rho = rho 47426 := by
    unfold seg52In0AccX115
    linear_combination r3035
  have ha2 : rho 47423 * seg52In0AccY115 rho = rho 47427 := by
    unfold seg52In0AccY115
    linear_combination r3036
  have ha3 : 3021 * rho 47426 * rho 47427 = rho 47428 := by
    linear_combination r3037
  have ha4 : rho 47429 * (1 + rho 47428) = rho 47426 + rho 47427 := by
    linear_combination r3038
  have ha5 : rho 47430 * (1 - rho 47428) = rho 47425 - rho 47426 - rho 47427 := by
    linear_combination r3039
  have haddx :
      rho 47429 * (1 + 3021 * (rho 47424 * seg52In0AccX115 rho) * (rho 47423 * seg52In0AccY115 rho)) =
        rho 47424 * seg52In0AccX115 rho + rho 47423 * seg52In0AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47430 * (1 - 3021 * (rho 47424 * seg52In0AccX115 rho) * (rho 47423 * seg52In0AccY115 rho)) =
        (-1) * (rho 47424 * seg52In0AccX115 rho) - rho 47423 * seg52In0AccY115 rho +
          (seg52In0AccY115 rho - seg52In0AccX115 rho * (-1)) * (rho 47423 + rho 47424) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47430 * (1 - rho 47428) = rho 47425 - rho 47426 - rho 47427 := ha5
      _ = (-1) * rho 47426 - rho 47427 + (seg52In0AccY115 rho - seg52In0AccX115 rho * (-1)) *
          (rho 47423 + rho 47424) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX116 rho = seg52In0AccX115 rho - Bool.toZMod bit * (seg52In0AccX115 rho - rho 47429) := by
    have hd : rho 47431 = Bool.toZMod bit * (rho 47429 - seg52In0AccX115 rho) := by
      rw [← hbit]
      unfold seg52In0AccX115
      linear_combination -r3040
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY116 rho = seg52In0AccY115 rho - Bool.toZMod bit * (seg52In0AccY115 rho - rho 47430) := by
    have hd : rho 47432 = Bool.toZMod bit * (rho 47430 - seg52In0AccY115 rho) := by
      rw [← hbit]
      unfold seg52In0AccY115
      linear_combination -r3041
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47423 * rho 47424 = rho 47433 := by linear_combination r3042
  have hd1 : rho 47423 * rho 47423 = rho 47434 := by linear_combination r3043
  have hd2 : rho 47424 * rho 47424 = rho 47435 := by linear_combination r3044
  have hd3 : rho 47436 * (rho 47424 * rho 47424 + rho 47423 * rho 47423 * (-1)) =
      2 * (rho 47423 * rho 47424) := by
    rw [hd0, hd1, hd2]
    linear_combination r3045
  have hd4 : rho 47437 * (2 - (rho 47424 * rho 47424 + rho 47423 * rho 47423 * (-1))) =
      rho 47424 * rho 47424 - rho 47423 * rho 47423 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3046
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX115 rho, seg52In0AccY115 rho⟩ ⟨rho 47423, rho 47424⟩
    ⟨rho 47429, rho 47430⟩ ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 47436, rho 47437⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3047 rho ∧ Seg52.relationRow3048 rho ∧ Seg52.relationRow3049 rho ∧ Seg52.relationRow3050 rho ∧ Seg52.relationRow3051 rho ∧ Seg52.relationRow3052 rho ∧ Seg52.relationRow3053 rho ∧ Seg52.relationRow3054 rho ∧ Seg52.relationRow3055 rho ∧ Seg52.relationRow3056 rho ∧ Seg52.relationRow3057 rho ∧ Seg52.relationRow3058 rho ∧ Seg52.relationRow3059 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059⟩

theorem seg52In0_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45924 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47436, rho 47437⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 47436, rho 47437⟩
        ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 47449, rho 47450⟩ := by
  obtain ⟨r3047, r3048, r3049, r3050, r3051, r3052, r3053, r3054, r3055, r3056, r3057, r3058, r3059⟩ := seg52In0_rows116 rho h
  unfold Seg52.relationRow3047 at r3047

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3047

  unfold Seg52.relationRow3048 at r3048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3048

  unfold Seg52.relationRow3049 at r3049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3049

  unfold Seg52.relationRow3050 at r3050

  unfold Seg52.relationRow3051 at r3051

  unfold Seg52.relationRow3052 at r3052

  unfold Seg52.relationRow3053 at r3053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3053

  unfold Seg52.relationRow3054 at r3054

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3054

  unfold Seg52.relationRow3055 at r3055

  unfold Seg52.relationRow3056 at r3056

  unfold Seg52.relationRow3057 at r3057

  unfold Seg52.relationRow3058 at r3058

  unfold Seg52.relationRow3059 at r3059

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX117 rho = seg52In0AccX116 rho + rho 47444 := by
    unfold seg52In0AccX117 seg52In0AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 116]

    ring

  have hnexty : seg52In0AccY117 rho = seg52In0AccY116 rho + rho 47445 := by
    unfold seg52In0AccY117 seg52In0AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 116]

    ring

  have ha0 : (rho 47436 + rho 47437) * (seg52In0AccX116 rho + seg52In0AccY116 rho) = rho 47438 := by
    unfold seg52In0AccX116 seg52In0AccY116
    linear_combination r3047
  have ha1 : rho 47437 * seg52In0AccX116 rho = rho 47439 := by
    unfold seg52In0AccX116
    linear_combination r3048
  have ha2 : rho 47436 * seg52In0AccY116 rho = rho 47440 := by
    unfold seg52In0AccY116
    linear_combination r3049
  have ha3 : 3021 * rho 47439 * rho 47440 = rho 47441 := by
    linear_combination r3050
  have ha4 : rho 47442 * (1 + rho 47441) = rho 47439 + rho 47440 := by
    linear_combination r3051
  have ha5 : rho 47443 * (1 - rho 47441) = rho 47438 - rho 47439 - rho 47440 := by
    linear_combination r3052
  have haddx :
      rho 47442 * (1 + 3021 * (rho 47437 * seg52In0AccX116 rho) * (rho 47436 * seg52In0AccY116 rho)) =
        rho 47437 * seg52In0AccX116 rho + rho 47436 * seg52In0AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47443 * (1 - 3021 * (rho 47437 * seg52In0AccX116 rho) * (rho 47436 * seg52In0AccY116 rho)) =
        (-1) * (rho 47437 * seg52In0AccX116 rho) - rho 47436 * seg52In0AccY116 rho +
          (seg52In0AccY116 rho - seg52In0AccX116 rho * (-1)) * (rho 47436 + rho 47437) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47443 * (1 - rho 47441) = rho 47438 - rho 47439 - rho 47440 := ha5
      _ = (-1) * rho 47439 - rho 47440 + (seg52In0AccY116 rho - seg52In0AccX116 rho * (-1)) *
          (rho 47436 + rho 47437) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX117 rho = seg52In0AccX116 rho - Bool.toZMod bit * (seg52In0AccX116 rho - rho 47442) := by
    have hd : rho 47444 = Bool.toZMod bit * (rho 47442 - seg52In0AccX116 rho) := by
      rw [← hbit]
      unfold seg52In0AccX116
      linear_combination -r3053
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY117 rho = seg52In0AccY116 rho - Bool.toZMod bit * (seg52In0AccY116 rho - rho 47443) := by
    have hd : rho 47445 = Bool.toZMod bit * (rho 47443 - seg52In0AccY116 rho) := by
      rw [← hbit]
      unfold seg52In0AccY116
      linear_combination -r3054
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47436 * rho 47437 = rho 47446 := by linear_combination r3055
  have hd1 : rho 47436 * rho 47436 = rho 47447 := by linear_combination r3056
  have hd2 : rho 47437 * rho 47437 = rho 47448 := by linear_combination r3057
  have hd3 : rho 47449 * (rho 47437 * rho 47437 + rho 47436 * rho 47436 * (-1)) =
      2 * (rho 47436 * rho 47437) := by
    rw [hd0, hd1, hd2]
    linear_combination r3058
  have hd4 : rho 47450 * (2 - (rho 47437 * rho 47437 + rho 47436 * rho 47436 * (-1))) =
      rho 47437 * rho 47437 - rho 47436 * rho 47436 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3059
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX116 rho, seg52In0AccY116 rho⟩ ⟨rho 47436, rho 47437⟩
    ⟨rho 47442, rho 47443⟩ ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 47449, rho 47450⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3060 rho ∧ Seg52.relationRow3061 rho ∧ Seg52.relationRow3062 rho ∧ Seg52.relationRow3063 rho ∧ Seg52.relationRow3064 rho ∧ Seg52.relationRow3065 rho ∧ Seg52.relationRow3066 rho ∧ Seg52.relationRow3067 rho ∧ Seg52.relationRow3068 rho ∧ Seg52.relationRow3069 rho ∧ Seg52.relationRow3070 rho ∧ Seg52.relationRow3071 rho ∧ Seg52.relationRow3072 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072⟩

theorem seg52In0_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45925 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47449, rho 47450⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 47449, rho 47450⟩
        ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 47462, rho 47463⟩ := by
  obtain ⟨r3060, r3061, r3062, r3063, r3064, r3065, r3066, r3067, r3068, r3069, r3070, r3071, r3072⟩ := seg52In0_rows117 rho h
  unfold Seg52.relationRow3060 at r3060

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3060

  unfold Seg52.relationRow3061 at r3061

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3061

  unfold Seg52.relationRow3062 at r3062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3062

  unfold Seg52.relationRow3063 at r3063

  unfold Seg52.relationRow3064 at r3064

  unfold Seg52.relationRow3065 at r3065

  unfold Seg52.relationRow3066 at r3066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3066

  unfold Seg52.relationRow3067 at r3067

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3067

  unfold Seg52.relationRow3068 at r3068

  unfold Seg52.relationRow3069 at r3069

  unfold Seg52.relationRow3070 at r3070

  unfold Seg52.relationRow3071 at r3071

  unfold Seg52.relationRow3072 at r3072

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX118 rho = seg52In0AccX117 rho + rho 47457 := by
    unfold seg52In0AccX118 seg52In0AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 117]

    ring

  have hnexty : seg52In0AccY118 rho = seg52In0AccY117 rho + rho 47458 := by
    unfold seg52In0AccY118 seg52In0AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 117]

    ring

  have ha0 : (rho 47449 + rho 47450) * (seg52In0AccX117 rho + seg52In0AccY117 rho) = rho 47451 := by
    unfold seg52In0AccX117 seg52In0AccY117
    linear_combination r3060
  have ha1 : rho 47450 * seg52In0AccX117 rho = rho 47452 := by
    unfold seg52In0AccX117
    linear_combination r3061
  have ha2 : rho 47449 * seg52In0AccY117 rho = rho 47453 := by
    unfold seg52In0AccY117
    linear_combination r3062
  have ha3 : 3021 * rho 47452 * rho 47453 = rho 47454 := by
    linear_combination r3063
  have ha4 : rho 47455 * (1 + rho 47454) = rho 47452 + rho 47453 := by
    linear_combination r3064
  have ha5 : rho 47456 * (1 - rho 47454) = rho 47451 - rho 47452 - rho 47453 := by
    linear_combination r3065
  have haddx :
      rho 47455 * (1 + 3021 * (rho 47450 * seg52In0AccX117 rho) * (rho 47449 * seg52In0AccY117 rho)) =
        rho 47450 * seg52In0AccX117 rho + rho 47449 * seg52In0AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47456 * (1 - 3021 * (rho 47450 * seg52In0AccX117 rho) * (rho 47449 * seg52In0AccY117 rho)) =
        (-1) * (rho 47450 * seg52In0AccX117 rho) - rho 47449 * seg52In0AccY117 rho +
          (seg52In0AccY117 rho - seg52In0AccX117 rho * (-1)) * (rho 47449 + rho 47450) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47456 * (1 - rho 47454) = rho 47451 - rho 47452 - rho 47453 := ha5
      _ = (-1) * rho 47452 - rho 47453 + (seg52In0AccY117 rho - seg52In0AccX117 rho * (-1)) *
          (rho 47449 + rho 47450) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX118 rho = seg52In0AccX117 rho - Bool.toZMod bit * (seg52In0AccX117 rho - rho 47455) := by
    have hd : rho 47457 = Bool.toZMod bit * (rho 47455 - seg52In0AccX117 rho) := by
      rw [← hbit]
      unfold seg52In0AccX117
      linear_combination -r3066
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY118 rho = seg52In0AccY117 rho - Bool.toZMod bit * (seg52In0AccY117 rho - rho 47456) := by
    have hd : rho 47458 = Bool.toZMod bit * (rho 47456 - seg52In0AccY117 rho) := by
      rw [← hbit]
      unfold seg52In0AccY117
      linear_combination -r3067
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47449 * rho 47450 = rho 47459 := by linear_combination r3068
  have hd1 : rho 47449 * rho 47449 = rho 47460 := by linear_combination r3069
  have hd2 : rho 47450 * rho 47450 = rho 47461 := by linear_combination r3070
  have hd3 : rho 47462 * (rho 47450 * rho 47450 + rho 47449 * rho 47449 * (-1)) =
      2 * (rho 47449 * rho 47450) := by
    rw [hd0, hd1, hd2]
    linear_combination r3071
  have hd4 : rho 47463 * (2 - (rho 47450 * rho 47450 + rho 47449 * rho 47449 * (-1))) =
      rho 47450 * rho 47450 - rho 47449 * rho 47449 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3072
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX117 rho, seg52In0AccY117 rho⟩ ⟨rho 47449, rho 47450⟩
    ⟨rho 47455, rho 47456⟩ ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 47462, rho 47463⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3073 rho ∧ Seg52.relationRow3074 rho ∧ Seg52.relationRow3075 rho ∧ Seg52.relationRow3076 rho ∧ Seg52.relationRow3077 rho ∧ Seg52.relationRow3078 rho ∧ Seg52.relationRow3079 rho ∧ Seg52.relationRow3080 rho ∧ Seg52.relationRow3081 rho ∧ Seg52.relationRow3082 rho ∧ Seg52.relationRow3083 rho ∧ Seg52.relationRow3084 rho ∧ Seg52.relationRow3085 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085⟩

theorem seg52In0_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45926 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47462, rho 47463⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 47462, rho 47463⟩
        ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 47475, rho 47476⟩ := by
  obtain ⟨r3073, r3074, r3075, r3076, r3077, r3078, r3079, r3080, r3081, r3082, r3083, r3084, r3085⟩ := seg52In0_rows118 rho h
  unfold Seg52.relationRow3073 at r3073

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3073

  unfold Seg52.relationRow3074 at r3074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3074

  unfold Seg52.relationRow3075 at r3075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3075

  unfold Seg52.relationRow3076 at r3076

  unfold Seg52.relationRow3077 at r3077

  unfold Seg52.relationRow3078 at r3078

  unfold Seg52.relationRow3079 at r3079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3079

  unfold Seg52.relationRow3080 at r3080

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3080

  unfold Seg52.relationRow3081 at r3081

  unfold Seg52.relationRow3082 at r3082

  unfold Seg52.relationRow3083 at r3083

  unfold Seg52.relationRow3084 at r3084

  unfold Seg52.relationRow3085 at r3085

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX119 rho = seg52In0AccX118 rho + rho 47470 := by
    unfold seg52In0AccX119 seg52In0AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 118]

    ring

  have hnexty : seg52In0AccY119 rho = seg52In0AccY118 rho + rho 47471 := by
    unfold seg52In0AccY119 seg52In0AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 118]

    ring

  have ha0 : (rho 47462 + rho 47463) * (seg52In0AccX118 rho + seg52In0AccY118 rho) = rho 47464 := by
    unfold seg52In0AccX118 seg52In0AccY118
    linear_combination r3073
  have ha1 : rho 47463 * seg52In0AccX118 rho = rho 47465 := by
    unfold seg52In0AccX118
    linear_combination r3074
  have ha2 : rho 47462 * seg52In0AccY118 rho = rho 47466 := by
    unfold seg52In0AccY118
    linear_combination r3075
  have ha3 : 3021 * rho 47465 * rho 47466 = rho 47467 := by
    linear_combination r3076
  have ha4 : rho 47468 * (1 + rho 47467) = rho 47465 + rho 47466 := by
    linear_combination r3077
  have ha5 : rho 47469 * (1 - rho 47467) = rho 47464 - rho 47465 - rho 47466 := by
    linear_combination r3078
  have haddx :
      rho 47468 * (1 + 3021 * (rho 47463 * seg52In0AccX118 rho) * (rho 47462 * seg52In0AccY118 rho)) =
        rho 47463 * seg52In0AccX118 rho + rho 47462 * seg52In0AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47469 * (1 - 3021 * (rho 47463 * seg52In0AccX118 rho) * (rho 47462 * seg52In0AccY118 rho)) =
        (-1) * (rho 47463 * seg52In0AccX118 rho) - rho 47462 * seg52In0AccY118 rho +
          (seg52In0AccY118 rho - seg52In0AccX118 rho * (-1)) * (rho 47462 + rho 47463) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47469 * (1 - rho 47467) = rho 47464 - rho 47465 - rho 47466 := ha5
      _ = (-1) * rho 47465 - rho 47466 + (seg52In0AccY118 rho - seg52In0AccX118 rho * (-1)) *
          (rho 47462 + rho 47463) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX119 rho = seg52In0AccX118 rho - Bool.toZMod bit * (seg52In0AccX118 rho - rho 47468) := by
    have hd : rho 47470 = Bool.toZMod bit * (rho 47468 - seg52In0AccX118 rho) := by
      rw [← hbit]
      unfold seg52In0AccX118
      linear_combination -r3079
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY119 rho = seg52In0AccY118 rho - Bool.toZMod bit * (seg52In0AccY118 rho - rho 47469) := by
    have hd : rho 47471 = Bool.toZMod bit * (rho 47469 - seg52In0AccY118 rho) := by
      rw [← hbit]
      unfold seg52In0AccY118
      linear_combination -r3080
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47462 * rho 47463 = rho 47472 := by linear_combination r3081
  have hd1 : rho 47462 * rho 47462 = rho 47473 := by linear_combination r3082
  have hd2 : rho 47463 * rho 47463 = rho 47474 := by linear_combination r3083
  have hd3 : rho 47475 * (rho 47463 * rho 47463 + rho 47462 * rho 47462 * (-1)) =
      2 * (rho 47462 * rho 47463) := by
    rw [hd0, hd1, hd2]
    linear_combination r3084
  have hd4 : rho 47476 * (2 - (rho 47463 * rho 47463 + rho 47462 * rho 47462 * (-1))) =
      rho 47463 * rho 47463 - rho 47462 * rho 47462 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3085
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX118 rho, seg52In0AccY118 rho⟩ ⟨rho 47462, rho 47463⟩
    ⟨rho 47468, rho 47469⟩ ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 47475, rho 47476⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3086 rho ∧ Seg52.relationRow3087 rho ∧ Seg52.relationRow3088 rho ∧ Seg52.relationRow3089 rho ∧ Seg52.relationRow3090 rho ∧ Seg52.relationRow3091 rho ∧ Seg52.relationRow3092 rho ∧ Seg52.relationRow3093 rho ∧ Seg52.relationRow3094 rho ∧ Seg52.relationRow3095 rho ∧ Seg52.relationRow3096 rho ∧ Seg52.relationRow3097 rho ∧ Seg52.relationRow3098 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098⟩

theorem seg52In0_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45927 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47475, rho 47476⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 47475, rho 47476⟩
        ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 47488, rho 47489⟩ := by
  obtain ⟨r3086, r3087, r3088, r3089, r3090, r3091, r3092, r3093, r3094, r3095, r3096, r3097, r3098⟩ := seg52In0_rows119 rho h
  unfold Seg52.relationRow3086 at r3086

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3086

  unfold Seg52.relationRow3087 at r3087

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3087

  unfold Seg52.relationRow3088 at r3088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3088

  unfold Seg52.relationRow3089 at r3089

  unfold Seg52.relationRow3090 at r3090

  unfold Seg52.relationRow3091 at r3091

  unfold Seg52.relationRow3092 at r3092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3092

  unfold Seg52.relationRow3093 at r3093

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3093

  unfold Seg52.relationRow3094 at r3094

  unfold Seg52.relationRow3095 at r3095

  unfold Seg52.relationRow3096 at r3096

  unfold Seg52.relationRow3097 at r3097

  unfold Seg52.relationRow3098 at r3098

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX120 rho = seg52In0AccX119 rho + rho 47483 := by
    unfold seg52In0AccX120 seg52In0AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 119]

    ring

  have hnexty : seg52In0AccY120 rho = seg52In0AccY119 rho + rho 47484 := by
    unfold seg52In0AccY120 seg52In0AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 119]

    ring

  have ha0 : (rho 47475 + rho 47476) * (seg52In0AccX119 rho + seg52In0AccY119 rho) = rho 47477 := by
    unfold seg52In0AccX119 seg52In0AccY119
    linear_combination r3086
  have ha1 : rho 47476 * seg52In0AccX119 rho = rho 47478 := by
    unfold seg52In0AccX119
    linear_combination r3087
  have ha2 : rho 47475 * seg52In0AccY119 rho = rho 47479 := by
    unfold seg52In0AccY119
    linear_combination r3088
  have ha3 : 3021 * rho 47478 * rho 47479 = rho 47480 := by
    linear_combination r3089
  have ha4 : rho 47481 * (1 + rho 47480) = rho 47478 + rho 47479 := by
    linear_combination r3090
  have ha5 : rho 47482 * (1 - rho 47480) = rho 47477 - rho 47478 - rho 47479 := by
    linear_combination r3091
  have haddx :
      rho 47481 * (1 + 3021 * (rho 47476 * seg52In0AccX119 rho) * (rho 47475 * seg52In0AccY119 rho)) =
        rho 47476 * seg52In0AccX119 rho + rho 47475 * seg52In0AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47482 * (1 - 3021 * (rho 47476 * seg52In0AccX119 rho) * (rho 47475 * seg52In0AccY119 rho)) =
        (-1) * (rho 47476 * seg52In0AccX119 rho) - rho 47475 * seg52In0AccY119 rho +
          (seg52In0AccY119 rho - seg52In0AccX119 rho * (-1)) * (rho 47475 + rho 47476) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47482 * (1 - rho 47480) = rho 47477 - rho 47478 - rho 47479 := ha5
      _ = (-1) * rho 47478 - rho 47479 + (seg52In0AccY119 rho - seg52In0AccX119 rho * (-1)) *
          (rho 47475 + rho 47476) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX120 rho = seg52In0AccX119 rho - Bool.toZMod bit * (seg52In0AccX119 rho - rho 47481) := by
    have hd : rho 47483 = Bool.toZMod bit * (rho 47481 - seg52In0AccX119 rho) := by
      rw [← hbit]
      unfold seg52In0AccX119
      linear_combination -r3092
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY120 rho = seg52In0AccY119 rho - Bool.toZMod bit * (seg52In0AccY119 rho - rho 47482) := by
    have hd : rho 47484 = Bool.toZMod bit * (rho 47482 - seg52In0AccY119 rho) := by
      rw [← hbit]
      unfold seg52In0AccY119
      linear_combination -r3093
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47475 * rho 47476 = rho 47485 := by linear_combination r3094
  have hd1 : rho 47475 * rho 47475 = rho 47486 := by linear_combination r3095
  have hd2 : rho 47476 * rho 47476 = rho 47487 := by linear_combination r3096
  have hd3 : rho 47488 * (rho 47476 * rho 47476 + rho 47475 * rho 47475 * (-1)) =
      2 * (rho 47475 * rho 47476) := by
    rw [hd0, hd1, hd2]
    linear_combination r3097
  have hd4 : rho 47489 * (2 - (rho 47476 * rho 47476 + rho 47475 * rho 47475 * (-1))) =
      rho 47476 * rho 47476 - rho 47475 * rho 47475 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3098
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX119 rho, seg52In0AccY119 rho⟩ ⟨rho 47475, rho 47476⟩
    ⟨rho 47481, rho 47482⟩ ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 47488, rho 47489⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3099 rho ∧ Seg52.relationRow3100 rho ∧ Seg52.relationRow3101 rho ∧ Seg52.relationRow3102 rho ∧ Seg52.relationRow3103 rho ∧ Seg52.relationRow3104 rho ∧ Seg52.relationRow3105 rho ∧ Seg52.relationRow3106 rho ∧ Seg52.relationRow3107 rho ∧ Seg52.relationRow3108 rho ∧ Seg52.relationRow3109 rho ∧ Seg52.relationRow3110 rho ∧ Seg52.relationRow3111 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart38 at p38

  rcases p38 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111, _, _, _, _, _, _, _, _⟩

  exact ⟨r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111⟩

theorem seg52In0_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45928 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 47488, rho 47489⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 47488, rho 47489⟩
        ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 47501, rho 47502⟩ := by
  obtain ⟨r3099, r3100, r3101, r3102, r3103, r3104, r3105, r3106, r3107, r3108, r3109, r3110, r3111⟩ := seg52In0_rows120 rho h
  unfold Seg52.relationRow3099 at r3099

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3099

  unfold Seg52.relationRow3100 at r3100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3100

  unfold Seg52.relationRow3101 at r3101

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3101

  unfold Seg52.relationRow3102 at r3102

  unfold Seg52.relationRow3103 at r3103

  unfold Seg52.relationRow3104 at r3104

  unfold Seg52.relationRow3105 at r3105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3105

  unfold Seg52.relationRow3106 at r3106

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3106

  unfold Seg52.relationRow3107 at r3107

  unfold Seg52.relationRow3108 at r3108

  unfold Seg52.relationRow3109 at r3109

  unfold Seg52.relationRow3110 at r3110

  unfold Seg52.relationRow3111 at r3111

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX121 rho = seg52In0AccX120 rho + rho 47496 := by
    unfold seg52In0AccX121 seg52In0AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 120]

    ring

  have hnexty : seg52In0AccY121 rho = seg52In0AccY120 rho + rho 47497 := by
    unfold seg52In0AccY121 seg52In0AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 120]

    ring

  have ha0 : (rho 47488 + rho 47489) * (seg52In0AccX120 rho + seg52In0AccY120 rho) = rho 47490 := by
    unfold seg52In0AccX120 seg52In0AccY120
    linear_combination r3099
  have ha1 : rho 47489 * seg52In0AccX120 rho = rho 47491 := by
    unfold seg52In0AccX120
    linear_combination r3100
  have ha2 : rho 47488 * seg52In0AccY120 rho = rho 47492 := by
    unfold seg52In0AccY120
    linear_combination r3101
  have ha3 : 3021 * rho 47491 * rho 47492 = rho 47493 := by
    linear_combination r3102
  have ha4 : rho 47494 * (1 + rho 47493) = rho 47491 + rho 47492 := by
    linear_combination r3103
  have ha5 : rho 47495 * (1 - rho 47493) = rho 47490 - rho 47491 - rho 47492 := by
    linear_combination r3104
  have haddx :
      rho 47494 * (1 + 3021 * (rho 47489 * seg52In0AccX120 rho) * (rho 47488 * seg52In0AccY120 rho)) =
        rho 47489 * seg52In0AccX120 rho + rho 47488 * seg52In0AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 47495 * (1 - 3021 * (rho 47489 * seg52In0AccX120 rho) * (rho 47488 * seg52In0AccY120 rho)) =
        (-1) * (rho 47489 * seg52In0AccX120 rho) - rho 47488 * seg52In0AccY120 rho +
          (seg52In0AccY120 rho - seg52In0AccX120 rho * (-1)) * (rho 47488 + rho 47489) := by
    rw [ha1, ha2, ha3]
    calc
      rho 47495 * (1 - rho 47493) = rho 47490 - rho 47491 - rho 47492 := ha5
      _ = (-1) * rho 47491 - rho 47492 + (seg52In0AccY120 rho - seg52In0AccX120 rho * (-1)) *
          (rho 47488 + rho 47489) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX121 rho = seg52In0AccX120 rho - Bool.toZMod bit * (seg52In0AccX120 rho - rho 47494) := by
    have hd : rho 47496 = Bool.toZMod bit * (rho 47494 - seg52In0AccX120 rho) := by
      rw [← hbit]
      unfold seg52In0AccX120
      linear_combination -r3105
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY121 rho = seg52In0AccY120 rho - Bool.toZMod bit * (seg52In0AccY120 rho - rho 47495) := by
    have hd : rho 47497 = Bool.toZMod bit * (rho 47495 - seg52In0AccY120 rho) := by
      rw [← hbit]
      unfold seg52In0AccY120
      linear_combination -r3106
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 47488 * rho 47489 = rho 47498 := by linear_combination r3107
  have hd1 : rho 47488 * rho 47488 = rho 47499 := by linear_combination r3108
  have hd2 : rho 47489 * rho 47489 = rho 47500 := by linear_combination r3109
  have hd3 : rho 47501 * (rho 47489 * rho 47489 + rho 47488 * rho 47488 * (-1)) =
      2 * (rho 47488 * rho 47489) := by
    rw [hd0, hd1, hd2]
    linear_combination r3110
  have hd4 : rho 47502 * (2 - (rho 47489 * rho 47489 + rho 47488 * rho 47488 * (-1))) =
      rho 47489 * rho 47489 - rho 47488 * rho 47488 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3111
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX120 rho, seg52In0AccY120 rho⟩ ⟨rho 47488, rho 47489⟩
    ⟨rho 47494, rho 47495⟩ ⟨seg52In0AccX121 rho, seg52In0AccY121 rho⟩ ⟨rho 47501, rho 47502⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg52In0_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg52In0_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg52In0_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg52In0_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg52In0_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg52In0_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg52In0_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg52In0_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg52In0_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg52In0_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
