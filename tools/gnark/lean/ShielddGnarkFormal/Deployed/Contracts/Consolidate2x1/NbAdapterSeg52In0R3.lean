import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1968 rho ∧ Seg52.relationRow1969 rho ∧ Seg52.relationRow1970 rho ∧ Seg52.relationRow1971 rho ∧ Seg52.relationRow1972 rho ∧ Seg52.relationRow1973 rho ∧ Seg52.relationRow1974 rho ∧ Seg52.relationRow1975 rho ∧ Seg52.relationRow1976 rho ∧ Seg52.relationRow1977 rho ∧ Seg52.relationRow1978 rho ∧ Seg52.relationRow1979 rho ∧ Seg52.relationRow1980 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980⟩

theorem seg52In0_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45841 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46357, rho 46358⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 46357, rho 46358⟩
        ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 46370, rho 46371⟩ := by
  obtain ⟨r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980⟩ := seg52In0_rows33 rho h
  unfold Seg52.relationRow1968 at r1968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1968

  unfold Seg52.relationRow1969 at r1969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1969

  unfold Seg52.relationRow1970 at r1970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1970

  unfold Seg52.relationRow1971 at r1971

  unfold Seg52.relationRow1972 at r1972

  unfold Seg52.relationRow1973 at r1973

  unfold Seg52.relationRow1974 at r1974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1974

  unfold Seg52.relationRow1975 at r1975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1975

  unfold Seg52.relationRow1976 at r1976

  unfold Seg52.relationRow1977 at r1977

  unfold Seg52.relationRow1978 at r1978

  unfold Seg52.relationRow1979 at r1979

  unfold Seg52.relationRow1980 at r1980

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX34 rho = seg52In0AccX33 rho + rho 46365 := by
    unfold seg52In0AccX34 seg52In0AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 33]

    ring

  have hnexty : seg52In0AccY34 rho = seg52In0AccY33 rho + rho 46366 := by
    unfold seg52In0AccY34 seg52In0AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 33]

    ring

  have ha0 : (rho 46357 + rho 46358) * (seg52In0AccX33 rho + seg52In0AccY33 rho) = rho 46359 := by
    unfold seg52In0AccX33 seg52In0AccY33
    linear_combination r1968
  have ha1 : rho 46358 * seg52In0AccX33 rho = rho 46360 := by
    unfold seg52In0AccX33
    linear_combination r1969
  have ha2 : rho 46357 * seg52In0AccY33 rho = rho 46361 := by
    unfold seg52In0AccY33
    linear_combination r1970
  have ha3 : 3021 * rho 46360 * rho 46361 = rho 46362 := by
    linear_combination r1971
  have ha4 : rho 46363 * (1 + rho 46362) = rho 46360 + rho 46361 := by
    linear_combination r1972
  have ha5 : rho 46364 * (1 - rho 46362) = rho 46359 - rho 46360 - rho 46361 := by
    linear_combination r1973
  have haddx :
      rho 46363 * (1 + 3021 * (rho 46358 * seg52In0AccX33 rho) * (rho 46357 * seg52In0AccY33 rho)) =
        rho 46358 * seg52In0AccX33 rho + rho 46357 * seg52In0AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46364 * (1 - 3021 * (rho 46358 * seg52In0AccX33 rho) * (rho 46357 * seg52In0AccY33 rho)) =
        (-1) * (rho 46358 * seg52In0AccX33 rho) - rho 46357 * seg52In0AccY33 rho +
          (seg52In0AccY33 rho - seg52In0AccX33 rho * (-1)) * (rho 46357 + rho 46358) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46364 * (1 - rho 46362) = rho 46359 - rho 46360 - rho 46361 := ha5
      _ = (-1) * rho 46360 - rho 46361 + (seg52In0AccY33 rho - seg52In0AccX33 rho * (-1)) *
          (rho 46357 + rho 46358) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX34 rho = seg52In0AccX33 rho - Bool.toZMod bit * (seg52In0AccX33 rho - rho 46363) := by
    have hd : rho 46365 = Bool.toZMod bit * (rho 46363 - seg52In0AccX33 rho) := by
      rw [← hbit]
      unfold seg52In0AccX33
      linear_combination -r1974
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY34 rho = seg52In0AccY33 rho - Bool.toZMod bit * (seg52In0AccY33 rho - rho 46364) := by
    have hd : rho 46366 = Bool.toZMod bit * (rho 46364 - seg52In0AccY33 rho) := by
      rw [← hbit]
      unfold seg52In0AccY33
      linear_combination -r1975
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46357 * rho 46358 = rho 46367 := by linear_combination r1976
  have hd1 : rho 46357 * rho 46357 = rho 46368 := by linear_combination r1977
  have hd2 : rho 46358 * rho 46358 = rho 46369 := by linear_combination r1978
  have hd3 : rho 46370 * (rho 46358 * rho 46358 + rho 46357 * rho 46357 * (-1)) =
      2 * (rho 46357 * rho 46358) := by
    rw [hd0, hd1, hd2]
    linear_combination r1979
  have hd4 : rho 46371 * (2 - (rho 46358 * rho 46358 + rho 46357 * rho 46357 * (-1))) =
      rho 46358 * rho 46358 - rho 46357 * rho 46357 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1980
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 46357, rho 46358⟩
    ⟨rho 46363, rho 46364⟩ ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 46370, rho 46371⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1981 rho ∧ Seg52.relationRow1982 rho ∧ Seg52.relationRow1983 rho ∧ Seg52.relationRow1984 rho ∧ Seg52.relationRow1985 rho ∧ Seg52.relationRow1986 rho ∧ Seg52.relationRow1987 rho ∧ Seg52.relationRow1988 rho ∧ Seg52.relationRow1989 rho ∧ Seg52.relationRow1990 rho ∧ Seg52.relationRow1991 rho ∧ Seg52.relationRow1992 rho ∧ Seg52.relationRow1993 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993, _, _, _, _, _, _⟩

  exact ⟨r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993⟩

theorem seg52In0_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45842 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46370, rho 46371⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 46370, rho 46371⟩
        ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 46383, rho 46384⟩ := by
  obtain ⟨r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, r1991, r1992, r1993⟩ := seg52In0_rows34 rho h
  unfold Seg52.relationRow1981 at r1981

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1981

  unfold Seg52.relationRow1982 at r1982

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1982

  unfold Seg52.relationRow1983 at r1983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1983

  unfold Seg52.relationRow1984 at r1984

  unfold Seg52.relationRow1985 at r1985

  unfold Seg52.relationRow1986 at r1986

  unfold Seg52.relationRow1987 at r1987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1987

  unfold Seg52.relationRow1988 at r1988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1988

  unfold Seg52.relationRow1989 at r1989

  unfold Seg52.relationRow1990 at r1990

  unfold Seg52.relationRow1991 at r1991

  unfold Seg52.relationRow1992 at r1992

  unfold Seg52.relationRow1993 at r1993

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX35 rho = seg52In0AccX34 rho + rho 46378 := by
    unfold seg52In0AccX35 seg52In0AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 34]

    ring

  have hnexty : seg52In0AccY35 rho = seg52In0AccY34 rho + rho 46379 := by
    unfold seg52In0AccY35 seg52In0AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 34]

    ring

  have ha0 : (rho 46370 + rho 46371) * (seg52In0AccX34 rho + seg52In0AccY34 rho) = rho 46372 := by
    unfold seg52In0AccX34 seg52In0AccY34
    linear_combination r1981
  have ha1 : rho 46371 * seg52In0AccX34 rho = rho 46373 := by
    unfold seg52In0AccX34
    linear_combination r1982
  have ha2 : rho 46370 * seg52In0AccY34 rho = rho 46374 := by
    unfold seg52In0AccY34
    linear_combination r1983
  have ha3 : 3021 * rho 46373 * rho 46374 = rho 46375 := by
    linear_combination r1984
  have ha4 : rho 46376 * (1 + rho 46375) = rho 46373 + rho 46374 := by
    linear_combination r1985
  have ha5 : rho 46377 * (1 - rho 46375) = rho 46372 - rho 46373 - rho 46374 := by
    linear_combination r1986
  have haddx :
      rho 46376 * (1 + 3021 * (rho 46371 * seg52In0AccX34 rho) * (rho 46370 * seg52In0AccY34 rho)) =
        rho 46371 * seg52In0AccX34 rho + rho 46370 * seg52In0AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46377 * (1 - 3021 * (rho 46371 * seg52In0AccX34 rho) * (rho 46370 * seg52In0AccY34 rho)) =
        (-1) * (rho 46371 * seg52In0AccX34 rho) - rho 46370 * seg52In0AccY34 rho +
          (seg52In0AccY34 rho - seg52In0AccX34 rho * (-1)) * (rho 46370 + rho 46371) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46377 * (1 - rho 46375) = rho 46372 - rho 46373 - rho 46374 := ha5
      _ = (-1) * rho 46373 - rho 46374 + (seg52In0AccY34 rho - seg52In0AccX34 rho * (-1)) *
          (rho 46370 + rho 46371) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX35 rho = seg52In0AccX34 rho - Bool.toZMod bit * (seg52In0AccX34 rho - rho 46376) := by
    have hd : rho 46378 = Bool.toZMod bit * (rho 46376 - seg52In0AccX34 rho) := by
      rw [← hbit]
      unfold seg52In0AccX34
      linear_combination -r1987
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY35 rho = seg52In0AccY34 rho - Bool.toZMod bit * (seg52In0AccY34 rho - rho 46377) := by
    have hd : rho 46379 = Bool.toZMod bit * (rho 46377 - seg52In0AccY34 rho) := by
      rw [← hbit]
      unfold seg52In0AccY34
      linear_combination -r1988
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46370 * rho 46371 = rho 46380 := by linear_combination r1989
  have hd1 : rho 46370 * rho 46370 = rho 46381 := by linear_combination r1990
  have hd2 : rho 46371 * rho 46371 = rho 46382 := by linear_combination r1991
  have hd3 : rho 46383 * (rho 46371 * rho 46371 + rho 46370 * rho 46370 * (-1)) =
      2 * (rho 46370 * rho 46371) := by
    rw [hd0, hd1, hd2]
    linear_combination r1992
  have hd4 : rho 46384 * (2 - (rho 46371 * rho 46371 + rho 46370 * rho 46370 * (-1))) =
      rho 46371 * rho 46371 - rho 46370 * rho 46370 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1993
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX34 rho, seg52In0AccY34 rho⟩ ⟨rho 46370, rho 46371⟩
    ⟨rho 46376, rho 46377⟩ ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 46383, rho 46384⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1994 rho ∧ Seg52.relationRow1995 rho ∧ Seg52.relationRow1996 rho ∧ Seg52.relationRow1997 rho ∧ Seg52.relationRow1998 rho ∧ Seg52.relationRow1999 rho ∧ Seg52.relationRow2000 rho ∧ Seg52.relationRow2001 rho ∧ Seg52.relationRow2002 rho ∧ Seg52.relationRow2003 rho ∧ Seg52.relationRow2004 rho ∧ Seg52.relationRow2005 rho ∧ Seg52.relationRow2006 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1994, r1995, r1996, r1997, r1998, r1999⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨r2000, r2001, r2002, r2003, r2004, r2005, r2006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1994, r1995, r1996, r1997, r1998, r1999, r2000, r2001, r2002, r2003, r2004, r2005, r2006⟩

theorem seg52In0_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45843 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46383, rho 46384⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 46383, rho 46384⟩
        ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 46396, rho 46397⟩ := by
  obtain ⟨r1994, r1995, r1996, r1997, r1998, r1999, r2000, r2001, r2002, r2003, r2004, r2005, r2006⟩ := seg52In0_rows35 rho h
  unfold Seg52.relationRow1994 at r1994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1994

  unfold Seg52.relationRow1995 at r1995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1995

  unfold Seg52.relationRow1996 at r1996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1996

  unfold Seg52.relationRow1997 at r1997

  unfold Seg52.relationRow1998 at r1998

  unfold Seg52.relationRow1999 at r1999

  unfold Seg52.relationRow2000 at r2000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2000

  unfold Seg52.relationRow2001 at r2001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2001

  unfold Seg52.relationRow2002 at r2002

  unfold Seg52.relationRow2003 at r2003

  unfold Seg52.relationRow2004 at r2004

  unfold Seg52.relationRow2005 at r2005

  unfold Seg52.relationRow2006 at r2006

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX36 rho = seg52In0AccX35 rho + rho 46391 := by
    unfold seg52In0AccX36 seg52In0AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 35]

    ring

  have hnexty : seg52In0AccY36 rho = seg52In0AccY35 rho + rho 46392 := by
    unfold seg52In0AccY36 seg52In0AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 35]

    ring

  have ha0 : (rho 46383 + rho 46384) * (seg52In0AccX35 rho + seg52In0AccY35 rho) = rho 46385 := by
    unfold seg52In0AccX35 seg52In0AccY35
    linear_combination r1994
  have ha1 : rho 46384 * seg52In0AccX35 rho = rho 46386 := by
    unfold seg52In0AccX35
    linear_combination r1995
  have ha2 : rho 46383 * seg52In0AccY35 rho = rho 46387 := by
    unfold seg52In0AccY35
    linear_combination r1996
  have ha3 : 3021 * rho 46386 * rho 46387 = rho 46388 := by
    linear_combination r1997
  have ha4 : rho 46389 * (1 + rho 46388) = rho 46386 + rho 46387 := by
    linear_combination r1998
  have ha5 : rho 46390 * (1 - rho 46388) = rho 46385 - rho 46386 - rho 46387 := by
    linear_combination r1999
  have haddx :
      rho 46389 * (1 + 3021 * (rho 46384 * seg52In0AccX35 rho) * (rho 46383 * seg52In0AccY35 rho)) =
        rho 46384 * seg52In0AccX35 rho + rho 46383 * seg52In0AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46390 * (1 - 3021 * (rho 46384 * seg52In0AccX35 rho) * (rho 46383 * seg52In0AccY35 rho)) =
        (-1) * (rho 46384 * seg52In0AccX35 rho) - rho 46383 * seg52In0AccY35 rho +
          (seg52In0AccY35 rho - seg52In0AccX35 rho * (-1)) * (rho 46383 + rho 46384) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46390 * (1 - rho 46388) = rho 46385 - rho 46386 - rho 46387 := ha5
      _ = (-1) * rho 46386 - rho 46387 + (seg52In0AccY35 rho - seg52In0AccX35 rho * (-1)) *
          (rho 46383 + rho 46384) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX36 rho = seg52In0AccX35 rho - Bool.toZMod bit * (seg52In0AccX35 rho - rho 46389) := by
    have hd : rho 46391 = Bool.toZMod bit * (rho 46389 - seg52In0AccX35 rho) := by
      rw [← hbit]
      unfold seg52In0AccX35
      linear_combination -r2000
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY36 rho = seg52In0AccY35 rho - Bool.toZMod bit * (seg52In0AccY35 rho - rho 46390) := by
    have hd : rho 46392 = Bool.toZMod bit * (rho 46390 - seg52In0AccY35 rho) := by
      rw [← hbit]
      unfold seg52In0AccY35
      linear_combination -r2001
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46383 * rho 46384 = rho 46393 := by linear_combination r2002
  have hd1 : rho 46383 * rho 46383 = rho 46394 := by linear_combination r2003
  have hd2 : rho 46384 * rho 46384 = rho 46395 := by linear_combination r2004
  have hd3 : rho 46396 * (rho 46384 * rho 46384 + rho 46383 * rho 46383 * (-1)) =
      2 * (rho 46383 * rho 46384) := by
    rw [hd0, hd1, hd2]
    linear_combination r2005
  have hd4 : rho 46397 * (2 - (rho 46384 * rho 46384 + rho 46383 * rho 46383 * (-1))) =
      rho 46384 * rho 46384 - rho 46383 * rho 46383 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2006
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX35 rho, seg52In0AccY35 rho⟩ ⟨rho 46383, rho 46384⟩
    ⟨rho 46389, rho 46390⟩ ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 46396, rho 46397⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2007 rho ∧ Seg52.relationRow2008 rho ∧ Seg52.relationRow2009 rho ∧ Seg52.relationRow2010 rho ∧ Seg52.relationRow2011 rho ∧ Seg52.relationRow2012 rho ∧ Seg52.relationRow2013 rho ∧ Seg52.relationRow2014 rho ∧ Seg52.relationRow2015 rho ∧ Seg52.relationRow2016 rho ∧ Seg52.relationRow2017 rho ∧ Seg52.relationRow2018 rho ∧ Seg52.relationRow2019 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019⟩

theorem seg52In0_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45844 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46396, rho 46397⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 46396, rho 46397⟩
        ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 46409, rho 46410⟩ := by
  obtain ⟨r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, r2017, r2018, r2019⟩ := seg52In0_rows36 rho h
  unfold Seg52.relationRow2007 at r2007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2007

  unfold Seg52.relationRow2008 at r2008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2008

  unfold Seg52.relationRow2009 at r2009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2009

  unfold Seg52.relationRow2010 at r2010

  unfold Seg52.relationRow2011 at r2011

  unfold Seg52.relationRow2012 at r2012

  unfold Seg52.relationRow2013 at r2013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2013

  unfold Seg52.relationRow2014 at r2014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2014

  unfold Seg52.relationRow2015 at r2015

  unfold Seg52.relationRow2016 at r2016

  unfold Seg52.relationRow2017 at r2017

  unfold Seg52.relationRow2018 at r2018

  unfold Seg52.relationRow2019 at r2019

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX37 rho = seg52In0AccX36 rho + rho 46404 := by
    unfold seg52In0AccX37 seg52In0AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 36]

    ring

  have hnexty : seg52In0AccY37 rho = seg52In0AccY36 rho + rho 46405 := by
    unfold seg52In0AccY37 seg52In0AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 36]

    ring

  have ha0 : (rho 46396 + rho 46397) * (seg52In0AccX36 rho + seg52In0AccY36 rho) = rho 46398 := by
    unfold seg52In0AccX36 seg52In0AccY36
    linear_combination r2007
  have ha1 : rho 46397 * seg52In0AccX36 rho = rho 46399 := by
    unfold seg52In0AccX36
    linear_combination r2008
  have ha2 : rho 46396 * seg52In0AccY36 rho = rho 46400 := by
    unfold seg52In0AccY36
    linear_combination r2009
  have ha3 : 3021 * rho 46399 * rho 46400 = rho 46401 := by
    linear_combination r2010
  have ha4 : rho 46402 * (1 + rho 46401) = rho 46399 + rho 46400 := by
    linear_combination r2011
  have ha5 : rho 46403 * (1 - rho 46401) = rho 46398 - rho 46399 - rho 46400 := by
    linear_combination r2012
  have haddx :
      rho 46402 * (1 + 3021 * (rho 46397 * seg52In0AccX36 rho) * (rho 46396 * seg52In0AccY36 rho)) =
        rho 46397 * seg52In0AccX36 rho + rho 46396 * seg52In0AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46403 * (1 - 3021 * (rho 46397 * seg52In0AccX36 rho) * (rho 46396 * seg52In0AccY36 rho)) =
        (-1) * (rho 46397 * seg52In0AccX36 rho) - rho 46396 * seg52In0AccY36 rho +
          (seg52In0AccY36 rho - seg52In0AccX36 rho * (-1)) * (rho 46396 + rho 46397) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46403 * (1 - rho 46401) = rho 46398 - rho 46399 - rho 46400 := ha5
      _ = (-1) * rho 46399 - rho 46400 + (seg52In0AccY36 rho - seg52In0AccX36 rho * (-1)) *
          (rho 46396 + rho 46397) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX37 rho = seg52In0AccX36 rho - Bool.toZMod bit * (seg52In0AccX36 rho - rho 46402) := by
    have hd : rho 46404 = Bool.toZMod bit * (rho 46402 - seg52In0AccX36 rho) := by
      rw [← hbit]
      unfold seg52In0AccX36
      linear_combination -r2013
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY37 rho = seg52In0AccY36 rho - Bool.toZMod bit * (seg52In0AccY36 rho - rho 46403) := by
    have hd : rho 46405 = Bool.toZMod bit * (rho 46403 - seg52In0AccY36 rho) := by
      rw [← hbit]
      unfold seg52In0AccY36
      linear_combination -r2014
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46396 * rho 46397 = rho 46406 := by linear_combination r2015
  have hd1 : rho 46396 * rho 46396 = rho 46407 := by linear_combination r2016
  have hd2 : rho 46397 * rho 46397 = rho 46408 := by linear_combination r2017
  have hd3 : rho 46409 * (rho 46397 * rho 46397 + rho 46396 * rho 46396 * (-1)) =
      2 * (rho 46396 * rho 46397) := by
    rw [hd0, hd1, hd2]
    linear_combination r2018
  have hd4 : rho 46410 * (2 - (rho 46397 * rho 46397 + rho 46396 * rho 46396 * (-1))) =
      rho 46397 * rho 46397 - rho 46396 * rho 46396 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2019
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX36 rho, seg52In0AccY36 rho⟩ ⟨rho 46396, rho 46397⟩
    ⟨rho 46402, rho 46403⟩ ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 46409, rho 46410⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2020 rho ∧ Seg52.relationRow2021 rho ∧ Seg52.relationRow2022 rho ∧ Seg52.relationRow2023 rho ∧ Seg52.relationRow2024 rho ∧ Seg52.relationRow2025 rho ∧ Seg52.relationRow2026 rho ∧ Seg52.relationRow2027 rho ∧ Seg52.relationRow2028 rho ∧ Seg52.relationRow2029 rho ∧ Seg52.relationRow2030 rho ∧ Seg52.relationRow2031 rho ∧ Seg52.relationRow2032 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032⟩

theorem seg52In0_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45845 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46409, rho 46410⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 46409, rho 46410⟩
        ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 46422, rho 46423⟩ := by
  obtain ⟨r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, r2030, r2031, r2032⟩ := seg52In0_rows37 rho h
  unfold Seg52.relationRow2020 at r2020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2020

  unfold Seg52.relationRow2021 at r2021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2021

  unfold Seg52.relationRow2022 at r2022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2022

  unfold Seg52.relationRow2023 at r2023

  unfold Seg52.relationRow2024 at r2024

  unfold Seg52.relationRow2025 at r2025

  unfold Seg52.relationRow2026 at r2026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2026

  unfold Seg52.relationRow2027 at r2027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2027

  unfold Seg52.relationRow2028 at r2028

  unfold Seg52.relationRow2029 at r2029

  unfold Seg52.relationRow2030 at r2030

  unfold Seg52.relationRow2031 at r2031

  unfold Seg52.relationRow2032 at r2032

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX38 rho = seg52In0AccX37 rho + rho 46417 := by
    unfold seg52In0AccX38 seg52In0AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 37]

    ring

  have hnexty : seg52In0AccY38 rho = seg52In0AccY37 rho + rho 46418 := by
    unfold seg52In0AccY38 seg52In0AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 37]

    ring

  have ha0 : (rho 46409 + rho 46410) * (seg52In0AccX37 rho + seg52In0AccY37 rho) = rho 46411 := by
    unfold seg52In0AccX37 seg52In0AccY37
    linear_combination r2020
  have ha1 : rho 46410 * seg52In0AccX37 rho = rho 46412 := by
    unfold seg52In0AccX37
    linear_combination r2021
  have ha2 : rho 46409 * seg52In0AccY37 rho = rho 46413 := by
    unfold seg52In0AccY37
    linear_combination r2022
  have ha3 : 3021 * rho 46412 * rho 46413 = rho 46414 := by
    linear_combination r2023
  have ha4 : rho 46415 * (1 + rho 46414) = rho 46412 + rho 46413 := by
    linear_combination r2024
  have ha5 : rho 46416 * (1 - rho 46414) = rho 46411 - rho 46412 - rho 46413 := by
    linear_combination r2025
  have haddx :
      rho 46415 * (1 + 3021 * (rho 46410 * seg52In0AccX37 rho) * (rho 46409 * seg52In0AccY37 rho)) =
        rho 46410 * seg52In0AccX37 rho + rho 46409 * seg52In0AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46416 * (1 - 3021 * (rho 46410 * seg52In0AccX37 rho) * (rho 46409 * seg52In0AccY37 rho)) =
        (-1) * (rho 46410 * seg52In0AccX37 rho) - rho 46409 * seg52In0AccY37 rho +
          (seg52In0AccY37 rho - seg52In0AccX37 rho * (-1)) * (rho 46409 + rho 46410) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46416 * (1 - rho 46414) = rho 46411 - rho 46412 - rho 46413 := ha5
      _ = (-1) * rho 46412 - rho 46413 + (seg52In0AccY37 rho - seg52In0AccX37 rho * (-1)) *
          (rho 46409 + rho 46410) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX38 rho = seg52In0AccX37 rho - Bool.toZMod bit * (seg52In0AccX37 rho - rho 46415) := by
    have hd : rho 46417 = Bool.toZMod bit * (rho 46415 - seg52In0AccX37 rho) := by
      rw [← hbit]
      unfold seg52In0AccX37
      linear_combination -r2026
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY38 rho = seg52In0AccY37 rho - Bool.toZMod bit * (seg52In0AccY37 rho - rho 46416) := by
    have hd : rho 46418 = Bool.toZMod bit * (rho 46416 - seg52In0AccY37 rho) := by
      rw [← hbit]
      unfold seg52In0AccY37
      linear_combination -r2027
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46409 * rho 46410 = rho 46419 := by linear_combination r2028
  have hd1 : rho 46409 * rho 46409 = rho 46420 := by linear_combination r2029
  have hd2 : rho 46410 * rho 46410 = rho 46421 := by linear_combination r2030
  have hd3 : rho 46422 * (rho 46410 * rho 46410 + rho 46409 * rho 46409 * (-1)) =
      2 * (rho 46409 * rho 46410) := by
    rw [hd0, hd1, hd2]
    linear_combination r2031
  have hd4 : rho 46423 * (2 - (rho 46410 * rho 46410 + rho 46409 * rho 46409 * (-1))) =
      rho 46410 * rho 46410 - rho 46409 * rho 46409 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2032
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX37 rho, seg52In0AccY37 rho⟩ ⟨rho 46409, rho 46410⟩
    ⟨rho 46415, rho 46416⟩ ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 46422, rho 46423⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2033 rho ∧ Seg52.relationRow2034 rho ∧ Seg52.relationRow2035 rho ∧ Seg52.relationRow2036 rho ∧ Seg52.relationRow2037 rho ∧ Seg52.relationRow2038 rho ∧ Seg52.relationRow2039 rho ∧ Seg52.relationRow2040 rho ∧ Seg52.relationRow2041 rho ∧ Seg52.relationRow2042 rho ∧ Seg52.relationRow2043 rho ∧ Seg52.relationRow2044 rho ∧ Seg52.relationRow2045 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045⟩

theorem seg52In0_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45846 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46422, rho 46423⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 46422, rho 46423⟩
        ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 46435, rho 46436⟩ := by
  obtain ⟨r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, r2043, r2044, r2045⟩ := seg52In0_rows38 rho h
  unfold Seg52.relationRow2033 at r2033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2033

  unfold Seg52.relationRow2034 at r2034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2034

  unfold Seg52.relationRow2035 at r2035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2035

  unfold Seg52.relationRow2036 at r2036

  unfold Seg52.relationRow2037 at r2037

  unfold Seg52.relationRow2038 at r2038

  unfold Seg52.relationRow2039 at r2039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2039

  unfold Seg52.relationRow2040 at r2040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2040

  unfold Seg52.relationRow2041 at r2041

  unfold Seg52.relationRow2042 at r2042

  unfold Seg52.relationRow2043 at r2043

  unfold Seg52.relationRow2044 at r2044

  unfold Seg52.relationRow2045 at r2045

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX39 rho = seg52In0AccX38 rho + rho 46430 := by
    unfold seg52In0AccX39 seg52In0AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 38]

    ring

  have hnexty : seg52In0AccY39 rho = seg52In0AccY38 rho + rho 46431 := by
    unfold seg52In0AccY39 seg52In0AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 38]

    ring

  have ha0 : (rho 46422 + rho 46423) * (seg52In0AccX38 rho + seg52In0AccY38 rho) = rho 46424 := by
    unfold seg52In0AccX38 seg52In0AccY38
    linear_combination r2033
  have ha1 : rho 46423 * seg52In0AccX38 rho = rho 46425 := by
    unfold seg52In0AccX38
    linear_combination r2034
  have ha2 : rho 46422 * seg52In0AccY38 rho = rho 46426 := by
    unfold seg52In0AccY38
    linear_combination r2035
  have ha3 : 3021 * rho 46425 * rho 46426 = rho 46427 := by
    linear_combination r2036
  have ha4 : rho 46428 * (1 + rho 46427) = rho 46425 + rho 46426 := by
    linear_combination r2037
  have ha5 : rho 46429 * (1 - rho 46427) = rho 46424 - rho 46425 - rho 46426 := by
    linear_combination r2038
  have haddx :
      rho 46428 * (1 + 3021 * (rho 46423 * seg52In0AccX38 rho) * (rho 46422 * seg52In0AccY38 rho)) =
        rho 46423 * seg52In0AccX38 rho + rho 46422 * seg52In0AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46429 * (1 - 3021 * (rho 46423 * seg52In0AccX38 rho) * (rho 46422 * seg52In0AccY38 rho)) =
        (-1) * (rho 46423 * seg52In0AccX38 rho) - rho 46422 * seg52In0AccY38 rho +
          (seg52In0AccY38 rho - seg52In0AccX38 rho * (-1)) * (rho 46422 + rho 46423) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46429 * (1 - rho 46427) = rho 46424 - rho 46425 - rho 46426 := ha5
      _ = (-1) * rho 46425 - rho 46426 + (seg52In0AccY38 rho - seg52In0AccX38 rho * (-1)) *
          (rho 46422 + rho 46423) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX39 rho = seg52In0AccX38 rho - Bool.toZMod bit * (seg52In0AccX38 rho - rho 46428) := by
    have hd : rho 46430 = Bool.toZMod bit * (rho 46428 - seg52In0AccX38 rho) := by
      rw [← hbit]
      unfold seg52In0AccX38
      linear_combination -r2039
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY39 rho = seg52In0AccY38 rho - Bool.toZMod bit * (seg52In0AccY38 rho - rho 46429) := by
    have hd : rho 46431 = Bool.toZMod bit * (rho 46429 - seg52In0AccY38 rho) := by
      rw [← hbit]
      unfold seg52In0AccY38
      linear_combination -r2040
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46422 * rho 46423 = rho 46432 := by linear_combination r2041
  have hd1 : rho 46422 * rho 46422 = rho 46433 := by linear_combination r2042
  have hd2 : rho 46423 * rho 46423 = rho 46434 := by linear_combination r2043
  have hd3 : rho 46435 * (rho 46423 * rho 46423 + rho 46422 * rho 46422 * (-1)) =
      2 * (rho 46422 * rho 46423) := by
    rw [hd0, hd1, hd2]
    linear_combination r2044
  have hd4 : rho 46436 * (2 - (rho 46423 * rho 46423 + rho 46422 * rho 46422 * (-1))) =
      rho 46423 * rho 46423 - rho 46422 * rho 46422 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2045
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX38 rho, seg52In0AccY38 rho⟩ ⟨rho 46422, rho 46423⟩
    ⟨rho 46428, rho 46429⟩ ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 46435, rho 46436⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2046 rho ∧ Seg52.relationRow2047 rho ∧ Seg52.relationRow2048 rho ∧ Seg52.relationRow2049 rho ∧ Seg52.relationRow2050 rho ∧ Seg52.relationRow2051 rho ∧ Seg52.relationRow2052 rho ∧ Seg52.relationRow2053 rho ∧ Seg52.relationRow2054 rho ∧ Seg52.relationRow2055 rho ∧ Seg52.relationRow2056 rho ∧ Seg52.relationRow2057 rho ∧ Seg52.relationRow2058 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058⟩

theorem seg52In0_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45847 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46435, rho 46436⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 46435, rho 46436⟩
        ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 46448, rho 46449⟩ := by
  obtain ⟨r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, r2056, r2057, r2058⟩ := seg52In0_rows39 rho h
  unfold Seg52.relationRow2046 at r2046

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2046

  unfold Seg52.relationRow2047 at r2047

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2047

  unfold Seg52.relationRow2048 at r2048

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2048

  unfold Seg52.relationRow2049 at r2049

  unfold Seg52.relationRow2050 at r2050

  unfold Seg52.relationRow2051 at r2051

  unfold Seg52.relationRow2052 at r2052

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2052

  unfold Seg52.relationRow2053 at r2053

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2053

  unfold Seg52.relationRow2054 at r2054

  unfold Seg52.relationRow2055 at r2055

  unfold Seg52.relationRow2056 at r2056

  unfold Seg52.relationRow2057 at r2057

  unfold Seg52.relationRow2058 at r2058

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX40 rho = seg52In0AccX39 rho + rho 46443 := by
    unfold seg52In0AccX40 seg52In0AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 39]

    ring

  have hnexty : seg52In0AccY40 rho = seg52In0AccY39 rho + rho 46444 := by
    unfold seg52In0AccY40 seg52In0AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 39]

    ring

  have ha0 : (rho 46435 + rho 46436) * (seg52In0AccX39 rho + seg52In0AccY39 rho) = rho 46437 := by
    unfold seg52In0AccX39 seg52In0AccY39
    linear_combination r2046
  have ha1 : rho 46436 * seg52In0AccX39 rho = rho 46438 := by
    unfold seg52In0AccX39
    linear_combination r2047
  have ha2 : rho 46435 * seg52In0AccY39 rho = rho 46439 := by
    unfold seg52In0AccY39
    linear_combination r2048
  have ha3 : 3021 * rho 46438 * rho 46439 = rho 46440 := by
    linear_combination r2049
  have ha4 : rho 46441 * (1 + rho 46440) = rho 46438 + rho 46439 := by
    linear_combination r2050
  have ha5 : rho 46442 * (1 - rho 46440) = rho 46437 - rho 46438 - rho 46439 := by
    linear_combination r2051
  have haddx :
      rho 46441 * (1 + 3021 * (rho 46436 * seg52In0AccX39 rho) * (rho 46435 * seg52In0AccY39 rho)) =
        rho 46436 * seg52In0AccX39 rho + rho 46435 * seg52In0AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46442 * (1 - 3021 * (rho 46436 * seg52In0AccX39 rho) * (rho 46435 * seg52In0AccY39 rho)) =
        (-1) * (rho 46436 * seg52In0AccX39 rho) - rho 46435 * seg52In0AccY39 rho +
          (seg52In0AccY39 rho - seg52In0AccX39 rho * (-1)) * (rho 46435 + rho 46436) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46442 * (1 - rho 46440) = rho 46437 - rho 46438 - rho 46439 := ha5
      _ = (-1) * rho 46438 - rho 46439 + (seg52In0AccY39 rho - seg52In0AccX39 rho * (-1)) *
          (rho 46435 + rho 46436) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX40 rho = seg52In0AccX39 rho - Bool.toZMod bit * (seg52In0AccX39 rho - rho 46441) := by
    have hd : rho 46443 = Bool.toZMod bit * (rho 46441 - seg52In0AccX39 rho) := by
      rw [← hbit]
      unfold seg52In0AccX39
      linear_combination -r2052
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY40 rho = seg52In0AccY39 rho - Bool.toZMod bit * (seg52In0AccY39 rho - rho 46442) := by
    have hd : rho 46444 = Bool.toZMod bit * (rho 46442 - seg52In0AccY39 rho) := by
      rw [← hbit]
      unfold seg52In0AccY39
      linear_combination -r2053
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46435 * rho 46436 = rho 46445 := by linear_combination r2054
  have hd1 : rho 46435 * rho 46435 = rho 46446 := by linear_combination r2055
  have hd2 : rho 46436 * rho 46436 = rho 46447 := by linear_combination r2056
  have hd3 : rho 46448 * (rho 46436 * rho 46436 + rho 46435 * rho 46435 * (-1)) =
      2 * (rho 46435 * rho 46436) := by
    rw [hd0, hd1, hd2]
    linear_combination r2057
  have hd4 : rho 46449 * (2 - (rho 46436 * rho 46436 + rho 46435 * rho 46435 * (-1))) =
      rho 46436 * rho 46436 - rho 46435 * rho 46435 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2058
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX39 rho, seg52In0AccY39 rho⟩ ⟨rho 46435, rho 46436⟩
    ⟨rho 46441, rho 46442⟩ ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 46448, rho 46449⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2059 rho ∧ Seg52.relationRow2060 rho ∧ Seg52.relationRow2061 rho ∧ Seg52.relationRow2062 rho ∧ Seg52.relationRow2063 rho ∧ Seg52.relationRow2064 rho ∧ Seg52.relationRow2065 rho ∧ Seg52.relationRow2066 rho ∧ Seg52.relationRow2067 rho ∧ Seg52.relationRow2068 rho ∧ Seg52.relationRow2069 rho ∧ Seg52.relationRow2070 rho ∧ Seg52.relationRow2071 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071, _, _, _, _, _, _, _, _⟩

  exact ⟨r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071⟩

theorem seg52In0_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45848 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46448, rho 46449⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 46448, rho 46449⟩
        ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 46461, rho 46462⟩ := by
  obtain ⟨r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, r2069, r2070, r2071⟩ := seg52In0_rows40 rho h
  unfold Seg52.relationRow2059 at r2059

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2059

  unfold Seg52.relationRow2060 at r2060

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2060

  unfold Seg52.relationRow2061 at r2061

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2061

  unfold Seg52.relationRow2062 at r2062

  unfold Seg52.relationRow2063 at r2063

  unfold Seg52.relationRow2064 at r2064

  unfold Seg52.relationRow2065 at r2065

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2065

  unfold Seg52.relationRow2066 at r2066

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2066

  unfold Seg52.relationRow2067 at r2067

  unfold Seg52.relationRow2068 at r2068

  unfold Seg52.relationRow2069 at r2069

  unfold Seg52.relationRow2070 at r2070

  unfold Seg52.relationRow2071 at r2071

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX41 rho = seg52In0AccX40 rho + rho 46456 := by
    unfold seg52In0AccX41 seg52In0AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 40]

    ring

  have hnexty : seg52In0AccY41 rho = seg52In0AccY40 rho + rho 46457 := by
    unfold seg52In0AccY41 seg52In0AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 40]

    ring

  have ha0 : (rho 46448 + rho 46449) * (seg52In0AccX40 rho + seg52In0AccY40 rho) = rho 46450 := by
    unfold seg52In0AccX40 seg52In0AccY40
    linear_combination r2059
  have ha1 : rho 46449 * seg52In0AccX40 rho = rho 46451 := by
    unfold seg52In0AccX40
    linear_combination r2060
  have ha2 : rho 46448 * seg52In0AccY40 rho = rho 46452 := by
    unfold seg52In0AccY40
    linear_combination r2061
  have ha3 : 3021 * rho 46451 * rho 46452 = rho 46453 := by
    linear_combination r2062
  have ha4 : rho 46454 * (1 + rho 46453) = rho 46451 + rho 46452 := by
    linear_combination r2063
  have ha5 : rho 46455 * (1 - rho 46453) = rho 46450 - rho 46451 - rho 46452 := by
    linear_combination r2064
  have haddx :
      rho 46454 * (1 + 3021 * (rho 46449 * seg52In0AccX40 rho) * (rho 46448 * seg52In0AccY40 rho)) =
        rho 46449 * seg52In0AccX40 rho + rho 46448 * seg52In0AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46455 * (1 - 3021 * (rho 46449 * seg52In0AccX40 rho) * (rho 46448 * seg52In0AccY40 rho)) =
        (-1) * (rho 46449 * seg52In0AccX40 rho) - rho 46448 * seg52In0AccY40 rho +
          (seg52In0AccY40 rho - seg52In0AccX40 rho * (-1)) * (rho 46448 + rho 46449) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46455 * (1 - rho 46453) = rho 46450 - rho 46451 - rho 46452 := ha5
      _ = (-1) * rho 46451 - rho 46452 + (seg52In0AccY40 rho - seg52In0AccX40 rho * (-1)) *
          (rho 46448 + rho 46449) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX41 rho = seg52In0AccX40 rho - Bool.toZMod bit * (seg52In0AccX40 rho - rho 46454) := by
    have hd : rho 46456 = Bool.toZMod bit * (rho 46454 - seg52In0AccX40 rho) := by
      rw [← hbit]
      unfold seg52In0AccX40
      linear_combination -r2065
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY41 rho = seg52In0AccY40 rho - Bool.toZMod bit * (seg52In0AccY40 rho - rho 46455) := by
    have hd : rho 46457 = Bool.toZMod bit * (rho 46455 - seg52In0AccY40 rho) := by
      rw [← hbit]
      unfold seg52In0AccY40
      linear_combination -r2066
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46448 * rho 46449 = rho 46458 := by linear_combination r2067
  have hd1 : rho 46448 * rho 46448 = rho 46459 := by linear_combination r2068
  have hd2 : rho 46449 * rho 46449 = rho 46460 := by linear_combination r2069
  have hd3 : rho 46461 * (rho 46449 * rho 46449 + rho 46448 * rho 46448 * (-1)) =
      2 * (rho 46448 * rho 46449) := by
    rw [hd0, hd1, hd2]
    linear_combination r2070
  have hd4 : rho 46462 * (2 - (rho 46449 * rho 46449 + rho 46448 * rho 46448 * (-1))) =
      rho 46449 * rho 46449 - rho 46448 * rho 46448 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2071
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX40 rho, seg52In0AccY40 rho⟩ ⟨rho 46448, rho 46449⟩
    ⟨rho 46454, rho 46455⟩ ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 46461, rho 46462⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2072 rho ∧ Seg52.relationRow2073 rho ∧ Seg52.relationRow2074 rho ∧ Seg52.relationRow2075 rho ∧ Seg52.relationRow2076 rho ∧ Seg52.relationRow2077 rho ∧ Seg52.relationRow2078 rho ∧ Seg52.relationRow2079 rho ∧ Seg52.relationRow2080 rho ∧ Seg52.relationRow2081 rho ∧ Seg52.relationRow2082 rho ∧ Seg52.relationRow2083 rho ∧ Seg52.relationRow2084 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, p26, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨r2080, r2081, r2082, r2083, r2084, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079, r2080, r2081, r2082, r2083, r2084⟩

theorem seg52In0_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45849 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46461, rho 46462⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 46461, rho 46462⟩
        ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 46474, rho 46475⟩ := by
  obtain ⟨r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079, r2080, r2081, r2082, r2083, r2084⟩ := seg52In0_rows41 rho h
  unfold Seg52.relationRow2072 at r2072

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2072

  unfold Seg52.relationRow2073 at r2073

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2073

  unfold Seg52.relationRow2074 at r2074

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2074

  unfold Seg52.relationRow2075 at r2075

  unfold Seg52.relationRow2076 at r2076

  unfold Seg52.relationRow2077 at r2077

  unfold Seg52.relationRow2078 at r2078

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2078

  unfold Seg52.relationRow2079 at r2079

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2079

  unfold Seg52.relationRow2080 at r2080

  unfold Seg52.relationRow2081 at r2081

  unfold Seg52.relationRow2082 at r2082

  unfold Seg52.relationRow2083 at r2083

  unfold Seg52.relationRow2084 at r2084

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX42 rho = seg52In0AccX41 rho + rho 46469 := by
    unfold seg52In0AccX42 seg52In0AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 41]

    ring

  have hnexty : seg52In0AccY42 rho = seg52In0AccY41 rho + rho 46470 := by
    unfold seg52In0AccY42 seg52In0AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 41]

    ring

  have ha0 : (rho 46461 + rho 46462) * (seg52In0AccX41 rho + seg52In0AccY41 rho) = rho 46463 := by
    unfold seg52In0AccX41 seg52In0AccY41
    linear_combination r2072
  have ha1 : rho 46462 * seg52In0AccX41 rho = rho 46464 := by
    unfold seg52In0AccX41
    linear_combination r2073
  have ha2 : rho 46461 * seg52In0AccY41 rho = rho 46465 := by
    unfold seg52In0AccY41
    linear_combination r2074
  have ha3 : 3021 * rho 46464 * rho 46465 = rho 46466 := by
    linear_combination r2075
  have ha4 : rho 46467 * (1 + rho 46466) = rho 46464 + rho 46465 := by
    linear_combination r2076
  have ha5 : rho 46468 * (1 - rho 46466) = rho 46463 - rho 46464 - rho 46465 := by
    linear_combination r2077
  have haddx :
      rho 46467 * (1 + 3021 * (rho 46462 * seg52In0AccX41 rho) * (rho 46461 * seg52In0AccY41 rho)) =
        rho 46462 * seg52In0AccX41 rho + rho 46461 * seg52In0AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46468 * (1 - 3021 * (rho 46462 * seg52In0AccX41 rho) * (rho 46461 * seg52In0AccY41 rho)) =
        (-1) * (rho 46462 * seg52In0AccX41 rho) - rho 46461 * seg52In0AccY41 rho +
          (seg52In0AccY41 rho - seg52In0AccX41 rho * (-1)) * (rho 46461 + rho 46462) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46468 * (1 - rho 46466) = rho 46463 - rho 46464 - rho 46465 := ha5
      _ = (-1) * rho 46464 - rho 46465 + (seg52In0AccY41 rho - seg52In0AccX41 rho * (-1)) *
          (rho 46461 + rho 46462) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX42 rho = seg52In0AccX41 rho - Bool.toZMod bit * (seg52In0AccX41 rho - rho 46467) := by
    have hd : rho 46469 = Bool.toZMod bit * (rho 46467 - seg52In0AccX41 rho) := by
      rw [← hbit]
      unfold seg52In0AccX41
      linear_combination -r2078
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY42 rho = seg52In0AccY41 rho - Bool.toZMod bit * (seg52In0AccY41 rho - rho 46468) := by
    have hd : rho 46470 = Bool.toZMod bit * (rho 46468 - seg52In0AccY41 rho) := by
      rw [← hbit]
      unfold seg52In0AccY41
      linear_combination -r2079
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46461 * rho 46462 = rho 46471 := by linear_combination r2080
  have hd1 : rho 46461 * rho 46461 = rho 46472 := by linear_combination r2081
  have hd2 : rho 46462 * rho 46462 = rho 46473 := by linear_combination r2082
  have hd3 : rho 46474 * (rho 46462 * rho 46462 + rho 46461 * rho 46461 * (-1)) =
      2 * (rho 46461 * rho 46462) := by
    rw [hd0, hd1, hd2]
    linear_combination r2083
  have hd4 : rho 46475 * (2 - (rho 46462 * rho 46462 + rho 46461 * rho 46461 * (-1))) =
      rho 46462 * rho 46462 - rho 46461 * rho 46461 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2084
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX41 rho, seg52In0AccY41 rho⟩ ⟨rho 46461, rho 46462⟩
    ⟨rho 46467, rho 46468⟩ ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 46474, rho 46475⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2085 rho ∧ Seg52.relationRow2086 rho ∧ Seg52.relationRow2087 rho ∧ Seg52.relationRow2088 rho ∧ Seg52.relationRow2089 rho ∧ Seg52.relationRow2090 rho ∧ Seg52.relationRow2091 rho ∧ Seg52.relationRow2092 rho ∧ Seg52.relationRow2093 rho ∧ Seg52.relationRow2094 rho ∧ Seg52.relationRow2095 rho ∧ Seg52.relationRow2096 rho ∧ Seg52.relationRow2097 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p26, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097⟩

theorem seg52In0_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45850 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46474, rho 46475⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 46474, rho 46475⟩
        ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 46487, rho 46488⟩ := by
  obtain ⟨r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097⟩ := seg52In0_rows42 rho h
  unfold Seg52.relationRow2085 at r2085

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2085

  unfold Seg52.relationRow2086 at r2086

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2086

  unfold Seg52.relationRow2087 at r2087

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2087

  unfold Seg52.relationRow2088 at r2088

  unfold Seg52.relationRow2089 at r2089

  unfold Seg52.relationRow2090 at r2090

  unfold Seg52.relationRow2091 at r2091

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2091

  unfold Seg52.relationRow2092 at r2092

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2092

  unfold Seg52.relationRow2093 at r2093

  unfold Seg52.relationRow2094 at r2094

  unfold Seg52.relationRow2095 at r2095

  unfold Seg52.relationRow2096 at r2096

  unfold Seg52.relationRow2097 at r2097

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX43 rho = seg52In0AccX42 rho + rho 46482 := by
    unfold seg52In0AccX43 seg52In0AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 42]

    ring

  have hnexty : seg52In0AccY43 rho = seg52In0AccY42 rho + rho 46483 := by
    unfold seg52In0AccY43 seg52In0AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 42]

    ring

  have ha0 : (rho 46474 + rho 46475) * (seg52In0AccX42 rho + seg52In0AccY42 rho) = rho 46476 := by
    unfold seg52In0AccX42 seg52In0AccY42
    linear_combination r2085
  have ha1 : rho 46475 * seg52In0AccX42 rho = rho 46477 := by
    unfold seg52In0AccX42
    linear_combination r2086
  have ha2 : rho 46474 * seg52In0AccY42 rho = rho 46478 := by
    unfold seg52In0AccY42
    linear_combination r2087
  have ha3 : 3021 * rho 46477 * rho 46478 = rho 46479 := by
    linear_combination r2088
  have ha4 : rho 46480 * (1 + rho 46479) = rho 46477 + rho 46478 := by
    linear_combination r2089
  have ha5 : rho 46481 * (1 - rho 46479) = rho 46476 - rho 46477 - rho 46478 := by
    linear_combination r2090
  have haddx :
      rho 46480 * (1 + 3021 * (rho 46475 * seg52In0AccX42 rho) * (rho 46474 * seg52In0AccY42 rho)) =
        rho 46475 * seg52In0AccX42 rho + rho 46474 * seg52In0AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46481 * (1 - 3021 * (rho 46475 * seg52In0AccX42 rho) * (rho 46474 * seg52In0AccY42 rho)) =
        (-1) * (rho 46475 * seg52In0AccX42 rho) - rho 46474 * seg52In0AccY42 rho +
          (seg52In0AccY42 rho - seg52In0AccX42 rho * (-1)) * (rho 46474 + rho 46475) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46481 * (1 - rho 46479) = rho 46476 - rho 46477 - rho 46478 := ha5
      _ = (-1) * rho 46477 - rho 46478 + (seg52In0AccY42 rho - seg52In0AccX42 rho * (-1)) *
          (rho 46474 + rho 46475) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX43 rho = seg52In0AccX42 rho - Bool.toZMod bit * (seg52In0AccX42 rho - rho 46480) := by
    have hd : rho 46482 = Bool.toZMod bit * (rho 46480 - seg52In0AccX42 rho) := by
      rw [← hbit]
      unfold seg52In0AccX42
      linear_combination -r2091
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY43 rho = seg52In0AccY42 rho - Bool.toZMod bit * (seg52In0AccY42 rho - rho 46481) := by
    have hd : rho 46483 = Bool.toZMod bit * (rho 46481 - seg52In0AccY42 rho) := by
      rw [← hbit]
      unfold seg52In0AccY42
      linear_combination -r2092
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46474 * rho 46475 = rho 46484 := by linear_combination r2093
  have hd1 : rho 46474 * rho 46474 = rho 46485 := by linear_combination r2094
  have hd2 : rho 46475 * rho 46475 = rho 46486 := by linear_combination r2095
  have hd3 : rho 46487 * (rho 46475 * rho 46475 + rho 46474 * rho 46474 * (-1)) =
      2 * (rho 46474 * rho 46475) := by
    rw [hd0, hd1, hd2]
    linear_combination r2096
  have hd4 : rho 46488 * (2 - (rho 46475 * rho 46475 + rho 46474 * rho 46474 * (-1))) =
      rho 46475 * rho 46475 - rho 46474 * rho 46474 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2097
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX42 rho, seg52In0AccY42 rho⟩ ⟨rho 46474, rho 46475⟩
    ⟨rho 46480, rho 46481⟩ ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 46487, rho 46488⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2098 rho ∧ Seg52.relationRow2099 rho ∧ Seg52.relationRow2100 rho ∧ Seg52.relationRow2101 rho ∧ Seg52.relationRow2102 rho ∧ Seg52.relationRow2103 rho ∧ Seg52.relationRow2104 rho ∧ Seg52.relationRow2105 rho ∧ Seg52.relationRow2106 rho ∧ Seg52.relationRow2107 rho ∧ Seg52.relationRow2108 rho ∧ Seg52.relationRow2109 rho ∧ Seg52.relationRow2110 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p26, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, r2108, r2109, r2110⟩

theorem seg52In0_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45851 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46487, rho 46488⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 46487, rho 46488⟩
        ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 46500, rho 46501⟩ := by
  obtain ⟨r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, r2108, r2109, r2110⟩ := seg52In0_rows43 rho h
  unfold Seg52.relationRow2098 at r2098

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2098

  unfold Seg52.relationRow2099 at r2099

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2099

  unfold Seg52.relationRow2100 at r2100

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2100

  unfold Seg52.relationRow2101 at r2101

  unfold Seg52.relationRow2102 at r2102

  unfold Seg52.relationRow2103 at r2103

  unfold Seg52.relationRow2104 at r2104

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2104

  unfold Seg52.relationRow2105 at r2105

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2105

  unfold Seg52.relationRow2106 at r2106

  unfold Seg52.relationRow2107 at r2107

  unfold Seg52.relationRow2108 at r2108

  unfold Seg52.relationRow2109 at r2109

  unfold Seg52.relationRow2110 at r2110

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX44 rho = seg52In0AccX43 rho + rho 46495 := by
    unfold seg52In0AccX44 seg52In0AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 43]

    ring

  have hnexty : seg52In0AccY44 rho = seg52In0AccY43 rho + rho 46496 := by
    unfold seg52In0AccY44 seg52In0AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 43]

    ring

  have ha0 : (rho 46487 + rho 46488) * (seg52In0AccX43 rho + seg52In0AccY43 rho) = rho 46489 := by
    unfold seg52In0AccX43 seg52In0AccY43
    linear_combination r2098
  have ha1 : rho 46488 * seg52In0AccX43 rho = rho 46490 := by
    unfold seg52In0AccX43
    linear_combination r2099
  have ha2 : rho 46487 * seg52In0AccY43 rho = rho 46491 := by
    unfold seg52In0AccY43
    linear_combination r2100
  have ha3 : 3021 * rho 46490 * rho 46491 = rho 46492 := by
    linear_combination r2101
  have ha4 : rho 46493 * (1 + rho 46492) = rho 46490 + rho 46491 := by
    linear_combination r2102
  have ha5 : rho 46494 * (1 - rho 46492) = rho 46489 - rho 46490 - rho 46491 := by
    linear_combination r2103
  have haddx :
      rho 46493 * (1 + 3021 * (rho 46488 * seg52In0AccX43 rho) * (rho 46487 * seg52In0AccY43 rho)) =
        rho 46488 * seg52In0AccX43 rho + rho 46487 * seg52In0AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46494 * (1 - 3021 * (rho 46488 * seg52In0AccX43 rho) * (rho 46487 * seg52In0AccY43 rho)) =
        (-1) * (rho 46488 * seg52In0AccX43 rho) - rho 46487 * seg52In0AccY43 rho +
          (seg52In0AccY43 rho - seg52In0AccX43 rho * (-1)) * (rho 46487 + rho 46488) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46494 * (1 - rho 46492) = rho 46489 - rho 46490 - rho 46491 := ha5
      _ = (-1) * rho 46490 - rho 46491 + (seg52In0AccY43 rho - seg52In0AccX43 rho * (-1)) *
          (rho 46487 + rho 46488) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX44 rho = seg52In0AccX43 rho - Bool.toZMod bit * (seg52In0AccX43 rho - rho 46493) := by
    have hd : rho 46495 = Bool.toZMod bit * (rho 46493 - seg52In0AccX43 rho) := by
      rw [← hbit]
      unfold seg52In0AccX43
      linear_combination -r2104
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY44 rho = seg52In0AccY43 rho - Bool.toZMod bit * (seg52In0AccY43 rho - rho 46494) := by
    have hd : rho 46496 = Bool.toZMod bit * (rho 46494 - seg52In0AccY43 rho) := by
      rw [← hbit]
      unfold seg52In0AccY43
      linear_combination -r2105
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46487 * rho 46488 = rho 46497 := by linear_combination r2106
  have hd1 : rho 46487 * rho 46487 = rho 46498 := by linear_combination r2107
  have hd2 : rho 46488 * rho 46488 = rho 46499 := by linear_combination r2108
  have hd3 : rho 46500 * (rho 46488 * rho 46488 + rho 46487 * rho 46487 * (-1)) =
      2 * (rho 46487 * rho 46488) := by
    rw [hd0, hd1, hd2]
    linear_combination r2109
  have hd4 : rho 46501 * (2 - (rho 46488 * rho 46488 + rho 46487 * rho 46487 * (-1))) =
      rho 46488 * rho 46488 - rho 46487 * rho 46487 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2110
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX43 rho, seg52In0AccY43 rho⟩ ⟨rho 46487, rho 46488⟩
    ⟨rho 46493, rho 46494⟩ ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 46500, rho 46501⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg52In0_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg52In0_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg52In0_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg52In0_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg52In0_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg52In0_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg52In0_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg52In0_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg52In0_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg52In0_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
