import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2186 rho ∧ Seg48.relationRow2187 rho ∧ Seg48.relationRow2188 rho ∧ Seg48.relationRow2189 rho ∧ Seg48.relationRow2190 rho ∧ Seg48.relationRow2191 rho ∧ Seg48.relationRow2192 rho ∧ Seg48.relationRow2193 rho ∧ Seg48.relationRow2194 rho ∧ Seg48.relationRow2195 rho ∧ Seg48.relationRow2196 rho ∧ Seg48.relationRow2197 rho ∧ Seg48.relationRow2198 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198⟩

theorem seg48In0_rung99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33635 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX99 rho, seg48In0AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34943, rho 34944⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX99 rho, seg48In0AccY99 rho⟩ ⟨rho 34943, rho 34944⟩
        ⟨seg48In0AccX100 rho, seg48In0AccY100 rho⟩ ⟨rho 34956, rho 34957⟩ := by
  obtain ⟨r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198⟩ := seg48In0_rows99 rho h
  unfold Seg48.relationRow2186 at r2186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2186

  unfold Seg48.relationRow2187 at r2187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2187

  unfold Seg48.relationRow2188 at r2188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2188

  unfold Seg48.relationRow2189 at r2189

  unfold Seg48.relationRow2190 at r2190

  unfold Seg48.relationRow2191 at r2191

  unfold Seg48.relationRow2192 at r2192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2192

  unfold Seg48.relationRow2193 at r2193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2193

  unfold Seg48.relationRow2194 at r2194

  unfold Seg48.relationRow2195 at r2195

  unfold Seg48.relationRow2196 at r2196

  unfold Seg48.relationRow2197 at r2197

  unfold Seg48.relationRow2198 at r2198

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX100 rho = seg48In0AccX99 rho + rho 34951 := by
    unfold seg48In0AccX100 seg48In0AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 99]

    ring

  have hnexty : seg48In0AccY100 rho = seg48In0AccY99 rho + rho 34952 := by
    unfold seg48In0AccY100 seg48In0AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 99]

    ring

  have ha0 : (rho 34943 + rho 34944) * (seg48In0AccX99 rho + seg48In0AccY99 rho) = rho 34945 := by
    unfold seg48In0AccX99 seg48In0AccY99
    linear_combination r2186
  have ha1 : rho 34944 * seg48In0AccX99 rho = rho 34946 := by
    unfold seg48In0AccX99
    linear_combination r2187
  have ha2 : rho 34943 * seg48In0AccY99 rho = rho 34947 := by
    unfold seg48In0AccY99
    linear_combination r2188
  have ha3 : 3021 * rho 34946 * rho 34947 = rho 34948 := by
    linear_combination r2189
  have ha4 : rho 34949 * (1 + rho 34948) = rho 34946 + rho 34947 := by
    linear_combination r2190
  have ha5 : rho 34950 * (1 - rho 34948) = rho 34945 - rho 34946 - rho 34947 := by
    linear_combination r2191
  have haddx :
      rho 34949 * (1 + 3021 * (rho 34944 * seg48In0AccX99 rho) * (rho 34943 * seg48In0AccY99 rho)) =
        rho 34944 * seg48In0AccX99 rho + rho 34943 * seg48In0AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34950 * (1 - 3021 * (rho 34944 * seg48In0AccX99 rho) * (rho 34943 * seg48In0AccY99 rho)) =
        (-1) * (rho 34944 * seg48In0AccX99 rho) - rho 34943 * seg48In0AccY99 rho +
          (seg48In0AccY99 rho - seg48In0AccX99 rho * (-1)) * (rho 34943 + rho 34944) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34950 * (1 - rho 34948) = rho 34945 - rho 34946 - rho 34947 := ha5
      _ = (-1) * rho 34946 - rho 34947 + (seg48In0AccY99 rho - seg48In0AccX99 rho * (-1)) *
          (rho 34943 + rho 34944) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX100 rho = seg48In0AccX99 rho - Bool.toZMod bit * (seg48In0AccX99 rho - rho 34949) := by
    have hd : rho 34951 = Bool.toZMod bit * (rho 34949 - seg48In0AccX99 rho) := by
      rw [← hbit]
      unfold seg48In0AccX99
      linear_combination -r2192
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY100 rho = seg48In0AccY99 rho - Bool.toZMod bit * (seg48In0AccY99 rho - rho 34950) := by
    have hd : rho 34952 = Bool.toZMod bit * (rho 34950 - seg48In0AccY99 rho) := by
      rw [← hbit]
      unfold seg48In0AccY99
      linear_combination -r2193
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34943 * rho 34944 = rho 34953 := by linear_combination r2194
  have hd1 : rho 34943 * rho 34943 = rho 34954 := by linear_combination r2195
  have hd2 : rho 34944 * rho 34944 = rho 34955 := by linear_combination r2196
  have hd3 : rho 34956 * (rho 34944 * rho 34944 + rho 34943 * rho 34943 * (-1)) =
      2 * (rho 34943 * rho 34944) := by
    rw [hd0, hd1, hd2]
    linear_combination r2197
  have hd4 : rho 34957 * (2 - (rho 34944 * rho 34944 + rho 34943 * rho 34943 * (-1))) =
      rho 34944 * rho 34944 - rho 34943 * rho 34943 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2198
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX99 rho, seg48In0AccY99 rho⟩ ⟨rho 34943, rho 34944⟩
    ⟨rho 34949, rho 34950⟩ ⟨seg48In0AccX100 rho, seg48In0AccY100 rho⟩ ⟨rho 34956, rho 34957⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2199 rho ∧ Seg48.relationRow2200 rho ∧ Seg48.relationRow2201 rho ∧ Seg48.relationRow2202 rho ∧ Seg48.relationRow2203 rho ∧ Seg48.relationRow2204 rho ∧ Seg48.relationRow2205 rho ∧ Seg48.relationRow2206 rho ∧ Seg48.relationRow2207 rho ∧ Seg48.relationRow2208 rho ∧ Seg48.relationRow2209 rho ∧ Seg48.relationRow2210 rho ∧ Seg48.relationRow2211 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211⟩

theorem seg48In0_rung100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33636 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX100 rho, seg48In0AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34956, rho 34957⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX100 rho, seg48In0AccY100 rho⟩ ⟨rho 34956, rho 34957⟩
        ⟨seg48In0AccX101 rho, seg48In0AccY101 rho⟩ ⟨rho 34969, rho 34970⟩ := by
  obtain ⟨r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211⟩ := seg48In0_rows100 rho h
  unfold Seg48.relationRow2199 at r2199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2199

  unfold Seg48.relationRow2200 at r2200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2200

  unfold Seg48.relationRow2201 at r2201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2201

  unfold Seg48.relationRow2202 at r2202

  unfold Seg48.relationRow2203 at r2203

  unfold Seg48.relationRow2204 at r2204

  unfold Seg48.relationRow2205 at r2205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2205

  unfold Seg48.relationRow2206 at r2206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2206

  unfold Seg48.relationRow2207 at r2207

  unfold Seg48.relationRow2208 at r2208

  unfold Seg48.relationRow2209 at r2209

  unfold Seg48.relationRow2210 at r2210

  unfold Seg48.relationRow2211 at r2211

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX101 rho = seg48In0AccX100 rho + rho 34964 := by
    unfold seg48In0AccX101 seg48In0AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 100]

    ring

  have hnexty : seg48In0AccY101 rho = seg48In0AccY100 rho + rho 34965 := by
    unfold seg48In0AccY101 seg48In0AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 100]

    ring

  have ha0 : (rho 34956 + rho 34957) * (seg48In0AccX100 rho + seg48In0AccY100 rho) = rho 34958 := by
    unfold seg48In0AccX100 seg48In0AccY100
    linear_combination r2199
  have ha1 : rho 34957 * seg48In0AccX100 rho = rho 34959 := by
    unfold seg48In0AccX100
    linear_combination r2200
  have ha2 : rho 34956 * seg48In0AccY100 rho = rho 34960 := by
    unfold seg48In0AccY100
    linear_combination r2201
  have ha3 : 3021 * rho 34959 * rho 34960 = rho 34961 := by
    linear_combination r2202
  have ha4 : rho 34962 * (1 + rho 34961) = rho 34959 + rho 34960 := by
    linear_combination r2203
  have ha5 : rho 34963 * (1 - rho 34961) = rho 34958 - rho 34959 - rho 34960 := by
    linear_combination r2204
  have haddx :
      rho 34962 * (1 + 3021 * (rho 34957 * seg48In0AccX100 rho) * (rho 34956 * seg48In0AccY100 rho)) =
        rho 34957 * seg48In0AccX100 rho + rho 34956 * seg48In0AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34963 * (1 - 3021 * (rho 34957 * seg48In0AccX100 rho) * (rho 34956 * seg48In0AccY100 rho)) =
        (-1) * (rho 34957 * seg48In0AccX100 rho) - rho 34956 * seg48In0AccY100 rho +
          (seg48In0AccY100 rho - seg48In0AccX100 rho * (-1)) * (rho 34956 + rho 34957) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34963 * (1 - rho 34961) = rho 34958 - rho 34959 - rho 34960 := ha5
      _ = (-1) * rho 34959 - rho 34960 + (seg48In0AccY100 rho - seg48In0AccX100 rho * (-1)) *
          (rho 34956 + rho 34957) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX101 rho = seg48In0AccX100 rho - Bool.toZMod bit * (seg48In0AccX100 rho - rho 34962) := by
    have hd : rho 34964 = Bool.toZMod bit * (rho 34962 - seg48In0AccX100 rho) := by
      rw [← hbit]
      unfold seg48In0AccX100
      linear_combination -r2205
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY101 rho = seg48In0AccY100 rho - Bool.toZMod bit * (seg48In0AccY100 rho - rho 34963) := by
    have hd : rho 34965 = Bool.toZMod bit * (rho 34963 - seg48In0AccY100 rho) := by
      rw [← hbit]
      unfold seg48In0AccY100
      linear_combination -r2206
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34956 * rho 34957 = rho 34966 := by linear_combination r2207
  have hd1 : rho 34956 * rho 34956 = rho 34967 := by linear_combination r2208
  have hd2 : rho 34957 * rho 34957 = rho 34968 := by linear_combination r2209
  have hd3 : rho 34969 * (rho 34957 * rho 34957 + rho 34956 * rho 34956 * (-1)) =
      2 * (rho 34956 * rho 34957) := by
    rw [hd0, hd1, hd2]
    linear_combination r2210
  have hd4 : rho 34970 * (2 - (rho 34957 * rho 34957 + rho 34956 * rho 34956 * (-1))) =
      rho 34957 * rho 34957 - rho 34956 * rho 34956 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2211
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX100 rho, seg48In0AccY100 rho⟩ ⟨rho 34956, rho 34957⟩
    ⟨rho 34962, rho 34963⟩ ⟨seg48In0AccX101 rho, seg48In0AccY101 rho⟩ ⟨rho 34969, rho 34970⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2212 rho ∧ Seg48.relationRow2213 rho ∧ Seg48.relationRow2214 rho ∧ Seg48.relationRow2215 rho ∧ Seg48.relationRow2216 rho ∧ Seg48.relationRow2217 rho ∧ Seg48.relationRow2218 rho ∧ Seg48.relationRow2219 rho ∧ Seg48.relationRow2220 rho ∧ Seg48.relationRow2221 rho ∧ Seg48.relationRow2222 rho ∧ Seg48.relationRow2223 rho ∧ Seg48.relationRow2224 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224⟩

theorem seg48In0_rung101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33637 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX101 rho, seg48In0AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34969, rho 34970⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX101 rho, seg48In0AccY101 rho⟩ ⟨rho 34969, rho 34970⟩
        ⟨seg48In0AccX102 rho, seg48In0AccY102 rho⟩ ⟨rho 34982, rho 34983⟩ := by
  obtain ⟨r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224⟩ := seg48In0_rows101 rho h
  unfold Seg48.relationRow2212 at r2212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2212

  unfold Seg48.relationRow2213 at r2213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2213

  unfold Seg48.relationRow2214 at r2214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2214

  unfold Seg48.relationRow2215 at r2215

  unfold Seg48.relationRow2216 at r2216

  unfold Seg48.relationRow2217 at r2217

  unfold Seg48.relationRow2218 at r2218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2218

  unfold Seg48.relationRow2219 at r2219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2219

  unfold Seg48.relationRow2220 at r2220

  unfold Seg48.relationRow2221 at r2221

  unfold Seg48.relationRow2222 at r2222

  unfold Seg48.relationRow2223 at r2223

  unfold Seg48.relationRow2224 at r2224

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX102 rho = seg48In0AccX101 rho + rho 34977 := by
    unfold seg48In0AccX102 seg48In0AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 101]

    ring

  have hnexty : seg48In0AccY102 rho = seg48In0AccY101 rho + rho 34978 := by
    unfold seg48In0AccY102 seg48In0AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 101]

    ring

  have ha0 : (rho 34969 + rho 34970) * (seg48In0AccX101 rho + seg48In0AccY101 rho) = rho 34971 := by
    unfold seg48In0AccX101 seg48In0AccY101
    linear_combination r2212
  have ha1 : rho 34970 * seg48In0AccX101 rho = rho 34972 := by
    unfold seg48In0AccX101
    linear_combination r2213
  have ha2 : rho 34969 * seg48In0AccY101 rho = rho 34973 := by
    unfold seg48In0AccY101
    linear_combination r2214
  have ha3 : 3021 * rho 34972 * rho 34973 = rho 34974 := by
    linear_combination r2215
  have ha4 : rho 34975 * (1 + rho 34974) = rho 34972 + rho 34973 := by
    linear_combination r2216
  have ha5 : rho 34976 * (1 - rho 34974) = rho 34971 - rho 34972 - rho 34973 := by
    linear_combination r2217
  have haddx :
      rho 34975 * (1 + 3021 * (rho 34970 * seg48In0AccX101 rho) * (rho 34969 * seg48In0AccY101 rho)) =
        rho 34970 * seg48In0AccX101 rho + rho 34969 * seg48In0AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34976 * (1 - 3021 * (rho 34970 * seg48In0AccX101 rho) * (rho 34969 * seg48In0AccY101 rho)) =
        (-1) * (rho 34970 * seg48In0AccX101 rho) - rho 34969 * seg48In0AccY101 rho +
          (seg48In0AccY101 rho - seg48In0AccX101 rho * (-1)) * (rho 34969 + rho 34970) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34976 * (1 - rho 34974) = rho 34971 - rho 34972 - rho 34973 := ha5
      _ = (-1) * rho 34972 - rho 34973 + (seg48In0AccY101 rho - seg48In0AccX101 rho * (-1)) *
          (rho 34969 + rho 34970) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX102 rho = seg48In0AccX101 rho - Bool.toZMod bit * (seg48In0AccX101 rho - rho 34975) := by
    have hd : rho 34977 = Bool.toZMod bit * (rho 34975 - seg48In0AccX101 rho) := by
      rw [← hbit]
      unfold seg48In0AccX101
      linear_combination -r2218
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY102 rho = seg48In0AccY101 rho - Bool.toZMod bit * (seg48In0AccY101 rho - rho 34976) := by
    have hd : rho 34978 = Bool.toZMod bit * (rho 34976 - seg48In0AccY101 rho) := by
      rw [← hbit]
      unfold seg48In0AccY101
      linear_combination -r2219
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34969 * rho 34970 = rho 34979 := by linear_combination r2220
  have hd1 : rho 34969 * rho 34969 = rho 34980 := by linear_combination r2221
  have hd2 : rho 34970 * rho 34970 = rho 34981 := by linear_combination r2222
  have hd3 : rho 34982 * (rho 34970 * rho 34970 + rho 34969 * rho 34969 * (-1)) =
      2 * (rho 34969 * rho 34970) := by
    rw [hd0, hd1, hd2]
    linear_combination r2223
  have hd4 : rho 34983 * (2 - (rho 34970 * rho 34970 + rho 34969 * rho 34969 * (-1))) =
      rho 34970 * rho 34970 - rho 34969 * rho 34969 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2224
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX101 rho, seg48In0AccY101 rho⟩ ⟨rho 34969, rho 34970⟩
    ⟨rho 34975, rho 34976⟩ ⟨seg48In0AccX102 rho, seg48In0AccY102 rho⟩ ⟨rho 34982, rho 34983⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2225 rho ∧ Seg48.relationRow2226 rho ∧ Seg48.relationRow2227 rho ∧ Seg48.relationRow2228 rho ∧ Seg48.relationRow2229 rho ∧ Seg48.relationRow2230 rho ∧ Seg48.relationRow2231 rho ∧ Seg48.relationRow2232 rho ∧ Seg48.relationRow2233 rho ∧ Seg48.relationRow2234 rho ∧ Seg48.relationRow2235 rho ∧ Seg48.relationRow2236 rho ∧ Seg48.relationRow2237 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, _, _⟩

  exact ⟨r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237⟩

theorem seg48In0_rung102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33638 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX102 rho, seg48In0AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34982, rho 34983⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX102 rho, seg48In0AccY102 rho⟩ ⟨rho 34982, rho 34983⟩
        ⟨seg48In0AccX103 rho, seg48In0AccY103 rho⟩ ⟨rho 34995, rho 34996⟩ := by
  obtain ⟨r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237⟩ := seg48In0_rows102 rho h
  unfold Seg48.relationRow2225 at r2225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2225

  unfold Seg48.relationRow2226 at r2226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2226

  unfold Seg48.relationRow2227 at r2227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2227

  unfold Seg48.relationRow2228 at r2228

  unfold Seg48.relationRow2229 at r2229

  unfold Seg48.relationRow2230 at r2230

  unfold Seg48.relationRow2231 at r2231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2231

  unfold Seg48.relationRow2232 at r2232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2232

  unfold Seg48.relationRow2233 at r2233

  unfold Seg48.relationRow2234 at r2234

  unfold Seg48.relationRow2235 at r2235

  unfold Seg48.relationRow2236 at r2236

  unfold Seg48.relationRow2237 at r2237

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX103 rho = seg48In0AccX102 rho + rho 34990 := by
    unfold seg48In0AccX103 seg48In0AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 102]

    ring

  have hnexty : seg48In0AccY103 rho = seg48In0AccY102 rho + rho 34991 := by
    unfold seg48In0AccY103 seg48In0AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 102]

    ring

  have ha0 : (rho 34982 + rho 34983) * (seg48In0AccX102 rho + seg48In0AccY102 rho) = rho 34984 := by
    unfold seg48In0AccX102 seg48In0AccY102
    linear_combination r2225
  have ha1 : rho 34983 * seg48In0AccX102 rho = rho 34985 := by
    unfold seg48In0AccX102
    linear_combination r2226
  have ha2 : rho 34982 * seg48In0AccY102 rho = rho 34986 := by
    unfold seg48In0AccY102
    linear_combination r2227
  have ha3 : 3021 * rho 34985 * rho 34986 = rho 34987 := by
    linear_combination r2228
  have ha4 : rho 34988 * (1 + rho 34987) = rho 34985 + rho 34986 := by
    linear_combination r2229
  have ha5 : rho 34989 * (1 - rho 34987) = rho 34984 - rho 34985 - rho 34986 := by
    linear_combination r2230
  have haddx :
      rho 34988 * (1 + 3021 * (rho 34983 * seg48In0AccX102 rho) * (rho 34982 * seg48In0AccY102 rho)) =
        rho 34983 * seg48In0AccX102 rho + rho 34982 * seg48In0AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34989 * (1 - 3021 * (rho 34983 * seg48In0AccX102 rho) * (rho 34982 * seg48In0AccY102 rho)) =
        (-1) * (rho 34983 * seg48In0AccX102 rho) - rho 34982 * seg48In0AccY102 rho +
          (seg48In0AccY102 rho - seg48In0AccX102 rho * (-1)) * (rho 34982 + rho 34983) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34989 * (1 - rho 34987) = rho 34984 - rho 34985 - rho 34986 := ha5
      _ = (-1) * rho 34985 - rho 34986 + (seg48In0AccY102 rho - seg48In0AccX102 rho * (-1)) *
          (rho 34982 + rho 34983) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX103 rho = seg48In0AccX102 rho - Bool.toZMod bit * (seg48In0AccX102 rho - rho 34988) := by
    have hd : rho 34990 = Bool.toZMod bit * (rho 34988 - seg48In0AccX102 rho) := by
      rw [← hbit]
      unfold seg48In0AccX102
      linear_combination -r2231
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY103 rho = seg48In0AccY102 rho - Bool.toZMod bit * (seg48In0AccY102 rho - rho 34989) := by
    have hd : rho 34991 = Bool.toZMod bit * (rho 34989 - seg48In0AccY102 rho) := by
      rw [← hbit]
      unfold seg48In0AccY102
      linear_combination -r2232
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34982 * rho 34983 = rho 34992 := by linear_combination r2233
  have hd1 : rho 34982 * rho 34982 = rho 34993 := by linear_combination r2234
  have hd2 : rho 34983 * rho 34983 = rho 34994 := by linear_combination r2235
  have hd3 : rho 34995 * (rho 34983 * rho 34983 + rho 34982 * rho 34982 * (-1)) =
      2 * (rho 34982 * rho 34983) := by
    rw [hd0, hd1, hd2]
    linear_combination r2236
  have hd4 : rho 34996 * (2 - (rho 34983 * rho 34983 + rho 34982 * rho 34982 * (-1))) =
      rho 34983 * rho 34983 - rho 34982 * rho 34982 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2237
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX102 rho, seg48In0AccY102 rho⟩ ⟨rho 34982, rho 34983⟩
    ⟨rho 34988, rho 34989⟩ ⟨seg48In0AccX103 rho, seg48In0AccY103 rho⟩ ⟨rho 34995, rho 34996⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2238 rho ∧ Seg48.relationRow2239 rho ∧ Seg48.relationRow2240 rho ∧ Seg48.relationRow2241 rho ∧ Seg48.relationRow2242 rho ∧ Seg48.relationRow2243 rho ∧ Seg48.relationRow2244 rho ∧ Seg48.relationRow2245 rho ∧ Seg48.relationRow2246 rho ∧ Seg48.relationRow2247 rho ∧ Seg48.relationRow2248 rho ∧ Seg48.relationRow2249 rho ∧ Seg48.relationRow2250 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2238, r2239⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2238, r2239, r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250⟩

theorem seg48In0_rung103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33639 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX103 rho, seg48In0AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34995, rho 34996⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX103 rho, seg48In0AccY103 rho⟩ ⟨rho 34995, rho 34996⟩
        ⟨seg48In0AccX104 rho, seg48In0AccY104 rho⟩ ⟨rho 35008, rho 35009⟩ := by
  obtain ⟨r2238, r2239, r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250⟩ := seg48In0_rows103 rho h
  unfold Seg48.relationRow2238 at r2238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2238

  unfold Seg48.relationRow2239 at r2239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2239

  unfold Seg48.relationRow2240 at r2240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2240

  unfold Seg48.relationRow2241 at r2241

  unfold Seg48.relationRow2242 at r2242

  unfold Seg48.relationRow2243 at r2243

  unfold Seg48.relationRow2244 at r2244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2244

  unfold Seg48.relationRow2245 at r2245

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2245

  unfold Seg48.relationRow2246 at r2246

  unfold Seg48.relationRow2247 at r2247

  unfold Seg48.relationRow2248 at r2248

  unfold Seg48.relationRow2249 at r2249

  unfold Seg48.relationRow2250 at r2250

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX104 rho = seg48In0AccX103 rho + rho 35003 := by
    unfold seg48In0AccX104 seg48In0AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 103]

    ring

  have hnexty : seg48In0AccY104 rho = seg48In0AccY103 rho + rho 35004 := by
    unfold seg48In0AccY104 seg48In0AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 103]

    ring

  have ha0 : (rho 34995 + rho 34996) * (seg48In0AccX103 rho + seg48In0AccY103 rho) = rho 34997 := by
    unfold seg48In0AccX103 seg48In0AccY103
    linear_combination r2238
  have ha1 : rho 34996 * seg48In0AccX103 rho = rho 34998 := by
    unfold seg48In0AccX103
    linear_combination r2239
  have ha2 : rho 34995 * seg48In0AccY103 rho = rho 34999 := by
    unfold seg48In0AccY103
    linear_combination r2240
  have ha3 : 3021 * rho 34998 * rho 34999 = rho 35000 := by
    linear_combination r2241
  have ha4 : rho 35001 * (1 + rho 35000) = rho 34998 + rho 34999 := by
    linear_combination r2242
  have ha5 : rho 35002 * (1 - rho 35000) = rho 34997 - rho 34998 - rho 34999 := by
    linear_combination r2243
  have haddx :
      rho 35001 * (1 + 3021 * (rho 34996 * seg48In0AccX103 rho) * (rho 34995 * seg48In0AccY103 rho)) =
        rho 34996 * seg48In0AccX103 rho + rho 34995 * seg48In0AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35002 * (1 - 3021 * (rho 34996 * seg48In0AccX103 rho) * (rho 34995 * seg48In0AccY103 rho)) =
        (-1) * (rho 34996 * seg48In0AccX103 rho) - rho 34995 * seg48In0AccY103 rho +
          (seg48In0AccY103 rho - seg48In0AccX103 rho * (-1)) * (rho 34995 + rho 34996) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35002 * (1 - rho 35000) = rho 34997 - rho 34998 - rho 34999 := ha5
      _ = (-1) * rho 34998 - rho 34999 + (seg48In0AccY103 rho - seg48In0AccX103 rho * (-1)) *
          (rho 34995 + rho 34996) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX104 rho = seg48In0AccX103 rho - Bool.toZMod bit * (seg48In0AccX103 rho - rho 35001) := by
    have hd : rho 35003 = Bool.toZMod bit * (rho 35001 - seg48In0AccX103 rho) := by
      rw [← hbit]
      unfold seg48In0AccX103
      linear_combination -r2244
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY104 rho = seg48In0AccY103 rho - Bool.toZMod bit * (seg48In0AccY103 rho - rho 35002) := by
    have hd : rho 35004 = Bool.toZMod bit * (rho 35002 - seg48In0AccY103 rho) := by
      rw [← hbit]
      unfold seg48In0AccY103
      linear_combination -r2245
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34995 * rho 34996 = rho 35005 := by linear_combination r2246
  have hd1 : rho 34995 * rho 34995 = rho 35006 := by linear_combination r2247
  have hd2 : rho 34996 * rho 34996 = rho 35007 := by linear_combination r2248
  have hd3 : rho 35008 * (rho 34996 * rho 34996 + rho 34995 * rho 34995 * (-1)) =
      2 * (rho 34995 * rho 34996) := by
    rw [hd0, hd1, hd2]
    linear_combination r2249
  have hd4 : rho 35009 * (2 - (rho 34996 * rho 34996 + rho 34995 * rho 34995 * (-1))) =
      rho 34996 * rho 34996 - rho 34995 * rho 34995 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2250
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX103 rho, seg48In0AccY103 rho⟩ ⟨rho 34995, rho 34996⟩
    ⟨rho 35001, rho 35002⟩ ⟨seg48In0AccX104 rho, seg48In0AccY104 rho⟩ ⟨rho 35008, rho 35009⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2251 rho ∧ Seg48.relationRow2252 rho ∧ Seg48.relationRow2253 rho ∧ Seg48.relationRow2254 rho ∧ Seg48.relationRow2255 rho ∧ Seg48.relationRow2256 rho ∧ Seg48.relationRow2257 rho ∧ Seg48.relationRow2258 rho ∧ Seg48.relationRow2259 rho ∧ Seg48.relationRow2260 rho ∧ Seg48.relationRow2261 rho ∧ Seg48.relationRow2262 rho ∧ Seg48.relationRow2263 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263⟩

theorem seg48In0_rung104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33640 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX104 rho, seg48In0AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35008, rho 35009⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX104 rho, seg48In0AccY104 rho⟩ ⟨rho 35008, rho 35009⟩
        ⟨seg48In0AccX105 rho, seg48In0AccY105 rho⟩ ⟨rho 35021, rho 35022⟩ := by
  obtain ⟨r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263⟩ := seg48In0_rows104 rho h
  unfold Seg48.relationRow2251 at r2251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2251

  unfold Seg48.relationRow2252 at r2252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2252

  unfold Seg48.relationRow2253 at r2253

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2253

  unfold Seg48.relationRow2254 at r2254

  unfold Seg48.relationRow2255 at r2255

  unfold Seg48.relationRow2256 at r2256

  unfold Seg48.relationRow2257 at r2257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2257

  unfold Seg48.relationRow2258 at r2258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2258

  unfold Seg48.relationRow2259 at r2259

  unfold Seg48.relationRow2260 at r2260

  unfold Seg48.relationRow2261 at r2261

  unfold Seg48.relationRow2262 at r2262

  unfold Seg48.relationRow2263 at r2263

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX105 rho = seg48In0AccX104 rho + rho 35016 := by
    unfold seg48In0AccX105 seg48In0AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 104]

    ring

  have hnexty : seg48In0AccY105 rho = seg48In0AccY104 rho + rho 35017 := by
    unfold seg48In0AccY105 seg48In0AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 104]

    ring

  have ha0 : (rho 35008 + rho 35009) * (seg48In0AccX104 rho + seg48In0AccY104 rho) = rho 35010 := by
    unfold seg48In0AccX104 seg48In0AccY104
    linear_combination r2251
  have ha1 : rho 35009 * seg48In0AccX104 rho = rho 35011 := by
    unfold seg48In0AccX104
    linear_combination r2252
  have ha2 : rho 35008 * seg48In0AccY104 rho = rho 35012 := by
    unfold seg48In0AccY104
    linear_combination r2253
  have ha3 : 3021 * rho 35011 * rho 35012 = rho 35013 := by
    linear_combination r2254
  have ha4 : rho 35014 * (1 + rho 35013) = rho 35011 + rho 35012 := by
    linear_combination r2255
  have ha5 : rho 35015 * (1 - rho 35013) = rho 35010 - rho 35011 - rho 35012 := by
    linear_combination r2256
  have haddx :
      rho 35014 * (1 + 3021 * (rho 35009 * seg48In0AccX104 rho) * (rho 35008 * seg48In0AccY104 rho)) =
        rho 35009 * seg48In0AccX104 rho + rho 35008 * seg48In0AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35015 * (1 - 3021 * (rho 35009 * seg48In0AccX104 rho) * (rho 35008 * seg48In0AccY104 rho)) =
        (-1) * (rho 35009 * seg48In0AccX104 rho) - rho 35008 * seg48In0AccY104 rho +
          (seg48In0AccY104 rho - seg48In0AccX104 rho * (-1)) * (rho 35008 + rho 35009) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35015 * (1 - rho 35013) = rho 35010 - rho 35011 - rho 35012 := ha5
      _ = (-1) * rho 35011 - rho 35012 + (seg48In0AccY104 rho - seg48In0AccX104 rho * (-1)) *
          (rho 35008 + rho 35009) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX105 rho = seg48In0AccX104 rho - Bool.toZMod bit * (seg48In0AccX104 rho - rho 35014) := by
    have hd : rho 35016 = Bool.toZMod bit * (rho 35014 - seg48In0AccX104 rho) := by
      rw [← hbit]
      unfold seg48In0AccX104
      linear_combination -r2257
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY105 rho = seg48In0AccY104 rho - Bool.toZMod bit * (seg48In0AccY104 rho - rho 35015) := by
    have hd : rho 35017 = Bool.toZMod bit * (rho 35015 - seg48In0AccY104 rho) := by
      rw [← hbit]
      unfold seg48In0AccY104
      linear_combination -r2258
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35008 * rho 35009 = rho 35018 := by linear_combination r2259
  have hd1 : rho 35008 * rho 35008 = rho 35019 := by linear_combination r2260
  have hd2 : rho 35009 * rho 35009 = rho 35020 := by linear_combination r2261
  have hd3 : rho 35021 * (rho 35009 * rho 35009 + rho 35008 * rho 35008 * (-1)) =
      2 * (rho 35008 * rho 35009) := by
    rw [hd0, hd1, hd2]
    linear_combination r2262
  have hd4 : rho 35022 * (2 - (rho 35009 * rho 35009 + rho 35008 * rho 35008 * (-1))) =
      rho 35009 * rho 35009 - rho 35008 * rho 35008 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2263
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX104 rho, seg48In0AccY104 rho⟩ ⟨rho 35008, rho 35009⟩
    ⟨rho 35014, rho 35015⟩ ⟨seg48In0AccX105 rho, seg48In0AccY105 rho⟩ ⟨rho 35021, rho 35022⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2264 rho ∧ Seg48.relationRow2265 rho ∧ Seg48.relationRow2266 rho ∧ Seg48.relationRow2267 rho ∧ Seg48.relationRow2268 rho ∧ Seg48.relationRow2269 rho ∧ Seg48.relationRow2270 rho ∧ Seg48.relationRow2271 rho ∧ Seg48.relationRow2272 rho ∧ Seg48.relationRow2273 rho ∧ Seg48.relationRow2274 rho ∧ Seg48.relationRow2275 rho ∧ Seg48.relationRow2276 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276⟩

theorem seg48In0_rung105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33641 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX105 rho, seg48In0AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35021, rho 35022⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX105 rho, seg48In0AccY105 rho⟩ ⟨rho 35021, rho 35022⟩
        ⟨seg48In0AccX106 rho, seg48In0AccY106 rho⟩ ⟨rho 35034, rho 35035⟩ := by
  obtain ⟨r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276⟩ := seg48In0_rows105 rho h
  unfold Seg48.relationRow2264 at r2264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2264

  unfold Seg48.relationRow2265 at r2265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2265

  unfold Seg48.relationRow2266 at r2266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2266

  unfold Seg48.relationRow2267 at r2267

  unfold Seg48.relationRow2268 at r2268

  unfold Seg48.relationRow2269 at r2269

  unfold Seg48.relationRow2270 at r2270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2270

  unfold Seg48.relationRow2271 at r2271

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2271

  unfold Seg48.relationRow2272 at r2272

  unfold Seg48.relationRow2273 at r2273

  unfold Seg48.relationRow2274 at r2274

  unfold Seg48.relationRow2275 at r2275

  unfold Seg48.relationRow2276 at r2276

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX106 rho = seg48In0AccX105 rho + rho 35029 := by
    unfold seg48In0AccX106 seg48In0AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 105]

    ring

  have hnexty : seg48In0AccY106 rho = seg48In0AccY105 rho + rho 35030 := by
    unfold seg48In0AccY106 seg48In0AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 105]

    ring

  have ha0 : (rho 35021 + rho 35022) * (seg48In0AccX105 rho + seg48In0AccY105 rho) = rho 35023 := by
    unfold seg48In0AccX105 seg48In0AccY105
    linear_combination r2264
  have ha1 : rho 35022 * seg48In0AccX105 rho = rho 35024 := by
    unfold seg48In0AccX105
    linear_combination r2265
  have ha2 : rho 35021 * seg48In0AccY105 rho = rho 35025 := by
    unfold seg48In0AccY105
    linear_combination r2266
  have ha3 : 3021 * rho 35024 * rho 35025 = rho 35026 := by
    linear_combination r2267
  have ha4 : rho 35027 * (1 + rho 35026) = rho 35024 + rho 35025 := by
    linear_combination r2268
  have ha5 : rho 35028 * (1 - rho 35026) = rho 35023 - rho 35024 - rho 35025 := by
    linear_combination r2269
  have haddx :
      rho 35027 * (1 + 3021 * (rho 35022 * seg48In0AccX105 rho) * (rho 35021 * seg48In0AccY105 rho)) =
        rho 35022 * seg48In0AccX105 rho + rho 35021 * seg48In0AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35028 * (1 - 3021 * (rho 35022 * seg48In0AccX105 rho) * (rho 35021 * seg48In0AccY105 rho)) =
        (-1) * (rho 35022 * seg48In0AccX105 rho) - rho 35021 * seg48In0AccY105 rho +
          (seg48In0AccY105 rho - seg48In0AccX105 rho * (-1)) * (rho 35021 + rho 35022) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35028 * (1 - rho 35026) = rho 35023 - rho 35024 - rho 35025 := ha5
      _ = (-1) * rho 35024 - rho 35025 + (seg48In0AccY105 rho - seg48In0AccX105 rho * (-1)) *
          (rho 35021 + rho 35022) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX106 rho = seg48In0AccX105 rho - Bool.toZMod bit * (seg48In0AccX105 rho - rho 35027) := by
    have hd : rho 35029 = Bool.toZMod bit * (rho 35027 - seg48In0AccX105 rho) := by
      rw [← hbit]
      unfold seg48In0AccX105
      linear_combination -r2270
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY106 rho = seg48In0AccY105 rho - Bool.toZMod bit * (seg48In0AccY105 rho - rho 35028) := by
    have hd : rho 35030 = Bool.toZMod bit * (rho 35028 - seg48In0AccY105 rho) := by
      rw [← hbit]
      unfold seg48In0AccY105
      linear_combination -r2271
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35021 * rho 35022 = rho 35031 := by linear_combination r2272
  have hd1 : rho 35021 * rho 35021 = rho 35032 := by linear_combination r2273
  have hd2 : rho 35022 * rho 35022 = rho 35033 := by linear_combination r2274
  have hd3 : rho 35034 * (rho 35022 * rho 35022 + rho 35021 * rho 35021 * (-1)) =
      2 * (rho 35021 * rho 35022) := by
    rw [hd0, hd1, hd2]
    linear_combination r2275
  have hd4 : rho 35035 * (2 - (rho 35022 * rho 35022 + rho 35021 * rho 35021 * (-1))) =
      rho 35022 * rho 35022 - rho 35021 * rho 35021 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2276
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX105 rho, seg48In0AccY105 rho⟩ ⟨rho 35021, rho 35022⟩
    ⟨rho 35027, rho 35028⟩ ⟨seg48In0AccX106 rho, seg48In0AccY106 rho⟩ ⟨rho 35034, rho 35035⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2277 rho ∧ Seg48.relationRow2278 rho ∧ Seg48.relationRow2279 rho ∧ Seg48.relationRow2280 rho ∧ Seg48.relationRow2281 rho ∧ Seg48.relationRow2282 rho ∧ Seg48.relationRow2283 rho ∧ Seg48.relationRow2284 rho ∧ Seg48.relationRow2285 rho ∧ Seg48.relationRow2286 rho ∧ Seg48.relationRow2287 rho ∧ Seg48.relationRow2288 rho ∧ Seg48.relationRow2289 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289⟩

theorem seg48In0_rung106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33642 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX106 rho, seg48In0AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35034, rho 35035⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX106 rho, seg48In0AccY106 rho⟩ ⟨rho 35034, rho 35035⟩
        ⟨seg48In0AccX107 rho, seg48In0AccY107 rho⟩ ⟨rho 35047, rho 35048⟩ := by
  obtain ⟨r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289⟩ := seg48In0_rows106 rho h
  unfold Seg48.relationRow2277 at r2277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2277

  unfold Seg48.relationRow2278 at r2278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2278

  unfold Seg48.relationRow2279 at r2279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2279

  unfold Seg48.relationRow2280 at r2280

  unfold Seg48.relationRow2281 at r2281

  unfold Seg48.relationRow2282 at r2282

  unfold Seg48.relationRow2283 at r2283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2283

  unfold Seg48.relationRow2284 at r2284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2284

  unfold Seg48.relationRow2285 at r2285

  unfold Seg48.relationRow2286 at r2286

  unfold Seg48.relationRow2287 at r2287

  unfold Seg48.relationRow2288 at r2288

  unfold Seg48.relationRow2289 at r2289

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX107 rho = seg48In0AccX106 rho + rho 35042 := by
    unfold seg48In0AccX107 seg48In0AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 106]

    ring

  have hnexty : seg48In0AccY107 rho = seg48In0AccY106 rho + rho 35043 := by
    unfold seg48In0AccY107 seg48In0AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 106]

    ring

  have ha0 : (rho 35034 + rho 35035) * (seg48In0AccX106 rho + seg48In0AccY106 rho) = rho 35036 := by
    unfold seg48In0AccX106 seg48In0AccY106
    linear_combination r2277
  have ha1 : rho 35035 * seg48In0AccX106 rho = rho 35037 := by
    unfold seg48In0AccX106
    linear_combination r2278
  have ha2 : rho 35034 * seg48In0AccY106 rho = rho 35038 := by
    unfold seg48In0AccY106
    linear_combination r2279
  have ha3 : 3021 * rho 35037 * rho 35038 = rho 35039 := by
    linear_combination r2280
  have ha4 : rho 35040 * (1 + rho 35039) = rho 35037 + rho 35038 := by
    linear_combination r2281
  have ha5 : rho 35041 * (1 - rho 35039) = rho 35036 - rho 35037 - rho 35038 := by
    linear_combination r2282
  have haddx :
      rho 35040 * (1 + 3021 * (rho 35035 * seg48In0AccX106 rho) * (rho 35034 * seg48In0AccY106 rho)) =
        rho 35035 * seg48In0AccX106 rho + rho 35034 * seg48In0AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35041 * (1 - 3021 * (rho 35035 * seg48In0AccX106 rho) * (rho 35034 * seg48In0AccY106 rho)) =
        (-1) * (rho 35035 * seg48In0AccX106 rho) - rho 35034 * seg48In0AccY106 rho +
          (seg48In0AccY106 rho - seg48In0AccX106 rho * (-1)) * (rho 35034 + rho 35035) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35041 * (1 - rho 35039) = rho 35036 - rho 35037 - rho 35038 := ha5
      _ = (-1) * rho 35037 - rho 35038 + (seg48In0AccY106 rho - seg48In0AccX106 rho * (-1)) *
          (rho 35034 + rho 35035) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX107 rho = seg48In0AccX106 rho - Bool.toZMod bit * (seg48In0AccX106 rho - rho 35040) := by
    have hd : rho 35042 = Bool.toZMod bit * (rho 35040 - seg48In0AccX106 rho) := by
      rw [← hbit]
      unfold seg48In0AccX106
      linear_combination -r2283
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY107 rho = seg48In0AccY106 rho - Bool.toZMod bit * (seg48In0AccY106 rho - rho 35041) := by
    have hd : rho 35043 = Bool.toZMod bit * (rho 35041 - seg48In0AccY106 rho) := by
      rw [← hbit]
      unfold seg48In0AccY106
      linear_combination -r2284
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35034 * rho 35035 = rho 35044 := by linear_combination r2285
  have hd1 : rho 35034 * rho 35034 = rho 35045 := by linear_combination r2286
  have hd2 : rho 35035 * rho 35035 = rho 35046 := by linear_combination r2287
  have hd3 : rho 35047 * (rho 35035 * rho 35035 + rho 35034 * rho 35034 * (-1)) =
      2 * (rho 35034 * rho 35035) := by
    rw [hd0, hd1, hd2]
    linear_combination r2288
  have hd4 : rho 35048 * (2 - (rho 35035 * rho 35035 + rho 35034 * rho 35034 * (-1))) =
      rho 35035 * rho 35035 - rho 35034 * rho 35034 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2289
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX106 rho, seg48In0AccY106 rho⟩ ⟨rho 35034, rho 35035⟩
    ⟨rho 35040, rho 35041⟩ ⟨seg48In0AccX107 rho, seg48In0AccY107 rho⟩ ⟨rho 35047, rho 35048⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2290 rho ∧ Seg48.relationRow2291 rho ∧ Seg48.relationRow2292 rho ∧ Seg48.relationRow2293 rho ∧ Seg48.relationRow2294 rho ∧ Seg48.relationRow2295 rho ∧ Seg48.relationRow2296 rho ∧ Seg48.relationRow2297 rho ∧ Seg48.relationRow2298 rho ∧ Seg48.relationRow2299 rho ∧ Seg48.relationRow2300 rho ∧ Seg48.relationRow2301 rho ∧ Seg48.relationRow2302 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302⟩

theorem seg48In0_rung107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33643 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX107 rho, seg48In0AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35047, rho 35048⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX107 rho, seg48In0AccY107 rho⟩ ⟨rho 35047, rho 35048⟩
        ⟨seg48In0AccX108 rho, seg48In0AccY108 rho⟩ ⟨rho 35060, rho 35061⟩ := by
  obtain ⟨r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302⟩ := seg48In0_rows107 rho h
  unfold Seg48.relationRow2290 at r2290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2290

  unfold Seg48.relationRow2291 at r2291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2291

  unfold Seg48.relationRow2292 at r2292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2292

  unfold Seg48.relationRow2293 at r2293

  unfold Seg48.relationRow2294 at r2294

  unfold Seg48.relationRow2295 at r2295

  unfold Seg48.relationRow2296 at r2296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2296

  unfold Seg48.relationRow2297 at r2297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2297

  unfold Seg48.relationRow2298 at r2298

  unfold Seg48.relationRow2299 at r2299

  unfold Seg48.relationRow2300 at r2300

  unfold Seg48.relationRow2301 at r2301

  unfold Seg48.relationRow2302 at r2302

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX108 rho = seg48In0AccX107 rho + rho 35055 := by
    unfold seg48In0AccX108 seg48In0AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 107]

    ring

  have hnexty : seg48In0AccY108 rho = seg48In0AccY107 rho + rho 35056 := by
    unfold seg48In0AccY108 seg48In0AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 107]

    ring

  have ha0 : (rho 35047 + rho 35048) * (seg48In0AccX107 rho + seg48In0AccY107 rho) = rho 35049 := by
    unfold seg48In0AccX107 seg48In0AccY107
    linear_combination r2290
  have ha1 : rho 35048 * seg48In0AccX107 rho = rho 35050 := by
    unfold seg48In0AccX107
    linear_combination r2291
  have ha2 : rho 35047 * seg48In0AccY107 rho = rho 35051 := by
    unfold seg48In0AccY107
    linear_combination r2292
  have ha3 : 3021 * rho 35050 * rho 35051 = rho 35052 := by
    linear_combination r2293
  have ha4 : rho 35053 * (1 + rho 35052) = rho 35050 + rho 35051 := by
    linear_combination r2294
  have ha5 : rho 35054 * (1 - rho 35052) = rho 35049 - rho 35050 - rho 35051 := by
    linear_combination r2295
  have haddx :
      rho 35053 * (1 + 3021 * (rho 35048 * seg48In0AccX107 rho) * (rho 35047 * seg48In0AccY107 rho)) =
        rho 35048 * seg48In0AccX107 rho + rho 35047 * seg48In0AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35054 * (1 - 3021 * (rho 35048 * seg48In0AccX107 rho) * (rho 35047 * seg48In0AccY107 rho)) =
        (-1) * (rho 35048 * seg48In0AccX107 rho) - rho 35047 * seg48In0AccY107 rho +
          (seg48In0AccY107 rho - seg48In0AccX107 rho * (-1)) * (rho 35047 + rho 35048) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35054 * (1 - rho 35052) = rho 35049 - rho 35050 - rho 35051 := ha5
      _ = (-1) * rho 35050 - rho 35051 + (seg48In0AccY107 rho - seg48In0AccX107 rho * (-1)) *
          (rho 35047 + rho 35048) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX108 rho = seg48In0AccX107 rho - Bool.toZMod bit * (seg48In0AccX107 rho - rho 35053) := by
    have hd : rho 35055 = Bool.toZMod bit * (rho 35053 - seg48In0AccX107 rho) := by
      rw [← hbit]
      unfold seg48In0AccX107
      linear_combination -r2296
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY108 rho = seg48In0AccY107 rho - Bool.toZMod bit * (seg48In0AccY107 rho - rho 35054) := by
    have hd : rho 35056 = Bool.toZMod bit * (rho 35054 - seg48In0AccY107 rho) := by
      rw [← hbit]
      unfold seg48In0AccY107
      linear_combination -r2297
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35047 * rho 35048 = rho 35057 := by linear_combination r2298
  have hd1 : rho 35047 * rho 35047 = rho 35058 := by linear_combination r2299
  have hd2 : rho 35048 * rho 35048 = rho 35059 := by linear_combination r2300
  have hd3 : rho 35060 * (rho 35048 * rho 35048 + rho 35047 * rho 35047 * (-1)) =
      2 * (rho 35047 * rho 35048) := by
    rw [hd0, hd1, hd2]
    linear_combination r2301
  have hd4 : rho 35061 * (2 - (rho 35048 * rho 35048 + rho 35047 * rho 35047 * (-1))) =
      rho 35048 * rho 35048 - rho 35047 * rho 35047 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2302
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX107 rho, seg48In0AccY107 rho⟩ ⟨rho 35047, rho 35048⟩
    ⟨rho 35053, rho 35054⟩ ⟨seg48In0AccX108 rho, seg48In0AccY108 rho⟩ ⟨rho 35060, rho 35061⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2303 rho ∧ Seg48.relationRow2304 rho ∧ Seg48.relationRow2305 rho ∧ Seg48.relationRow2306 rho ∧ Seg48.relationRow2307 rho ∧ Seg48.relationRow2308 rho ∧ Seg48.relationRow2309 rho ∧ Seg48.relationRow2310 rho ∧ Seg48.relationRow2311 rho ∧ Seg48.relationRow2312 rho ∧ Seg48.relationRow2313 rho ∧ Seg48.relationRow2314 rho ∧ Seg48.relationRow2315 rho := by
  unfold Seg48.relation at h

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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, _, _, _, _⟩

  exact ⟨r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315⟩

theorem seg48In0_rung108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33644 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX108 rho, seg48In0AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35060, rho 35061⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX108 rho, seg48In0AccY108 rho⟩ ⟨rho 35060, rho 35061⟩
        ⟨seg48In0AccX109 rho, seg48In0AccY109 rho⟩ ⟨rho 35073, rho 35074⟩ := by
  obtain ⟨r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315⟩ := seg48In0_rows108 rho h
  unfold Seg48.relationRow2303 at r2303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2303

  unfold Seg48.relationRow2304 at r2304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2304

  unfold Seg48.relationRow2305 at r2305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2305

  unfold Seg48.relationRow2306 at r2306

  unfold Seg48.relationRow2307 at r2307

  unfold Seg48.relationRow2308 at r2308

  unfold Seg48.relationRow2309 at r2309

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2309

  unfold Seg48.relationRow2310 at r2310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2310

  unfold Seg48.relationRow2311 at r2311

  unfold Seg48.relationRow2312 at r2312

  unfold Seg48.relationRow2313 at r2313

  unfold Seg48.relationRow2314 at r2314

  unfold Seg48.relationRow2315 at r2315

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX109 rho = seg48In0AccX108 rho + rho 35068 := by
    unfold seg48In0AccX109 seg48In0AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 108]

    ring

  have hnexty : seg48In0AccY109 rho = seg48In0AccY108 rho + rho 35069 := by
    unfold seg48In0AccY109 seg48In0AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 108]

    ring

  have ha0 : (rho 35060 + rho 35061) * (seg48In0AccX108 rho + seg48In0AccY108 rho) = rho 35062 := by
    unfold seg48In0AccX108 seg48In0AccY108
    linear_combination r2303
  have ha1 : rho 35061 * seg48In0AccX108 rho = rho 35063 := by
    unfold seg48In0AccX108
    linear_combination r2304
  have ha2 : rho 35060 * seg48In0AccY108 rho = rho 35064 := by
    unfold seg48In0AccY108
    linear_combination r2305
  have ha3 : 3021 * rho 35063 * rho 35064 = rho 35065 := by
    linear_combination r2306
  have ha4 : rho 35066 * (1 + rho 35065) = rho 35063 + rho 35064 := by
    linear_combination r2307
  have ha5 : rho 35067 * (1 - rho 35065) = rho 35062 - rho 35063 - rho 35064 := by
    linear_combination r2308
  have haddx :
      rho 35066 * (1 + 3021 * (rho 35061 * seg48In0AccX108 rho) * (rho 35060 * seg48In0AccY108 rho)) =
        rho 35061 * seg48In0AccX108 rho + rho 35060 * seg48In0AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35067 * (1 - 3021 * (rho 35061 * seg48In0AccX108 rho) * (rho 35060 * seg48In0AccY108 rho)) =
        (-1) * (rho 35061 * seg48In0AccX108 rho) - rho 35060 * seg48In0AccY108 rho +
          (seg48In0AccY108 rho - seg48In0AccX108 rho * (-1)) * (rho 35060 + rho 35061) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35067 * (1 - rho 35065) = rho 35062 - rho 35063 - rho 35064 := ha5
      _ = (-1) * rho 35063 - rho 35064 + (seg48In0AccY108 rho - seg48In0AccX108 rho * (-1)) *
          (rho 35060 + rho 35061) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX109 rho = seg48In0AccX108 rho - Bool.toZMod bit * (seg48In0AccX108 rho - rho 35066) := by
    have hd : rho 35068 = Bool.toZMod bit * (rho 35066 - seg48In0AccX108 rho) := by
      rw [← hbit]
      unfold seg48In0AccX108
      linear_combination -r2309
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY109 rho = seg48In0AccY108 rho - Bool.toZMod bit * (seg48In0AccY108 rho - rho 35067) := by
    have hd : rho 35069 = Bool.toZMod bit * (rho 35067 - seg48In0AccY108 rho) := by
      rw [← hbit]
      unfold seg48In0AccY108
      linear_combination -r2310
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35060 * rho 35061 = rho 35070 := by linear_combination r2311
  have hd1 : rho 35060 * rho 35060 = rho 35071 := by linear_combination r2312
  have hd2 : rho 35061 * rho 35061 = rho 35072 := by linear_combination r2313
  have hd3 : rho 35073 * (rho 35061 * rho 35061 + rho 35060 * rho 35060 * (-1)) =
      2 * (rho 35060 * rho 35061) := by
    rw [hd0, hd1, hd2]
    linear_combination r2314
  have hd4 : rho 35074 * (2 - (rho 35061 * rho 35061 + rho 35060 * rho 35060 * (-1))) =
      rho 35061 * rho 35061 - rho 35060 * rho 35060 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2315
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX108 rho, seg48In0AccY108 rho⟩ ⟨rho 35060, rho 35061⟩
    ⟨rho 35066, rho 35067⟩ ⟨seg48In0AccX109 rho, seg48In0AccY109 rho⟩ ⟨rho 35073, rho 35074⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2316 rho ∧ Seg48.relationRow2317 rho ∧ Seg48.relationRow2318 rho ∧ Seg48.relationRow2319 rho ∧ Seg48.relationRow2320 rho ∧ Seg48.relationRow2321 rho ∧ Seg48.relationRow2322 rho ∧ Seg48.relationRow2323 rho ∧ Seg48.relationRow2324 rho ∧ Seg48.relationRow2325 rho ∧ Seg48.relationRow2326 rho ∧ Seg48.relationRow2327 rho ∧ Seg48.relationRow2328 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p28, p29,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2316, r2317, r2318, r2319⟩

  unfold Seg48.relationPart29 at p29

  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2316, r2317, r2318, r2319, r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328⟩

theorem seg48In0_rung109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33645 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX109 rho, seg48In0AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35073, rho 35074⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX109 rho, seg48In0AccY109 rho⟩ ⟨rho 35073, rho 35074⟩
        ⟨seg48In0AccX110 rho, seg48In0AccY110 rho⟩ ⟨rho 35086, rho 35087⟩ := by
  obtain ⟨r2316, r2317, r2318, r2319, r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328⟩ := seg48In0_rows109 rho h
  unfold Seg48.relationRow2316 at r2316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2316

  unfold Seg48.relationRow2317 at r2317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2317

  unfold Seg48.relationRow2318 at r2318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2318

  unfold Seg48.relationRow2319 at r2319

  unfold Seg48.relationRow2320 at r2320

  unfold Seg48.relationRow2321 at r2321

  unfold Seg48.relationRow2322 at r2322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2322

  unfold Seg48.relationRow2323 at r2323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2323

  unfold Seg48.relationRow2324 at r2324

  unfold Seg48.relationRow2325 at r2325

  unfold Seg48.relationRow2326 at r2326

  unfold Seg48.relationRow2327 at r2327

  unfold Seg48.relationRow2328 at r2328

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX110 rho = seg48In0AccX109 rho + rho 35081 := by
    unfold seg48In0AccX110 seg48In0AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 109]

    ring

  have hnexty : seg48In0AccY110 rho = seg48In0AccY109 rho + rho 35082 := by
    unfold seg48In0AccY110 seg48In0AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 109]

    ring

  have ha0 : (rho 35073 + rho 35074) * (seg48In0AccX109 rho + seg48In0AccY109 rho) = rho 35075 := by
    unfold seg48In0AccX109 seg48In0AccY109
    linear_combination r2316
  have ha1 : rho 35074 * seg48In0AccX109 rho = rho 35076 := by
    unfold seg48In0AccX109
    linear_combination r2317
  have ha2 : rho 35073 * seg48In0AccY109 rho = rho 35077 := by
    unfold seg48In0AccY109
    linear_combination r2318
  have ha3 : 3021 * rho 35076 * rho 35077 = rho 35078 := by
    linear_combination r2319
  have ha4 : rho 35079 * (1 + rho 35078) = rho 35076 + rho 35077 := by
    linear_combination r2320
  have ha5 : rho 35080 * (1 - rho 35078) = rho 35075 - rho 35076 - rho 35077 := by
    linear_combination r2321
  have haddx :
      rho 35079 * (1 + 3021 * (rho 35074 * seg48In0AccX109 rho) * (rho 35073 * seg48In0AccY109 rho)) =
        rho 35074 * seg48In0AccX109 rho + rho 35073 * seg48In0AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35080 * (1 - 3021 * (rho 35074 * seg48In0AccX109 rho) * (rho 35073 * seg48In0AccY109 rho)) =
        (-1) * (rho 35074 * seg48In0AccX109 rho) - rho 35073 * seg48In0AccY109 rho +
          (seg48In0AccY109 rho - seg48In0AccX109 rho * (-1)) * (rho 35073 + rho 35074) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35080 * (1 - rho 35078) = rho 35075 - rho 35076 - rho 35077 := ha5
      _ = (-1) * rho 35076 - rho 35077 + (seg48In0AccY109 rho - seg48In0AccX109 rho * (-1)) *
          (rho 35073 + rho 35074) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX110 rho = seg48In0AccX109 rho - Bool.toZMod bit * (seg48In0AccX109 rho - rho 35079) := by
    have hd : rho 35081 = Bool.toZMod bit * (rho 35079 - seg48In0AccX109 rho) := by
      rw [← hbit]
      unfold seg48In0AccX109
      linear_combination -r2322
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY110 rho = seg48In0AccY109 rho - Bool.toZMod bit * (seg48In0AccY109 rho - rho 35080) := by
    have hd : rho 35082 = Bool.toZMod bit * (rho 35080 - seg48In0AccY109 rho) := by
      rw [← hbit]
      unfold seg48In0AccY109
      linear_combination -r2323
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35073 * rho 35074 = rho 35083 := by linear_combination r2324
  have hd1 : rho 35073 * rho 35073 = rho 35084 := by linear_combination r2325
  have hd2 : rho 35074 * rho 35074 = rho 35085 := by linear_combination r2326
  have hd3 : rho 35086 * (rho 35074 * rho 35074 + rho 35073 * rho 35073 * (-1)) =
      2 * (rho 35073 * rho 35074) := by
    rw [hd0, hd1, hd2]
    linear_combination r2327
  have hd4 : rho 35087 * (2 - (rho 35074 * rho 35074 + rho 35073 * rho 35073 * (-1))) =
      rho 35074 * rho 35074 - rho 35073 * rho 35073 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2328
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX109 rho, seg48In0AccY109 rho⟩ ⟨rho 35073, rho 35074⟩
    ⟨rho 35079, rho 35080⟩ ⟨seg48In0AccX110 rho, seg48In0AccY110 rho⟩ ⟨rho 35086, rho 35087⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c9 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg48In0_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg48In0_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg48In0_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg48In0_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg48In0_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg48In0_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg48In0_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg48In0_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg48In0_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg48In0_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
