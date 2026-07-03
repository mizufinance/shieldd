import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2111 rho ∧ Seg52.relationRow2112 rho ∧ Seg52.relationRow2113 rho ∧ Seg52.relationRow2114 rho ∧ Seg52.relationRow2115 rho ∧ Seg52.relationRow2116 rho ∧ Seg52.relationRow2117 rho ∧ Seg52.relationRow2118 rho ∧ Seg52.relationRow2119 rho ∧ Seg52.relationRow2120 rho ∧ Seg52.relationRow2121 rho ∧ Seg52.relationRow2122 rho ∧ Seg52.relationRow2123 rho := by
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

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123⟩

theorem seg52In0_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45852 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46500, rho 46501⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 46500, rho 46501⟩
        ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 46513, rho 46514⟩ := by
  obtain ⟨r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123⟩ := seg52In0_rows44 rho h
  unfold Seg52.relationRow2111 at r2111

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2111

  unfold Seg52.relationRow2112 at r2112

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2112

  unfold Seg52.relationRow2113 at r2113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2113

  unfold Seg52.relationRow2114 at r2114

  unfold Seg52.relationRow2115 at r2115

  unfold Seg52.relationRow2116 at r2116

  unfold Seg52.relationRow2117 at r2117

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2117

  unfold Seg52.relationRow2118 at r2118

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2118

  unfold Seg52.relationRow2119 at r2119

  unfold Seg52.relationRow2120 at r2120

  unfold Seg52.relationRow2121 at r2121

  unfold Seg52.relationRow2122 at r2122

  unfold Seg52.relationRow2123 at r2123

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX45 rho = seg52In0AccX44 rho + rho 46508 := by
    unfold seg52In0AccX45 seg52In0AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 44]

    ring

  have hnexty : seg52In0AccY45 rho = seg52In0AccY44 rho + rho 46509 := by
    unfold seg52In0AccY45 seg52In0AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 44]

    ring

  have ha0 : (rho 46500 + rho 46501) * (seg52In0AccX44 rho + seg52In0AccY44 rho) = rho 46502 := by
    unfold seg52In0AccX44 seg52In0AccY44
    linear_combination r2111
  have ha1 : rho 46501 * seg52In0AccX44 rho = rho 46503 := by
    unfold seg52In0AccX44
    linear_combination r2112
  have ha2 : rho 46500 * seg52In0AccY44 rho = rho 46504 := by
    unfold seg52In0AccY44
    linear_combination r2113
  have ha3 : 3021 * rho 46503 * rho 46504 = rho 46505 := by
    linear_combination r2114
  have ha4 : rho 46506 * (1 + rho 46505) = rho 46503 + rho 46504 := by
    linear_combination r2115
  have ha5 : rho 46507 * (1 - rho 46505) = rho 46502 - rho 46503 - rho 46504 := by
    linear_combination r2116
  have haddx :
      rho 46506 * (1 + 3021 * (rho 46501 * seg52In0AccX44 rho) * (rho 46500 * seg52In0AccY44 rho)) =
        rho 46501 * seg52In0AccX44 rho + rho 46500 * seg52In0AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46507 * (1 - 3021 * (rho 46501 * seg52In0AccX44 rho) * (rho 46500 * seg52In0AccY44 rho)) =
        (-1) * (rho 46501 * seg52In0AccX44 rho) - rho 46500 * seg52In0AccY44 rho +
          (seg52In0AccY44 rho - seg52In0AccX44 rho * (-1)) * (rho 46500 + rho 46501) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46507 * (1 - rho 46505) = rho 46502 - rho 46503 - rho 46504 := ha5
      _ = (-1) * rho 46503 - rho 46504 + (seg52In0AccY44 rho - seg52In0AccX44 rho * (-1)) *
          (rho 46500 + rho 46501) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX45 rho = seg52In0AccX44 rho - Bool.toZMod bit * (seg52In0AccX44 rho - rho 46506) := by
    have hd : rho 46508 = Bool.toZMod bit * (rho 46506 - seg52In0AccX44 rho) := by
      rw [← hbit]
      unfold seg52In0AccX44
      linear_combination -r2117
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY45 rho = seg52In0AccY44 rho - Bool.toZMod bit * (seg52In0AccY44 rho - rho 46507) := by
    have hd : rho 46509 = Bool.toZMod bit * (rho 46507 - seg52In0AccY44 rho) := by
      rw [← hbit]
      unfold seg52In0AccY44
      linear_combination -r2118
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46500 * rho 46501 = rho 46510 := by linear_combination r2119
  have hd1 : rho 46500 * rho 46500 = rho 46511 := by linear_combination r2120
  have hd2 : rho 46501 * rho 46501 = rho 46512 := by linear_combination r2121
  have hd3 : rho 46513 * (rho 46501 * rho 46501 + rho 46500 * rho 46500 * (-1)) =
      2 * (rho 46500 * rho 46501) := by
    rw [hd0, hd1, hd2]
    linear_combination r2122
  have hd4 : rho 46514 * (2 - (rho 46501 * rho 46501 + rho 46500 * rho 46500 * (-1))) =
      rho 46501 * rho 46501 - rho 46500 * rho 46500 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2123
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX44 rho, seg52In0AccY44 rho⟩ ⟨rho 46500, rho 46501⟩
    ⟨rho 46506, rho 46507⟩ ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 46513, rho 46514⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2124 rho ∧ Seg52.relationRow2125 rho ∧ Seg52.relationRow2126 rho ∧ Seg52.relationRow2127 rho ∧ Seg52.relationRow2128 rho ∧ Seg52.relationRow2129 rho ∧ Seg52.relationRow2130 rho ∧ Seg52.relationRow2131 rho ∧ Seg52.relationRow2132 rho ∧ Seg52.relationRow2133 rho ∧ Seg52.relationRow2134 rho ∧ Seg52.relationRow2135 rho ∧ Seg52.relationRow2136 rho := by
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

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136⟩

theorem seg52In0_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45853 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46513, rho 46514⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 46513, rho 46514⟩
        ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 46526, rho 46527⟩ := by
  obtain ⟨r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136⟩ := seg52In0_rows45 rho h
  unfold Seg52.relationRow2124 at r2124

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2124

  unfold Seg52.relationRow2125 at r2125

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2125

  unfold Seg52.relationRow2126 at r2126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2126

  unfold Seg52.relationRow2127 at r2127

  unfold Seg52.relationRow2128 at r2128

  unfold Seg52.relationRow2129 at r2129

  unfold Seg52.relationRow2130 at r2130

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2130

  unfold Seg52.relationRow2131 at r2131

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2131

  unfold Seg52.relationRow2132 at r2132

  unfold Seg52.relationRow2133 at r2133

  unfold Seg52.relationRow2134 at r2134

  unfold Seg52.relationRow2135 at r2135

  unfold Seg52.relationRow2136 at r2136

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX46 rho = seg52In0AccX45 rho + rho 46521 := by
    unfold seg52In0AccX46 seg52In0AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 45]

    ring

  have hnexty : seg52In0AccY46 rho = seg52In0AccY45 rho + rho 46522 := by
    unfold seg52In0AccY46 seg52In0AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 45]

    ring

  have ha0 : (rho 46513 + rho 46514) * (seg52In0AccX45 rho + seg52In0AccY45 rho) = rho 46515 := by
    unfold seg52In0AccX45 seg52In0AccY45
    linear_combination r2124
  have ha1 : rho 46514 * seg52In0AccX45 rho = rho 46516 := by
    unfold seg52In0AccX45
    linear_combination r2125
  have ha2 : rho 46513 * seg52In0AccY45 rho = rho 46517 := by
    unfold seg52In0AccY45
    linear_combination r2126
  have ha3 : 3021 * rho 46516 * rho 46517 = rho 46518 := by
    linear_combination r2127
  have ha4 : rho 46519 * (1 + rho 46518) = rho 46516 + rho 46517 := by
    linear_combination r2128
  have ha5 : rho 46520 * (1 - rho 46518) = rho 46515 - rho 46516 - rho 46517 := by
    linear_combination r2129
  have haddx :
      rho 46519 * (1 + 3021 * (rho 46514 * seg52In0AccX45 rho) * (rho 46513 * seg52In0AccY45 rho)) =
        rho 46514 * seg52In0AccX45 rho + rho 46513 * seg52In0AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46520 * (1 - 3021 * (rho 46514 * seg52In0AccX45 rho) * (rho 46513 * seg52In0AccY45 rho)) =
        (-1) * (rho 46514 * seg52In0AccX45 rho) - rho 46513 * seg52In0AccY45 rho +
          (seg52In0AccY45 rho - seg52In0AccX45 rho * (-1)) * (rho 46513 + rho 46514) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46520 * (1 - rho 46518) = rho 46515 - rho 46516 - rho 46517 := ha5
      _ = (-1) * rho 46516 - rho 46517 + (seg52In0AccY45 rho - seg52In0AccX45 rho * (-1)) *
          (rho 46513 + rho 46514) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX46 rho = seg52In0AccX45 rho - Bool.toZMod bit * (seg52In0AccX45 rho - rho 46519) := by
    have hd : rho 46521 = Bool.toZMod bit * (rho 46519 - seg52In0AccX45 rho) := by
      rw [← hbit]
      unfold seg52In0AccX45
      linear_combination -r2130
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY46 rho = seg52In0AccY45 rho - Bool.toZMod bit * (seg52In0AccY45 rho - rho 46520) := by
    have hd : rho 46522 = Bool.toZMod bit * (rho 46520 - seg52In0AccY45 rho) := by
      rw [← hbit]
      unfold seg52In0AccY45
      linear_combination -r2131
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46513 * rho 46514 = rho 46523 := by linear_combination r2132
  have hd1 : rho 46513 * rho 46513 = rho 46524 := by linear_combination r2133
  have hd2 : rho 46514 * rho 46514 = rho 46525 := by linear_combination r2134
  have hd3 : rho 46526 * (rho 46514 * rho 46514 + rho 46513 * rho 46513 * (-1)) =
      2 * (rho 46513 * rho 46514) := by
    rw [hd0, hd1, hd2]
    linear_combination r2135
  have hd4 : rho 46527 * (2 - (rho 46514 * rho 46514 + rho 46513 * rho 46513 * (-1))) =
      rho 46514 * rho 46514 - rho 46513 * rho 46513 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2136
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX45 rho, seg52In0AccY45 rho⟩ ⟨rho 46513, rho 46514⟩
    ⟨rho 46519, rho 46520⟩ ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 46526, rho 46527⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2137 rho ∧ Seg52.relationRow2138 rho ∧ Seg52.relationRow2139 rho ∧ Seg52.relationRow2140 rho ∧ Seg52.relationRow2141 rho ∧ Seg52.relationRow2142 rho ∧ Seg52.relationRow2143 rho ∧ Seg52.relationRow2144 rho ∧ Seg52.relationRow2145 rho ∧ Seg52.relationRow2146 rho ∧ Seg52.relationRow2147 rho ∧ Seg52.relationRow2148 rho ∧ Seg52.relationRow2149 rho := by
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

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149⟩

theorem seg52In0_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45854 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46526, rho 46527⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 46526, rho 46527⟩
        ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 46539, rho 46540⟩ := by
  obtain ⟨r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149⟩ := seg52In0_rows46 rho h
  unfold Seg52.relationRow2137 at r2137

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2137

  unfold Seg52.relationRow2138 at r2138

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2138

  unfold Seg52.relationRow2139 at r2139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2139

  unfold Seg52.relationRow2140 at r2140

  unfold Seg52.relationRow2141 at r2141

  unfold Seg52.relationRow2142 at r2142

  unfold Seg52.relationRow2143 at r2143

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2143

  unfold Seg52.relationRow2144 at r2144

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2144

  unfold Seg52.relationRow2145 at r2145

  unfold Seg52.relationRow2146 at r2146

  unfold Seg52.relationRow2147 at r2147

  unfold Seg52.relationRow2148 at r2148

  unfold Seg52.relationRow2149 at r2149

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX47 rho = seg52In0AccX46 rho + rho 46534 := by
    unfold seg52In0AccX47 seg52In0AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 46]

    ring

  have hnexty : seg52In0AccY47 rho = seg52In0AccY46 rho + rho 46535 := by
    unfold seg52In0AccY47 seg52In0AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 46]

    ring

  have ha0 : (rho 46526 + rho 46527) * (seg52In0AccX46 rho + seg52In0AccY46 rho) = rho 46528 := by
    unfold seg52In0AccX46 seg52In0AccY46
    linear_combination r2137
  have ha1 : rho 46527 * seg52In0AccX46 rho = rho 46529 := by
    unfold seg52In0AccX46
    linear_combination r2138
  have ha2 : rho 46526 * seg52In0AccY46 rho = rho 46530 := by
    unfold seg52In0AccY46
    linear_combination r2139
  have ha3 : 3021 * rho 46529 * rho 46530 = rho 46531 := by
    linear_combination r2140
  have ha4 : rho 46532 * (1 + rho 46531) = rho 46529 + rho 46530 := by
    linear_combination r2141
  have ha5 : rho 46533 * (1 - rho 46531) = rho 46528 - rho 46529 - rho 46530 := by
    linear_combination r2142
  have haddx :
      rho 46532 * (1 + 3021 * (rho 46527 * seg52In0AccX46 rho) * (rho 46526 * seg52In0AccY46 rho)) =
        rho 46527 * seg52In0AccX46 rho + rho 46526 * seg52In0AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46533 * (1 - 3021 * (rho 46527 * seg52In0AccX46 rho) * (rho 46526 * seg52In0AccY46 rho)) =
        (-1) * (rho 46527 * seg52In0AccX46 rho) - rho 46526 * seg52In0AccY46 rho +
          (seg52In0AccY46 rho - seg52In0AccX46 rho * (-1)) * (rho 46526 + rho 46527) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46533 * (1 - rho 46531) = rho 46528 - rho 46529 - rho 46530 := ha5
      _ = (-1) * rho 46529 - rho 46530 + (seg52In0AccY46 rho - seg52In0AccX46 rho * (-1)) *
          (rho 46526 + rho 46527) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX47 rho = seg52In0AccX46 rho - Bool.toZMod bit * (seg52In0AccX46 rho - rho 46532) := by
    have hd : rho 46534 = Bool.toZMod bit * (rho 46532 - seg52In0AccX46 rho) := by
      rw [← hbit]
      unfold seg52In0AccX46
      linear_combination -r2143
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY47 rho = seg52In0AccY46 rho - Bool.toZMod bit * (seg52In0AccY46 rho - rho 46533) := by
    have hd : rho 46535 = Bool.toZMod bit * (rho 46533 - seg52In0AccY46 rho) := by
      rw [← hbit]
      unfold seg52In0AccY46
      linear_combination -r2144
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46526 * rho 46527 = rho 46536 := by linear_combination r2145
  have hd1 : rho 46526 * rho 46526 = rho 46537 := by linear_combination r2146
  have hd2 : rho 46527 * rho 46527 = rho 46538 := by linear_combination r2147
  have hd3 : rho 46539 * (rho 46527 * rho 46527 + rho 46526 * rho 46526 * (-1)) =
      2 * (rho 46526 * rho 46527) := by
    rw [hd0, hd1, hd2]
    linear_combination r2148
  have hd4 : rho 46540 * (2 - (rho 46527 * rho 46527 + rho 46526 * rho 46526 * (-1))) =
      rho 46527 * rho 46527 - rho 46526 * rho 46526 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2149
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX46 rho, seg52In0AccY46 rho⟩ ⟨rho 46526, rho 46527⟩
    ⟨rho 46532, rho 46533⟩ ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 46539, rho 46540⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2150 rho ∧ Seg52.relationRow2151 rho ∧ Seg52.relationRow2152 rho ∧ Seg52.relationRow2153 rho ∧ Seg52.relationRow2154 rho ∧ Seg52.relationRow2155 rho ∧ Seg52.relationRow2156 rho ∧ Seg52.relationRow2157 rho ∧ Seg52.relationRow2158 rho ∧ Seg52.relationRow2159 rho ∧ Seg52.relationRow2160 rho ∧ Seg52.relationRow2161 rho ∧ Seg52.relationRow2162 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p26, p27, _, _,

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

  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨r2160, r2161, r2162, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159, r2160, r2161, r2162⟩

theorem seg52In0_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45855 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46539, rho 46540⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 46539, rho 46540⟩
        ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 46552, rho 46553⟩ := by
  obtain ⟨r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159, r2160, r2161, r2162⟩ := seg52In0_rows47 rho h
  unfold Seg52.relationRow2150 at r2150

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2150

  unfold Seg52.relationRow2151 at r2151

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2151

  unfold Seg52.relationRow2152 at r2152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2152

  unfold Seg52.relationRow2153 at r2153

  unfold Seg52.relationRow2154 at r2154

  unfold Seg52.relationRow2155 at r2155

  unfold Seg52.relationRow2156 at r2156

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2156

  unfold Seg52.relationRow2157 at r2157

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2157

  unfold Seg52.relationRow2158 at r2158

  unfold Seg52.relationRow2159 at r2159

  unfold Seg52.relationRow2160 at r2160

  unfold Seg52.relationRow2161 at r2161

  unfold Seg52.relationRow2162 at r2162

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX48 rho = seg52In0AccX47 rho + rho 46547 := by
    unfold seg52In0AccX48 seg52In0AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 47]

    ring

  have hnexty : seg52In0AccY48 rho = seg52In0AccY47 rho + rho 46548 := by
    unfold seg52In0AccY48 seg52In0AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 47]

    ring

  have ha0 : (rho 46539 + rho 46540) * (seg52In0AccX47 rho + seg52In0AccY47 rho) = rho 46541 := by
    unfold seg52In0AccX47 seg52In0AccY47
    linear_combination r2150
  have ha1 : rho 46540 * seg52In0AccX47 rho = rho 46542 := by
    unfold seg52In0AccX47
    linear_combination r2151
  have ha2 : rho 46539 * seg52In0AccY47 rho = rho 46543 := by
    unfold seg52In0AccY47
    linear_combination r2152
  have ha3 : 3021 * rho 46542 * rho 46543 = rho 46544 := by
    linear_combination r2153
  have ha4 : rho 46545 * (1 + rho 46544) = rho 46542 + rho 46543 := by
    linear_combination r2154
  have ha5 : rho 46546 * (1 - rho 46544) = rho 46541 - rho 46542 - rho 46543 := by
    linear_combination r2155
  have haddx :
      rho 46545 * (1 + 3021 * (rho 46540 * seg52In0AccX47 rho) * (rho 46539 * seg52In0AccY47 rho)) =
        rho 46540 * seg52In0AccX47 rho + rho 46539 * seg52In0AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46546 * (1 - 3021 * (rho 46540 * seg52In0AccX47 rho) * (rho 46539 * seg52In0AccY47 rho)) =
        (-1) * (rho 46540 * seg52In0AccX47 rho) - rho 46539 * seg52In0AccY47 rho +
          (seg52In0AccY47 rho - seg52In0AccX47 rho * (-1)) * (rho 46539 + rho 46540) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46546 * (1 - rho 46544) = rho 46541 - rho 46542 - rho 46543 := ha5
      _ = (-1) * rho 46542 - rho 46543 + (seg52In0AccY47 rho - seg52In0AccX47 rho * (-1)) *
          (rho 46539 + rho 46540) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX48 rho = seg52In0AccX47 rho - Bool.toZMod bit * (seg52In0AccX47 rho - rho 46545) := by
    have hd : rho 46547 = Bool.toZMod bit * (rho 46545 - seg52In0AccX47 rho) := by
      rw [← hbit]
      unfold seg52In0AccX47
      linear_combination -r2156
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY48 rho = seg52In0AccY47 rho - Bool.toZMod bit * (seg52In0AccY47 rho - rho 46546) := by
    have hd : rho 46548 = Bool.toZMod bit * (rho 46546 - seg52In0AccY47 rho) := by
      rw [← hbit]
      unfold seg52In0AccY47
      linear_combination -r2157
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46539 * rho 46540 = rho 46549 := by linear_combination r2158
  have hd1 : rho 46539 * rho 46539 = rho 46550 := by linear_combination r2159
  have hd2 : rho 46540 * rho 46540 = rho 46551 := by linear_combination r2160
  have hd3 : rho 46552 * (rho 46540 * rho 46540 + rho 46539 * rho 46539 * (-1)) =
      2 * (rho 46539 * rho 46540) := by
    rw [hd0, hd1, hd2]
    linear_combination r2161
  have hd4 : rho 46553 * (2 - (rho 46540 * rho 46540 + rho 46539 * rho 46539 * (-1))) =
      rho 46540 * rho 46540 - rho 46539 * rho 46539 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2162
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX47 rho, seg52In0AccY47 rho⟩ ⟨rho 46539, rho 46540⟩
    ⟨rho 46545, rho 46546⟩ ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 46552, rho 46553⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2163 rho ∧ Seg52.relationRow2164 rho ∧ Seg52.relationRow2165 rho ∧ Seg52.relationRow2166 rho ∧ Seg52.relationRow2167 rho ∧ Seg52.relationRow2168 rho ∧ Seg52.relationRow2169 rho ∧ Seg52.relationRow2170 rho ∧ Seg52.relationRow2171 rho ∧ Seg52.relationRow2172 rho ∧ Seg52.relationRow2173 rho ∧ Seg52.relationRow2174 rho ∧ Seg52.relationRow2175 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175⟩

theorem seg52In0_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45856 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46552, rho 46553⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 46552, rho 46553⟩
        ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 46565, rho 46566⟩ := by
  obtain ⟨r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175⟩ := seg52In0_rows48 rho h
  unfold Seg52.relationRow2163 at r2163

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2163

  unfold Seg52.relationRow2164 at r2164

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2164

  unfold Seg52.relationRow2165 at r2165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2165

  unfold Seg52.relationRow2166 at r2166

  unfold Seg52.relationRow2167 at r2167

  unfold Seg52.relationRow2168 at r2168

  unfold Seg52.relationRow2169 at r2169

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2169

  unfold Seg52.relationRow2170 at r2170

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2170

  unfold Seg52.relationRow2171 at r2171

  unfold Seg52.relationRow2172 at r2172

  unfold Seg52.relationRow2173 at r2173

  unfold Seg52.relationRow2174 at r2174

  unfold Seg52.relationRow2175 at r2175

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX49 rho = seg52In0AccX48 rho + rho 46560 := by
    unfold seg52In0AccX49 seg52In0AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 48]

    ring

  have hnexty : seg52In0AccY49 rho = seg52In0AccY48 rho + rho 46561 := by
    unfold seg52In0AccY49 seg52In0AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 48]

    ring

  have ha0 : (rho 46552 + rho 46553) * (seg52In0AccX48 rho + seg52In0AccY48 rho) = rho 46554 := by
    unfold seg52In0AccX48 seg52In0AccY48
    linear_combination r2163
  have ha1 : rho 46553 * seg52In0AccX48 rho = rho 46555 := by
    unfold seg52In0AccX48
    linear_combination r2164
  have ha2 : rho 46552 * seg52In0AccY48 rho = rho 46556 := by
    unfold seg52In0AccY48
    linear_combination r2165
  have ha3 : 3021 * rho 46555 * rho 46556 = rho 46557 := by
    linear_combination r2166
  have ha4 : rho 46558 * (1 + rho 46557) = rho 46555 + rho 46556 := by
    linear_combination r2167
  have ha5 : rho 46559 * (1 - rho 46557) = rho 46554 - rho 46555 - rho 46556 := by
    linear_combination r2168
  have haddx :
      rho 46558 * (1 + 3021 * (rho 46553 * seg52In0AccX48 rho) * (rho 46552 * seg52In0AccY48 rho)) =
        rho 46553 * seg52In0AccX48 rho + rho 46552 * seg52In0AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46559 * (1 - 3021 * (rho 46553 * seg52In0AccX48 rho) * (rho 46552 * seg52In0AccY48 rho)) =
        (-1) * (rho 46553 * seg52In0AccX48 rho) - rho 46552 * seg52In0AccY48 rho +
          (seg52In0AccY48 rho - seg52In0AccX48 rho * (-1)) * (rho 46552 + rho 46553) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46559 * (1 - rho 46557) = rho 46554 - rho 46555 - rho 46556 := ha5
      _ = (-1) * rho 46555 - rho 46556 + (seg52In0AccY48 rho - seg52In0AccX48 rho * (-1)) *
          (rho 46552 + rho 46553) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX49 rho = seg52In0AccX48 rho - Bool.toZMod bit * (seg52In0AccX48 rho - rho 46558) := by
    have hd : rho 46560 = Bool.toZMod bit * (rho 46558 - seg52In0AccX48 rho) := by
      rw [← hbit]
      unfold seg52In0AccX48
      linear_combination -r2169
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY49 rho = seg52In0AccY48 rho - Bool.toZMod bit * (seg52In0AccY48 rho - rho 46559) := by
    have hd : rho 46561 = Bool.toZMod bit * (rho 46559 - seg52In0AccY48 rho) := by
      rw [← hbit]
      unfold seg52In0AccY48
      linear_combination -r2170
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46552 * rho 46553 = rho 46562 := by linear_combination r2171
  have hd1 : rho 46552 * rho 46552 = rho 46563 := by linear_combination r2172
  have hd2 : rho 46553 * rho 46553 = rho 46564 := by linear_combination r2173
  have hd3 : rho 46565 * (rho 46553 * rho 46553 + rho 46552 * rho 46552 * (-1)) =
      2 * (rho 46552 * rho 46553) := by
    rw [hd0, hd1, hd2]
    linear_combination r2174
  have hd4 : rho 46566 * (2 - (rho 46553 * rho 46553 + rho 46552 * rho 46552 * (-1))) =
      rho 46553 * rho 46553 - rho 46552 * rho 46552 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2175
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX48 rho, seg52In0AccY48 rho⟩ ⟨rho 46552, rho 46553⟩
    ⟨rho 46558, rho 46559⟩ ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 46565, rho 46566⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2176 rho ∧ Seg52.relationRow2177 rho ∧ Seg52.relationRow2178 rho ∧ Seg52.relationRow2179 rho ∧ Seg52.relationRow2180 rho ∧ Seg52.relationRow2181 rho ∧ Seg52.relationRow2182 rho ∧ Seg52.relationRow2183 rho ∧ Seg52.relationRow2184 rho ∧ Seg52.relationRow2185 rho ∧ Seg52.relationRow2186 rho ∧ Seg52.relationRow2187 rho ∧ Seg52.relationRow2188 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188⟩

theorem seg52In0_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45857 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46565, rho 46566⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 46565, rho 46566⟩
        ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 46578, rho 46579⟩ := by
  obtain ⟨r2176, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188⟩ := seg52In0_rows49 rho h
  unfold Seg52.relationRow2176 at r2176

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2176

  unfold Seg52.relationRow2177 at r2177

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2177

  unfold Seg52.relationRow2178 at r2178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2178

  unfold Seg52.relationRow2179 at r2179

  unfold Seg52.relationRow2180 at r2180

  unfold Seg52.relationRow2181 at r2181

  unfold Seg52.relationRow2182 at r2182

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2182

  unfold Seg52.relationRow2183 at r2183

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2183

  unfold Seg52.relationRow2184 at r2184

  unfold Seg52.relationRow2185 at r2185

  unfold Seg52.relationRow2186 at r2186

  unfold Seg52.relationRow2187 at r2187

  unfold Seg52.relationRow2188 at r2188

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX50 rho = seg52In0AccX49 rho + rho 46573 := by
    unfold seg52In0AccX50 seg52In0AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 49]

    ring

  have hnexty : seg52In0AccY50 rho = seg52In0AccY49 rho + rho 46574 := by
    unfold seg52In0AccY50 seg52In0AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 49]

    ring

  have ha0 : (rho 46565 + rho 46566) * (seg52In0AccX49 rho + seg52In0AccY49 rho) = rho 46567 := by
    unfold seg52In0AccX49 seg52In0AccY49
    linear_combination r2176
  have ha1 : rho 46566 * seg52In0AccX49 rho = rho 46568 := by
    unfold seg52In0AccX49
    linear_combination r2177
  have ha2 : rho 46565 * seg52In0AccY49 rho = rho 46569 := by
    unfold seg52In0AccY49
    linear_combination r2178
  have ha3 : 3021 * rho 46568 * rho 46569 = rho 46570 := by
    linear_combination r2179
  have ha4 : rho 46571 * (1 + rho 46570) = rho 46568 + rho 46569 := by
    linear_combination r2180
  have ha5 : rho 46572 * (1 - rho 46570) = rho 46567 - rho 46568 - rho 46569 := by
    linear_combination r2181
  have haddx :
      rho 46571 * (1 + 3021 * (rho 46566 * seg52In0AccX49 rho) * (rho 46565 * seg52In0AccY49 rho)) =
        rho 46566 * seg52In0AccX49 rho + rho 46565 * seg52In0AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46572 * (1 - 3021 * (rho 46566 * seg52In0AccX49 rho) * (rho 46565 * seg52In0AccY49 rho)) =
        (-1) * (rho 46566 * seg52In0AccX49 rho) - rho 46565 * seg52In0AccY49 rho +
          (seg52In0AccY49 rho - seg52In0AccX49 rho * (-1)) * (rho 46565 + rho 46566) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46572 * (1 - rho 46570) = rho 46567 - rho 46568 - rho 46569 := ha5
      _ = (-1) * rho 46568 - rho 46569 + (seg52In0AccY49 rho - seg52In0AccX49 rho * (-1)) *
          (rho 46565 + rho 46566) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX50 rho = seg52In0AccX49 rho - Bool.toZMod bit * (seg52In0AccX49 rho - rho 46571) := by
    have hd : rho 46573 = Bool.toZMod bit * (rho 46571 - seg52In0AccX49 rho) := by
      rw [← hbit]
      unfold seg52In0AccX49
      linear_combination -r2182
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY50 rho = seg52In0AccY49 rho - Bool.toZMod bit * (seg52In0AccY49 rho - rho 46572) := by
    have hd : rho 46574 = Bool.toZMod bit * (rho 46572 - seg52In0AccY49 rho) := by
      rw [← hbit]
      unfold seg52In0AccY49
      linear_combination -r2183
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46565 * rho 46566 = rho 46575 := by linear_combination r2184
  have hd1 : rho 46565 * rho 46565 = rho 46576 := by linear_combination r2185
  have hd2 : rho 46566 * rho 46566 = rho 46577 := by linear_combination r2186
  have hd3 : rho 46578 * (rho 46566 * rho 46566 + rho 46565 * rho 46565 * (-1)) =
      2 * (rho 46565 * rho 46566) := by
    rw [hd0, hd1, hd2]
    linear_combination r2187
  have hd4 : rho 46579 * (2 - (rho 46566 * rho 46566 + rho 46565 * rho 46565 * (-1))) =
      rho 46566 * rho 46566 - rho 46565 * rho 46565 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2188
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX49 rho, seg52In0AccY49 rho⟩ ⟨rho 46565, rho 46566⟩
    ⟨rho 46571, rho 46572⟩ ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 46578, rho 46579⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2189 rho ∧ Seg52.relationRow2190 rho ∧ Seg52.relationRow2191 rho ∧ Seg52.relationRow2192 rho ∧ Seg52.relationRow2193 rho ∧ Seg52.relationRow2194 rho ∧ Seg52.relationRow2195 rho ∧ Seg52.relationRow2196 rho ∧ Seg52.relationRow2197 rho ∧ Seg52.relationRow2198 rho ∧ Seg52.relationRow2199 rho ∧ Seg52.relationRow2200 rho ∧ Seg52.relationRow2201 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201⟩

theorem seg52In0_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45858 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46578, rho 46579⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 46578, rho 46579⟩
        ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 46591, rho 46592⟩ := by
  obtain ⟨r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201⟩ := seg52In0_rows50 rho h
  unfold Seg52.relationRow2189 at r2189

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2189

  unfold Seg52.relationRow2190 at r2190

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2190

  unfold Seg52.relationRow2191 at r2191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2191

  unfold Seg52.relationRow2192 at r2192

  unfold Seg52.relationRow2193 at r2193

  unfold Seg52.relationRow2194 at r2194

  unfold Seg52.relationRow2195 at r2195

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2195

  unfold Seg52.relationRow2196 at r2196

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2196

  unfold Seg52.relationRow2197 at r2197

  unfold Seg52.relationRow2198 at r2198

  unfold Seg52.relationRow2199 at r2199

  unfold Seg52.relationRow2200 at r2200

  unfold Seg52.relationRow2201 at r2201

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX51 rho = seg52In0AccX50 rho + rho 46586 := by
    unfold seg52In0AccX51 seg52In0AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 50]

    ring

  have hnexty : seg52In0AccY51 rho = seg52In0AccY50 rho + rho 46587 := by
    unfold seg52In0AccY51 seg52In0AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 50]

    ring

  have ha0 : (rho 46578 + rho 46579) * (seg52In0AccX50 rho + seg52In0AccY50 rho) = rho 46580 := by
    unfold seg52In0AccX50 seg52In0AccY50
    linear_combination r2189
  have ha1 : rho 46579 * seg52In0AccX50 rho = rho 46581 := by
    unfold seg52In0AccX50
    linear_combination r2190
  have ha2 : rho 46578 * seg52In0AccY50 rho = rho 46582 := by
    unfold seg52In0AccY50
    linear_combination r2191
  have ha3 : 3021 * rho 46581 * rho 46582 = rho 46583 := by
    linear_combination r2192
  have ha4 : rho 46584 * (1 + rho 46583) = rho 46581 + rho 46582 := by
    linear_combination r2193
  have ha5 : rho 46585 * (1 - rho 46583) = rho 46580 - rho 46581 - rho 46582 := by
    linear_combination r2194
  have haddx :
      rho 46584 * (1 + 3021 * (rho 46579 * seg52In0AccX50 rho) * (rho 46578 * seg52In0AccY50 rho)) =
        rho 46579 * seg52In0AccX50 rho + rho 46578 * seg52In0AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46585 * (1 - 3021 * (rho 46579 * seg52In0AccX50 rho) * (rho 46578 * seg52In0AccY50 rho)) =
        (-1) * (rho 46579 * seg52In0AccX50 rho) - rho 46578 * seg52In0AccY50 rho +
          (seg52In0AccY50 rho - seg52In0AccX50 rho * (-1)) * (rho 46578 + rho 46579) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46585 * (1 - rho 46583) = rho 46580 - rho 46581 - rho 46582 := ha5
      _ = (-1) * rho 46581 - rho 46582 + (seg52In0AccY50 rho - seg52In0AccX50 rho * (-1)) *
          (rho 46578 + rho 46579) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX51 rho = seg52In0AccX50 rho - Bool.toZMod bit * (seg52In0AccX50 rho - rho 46584) := by
    have hd : rho 46586 = Bool.toZMod bit * (rho 46584 - seg52In0AccX50 rho) := by
      rw [← hbit]
      unfold seg52In0AccX50
      linear_combination -r2195
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY51 rho = seg52In0AccY50 rho - Bool.toZMod bit * (seg52In0AccY50 rho - rho 46585) := by
    have hd : rho 46587 = Bool.toZMod bit * (rho 46585 - seg52In0AccY50 rho) := by
      rw [← hbit]
      unfold seg52In0AccY50
      linear_combination -r2196
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46578 * rho 46579 = rho 46588 := by linear_combination r2197
  have hd1 : rho 46578 * rho 46578 = rho 46589 := by linear_combination r2198
  have hd2 : rho 46579 * rho 46579 = rho 46590 := by linear_combination r2199
  have hd3 : rho 46591 * (rho 46579 * rho 46579 + rho 46578 * rho 46578 * (-1)) =
      2 * (rho 46578 * rho 46579) := by
    rw [hd0, hd1, hd2]
    linear_combination r2200
  have hd4 : rho 46592 * (2 - (rho 46579 * rho 46579 + rho 46578 * rho 46578 * (-1))) =
      rho 46579 * rho 46579 - rho 46578 * rho 46578 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2201
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX50 rho, seg52In0AccY50 rho⟩ ⟨rho 46578, rho 46579⟩
    ⟨rho 46584, rho 46585⟩ ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 46591, rho 46592⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2202 rho ∧ Seg52.relationRow2203 rho ∧ Seg52.relationRow2204 rho ∧ Seg52.relationRow2205 rho ∧ Seg52.relationRow2206 rho ∧ Seg52.relationRow2207 rho ∧ Seg52.relationRow2208 rho ∧ Seg52.relationRow2209 rho ∧ Seg52.relationRow2210 rho ∧ Seg52.relationRow2211 rho ∧ Seg52.relationRow2212 rho ∧ Seg52.relationRow2213 rho ∧ Seg52.relationRow2214 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214⟩

theorem seg52In0_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45859 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46591, rho 46592⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 46591, rho 46592⟩
        ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 46604, rho 46605⟩ := by
  obtain ⟨r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214⟩ := seg52In0_rows51 rho h
  unfold Seg52.relationRow2202 at r2202

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2202

  unfold Seg52.relationRow2203 at r2203

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2203

  unfold Seg52.relationRow2204 at r2204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2204

  unfold Seg52.relationRow2205 at r2205

  unfold Seg52.relationRow2206 at r2206

  unfold Seg52.relationRow2207 at r2207

  unfold Seg52.relationRow2208 at r2208

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2208

  unfold Seg52.relationRow2209 at r2209

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2209

  unfold Seg52.relationRow2210 at r2210

  unfold Seg52.relationRow2211 at r2211

  unfold Seg52.relationRow2212 at r2212

  unfold Seg52.relationRow2213 at r2213

  unfold Seg52.relationRow2214 at r2214

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX52 rho = seg52In0AccX51 rho + rho 46599 := by
    unfold seg52In0AccX52 seg52In0AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 51]

    ring

  have hnexty : seg52In0AccY52 rho = seg52In0AccY51 rho + rho 46600 := by
    unfold seg52In0AccY52 seg52In0AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 51]

    ring

  have ha0 : (rho 46591 + rho 46592) * (seg52In0AccX51 rho + seg52In0AccY51 rho) = rho 46593 := by
    unfold seg52In0AccX51 seg52In0AccY51
    linear_combination r2202
  have ha1 : rho 46592 * seg52In0AccX51 rho = rho 46594 := by
    unfold seg52In0AccX51
    linear_combination r2203
  have ha2 : rho 46591 * seg52In0AccY51 rho = rho 46595 := by
    unfold seg52In0AccY51
    linear_combination r2204
  have ha3 : 3021 * rho 46594 * rho 46595 = rho 46596 := by
    linear_combination r2205
  have ha4 : rho 46597 * (1 + rho 46596) = rho 46594 + rho 46595 := by
    linear_combination r2206
  have ha5 : rho 46598 * (1 - rho 46596) = rho 46593 - rho 46594 - rho 46595 := by
    linear_combination r2207
  have haddx :
      rho 46597 * (1 + 3021 * (rho 46592 * seg52In0AccX51 rho) * (rho 46591 * seg52In0AccY51 rho)) =
        rho 46592 * seg52In0AccX51 rho + rho 46591 * seg52In0AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46598 * (1 - 3021 * (rho 46592 * seg52In0AccX51 rho) * (rho 46591 * seg52In0AccY51 rho)) =
        (-1) * (rho 46592 * seg52In0AccX51 rho) - rho 46591 * seg52In0AccY51 rho +
          (seg52In0AccY51 rho - seg52In0AccX51 rho * (-1)) * (rho 46591 + rho 46592) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46598 * (1 - rho 46596) = rho 46593 - rho 46594 - rho 46595 := ha5
      _ = (-1) * rho 46594 - rho 46595 + (seg52In0AccY51 rho - seg52In0AccX51 rho * (-1)) *
          (rho 46591 + rho 46592) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX52 rho = seg52In0AccX51 rho - Bool.toZMod bit * (seg52In0AccX51 rho - rho 46597) := by
    have hd : rho 46599 = Bool.toZMod bit * (rho 46597 - seg52In0AccX51 rho) := by
      rw [← hbit]
      unfold seg52In0AccX51
      linear_combination -r2208
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY52 rho = seg52In0AccY51 rho - Bool.toZMod bit * (seg52In0AccY51 rho - rho 46598) := by
    have hd : rho 46600 = Bool.toZMod bit * (rho 46598 - seg52In0AccY51 rho) := by
      rw [← hbit]
      unfold seg52In0AccY51
      linear_combination -r2209
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46591 * rho 46592 = rho 46601 := by linear_combination r2210
  have hd1 : rho 46591 * rho 46591 = rho 46602 := by linear_combination r2211
  have hd2 : rho 46592 * rho 46592 = rho 46603 := by linear_combination r2212
  have hd3 : rho 46604 * (rho 46592 * rho 46592 + rho 46591 * rho 46591 * (-1)) =
      2 * (rho 46591 * rho 46592) := by
    rw [hd0, hd1, hd2]
    linear_combination r2213
  have hd4 : rho 46605 * (2 - (rho 46592 * rho 46592 + rho 46591 * rho 46591 * (-1))) =
      rho 46592 * rho 46592 - rho 46591 * rho 46591 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2214
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX51 rho, seg52In0AccY51 rho⟩ ⟨rho 46591, rho 46592⟩
    ⟨rho 46597, rho 46598⟩ ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 46604, rho 46605⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2215 rho ∧ Seg52.relationRow2216 rho ∧ Seg52.relationRow2217 rho ∧ Seg52.relationRow2218 rho ∧ Seg52.relationRow2219 rho ∧ Seg52.relationRow2220 rho ∧ Seg52.relationRow2221 rho ∧ Seg52.relationRow2222 rho ∧ Seg52.relationRow2223 rho ∧ Seg52.relationRow2224 rho ∧ Seg52.relationRow2225 rho ∧ Seg52.relationRow2226 rho ∧ Seg52.relationRow2227 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, r2225, r2226, r2227, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, r2225, r2226, r2227⟩

theorem seg52In0_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45860 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46604, rho 46605⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 46604, rho 46605⟩
        ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 46617, rho 46618⟩ := by
  obtain ⟨r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, r2225, r2226, r2227⟩ := seg52In0_rows52 rho h
  unfold Seg52.relationRow2215 at r2215

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2215

  unfold Seg52.relationRow2216 at r2216

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2216

  unfold Seg52.relationRow2217 at r2217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2217

  unfold Seg52.relationRow2218 at r2218

  unfold Seg52.relationRow2219 at r2219

  unfold Seg52.relationRow2220 at r2220

  unfold Seg52.relationRow2221 at r2221

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2221

  unfold Seg52.relationRow2222 at r2222

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2222

  unfold Seg52.relationRow2223 at r2223

  unfold Seg52.relationRow2224 at r2224

  unfold Seg52.relationRow2225 at r2225

  unfold Seg52.relationRow2226 at r2226

  unfold Seg52.relationRow2227 at r2227

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX53 rho = seg52In0AccX52 rho + rho 46612 := by
    unfold seg52In0AccX53 seg52In0AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 52]

    ring

  have hnexty : seg52In0AccY53 rho = seg52In0AccY52 rho + rho 46613 := by
    unfold seg52In0AccY53 seg52In0AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 52]

    ring

  have ha0 : (rho 46604 + rho 46605) * (seg52In0AccX52 rho + seg52In0AccY52 rho) = rho 46606 := by
    unfold seg52In0AccX52 seg52In0AccY52
    linear_combination r2215
  have ha1 : rho 46605 * seg52In0AccX52 rho = rho 46607 := by
    unfold seg52In0AccX52
    linear_combination r2216
  have ha2 : rho 46604 * seg52In0AccY52 rho = rho 46608 := by
    unfold seg52In0AccY52
    linear_combination r2217
  have ha3 : 3021 * rho 46607 * rho 46608 = rho 46609 := by
    linear_combination r2218
  have ha4 : rho 46610 * (1 + rho 46609) = rho 46607 + rho 46608 := by
    linear_combination r2219
  have ha5 : rho 46611 * (1 - rho 46609) = rho 46606 - rho 46607 - rho 46608 := by
    linear_combination r2220
  have haddx :
      rho 46610 * (1 + 3021 * (rho 46605 * seg52In0AccX52 rho) * (rho 46604 * seg52In0AccY52 rho)) =
        rho 46605 * seg52In0AccX52 rho + rho 46604 * seg52In0AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46611 * (1 - 3021 * (rho 46605 * seg52In0AccX52 rho) * (rho 46604 * seg52In0AccY52 rho)) =
        (-1) * (rho 46605 * seg52In0AccX52 rho) - rho 46604 * seg52In0AccY52 rho +
          (seg52In0AccY52 rho - seg52In0AccX52 rho * (-1)) * (rho 46604 + rho 46605) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46611 * (1 - rho 46609) = rho 46606 - rho 46607 - rho 46608 := ha5
      _ = (-1) * rho 46607 - rho 46608 + (seg52In0AccY52 rho - seg52In0AccX52 rho * (-1)) *
          (rho 46604 + rho 46605) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX53 rho = seg52In0AccX52 rho - Bool.toZMod bit * (seg52In0AccX52 rho - rho 46610) := by
    have hd : rho 46612 = Bool.toZMod bit * (rho 46610 - seg52In0AccX52 rho) := by
      rw [← hbit]
      unfold seg52In0AccX52
      linear_combination -r2221
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY53 rho = seg52In0AccY52 rho - Bool.toZMod bit * (seg52In0AccY52 rho - rho 46611) := by
    have hd : rho 46613 = Bool.toZMod bit * (rho 46611 - seg52In0AccY52 rho) := by
      rw [← hbit]
      unfold seg52In0AccY52
      linear_combination -r2222
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46604 * rho 46605 = rho 46614 := by linear_combination r2223
  have hd1 : rho 46604 * rho 46604 = rho 46615 := by linear_combination r2224
  have hd2 : rho 46605 * rho 46605 = rho 46616 := by linear_combination r2225
  have hd3 : rho 46617 * (rho 46605 * rho 46605 + rho 46604 * rho 46604 * (-1)) =
      2 * (rho 46604 * rho 46605) := by
    rw [hd0, hd1, hd2]
    linear_combination r2226
  have hd4 : rho 46618 * (2 - (rho 46605 * rho 46605 + rho 46604 * rho 46604 * (-1))) =
      rho 46605 * rho 46605 - rho 46604 * rho 46604 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2227
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX52 rho, seg52In0AccY52 rho⟩ ⟨rho 46604, rho 46605⟩
    ⟨rho 46610, rho 46611⟩ ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 46617, rho 46618⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2228 rho ∧ Seg52.relationRow2229 rho ∧ Seg52.relationRow2230 rho ∧ Seg52.relationRow2231 rho ∧ Seg52.relationRow2232 rho ∧ Seg52.relationRow2233 rho ∧ Seg52.relationRow2234 rho ∧ Seg52.relationRow2235 rho ∧ Seg52.relationRow2236 rho ∧ Seg52.relationRow2237 rho ∧ Seg52.relationRow2238 rho ∧ Seg52.relationRow2239 rho ∧ Seg52.relationRow2240 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p27, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨r2240, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239, r2240⟩

theorem seg52In0_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45861 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46617, rho 46618⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 46617, rho 46618⟩
        ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 46630, rho 46631⟩ := by
  obtain ⟨r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239, r2240⟩ := seg52In0_rows53 rho h
  unfold Seg52.relationRow2228 at r2228

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2228

  unfold Seg52.relationRow2229 at r2229

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2229

  unfold Seg52.relationRow2230 at r2230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2230

  unfold Seg52.relationRow2231 at r2231

  unfold Seg52.relationRow2232 at r2232

  unfold Seg52.relationRow2233 at r2233

  unfold Seg52.relationRow2234 at r2234

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2234

  unfold Seg52.relationRow2235 at r2235

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2235

  unfold Seg52.relationRow2236 at r2236

  unfold Seg52.relationRow2237 at r2237

  unfold Seg52.relationRow2238 at r2238

  unfold Seg52.relationRow2239 at r2239

  unfold Seg52.relationRow2240 at r2240

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX54 rho = seg52In0AccX53 rho + rho 46625 := by
    unfold seg52In0AccX54 seg52In0AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 53]

    ring

  have hnexty : seg52In0AccY54 rho = seg52In0AccY53 rho + rho 46626 := by
    unfold seg52In0AccY54 seg52In0AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 53]

    ring

  have ha0 : (rho 46617 + rho 46618) * (seg52In0AccX53 rho + seg52In0AccY53 rho) = rho 46619 := by
    unfold seg52In0AccX53 seg52In0AccY53
    linear_combination r2228
  have ha1 : rho 46618 * seg52In0AccX53 rho = rho 46620 := by
    unfold seg52In0AccX53
    linear_combination r2229
  have ha2 : rho 46617 * seg52In0AccY53 rho = rho 46621 := by
    unfold seg52In0AccY53
    linear_combination r2230
  have ha3 : 3021 * rho 46620 * rho 46621 = rho 46622 := by
    linear_combination r2231
  have ha4 : rho 46623 * (1 + rho 46622) = rho 46620 + rho 46621 := by
    linear_combination r2232
  have ha5 : rho 46624 * (1 - rho 46622) = rho 46619 - rho 46620 - rho 46621 := by
    linear_combination r2233
  have haddx :
      rho 46623 * (1 + 3021 * (rho 46618 * seg52In0AccX53 rho) * (rho 46617 * seg52In0AccY53 rho)) =
        rho 46618 * seg52In0AccX53 rho + rho 46617 * seg52In0AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46624 * (1 - 3021 * (rho 46618 * seg52In0AccX53 rho) * (rho 46617 * seg52In0AccY53 rho)) =
        (-1) * (rho 46618 * seg52In0AccX53 rho) - rho 46617 * seg52In0AccY53 rho +
          (seg52In0AccY53 rho - seg52In0AccX53 rho * (-1)) * (rho 46617 + rho 46618) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46624 * (1 - rho 46622) = rho 46619 - rho 46620 - rho 46621 := ha5
      _ = (-1) * rho 46620 - rho 46621 + (seg52In0AccY53 rho - seg52In0AccX53 rho * (-1)) *
          (rho 46617 + rho 46618) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX54 rho = seg52In0AccX53 rho - Bool.toZMod bit * (seg52In0AccX53 rho - rho 46623) := by
    have hd : rho 46625 = Bool.toZMod bit * (rho 46623 - seg52In0AccX53 rho) := by
      rw [← hbit]
      unfold seg52In0AccX53
      linear_combination -r2234
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY54 rho = seg52In0AccY53 rho - Bool.toZMod bit * (seg52In0AccY53 rho - rho 46624) := by
    have hd : rho 46626 = Bool.toZMod bit * (rho 46624 - seg52In0AccY53 rho) := by
      rw [← hbit]
      unfold seg52In0AccY53
      linear_combination -r2235
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46617 * rho 46618 = rho 46627 := by linear_combination r2236
  have hd1 : rho 46617 * rho 46617 = rho 46628 := by linear_combination r2237
  have hd2 : rho 46618 * rho 46618 = rho 46629 := by linear_combination r2238
  have hd3 : rho 46630 * (rho 46618 * rho 46618 + rho 46617 * rho 46617 * (-1)) =
      2 * (rho 46617 * rho 46618) := by
    rw [hd0, hd1, hd2]
    linear_combination r2239
  have hd4 : rho 46631 * (2 - (rho 46618 * rho 46618 + rho 46617 * rho 46617 * (-1))) =
      rho 46618 * rho 46618 - rho 46617 * rho 46617 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2240
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX53 rho, seg52In0AccY53 rho⟩ ⟨rho 46617, rho 46618⟩
    ⟨rho 46623, rho 46624⟩ ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 46630, rho 46631⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2241 rho ∧ Seg52.relationRow2242 rho ∧ Seg52.relationRow2243 rho ∧ Seg52.relationRow2244 rho ∧ Seg52.relationRow2245 rho ∧ Seg52.relationRow2246 rho ∧ Seg52.relationRow2247 rho ∧ Seg52.relationRow2248 rho ∧ Seg52.relationRow2249 rho ∧ Seg52.relationRow2250 rho ∧ Seg52.relationRow2251 rho ∧ Seg52.relationRow2252 rho ∧ Seg52.relationRow2253 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, r2253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, r2253⟩

theorem seg52In0_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45862 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46630, rho 46631⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 46630, rho 46631⟩
        ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46643, rho 46644⟩ := by
  obtain ⟨r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, r2253⟩ := seg52In0_rows54 rho h
  unfold Seg52.relationRow2241 at r2241

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2241

  unfold Seg52.relationRow2242 at r2242

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2242

  unfold Seg52.relationRow2243 at r2243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2243

  unfold Seg52.relationRow2244 at r2244

  unfold Seg52.relationRow2245 at r2245

  unfold Seg52.relationRow2246 at r2246

  unfold Seg52.relationRow2247 at r2247

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2247

  unfold Seg52.relationRow2248 at r2248

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2248

  unfold Seg52.relationRow2249 at r2249

  unfold Seg52.relationRow2250 at r2250

  unfold Seg52.relationRow2251 at r2251

  unfold Seg52.relationRow2252 at r2252

  unfold Seg52.relationRow2253 at r2253

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX55 rho = seg52In0AccX54 rho + rho 46638 := by
    unfold seg52In0AccX55 seg52In0AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 54]

    ring

  have hnexty : seg52In0AccY55 rho = seg52In0AccY54 rho + rho 46639 := by
    unfold seg52In0AccY55 seg52In0AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 54]

    ring

  have ha0 : (rho 46630 + rho 46631) * (seg52In0AccX54 rho + seg52In0AccY54 rho) = rho 46632 := by
    unfold seg52In0AccX54 seg52In0AccY54
    linear_combination r2241
  have ha1 : rho 46631 * seg52In0AccX54 rho = rho 46633 := by
    unfold seg52In0AccX54
    linear_combination r2242
  have ha2 : rho 46630 * seg52In0AccY54 rho = rho 46634 := by
    unfold seg52In0AccY54
    linear_combination r2243
  have ha3 : 3021 * rho 46633 * rho 46634 = rho 46635 := by
    linear_combination r2244
  have ha4 : rho 46636 * (1 + rho 46635) = rho 46633 + rho 46634 := by
    linear_combination r2245
  have ha5 : rho 46637 * (1 - rho 46635) = rho 46632 - rho 46633 - rho 46634 := by
    linear_combination r2246
  have haddx :
      rho 46636 * (1 + 3021 * (rho 46631 * seg52In0AccX54 rho) * (rho 46630 * seg52In0AccY54 rho)) =
        rho 46631 * seg52In0AccX54 rho + rho 46630 * seg52In0AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46637 * (1 - 3021 * (rho 46631 * seg52In0AccX54 rho) * (rho 46630 * seg52In0AccY54 rho)) =
        (-1) * (rho 46631 * seg52In0AccX54 rho) - rho 46630 * seg52In0AccY54 rho +
          (seg52In0AccY54 rho - seg52In0AccX54 rho * (-1)) * (rho 46630 + rho 46631) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46637 * (1 - rho 46635) = rho 46632 - rho 46633 - rho 46634 := ha5
      _ = (-1) * rho 46633 - rho 46634 + (seg52In0AccY54 rho - seg52In0AccX54 rho * (-1)) *
          (rho 46630 + rho 46631) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX55 rho = seg52In0AccX54 rho - Bool.toZMod bit * (seg52In0AccX54 rho - rho 46636) := by
    have hd : rho 46638 = Bool.toZMod bit * (rho 46636 - seg52In0AccX54 rho) := by
      rw [← hbit]
      unfold seg52In0AccX54
      linear_combination -r2247
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY55 rho = seg52In0AccY54 rho - Bool.toZMod bit * (seg52In0AccY54 rho - rho 46637) := by
    have hd : rho 46639 = Bool.toZMod bit * (rho 46637 - seg52In0AccY54 rho) := by
      rw [← hbit]
      unfold seg52In0AccY54
      linear_combination -r2248
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46630 * rho 46631 = rho 46640 := by linear_combination r2249
  have hd1 : rho 46630 * rho 46630 = rho 46641 := by linear_combination r2250
  have hd2 : rho 46631 * rho 46631 = rho 46642 := by linear_combination r2251
  have hd3 : rho 46643 * (rho 46631 * rho 46631 + rho 46630 * rho 46630 * (-1)) =
      2 * (rho 46630 * rho 46631) := by
    rw [hd0, hd1, hd2]
    linear_combination r2252
  have hd4 : rho 46644 * (2 - (rho 46631 * rho 46631 + rho 46630 * rho 46630 * (-1))) =
      rho 46631 * rho 46631 - rho 46630 * rho 46630 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2253
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX54 rho, seg52In0AccY54 rho⟩ ⟨rho 46630, rho 46631⟩
    ⟨rho 46636, rho 46637⟩ ⟨seg52In0AccX55 rho, seg52In0AccY55 rho⟩ ⟨rho 46643, rho 46644⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg52In0_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg52In0_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg52In0_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg52In0_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg52In0_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg52In0_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg52In0_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg52In0_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg52In0_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg52In0_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
