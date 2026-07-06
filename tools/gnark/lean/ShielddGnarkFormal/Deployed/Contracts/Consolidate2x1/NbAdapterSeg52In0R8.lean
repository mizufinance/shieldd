import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2043 rho ∧ Seg52.relationRow2044 rho ∧ Seg52.relationRow2045 rho ∧ Seg52.relationRow2046 rho ∧ Seg52.relationRow2047 rho ∧ Seg52.relationRow2048 rho ∧ Seg52.relationRow2049 rho ∧ Seg52.relationRow2050 rho ∧ Seg52.relationRow2051 rho ∧ Seg52.relationRow2052 rho ∧ Seg52.relationRow2053 rho ∧ Seg52.relationRow2054 rho ∧ Seg52.relationRow2055 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055⟩

theorem seg52In0_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45256 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46432, rho 46433⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 46432, rho 46433⟩
        ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 46445, rho 46446⟩ := by
  obtain ⟨r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055⟩ := seg52In0_rows88 rho h
  unfold Seg52.relationRow2043 at r2043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2043

  unfold Seg52.relationRow2044 at r2044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2044

  unfold Seg52.relationRow2045 at r2045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2045

  unfold Seg52.relationRow2046 at r2046

  unfold Seg52.relationRow2047 at r2047

  unfold Seg52.relationRow2048 at r2048

  unfold Seg52.relationRow2049 at r2049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2049

  unfold Seg52.relationRow2050 at r2050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2050

  unfold Seg52.relationRow2051 at r2051

  unfold Seg52.relationRow2052 at r2052

  unfold Seg52.relationRow2053 at r2053

  unfold Seg52.relationRow2054 at r2054

  unfold Seg52.relationRow2055 at r2055

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX89 rho = seg52In0AccX88 rho + rho 46440 := by
    unfold seg52In0AccX89 seg52In0AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 88]

    ring

  have hnexty : seg52In0AccY89 rho = seg52In0AccY88 rho + rho 46441 := by
    unfold seg52In0AccY89 seg52In0AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 88]

    ring

  have ha0 : (rho 46432 + rho 46433) * (seg52In0AccX88 rho + seg52In0AccY88 rho) = rho 46434 := by
    unfold seg52In0AccX88 seg52In0AccY88
    linear_combination r2043
  have ha1 : rho 46433 * seg52In0AccX88 rho = rho 46435 := by
    unfold seg52In0AccX88
    linear_combination r2044
  have ha2 : rho 46432 * seg52In0AccY88 rho = rho 46436 := by
    unfold seg52In0AccY88
    linear_combination r2045
  have ha3 : 3021 * rho 46435 * rho 46436 = rho 46437 := by
    linear_combination r2046
  have ha4 : rho 46438 * (1 + rho 46437) = rho 46435 + rho 46436 := by
    linear_combination r2047
  have ha5 : rho 46439 * (1 - rho 46437) = rho 46434 - rho 46435 - rho 46436 := by
    linear_combination r2048
  have haddx :
      rho 46438 * (1 + 3021 * (rho 46433 * seg52In0AccX88 rho) * (rho 46432 * seg52In0AccY88 rho)) =
        rho 46433 * seg52In0AccX88 rho + rho 46432 * seg52In0AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46439 * (1 - 3021 * (rho 46433 * seg52In0AccX88 rho) * (rho 46432 * seg52In0AccY88 rho)) =
        (-1) * (rho 46433 * seg52In0AccX88 rho) - rho 46432 * seg52In0AccY88 rho +
          (seg52In0AccY88 rho - seg52In0AccX88 rho * (-1)) * (rho 46432 + rho 46433) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46439 * (1 - rho 46437) = rho 46434 - rho 46435 - rho 46436 := ha5
      _ = (-1) * rho 46435 - rho 46436 + (seg52In0AccY88 rho - seg52In0AccX88 rho * (-1)) *
          (rho 46432 + rho 46433) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX89 rho = seg52In0AccX88 rho - Bool.toZMod bit * (seg52In0AccX88 rho - rho 46438) := by
    have hd : rho 46440 = Bool.toZMod bit * (rho 46438 - seg52In0AccX88 rho) := by
      rw [← hbit]
      unfold seg52In0AccX88
      linear_combination -r2049
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY89 rho = seg52In0AccY88 rho - Bool.toZMod bit * (seg52In0AccY88 rho - rho 46439) := by
    have hd : rho 46441 = Bool.toZMod bit * (rho 46439 - seg52In0AccY88 rho) := by
      rw [← hbit]
      unfold seg52In0AccY88
      linear_combination -r2050
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46432 * rho 46433 = rho 46442 := by linear_combination r2051
  have hd1 : rho 46432 * rho 46432 = rho 46443 := by linear_combination r2052
  have hd2 : rho 46433 * rho 46433 = rho 46444 := by linear_combination r2053
  have hd3 : rho 46445 * (rho 46433 * rho 46433 + rho 46432 * rho 46432 * (-1)) =
      2 * (rho 46432 * rho 46433) := by
    rw [hd0, hd1, hd2]
    linear_combination r2054
  have hd4 : rho 46446 * (2 - (rho 46433 * rho 46433 + rho 46432 * rho 46432 * (-1))) =
      rho 46433 * rho 46433 - rho 46432 * rho 46432 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2055
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 46432, rho 46433⟩
    ⟨rho 46438, rho 46439⟩ ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 46445, rho 46446⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2056 rho ∧ Seg52.relationRow2057 rho ∧ Seg52.relationRow2058 rho ∧ Seg52.relationRow2059 rho ∧ Seg52.relationRow2060 rho ∧ Seg52.relationRow2061 rho ∧ Seg52.relationRow2062 rho ∧ Seg52.relationRow2063 rho ∧ Seg52.relationRow2064 rho ∧ Seg52.relationRow2065 rho ∧ Seg52.relationRow2066 rho ∧ Seg52.relationRow2067 rho ∧ Seg52.relationRow2068 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068⟩

theorem seg52In0_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45257 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46445, rho 46446⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 46445, rho 46446⟩
        ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 46458, rho 46459⟩ := by
  obtain ⟨r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068⟩ := seg52In0_rows89 rho h
  unfold Seg52.relationRow2056 at r2056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2056

  unfold Seg52.relationRow2057 at r2057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2057

  unfold Seg52.relationRow2058 at r2058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2058

  unfold Seg52.relationRow2059 at r2059

  unfold Seg52.relationRow2060 at r2060

  unfold Seg52.relationRow2061 at r2061

  unfold Seg52.relationRow2062 at r2062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2062

  unfold Seg52.relationRow2063 at r2063

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2063

  unfold Seg52.relationRow2064 at r2064

  unfold Seg52.relationRow2065 at r2065

  unfold Seg52.relationRow2066 at r2066

  unfold Seg52.relationRow2067 at r2067

  unfold Seg52.relationRow2068 at r2068

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX90 rho = seg52In0AccX89 rho + rho 46453 := by
    unfold seg52In0AccX90 seg52In0AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 89]

    ring

  have hnexty : seg52In0AccY90 rho = seg52In0AccY89 rho + rho 46454 := by
    unfold seg52In0AccY90 seg52In0AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 89]

    ring

  have ha0 : (rho 46445 + rho 46446) * (seg52In0AccX89 rho + seg52In0AccY89 rho) = rho 46447 := by
    unfold seg52In0AccX89 seg52In0AccY89
    linear_combination r2056
  have ha1 : rho 46446 * seg52In0AccX89 rho = rho 46448 := by
    unfold seg52In0AccX89
    linear_combination r2057
  have ha2 : rho 46445 * seg52In0AccY89 rho = rho 46449 := by
    unfold seg52In0AccY89
    linear_combination r2058
  have ha3 : 3021 * rho 46448 * rho 46449 = rho 46450 := by
    linear_combination r2059
  have ha4 : rho 46451 * (1 + rho 46450) = rho 46448 + rho 46449 := by
    linear_combination r2060
  have ha5 : rho 46452 * (1 - rho 46450) = rho 46447 - rho 46448 - rho 46449 := by
    linear_combination r2061
  have haddx :
      rho 46451 * (1 + 3021 * (rho 46446 * seg52In0AccX89 rho) * (rho 46445 * seg52In0AccY89 rho)) =
        rho 46446 * seg52In0AccX89 rho + rho 46445 * seg52In0AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46452 * (1 - 3021 * (rho 46446 * seg52In0AccX89 rho) * (rho 46445 * seg52In0AccY89 rho)) =
        (-1) * (rho 46446 * seg52In0AccX89 rho) - rho 46445 * seg52In0AccY89 rho +
          (seg52In0AccY89 rho - seg52In0AccX89 rho * (-1)) * (rho 46445 + rho 46446) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46452 * (1 - rho 46450) = rho 46447 - rho 46448 - rho 46449 := ha5
      _ = (-1) * rho 46448 - rho 46449 + (seg52In0AccY89 rho - seg52In0AccX89 rho * (-1)) *
          (rho 46445 + rho 46446) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX90 rho = seg52In0AccX89 rho - Bool.toZMod bit * (seg52In0AccX89 rho - rho 46451) := by
    have hd : rho 46453 = Bool.toZMod bit * (rho 46451 - seg52In0AccX89 rho) := by
      rw [← hbit]
      unfold seg52In0AccX89
      linear_combination -r2062
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY90 rho = seg52In0AccY89 rho - Bool.toZMod bit * (seg52In0AccY89 rho - rho 46452) := by
    have hd : rho 46454 = Bool.toZMod bit * (rho 46452 - seg52In0AccY89 rho) := by
      rw [← hbit]
      unfold seg52In0AccY89
      linear_combination -r2063
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46445 * rho 46446 = rho 46455 := by linear_combination r2064
  have hd1 : rho 46445 * rho 46445 = rho 46456 := by linear_combination r2065
  have hd2 : rho 46446 * rho 46446 = rho 46457 := by linear_combination r2066
  have hd3 : rho 46458 * (rho 46446 * rho 46446 + rho 46445 * rho 46445 * (-1)) =
      2 * (rho 46445 * rho 46446) := by
    rw [hd0, hd1, hd2]
    linear_combination r2067
  have hd4 : rho 46459 * (2 - (rho 46446 * rho 46446 + rho 46445 * rho 46445 * (-1))) =
      rho 46446 * rho 46446 - rho 46445 * rho 46445 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2068
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX89 rho, seg52In0AccY89 rho⟩ ⟨rho 46445, rho 46446⟩
    ⟨rho 46451, rho 46452⟩ ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 46458, rho 46459⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2069 rho ∧ Seg52.relationRow2070 rho ∧ Seg52.relationRow2071 rho ∧ Seg52.relationRow2072 rho ∧ Seg52.relationRow2073 rho ∧ Seg52.relationRow2074 rho ∧ Seg52.relationRow2075 rho ∧ Seg52.relationRow2076 rho ∧ Seg52.relationRow2077 rho ∧ Seg52.relationRow2078 rho ∧ Seg52.relationRow2079 rho ∧ Seg52.relationRow2080 rho ∧ Seg52.relationRow2081 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079, r2080, r2081⟩

theorem seg52In0_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45258 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46458, rho 46459⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 46458, rho 46459⟩
        ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 46471, rho 46472⟩ := by
  obtain ⟨r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079, r2080, r2081⟩ := seg52In0_rows90 rho h
  unfold Seg52.relationRow2069 at r2069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2069

  unfold Seg52.relationRow2070 at r2070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2070

  unfold Seg52.relationRow2071 at r2071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2071

  unfold Seg52.relationRow2072 at r2072

  unfold Seg52.relationRow2073 at r2073

  unfold Seg52.relationRow2074 at r2074

  unfold Seg52.relationRow2075 at r2075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2075

  unfold Seg52.relationRow2076 at r2076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2076

  unfold Seg52.relationRow2077 at r2077

  unfold Seg52.relationRow2078 at r2078

  unfold Seg52.relationRow2079 at r2079

  unfold Seg52.relationRow2080 at r2080

  unfold Seg52.relationRow2081 at r2081

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX91 rho = seg52In0AccX90 rho + rho 46466 := by
    unfold seg52In0AccX91 seg52In0AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 90]

    ring

  have hnexty : seg52In0AccY91 rho = seg52In0AccY90 rho + rho 46467 := by
    unfold seg52In0AccY91 seg52In0AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 90]

    ring

  have ha0 : (rho 46458 + rho 46459) * (seg52In0AccX90 rho + seg52In0AccY90 rho) = rho 46460 := by
    unfold seg52In0AccX90 seg52In0AccY90
    linear_combination r2069
  have ha1 : rho 46459 * seg52In0AccX90 rho = rho 46461 := by
    unfold seg52In0AccX90
    linear_combination r2070
  have ha2 : rho 46458 * seg52In0AccY90 rho = rho 46462 := by
    unfold seg52In0AccY90
    linear_combination r2071
  have ha3 : 3021 * rho 46461 * rho 46462 = rho 46463 := by
    linear_combination r2072
  have ha4 : rho 46464 * (1 + rho 46463) = rho 46461 + rho 46462 := by
    linear_combination r2073
  have ha5 : rho 46465 * (1 - rho 46463) = rho 46460 - rho 46461 - rho 46462 := by
    linear_combination r2074
  have haddx :
      rho 46464 * (1 + 3021 * (rho 46459 * seg52In0AccX90 rho) * (rho 46458 * seg52In0AccY90 rho)) =
        rho 46459 * seg52In0AccX90 rho + rho 46458 * seg52In0AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46465 * (1 - 3021 * (rho 46459 * seg52In0AccX90 rho) * (rho 46458 * seg52In0AccY90 rho)) =
        (-1) * (rho 46459 * seg52In0AccX90 rho) - rho 46458 * seg52In0AccY90 rho +
          (seg52In0AccY90 rho - seg52In0AccX90 rho * (-1)) * (rho 46458 + rho 46459) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46465 * (1 - rho 46463) = rho 46460 - rho 46461 - rho 46462 := ha5
      _ = (-1) * rho 46461 - rho 46462 + (seg52In0AccY90 rho - seg52In0AccX90 rho * (-1)) *
          (rho 46458 + rho 46459) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX91 rho = seg52In0AccX90 rho - Bool.toZMod bit * (seg52In0AccX90 rho - rho 46464) := by
    have hd : rho 46466 = Bool.toZMod bit * (rho 46464 - seg52In0AccX90 rho) := by
      rw [← hbit]
      unfold seg52In0AccX90
      linear_combination -r2075
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY91 rho = seg52In0AccY90 rho - Bool.toZMod bit * (seg52In0AccY90 rho - rho 46465) := by
    have hd : rho 46467 = Bool.toZMod bit * (rho 46465 - seg52In0AccY90 rho) := by
      rw [← hbit]
      unfold seg52In0AccY90
      linear_combination -r2076
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46458 * rho 46459 = rho 46468 := by linear_combination r2077
  have hd1 : rho 46458 * rho 46458 = rho 46469 := by linear_combination r2078
  have hd2 : rho 46459 * rho 46459 = rho 46470 := by linear_combination r2079
  have hd3 : rho 46471 * (rho 46459 * rho 46459 + rho 46458 * rho 46458 * (-1)) =
      2 * (rho 46458 * rho 46459) := by
    rw [hd0, hd1, hd2]
    linear_combination r2080
  have hd4 : rho 46472 * (2 - (rho 46459 * rho 46459 + rho 46458 * rho 46458 * (-1))) =
      rho 46459 * rho 46459 - rho 46458 * rho 46458 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2081
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX90 rho, seg52In0AccY90 rho⟩ ⟨rho 46458, rho 46459⟩
    ⟨rho 46464, rho 46465⟩ ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 46471, rho 46472⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2082 rho ∧ Seg52.relationRow2083 rho ∧ Seg52.relationRow2084 rho ∧ Seg52.relationRow2085 rho ∧ Seg52.relationRow2086 rho ∧ Seg52.relationRow2087 rho ∧ Seg52.relationRow2088 rho ∧ Seg52.relationRow2089 rho ∧ Seg52.relationRow2090 rho ∧ Seg52.relationRow2091 rho ∧ Seg52.relationRow2092 rho ∧ Seg52.relationRow2093 rho ∧ Seg52.relationRow2094 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094⟩

theorem seg52In0_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45259 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46471, rho 46472⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 46471, rho 46472⟩
        ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 46484, rho 46485⟩ := by
  obtain ⟨r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094⟩ := seg52In0_rows91 rho h
  unfold Seg52.relationRow2082 at r2082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2082

  unfold Seg52.relationRow2083 at r2083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2083

  unfold Seg52.relationRow2084 at r2084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2084

  unfold Seg52.relationRow2085 at r2085

  unfold Seg52.relationRow2086 at r2086

  unfold Seg52.relationRow2087 at r2087

  unfold Seg52.relationRow2088 at r2088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2088

  unfold Seg52.relationRow2089 at r2089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2089

  unfold Seg52.relationRow2090 at r2090

  unfold Seg52.relationRow2091 at r2091

  unfold Seg52.relationRow2092 at r2092

  unfold Seg52.relationRow2093 at r2093

  unfold Seg52.relationRow2094 at r2094

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX92 rho = seg52In0AccX91 rho + rho 46479 := by
    unfold seg52In0AccX92 seg52In0AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 91]

    ring

  have hnexty : seg52In0AccY92 rho = seg52In0AccY91 rho + rho 46480 := by
    unfold seg52In0AccY92 seg52In0AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 91]

    ring

  have ha0 : (rho 46471 + rho 46472) * (seg52In0AccX91 rho + seg52In0AccY91 rho) = rho 46473 := by
    unfold seg52In0AccX91 seg52In0AccY91
    linear_combination r2082
  have ha1 : rho 46472 * seg52In0AccX91 rho = rho 46474 := by
    unfold seg52In0AccX91
    linear_combination r2083
  have ha2 : rho 46471 * seg52In0AccY91 rho = rho 46475 := by
    unfold seg52In0AccY91
    linear_combination r2084
  have ha3 : 3021 * rho 46474 * rho 46475 = rho 46476 := by
    linear_combination r2085
  have ha4 : rho 46477 * (1 + rho 46476) = rho 46474 + rho 46475 := by
    linear_combination r2086
  have ha5 : rho 46478 * (1 - rho 46476) = rho 46473 - rho 46474 - rho 46475 := by
    linear_combination r2087
  have haddx :
      rho 46477 * (1 + 3021 * (rho 46472 * seg52In0AccX91 rho) * (rho 46471 * seg52In0AccY91 rho)) =
        rho 46472 * seg52In0AccX91 rho + rho 46471 * seg52In0AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46478 * (1 - 3021 * (rho 46472 * seg52In0AccX91 rho) * (rho 46471 * seg52In0AccY91 rho)) =
        (-1) * (rho 46472 * seg52In0AccX91 rho) - rho 46471 * seg52In0AccY91 rho +
          (seg52In0AccY91 rho - seg52In0AccX91 rho * (-1)) * (rho 46471 + rho 46472) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46478 * (1 - rho 46476) = rho 46473 - rho 46474 - rho 46475 := ha5
      _ = (-1) * rho 46474 - rho 46475 + (seg52In0AccY91 rho - seg52In0AccX91 rho * (-1)) *
          (rho 46471 + rho 46472) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX92 rho = seg52In0AccX91 rho - Bool.toZMod bit * (seg52In0AccX91 rho - rho 46477) := by
    have hd : rho 46479 = Bool.toZMod bit * (rho 46477 - seg52In0AccX91 rho) := by
      rw [← hbit]
      unfold seg52In0AccX91
      linear_combination -r2088
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY92 rho = seg52In0AccY91 rho - Bool.toZMod bit * (seg52In0AccY91 rho - rho 46478) := by
    have hd : rho 46480 = Bool.toZMod bit * (rho 46478 - seg52In0AccY91 rho) := by
      rw [← hbit]
      unfold seg52In0AccY91
      linear_combination -r2089
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46471 * rho 46472 = rho 46481 := by linear_combination r2090
  have hd1 : rho 46471 * rho 46471 = rho 46482 := by linear_combination r2091
  have hd2 : rho 46472 * rho 46472 = rho 46483 := by linear_combination r2092
  have hd3 : rho 46484 * (rho 46472 * rho 46472 + rho 46471 * rho 46471 * (-1)) =
      2 * (rho 46471 * rho 46472) := by
    rw [hd0, hd1, hd2]
    linear_combination r2093
  have hd4 : rho 46485 * (2 - (rho 46472 * rho 46472 + rho 46471 * rho 46471 * (-1))) =
      rho 46472 * rho 46472 - rho 46471 * rho 46471 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2094
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX91 rho, seg52In0AccY91 rho⟩ ⟨rho 46471, rho 46472⟩
    ⟨rho 46477, rho 46478⟩ ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 46484, rho 46485⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2095 rho ∧ Seg52.relationRow2096 rho ∧ Seg52.relationRow2097 rho ∧ Seg52.relationRow2098 rho ∧ Seg52.relationRow2099 rho ∧ Seg52.relationRow2100 rho ∧ Seg52.relationRow2101 rho ∧ Seg52.relationRow2102 rho ∧ Seg52.relationRow2103 rho ∧ Seg52.relationRow2104 rho ∧ Seg52.relationRow2105 rho ∧ Seg52.relationRow2106 rho ∧ Seg52.relationRow2107 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107⟩

theorem seg52In0_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45260 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46484, rho 46485⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 46484, rho 46485⟩
        ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 46497, rho 46498⟩ := by
  obtain ⟨r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107⟩ := seg52In0_rows92 rho h
  unfold Seg52.relationRow2095 at r2095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2095

  unfold Seg52.relationRow2096 at r2096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2096

  unfold Seg52.relationRow2097 at r2097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2097

  unfold Seg52.relationRow2098 at r2098

  unfold Seg52.relationRow2099 at r2099

  unfold Seg52.relationRow2100 at r2100

  unfold Seg52.relationRow2101 at r2101

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2101

  unfold Seg52.relationRow2102 at r2102

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2102

  unfold Seg52.relationRow2103 at r2103

  unfold Seg52.relationRow2104 at r2104

  unfold Seg52.relationRow2105 at r2105

  unfold Seg52.relationRow2106 at r2106

  unfold Seg52.relationRow2107 at r2107

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX93 rho = seg52In0AccX92 rho + rho 46492 := by
    unfold seg52In0AccX93 seg52In0AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 92]

    ring

  have hnexty : seg52In0AccY93 rho = seg52In0AccY92 rho + rho 46493 := by
    unfold seg52In0AccY93 seg52In0AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 92]

    ring

  have ha0 : (rho 46484 + rho 46485) * (seg52In0AccX92 rho + seg52In0AccY92 rho) = rho 46486 := by
    unfold seg52In0AccX92 seg52In0AccY92
    linear_combination r2095
  have ha1 : rho 46485 * seg52In0AccX92 rho = rho 46487 := by
    unfold seg52In0AccX92
    linear_combination r2096
  have ha2 : rho 46484 * seg52In0AccY92 rho = rho 46488 := by
    unfold seg52In0AccY92
    linear_combination r2097
  have ha3 : 3021 * rho 46487 * rho 46488 = rho 46489 := by
    linear_combination r2098
  have ha4 : rho 46490 * (1 + rho 46489) = rho 46487 + rho 46488 := by
    linear_combination r2099
  have ha5 : rho 46491 * (1 - rho 46489) = rho 46486 - rho 46487 - rho 46488 := by
    linear_combination r2100
  have haddx :
      rho 46490 * (1 + 3021 * (rho 46485 * seg52In0AccX92 rho) * (rho 46484 * seg52In0AccY92 rho)) =
        rho 46485 * seg52In0AccX92 rho + rho 46484 * seg52In0AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46491 * (1 - 3021 * (rho 46485 * seg52In0AccX92 rho) * (rho 46484 * seg52In0AccY92 rho)) =
        (-1) * (rho 46485 * seg52In0AccX92 rho) - rho 46484 * seg52In0AccY92 rho +
          (seg52In0AccY92 rho - seg52In0AccX92 rho * (-1)) * (rho 46484 + rho 46485) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46491 * (1 - rho 46489) = rho 46486 - rho 46487 - rho 46488 := ha5
      _ = (-1) * rho 46487 - rho 46488 + (seg52In0AccY92 rho - seg52In0AccX92 rho * (-1)) *
          (rho 46484 + rho 46485) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX93 rho = seg52In0AccX92 rho - Bool.toZMod bit * (seg52In0AccX92 rho - rho 46490) := by
    have hd : rho 46492 = Bool.toZMod bit * (rho 46490 - seg52In0AccX92 rho) := by
      rw [← hbit]
      unfold seg52In0AccX92
      linear_combination -r2101
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY93 rho = seg52In0AccY92 rho - Bool.toZMod bit * (seg52In0AccY92 rho - rho 46491) := by
    have hd : rho 46493 = Bool.toZMod bit * (rho 46491 - seg52In0AccY92 rho) := by
      rw [← hbit]
      unfold seg52In0AccY92
      linear_combination -r2102
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46484 * rho 46485 = rho 46494 := by linear_combination r2103
  have hd1 : rho 46484 * rho 46484 = rho 46495 := by linear_combination r2104
  have hd2 : rho 46485 * rho 46485 = rho 46496 := by linear_combination r2105
  have hd3 : rho 46497 * (rho 46485 * rho 46485 + rho 46484 * rho 46484 * (-1)) =
      2 * (rho 46484 * rho 46485) := by
    rw [hd0, hd1, hd2]
    linear_combination r2106
  have hd4 : rho 46498 * (2 - (rho 46485 * rho 46485 + rho 46484 * rho 46484 * (-1))) =
      rho 46485 * rho 46485 - rho 46484 * rho 46484 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2107
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX92 rho, seg52In0AccY92 rho⟩ ⟨rho 46484, rho 46485⟩
    ⟨rho 46490, rho 46491⟩ ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 46497, rho 46498⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2108 rho ∧ Seg52.relationRow2109 rho ∧ Seg52.relationRow2110 rho ∧ Seg52.relationRow2111 rho ∧ Seg52.relationRow2112 rho ∧ Seg52.relationRow2113 rho ∧ Seg52.relationRow2114 rho ∧ Seg52.relationRow2115 rho ∧ Seg52.relationRow2116 rho ∧ Seg52.relationRow2117 rho ∧ Seg52.relationRow2118 rho ∧ Seg52.relationRow2119 rho ∧ Seg52.relationRow2120 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120⟩

theorem seg52In0_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45261 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46497, rho 46498⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 46497, rho 46498⟩
        ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 46510, rho 46511⟩ := by
  obtain ⟨r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120⟩ := seg52In0_rows93 rho h
  unfold Seg52.relationRow2108 at r2108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2108

  unfold Seg52.relationRow2109 at r2109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2109

  unfold Seg52.relationRow2110 at r2110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2110

  unfold Seg52.relationRow2111 at r2111

  unfold Seg52.relationRow2112 at r2112

  unfold Seg52.relationRow2113 at r2113

  unfold Seg52.relationRow2114 at r2114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2114

  unfold Seg52.relationRow2115 at r2115

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2115

  unfold Seg52.relationRow2116 at r2116

  unfold Seg52.relationRow2117 at r2117

  unfold Seg52.relationRow2118 at r2118

  unfold Seg52.relationRow2119 at r2119

  unfold Seg52.relationRow2120 at r2120

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX94 rho = seg52In0AccX93 rho + rho 46505 := by
    unfold seg52In0AccX94 seg52In0AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 93]

    ring

  have hnexty : seg52In0AccY94 rho = seg52In0AccY93 rho + rho 46506 := by
    unfold seg52In0AccY94 seg52In0AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 93]

    ring

  have ha0 : (rho 46497 + rho 46498) * (seg52In0AccX93 rho + seg52In0AccY93 rho) = rho 46499 := by
    unfold seg52In0AccX93 seg52In0AccY93
    linear_combination r2108
  have ha1 : rho 46498 * seg52In0AccX93 rho = rho 46500 := by
    unfold seg52In0AccX93
    linear_combination r2109
  have ha2 : rho 46497 * seg52In0AccY93 rho = rho 46501 := by
    unfold seg52In0AccY93
    linear_combination r2110
  have ha3 : 3021 * rho 46500 * rho 46501 = rho 46502 := by
    linear_combination r2111
  have ha4 : rho 46503 * (1 + rho 46502) = rho 46500 + rho 46501 := by
    linear_combination r2112
  have ha5 : rho 46504 * (1 - rho 46502) = rho 46499 - rho 46500 - rho 46501 := by
    linear_combination r2113
  have haddx :
      rho 46503 * (1 + 3021 * (rho 46498 * seg52In0AccX93 rho) * (rho 46497 * seg52In0AccY93 rho)) =
        rho 46498 * seg52In0AccX93 rho + rho 46497 * seg52In0AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46504 * (1 - 3021 * (rho 46498 * seg52In0AccX93 rho) * (rho 46497 * seg52In0AccY93 rho)) =
        (-1) * (rho 46498 * seg52In0AccX93 rho) - rho 46497 * seg52In0AccY93 rho +
          (seg52In0AccY93 rho - seg52In0AccX93 rho * (-1)) * (rho 46497 + rho 46498) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46504 * (1 - rho 46502) = rho 46499 - rho 46500 - rho 46501 := ha5
      _ = (-1) * rho 46500 - rho 46501 + (seg52In0AccY93 rho - seg52In0AccX93 rho * (-1)) *
          (rho 46497 + rho 46498) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX94 rho = seg52In0AccX93 rho - Bool.toZMod bit * (seg52In0AccX93 rho - rho 46503) := by
    have hd : rho 46505 = Bool.toZMod bit * (rho 46503 - seg52In0AccX93 rho) := by
      rw [← hbit]
      unfold seg52In0AccX93
      linear_combination -r2114
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY94 rho = seg52In0AccY93 rho - Bool.toZMod bit * (seg52In0AccY93 rho - rho 46504) := by
    have hd : rho 46506 = Bool.toZMod bit * (rho 46504 - seg52In0AccY93 rho) := by
      rw [← hbit]
      unfold seg52In0AccY93
      linear_combination -r2115
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46497 * rho 46498 = rho 46507 := by linear_combination r2116
  have hd1 : rho 46497 * rho 46497 = rho 46508 := by linear_combination r2117
  have hd2 : rho 46498 * rho 46498 = rho 46509 := by linear_combination r2118
  have hd3 : rho 46510 * (rho 46498 * rho 46498 + rho 46497 * rho 46497 * (-1)) =
      2 * (rho 46497 * rho 46498) := by
    rw [hd0, hd1, hd2]
    linear_combination r2119
  have hd4 : rho 46511 * (2 - (rho 46498 * rho 46498 + rho 46497 * rho 46497 * (-1))) =
      rho 46498 * rho 46498 - rho 46497 * rho 46497 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2120
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX93 rho, seg52In0AccY93 rho⟩ ⟨rho 46497, rho 46498⟩
    ⟨rho 46503, rho 46504⟩ ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 46510, rho 46511⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2121 rho ∧ Seg52.relationRow2122 rho ∧ Seg52.relationRow2123 rho ∧ Seg52.relationRow2124 rho ∧ Seg52.relationRow2125 rho ∧ Seg52.relationRow2126 rho ∧ Seg52.relationRow2127 rho ∧ Seg52.relationRow2128 rho ∧ Seg52.relationRow2129 rho ∧ Seg52.relationRow2130 rho ∧ Seg52.relationRow2131 rho ∧ Seg52.relationRow2132 rho ∧ Seg52.relationRow2133 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133⟩

theorem seg52In0_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45262 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46510, rho 46511⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 46510, rho 46511⟩
        ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 46523, rho 46524⟩ := by
  obtain ⟨r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133⟩ := seg52In0_rows94 rho h
  unfold Seg52.relationRow2121 at r2121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2121

  unfold Seg52.relationRow2122 at r2122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2122

  unfold Seg52.relationRow2123 at r2123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2123

  unfold Seg52.relationRow2124 at r2124

  unfold Seg52.relationRow2125 at r2125

  unfold Seg52.relationRow2126 at r2126

  unfold Seg52.relationRow2127 at r2127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2127

  unfold Seg52.relationRow2128 at r2128

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2128

  unfold Seg52.relationRow2129 at r2129

  unfold Seg52.relationRow2130 at r2130

  unfold Seg52.relationRow2131 at r2131

  unfold Seg52.relationRow2132 at r2132

  unfold Seg52.relationRow2133 at r2133

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX95 rho = seg52In0AccX94 rho + rho 46518 := by
    unfold seg52In0AccX95 seg52In0AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 94]

    ring

  have hnexty : seg52In0AccY95 rho = seg52In0AccY94 rho + rho 46519 := by
    unfold seg52In0AccY95 seg52In0AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 94]

    ring

  have ha0 : (rho 46510 + rho 46511) * (seg52In0AccX94 rho + seg52In0AccY94 rho) = rho 46512 := by
    unfold seg52In0AccX94 seg52In0AccY94
    linear_combination r2121
  have ha1 : rho 46511 * seg52In0AccX94 rho = rho 46513 := by
    unfold seg52In0AccX94
    linear_combination r2122
  have ha2 : rho 46510 * seg52In0AccY94 rho = rho 46514 := by
    unfold seg52In0AccY94
    linear_combination r2123
  have ha3 : 3021 * rho 46513 * rho 46514 = rho 46515 := by
    linear_combination r2124
  have ha4 : rho 46516 * (1 + rho 46515) = rho 46513 + rho 46514 := by
    linear_combination r2125
  have ha5 : rho 46517 * (1 - rho 46515) = rho 46512 - rho 46513 - rho 46514 := by
    linear_combination r2126
  have haddx :
      rho 46516 * (1 + 3021 * (rho 46511 * seg52In0AccX94 rho) * (rho 46510 * seg52In0AccY94 rho)) =
        rho 46511 * seg52In0AccX94 rho + rho 46510 * seg52In0AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46517 * (1 - 3021 * (rho 46511 * seg52In0AccX94 rho) * (rho 46510 * seg52In0AccY94 rho)) =
        (-1) * (rho 46511 * seg52In0AccX94 rho) - rho 46510 * seg52In0AccY94 rho +
          (seg52In0AccY94 rho - seg52In0AccX94 rho * (-1)) * (rho 46510 + rho 46511) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46517 * (1 - rho 46515) = rho 46512 - rho 46513 - rho 46514 := ha5
      _ = (-1) * rho 46513 - rho 46514 + (seg52In0AccY94 rho - seg52In0AccX94 rho * (-1)) *
          (rho 46510 + rho 46511) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX95 rho = seg52In0AccX94 rho - Bool.toZMod bit * (seg52In0AccX94 rho - rho 46516) := by
    have hd : rho 46518 = Bool.toZMod bit * (rho 46516 - seg52In0AccX94 rho) := by
      rw [← hbit]
      unfold seg52In0AccX94
      linear_combination -r2127
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY95 rho = seg52In0AccY94 rho - Bool.toZMod bit * (seg52In0AccY94 rho - rho 46517) := by
    have hd : rho 46519 = Bool.toZMod bit * (rho 46517 - seg52In0AccY94 rho) := by
      rw [← hbit]
      unfold seg52In0AccY94
      linear_combination -r2128
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46510 * rho 46511 = rho 46520 := by linear_combination r2129
  have hd1 : rho 46510 * rho 46510 = rho 46521 := by linear_combination r2130
  have hd2 : rho 46511 * rho 46511 = rho 46522 := by linear_combination r2131
  have hd3 : rho 46523 * (rho 46511 * rho 46511 + rho 46510 * rho 46510 * (-1)) =
      2 * (rho 46510 * rho 46511) := by
    rw [hd0, hd1, hd2]
    linear_combination r2132
  have hd4 : rho 46524 * (2 - (rho 46511 * rho 46511 + rho 46510 * rho 46510 * (-1))) =
      rho 46511 * rho 46511 - rho 46510 * rho 46510 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2133
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX94 rho, seg52In0AccY94 rho⟩ ⟨rho 46510, rho 46511⟩
    ⟨rho 46516, rho 46517⟩ ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 46523, rho 46524⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2134 rho ∧ Seg52.relationRow2135 rho ∧ Seg52.relationRow2136 rho ∧ Seg52.relationRow2137 rho ∧ Seg52.relationRow2138 rho ∧ Seg52.relationRow2139 rho ∧ Seg52.relationRow2140 rho ∧ Seg52.relationRow2141 rho ∧ Seg52.relationRow2142 rho ∧ Seg52.relationRow2143 rho ∧ Seg52.relationRow2144 rho ∧ Seg52.relationRow2145 rho ∧ Seg52.relationRow2146 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146⟩

theorem seg52In0_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45263 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46523, rho 46524⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 46523, rho 46524⟩
        ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 46536, rho 46537⟩ := by
  obtain ⟨r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146⟩ := seg52In0_rows95 rho h
  unfold Seg52.relationRow2134 at r2134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2134

  unfold Seg52.relationRow2135 at r2135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2135

  unfold Seg52.relationRow2136 at r2136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2136

  unfold Seg52.relationRow2137 at r2137

  unfold Seg52.relationRow2138 at r2138

  unfold Seg52.relationRow2139 at r2139

  unfold Seg52.relationRow2140 at r2140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2140

  unfold Seg52.relationRow2141 at r2141

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2141

  unfold Seg52.relationRow2142 at r2142

  unfold Seg52.relationRow2143 at r2143

  unfold Seg52.relationRow2144 at r2144

  unfold Seg52.relationRow2145 at r2145

  unfold Seg52.relationRow2146 at r2146

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX96 rho = seg52In0AccX95 rho + rho 46531 := by
    unfold seg52In0AccX96 seg52In0AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 95]

    ring

  have hnexty : seg52In0AccY96 rho = seg52In0AccY95 rho + rho 46532 := by
    unfold seg52In0AccY96 seg52In0AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 95]

    ring

  have ha0 : (rho 46523 + rho 46524) * (seg52In0AccX95 rho + seg52In0AccY95 rho) = rho 46525 := by
    unfold seg52In0AccX95 seg52In0AccY95
    linear_combination r2134
  have ha1 : rho 46524 * seg52In0AccX95 rho = rho 46526 := by
    unfold seg52In0AccX95
    linear_combination r2135
  have ha2 : rho 46523 * seg52In0AccY95 rho = rho 46527 := by
    unfold seg52In0AccY95
    linear_combination r2136
  have ha3 : 3021 * rho 46526 * rho 46527 = rho 46528 := by
    linear_combination r2137
  have ha4 : rho 46529 * (1 + rho 46528) = rho 46526 + rho 46527 := by
    linear_combination r2138
  have ha5 : rho 46530 * (1 - rho 46528) = rho 46525 - rho 46526 - rho 46527 := by
    linear_combination r2139
  have haddx :
      rho 46529 * (1 + 3021 * (rho 46524 * seg52In0AccX95 rho) * (rho 46523 * seg52In0AccY95 rho)) =
        rho 46524 * seg52In0AccX95 rho + rho 46523 * seg52In0AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46530 * (1 - 3021 * (rho 46524 * seg52In0AccX95 rho) * (rho 46523 * seg52In0AccY95 rho)) =
        (-1) * (rho 46524 * seg52In0AccX95 rho) - rho 46523 * seg52In0AccY95 rho +
          (seg52In0AccY95 rho - seg52In0AccX95 rho * (-1)) * (rho 46523 + rho 46524) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46530 * (1 - rho 46528) = rho 46525 - rho 46526 - rho 46527 := ha5
      _ = (-1) * rho 46526 - rho 46527 + (seg52In0AccY95 rho - seg52In0AccX95 rho * (-1)) *
          (rho 46523 + rho 46524) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX96 rho = seg52In0AccX95 rho - Bool.toZMod bit * (seg52In0AccX95 rho - rho 46529) := by
    have hd : rho 46531 = Bool.toZMod bit * (rho 46529 - seg52In0AccX95 rho) := by
      rw [← hbit]
      unfold seg52In0AccX95
      linear_combination -r2140
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY96 rho = seg52In0AccY95 rho - Bool.toZMod bit * (seg52In0AccY95 rho - rho 46530) := by
    have hd : rho 46532 = Bool.toZMod bit * (rho 46530 - seg52In0AccY95 rho) := by
      rw [← hbit]
      unfold seg52In0AccY95
      linear_combination -r2141
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46523 * rho 46524 = rho 46533 := by linear_combination r2142
  have hd1 : rho 46523 * rho 46523 = rho 46534 := by linear_combination r2143
  have hd2 : rho 46524 * rho 46524 = rho 46535 := by linear_combination r2144
  have hd3 : rho 46536 * (rho 46524 * rho 46524 + rho 46523 * rho 46523 * (-1)) =
      2 * (rho 46523 * rho 46524) := by
    rw [hd0, hd1, hd2]
    linear_combination r2145
  have hd4 : rho 46537 * (2 - (rho 46524 * rho 46524 + rho 46523 * rho 46523 * (-1))) =
      rho 46524 * rho 46524 - rho 46523 * rho 46523 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2146
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX95 rho, seg52In0AccY95 rho⟩ ⟨rho 46523, rho 46524⟩
    ⟨rho 46529, rho 46530⟩ ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 46536, rho 46537⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2147 rho ∧ Seg52.relationRow2148 rho ∧ Seg52.relationRow2149 rho ∧ Seg52.relationRow2150 rho ∧ Seg52.relationRow2151 rho ∧ Seg52.relationRow2152 rho ∧ Seg52.relationRow2153 rho ∧ Seg52.relationRow2154 rho ∧ Seg52.relationRow2155 rho ∧ Seg52.relationRow2156 rho ∧ Seg52.relationRow2157 rho ∧ Seg52.relationRow2158 rho ∧ Seg52.relationRow2159 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩

  exact ⟨r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩

theorem seg52In0_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45264 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46536, rho 46537⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 46536, rho 46537⟩
        ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 46549, rho 46550⟩ := by
  obtain ⟨r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩ := seg52In0_rows96 rho h
  unfold Seg52.relationRow2147 at r2147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2147

  unfold Seg52.relationRow2148 at r2148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2148

  unfold Seg52.relationRow2149 at r2149

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2149

  unfold Seg52.relationRow2150 at r2150

  unfold Seg52.relationRow2151 at r2151

  unfold Seg52.relationRow2152 at r2152

  unfold Seg52.relationRow2153 at r2153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2153

  unfold Seg52.relationRow2154 at r2154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2154

  unfold Seg52.relationRow2155 at r2155

  unfold Seg52.relationRow2156 at r2156

  unfold Seg52.relationRow2157 at r2157

  unfold Seg52.relationRow2158 at r2158

  unfold Seg52.relationRow2159 at r2159

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX97 rho = seg52In0AccX96 rho + rho 46544 := by
    unfold seg52In0AccX97 seg52In0AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 96]

    ring

  have hnexty : seg52In0AccY97 rho = seg52In0AccY96 rho + rho 46545 := by
    unfold seg52In0AccY97 seg52In0AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 96]

    ring

  have ha0 : (rho 46536 + rho 46537) * (seg52In0AccX96 rho + seg52In0AccY96 rho) = rho 46538 := by
    unfold seg52In0AccX96 seg52In0AccY96
    linear_combination r2147
  have ha1 : rho 46537 * seg52In0AccX96 rho = rho 46539 := by
    unfold seg52In0AccX96
    linear_combination r2148
  have ha2 : rho 46536 * seg52In0AccY96 rho = rho 46540 := by
    unfold seg52In0AccY96
    linear_combination r2149
  have ha3 : 3021 * rho 46539 * rho 46540 = rho 46541 := by
    linear_combination r2150
  have ha4 : rho 46542 * (1 + rho 46541) = rho 46539 + rho 46540 := by
    linear_combination r2151
  have ha5 : rho 46543 * (1 - rho 46541) = rho 46538 - rho 46539 - rho 46540 := by
    linear_combination r2152
  have haddx :
      rho 46542 * (1 + 3021 * (rho 46537 * seg52In0AccX96 rho) * (rho 46536 * seg52In0AccY96 rho)) =
        rho 46537 * seg52In0AccX96 rho + rho 46536 * seg52In0AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46543 * (1 - 3021 * (rho 46537 * seg52In0AccX96 rho) * (rho 46536 * seg52In0AccY96 rho)) =
        (-1) * (rho 46537 * seg52In0AccX96 rho) - rho 46536 * seg52In0AccY96 rho +
          (seg52In0AccY96 rho - seg52In0AccX96 rho * (-1)) * (rho 46536 + rho 46537) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46543 * (1 - rho 46541) = rho 46538 - rho 46539 - rho 46540 := ha5
      _ = (-1) * rho 46539 - rho 46540 + (seg52In0AccY96 rho - seg52In0AccX96 rho * (-1)) *
          (rho 46536 + rho 46537) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX97 rho = seg52In0AccX96 rho - Bool.toZMod bit * (seg52In0AccX96 rho - rho 46542) := by
    have hd : rho 46544 = Bool.toZMod bit * (rho 46542 - seg52In0AccX96 rho) := by
      rw [← hbit]
      unfold seg52In0AccX96
      linear_combination -r2153
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY97 rho = seg52In0AccY96 rho - Bool.toZMod bit * (seg52In0AccY96 rho - rho 46543) := by
    have hd : rho 46545 = Bool.toZMod bit * (rho 46543 - seg52In0AccY96 rho) := by
      rw [← hbit]
      unfold seg52In0AccY96
      linear_combination -r2154
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46536 * rho 46537 = rho 46546 := by linear_combination r2155
  have hd1 : rho 46536 * rho 46536 = rho 46547 := by linear_combination r2156
  have hd2 : rho 46537 * rho 46537 = rho 46548 := by linear_combination r2157
  have hd3 : rho 46549 * (rho 46537 * rho 46537 + rho 46536 * rho 46536 * (-1)) =
      2 * (rho 46536 * rho 46537) := by
    rw [hd0, hd1, hd2]
    linear_combination r2158
  have hd4 : rho 46550 * (2 - (rho 46537 * rho 46537 + rho 46536 * rho 46536 * (-1))) =
      rho 46537 * rho 46537 - rho 46536 * rho 46536 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2159
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX96 rho, seg52In0AccY96 rho⟩ ⟨rho 46536, rho 46537⟩
    ⟨rho 46542, rho 46543⟩ ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 46549, rho 46550⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2160 rho ∧ Seg52.relationRow2161 rho ∧ Seg52.relationRow2162 rho ∧ Seg52.relationRow2163 rho ∧ Seg52.relationRow2164 rho ∧ Seg52.relationRow2165 rho ∧ Seg52.relationRow2166 rho ∧ Seg52.relationRow2167 rho ∧ Seg52.relationRow2168 rho ∧ Seg52.relationRow2169 rho ∧ Seg52.relationRow2170 rho ∧ Seg52.relationRow2171 rho ∧ Seg52.relationRow2172 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p27, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172⟩

theorem seg52In0_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45265 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46549, rho 46550⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 46549, rho 46550⟩
        ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 46562, rho 46563⟩ := by
  obtain ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172⟩ := seg52In0_rows97 rho h
  unfold Seg52.relationRow2160 at r2160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2160

  unfold Seg52.relationRow2161 at r2161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2161

  unfold Seg52.relationRow2162 at r2162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2162

  unfold Seg52.relationRow2163 at r2163

  unfold Seg52.relationRow2164 at r2164

  unfold Seg52.relationRow2165 at r2165

  unfold Seg52.relationRow2166 at r2166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2166

  unfold Seg52.relationRow2167 at r2167

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2167

  unfold Seg52.relationRow2168 at r2168

  unfold Seg52.relationRow2169 at r2169

  unfold Seg52.relationRow2170 at r2170

  unfold Seg52.relationRow2171 at r2171

  unfold Seg52.relationRow2172 at r2172

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX98 rho = seg52In0AccX97 rho + rho 46557 := by
    unfold seg52In0AccX98 seg52In0AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 97]

    ring

  have hnexty : seg52In0AccY98 rho = seg52In0AccY97 rho + rho 46558 := by
    unfold seg52In0AccY98 seg52In0AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 97]

    ring

  have ha0 : (rho 46549 + rho 46550) * (seg52In0AccX97 rho + seg52In0AccY97 rho) = rho 46551 := by
    unfold seg52In0AccX97 seg52In0AccY97
    linear_combination r2160
  have ha1 : rho 46550 * seg52In0AccX97 rho = rho 46552 := by
    unfold seg52In0AccX97
    linear_combination r2161
  have ha2 : rho 46549 * seg52In0AccY97 rho = rho 46553 := by
    unfold seg52In0AccY97
    linear_combination r2162
  have ha3 : 3021 * rho 46552 * rho 46553 = rho 46554 := by
    linear_combination r2163
  have ha4 : rho 46555 * (1 + rho 46554) = rho 46552 + rho 46553 := by
    linear_combination r2164
  have ha5 : rho 46556 * (1 - rho 46554) = rho 46551 - rho 46552 - rho 46553 := by
    linear_combination r2165
  have haddx :
      rho 46555 * (1 + 3021 * (rho 46550 * seg52In0AccX97 rho) * (rho 46549 * seg52In0AccY97 rho)) =
        rho 46550 * seg52In0AccX97 rho + rho 46549 * seg52In0AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46556 * (1 - 3021 * (rho 46550 * seg52In0AccX97 rho) * (rho 46549 * seg52In0AccY97 rho)) =
        (-1) * (rho 46550 * seg52In0AccX97 rho) - rho 46549 * seg52In0AccY97 rho +
          (seg52In0AccY97 rho - seg52In0AccX97 rho * (-1)) * (rho 46549 + rho 46550) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46556 * (1 - rho 46554) = rho 46551 - rho 46552 - rho 46553 := ha5
      _ = (-1) * rho 46552 - rho 46553 + (seg52In0AccY97 rho - seg52In0AccX97 rho * (-1)) *
          (rho 46549 + rho 46550) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX98 rho = seg52In0AccX97 rho - Bool.toZMod bit * (seg52In0AccX97 rho - rho 46555) := by
    have hd : rho 46557 = Bool.toZMod bit * (rho 46555 - seg52In0AccX97 rho) := by
      rw [← hbit]
      unfold seg52In0AccX97
      linear_combination -r2166
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY98 rho = seg52In0AccY97 rho - Bool.toZMod bit * (seg52In0AccY97 rho - rho 46556) := by
    have hd : rho 46558 = Bool.toZMod bit * (rho 46556 - seg52In0AccY97 rho) := by
      rw [← hbit]
      unfold seg52In0AccY97
      linear_combination -r2167
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46549 * rho 46550 = rho 46559 := by linear_combination r2168
  have hd1 : rho 46549 * rho 46549 = rho 46560 := by linear_combination r2169
  have hd2 : rho 46550 * rho 46550 = rho 46561 := by linear_combination r2170
  have hd3 : rho 46562 * (rho 46550 * rho 46550 + rho 46549 * rho 46549 * (-1)) =
      2 * (rho 46549 * rho 46550) := by
    rw [hd0, hd1, hd2]
    linear_combination r2171
  have hd4 : rho 46563 * (2 - (rho 46550 * rho 46550 + rho 46549 * rho 46549 * (-1))) =
      rho 46550 * rho 46550 - rho 46549 * rho 46549 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2172
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX97 rho, seg52In0AccY97 rho⟩ ⟨rho 46549, rho 46550⟩
    ⟨rho 46555, rho 46556⟩ ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 46562, rho 46563⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2173 rho ∧ Seg52.relationRow2174 rho ∧ Seg52.relationRow2175 rho ∧ Seg52.relationRow2176 rho ∧ Seg52.relationRow2177 rho ∧ Seg52.relationRow2178 rho ∧ Seg52.relationRow2179 rho ∧ Seg52.relationRow2180 rho ∧ Seg52.relationRow2181 rho ∧ Seg52.relationRow2182 rho ∧ Seg52.relationRow2183 rho ∧ Seg52.relationRow2184 rho ∧ Seg52.relationRow2185 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p27, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185⟩

theorem seg52In0_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45266 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46562, rho 46563⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 46562, rho 46563⟩
        ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 46575, rho 46576⟩ := by
  obtain ⟨r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185⟩ := seg52In0_rows98 rho h
  unfold Seg52.relationRow2173 at r2173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2173

  unfold Seg52.relationRow2174 at r2174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2174

  unfold Seg52.relationRow2175 at r2175

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2175

  unfold Seg52.relationRow2176 at r2176

  unfold Seg52.relationRow2177 at r2177

  unfold Seg52.relationRow2178 at r2178

  unfold Seg52.relationRow2179 at r2179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2179

  unfold Seg52.relationRow2180 at r2180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2180

  unfold Seg52.relationRow2181 at r2181

  unfold Seg52.relationRow2182 at r2182

  unfold Seg52.relationRow2183 at r2183

  unfold Seg52.relationRow2184 at r2184

  unfold Seg52.relationRow2185 at r2185

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX99 rho = seg52In0AccX98 rho + rho 46570 := by
    unfold seg52In0AccX99 seg52In0AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 98]

    ring

  have hnexty : seg52In0AccY99 rho = seg52In0AccY98 rho + rho 46571 := by
    unfold seg52In0AccY99 seg52In0AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 98]

    ring

  have ha0 : (rho 46562 + rho 46563) * (seg52In0AccX98 rho + seg52In0AccY98 rho) = rho 46564 := by
    unfold seg52In0AccX98 seg52In0AccY98
    linear_combination r2173
  have ha1 : rho 46563 * seg52In0AccX98 rho = rho 46565 := by
    unfold seg52In0AccX98
    linear_combination r2174
  have ha2 : rho 46562 * seg52In0AccY98 rho = rho 46566 := by
    unfold seg52In0AccY98
    linear_combination r2175
  have ha3 : 3021 * rho 46565 * rho 46566 = rho 46567 := by
    linear_combination r2176
  have ha4 : rho 46568 * (1 + rho 46567) = rho 46565 + rho 46566 := by
    linear_combination r2177
  have ha5 : rho 46569 * (1 - rho 46567) = rho 46564 - rho 46565 - rho 46566 := by
    linear_combination r2178
  have haddx :
      rho 46568 * (1 + 3021 * (rho 46563 * seg52In0AccX98 rho) * (rho 46562 * seg52In0AccY98 rho)) =
        rho 46563 * seg52In0AccX98 rho + rho 46562 * seg52In0AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46569 * (1 - 3021 * (rho 46563 * seg52In0AccX98 rho) * (rho 46562 * seg52In0AccY98 rho)) =
        (-1) * (rho 46563 * seg52In0AccX98 rho) - rho 46562 * seg52In0AccY98 rho +
          (seg52In0AccY98 rho - seg52In0AccX98 rho * (-1)) * (rho 46562 + rho 46563) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46569 * (1 - rho 46567) = rho 46564 - rho 46565 - rho 46566 := ha5
      _ = (-1) * rho 46565 - rho 46566 + (seg52In0AccY98 rho - seg52In0AccX98 rho * (-1)) *
          (rho 46562 + rho 46563) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX99 rho = seg52In0AccX98 rho - Bool.toZMod bit * (seg52In0AccX98 rho - rho 46568) := by
    have hd : rho 46570 = Bool.toZMod bit * (rho 46568 - seg52In0AccX98 rho) := by
      rw [← hbit]
      unfold seg52In0AccX98
      linear_combination -r2179
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY99 rho = seg52In0AccY98 rho - Bool.toZMod bit * (seg52In0AccY98 rho - rho 46569) := by
    have hd : rho 46571 = Bool.toZMod bit * (rho 46569 - seg52In0AccY98 rho) := by
      rw [← hbit]
      unfold seg52In0AccY98
      linear_combination -r2180
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46562 * rho 46563 = rho 46572 := by linear_combination r2181
  have hd1 : rho 46562 * rho 46562 = rho 46573 := by linear_combination r2182
  have hd2 : rho 46563 * rho 46563 = rho 46574 := by linear_combination r2183
  have hd3 : rho 46575 * (rho 46563 * rho 46563 + rho 46562 * rho 46562 * (-1)) =
      2 * (rho 46562 * rho 46563) := by
    rw [hd0, hd1, hd2]
    linear_combination r2184
  have hd4 : rho 46576 * (2 - (rho 46563 * rho 46563 + rho 46562 * rho 46562 * (-1))) =
      rho 46563 * rho 46563 - rho 46562 * rho 46562 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2185
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX98 rho, seg52In0AccY98 rho⟩ ⟨rho 46562, rho 46563⟩
    ⟨rho 46568, rho 46569⟩ ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 46575, rho 46576⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg52In0_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg52In0_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg52In0_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg52In0_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg52In0_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg52In0_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg52In0_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg52In0_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg52In0_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg52In0_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
