import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2186 rho ∧ Seg52.relationRow2187 rho ∧ Seg52.relationRow2188 rho ∧ Seg52.relationRow2189 rho ∧ Seg52.relationRow2190 rho ∧ Seg52.relationRow2191 rho ∧ Seg52.relationRow2192 rho ∧ Seg52.relationRow2193 rho ∧ Seg52.relationRow2194 rho ∧ Seg52.relationRow2195 rho ∧ Seg52.relationRow2196 rho ∧ Seg52.relationRow2197 rho ∧ Seg52.relationRow2198 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198⟩

theorem seg52In0_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45267 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46575, rho 46576⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 46575, rho 46576⟩
        ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 46588, rho 46589⟩ := by
  obtain ⟨r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198⟩ := seg52In0_rows99 rho h
  unfold Seg52.relationRow2186 at r2186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2186

  unfold Seg52.relationRow2187 at r2187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2187

  unfold Seg52.relationRow2188 at r2188

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2188

  unfold Seg52.relationRow2189 at r2189

  unfold Seg52.relationRow2190 at r2190

  unfold Seg52.relationRow2191 at r2191

  unfold Seg52.relationRow2192 at r2192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2192

  unfold Seg52.relationRow2193 at r2193

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2193

  unfold Seg52.relationRow2194 at r2194

  unfold Seg52.relationRow2195 at r2195

  unfold Seg52.relationRow2196 at r2196

  unfold Seg52.relationRow2197 at r2197

  unfold Seg52.relationRow2198 at r2198

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX100 rho = seg52In0AccX99 rho + rho 46583 := by
    unfold seg52In0AccX100 seg52In0AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 99]

    ring

  have hnexty : seg52In0AccY100 rho = seg52In0AccY99 rho + rho 46584 := by
    unfold seg52In0AccY100 seg52In0AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 99]

    ring

  have ha0 : (rho 46575 + rho 46576) * (seg52In0AccX99 rho + seg52In0AccY99 rho) = rho 46577 := by
    unfold seg52In0AccX99 seg52In0AccY99
    linear_combination r2186
  have ha1 : rho 46576 * seg52In0AccX99 rho = rho 46578 := by
    unfold seg52In0AccX99
    linear_combination r2187
  have ha2 : rho 46575 * seg52In0AccY99 rho = rho 46579 := by
    unfold seg52In0AccY99
    linear_combination r2188
  have ha3 : 3021 * rho 46578 * rho 46579 = rho 46580 := by
    linear_combination r2189
  have ha4 : rho 46581 * (1 + rho 46580) = rho 46578 + rho 46579 := by
    linear_combination r2190
  have ha5 : rho 46582 * (1 - rho 46580) = rho 46577 - rho 46578 - rho 46579 := by
    linear_combination r2191
  have haddx :
      rho 46581 * (1 + 3021 * (rho 46576 * seg52In0AccX99 rho) * (rho 46575 * seg52In0AccY99 rho)) =
        rho 46576 * seg52In0AccX99 rho + rho 46575 * seg52In0AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46582 * (1 - 3021 * (rho 46576 * seg52In0AccX99 rho) * (rho 46575 * seg52In0AccY99 rho)) =
        (-1) * (rho 46576 * seg52In0AccX99 rho) - rho 46575 * seg52In0AccY99 rho +
          (seg52In0AccY99 rho - seg52In0AccX99 rho * (-1)) * (rho 46575 + rho 46576) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46582 * (1 - rho 46580) = rho 46577 - rho 46578 - rho 46579 := ha5
      _ = (-1) * rho 46578 - rho 46579 + (seg52In0AccY99 rho - seg52In0AccX99 rho * (-1)) *
          (rho 46575 + rho 46576) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX100 rho = seg52In0AccX99 rho - Bool.toZMod bit * (seg52In0AccX99 rho - rho 46581) := by
    have hd : rho 46583 = Bool.toZMod bit * (rho 46581 - seg52In0AccX99 rho) := by
      rw [← hbit]
      unfold seg52In0AccX99
      linear_combination -r2192
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY100 rho = seg52In0AccY99 rho - Bool.toZMod bit * (seg52In0AccY99 rho - rho 46582) := by
    have hd : rho 46584 = Bool.toZMod bit * (rho 46582 - seg52In0AccY99 rho) := by
      rw [← hbit]
      unfold seg52In0AccY99
      linear_combination -r2193
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46575 * rho 46576 = rho 46585 := by linear_combination r2194
  have hd1 : rho 46575 * rho 46575 = rho 46586 := by linear_combination r2195
  have hd2 : rho 46576 * rho 46576 = rho 46587 := by linear_combination r2196
  have hd3 : rho 46588 * (rho 46576 * rho 46576 + rho 46575 * rho 46575 * (-1)) =
      2 * (rho 46575 * rho 46576) := by
    rw [hd0, hd1, hd2]
    linear_combination r2197
  have hd4 : rho 46589 * (2 - (rho 46576 * rho 46576 + rho 46575 * rho 46575 * (-1))) =
      rho 46576 * rho 46576 - rho 46575 * rho 46575 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2198
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX99 rho, seg52In0AccY99 rho⟩ ⟨rho 46575, rho 46576⟩
    ⟨rho 46581, rho 46582⟩ ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 46588, rho 46589⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2199 rho ∧ Seg52.relationRow2200 rho ∧ Seg52.relationRow2201 rho ∧ Seg52.relationRow2202 rho ∧ Seg52.relationRow2203 rho ∧ Seg52.relationRow2204 rho ∧ Seg52.relationRow2205 rho ∧ Seg52.relationRow2206 rho ∧ Seg52.relationRow2207 rho ∧ Seg52.relationRow2208 rho ∧ Seg52.relationRow2209 rho ∧ Seg52.relationRow2210 rho ∧ Seg52.relationRow2211 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211⟩

theorem seg52In0_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45268 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46588, rho 46589⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 46588, rho 46589⟩
        ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 46601, rho 46602⟩ := by
  obtain ⟨r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211⟩ := seg52In0_rows100 rho h
  unfold Seg52.relationRow2199 at r2199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2199

  unfold Seg52.relationRow2200 at r2200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2200

  unfold Seg52.relationRow2201 at r2201

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2201

  unfold Seg52.relationRow2202 at r2202

  unfold Seg52.relationRow2203 at r2203

  unfold Seg52.relationRow2204 at r2204

  unfold Seg52.relationRow2205 at r2205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2205

  unfold Seg52.relationRow2206 at r2206

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2206

  unfold Seg52.relationRow2207 at r2207

  unfold Seg52.relationRow2208 at r2208

  unfold Seg52.relationRow2209 at r2209

  unfold Seg52.relationRow2210 at r2210

  unfold Seg52.relationRow2211 at r2211

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX101 rho = seg52In0AccX100 rho + rho 46596 := by
    unfold seg52In0AccX101 seg52In0AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 100]

    ring

  have hnexty : seg52In0AccY101 rho = seg52In0AccY100 rho + rho 46597 := by
    unfold seg52In0AccY101 seg52In0AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 100]

    ring

  have ha0 : (rho 46588 + rho 46589) * (seg52In0AccX100 rho + seg52In0AccY100 rho) = rho 46590 := by
    unfold seg52In0AccX100 seg52In0AccY100
    linear_combination r2199
  have ha1 : rho 46589 * seg52In0AccX100 rho = rho 46591 := by
    unfold seg52In0AccX100
    linear_combination r2200
  have ha2 : rho 46588 * seg52In0AccY100 rho = rho 46592 := by
    unfold seg52In0AccY100
    linear_combination r2201
  have ha3 : 3021 * rho 46591 * rho 46592 = rho 46593 := by
    linear_combination r2202
  have ha4 : rho 46594 * (1 + rho 46593) = rho 46591 + rho 46592 := by
    linear_combination r2203
  have ha5 : rho 46595 * (1 - rho 46593) = rho 46590 - rho 46591 - rho 46592 := by
    linear_combination r2204
  have haddx :
      rho 46594 * (1 + 3021 * (rho 46589 * seg52In0AccX100 rho) * (rho 46588 * seg52In0AccY100 rho)) =
        rho 46589 * seg52In0AccX100 rho + rho 46588 * seg52In0AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46595 * (1 - 3021 * (rho 46589 * seg52In0AccX100 rho) * (rho 46588 * seg52In0AccY100 rho)) =
        (-1) * (rho 46589 * seg52In0AccX100 rho) - rho 46588 * seg52In0AccY100 rho +
          (seg52In0AccY100 rho - seg52In0AccX100 rho * (-1)) * (rho 46588 + rho 46589) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46595 * (1 - rho 46593) = rho 46590 - rho 46591 - rho 46592 := ha5
      _ = (-1) * rho 46591 - rho 46592 + (seg52In0AccY100 rho - seg52In0AccX100 rho * (-1)) *
          (rho 46588 + rho 46589) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX101 rho = seg52In0AccX100 rho - Bool.toZMod bit * (seg52In0AccX100 rho - rho 46594) := by
    have hd : rho 46596 = Bool.toZMod bit * (rho 46594 - seg52In0AccX100 rho) := by
      rw [← hbit]
      unfold seg52In0AccX100
      linear_combination -r2205
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY101 rho = seg52In0AccY100 rho - Bool.toZMod bit * (seg52In0AccY100 rho - rho 46595) := by
    have hd : rho 46597 = Bool.toZMod bit * (rho 46595 - seg52In0AccY100 rho) := by
      rw [← hbit]
      unfold seg52In0AccY100
      linear_combination -r2206
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46588 * rho 46589 = rho 46598 := by linear_combination r2207
  have hd1 : rho 46588 * rho 46588 = rho 46599 := by linear_combination r2208
  have hd2 : rho 46589 * rho 46589 = rho 46600 := by linear_combination r2209
  have hd3 : rho 46601 * (rho 46589 * rho 46589 + rho 46588 * rho 46588 * (-1)) =
      2 * (rho 46588 * rho 46589) := by
    rw [hd0, hd1, hd2]
    linear_combination r2210
  have hd4 : rho 46602 * (2 - (rho 46589 * rho 46589 + rho 46588 * rho 46588 * (-1))) =
      rho 46589 * rho 46589 - rho 46588 * rho 46588 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2211
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX100 rho, seg52In0AccY100 rho⟩ ⟨rho 46588, rho 46589⟩
    ⟨rho 46594, rho 46595⟩ ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 46601, rho 46602⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2212 rho ∧ Seg52.relationRow2213 rho ∧ Seg52.relationRow2214 rho ∧ Seg52.relationRow2215 rho ∧ Seg52.relationRow2216 rho ∧ Seg52.relationRow2217 rho ∧ Seg52.relationRow2218 rho ∧ Seg52.relationRow2219 rho ∧ Seg52.relationRow2220 rho ∧ Seg52.relationRow2221 rho ∧ Seg52.relationRow2222 rho ∧ Seg52.relationRow2223 rho ∧ Seg52.relationRow2224 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224⟩

theorem seg52In0_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45269 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46601, rho 46602⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 46601, rho 46602⟩
        ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 46614, rho 46615⟩ := by
  obtain ⟨r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224⟩ := seg52In0_rows101 rho h
  unfold Seg52.relationRow2212 at r2212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2212

  unfold Seg52.relationRow2213 at r2213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2213

  unfold Seg52.relationRow2214 at r2214

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2214

  unfold Seg52.relationRow2215 at r2215

  unfold Seg52.relationRow2216 at r2216

  unfold Seg52.relationRow2217 at r2217

  unfold Seg52.relationRow2218 at r2218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2218

  unfold Seg52.relationRow2219 at r2219

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2219

  unfold Seg52.relationRow2220 at r2220

  unfold Seg52.relationRow2221 at r2221

  unfold Seg52.relationRow2222 at r2222

  unfold Seg52.relationRow2223 at r2223

  unfold Seg52.relationRow2224 at r2224

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX102 rho = seg52In0AccX101 rho + rho 46609 := by
    unfold seg52In0AccX102 seg52In0AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 101]

    ring

  have hnexty : seg52In0AccY102 rho = seg52In0AccY101 rho + rho 46610 := by
    unfold seg52In0AccY102 seg52In0AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 101]

    ring

  have ha0 : (rho 46601 + rho 46602) * (seg52In0AccX101 rho + seg52In0AccY101 rho) = rho 46603 := by
    unfold seg52In0AccX101 seg52In0AccY101
    linear_combination r2212
  have ha1 : rho 46602 * seg52In0AccX101 rho = rho 46604 := by
    unfold seg52In0AccX101
    linear_combination r2213
  have ha2 : rho 46601 * seg52In0AccY101 rho = rho 46605 := by
    unfold seg52In0AccY101
    linear_combination r2214
  have ha3 : 3021 * rho 46604 * rho 46605 = rho 46606 := by
    linear_combination r2215
  have ha4 : rho 46607 * (1 + rho 46606) = rho 46604 + rho 46605 := by
    linear_combination r2216
  have ha5 : rho 46608 * (1 - rho 46606) = rho 46603 - rho 46604 - rho 46605 := by
    linear_combination r2217
  have haddx :
      rho 46607 * (1 + 3021 * (rho 46602 * seg52In0AccX101 rho) * (rho 46601 * seg52In0AccY101 rho)) =
        rho 46602 * seg52In0AccX101 rho + rho 46601 * seg52In0AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46608 * (1 - 3021 * (rho 46602 * seg52In0AccX101 rho) * (rho 46601 * seg52In0AccY101 rho)) =
        (-1) * (rho 46602 * seg52In0AccX101 rho) - rho 46601 * seg52In0AccY101 rho +
          (seg52In0AccY101 rho - seg52In0AccX101 rho * (-1)) * (rho 46601 + rho 46602) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46608 * (1 - rho 46606) = rho 46603 - rho 46604 - rho 46605 := ha5
      _ = (-1) * rho 46604 - rho 46605 + (seg52In0AccY101 rho - seg52In0AccX101 rho * (-1)) *
          (rho 46601 + rho 46602) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX102 rho = seg52In0AccX101 rho - Bool.toZMod bit * (seg52In0AccX101 rho - rho 46607) := by
    have hd : rho 46609 = Bool.toZMod bit * (rho 46607 - seg52In0AccX101 rho) := by
      rw [← hbit]
      unfold seg52In0AccX101
      linear_combination -r2218
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY102 rho = seg52In0AccY101 rho - Bool.toZMod bit * (seg52In0AccY101 rho - rho 46608) := by
    have hd : rho 46610 = Bool.toZMod bit * (rho 46608 - seg52In0AccY101 rho) := by
      rw [← hbit]
      unfold seg52In0AccY101
      linear_combination -r2219
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46601 * rho 46602 = rho 46611 := by linear_combination r2220
  have hd1 : rho 46601 * rho 46601 = rho 46612 := by linear_combination r2221
  have hd2 : rho 46602 * rho 46602 = rho 46613 := by linear_combination r2222
  have hd3 : rho 46614 * (rho 46602 * rho 46602 + rho 46601 * rho 46601 * (-1)) =
      2 * (rho 46601 * rho 46602) := by
    rw [hd0, hd1, hd2]
    linear_combination r2223
  have hd4 : rho 46615 * (2 - (rho 46602 * rho 46602 + rho 46601 * rho 46601 * (-1))) =
      rho 46602 * rho 46602 - rho 46601 * rho 46601 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2224
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX101 rho, seg52In0AccY101 rho⟩ ⟨rho 46601, rho 46602⟩
    ⟨rho 46607, rho 46608⟩ ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 46614, rho 46615⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2225 rho ∧ Seg52.relationRow2226 rho ∧ Seg52.relationRow2227 rho ∧ Seg52.relationRow2228 rho ∧ Seg52.relationRow2229 rho ∧ Seg52.relationRow2230 rho ∧ Seg52.relationRow2231 rho ∧ Seg52.relationRow2232 rho ∧ Seg52.relationRow2233 rho ∧ Seg52.relationRow2234 rho ∧ Seg52.relationRow2235 rho ∧ Seg52.relationRow2236 rho ∧ Seg52.relationRow2237 rho := by
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

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, _, _⟩

  exact ⟨r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237⟩

theorem seg52In0_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45270 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46614, rho 46615⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 46614, rho 46615⟩
        ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 46627, rho 46628⟩ := by
  obtain ⟨r2225, r2226, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237⟩ := seg52In0_rows102 rho h
  unfold Seg52.relationRow2225 at r2225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2225

  unfold Seg52.relationRow2226 at r2226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2226

  unfold Seg52.relationRow2227 at r2227

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2227

  unfold Seg52.relationRow2228 at r2228

  unfold Seg52.relationRow2229 at r2229

  unfold Seg52.relationRow2230 at r2230

  unfold Seg52.relationRow2231 at r2231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2231

  unfold Seg52.relationRow2232 at r2232

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2232

  unfold Seg52.relationRow2233 at r2233

  unfold Seg52.relationRow2234 at r2234

  unfold Seg52.relationRow2235 at r2235

  unfold Seg52.relationRow2236 at r2236

  unfold Seg52.relationRow2237 at r2237

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX103 rho = seg52In0AccX102 rho + rho 46622 := by
    unfold seg52In0AccX103 seg52In0AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 102]

    ring

  have hnexty : seg52In0AccY103 rho = seg52In0AccY102 rho + rho 46623 := by
    unfold seg52In0AccY103 seg52In0AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 102]

    ring

  have ha0 : (rho 46614 + rho 46615) * (seg52In0AccX102 rho + seg52In0AccY102 rho) = rho 46616 := by
    unfold seg52In0AccX102 seg52In0AccY102
    linear_combination r2225
  have ha1 : rho 46615 * seg52In0AccX102 rho = rho 46617 := by
    unfold seg52In0AccX102
    linear_combination r2226
  have ha2 : rho 46614 * seg52In0AccY102 rho = rho 46618 := by
    unfold seg52In0AccY102
    linear_combination r2227
  have ha3 : 3021 * rho 46617 * rho 46618 = rho 46619 := by
    linear_combination r2228
  have ha4 : rho 46620 * (1 + rho 46619) = rho 46617 + rho 46618 := by
    linear_combination r2229
  have ha5 : rho 46621 * (1 - rho 46619) = rho 46616 - rho 46617 - rho 46618 := by
    linear_combination r2230
  have haddx :
      rho 46620 * (1 + 3021 * (rho 46615 * seg52In0AccX102 rho) * (rho 46614 * seg52In0AccY102 rho)) =
        rho 46615 * seg52In0AccX102 rho + rho 46614 * seg52In0AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46621 * (1 - 3021 * (rho 46615 * seg52In0AccX102 rho) * (rho 46614 * seg52In0AccY102 rho)) =
        (-1) * (rho 46615 * seg52In0AccX102 rho) - rho 46614 * seg52In0AccY102 rho +
          (seg52In0AccY102 rho - seg52In0AccX102 rho * (-1)) * (rho 46614 + rho 46615) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46621 * (1 - rho 46619) = rho 46616 - rho 46617 - rho 46618 := ha5
      _ = (-1) * rho 46617 - rho 46618 + (seg52In0AccY102 rho - seg52In0AccX102 rho * (-1)) *
          (rho 46614 + rho 46615) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX103 rho = seg52In0AccX102 rho - Bool.toZMod bit * (seg52In0AccX102 rho - rho 46620) := by
    have hd : rho 46622 = Bool.toZMod bit * (rho 46620 - seg52In0AccX102 rho) := by
      rw [← hbit]
      unfold seg52In0AccX102
      linear_combination -r2231
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY103 rho = seg52In0AccY102 rho - Bool.toZMod bit * (seg52In0AccY102 rho - rho 46621) := by
    have hd : rho 46623 = Bool.toZMod bit * (rho 46621 - seg52In0AccY102 rho) := by
      rw [← hbit]
      unfold seg52In0AccY102
      linear_combination -r2232
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46614 * rho 46615 = rho 46624 := by linear_combination r2233
  have hd1 : rho 46614 * rho 46614 = rho 46625 := by linear_combination r2234
  have hd2 : rho 46615 * rho 46615 = rho 46626 := by linear_combination r2235
  have hd3 : rho 46627 * (rho 46615 * rho 46615 + rho 46614 * rho 46614 * (-1)) =
      2 * (rho 46614 * rho 46615) := by
    rw [hd0, hd1, hd2]
    linear_combination r2236
  have hd4 : rho 46628 * (2 - (rho 46615 * rho 46615 + rho 46614 * rho 46614 * (-1))) =
      rho 46615 * rho 46615 - rho 46614 * rho 46614 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2237
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX102 rho, seg52In0AccY102 rho⟩ ⟨rho 46614, rho 46615⟩
    ⟨rho 46620, rho 46621⟩ ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 46627, rho 46628⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2238 rho ∧ Seg52.relationRow2239 rho ∧ Seg52.relationRow2240 rho ∧ Seg52.relationRow2241 rho ∧ Seg52.relationRow2242 rho ∧ Seg52.relationRow2243 rho ∧ Seg52.relationRow2244 rho ∧ Seg52.relationRow2245 rho ∧ Seg52.relationRow2246 rho ∧ Seg52.relationRow2247 rho ∧ Seg52.relationRow2248 rho ∧ Seg52.relationRow2249 rho ∧ Seg52.relationRow2250 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart27 at p27

  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2238, r2239⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2238, r2239, r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250⟩

theorem seg52In0_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45271 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46627, rho 46628⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 46627, rho 46628⟩
        ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 46640, rho 46641⟩ := by
  obtain ⟨r2238, r2239, r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250⟩ := seg52In0_rows103 rho h
  unfold Seg52.relationRow2238 at r2238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2238

  unfold Seg52.relationRow2239 at r2239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2239

  unfold Seg52.relationRow2240 at r2240

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2240

  unfold Seg52.relationRow2241 at r2241

  unfold Seg52.relationRow2242 at r2242

  unfold Seg52.relationRow2243 at r2243

  unfold Seg52.relationRow2244 at r2244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2244

  unfold Seg52.relationRow2245 at r2245

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2245

  unfold Seg52.relationRow2246 at r2246

  unfold Seg52.relationRow2247 at r2247

  unfold Seg52.relationRow2248 at r2248

  unfold Seg52.relationRow2249 at r2249

  unfold Seg52.relationRow2250 at r2250

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX104 rho = seg52In0AccX103 rho + rho 46635 := by
    unfold seg52In0AccX104 seg52In0AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 103]

    ring

  have hnexty : seg52In0AccY104 rho = seg52In0AccY103 rho + rho 46636 := by
    unfold seg52In0AccY104 seg52In0AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 103]

    ring

  have ha0 : (rho 46627 + rho 46628) * (seg52In0AccX103 rho + seg52In0AccY103 rho) = rho 46629 := by
    unfold seg52In0AccX103 seg52In0AccY103
    linear_combination r2238
  have ha1 : rho 46628 * seg52In0AccX103 rho = rho 46630 := by
    unfold seg52In0AccX103
    linear_combination r2239
  have ha2 : rho 46627 * seg52In0AccY103 rho = rho 46631 := by
    unfold seg52In0AccY103
    linear_combination r2240
  have ha3 : 3021 * rho 46630 * rho 46631 = rho 46632 := by
    linear_combination r2241
  have ha4 : rho 46633 * (1 + rho 46632) = rho 46630 + rho 46631 := by
    linear_combination r2242
  have ha5 : rho 46634 * (1 - rho 46632) = rho 46629 - rho 46630 - rho 46631 := by
    linear_combination r2243
  have haddx :
      rho 46633 * (1 + 3021 * (rho 46628 * seg52In0AccX103 rho) * (rho 46627 * seg52In0AccY103 rho)) =
        rho 46628 * seg52In0AccX103 rho + rho 46627 * seg52In0AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46634 * (1 - 3021 * (rho 46628 * seg52In0AccX103 rho) * (rho 46627 * seg52In0AccY103 rho)) =
        (-1) * (rho 46628 * seg52In0AccX103 rho) - rho 46627 * seg52In0AccY103 rho +
          (seg52In0AccY103 rho - seg52In0AccX103 rho * (-1)) * (rho 46627 + rho 46628) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46634 * (1 - rho 46632) = rho 46629 - rho 46630 - rho 46631 := ha5
      _ = (-1) * rho 46630 - rho 46631 + (seg52In0AccY103 rho - seg52In0AccX103 rho * (-1)) *
          (rho 46627 + rho 46628) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX104 rho = seg52In0AccX103 rho - Bool.toZMod bit * (seg52In0AccX103 rho - rho 46633) := by
    have hd : rho 46635 = Bool.toZMod bit * (rho 46633 - seg52In0AccX103 rho) := by
      rw [← hbit]
      unfold seg52In0AccX103
      linear_combination -r2244
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY104 rho = seg52In0AccY103 rho - Bool.toZMod bit * (seg52In0AccY103 rho - rho 46634) := by
    have hd : rho 46636 = Bool.toZMod bit * (rho 46634 - seg52In0AccY103 rho) := by
      rw [← hbit]
      unfold seg52In0AccY103
      linear_combination -r2245
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46627 * rho 46628 = rho 46637 := by linear_combination r2246
  have hd1 : rho 46627 * rho 46627 = rho 46638 := by linear_combination r2247
  have hd2 : rho 46628 * rho 46628 = rho 46639 := by linear_combination r2248
  have hd3 : rho 46640 * (rho 46628 * rho 46628 + rho 46627 * rho 46627 * (-1)) =
      2 * (rho 46627 * rho 46628) := by
    rw [hd0, hd1, hd2]
    linear_combination r2249
  have hd4 : rho 46641 * (2 - (rho 46628 * rho 46628 + rho 46627 * rho 46627 * (-1))) =
      rho 46628 * rho 46628 - rho 46627 * rho 46627 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2250
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX103 rho, seg52In0AccY103 rho⟩ ⟨rho 46627, rho 46628⟩
    ⟨rho 46633, rho 46634⟩ ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 46640, rho 46641⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2251 rho ∧ Seg52.relationRow2252 rho ∧ Seg52.relationRow2253 rho ∧ Seg52.relationRow2254 rho ∧ Seg52.relationRow2255 rho ∧ Seg52.relationRow2256 rho ∧ Seg52.relationRow2257 rho ∧ Seg52.relationRow2258 rho ∧ Seg52.relationRow2259 rho ∧ Seg52.relationRow2260 rho ∧ Seg52.relationRow2261 rho ∧ Seg52.relationRow2262 rho ∧ Seg52.relationRow2263 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263⟩

theorem seg52In0_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45272 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46640, rho 46641⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 46640, rho 46641⟩
        ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 46653, rho 46654⟩ := by
  obtain ⟨r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263⟩ := seg52In0_rows104 rho h
  unfold Seg52.relationRow2251 at r2251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2251

  unfold Seg52.relationRow2252 at r2252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2252

  unfold Seg52.relationRow2253 at r2253

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2253

  unfold Seg52.relationRow2254 at r2254

  unfold Seg52.relationRow2255 at r2255

  unfold Seg52.relationRow2256 at r2256

  unfold Seg52.relationRow2257 at r2257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2257

  unfold Seg52.relationRow2258 at r2258

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2258

  unfold Seg52.relationRow2259 at r2259

  unfold Seg52.relationRow2260 at r2260

  unfold Seg52.relationRow2261 at r2261

  unfold Seg52.relationRow2262 at r2262

  unfold Seg52.relationRow2263 at r2263

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX105 rho = seg52In0AccX104 rho + rho 46648 := by
    unfold seg52In0AccX105 seg52In0AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 104]

    ring

  have hnexty : seg52In0AccY105 rho = seg52In0AccY104 rho + rho 46649 := by
    unfold seg52In0AccY105 seg52In0AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 104]

    ring

  have ha0 : (rho 46640 + rho 46641) * (seg52In0AccX104 rho + seg52In0AccY104 rho) = rho 46642 := by
    unfold seg52In0AccX104 seg52In0AccY104
    linear_combination r2251
  have ha1 : rho 46641 * seg52In0AccX104 rho = rho 46643 := by
    unfold seg52In0AccX104
    linear_combination r2252
  have ha2 : rho 46640 * seg52In0AccY104 rho = rho 46644 := by
    unfold seg52In0AccY104
    linear_combination r2253
  have ha3 : 3021 * rho 46643 * rho 46644 = rho 46645 := by
    linear_combination r2254
  have ha4 : rho 46646 * (1 + rho 46645) = rho 46643 + rho 46644 := by
    linear_combination r2255
  have ha5 : rho 46647 * (1 - rho 46645) = rho 46642 - rho 46643 - rho 46644 := by
    linear_combination r2256
  have haddx :
      rho 46646 * (1 + 3021 * (rho 46641 * seg52In0AccX104 rho) * (rho 46640 * seg52In0AccY104 rho)) =
        rho 46641 * seg52In0AccX104 rho + rho 46640 * seg52In0AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46647 * (1 - 3021 * (rho 46641 * seg52In0AccX104 rho) * (rho 46640 * seg52In0AccY104 rho)) =
        (-1) * (rho 46641 * seg52In0AccX104 rho) - rho 46640 * seg52In0AccY104 rho +
          (seg52In0AccY104 rho - seg52In0AccX104 rho * (-1)) * (rho 46640 + rho 46641) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46647 * (1 - rho 46645) = rho 46642 - rho 46643 - rho 46644 := ha5
      _ = (-1) * rho 46643 - rho 46644 + (seg52In0AccY104 rho - seg52In0AccX104 rho * (-1)) *
          (rho 46640 + rho 46641) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX105 rho = seg52In0AccX104 rho - Bool.toZMod bit * (seg52In0AccX104 rho - rho 46646) := by
    have hd : rho 46648 = Bool.toZMod bit * (rho 46646 - seg52In0AccX104 rho) := by
      rw [← hbit]
      unfold seg52In0AccX104
      linear_combination -r2257
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY105 rho = seg52In0AccY104 rho - Bool.toZMod bit * (seg52In0AccY104 rho - rho 46647) := by
    have hd : rho 46649 = Bool.toZMod bit * (rho 46647 - seg52In0AccY104 rho) := by
      rw [← hbit]
      unfold seg52In0AccY104
      linear_combination -r2258
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46640 * rho 46641 = rho 46650 := by linear_combination r2259
  have hd1 : rho 46640 * rho 46640 = rho 46651 := by linear_combination r2260
  have hd2 : rho 46641 * rho 46641 = rho 46652 := by linear_combination r2261
  have hd3 : rho 46653 * (rho 46641 * rho 46641 + rho 46640 * rho 46640 * (-1)) =
      2 * (rho 46640 * rho 46641) := by
    rw [hd0, hd1, hd2]
    linear_combination r2262
  have hd4 : rho 46654 * (2 - (rho 46641 * rho 46641 + rho 46640 * rho 46640 * (-1))) =
      rho 46641 * rho 46641 - rho 46640 * rho 46640 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2263
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX104 rho, seg52In0AccY104 rho⟩ ⟨rho 46640, rho 46641⟩
    ⟨rho 46646, rho 46647⟩ ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 46653, rho 46654⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2264 rho ∧ Seg52.relationRow2265 rho ∧ Seg52.relationRow2266 rho ∧ Seg52.relationRow2267 rho ∧ Seg52.relationRow2268 rho ∧ Seg52.relationRow2269 rho ∧ Seg52.relationRow2270 rho ∧ Seg52.relationRow2271 rho ∧ Seg52.relationRow2272 rho ∧ Seg52.relationRow2273 rho ∧ Seg52.relationRow2274 rho ∧ Seg52.relationRow2275 rho ∧ Seg52.relationRow2276 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276⟩

theorem seg52In0_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45273 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46653, rho 46654⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 46653, rho 46654⟩
        ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 46666, rho 46667⟩ := by
  obtain ⟨r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, r2275, r2276⟩ := seg52In0_rows105 rho h
  unfold Seg52.relationRow2264 at r2264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2264

  unfold Seg52.relationRow2265 at r2265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2265

  unfold Seg52.relationRow2266 at r2266

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2266

  unfold Seg52.relationRow2267 at r2267

  unfold Seg52.relationRow2268 at r2268

  unfold Seg52.relationRow2269 at r2269

  unfold Seg52.relationRow2270 at r2270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2270

  unfold Seg52.relationRow2271 at r2271

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2271

  unfold Seg52.relationRow2272 at r2272

  unfold Seg52.relationRow2273 at r2273

  unfold Seg52.relationRow2274 at r2274

  unfold Seg52.relationRow2275 at r2275

  unfold Seg52.relationRow2276 at r2276

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX106 rho = seg52In0AccX105 rho + rho 46661 := by
    unfold seg52In0AccX106 seg52In0AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 105]

    ring

  have hnexty : seg52In0AccY106 rho = seg52In0AccY105 rho + rho 46662 := by
    unfold seg52In0AccY106 seg52In0AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 105]

    ring

  have ha0 : (rho 46653 + rho 46654) * (seg52In0AccX105 rho + seg52In0AccY105 rho) = rho 46655 := by
    unfold seg52In0AccX105 seg52In0AccY105
    linear_combination r2264
  have ha1 : rho 46654 * seg52In0AccX105 rho = rho 46656 := by
    unfold seg52In0AccX105
    linear_combination r2265
  have ha2 : rho 46653 * seg52In0AccY105 rho = rho 46657 := by
    unfold seg52In0AccY105
    linear_combination r2266
  have ha3 : 3021 * rho 46656 * rho 46657 = rho 46658 := by
    linear_combination r2267
  have ha4 : rho 46659 * (1 + rho 46658) = rho 46656 + rho 46657 := by
    linear_combination r2268
  have ha5 : rho 46660 * (1 - rho 46658) = rho 46655 - rho 46656 - rho 46657 := by
    linear_combination r2269
  have haddx :
      rho 46659 * (1 + 3021 * (rho 46654 * seg52In0AccX105 rho) * (rho 46653 * seg52In0AccY105 rho)) =
        rho 46654 * seg52In0AccX105 rho + rho 46653 * seg52In0AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46660 * (1 - 3021 * (rho 46654 * seg52In0AccX105 rho) * (rho 46653 * seg52In0AccY105 rho)) =
        (-1) * (rho 46654 * seg52In0AccX105 rho) - rho 46653 * seg52In0AccY105 rho +
          (seg52In0AccY105 rho - seg52In0AccX105 rho * (-1)) * (rho 46653 + rho 46654) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46660 * (1 - rho 46658) = rho 46655 - rho 46656 - rho 46657 := ha5
      _ = (-1) * rho 46656 - rho 46657 + (seg52In0AccY105 rho - seg52In0AccX105 rho * (-1)) *
          (rho 46653 + rho 46654) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX106 rho = seg52In0AccX105 rho - Bool.toZMod bit * (seg52In0AccX105 rho - rho 46659) := by
    have hd : rho 46661 = Bool.toZMod bit * (rho 46659 - seg52In0AccX105 rho) := by
      rw [← hbit]
      unfold seg52In0AccX105
      linear_combination -r2270
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY106 rho = seg52In0AccY105 rho - Bool.toZMod bit * (seg52In0AccY105 rho - rho 46660) := by
    have hd : rho 46662 = Bool.toZMod bit * (rho 46660 - seg52In0AccY105 rho) := by
      rw [← hbit]
      unfold seg52In0AccY105
      linear_combination -r2271
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46653 * rho 46654 = rho 46663 := by linear_combination r2272
  have hd1 : rho 46653 * rho 46653 = rho 46664 := by linear_combination r2273
  have hd2 : rho 46654 * rho 46654 = rho 46665 := by linear_combination r2274
  have hd3 : rho 46666 * (rho 46654 * rho 46654 + rho 46653 * rho 46653 * (-1)) =
      2 * (rho 46653 * rho 46654) := by
    rw [hd0, hd1, hd2]
    linear_combination r2275
  have hd4 : rho 46667 * (2 - (rho 46654 * rho 46654 + rho 46653 * rho 46653 * (-1))) =
      rho 46654 * rho 46654 - rho 46653 * rho 46653 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2276
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX105 rho, seg52In0AccY105 rho⟩ ⟨rho 46653, rho 46654⟩
    ⟨rho 46659, rho 46660⟩ ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 46666, rho 46667⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2277 rho ∧ Seg52.relationRow2278 rho ∧ Seg52.relationRow2279 rho ∧ Seg52.relationRow2280 rho ∧ Seg52.relationRow2281 rho ∧ Seg52.relationRow2282 rho ∧ Seg52.relationRow2283 rho ∧ Seg52.relationRow2284 rho ∧ Seg52.relationRow2285 rho ∧ Seg52.relationRow2286 rho ∧ Seg52.relationRow2287 rho ∧ Seg52.relationRow2288 rho ∧ Seg52.relationRow2289 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289⟩

theorem seg52In0_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45274 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46666, rho 46667⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 46666, rho 46667⟩
        ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 46679, rho 46680⟩ := by
  obtain ⟨r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289⟩ := seg52In0_rows106 rho h
  unfold Seg52.relationRow2277 at r2277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2277

  unfold Seg52.relationRow2278 at r2278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2278

  unfold Seg52.relationRow2279 at r2279

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2279

  unfold Seg52.relationRow2280 at r2280

  unfold Seg52.relationRow2281 at r2281

  unfold Seg52.relationRow2282 at r2282

  unfold Seg52.relationRow2283 at r2283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2283

  unfold Seg52.relationRow2284 at r2284

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2284

  unfold Seg52.relationRow2285 at r2285

  unfold Seg52.relationRow2286 at r2286

  unfold Seg52.relationRow2287 at r2287

  unfold Seg52.relationRow2288 at r2288

  unfold Seg52.relationRow2289 at r2289

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX107 rho = seg52In0AccX106 rho + rho 46674 := by
    unfold seg52In0AccX107 seg52In0AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 106]

    ring

  have hnexty : seg52In0AccY107 rho = seg52In0AccY106 rho + rho 46675 := by
    unfold seg52In0AccY107 seg52In0AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 106]

    ring

  have ha0 : (rho 46666 + rho 46667) * (seg52In0AccX106 rho + seg52In0AccY106 rho) = rho 46668 := by
    unfold seg52In0AccX106 seg52In0AccY106
    linear_combination r2277
  have ha1 : rho 46667 * seg52In0AccX106 rho = rho 46669 := by
    unfold seg52In0AccX106
    linear_combination r2278
  have ha2 : rho 46666 * seg52In0AccY106 rho = rho 46670 := by
    unfold seg52In0AccY106
    linear_combination r2279
  have ha3 : 3021 * rho 46669 * rho 46670 = rho 46671 := by
    linear_combination r2280
  have ha4 : rho 46672 * (1 + rho 46671) = rho 46669 + rho 46670 := by
    linear_combination r2281
  have ha5 : rho 46673 * (1 - rho 46671) = rho 46668 - rho 46669 - rho 46670 := by
    linear_combination r2282
  have haddx :
      rho 46672 * (1 + 3021 * (rho 46667 * seg52In0AccX106 rho) * (rho 46666 * seg52In0AccY106 rho)) =
        rho 46667 * seg52In0AccX106 rho + rho 46666 * seg52In0AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46673 * (1 - 3021 * (rho 46667 * seg52In0AccX106 rho) * (rho 46666 * seg52In0AccY106 rho)) =
        (-1) * (rho 46667 * seg52In0AccX106 rho) - rho 46666 * seg52In0AccY106 rho +
          (seg52In0AccY106 rho - seg52In0AccX106 rho * (-1)) * (rho 46666 + rho 46667) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46673 * (1 - rho 46671) = rho 46668 - rho 46669 - rho 46670 := ha5
      _ = (-1) * rho 46669 - rho 46670 + (seg52In0AccY106 rho - seg52In0AccX106 rho * (-1)) *
          (rho 46666 + rho 46667) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX107 rho = seg52In0AccX106 rho - Bool.toZMod bit * (seg52In0AccX106 rho - rho 46672) := by
    have hd : rho 46674 = Bool.toZMod bit * (rho 46672 - seg52In0AccX106 rho) := by
      rw [← hbit]
      unfold seg52In0AccX106
      linear_combination -r2283
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY107 rho = seg52In0AccY106 rho - Bool.toZMod bit * (seg52In0AccY106 rho - rho 46673) := by
    have hd : rho 46675 = Bool.toZMod bit * (rho 46673 - seg52In0AccY106 rho) := by
      rw [← hbit]
      unfold seg52In0AccY106
      linear_combination -r2284
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46666 * rho 46667 = rho 46676 := by linear_combination r2285
  have hd1 : rho 46666 * rho 46666 = rho 46677 := by linear_combination r2286
  have hd2 : rho 46667 * rho 46667 = rho 46678 := by linear_combination r2287
  have hd3 : rho 46679 * (rho 46667 * rho 46667 + rho 46666 * rho 46666 * (-1)) =
      2 * (rho 46666 * rho 46667) := by
    rw [hd0, hd1, hd2]
    linear_combination r2288
  have hd4 : rho 46680 * (2 - (rho 46667 * rho 46667 + rho 46666 * rho 46666 * (-1))) =
      rho 46667 * rho 46667 - rho 46666 * rho 46666 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2289
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX106 rho, seg52In0AccY106 rho⟩ ⟨rho 46666, rho 46667⟩
    ⟨rho 46672, rho 46673⟩ ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 46679, rho 46680⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2290 rho ∧ Seg52.relationRow2291 rho ∧ Seg52.relationRow2292 rho ∧ Seg52.relationRow2293 rho ∧ Seg52.relationRow2294 rho ∧ Seg52.relationRow2295 rho ∧ Seg52.relationRow2296 rho ∧ Seg52.relationRow2297 rho ∧ Seg52.relationRow2298 rho ∧ Seg52.relationRow2299 rho ∧ Seg52.relationRow2300 rho ∧ Seg52.relationRow2301 rho ∧ Seg52.relationRow2302 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302⟩

theorem seg52In0_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45275 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46679, rho 46680⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 46679, rho 46680⟩
        ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 46692, rho 46693⟩ := by
  obtain ⟨r2290, r2291, r2292, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302⟩ := seg52In0_rows107 rho h
  unfold Seg52.relationRow2290 at r2290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2290

  unfold Seg52.relationRow2291 at r2291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2291

  unfold Seg52.relationRow2292 at r2292

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2292

  unfold Seg52.relationRow2293 at r2293

  unfold Seg52.relationRow2294 at r2294

  unfold Seg52.relationRow2295 at r2295

  unfold Seg52.relationRow2296 at r2296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2296

  unfold Seg52.relationRow2297 at r2297

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2297

  unfold Seg52.relationRow2298 at r2298

  unfold Seg52.relationRow2299 at r2299

  unfold Seg52.relationRow2300 at r2300

  unfold Seg52.relationRow2301 at r2301

  unfold Seg52.relationRow2302 at r2302

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX108 rho = seg52In0AccX107 rho + rho 46687 := by
    unfold seg52In0AccX108 seg52In0AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 107]

    ring

  have hnexty : seg52In0AccY108 rho = seg52In0AccY107 rho + rho 46688 := by
    unfold seg52In0AccY108 seg52In0AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 107]

    ring

  have ha0 : (rho 46679 + rho 46680) * (seg52In0AccX107 rho + seg52In0AccY107 rho) = rho 46681 := by
    unfold seg52In0AccX107 seg52In0AccY107
    linear_combination r2290
  have ha1 : rho 46680 * seg52In0AccX107 rho = rho 46682 := by
    unfold seg52In0AccX107
    linear_combination r2291
  have ha2 : rho 46679 * seg52In0AccY107 rho = rho 46683 := by
    unfold seg52In0AccY107
    linear_combination r2292
  have ha3 : 3021 * rho 46682 * rho 46683 = rho 46684 := by
    linear_combination r2293
  have ha4 : rho 46685 * (1 + rho 46684) = rho 46682 + rho 46683 := by
    linear_combination r2294
  have ha5 : rho 46686 * (1 - rho 46684) = rho 46681 - rho 46682 - rho 46683 := by
    linear_combination r2295
  have haddx :
      rho 46685 * (1 + 3021 * (rho 46680 * seg52In0AccX107 rho) * (rho 46679 * seg52In0AccY107 rho)) =
        rho 46680 * seg52In0AccX107 rho + rho 46679 * seg52In0AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46686 * (1 - 3021 * (rho 46680 * seg52In0AccX107 rho) * (rho 46679 * seg52In0AccY107 rho)) =
        (-1) * (rho 46680 * seg52In0AccX107 rho) - rho 46679 * seg52In0AccY107 rho +
          (seg52In0AccY107 rho - seg52In0AccX107 rho * (-1)) * (rho 46679 + rho 46680) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46686 * (1 - rho 46684) = rho 46681 - rho 46682 - rho 46683 := ha5
      _ = (-1) * rho 46682 - rho 46683 + (seg52In0AccY107 rho - seg52In0AccX107 rho * (-1)) *
          (rho 46679 + rho 46680) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX108 rho = seg52In0AccX107 rho - Bool.toZMod bit * (seg52In0AccX107 rho - rho 46685) := by
    have hd : rho 46687 = Bool.toZMod bit * (rho 46685 - seg52In0AccX107 rho) := by
      rw [← hbit]
      unfold seg52In0AccX107
      linear_combination -r2296
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY108 rho = seg52In0AccY107 rho - Bool.toZMod bit * (seg52In0AccY107 rho - rho 46686) := by
    have hd : rho 46688 = Bool.toZMod bit * (rho 46686 - seg52In0AccY107 rho) := by
      rw [← hbit]
      unfold seg52In0AccY107
      linear_combination -r2297
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46679 * rho 46680 = rho 46689 := by linear_combination r2298
  have hd1 : rho 46679 * rho 46679 = rho 46690 := by linear_combination r2299
  have hd2 : rho 46680 * rho 46680 = rho 46691 := by linear_combination r2300
  have hd3 : rho 46692 * (rho 46680 * rho 46680 + rho 46679 * rho 46679 * (-1)) =
      2 * (rho 46679 * rho 46680) := by
    rw [hd0, hd1, hd2]
    linear_combination r2301
  have hd4 : rho 46693 * (2 - (rho 46680 * rho 46680 + rho 46679 * rho 46679 * (-1))) =
      rho 46680 * rho 46680 - rho 46679 * rho 46679 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2302
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX107 rho, seg52In0AccY107 rho⟩ ⟨rho 46679, rho 46680⟩
    ⟨rho 46685, rho 46686⟩ ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 46692, rho 46693⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2303 rho ∧ Seg52.relationRow2304 rho ∧ Seg52.relationRow2305 rho ∧ Seg52.relationRow2306 rho ∧ Seg52.relationRow2307 rho ∧ Seg52.relationRow2308 rho ∧ Seg52.relationRow2309 rho ∧ Seg52.relationRow2310 rho ∧ Seg52.relationRow2311 rho ∧ Seg52.relationRow2312 rho ∧ Seg52.relationRow2313 rho ∧ Seg52.relationRow2314 rho ∧ Seg52.relationRow2315 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, _, _, _, _⟩

  exact ⟨r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315⟩

theorem seg52In0_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45276 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46692, rho 46693⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 46692, rho 46693⟩
        ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 46705, rho 46706⟩ := by
  obtain ⟨r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315⟩ := seg52In0_rows108 rho h
  unfold Seg52.relationRow2303 at r2303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2303

  unfold Seg52.relationRow2304 at r2304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2304

  unfold Seg52.relationRow2305 at r2305

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2305

  unfold Seg52.relationRow2306 at r2306

  unfold Seg52.relationRow2307 at r2307

  unfold Seg52.relationRow2308 at r2308

  unfold Seg52.relationRow2309 at r2309

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2309

  unfold Seg52.relationRow2310 at r2310

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2310

  unfold Seg52.relationRow2311 at r2311

  unfold Seg52.relationRow2312 at r2312

  unfold Seg52.relationRow2313 at r2313

  unfold Seg52.relationRow2314 at r2314

  unfold Seg52.relationRow2315 at r2315

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX109 rho = seg52In0AccX108 rho + rho 46700 := by
    unfold seg52In0AccX109 seg52In0AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 108]

    ring

  have hnexty : seg52In0AccY109 rho = seg52In0AccY108 rho + rho 46701 := by
    unfold seg52In0AccY109 seg52In0AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 108]

    ring

  have ha0 : (rho 46692 + rho 46693) * (seg52In0AccX108 rho + seg52In0AccY108 rho) = rho 46694 := by
    unfold seg52In0AccX108 seg52In0AccY108
    linear_combination r2303
  have ha1 : rho 46693 * seg52In0AccX108 rho = rho 46695 := by
    unfold seg52In0AccX108
    linear_combination r2304
  have ha2 : rho 46692 * seg52In0AccY108 rho = rho 46696 := by
    unfold seg52In0AccY108
    linear_combination r2305
  have ha3 : 3021 * rho 46695 * rho 46696 = rho 46697 := by
    linear_combination r2306
  have ha4 : rho 46698 * (1 + rho 46697) = rho 46695 + rho 46696 := by
    linear_combination r2307
  have ha5 : rho 46699 * (1 - rho 46697) = rho 46694 - rho 46695 - rho 46696 := by
    linear_combination r2308
  have haddx :
      rho 46698 * (1 + 3021 * (rho 46693 * seg52In0AccX108 rho) * (rho 46692 * seg52In0AccY108 rho)) =
        rho 46693 * seg52In0AccX108 rho + rho 46692 * seg52In0AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46699 * (1 - 3021 * (rho 46693 * seg52In0AccX108 rho) * (rho 46692 * seg52In0AccY108 rho)) =
        (-1) * (rho 46693 * seg52In0AccX108 rho) - rho 46692 * seg52In0AccY108 rho +
          (seg52In0AccY108 rho - seg52In0AccX108 rho * (-1)) * (rho 46692 + rho 46693) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46699 * (1 - rho 46697) = rho 46694 - rho 46695 - rho 46696 := ha5
      _ = (-1) * rho 46695 - rho 46696 + (seg52In0AccY108 rho - seg52In0AccX108 rho * (-1)) *
          (rho 46692 + rho 46693) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX109 rho = seg52In0AccX108 rho - Bool.toZMod bit * (seg52In0AccX108 rho - rho 46698) := by
    have hd : rho 46700 = Bool.toZMod bit * (rho 46698 - seg52In0AccX108 rho) := by
      rw [← hbit]
      unfold seg52In0AccX108
      linear_combination -r2309
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY109 rho = seg52In0AccY108 rho - Bool.toZMod bit * (seg52In0AccY108 rho - rho 46699) := by
    have hd : rho 46701 = Bool.toZMod bit * (rho 46699 - seg52In0AccY108 rho) := by
      rw [← hbit]
      unfold seg52In0AccY108
      linear_combination -r2310
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46692 * rho 46693 = rho 46702 := by linear_combination r2311
  have hd1 : rho 46692 * rho 46692 = rho 46703 := by linear_combination r2312
  have hd2 : rho 46693 * rho 46693 = rho 46704 := by linear_combination r2313
  have hd3 : rho 46705 * (rho 46693 * rho 46693 + rho 46692 * rho 46692 * (-1)) =
      2 * (rho 46692 * rho 46693) := by
    rw [hd0, hd1, hd2]
    linear_combination r2314
  have hd4 : rho 46706 * (2 - (rho 46693 * rho 46693 + rho 46692 * rho 46692 * (-1))) =
      rho 46693 * rho 46693 - rho 46692 * rho 46692 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2315
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX108 rho, seg52In0AccY108 rho⟩ ⟨rho 46692, rho 46693⟩
    ⟨rho 46698, rho 46699⟩ ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 46705, rho 46706⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2316 rho ∧ Seg52.relationRow2317 rho ∧ Seg52.relationRow2318 rho ∧ Seg52.relationRow2319 rho ∧ Seg52.relationRow2320 rho ∧ Seg52.relationRow2321 rho ∧ Seg52.relationRow2322 rho ∧ Seg52.relationRow2323 rho ∧ Seg52.relationRow2324 rho ∧ Seg52.relationRow2325 rho ∧ Seg52.relationRow2326 rho ∧ Seg52.relationRow2327 rho ∧ Seg52.relationRow2328 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart28 at p28

  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2316, r2317, r2318, r2319⟩

  unfold Seg52.relationPart29 at p29

  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2316, r2317, r2318, r2319, r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328⟩

theorem seg52In0_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45277 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46705, rho 46706⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 46705, rho 46706⟩
        ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 46718, rho 46719⟩ := by
  obtain ⟨r2316, r2317, r2318, r2319, r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328⟩ := seg52In0_rows109 rho h
  unfold Seg52.relationRow2316 at r2316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2316

  unfold Seg52.relationRow2317 at r2317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2317

  unfold Seg52.relationRow2318 at r2318

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2318

  unfold Seg52.relationRow2319 at r2319

  unfold Seg52.relationRow2320 at r2320

  unfold Seg52.relationRow2321 at r2321

  unfold Seg52.relationRow2322 at r2322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2322

  unfold Seg52.relationRow2323 at r2323

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2323

  unfold Seg52.relationRow2324 at r2324

  unfold Seg52.relationRow2325 at r2325

  unfold Seg52.relationRow2326 at r2326

  unfold Seg52.relationRow2327 at r2327

  unfold Seg52.relationRow2328 at r2328

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX110 rho = seg52In0AccX109 rho + rho 46713 := by
    unfold seg52In0AccX110 seg52In0AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 109]

    ring

  have hnexty : seg52In0AccY110 rho = seg52In0AccY109 rho + rho 46714 := by
    unfold seg52In0AccY110 seg52In0AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 109]

    ring

  have ha0 : (rho 46705 + rho 46706) * (seg52In0AccX109 rho + seg52In0AccY109 rho) = rho 46707 := by
    unfold seg52In0AccX109 seg52In0AccY109
    linear_combination r2316
  have ha1 : rho 46706 * seg52In0AccX109 rho = rho 46708 := by
    unfold seg52In0AccX109
    linear_combination r2317
  have ha2 : rho 46705 * seg52In0AccY109 rho = rho 46709 := by
    unfold seg52In0AccY109
    linear_combination r2318
  have ha3 : 3021 * rho 46708 * rho 46709 = rho 46710 := by
    linear_combination r2319
  have ha4 : rho 46711 * (1 + rho 46710) = rho 46708 + rho 46709 := by
    linear_combination r2320
  have ha5 : rho 46712 * (1 - rho 46710) = rho 46707 - rho 46708 - rho 46709 := by
    linear_combination r2321
  have haddx :
      rho 46711 * (1 + 3021 * (rho 46706 * seg52In0AccX109 rho) * (rho 46705 * seg52In0AccY109 rho)) =
        rho 46706 * seg52In0AccX109 rho + rho 46705 * seg52In0AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46712 * (1 - 3021 * (rho 46706 * seg52In0AccX109 rho) * (rho 46705 * seg52In0AccY109 rho)) =
        (-1) * (rho 46706 * seg52In0AccX109 rho) - rho 46705 * seg52In0AccY109 rho +
          (seg52In0AccY109 rho - seg52In0AccX109 rho * (-1)) * (rho 46705 + rho 46706) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46712 * (1 - rho 46710) = rho 46707 - rho 46708 - rho 46709 := ha5
      _ = (-1) * rho 46708 - rho 46709 + (seg52In0AccY109 rho - seg52In0AccX109 rho * (-1)) *
          (rho 46705 + rho 46706) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX110 rho = seg52In0AccX109 rho - Bool.toZMod bit * (seg52In0AccX109 rho - rho 46711) := by
    have hd : rho 46713 = Bool.toZMod bit * (rho 46711 - seg52In0AccX109 rho) := by
      rw [← hbit]
      unfold seg52In0AccX109
      linear_combination -r2322
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY110 rho = seg52In0AccY109 rho - Bool.toZMod bit * (seg52In0AccY109 rho - rho 46712) := by
    have hd : rho 46714 = Bool.toZMod bit * (rho 46712 - seg52In0AccY109 rho) := by
      rw [← hbit]
      unfold seg52In0AccY109
      linear_combination -r2323
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46705 * rho 46706 = rho 46715 := by linear_combination r2324
  have hd1 : rho 46705 * rho 46705 = rho 46716 := by linear_combination r2325
  have hd2 : rho 46706 * rho 46706 = rho 46717 := by linear_combination r2326
  have hd3 : rho 46718 * (rho 46706 * rho 46706 + rho 46705 * rho 46705 * (-1)) =
      2 * (rho 46705 * rho 46706) := by
    rw [hd0, hd1, hd2]
    linear_combination r2327
  have hd4 : rho 46719 * (2 - (rho 46706 * rho 46706 + rho 46705 * rho 46705 * (-1))) =
      rho 46706 * rho 46706 - rho 46705 * rho 46705 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2328
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX109 rho, seg52In0AccY109 rho⟩ ⟨rho 46705, rho 46706⟩
    ⟨rho 46711, rho 46712⟩ ⟨seg52In0AccX110 rho, seg52In0AccY110 rho⟩ ⟨rho 46718, rho 46719⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg52In0_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg52In0_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg52In0_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg52In0_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg52In0_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg52In0_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg52In0_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg52In0_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg52In0_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg52In0_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
