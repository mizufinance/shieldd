import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2043 rho ∧ Seg48.relationRow2044 rho ∧ Seg48.relationRow2045 rho ∧ Seg48.relationRow2046 rho ∧ Seg48.relationRow2047 rho ∧ Seg48.relationRow2048 rho ∧ Seg48.relationRow2049 rho ∧ Seg48.relationRow2050 rho ∧ Seg48.relationRow2051 rho ∧ Seg48.relationRow2052 rho ∧ Seg48.relationRow2053 rho ∧ Seg48.relationRow2054 rho ∧ Seg48.relationRow2055 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055⟩

theorem seg48In0_rung88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33624 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX88 rho, seg48In0AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34800, rho 34801⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX88 rho, seg48In0AccY88 rho⟩ ⟨rho 34800, rho 34801⟩
        ⟨seg48In0AccX89 rho, seg48In0AccY89 rho⟩ ⟨rho 34813, rho 34814⟩ := by
  obtain ⟨r2043, r2044, r2045, r2046, r2047, r2048, r2049, r2050, r2051, r2052, r2053, r2054, r2055⟩ := seg48In0_rows88 rho h
  unfold Seg48.relationRow2043 at r2043

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2043

  unfold Seg48.relationRow2044 at r2044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2044

  unfold Seg48.relationRow2045 at r2045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2045

  unfold Seg48.relationRow2046 at r2046

  unfold Seg48.relationRow2047 at r2047

  unfold Seg48.relationRow2048 at r2048

  unfold Seg48.relationRow2049 at r2049

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2049

  unfold Seg48.relationRow2050 at r2050

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2050

  unfold Seg48.relationRow2051 at r2051

  unfold Seg48.relationRow2052 at r2052

  unfold Seg48.relationRow2053 at r2053

  unfold Seg48.relationRow2054 at r2054

  unfold Seg48.relationRow2055 at r2055

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX89 rho = seg48In0AccX88 rho + rho 34808 := by
    unfold seg48In0AccX89 seg48In0AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 88]

    ring

  have hnexty : seg48In0AccY89 rho = seg48In0AccY88 rho + rho 34809 := by
    unfold seg48In0AccY89 seg48In0AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 88]

    ring

  have ha0 : (rho 34800 + rho 34801) * (seg48In0AccX88 rho + seg48In0AccY88 rho) = rho 34802 := by
    unfold seg48In0AccX88 seg48In0AccY88
    linear_combination r2043
  have ha1 : rho 34801 * seg48In0AccX88 rho = rho 34803 := by
    unfold seg48In0AccX88
    linear_combination r2044
  have ha2 : rho 34800 * seg48In0AccY88 rho = rho 34804 := by
    unfold seg48In0AccY88
    linear_combination r2045
  have ha3 : 3021 * rho 34803 * rho 34804 = rho 34805 := by
    linear_combination r2046
  have ha4 : rho 34806 * (1 + rho 34805) = rho 34803 + rho 34804 := by
    linear_combination r2047
  have ha5 : rho 34807 * (1 - rho 34805) = rho 34802 - rho 34803 - rho 34804 := by
    linear_combination r2048
  have haddx :
      rho 34806 * (1 + 3021 * (rho 34801 * seg48In0AccX88 rho) * (rho 34800 * seg48In0AccY88 rho)) =
        rho 34801 * seg48In0AccX88 rho + rho 34800 * seg48In0AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34807 * (1 - 3021 * (rho 34801 * seg48In0AccX88 rho) * (rho 34800 * seg48In0AccY88 rho)) =
        (-1) * (rho 34801 * seg48In0AccX88 rho) - rho 34800 * seg48In0AccY88 rho +
          (seg48In0AccY88 rho - seg48In0AccX88 rho * (-1)) * (rho 34800 + rho 34801) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34807 * (1 - rho 34805) = rho 34802 - rho 34803 - rho 34804 := ha5
      _ = (-1) * rho 34803 - rho 34804 + (seg48In0AccY88 rho - seg48In0AccX88 rho * (-1)) *
          (rho 34800 + rho 34801) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX89 rho = seg48In0AccX88 rho - Bool.toZMod bit * (seg48In0AccX88 rho - rho 34806) := by
    have hd : rho 34808 = Bool.toZMod bit * (rho 34806 - seg48In0AccX88 rho) := by
      rw [← hbit]
      unfold seg48In0AccX88
      linear_combination -r2049
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY89 rho = seg48In0AccY88 rho - Bool.toZMod bit * (seg48In0AccY88 rho - rho 34807) := by
    have hd : rho 34809 = Bool.toZMod bit * (rho 34807 - seg48In0AccY88 rho) := by
      rw [← hbit]
      unfold seg48In0AccY88
      linear_combination -r2050
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34800 * rho 34801 = rho 34810 := by linear_combination r2051
  have hd1 : rho 34800 * rho 34800 = rho 34811 := by linear_combination r2052
  have hd2 : rho 34801 * rho 34801 = rho 34812 := by linear_combination r2053
  have hd3 : rho 34813 * (rho 34801 * rho 34801 + rho 34800 * rho 34800 * (-1)) =
      2 * (rho 34800 * rho 34801) := by
    rw [hd0, hd1, hd2]
    linear_combination r2054
  have hd4 : rho 34814 * (2 - (rho 34801 * rho 34801 + rho 34800 * rho 34800 * (-1))) =
      rho 34801 * rho 34801 - rho 34800 * rho 34800 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2055
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX88 rho, seg48In0AccY88 rho⟩ ⟨rho 34800, rho 34801⟩
    ⟨rho 34806, rho 34807⟩ ⟨seg48In0AccX89 rho, seg48In0AccY89 rho⟩ ⟨rho 34813, rho 34814⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2056 rho ∧ Seg48.relationRow2057 rho ∧ Seg48.relationRow2058 rho ∧ Seg48.relationRow2059 rho ∧ Seg48.relationRow2060 rho ∧ Seg48.relationRow2061 rho ∧ Seg48.relationRow2062 rho ∧ Seg48.relationRow2063 rho ∧ Seg48.relationRow2064 rho ∧ Seg48.relationRow2065 rho ∧ Seg48.relationRow2066 rho ∧ Seg48.relationRow2067 rho ∧ Seg48.relationRow2068 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068⟩

theorem seg48In0_rung89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33625 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX89 rho, seg48In0AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34813, rho 34814⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX89 rho, seg48In0AccY89 rho⟩ ⟨rho 34813, rho 34814⟩
        ⟨seg48In0AccX90 rho, seg48In0AccY90 rho⟩ ⟨rho 34826, rho 34827⟩ := by
  obtain ⟨r2056, r2057, r2058, r2059, r2060, r2061, r2062, r2063, r2064, r2065, r2066, r2067, r2068⟩ := seg48In0_rows89 rho h
  unfold Seg48.relationRow2056 at r2056

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2056

  unfold Seg48.relationRow2057 at r2057

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2057

  unfold Seg48.relationRow2058 at r2058

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2058

  unfold Seg48.relationRow2059 at r2059

  unfold Seg48.relationRow2060 at r2060

  unfold Seg48.relationRow2061 at r2061

  unfold Seg48.relationRow2062 at r2062

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2062

  unfold Seg48.relationRow2063 at r2063

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2063

  unfold Seg48.relationRow2064 at r2064

  unfold Seg48.relationRow2065 at r2065

  unfold Seg48.relationRow2066 at r2066

  unfold Seg48.relationRow2067 at r2067

  unfold Seg48.relationRow2068 at r2068

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX90 rho = seg48In0AccX89 rho + rho 34821 := by
    unfold seg48In0AccX90 seg48In0AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 89]

    ring

  have hnexty : seg48In0AccY90 rho = seg48In0AccY89 rho + rho 34822 := by
    unfold seg48In0AccY90 seg48In0AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 89]

    ring

  have ha0 : (rho 34813 + rho 34814) * (seg48In0AccX89 rho + seg48In0AccY89 rho) = rho 34815 := by
    unfold seg48In0AccX89 seg48In0AccY89
    linear_combination r2056
  have ha1 : rho 34814 * seg48In0AccX89 rho = rho 34816 := by
    unfold seg48In0AccX89
    linear_combination r2057
  have ha2 : rho 34813 * seg48In0AccY89 rho = rho 34817 := by
    unfold seg48In0AccY89
    linear_combination r2058
  have ha3 : 3021 * rho 34816 * rho 34817 = rho 34818 := by
    linear_combination r2059
  have ha4 : rho 34819 * (1 + rho 34818) = rho 34816 + rho 34817 := by
    linear_combination r2060
  have ha5 : rho 34820 * (1 - rho 34818) = rho 34815 - rho 34816 - rho 34817 := by
    linear_combination r2061
  have haddx :
      rho 34819 * (1 + 3021 * (rho 34814 * seg48In0AccX89 rho) * (rho 34813 * seg48In0AccY89 rho)) =
        rho 34814 * seg48In0AccX89 rho + rho 34813 * seg48In0AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34820 * (1 - 3021 * (rho 34814 * seg48In0AccX89 rho) * (rho 34813 * seg48In0AccY89 rho)) =
        (-1) * (rho 34814 * seg48In0AccX89 rho) - rho 34813 * seg48In0AccY89 rho +
          (seg48In0AccY89 rho - seg48In0AccX89 rho * (-1)) * (rho 34813 + rho 34814) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34820 * (1 - rho 34818) = rho 34815 - rho 34816 - rho 34817 := ha5
      _ = (-1) * rho 34816 - rho 34817 + (seg48In0AccY89 rho - seg48In0AccX89 rho * (-1)) *
          (rho 34813 + rho 34814) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX90 rho = seg48In0AccX89 rho - Bool.toZMod bit * (seg48In0AccX89 rho - rho 34819) := by
    have hd : rho 34821 = Bool.toZMod bit * (rho 34819 - seg48In0AccX89 rho) := by
      rw [← hbit]
      unfold seg48In0AccX89
      linear_combination -r2062
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY90 rho = seg48In0AccY89 rho - Bool.toZMod bit * (seg48In0AccY89 rho - rho 34820) := by
    have hd : rho 34822 = Bool.toZMod bit * (rho 34820 - seg48In0AccY89 rho) := by
      rw [← hbit]
      unfold seg48In0AccY89
      linear_combination -r2063
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34813 * rho 34814 = rho 34823 := by linear_combination r2064
  have hd1 : rho 34813 * rho 34813 = rho 34824 := by linear_combination r2065
  have hd2 : rho 34814 * rho 34814 = rho 34825 := by linear_combination r2066
  have hd3 : rho 34826 * (rho 34814 * rho 34814 + rho 34813 * rho 34813 * (-1)) =
      2 * (rho 34813 * rho 34814) := by
    rw [hd0, hd1, hd2]
    linear_combination r2067
  have hd4 : rho 34827 * (2 - (rho 34814 * rho 34814 + rho 34813 * rho 34813 * (-1))) =
      rho 34814 * rho 34814 - rho 34813 * rho 34813 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2068
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX89 rho, seg48In0AccY89 rho⟩ ⟨rho 34813, rho 34814⟩
    ⟨rho 34819, rho 34820⟩ ⟨seg48In0AccX90 rho, seg48In0AccY90 rho⟩ ⟨rho 34826, rho 34827⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2069 rho ∧ Seg48.relationRow2070 rho ∧ Seg48.relationRow2071 rho ∧ Seg48.relationRow2072 rho ∧ Seg48.relationRow2073 rho ∧ Seg48.relationRow2074 rho ∧ Seg48.relationRow2075 rho ∧ Seg48.relationRow2076 rho ∧ Seg48.relationRow2077 rho ∧ Seg48.relationRow2078 rho ∧ Seg48.relationRow2079 rho ∧ Seg48.relationRow2080 rho ∧ Seg48.relationRow2081 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079⟩

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079, r2080, r2081⟩

theorem seg48In0_rung90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33626 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX90 rho, seg48In0AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34826, rho 34827⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX90 rho, seg48In0AccY90 rho⟩ ⟨rho 34826, rho 34827⟩
        ⟨seg48In0AccX91 rho, seg48In0AccY91 rho⟩ ⟨rho 34839, rho 34840⟩ := by
  obtain ⟨r2069, r2070, r2071, r2072, r2073, r2074, r2075, r2076, r2077, r2078, r2079, r2080, r2081⟩ := seg48In0_rows90 rho h
  unfold Seg48.relationRow2069 at r2069

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2069

  unfold Seg48.relationRow2070 at r2070

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2070

  unfold Seg48.relationRow2071 at r2071

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2071

  unfold Seg48.relationRow2072 at r2072

  unfold Seg48.relationRow2073 at r2073

  unfold Seg48.relationRow2074 at r2074

  unfold Seg48.relationRow2075 at r2075

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2075

  unfold Seg48.relationRow2076 at r2076

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2076

  unfold Seg48.relationRow2077 at r2077

  unfold Seg48.relationRow2078 at r2078

  unfold Seg48.relationRow2079 at r2079

  unfold Seg48.relationRow2080 at r2080

  unfold Seg48.relationRow2081 at r2081

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX91 rho = seg48In0AccX90 rho + rho 34834 := by
    unfold seg48In0AccX91 seg48In0AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 90]

    ring

  have hnexty : seg48In0AccY91 rho = seg48In0AccY90 rho + rho 34835 := by
    unfold seg48In0AccY91 seg48In0AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 90]

    ring

  have ha0 : (rho 34826 + rho 34827) * (seg48In0AccX90 rho + seg48In0AccY90 rho) = rho 34828 := by
    unfold seg48In0AccX90 seg48In0AccY90
    linear_combination r2069
  have ha1 : rho 34827 * seg48In0AccX90 rho = rho 34829 := by
    unfold seg48In0AccX90
    linear_combination r2070
  have ha2 : rho 34826 * seg48In0AccY90 rho = rho 34830 := by
    unfold seg48In0AccY90
    linear_combination r2071
  have ha3 : 3021 * rho 34829 * rho 34830 = rho 34831 := by
    linear_combination r2072
  have ha4 : rho 34832 * (1 + rho 34831) = rho 34829 + rho 34830 := by
    linear_combination r2073
  have ha5 : rho 34833 * (1 - rho 34831) = rho 34828 - rho 34829 - rho 34830 := by
    linear_combination r2074
  have haddx :
      rho 34832 * (1 + 3021 * (rho 34827 * seg48In0AccX90 rho) * (rho 34826 * seg48In0AccY90 rho)) =
        rho 34827 * seg48In0AccX90 rho + rho 34826 * seg48In0AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34833 * (1 - 3021 * (rho 34827 * seg48In0AccX90 rho) * (rho 34826 * seg48In0AccY90 rho)) =
        (-1) * (rho 34827 * seg48In0AccX90 rho) - rho 34826 * seg48In0AccY90 rho +
          (seg48In0AccY90 rho - seg48In0AccX90 rho * (-1)) * (rho 34826 + rho 34827) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34833 * (1 - rho 34831) = rho 34828 - rho 34829 - rho 34830 := ha5
      _ = (-1) * rho 34829 - rho 34830 + (seg48In0AccY90 rho - seg48In0AccX90 rho * (-1)) *
          (rho 34826 + rho 34827) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX91 rho = seg48In0AccX90 rho - Bool.toZMod bit * (seg48In0AccX90 rho - rho 34832) := by
    have hd : rho 34834 = Bool.toZMod bit * (rho 34832 - seg48In0AccX90 rho) := by
      rw [← hbit]
      unfold seg48In0AccX90
      linear_combination -r2075
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY91 rho = seg48In0AccY90 rho - Bool.toZMod bit * (seg48In0AccY90 rho - rho 34833) := by
    have hd : rho 34835 = Bool.toZMod bit * (rho 34833 - seg48In0AccY90 rho) := by
      rw [← hbit]
      unfold seg48In0AccY90
      linear_combination -r2076
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34826 * rho 34827 = rho 34836 := by linear_combination r2077
  have hd1 : rho 34826 * rho 34826 = rho 34837 := by linear_combination r2078
  have hd2 : rho 34827 * rho 34827 = rho 34838 := by linear_combination r2079
  have hd3 : rho 34839 * (rho 34827 * rho 34827 + rho 34826 * rho 34826 * (-1)) =
      2 * (rho 34826 * rho 34827) := by
    rw [hd0, hd1, hd2]
    linear_combination r2080
  have hd4 : rho 34840 * (2 - (rho 34827 * rho 34827 + rho 34826 * rho 34826 * (-1))) =
      rho 34827 * rho 34827 - rho 34826 * rho 34826 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2081
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX90 rho, seg48In0AccY90 rho⟩ ⟨rho 34826, rho 34827⟩
    ⟨rho 34832, rho 34833⟩ ⟨seg48In0AccX91 rho, seg48In0AccY91 rho⟩ ⟨rho 34839, rho 34840⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2082 rho ∧ Seg48.relationRow2083 rho ∧ Seg48.relationRow2084 rho ∧ Seg48.relationRow2085 rho ∧ Seg48.relationRow2086 rho ∧ Seg48.relationRow2087 rho ∧ Seg48.relationRow2088 rho ∧ Seg48.relationRow2089 rho ∧ Seg48.relationRow2090 rho ∧ Seg48.relationRow2091 rho ∧ Seg48.relationRow2092 rho ∧ Seg48.relationRow2093 rho ∧ Seg48.relationRow2094 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨_, _, r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094⟩

theorem seg48In0_rung91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33627 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX91 rho, seg48In0AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34839, rho 34840⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX91 rho, seg48In0AccY91 rho⟩ ⟨rho 34839, rho 34840⟩
        ⟨seg48In0AccX92 rho, seg48In0AccY92 rho⟩ ⟨rho 34852, rho 34853⟩ := by
  obtain ⟨r2082, r2083, r2084, r2085, r2086, r2087, r2088, r2089, r2090, r2091, r2092, r2093, r2094⟩ := seg48In0_rows91 rho h
  unfold Seg48.relationRow2082 at r2082

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2082

  unfold Seg48.relationRow2083 at r2083

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2083

  unfold Seg48.relationRow2084 at r2084

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2084

  unfold Seg48.relationRow2085 at r2085

  unfold Seg48.relationRow2086 at r2086

  unfold Seg48.relationRow2087 at r2087

  unfold Seg48.relationRow2088 at r2088

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2088

  unfold Seg48.relationRow2089 at r2089

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2089

  unfold Seg48.relationRow2090 at r2090

  unfold Seg48.relationRow2091 at r2091

  unfold Seg48.relationRow2092 at r2092

  unfold Seg48.relationRow2093 at r2093

  unfold Seg48.relationRow2094 at r2094

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX92 rho = seg48In0AccX91 rho + rho 34847 := by
    unfold seg48In0AccX92 seg48In0AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 91]

    ring

  have hnexty : seg48In0AccY92 rho = seg48In0AccY91 rho + rho 34848 := by
    unfold seg48In0AccY92 seg48In0AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 91]

    ring

  have ha0 : (rho 34839 + rho 34840) * (seg48In0AccX91 rho + seg48In0AccY91 rho) = rho 34841 := by
    unfold seg48In0AccX91 seg48In0AccY91
    linear_combination r2082
  have ha1 : rho 34840 * seg48In0AccX91 rho = rho 34842 := by
    unfold seg48In0AccX91
    linear_combination r2083
  have ha2 : rho 34839 * seg48In0AccY91 rho = rho 34843 := by
    unfold seg48In0AccY91
    linear_combination r2084
  have ha3 : 3021 * rho 34842 * rho 34843 = rho 34844 := by
    linear_combination r2085
  have ha4 : rho 34845 * (1 + rho 34844) = rho 34842 + rho 34843 := by
    linear_combination r2086
  have ha5 : rho 34846 * (1 - rho 34844) = rho 34841 - rho 34842 - rho 34843 := by
    linear_combination r2087
  have haddx :
      rho 34845 * (1 + 3021 * (rho 34840 * seg48In0AccX91 rho) * (rho 34839 * seg48In0AccY91 rho)) =
        rho 34840 * seg48In0AccX91 rho + rho 34839 * seg48In0AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34846 * (1 - 3021 * (rho 34840 * seg48In0AccX91 rho) * (rho 34839 * seg48In0AccY91 rho)) =
        (-1) * (rho 34840 * seg48In0AccX91 rho) - rho 34839 * seg48In0AccY91 rho +
          (seg48In0AccY91 rho - seg48In0AccX91 rho * (-1)) * (rho 34839 + rho 34840) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34846 * (1 - rho 34844) = rho 34841 - rho 34842 - rho 34843 := ha5
      _ = (-1) * rho 34842 - rho 34843 + (seg48In0AccY91 rho - seg48In0AccX91 rho * (-1)) *
          (rho 34839 + rho 34840) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX92 rho = seg48In0AccX91 rho - Bool.toZMod bit * (seg48In0AccX91 rho - rho 34845) := by
    have hd : rho 34847 = Bool.toZMod bit * (rho 34845 - seg48In0AccX91 rho) := by
      rw [← hbit]
      unfold seg48In0AccX91
      linear_combination -r2088
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY92 rho = seg48In0AccY91 rho - Bool.toZMod bit * (seg48In0AccY91 rho - rho 34846) := by
    have hd : rho 34848 = Bool.toZMod bit * (rho 34846 - seg48In0AccY91 rho) := by
      rw [← hbit]
      unfold seg48In0AccY91
      linear_combination -r2089
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34839 * rho 34840 = rho 34849 := by linear_combination r2090
  have hd1 : rho 34839 * rho 34839 = rho 34850 := by linear_combination r2091
  have hd2 : rho 34840 * rho 34840 = rho 34851 := by linear_combination r2092
  have hd3 : rho 34852 * (rho 34840 * rho 34840 + rho 34839 * rho 34839 * (-1)) =
      2 * (rho 34839 * rho 34840) := by
    rw [hd0, hd1, hd2]
    linear_combination r2093
  have hd4 : rho 34853 * (2 - (rho 34840 * rho 34840 + rho 34839 * rho 34839 * (-1))) =
      rho 34840 * rho 34840 - rho 34839 * rho 34839 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2094
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX91 rho, seg48In0AccY91 rho⟩ ⟨rho 34839, rho 34840⟩
    ⟨rho 34845, rho 34846⟩ ⟨seg48In0AccX92 rho, seg48In0AccY92 rho⟩ ⟨rho 34852, rho 34853⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2095 rho ∧ Seg48.relationRow2096 rho ∧ Seg48.relationRow2097 rho ∧ Seg48.relationRow2098 rho ∧ Seg48.relationRow2099 rho ∧ Seg48.relationRow2100 rho ∧ Seg48.relationRow2101 rho ∧ Seg48.relationRow2102 rho ∧ Seg48.relationRow2103 rho ∧ Seg48.relationRow2104 rho ∧ Seg48.relationRow2105 rho ∧ Seg48.relationRow2106 rho ∧ Seg48.relationRow2107 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107⟩

theorem seg48In0_rung92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33628 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX92 rho, seg48In0AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34852, rho 34853⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX92 rho, seg48In0AccY92 rho⟩ ⟨rho 34852, rho 34853⟩
        ⟨seg48In0AccX93 rho, seg48In0AccY93 rho⟩ ⟨rho 34865, rho 34866⟩ := by
  obtain ⟨r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107⟩ := seg48In0_rows92 rho h
  unfold Seg48.relationRow2095 at r2095

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2095

  unfold Seg48.relationRow2096 at r2096

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2096

  unfold Seg48.relationRow2097 at r2097

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2097

  unfold Seg48.relationRow2098 at r2098

  unfold Seg48.relationRow2099 at r2099

  unfold Seg48.relationRow2100 at r2100

  unfold Seg48.relationRow2101 at r2101

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2101

  unfold Seg48.relationRow2102 at r2102

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2102

  unfold Seg48.relationRow2103 at r2103

  unfold Seg48.relationRow2104 at r2104

  unfold Seg48.relationRow2105 at r2105

  unfold Seg48.relationRow2106 at r2106

  unfold Seg48.relationRow2107 at r2107

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX93 rho = seg48In0AccX92 rho + rho 34860 := by
    unfold seg48In0AccX93 seg48In0AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 92]

    ring

  have hnexty : seg48In0AccY93 rho = seg48In0AccY92 rho + rho 34861 := by
    unfold seg48In0AccY93 seg48In0AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 92]

    ring

  have ha0 : (rho 34852 + rho 34853) * (seg48In0AccX92 rho + seg48In0AccY92 rho) = rho 34854 := by
    unfold seg48In0AccX92 seg48In0AccY92
    linear_combination r2095
  have ha1 : rho 34853 * seg48In0AccX92 rho = rho 34855 := by
    unfold seg48In0AccX92
    linear_combination r2096
  have ha2 : rho 34852 * seg48In0AccY92 rho = rho 34856 := by
    unfold seg48In0AccY92
    linear_combination r2097
  have ha3 : 3021 * rho 34855 * rho 34856 = rho 34857 := by
    linear_combination r2098
  have ha4 : rho 34858 * (1 + rho 34857) = rho 34855 + rho 34856 := by
    linear_combination r2099
  have ha5 : rho 34859 * (1 - rho 34857) = rho 34854 - rho 34855 - rho 34856 := by
    linear_combination r2100
  have haddx :
      rho 34858 * (1 + 3021 * (rho 34853 * seg48In0AccX92 rho) * (rho 34852 * seg48In0AccY92 rho)) =
        rho 34853 * seg48In0AccX92 rho + rho 34852 * seg48In0AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34859 * (1 - 3021 * (rho 34853 * seg48In0AccX92 rho) * (rho 34852 * seg48In0AccY92 rho)) =
        (-1) * (rho 34853 * seg48In0AccX92 rho) - rho 34852 * seg48In0AccY92 rho +
          (seg48In0AccY92 rho - seg48In0AccX92 rho * (-1)) * (rho 34852 + rho 34853) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34859 * (1 - rho 34857) = rho 34854 - rho 34855 - rho 34856 := ha5
      _ = (-1) * rho 34855 - rho 34856 + (seg48In0AccY92 rho - seg48In0AccX92 rho * (-1)) *
          (rho 34852 + rho 34853) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX93 rho = seg48In0AccX92 rho - Bool.toZMod bit * (seg48In0AccX92 rho - rho 34858) := by
    have hd : rho 34860 = Bool.toZMod bit * (rho 34858 - seg48In0AccX92 rho) := by
      rw [← hbit]
      unfold seg48In0AccX92
      linear_combination -r2101
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY93 rho = seg48In0AccY92 rho - Bool.toZMod bit * (seg48In0AccY92 rho - rho 34859) := by
    have hd : rho 34861 = Bool.toZMod bit * (rho 34859 - seg48In0AccY92 rho) := by
      rw [← hbit]
      unfold seg48In0AccY92
      linear_combination -r2102
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34852 * rho 34853 = rho 34862 := by linear_combination r2103
  have hd1 : rho 34852 * rho 34852 = rho 34863 := by linear_combination r2104
  have hd2 : rho 34853 * rho 34853 = rho 34864 := by linear_combination r2105
  have hd3 : rho 34865 * (rho 34853 * rho 34853 + rho 34852 * rho 34852 * (-1)) =
      2 * (rho 34852 * rho 34853) := by
    rw [hd0, hd1, hd2]
    linear_combination r2106
  have hd4 : rho 34866 * (2 - (rho 34853 * rho 34853 + rho 34852 * rho 34852 * (-1))) =
      rho 34853 * rho 34853 - rho 34852 * rho 34852 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2107
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX92 rho, seg48In0AccY92 rho⟩ ⟨rho 34852, rho 34853⟩
    ⟨rho 34858, rho 34859⟩ ⟨seg48In0AccX93 rho, seg48In0AccY93 rho⟩ ⟨rho 34865, rho 34866⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2108 rho ∧ Seg48.relationRow2109 rho ∧ Seg48.relationRow2110 rho ∧ Seg48.relationRow2111 rho ∧ Seg48.relationRow2112 rho ∧ Seg48.relationRow2113 rho ∧ Seg48.relationRow2114 rho ∧ Seg48.relationRow2115 rho ∧ Seg48.relationRow2116 rho ∧ Seg48.relationRow2117 rho ∧ Seg48.relationRow2118 rho ∧ Seg48.relationRow2119 rho ∧ Seg48.relationRow2120 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120⟩

theorem seg48In0_rung93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33629 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX93 rho, seg48In0AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34865, rho 34866⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX93 rho, seg48In0AccY93 rho⟩ ⟨rho 34865, rho 34866⟩
        ⟨seg48In0AccX94 rho, seg48In0AccY94 rho⟩ ⟨rho 34878, rho 34879⟩ := by
  obtain ⟨r2108, r2109, r2110, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120⟩ := seg48In0_rows93 rho h
  unfold Seg48.relationRow2108 at r2108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2108

  unfold Seg48.relationRow2109 at r2109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2109

  unfold Seg48.relationRow2110 at r2110

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2110

  unfold Seg48.relationRow2111 at r2111

  unfold Seg48.relationRow2112 at r2112

  unfold Seg48.relationRow2113 at r2113

  unfold Seg48.relationRow2114 at r2114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2114

  unfold Seg48.relationRow2115 at r2115

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2115

  unfold Seg48.relationRow2116 at r2116

  unfold Seg48.relationRow2117 at r2117

  unfold Seg48.relationRow2118 at r2118

  unfold Seg48.relationRow2119 at r2119

  unfold Seg48.relationRow2120 at r2120

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX94 rho = seg48In0AccX93 rho + rho 34873 := by
    unfold seg48In0AccX94 seg48In0AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 93]

    ring

  have hnexty : seg48In0AccY94 rho = seg48In0AccY93 rho + rho 34874 := by
    unfold seg48In0AccY94 seg48In0AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 93]

    ring

  have ha0 : (rho 34865 + rho 34866) * (seg48In0AccX93 rho + seg48In0AccY93 rho) = rho 34867 := by
    unfold seg48In0AccX93 seg48In0AccY93
    linear_combination r2108
  have ha1 : rho 34866 * seg48In0AccX93 rho = rho 34868 := by
    unfold seg48In0AccX93
    linear_combination r2109
  have ha2 : rho 34865 * seg48In0AccY93 rho = rho 34869 := by
    unfold seg48In0AccY93
    linear_combination r2110
  have ha3 : 3021 * rho 34868 * rho 34869 = rho 34870 := by
    linear_combination r2111
  have ha4 : rho 34871 * (1 + rho 34870) = rho 34868 + rho 34869 := by
    linear_combination r2112
  have ha5 : rho 34872 * (1 - rho 34870) = rho 34867 - rho 34868 - rho 34869 := by
    linear_combination r2113
  have haddx :
      rho 34871 * (1 + 3021 * (rho 34866 * seg48In0AccX93 rho) * (rho 34865 * seg48In0AccY93 rho)) =
        rho 34866 * seg48In0AccX93 rho + rho 34865 * seg48In0AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34872 * (1 - 3021 * (rho 34866 * seg48In0AccX93 rho) * (rho 34865 * seg48In0AccY93 rho)) =
        (-1) * (rho 34866 * seg48In0AccX93 rho) - rho 34865 * seg48In0AccY93 rho +
          (seg48In0AccY93 rho - seg48In0AccX93 rho * (-1)) * (rho 34865 + rho 34866) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34872 * (1 - rho 34870) = rho 34867 - rho 34868 - rho 34869 := ha5
      _ = (-1) * rho 34868 - rho 34869 + (seg48In0AccY93 rho - seg48In0AccX93 rho * (-1)) *
          (rho 34865 + rho 34866) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX94 rho = seg48In0AccX93 rho - Bool.toZMod bit * (seg48In0AccX93 rho - rho 34871) := by
    have hd : rho 34873 = Bool.toZMod bit * (rho 34871 - seg48In0AccX93 rho) := by
      rw [← hbit]
      unfold seg48In0AccX93
      linear_combination -r2114
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY94 rho = seg48In0AccY93 rho - Bool.toZMod bit * (seg48In0AccY93 rho - rho 34872) := by
    have hd : rho 34874 = Bool.toZMod bit * (rho 34872 - seg48In0AccY93 rho) := by
      rw [← hbit]
      unfold seg48In0AccY93
      linear_combination -r2115
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34865 * rho 34866 = rho 34875 := by linear_combination r2116
  have hd1 : rho 34865 * rho 34865 = rho 34876 := by linear_combination r2117
  have hd2 : rho 34866 * rho 34866 = rho 34877 := by linear_combination r2118
  have hd3 : rho 34878 * (rho 34866 * rho 34866 + rho 34865 * rho 34865 * (-1)) =
      2 * (rho 34865 * rho 34866) := by
    rw [hd0, hd1, hd2]
    linear_combination r2119
  have hd4 : rho 34879 * (2 - (rho 34866 * rho 34866 + rho 34865 * rho 34865 * (-1))) =
      rho 34866 * rho 34866 - rho 34865 * rho 34865 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2120
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX93 rho, seg48In0AccY93 rho⟩ ⟨rho 34865, rho 34866⟩
    ⟨rho 34871, rho 34872⟩ ⟨seg48In0AccX94 rho, seg48In0AccY94 rho⟩ ⟨rho 34878, rho 34879⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2121 rho ∧ Seg48.relationRow2122 rho ∧ Seg48.relationRow2123 rho ∧ Seg48.relationRow2124 rho ∧ Seg48.relationRow2125 rho ∧ Seg48.relationRow2126 rho ∧ Seg48.relationRow2127 rho ∧ Seg48.relationRow2128 rho ∧ Seg48.relationRow2129 rho ∧ Seg48.relationRow2130 rho ∧ Seg48.relationRow2131 rho ∧ Seg48.relationRow2132 rho ∧ Seg48.relationRow2133 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133⟩

theorem seg48In0_rung94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33630 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX94 rho, seg48In0AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34878, rho 34879⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX94 rho, seg48In0AccY94 rho⟩ ⟨rho 34878, rho 34879⟩
        ⟨seg48In0AccX95 rho, seg48In0AccY95 rho⟩ ⟨rho 34891, rho 34892⟩ := by
  obtain ⟨r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133⟩ := seg48In0_rows94 rho h
  unfold Seg48.relationRow2121 at r2121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2121

  unfold Seg48.relationRow2122 at r2122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2122

  unfold Seg48.relationRow2123 at r2123

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2123

  unfold Seg48.relationRow2124 at r2124

  unfold Seg48.relationRow2125 at r2125

  unfold Seg48.relationRow2126 at r2126

  unfold Seg48.relationRow2127 at r2127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2127

  unfold Seg48.relationRow2128 at r2128

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2128

  unfold Seg48.relationRow2129 at r2129

  unfold Seg48.relationRow2130 at r2130

  unfold Seg48.relationRow2131 at r2131

  unfold Seg48.relationRow2132 at r2132

  unfold Seg48.relationRow2133 at r2133

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX95 rho = seg48In0AccX94 rho + rho 34886 := by
    unfold seg48In0AccX95 seg48In0AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 94]

    ring

  have hnexty : seg48In0AccY95 rho = seg48In0AccY94 rho + rho 34887 := by
    unfold seg48In0AccY95 seg48In0AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 94]

    ring

  have ha0 : (rho 34878 + rho 34879) * (seg48In0AccX94 rho + seg48In0AccY94 rho) = rho 34880 := by
    unfold seg48In0AccX94 seg48In0AccY94
    linear_combination r2121
  have ha1 : rho 34879 * seg48In0AccX94 rho = rho 34881 := by
    unfold seg48In0AccX94
    linear_combination r2122
  have ha2 : rho 34878 * seg48In0AccY94 rho = rho 34882 := by
    unfold seg48In0AccY94
    linear_combination r2123
  have ha3 : 3021 * rho 34881 * rho 34882 = rho 34883 := by
    linear_combination r2124
  have ha4 : rho 34884 * (1 + rho 34883) = rho 34881 + rho 34882 := by
    linear_combination r2125
  have ha5 : rho 34885 * (1 - rho 34883) = rho 34880 - rho 34881 - rho 34882 := by
    linear_combination r2126
  have haddx :
      rho 34884 * (1 + 3021 * (rho 34879 * seg48In0AccX94 rho) * (rho 34878 * seg48In0AccY94 rho)) =
        rho 34879 * seg48In0AccX94 rho + rho 34878 * seg48In0AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34885 * (1 - 3021 * (rho 34879 * seg48In0AccX94 rho) * (rho 34878 * seg48In0AccY94 rho)) =
        (-1) * (rho 34879 * seg48In0AccX94 rho) - rho 34878 * seg48In0AccY94 rho +
          (seg48In0AccY94 rho - seg48In0AccX94 rho * (-1)) * (rho 34878 + rho 34879) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34885 * (1 - rho 34883) = rho 34880 - rho 34881 - rho 34882 := ha5
      _ = (-1) * rho 34881 - rho 34882 + (seg48In0AccY94 rho - seg48In0AccX94 rho * (-1)) *
          (rho 34878 + rho 34879) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX95 rho = seg48In0AccX94 rho - Bool.toZMod bit * (seg48In0AccX94 rho - rho 34884) := by
    have hd : rho 34886 = Bool.toZMod bit * (rho 34884 - seg48In0AccX94 rho) := by
      rw [← hbit]
      unfold seg48In0AccX94
      linear_combination -r2127
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY95 rho = seg48In0AccY94 rho - Bool.toZMod bit * (seg48In0AccY94 rho - rho 34885) := by
    have hd : rho 34887 = Bool.toZMod bit * (rho 34885 - seg48In0AccY94 rho) := by
      rw [← hbit]
      unfold seg48In0AccY94
      linear_combination -r2128
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34878 * rho 34879 = rho 34888 := by linear_combination r2129
  have hd1 : rho 34878 * rho 34878 = rho 34889 := by linear_combination r2130
  have hd2 : rho 34879 * rho 34879 = rho 34890 := by linear_combination r2131
  have hd3 : rho 34891 * (rho 34879 * rho 34879 + rho 34878 * rho 34878 * (-1)) =
      2 * (rho 34878 * rho 34879) := by
    rw [hd0, hd1, hd2]
    linear_combination r2132
  have hd4 : rho 34892 * (2 - (rho 34879 * rho 34879 + rho 34878 * rho 34878 * (-1))) =
      rho 34879 * rho 34879 - rho 34878 * rho 34878 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2133
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX94 rho, seg48In0AccY94 rho⟩ ⟨rho 34878, rho 34879⟩
    ⟨rho 34884, rho 34885⟩ ⟨seg48In0AccX95 rho, seg48In0AccY95 rho⟩ ⟨rho 34891, rho 34892⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2134 rho ∧ Seg48.relationRow2135 rho ∧ Seg48.relationRow2136 rho ∧ Seg48.relationRow2137 rho ∧ Seg48.relationRow2138 rho ∧ Seg48.relationRow2139 rho ∧ Seg48.relationRow2140 rho ∧ Seg48.relationRow2141 rho ∧ Seg48.relationRow2142 rho ∧ Seg48.relationRow2143 rho ∧ Seg48.relationRow2144 rho ∧ Seg48.relationRow2145 rho ∧ Seg48.relationRow2146 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146⟩

theorem seg48In0_rung95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33631 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX95 rho, seg48In0AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34891, rho 34892⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX95 rho, seg48In0AccY95 rho⟩ ⟨rho 34891, rho 34892⟩
        ⟨seg48In0AccX96 rho, seg48In0AccY96 rho⟩ ⟨rho 34904, rho 34905⟩ := by
  obtain ⟨r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146⟩ := seg48In0_rows95 rho h
  unfold Seg48.relationRow2134 at r2134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2134

  unfold Seg48.relationRow2135 at r2135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2135

  unfold Seg48.relationRow2136 at r2136

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2136

  unfold Seg48.relationRow2137 at r2137

  unfold Seg48.relationRow2138 at r2138

  unfold Seg48.relationRow2139 at r2139

  unfold Seg48.relationRow2140 at r2140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2140

  unfold Seg48.relationRow2141 at r2141

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2141

  unfold Seg48.relationRow2142 at r2142

  unfold Seg48.relationRow2143 at r2143

  unfold Seg48.relationRow2144 at r2144

  unfold Seg48.relationRow2145 at r2145

  unfold Seg48.relationRow2146 at r2146

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX96 rho = seg48In0AccX95 rho + rho 34899 := by
    unfold seg48In0AccX96 seg48In0AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 95]

    ring

  have hnexty : seg48In0AccY96 rho = seg48In0AccY95 rho + rho 34900 := by
    unfold seg48In0AccY96 seg48In0AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 95]

    ring

  have ha0 : (rho 34891 + rho 34892) * (seg48In0AccX95 rho + seg48In0AccY95 rho) = rho 34893 := by
    unfold seg48In0AccX95 seg48In0AccY95
    linear_combination r2134
  have ha1 : rho 34892 * seg48In0AccX95 rho = rho 34894 := by
    unfold seg48In0AccX95
    linear_combination r2135
  have ha2 : rho 34891 * seg48In0AccY95 rho = rho 34895 := by
    unfold seg48In0AccY95
    linear_combination r2136
  have ha3 : 3021 * rho 34894 * rho 34895 = rho 34896 := by
    linear_combination r2137
  have ha4 : rho 34897 * (1 + rho 34896) = rho 34894 + rho 34895 := by
    linear_combination r2138
  have ha5 : rho 34898 * (1 - rho 34896) = rho 34893 - rho 34894 - rho 34895 := by
    linear_combination r2139
  have haddx :
      rho 34897 * (1 + 3021 * (rho 34892 * seg48In0AccX95 rho) * (rho 34891 * seg48In0AccY95 rho)) =
        rho 34892 * seg48In0AccX95 rho + rho 34891 * seg48In0AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34898 * (1 - 3021 * (rho 34892 * seg48In0AccX95 rho) * (rho 34891 * seg48In0AccY95 rho)) =
        (-1) * (rho 34892 * seg48In0AccX95 rho) - rho 34891 * seg48In0AccY95 rho +
          (seg48In0AccY95 rho - seg48In0AccX95 rho * (-1)) * (rho 34891 + rho 34892) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34898 * (1 - rho 34896) = rho 34893 - rho 34894 - rho 34895 := ha5
      _ = (-1) * rho 34894 - rho 34895 + (seg48In0AccY95 rho - seg48In0AccX95 rho * (-1)) *
          (rho 34891 + rho 34892) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX96 rho = seg48In0AccX95 rho - Bool.toZMod bit * (seg48In0AccX95 rho - rho 34897) := by
    have hd : rho 34899 = Bool.toZMod bit * (rho 34897 - seg48In0AccX95 rho) := by
      rw [← hbit]
      unfold seg48In0AccX95
      linear_combination -r2140
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY96 rho = seg48In0AccY95 rho - Bool.toZMod bit * (seg48In0AccY95 rho - rho 34898) := by
    have hd : rho 34900 = Bool.toZMod bit * (rho 34898 - seg48In0AccY95 rho) := by
      rw [← hbit]
      unfold seg48In0AccY95
      linear_combination -r2141
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34891 * rho 34892 = rho 34901 := by linear_combination r2142
  have hd1 : rho 34891 * rho 34891 = rho 34902 := by linear_combination r2143
  have hd2 : rho 34892 * rho 34892 = rho 34903 := by linear_combination r2144
  have hd3 : rho 34904 * (rho 34892 * rho 34892 + rho 34891 * rho 34891 * (-1)) =
      2 * (rho 34891 * rho 34892) := by
    rw [hd0, hd1, hd2]
    linear_combination r2145
  have hd4 : rho 34905 * (2 - (rho 34892 * rho 34892 + rho 34891 * rho 34891 * (-1))) =
      rho 34892 * rho 34892 - rho 34891 * rho 34891 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2146
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX95 rho, seg48In0AccY95 rho⟩ ⟨rho 34891, rho 34892⟩
    ⟨rho 34897, rho 34898⟩ ⟨seg48In0AccX96 rho, seg48In0AccY96 rho⟩ ⟨rho 34904, rho 34905⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2147 rho ∧ Seg48.relationRow2148 rho ∧ Seg48.relationRow2149 rho ∧ Seg48.relationRow2150 rho ∧ Seg48.relationRow2151 rho ∧ Seg48.relationRow2152 rho ∧ Seg48.relationRow2153 rho ∧ Seg48.relationRow2154 rho ∧ Seg48.relationRow2155 rho ∧ Seg48.relationRow2156 rho ∧ Seg48.relationRow2157 rho ∧ Seg48.relationRow2158 rho ∧ Seg48.relationRow2159 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart26 at p26

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩

  exact ⟨r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩

theorem seg48In0_rung96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33632 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX96 rho, seg48In0AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34904, rho 34905⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX96 rho, seg48In0AccY96 rho⟩ ⟨rho 34904, rho 34905⟩
        ⟨seg48In0AccX97 rho, seg48In0AccY97 rho⟩ ⟨rho 34917, rho 34918⟩ := by
  obtain ⟨r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩ := seg48In0_rows96 rho h
  unfold Seg48.relationRow2147 at r2147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2147

  unfold Seg48.relationRow2148 at r2148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2148

  unfold Seg48.relationRow2149 at r2149

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2149

  unfold Seg48.relationRow2150 at r2150

  unfold Seg48.relationRow2151 at r2151

  unfold Seg48.relationRow2152 at r2152

  unfold Seg48.relationRow2153 at r2153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2153

  unfold Seg48.relationRow2154 at r2154

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2154

  unfold Seg48.relationRow2155 at r2155

  unfold Seg48.relationRow2156 at r2156

  unfold Seg48.relationRow2157 at r2157

  unfold Seg48.relationRow2158 at r2158

  unfold Seg48.relationRow2159 at r2159

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX97 rho = seg48In0AccX96 rho + rho 34912 := by
    unfold seg48In0AccX97 seg48In0AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 96]

    ring

  have hnexty : seg48In0AccY97 rho = seg48In0AccY96 rho + rho 34913 := by
    unfold seg48In0AccY97 seg48In0AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 96]

    ring

  have ha0 : (rho 34904 + rho 34905) * (seg48In0AccX96 rho + seg48In0AccY96 rho) = rho 34906 := by
    unfold seg48In0AccX96 seg48In0AccY96
    linear_combination r2147
  have ha1 : rho 34905 * seg48In0AccX96 rho = rho 34907 := by
    unfold seg48In0AccX96
    linear_combination r2148
  have ha2 : rho 34904 * seg48In0AccY96 rho = rho 34908 := by
    unfold seg48In0AccY96
    linear_combination r2149
  have ha3 : 3021 * rho 34907 * rho 34908 = rho 34909 := by
    linear_combination r2150
  have ha4 : rho 34910 * (1 + rho 34909) = rho 34907 + rho 34908 := by
    linear_combination r2151
  have ha5 : rho 34911 * (1 - rho 34909) = rho 34906 - rho 34907 - rho 34908 := by
    linear_combination r2152
  have haddx :
      rho 34910 * (1 + 3021 * (rho 34905 * seg48In0AccX96 rho) * (rho 34904 * seg48In0AccY96 rho)) =
        rho 34905 * seg48In0AccX96 rho + rho 34904 * seg48In0AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34911 * (1 - 3021 * (rho 34905 * seg48In0AccX96 rho) * (rho 34904 * seg48In0AccY96 rho)) =
        (-1) * (rho 34905 * seg48In0AccX96 rho) - rho 34904 * seg48In0AccY96 rho +
          (seg48In0AccY96 rho - seg48In0AccX96 rho * (-1)) * (rho 34904 + rho 34905) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34911 * (1 - rho 34909) = rho 34906 - rho 34907 - rho 34908 := ha5
      _ = (-1) * rho 34907 - rho 34908 + (seg48In0AccY96 rho - seg48In0AccX96 rho * (-1)) *
          (rho 34904 + rho 34905) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX97 rho = seg48In0AccX96 rho - Bool.toZMod bit * (seg48In0AccX96 rho - rho 34910) := by
    have hd : rho 34912 = Bool.toZMod bit * (rho 34910 - seg48In0AccX96 rho) := by
      rw [← hbit]
      unfold seg48In0AccX96
      linear_combination -r2153
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY97 rho = seg48In0AccY96 rho - Bool.toZMod bit * (seg48In0AccY96 rho - rho 34911) := by
    have hd : rho 34913 = Bool.toZMod bit * (rho 34911 - seg48In0AccY96 rho) := by
      rw [← hbit]
      unfold seg48In0AccY96
      linear_combination -r2154
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34904 * rho 34905 = rho 34914 := by linear_combination r2155
  have hd1 : rho 34904 * rho 34904 = rho 34915 := by linear_combination r2156
  have hd2 : rho 34905 * rho 34905 = rho 34916 := by linear_combination r2157
  have hd3 : rho 34917 * (rho 34905 * rho 34905 + rho 34904 * rho 34904 * (-1)) =
      2 * (rho 34904 * rho 34905) := by
    rw [hd0, hd1, hd2]
    linear_combination r2158
  have hd4 : rho 34918 * (2 - (rho 34905 * rho 34905 + rho 34904 * rho 34904 * (-1))) =
      rho 34905 * rho 34905 - rho 34904 * rho 34904 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2159
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX96 rho, seg48In0AccY96 rho⟩ ⟨rho 34904, rho 34905⟩
    ⟨rho 34910, rho 34911⟩ ⟨seg48In0AccX97 rho, seg48In0AccY97 rho⟩ ⟨rho 34917, rho 34918⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2160 rho ∧ Seg48.relationRow2161 rho ∧ Seg48.relationRow2162 rho ∧ Seg48.relationRow2163 rho ∧ Seg48.relationRow2164 rho ∧ Seg48.relationRow2165 rho ∧ Seg48.relationRow2166 rho ∧ Seg48.relationRow2167 rho ∧ Seg48.relationRow2168 rho ∧ Seg48.relationRow2169 rho ∧ Seg48.relationRow2170 rho ∧ Seg48.relationRow2171 rho ∧ Seg48.relationRow2172 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart27 at p27

  rcases p27 with ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172⟩

theorem seg48In0_rung97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33633 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX97 rho, seg48In0AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34917, rho 34918⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX97 rho, seg48In0AccY97 rho⟩ ⟨rho 34917, rho 34918⟩
        ⟨seg48In0AccX98 rho, seg48In0AccY98 rho⟩ ⟨rho 34930, rho 34931⟩ := by
  obtain ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172⟩ := seg48In0_rows97 rho h
  unfold Seg48.relationRow2160 at r2160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2160

  unfold Seg48.relationRow2161 at r2161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2161

  unfold Seg48.relationRow2162 at r2162

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2162

  unfold Seg48.relationRow2163 at r2163

  unfold Seg48.relationRow2164 at r2164

  unfold Seg48.relationRow2165 at r2165

  unfold Seg48.relationRow2166 at r2166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2166

  unfold Seg48.relationRow2167 at r2167

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2167

  unfold Seg48.relationRow2168 at r2168

  unfold Seg48.relationRow2169 at r2169

  unfold Seg48.relationRow2170 at r2170

  unfold Seg48.relationRow2171 at r2171

  unfold Seg48.relationRow2172 at r2172

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX98 rho = seg48In0AccX97 rho + rho 34925 := by
    unfold seg48In0AccX98 seg48In0AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 97]

    ring

  have hnexty : seg48In0AccY98 rho = seg48In0AccY97 rho + rho 34926 := by
    unfold seg48In0AccY98 seg48In0AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 97]

    ring

  have ha0 : (rho 34917 + rho 34918) * (seg48In0AccX97 rho + seg48In0AccY97 rho) = rho 34919 := by
    unfold seg48In0AccX97 seg48In0AccY97
    linear_combination r2160
  have ha1 : rho 34918 * seg48In0AccX97 rho = rho 34920 := by
    unfold seg48In0AccX97
    linear_combination r2161
  have ha2 : rho 34917 * seg48In0AccY97 rho = rho 34921 := by
    unfold seg48In0AccY97
    linear_combination r2162
  have ha3 : 3021 * rho 34920 * rho 34921 = rho 34922 := by
    linear_combination r2163
  have ha4 : rho 34923 * (1 + rho 34922) = rho 34920 + rho 34921 := by
    linear_combination r2164
  have ha5 : rho 34924 * (1 - rho 34922) = rho 34919 - rho 34920 - rho 34921 := by
    linear_combination r2165
  have haddx :
      rho 34923 * (1 + 3021 * (rho 34918 * seg48In0AccX97 rho) * (rho 34917 * seg48In0AccY97 rho)) =
        rho 34918 * seg48In0AccX97 rho + rho 34917 * seg48In0AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34924 * (1 - 3021 * (rho 34918 * seg48In0AccX97 rho) * (rho 34917 * seg48In0AccY97 rho)) =
        (-1) * (rho 34918 * seg48In0AccX97 rho) - rho 34917 * seg48In0AccY97 rho +
          (seg48In0AccY97 rho - seg48In0AccX97 rho * (-1)) * (rho 34917 + rho 34918) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34924 * (1 - rho 34922) = rho 34919 - rho 34920 - rho 34921 := ha5
      _ = (-1) * rho 34920 - rho 34921 + (seg48In0AccY97 rho - seg48In0AccX97 rho * (-1)) *
          (rho 34917 + rho 34918) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX98 rho = seg48In0AccX97 rho - Bool.toZMod bit * (seg48In0AccX97 rho - rho 34923) := by
    have hd : rho 34925 = Bool.toZMod bit * (rho 34923 - seg48In0AccX97 rho) := by
      rw [← hbit]
      unfold seg48In0AccX97
      linear_combination -r2166
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY98 rho = seg48In0AccY97 rho - Bool.toZMod bit * (seg48In0AccY97 rho - rho 34924) := by
    have hd : rho 34926 = Bool.toZMod bit * (rho 34924 - seg48In0AccY97 rho) := by
      rw [← hbit]
      unfold seg48In0AccY97
      linear_combination -r2167
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34917 * rho 34918 = rho 34927 := by linear_combination r2168
  have hd1 : rho 34917 * rho 34917 = rho 34928 := by linear_combination r2169
  have hd2 : rho 34918 * rho 34918 = rho 34929 := by linear_combination r2170
  have hd3 : rho 34930 * (rho 34918 * rho 34918 + rho 34917 * rho 34917 * (-1)) =
      2 * (rho 34917 * rho 34918) := by
    rw [hd0, hd1, hd2]
    linear_combination r2171
  have hd4 : rho 34931 * (2 - (rho 34918 * rho 34918 + rho 34917 * rho 34917 * (-1))) =
      rho 34918 * rho 34918 - rho 34917 * rho 34917 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2172
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX97 rho, seg48In0AccY97 rho⟩ ⟨rho 34917, rho 34918⟩
    ⟨rho 34923, rho 34924⟩ ⟨seg48In0AccX98 rho, seg48In0AccY98 rho⟩ ⟨rho 34930, rho 34931⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2173 rho ∧ Seg48.relationRow2174 rho ∧ Seg48.relationRow2175 rho ∧ Seg48.relationRow2176 rho ∧ Seg48.relationRow2177 rho ∧ Seg48.relationRow2178 rho ∧ Seg48.relationRow2179 rho ∧ Seg48.relationRow2180 rho ∧ Seg48.relationRow2181 rho ∧ Seg48.relationRow2182 rho ∧ Seg48.relationRow2183 rho ∧ Seg48.relationRow2184 rho ∧ Seg48.relationRow2185 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185⟩

theorem seg48In0_rung98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33634 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX98 rho, seg48In0AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34930, rho 34931⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX98 rho, seg48In0AccY98 rho⟩ ⟨rho 34930, rho 34931⟩
        ⟨seg48In0AccX99 rho, seg48In0AccY99 rho⟩ ⟨rho 34943, rho 34944⟩ := by
  obtain ⟨r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185⟩ := seg48In0_rows98 rho h
  unfold Seg48.relationRow2173 at r2173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2173

  unfold Seg48.relationRow2174 at r2174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2174

  unfold Seg48.relationRow2175 at r2175

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2175

  unfold Seg48.relationRow2176 at r2176

  unfold Seg48.relationRow2177 at r2177

  unfold Seg48.relationRow2178 at r2178

  unfold Seg48.relationRow2179 at r2179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2179

  unfold Seg48.relationRow2180 at r2180

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2180

  unfold Seg48.relationRow2181 at r2181

  unfold Seg48.relationRow2182 at r2182

  unfold Seg48.relationRow2183 at r2183

  unfold Seg48.relationRow2184 at r2184

  unfold Seg48.relationRow2185 at r2185

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX99 rho = seg48In0AccX98 rho + rho 34938 := by
    unfold seg48In0AccX99 seg48In0AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 98]

    ring

  have hnexty : seg48In0AccY99 rho = seg48In0AccY98 rho + rho 34939 := by
    unfold seg48In0AccY99 seg48In0AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 98]

    ring

  have ha0 : (rho 34930 + rho 34931) * (seg48In0AccX98 rho + seg48In0AccY98 rho) = rho 34932 := by
    unfold seg48In0AccX98 seg48In0AccY98
    linear_combination r2173
  have ha1 : rho 34931 * seg48In0AccX98 rho = rho 34933 := by
    unfold seg48In0AccX98
    linear_combination r2174
  have ha2 : rho 34930 * seg48In0AccY98 rho = rho 34934 := by
    unfold seg48In0AccY98
    linear_combination r2175
  have ha3 : 3021 * rho 34933 * rho 34934 = rho 34935 := by
    linear_combination r2176
  have ha4 : rho 34936 * (1 + rho 34935) = rho 34933 + rho 34934 := by
    linear_combination r2177
  have ha5 : rho 34937 * (1 - rho 34935) = rho 34932 - rho 34933 - rho 34934 := by
    linear_combination r2178
  have haddx :
      rho 34936 * (1 + 3021 * (rho 34931 * seg48In0AccX98 rho) * (rho 34930 * seg48In0AccY98 rho)) =
        rho 34931 * seg48In0AccX98 rho + rho 34930 * seg48In0AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34937 * (1 - 3021 * (rho 34931 * seg48In0AccX98 rho) * (rho 34930 * seg48In0AccY98 rho)) =
        (-1) * (rho 34931 * seg48In0AccX98 rho) - rho 34930 * seg48In0AccY98 rho +
          (seg48In0AccY98 rho - seg48In0AccX98 rho * (-1)) * (rho 34930 + rho 34931) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34937 * (1 - rho 34935) = rho 34932 - rho 34933 - rho 34934 := ha5
      _ = (-1) * rho 34933 - rho 34934 + (seg48In0AccY98 rho - seg48In0AccX98 rho * (-1)) *
          (rho 34930 + rho 34931) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX99 rho = seg48In0AccX98 rho - Bool.toZMod bit * (seg48In0AccX98 rho - rho 34936) := by
    have hd : rho 34938 = Bool.toZMod bit * (rho 34936 - seg48In0AccX98 rho) := by
      rw [← hbit]
      unfold seg48In0AccX98
      linear_combination -r2179
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY99 rho = seg48In0AccY98 rho - Bool.toZMod bit * (seg48In0AccY98 rho - rho 34937) := by
    have hd : rho 34939 = Bool.toZMod bit * (rho 34937 - seg48In0AccY98 rho) := by
      rw [← hbit]
      unfold seg48In0AccY98
      linear_combination -r2180
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34930 * rho 34931 = rho 34940 := by linear_combination r2181
  have hd1 : rho 34930 * rho 34930 = rho 34941 := by linear_combination r2182
  have hd2 : rho 34931 * rho 34931 = rho 34942 := by linear_combination r2183
  have hd3 : rho 34943 * (rho 34931 * rho 34931 + rho 34930 * rho 34930 * (-1)) =
      2 * (rho 34930 * rho 34931) := by
    rw [hd0, hd1, hd2]
    linear_combination r2184
  have hd4 : rho 34944 * (2 - (rho 34931 * rho 34931 + rho 34930 * rho 34930 * (-1))) =
      rho 34931 * rho 34931 - rho 34930 * rho 34930 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2185
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX98 rho, seg48In0AccY98 rho⟩ ⟨rho 34930, rho 34931⟩
    ⟨rho 34936, rho 34937⟩ ⟨seg48In0AccX99 rho, seg48In0AccY99 rho⟩ ⟨rho 34943, rho 34944⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c8 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg48In0_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg48In0_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg48In0_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg48In0_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg48In0_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg48In0_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg48In0_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg48In0_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg48In0_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg48In0_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
