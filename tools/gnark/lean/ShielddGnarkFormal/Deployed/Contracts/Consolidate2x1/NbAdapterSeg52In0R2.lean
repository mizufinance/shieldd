import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1185 rho ∧ Seg52.relationRow1186 rho ∧ Seg52.relationRow1187 rho ∧ Seg52.relationRow1188 rho ∧ Seg52.relationRow1189 rho ∧ Seg52.relationRow1190 rho ∧ Seg52.relationRow1191 rho ∧ Seg52.relationRow1192 rho ∧ Seg52.relationRow1193 rho ∧ Seg52.relationRow1194 rho ∧ Seg52.relationRow1195 rho ∧ Seg52.relationRow1196 rho ∧ Seg52.relationRow1197 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, _, _⟩

  exact ⟨r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197⟩

theorem seg52In0_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45190 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45574, rho 45575⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 45574, rho 45575⟩
        ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 45587, rho 45588⟩ := by
  obtain ⟨r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197⟩ := seg52In0_rows22 rho h
  unfold Seg52.relationRow1185 at r1185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1185

  unfold Seg52.relationRow1186 at r1186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1186

  unfold Seg52.relationRow1187 at r1187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1187

  unfold Seg52.relationRow1188 at r1188

  unfold Seg52.relationRow1189 at r1189

  unfold Seg52.relationRow1190 at r1190

  unfold Seg52.relationRow1191 at r1191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1191

  unfold Seg52.relationRow1192 at r1192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1192

  unfold Seg52.relationRow1193 at r1193

  unfold Seg52.relationRow1194 at r1194

  unfold Seg52.relationRow1195 at r1195

  unfold Seg52.relationRow1196 at r1196

  unfold Seg52.relationRow1197 at r1197

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX23 rho = seg52In0AccX22 rho + rho 45582 := by
    unfold seg52In0AccX23 seg52In0AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 22]

    ring

  have hnexty : seg52In0AccY23 rho = seg52In0AccY22 rho + rho 45583 := by
    unfold seg52In0AccY23 seg52In0AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 22]

    ring

  have ha0 : (rho 45574 + rho 45575) * (seg52In0AccX22 rho + seg52In0AccY22 rho) = rho 45576 := by
    unfold seg52In0AccX22 seg52In0AccY22
    linear_combination r1185
  have ha1 : rho 45575 * seg52In0AccX22 rho = rho 45577 := by
    unfold seg52In0AccX22
    linear_combination r1186
  have ha2 : rho 45574 * seg52In0AccY22 rho = rho 45578 := by
    unfold seg52In0AccY22
    linear_combination r1187
  have ha3 : 3021 * rho 45577 * rho 45578 = rho 45579 := by
    linear_combination r1188
  have ha4 : rho 45580 * (1 + rho 45579) = rho 45577 + rho 45578 := by
    linear_combination r1189
  have ha5 : rho 45581 * (1 - rho 45579) = rho 45576 - rho 45577 - rho 45578 := by
    linear_combination r1190
  have haddx :
      rho 45580 * (1 + 3021 * (rho 45575 * seg52In0AccX22 rho) * (rho 45574 * seg52In0AccY22 rho)) =
        rho 45575 * seg52In0AccX22 rho + rho 45574 * seg52In0AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45581 * (1 - 3021 * (rho 45575 * seg52In0AccX22 rho) * (rho 45574 * seg52In0AccY22 rho)) =
        (-1) * (rho 45575 * seg52In0AccX22 rho) - rho 45574 * seg52In0AccY22 rho +
          (seg52In0AccY22 rho - seg52In0AccX22 rho * (-1)) * (rho 45574 + rho 45575) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45581 * (1 - rho 45579) = rho 45576 - rho 45577 - rho 45578 := ha5
      _ = (-1) * rho 45577 - rho 45578 + (seg52In0AccY22 rho - seg52In0AccX22 rho * (-1)) *
          (rho 45574 + rho 45575) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX23 rho = seg52In0AccX22 rho - Bool.toZMod bit * (seg52In0AccX22 rho - rho 45580) := by
    have hd : rho 45582 = Bool.toZMod bit * (rho 45580 - seg52In0AccX22 rho) := by
      rw [← hbit]
      unfold seg52In0AccX22
      linear_combination -r1191
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY23 rho = seg52In0AccY22 rho - Bool.toZMod bit * (seg52In0AccY22 rho - rho 45581) := by
    have hd : rho 45583 = Bool.toZMod bit * (rho 45581 - seg52In0AccY22 rho) := by
      rw [← hbit]
      unfold seg52In0AccY22
      linear_combination -r1192
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45574 * rho 45575 = rho 45584 := by linear_combination r1193
  have hd1 : rho 45574 * rho 45574 = rho 45585 := by linear_combination r1194
  have hd2 : rho 45575 * rho 45575 = rho 45586 := by linear_combination r1195
  have hd3 : rho 45587 * (rho 45575 * rho 45575 + rho 45574 * rho 45574 * (-1)) =
      2 * (rho 45574 * rho 45575) := by
    rw [hd0, hd1, hd2]
    linear_combination r1196
  have hd4 : rho 45588 * (2 - (rho 45575 * rho 45575 + rho 45574 * rho 45574 * (-1))) =
      rho 45575 * rho 45575 - rho 45574 * rho 45574 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1197
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 45574, rho 45575⟩
    ⟨rho 45580, rho 45581⟩ ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 45587, rho 45588⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1198 rho ∧ Seg52.relationRow1199 rho ∧ Seg52.relationRow1200 rho ∧ Seg52.relationRow1201 rho ∧ Seg52.relationRow1202 rho ∧ Seg52.relationRow1203 rho ∧ Seg52.relationRow1204 rho ∧ Seg52.relationRow1205 rho ∧ Seg52.relationRow1206 rho ∧ Seg52.relationRow1207 rho ∧ Seg52.relationRow1208 rho ∧ Seg52.relationRow1209 rho ∧ Seg52.relationRow1210 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, p15, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1198, r1199⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1198, r1199, r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210⟩

theorem seg52In0_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45191 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45587, rho 45588⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 45587, rho 45588⟩
        ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 45600, rho 45601⟩ := by
  obtain ⟨r1198, r1199, r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210⟩ := seg52In0_rows23 rho h
  unfold Seg52.relationRow1198 at r1198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1198

  unfold Seg52.relationRow1199 at r1199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1199

  unfold Seg52.relationRow1200 at r1200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1200

  unfold Seg52.relationRow1201 at r1201

  unfold Seg52.relationRow1202 at r1202

  unfold Seg52.relationRow1203 at r1203

  unfold Seg52.relationRow1204 at r1204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1204

  unfold Seg52.relationRow1205 at r1205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1205

  unfold Seg52.relationRow1206 at r1206

  unfold Seg52.relationRow1207 at r1207

  unfold Seg52.relationRow1208 at r1208

  unfold Seg52.relationRow1209 at r1209

  unfold Seg52.relationRow1210 at r1210

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX24 rho = seg52In0AccX23 rho + rho 45595 := by
    unfold seg52In0AccX24 seg52In0AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 23]

    ring

  have hnexty : seg52In0AccY24 rho = seg52In0AccY23 rho + rho 45596 := by
    unfold seg52In0AccY24 seg52In0AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 23]

    ring

  have ha0 : (rho 45587 + rho 45588) * (seg52In0AccX23 rho + seg52In0AccY23 rho) = rho 45589 := by
    unfold seg52In0AccX23 seg52In0AccY23
    linear_combination r1198
  have ha1 : rho 45588 * seg52In0AccX23 rho = rho 45590 := by
    unfold seg52In0AccX23
    linear_combination r1199
  have ha2 : rho 45587 * seg52In0AccY23 rho = rho 45591 := by
    unfold seg52In0AccY23
    linear_combination r1200
  have ha3 : 3021 * rho 45590 * rho 45591 = rho 45592 := by
    linear_combination r1201
  have ha4 : rho 45593 * (1 + rho 45592) = rho 45590 + rho 45591 := by
    linear_combination r1202
  have ha5 : rho 45594 * (1 - rho 45592) = rho 45589 - rho 45590 - rho 45591 := by
    linear_combination r1203
  have haddx :
      rho 45593 * (1 + 3021 * (rho 45588 * seg52In0AccX23 rho) * (rho 45587 * seg52In0AccY23 rho)) =
        rho 45588 * seg52In0AccX23 rho + rho 45587 * seg52In0AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45594 * (1 - 3021 * (rho 45588 * seg52In0AccX23 rho) * (rho 45587 * seg52In0AccY23 rho)) =
        (-1) * (rho 45588 * seg52In0AccX23 rho) - rho 45587 * seg52In0AccY23 rho +
          (seg52In0AccY23 rho - seg52In0AccX23 rho * (-1)) * (rho 45587 + rho 45588) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45594 * (1 - rho 45592) = rho 45589 - rho 45590 - rho 45591 := ha5
      _ = (-1) * rho 45590 - rho 45591 + (seg52In0AccY23 rho - seg52In0AccX23 rho * (-1)) *
          (rho 45587 + rho 45588) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX24 rho = seg52In0AccX23 rho - Bool.toZMod bit * (seg52In0AccX23 rho - rho 45593) := by
    have hd : rho 45595 = Bool.toZMod bit * (rho 45593 - seg52In0AccX23 rho) := by
      rw [← hbit]
      unfold seg52In0AccX23
      linear_combination -r1204
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY24 rho = seg52In0AccY23 rho - Bool.toZMod bit * (seg52In0AccY23 rho - rho 45594) := by
    have hd : rho 45596 = Bool.toZMod bit * (rho 45594 - seg52In0AccY23 rho) := by
      rw [← hbit]
      unfold seg52In0AccY23
      linear_combination -r1205
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45587 * rho 45588 = rho 45597 := by linear_combination r1206
  have hd1 : rho 45587 * rho 45587 = rho 45598 := by linear_combination r1207
  have hd2 : rho 45588 * rho 45588 = rho 45599 := by linear_combination r1208
  have hd3 : rho 45600 * (rho 45588 * rho 45588 + rho 45587 * rho 45587 * (-1)) =
      2 * (rho 45587 * rho 45588) := by
    rw [hd0, hd1, hd2]
    linear_combination r1209
  have hd4 : rho 45601 * (2 - (rho 45588 * rho 45588 + rho 45587 * rho 45587 * (-1))) =
      rho 45588 * rho 45588 - rho 45587 * rho 45587 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1210
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 45587, rho 45588⟩
    ⟨rho 45593, rho 45594⟩ ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 45600, rho 45601⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1211 rho ∧ Seg52.relationRow1212 rho ∧ Seg52.relationRow1213 rho ∧ Seg52.relationRow1214 rho ∧ Seg52.relationRow1215 rho ∧ Seg52.relationRow1216 rho ∧ Seg52.relationRow1217 rho ∧ Seg52.relationRow1218 rho ∧ Seg52.relationRow1219 rho ∧ Seg52.relationRow1220 rho ∧ Seg52.relationRow1221 rho ∧ Seg52.relationRow1222 rho ∧ Seg52.relationRow1223 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223⟩

theorem seg52In0_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45192 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45600, rho 45601⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 45600, rho 45601⟩
        ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 45613, rho 45614⟩ := by
  obtain ⟨r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223⟩ := seg52In0_rows24 rho h
  unfold Seg52.relationRow1211 at r1211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1211

  unfold Seg52.relationRow1212 at r1212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1212

  unfold Seg52.relationRow1213 at r1213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1213

  unfold Seg52.relationRow1214 at r1214

  unfold Seg52.relationRow1215 at r1215

  unfold Seg52.relationRow1216 at r1216

  unfold Seg52.relationRow1217 at r1217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1217

  unfold Seg52.relationRow1218 at r1218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1218

  unfold Seg52.relationRow1219 at r1219

  unfold Seg52.relationRow1220 at r1220

  unfold Seg52.relationRow1221 at r1221

  unfold Seg52.relationRow1222 at r1222

  unfold Seg52.relationRow1223 at r1223

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX25 rho = seg52In0AccX24 rho + rho 45608 := by
    unfold seg52In0AccX25 seg52In0AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 24]

    ring

  have hnexty : seg52In0AccY25 rho = seg52In0AccY24 rho + rho 45609 := by
    unfold seg52In0AccY25 seg52In0AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 24]

    ring

  have ha0 : (rho 45600 + rho 45601) * (seg52In0AccX24 rho + seg52In0AccY24 rho) = rho 45602 := by
    unfold seg52In0AccX24 seg52In0AccY24
    linear_combination r1211
  have ha1 : rho 45601 * seg52In0AccX24 rho = rho 45603 := by
    unfold seg52In0AccX24
    linear_combination r1212
  have ha2 : rho 45600 * seg52In0AccY24 rho = rho 45604 := by
    unfold seg52In0AccY24
    linear_combination r1213
  have ha3 : 3021 * rho 45603 * rho 45604 = rho 45605 := by
    linear_combination r1214
  have ha4 : rho 45606 * (1 + rho 45605) = rho 45603 + rho 45604 := by
    linear_combination r1215
  have ha5 : rho 45607 * (1 - rho 45605) = rho 45602 - rho 45603 - rho 45604 := by
    linear_combination r1216
  have haddx :
      rho 45606 * (1 + 3021 * (rho 45601 * seg52In0AccX24 rho) * (rho 45600 * seg52In0AccY24 rho)) =
        rho 45601 * seg52In0AccX24 rho + rho 45600 * seg52In0AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45607 * (1 - 3021 * (rho 45601 * seg52In0AccX24 rho) * (rho 45600 * seg52In0AccY24 rho)) =
        (-1) * (rho 45601 * seg52In0AccX24 rho) - rho 45600 * seg52In0AccY24 rho +
          (seg52In0AccY24 rho - seg52In0AccX24 rho * (-1)) * (rho 45600 + rho 45601) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45607 * (1 - rho 45605) = rho 45602 - rho 45603 - rho 45604 := ha5
      _ = (-1) * rho 45603 - rho 45604 + (seg52In0AccY24 rho - seg52In0AccX24 rho * (-1)) *
          (rho 45600 + rho 45601) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX25 rho = seg52In0AccX24 rho - Bool.toZMod bit * (seg52In0AccX24 rho - rho 45606) := by
    have hd : rho 45608 = Bool.toZMod bit * (rho 45606 - seg52In0AccX24 rho) := by
      rw [← hbit]
      unfold seg52In0AccX24
      linear_combination -r1217
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY25 rho = seg52In0AccY24 rho - Bool.toZMod bit * (seg52In0AccY24 rho - rho 45607) := by
    have hd : rho 45609 = Bool.toZMod bit * (rho 45607 - seg52In0AccY24 rho) := by
      rw [← hbit]
      unfold seg52In0AccY24
      linear_combination -r1218
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45600 * rho 45601 = rho 45610 := by linear_combination r1219
  have hd1 : rho 45600 * rho 45600 = rho 45611 := by linear_combination r1220
  have hd2 : rho 45601 * rho 45601 = rho 45612 := by linear_combination r1221
  have hd3 : rho 45613 * (rho 45601 * rho 45601 + rho 45600 * rho 45600 * (-1)) =
      2 * (rho 45600 * rho 45601) := by
    rw [hd0, hd1, hd2]
    linear_combination r1222
  have hd4 : rho 45614 * (2 - (rho 45601 * rho 45601 + rho 45600 * rho 45600 * (-1))) =
      rho 45601 * rho 45601 - rho 45600 * rho 45600 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1223
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 45600, rho 45601⟩
    ⟨rho 45606, rho 45607⟩ ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 45613, rho 45614⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1224 rho ∧ Seg52.relationRow1225 rho ∧ Seg52.relationRow1226 rho ∧ Seg52.relationRow1227 rho ∧ Seg52.relationRow1228 rho ∧ Seg52.relationRow1229 rho ∧ Seg52.relationRow1230 rho ∧ Seg52.relationRow1231 rho ∧ Seg52.relationRow1232 rho ∧ Seg52.relationRow1233 rho ∧ Seg52.relationRow1234 rho ∧ Seg52.relationRow1235 rho ∧ Seg52.relationRow1236 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236⟩

theorem seg52In0_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45193 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45613, rho 45614⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 45613, rho 45614⟩
        ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 45626, rho 45627⟩ := by
  obtain ⟨r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236⟩ := seg52In0_rows25 rho h
  unfold Seg52.relationRow1224 at r1224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1224

  unfold Seg52.relationRow1225 at r1225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1225

  unfold Seg52.relationRow1226 at r1226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1226

  unfold Seg52.relationRow1227 at r1227

  unfold Seg52.relationRow1228 at r1228

  unfold Seg52.relationRow1229 at r1229

  unfold Seg52.relationRow1230 at r1230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1230

  unfold Seg52.relationRow1231 at r1231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1231

  unfold Seg52.relationRow1232 at r1232

  unfold Seg52.relationRow1233 at r1233

  unfold Seg52.relationRow1234 at r1234

  unfold Seg52.relationRow1235 at r1235

  unfold Seg52.relationRow1236 at r1236

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX26 rho = seg52In0AccX25 rho + rho 45621 := by
    unfold seg52In0AccX26 seg52In0AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 25]

    ring

  have hnexty : seg52In0AccY26 rho = seg52In0AccY25 rho + rho 45622 := by
    unfold seg52In0AccY26 seg52In0AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 25]

    ring

  have ha0 : (rho 45613 + rho 45614) * (seg52In0AccX25 rho + seg52In0AccY25 rho) = rho 45615 := by
    unfold seg52In0AccX25 seg52In0AccY25
    linear_combination r1224
  have ha1 : rho 45614 * seg52In0AccX25 rho = rho 45616 := by
    unfold seg52In0AccX25
    linear_combination r1225
  have ha2 : rho 45613 * seg52In0AccY25 rho = rho 45617 := by
    unfold seg52In0AccY25
    linear_combination r1226
  have ha3 : 3021 * rho 45616 * rho 45617 = rho 45618 := by
    linear_combination r1227
  have ha4 : rho 45619 * (1 + rho 45618) = rho 45616 + rho 45617 := by
    linear_combination r1228
  have ha5 : rho 45620 * (1 - rho 45618) = rho 45615 - rho 45616 - rho 45617 := by
    linear_combination r1229
  have haddx :
      rho 45619 * (1 + 3021 * (rho 45614 * seg52In0AccX25 rho) * (rho 45613 * seg52In0AccY25 rho)) =
        rho 45614 * seg52In0AccX25 rho + rho 45613 * seg52In0AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45620 * (1 - 3021 * (rho 45614 * seg52In0AccX25 rho) * (rho 45613 * seg52In0AccY25 rho)) =
        (-1) * (rho 45614 * seg52In0AccX25 rho) - rho 45613 * seg52In0AccY25 rho +
          (seg52In0AccY25 rho - seg52In0AccX25 rho * (-1)) * (rho 45613 + rho 45614) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45620 * (1 - rho 45618) = rho 45615 - rho 45616 - rho 45617 := ha5
      _ = (-1) * rho 45616 - rho 45617 + (seg52In0AccY25 rho - seg52In0AccX25 rho * (-1)) *
          (rho 45613 + rho 45614) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX26 rho = seg52In0AccX25 rho - Bool.toZMod bit * (seg52In0AccX25 rho - rho 45619) := by
    have hd : rho 45621 = Bool.toZMod bit * (rho 45619 - seg52In0AccX25 rho) := by
      rw [← hbit]
      unfold seg52In0AccX25
      linear_combination -r1230
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY26 rho = seg52In0AccY25 rho - Bool.toZMod bit * (seg52In0AccY25 rho - rho 45620) := by
    have hd : rho 45622 = Bool.toZMod bit * (rho 45620 - seg52In0AccY25 rho) := by
      rw [← hbit]
      unfold seg52In0AccY25
      linear_combination -r1231
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45613 * rho 45614 = rho 45623 := by linear_combination r1232
  have hd1 : rho 45613 * rho 45613 = rho 45624 := by linear_combination r1233
  have hd2 : rho 45614 * rho 45614 = rho 45625 := by linear_combination r1234
  have hd3 : rho 45626 * (rho 45614 * rho 45614 + rho 45613 * rho 45613 * (-1)) =
      2 * (rho 45613 * rho 45614) := by
    rw [hd0, hd1, hd2]
    linear_combination r1235
  have hd4 : rho 45627 * (2 - (rho 45614 * rho 45614 + rho 45613 * rho 45613 * (-1))) =
      rho 45614 * rho 45614 - rho 45613 * rho 45613 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1236
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 45613, rho 45614⟩
    ⟨rho 45619, rho 45620⟩ ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 45626, rho 45627⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1237 rho ∧ Seg52.relationRow1238 rho ∧ Seg52.relationRow1239 rho ∧ Seg52.relationRow1240 rho ∧ Seg52.relationRow1241 rho ∧ Seg52.relationRow1242 rho ∧ Seg52.relationRow1243 rho ∧ Seg52.relationRow1244 rho ∧ Seg52.relationRow1245 rho ∧ Seg52.relationRow1246 rho ∧ Seg52.relationRow1247 rho ∧ Seg52.relationRow1248 rho ∧ Seg52.relationRow1249 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249⟩

theorem seg52In0_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45194 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45626, rho 45627⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 45626, rho 45627⟩
        ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 45639, rho 45640⟩ := by
  obtain ⟨r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249⟩ := seg52In0_rows26 rho h
  unfold Seg52.relationRow1237 at r1237

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1237

  unfold Seg52.relationRow1238 at r1238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1238

  unfold Seg52.relationRow1239 at r1239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1239

  unfold Seg52.relationRow1240 at r1240

  unfold Seg52.relationRow1241 at r1241

  unfold Seg52.relationRow1242 at r1242

  unfold Seg52.relationRow1243 at r1243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1243

  unfold Seg52.relationRow1244 at r1244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1244

  unfold Seg52.relationRow1245 at r1245

  unfold Seg52.relationRow1246 at r1246

  unfold Seg52.relationRow1247 at r1247

  unfold Seg52.relationRow1248 at r1248

  unfold Seg52.relationRow1249 at r1249

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX27 rho = seg52In0AccX26 rho + rho 45634 := by
    unfold seg52In0AccX27 seg52In0AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 26]

    ring

  have hnexty : seg52In0AccY27 rho = seg52In0AccY26 rho + rho 45635 := by
    unfold seg52In0AccY27 seg52In0AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 26]

    ring

  have ha0 : (rho 45626 + rho 45627) * (seg52In0AccX26 rho + seg52In0AccY26 rho) = rho 45628 := by
    unfold seg52In0AccX26 seg52In0AccY26
    linear_combination r1237
  have ha1 : rho 45627 * seg52In0AccX26 rho = rho 45629 := by
    unfold seg52In0AccX26
    linear_combination r1238
  have ha2 : rho 45626 * seg52In0AccY26 rho = rho 45630 := by
    unfold seg52In0AccY26
    linear_combination r1239
  have ha3 : 3021 * rho 45629 * rho 45630 = rho 45631 := by
    linear_combination r1240
  have ha4 : rho 45632 * (1 + rho 45631) = rho 45629 + rho 45630 := by
    linear_combination r1241
  have ha5 : rho 45633 * (1 - rho 45631) = rho 45628 - rho 45629 - rho 45630 := by
    linear_combination r1242
  have haddx :
      rho 45632 * (1 + 3021 * (rho 45627 * seg52In0AccX26 rho) * (rho 45626 * seg52In0AccY26 rho)) =
        rho 45627 * seg52In0AccX26 rho + rho 45626 * seg52In0AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45633 * (1 - 3021 * (rho 45627 * seg52In0AccX26 rho) * (rho 45626 * seg52In0AccY26 rho)) =
        (-1) * (rho 45627 * seg52In0AccX26 rho) - rho 45626 * seg52In0AccY26 rho +
          (seg52In0AccY26 rho - seg52In0AccX26 rho * (-1)) * (rho 45626 + rho 45627) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45633 * (1 - rho 45631) = rho 45628 - rho 45629 - rho 45630 := ha5
      _ = (-1) * rho 45629 - rho 45630 + (seg52In0AccY26 rho - seg52In0AccX26 rho * (-1)) *
          (rho 45626 + rho 45627) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX27 rho = seg52In0AccX26 rho - Bool.toZMod bit * (seg52In0AccX26 rho - rho 45632) := by
    have hd : rho 45634 = Bool.toZMod bit * (rho 45632 - seg52In0AccX26 rho) := by
      rw [← hbit]
      unfold seg52In0AccX26
      linear_combination -r1243
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY27 rho = seg52In0AccY26 rho - Bool.toZMod bit * (seg52In0AccY26 rho - rho 45633) := by
    have hd : rho 45635 = Bool.toZMod bit * (rho 45633 - seg52In0AccY26 rho) := by
      rw [← hbit]
      unfold seg52In0AccY26
      linear_combination -r1244
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45626 * rho 45627 = rho 45636 := by linear_combination r1245
  have hd1 : rho 45626 * rho 45626 = rho 45637 := by linear_combination r1246
  have hd2 : rho 45627 * rho 45627 = rho 45638 := by linear_combination r1247
  have hd3 : rho 45639 * (rho 45627 * rho 45627 + rho 45626 * rho 45626 * (-1)) =
      2 * (rho 45626 * rho 45627) := by
    rw [hd0, hd1, hd2]
    linear_combination r1248
  have hd4 : rho 45640 * (2 - (rho 45627 * rho 45627 + rho 45626 * rho 45626 * (-1))) =
      rho 45627 * rho 45627 - rho 45626 * rho 45626 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1249
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 45626, rho 45627⟩
    ⟨rho 45632, rho 45633⟩ ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 45639, rho 45640⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1250 rho ∧ Seg52.relationRow1251 rho ∧ Seg52.relationRow1252 rho ∧ Seg52.relationRow1253 rho ∧ Seg52.relationRow1254 rho ∧ Seg52.relationRow1255 rho ∧ Seg52.relationRow1256 rho ∧ Seg52.relationRow1257 rho ∧ Seg52.relationRow1258 rho ∧ Seg52.relationRow1259 rho ∧ Seg52.relationRow1260 rho ∧ Seg52.relationRow1261 rho ∧ Seg52.relationRow1262 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262⟩

theorem seg52In0_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45195 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45639, rho 45640⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 45639, rho 45640⟩
        ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 45652, rho 45653⟩ := by
  obtain ⟨r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262⟩ := seg52In0_rows27 rho h
  unfold Seg52.relationRow1250 at r1250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1250

  unfold Seg52.relationRow1251 at r1251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1251

  unfold Seg52.relationRow1252 at r1252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1252

  unfold Seg52.relationRow1253 at r1253

  unfold Seg52.relationRow1254 at r1254

  unfold Seg52.relationRow1255 at r1255

  unfold Seg52.relationRow1256 at r1256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1256

  unfold Seg52.relationRow1257 at r1257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1257

  unfold Seg52.relationRow1258 at r1258

  unfold Seg52.relationRow1259 at r1259

  unfold Seg52.relationRow1260 at r1260

  unfold Seg52.relationRow1261 at r1261

  unfold Seg52.relationRow1262 at r1262

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX28 rho = seg52In0AccX27 rho + rho 45647 := by
    unfold seg52In0AccX28 seg52In0AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 27]

    ring

  have hnexty : seg52In0AccY28 rho = seg52In0AccY27 rho + rho 45648 := by
    unfold seg52In0AccY28 seg52In0AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 27]

    ring

  have ha0 : (rho 45639 + rho 45640) * (seg52In0AccX27 rho + seg52In0AccY27 rho) = rho 45641 := by
    unfold seg52In0AccX27 seg52In0AccY27
    linear_combination r1250
  have ha1 : rho 45640 * seg52In0AccX27 rho = rho 45642 := by
    unfold seg52In0AccX27
    linear_combination r1251
  have ha2 : rho 45639 * seg52In0AccY27 rho = rho 45643 := by
    unfold seg52In0AccY27
    linear_combination r1252
  have ha3 : 3021 * rho 45642 * rho 45643 = rho 45644 := by
    linear_combination r1253
  have ha4 : rho 45645 * (1 + rho 45644) = rho 45642 + rho 45643 := by
    linear_combination r1254
  have ha5 : rho 45646 * (1 - rho 45644) = rho 45641 - rho 45642 - rho 45643 := by
    linear_combination r1255
  have haddx :
      rho 45645 * (1 + 3021 * (rho 45640 * seg52In0AccX27 rho) * (rho 45639 * seg52In0AccY27 rho)) =
        rho 45640 * seg52In0AccX27 rho + rho 45639 * seg52In0AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45646 * (1 - 3021 * (rho 45640 * seg52In0AccX27 rho) * (rho 45639 * seg52In0AccY27 rho)) =
        (-1) * (rho 45640 * seg52In0AccX27 rho) - rho 45639 * seg52In0AccY27 rho +
          (seg52In0AccY27 rho - seg52In0AccX27 rho * (-1)) * (rho 45639 + rho 45640) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45646 * (1 - rho 45644) = rho 45641 - rho 45642 - rho 45643 := ha5
      _ = (-1) * rho 45642 - rho 45643 + (seg52In0AccY27 rho - seg52In0AccX27 rho * (-1)) *
          (rho 45639 + rho 45640) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX28 rho = seg52In0AccX27 rho - Bool.toZMod bit * (seg52In0AccX27 rho - rho 45645) := by
    have hd : rho 45647 = Bool.toZMod bit * (rho 45645 - seg52In0AccX27 rho) := by
      rw [← hbit]
      unfold seg52In0AccX27
      linear_combination -r1256
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY28 rho = seg52In0AccY27 rho - Bool.toZMod bit * (seg52In0AccY27 rho - rho 45646) := by
    have hd : rho 45648 = Bool.toZMod bit * (rho 45646 - seg52In0AccY27 rho) := by
      rw [← hbit]
      unfold seg52In0AccY27
      linear_combination -r1257
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45639 * rho 45640 = rho 45649 := by linear_combination r1258
  have hd1 : rho 45639 * rho 45639 = rho 45650 := by linear_combination r1259
  have hd2 : rho 45640 * rho 45640 = rho 45651 := by linear_combination r1260
  have hd3 : rho 45652 * (rho 45640 * rho 45640 + rho 45639 * rho 45639 * (-1)) =
      2 * (rho 45639 * rho 45640) := by
    rw [hd0, hd1, hd2]
    linear_combination r1261
  have hd4 : rho 45653 * (2 - (rho 45640 * rho 45640 + rho 45639 * rho 45639 * (-1))) =
      rho 45640 * rho 45640 - rho 45639 * rho 45639 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1262
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 45639, rho 45640⟩
    ⟨rho 45645, rho 45646⟩ ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 45652, rho 45653⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1263 rho ∧ Seg52.relationRow1264 rho ∧ Seg52.relationRow1265 rho ∧ Seg52.relationRow1266 rho ∧ Seg52.relationRow1267 rho ∧ Seg52.relationRow1268 rho ∧ Seg52.relationRow1269 rho ∧ Seg52.relationRow1270 rho ∧ Seg52.relationRow1271 rho ∧ Seg52.relationRow1272 rho ∧ Seg52.relationRow1273 rho ∧ Seg52.relationRow1274 rho ∧ Seg52.relationRow1275 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p15, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, _, _, _, _⟩

  exact ⟨r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275⟩

theorem seg52In0_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45196 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45652, rho 45653⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 45652, rho 45653⟩
        ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 45665, rho 45666⟩ := by
  obtain ⟨r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275⟩ := seg52In0_rows28 rho h
  unfold Seg52.relationRow1263 at r1263

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1263

  unfold Seg52.relationRow1264 at r1264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1264

  unfold Seg52.relationRow1265 at r1265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1265

  unfold Seg52.relationRow1266 at r1266

  unfold Seg52.relationRow1267 at r1267

  unfold Seg52.relationRow1268 at r1268

  unfold Seg52.relationRow1269 at r1269

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1269

  unfold Seg52.relationRow1270 at r1270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1270

  unfold Seg52.relationRow1271 at r1271

  unfold Seg52.relationRow1272 at r1272

  unfold Seg52.relationRow1273 at r1273

  unfold Seg52.relationRow1274 at r1274

  unfold Seg52.relationRow1275 at r1275

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX29 rho = seg52In0AccX28 rho + rho 45660 := by
    unfold seg52In0AccX29 seg52In0AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 28]

    ring

  have hnexty : seg52In0AccY29 rho = seg52In0AccY28 rho + rho 45661 := by
    unfold seg52In0AccY29 seg52In0AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 28]

    ring

  have ha0 : (rho 45652 + rho 45653) * (seg52In0AccX28 rho + seg52In0AccY28 rho) = rho 45654 := by
    unfold seg52In0AccX28 seg52In0AccY28
    linear_combination r1263
  have ha1 : rho 45653 * seg52In0AccX28 rho = rho 45655 := by
    unfold seg52In0AccX28
    linear_combination r1264
  have ha2 : rho 45652 * seg52In0AccY28 rho = rho 45656 := by
    unfold seg52In0AccY28
    linear_combination r1265
  have ha3 : 3021 * rho 45655 * rho 45656 = rho 45657 := by
    linear_combination r1266
  have ha4 : rho 45658 * (1 + rho 45657) = rho 45655 + rho 45656 := by
    linear_combination r1267
  have ha5 : rho 45659 * (1 - rho 45657) = rho 45654 - rho 45655 - rho 45656 := by
    linear_combination r1268
  have haddx :
      rho 45658 * (1 + 3021 * (rho 45653 * seg52In0AccX28 rho) * (rho 45652 * seg52In0AccY28 rho)) =
        rho 45653 * seg52In0AccX28 rho + rho 45652 * seg52In0AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45659 * (1 - 3021 * (rho 45653 * seg52In0AccX28 rho) * (rho 45652 * seg52In0AccY28 rho)) =
        (-1) * (rho 45653 * seg52In0AccX28 rho) - rho 45652 * seg52In0AccY28 rho +
          (seg52In0AccY28 rho - seg52In0AccX28 rho * (-1)) * (rho 45652 + rho 45653) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45659 * (1 - rho 45657) = rho 45654 - rho 45655 - rho 45656 := ha5
      _ = (-1) * rho 45655 - rho 45656 + (seg52In0AccY28 rho - seg52In0AccX28 rho * (-1)) *
          (rho 45652 + rho 45653) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX29 rho = seg52In0AccX28 rho - Bool.toZMod bit * (seg52In0AccX28 rho - rho 45658) := by
    have hd : rho 45660 = Bool.toZMod bit * (rho 45658 - seg52In0AccX28 rho) := by
      rw [← hbit]
      unfold seg52In0AccX28
      linear_combination -r1269
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY29 rho = seg52In0AccY28 rho - Bool.toZMod bit * (seg52In0AccY28 rho - rho 45659) := by
    have hd : rho 45661 = Bool.toZMod bit * (rho 45659 - seg52In0AccY28 rho) := by
      rw [← hbit]
      unfold seg52In0AccY28
      linear_combination -r1270
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45652 * rho 45653 = rho 45662 := by linear_combination r1271
  have hd1 : rho 45652 * rho 45652 = rho 45663 := by linear_combination r1272
  have hd2 : rho 45653 * rho 45653 = rho 45664 := by linear_combination r1273
  have hd3 : rho 45665 * (rho 45653 * rho 45653 + rho 45652 * rho 45652 * (-1)) =
      2 * (rho 45652 * rho 45653) := by
    rw [hd0, hd1, hd2]
    linear_combination r1274
  have hd4 : rho 45666 * (2 - (rho 45653 * rho 45653 + rho 45652 * rho 45652 * (-1))) =
      rho 45653 * rho 45653 - rho 45652 * rho 45652 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1275
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 45652, rho 45653⟩
    ⟨rho 45658, rho 45659⟩ ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 45665, rho 45666⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1276 rho ∧ Seg52.relationRow1277 rho ∧ Seg52.relationRow1278 rho ∧ Seg52.relationRow1279 rho ∧ Seg52.relationRow1280 rho ∧ Seg52.relationRow1281 rho ∧ Seg52.relationRow1282 rho ∧ Seg52.relationRow1283 rho ∧ Seg52.relationRow1284 rho ∧ Seg52.relationRow1285 rho ∧ Seg52.relationRow1286 rho ∧ Seg52.relationRow1287 rho ∧ Seg52.relationRow1288 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p15, p16, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1276, r1277, r1278, r1279⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1276, r1277, r1278, r1279, r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288⟩

theorem seg52In0_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45197 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45665, rho 45666⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 45665, rho 45666⟩
        ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 45678, rho 45679⟩ := by
  obtain ⟨r1276, r1277, r1278, r1279, r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288⟩ := seg52In0_rows29 rho h
  unfold Seg52.relationRow1276 at r1276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1276

  unfold Seg52.relationRow1277 at r1277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1277

  unfold Seg52.relationRow1278 at r1278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1278

  unfold Seg52.relationRow1279 at r1279

  unfold Seg52.relationRow1280 at r1280

  unfold Seg52.relationRow1281 at r1281

  unfold Seg52.relationRow1282 at r1282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1282

  unfold Seg52.relationRow1283 at r1283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1283

  unfold Seg52.relationRow1284 at r1284

  unfold Seg52.relationRow1285 at r1285

  unfold Seg52.relationRow1286 at r1286

  unfold Seg52.relationRow1287 at r1287

  unfold Seg52.relationRow1288 at r1288

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX30 rho = seg52In0AccX29 rho + rho 45673 := by
    unfold seg52In0AccX30 seg52In0AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 29]

    ring

  have hnexty : seg52In0AccY30 rho = seg52In0AccY29 rho + rho 45674 := by
    unfold seg52In0AccY30 seg52In0AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 29]

    ring

  have ha0 : (rho 45665 + rho 45666) * (seg52In0AccX29 rho + seg52In0AccY29 rho) = rho 45667 := by
    unfold seg52In0AccX29 seg52In0AccY29
    linear_combination r1276
  have ha1 : rho 45666 * seg52In0AccX29 rho = rho 45668 := by
    unfold seg52In0AccX29
    linear_combination r1277
  have ha2 : rho 45665 * seg52In0AccY29 rho = rho 45669 := by
    unfold seg52In0AccY29
    linear_combination r1278
  have ha3 : 3021 * rho 45668 * rho 45669 = rho 45670 := by
    linear_combination r1279
  have ha4 : rho 45671 * (1 + rho 45670) = rho 45668 + rho 45669 := by
    linear_combination r1280
  have ha5 : rho 45672 * (1 - rho 45670) = rho 45667 - rho 45668 - rho 45669 := by
    linear_combination r1281
  have haddx :
      rho 45671 * (1 + 3021 * (rho 45666 * seg52In0AccX29 rho) * (rho 45665 * seg52In0AccY29 rho)) =
        rho 45666 * seg52In0AccX29 rho + rho 45665 * seg52In0AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45672 * (1 - 3021 * (rho 45666 * seg52In0AccX29 rho) * (rho 45665 * seg52In0AccY29 rho)) =
        (-1) * (rho 45666 * seg52In0AccX29 rho) - rho 45665 * seg52In0AccY29 rho +
          (seg52In0AccY29 rho - seg52In0AccX29 rho * (-1)) * (rho 45665 + rho 45666) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45672 * (1 - rho 45670) = rho 45667 - rho 45668 - rho 45669 := ha5
      _ = (-1) * rho 45668 - rho 45669 + (seg52In0AccY29 rho - seg52In0AccX29 rho * (-1)) *
          (rho 45665 + rho 45666) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX30 rho = seg52In0AccX29 rho - Bool.toZMod bit * (seg52In0AccX29 rho - rho 45671) := by
    have hd : rho 45673 = Bool.toZMod bit * (rho 45671 - seg52In0AccX29 rho) := by
      rw [← hbit]
      unfold seg52In0AccX29
      linear_combination -r1282
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY30 rho = seg52In0AccY29 rho - Bool.toZMod bit * (seg52In0AccY29 rho - rho 45672) := by
    have hd : rho 45674 = Bool.toZMod bit * (rho 45672 - seg52In0AccY29 rho) := by
      rw [← hbit]
      unfold seg52In0AccY29
      linear_combination -r1283
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45665 * rho 45666 = rho 45675 := by linear_combination r1284
  have hd1 : rho 45665 * rho 45665 = rho 45676 := by linear_combination r1285
  have hd2 : rho 45666 * rho 45666 = rho 45677 := by linear_combination r1286
  have hd3 : rho 45678 * (rho 45666 * rho 45666 + rho 45665 * rho 45665 * (-1)) =
      2 * (rho 45665 * rho 45666) := by
    rw [hd0, hd1, hd2]
    linear_combination r1287
  have hd4 : rho 45679 * (2 - (rho 45666 * rho 45666 + rho 45665 * rho 45665 * (-1))) =
      rho 45666 * rho 45666 - rho 45665 * rho 45665 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1288
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 45665, rho 45666⟩
    ⟨rho 45671, rho 45672⟩ ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 45678, rho 45679⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1289 rho ∧ Seg52.relationRow1290 rho ∧ Seg52.relationRow1291 rho ∧ Seg52.relationRow1292 rho ∧ Seg52.relationRow1293 rho ∧ Seg52.relationRow1294 rho ∧ Seg52.relationRow1295 rho ∧ Seg52.relationRow1296 rho ∧ Seg52.relationRow1297 rho ∧ Seg52.relationRow1298 rho ∧ Seg52.relationRow1299 rho ∧ Seg52.relationRow1300 rho ∧ Seg52.relationRow1301 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p16, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301⟩

theorem seg52In0_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45198 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45678, rho 45679⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 45678, rho 45679⟩
        ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 45691, rho 45692⟩ := by
  obtain ⟨r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301⟩ := seg52In0_rows30 rho h
  unfold Seg52.relationRow1289 at r1289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1289

  unfold Seg52.relationRow1290 at r1290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1290

  unfold Seg52.relationRow1291 at r1291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1291

  unfold Seg52.relationRow1292 at r1292

  unfold Seg52.relationRow1293 at r1293

  unfold Seg52.relationRow1294 at r1294

  unfold Seg52.relationRow1295 at r1295

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1295

  unfold Seg52.relationRow1296 at r1296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1296

  unfold Seg52.relationRow1297 at r1297

  unfold Seg52.relationRow1298 at r1298

  unfold Seg52.relationRow1299 at r1299

  unfold Seg52.relationRow1300 at r1300

  unfold Seg52.relationRow1301 at r1301

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX31 rho = seg52In0AccX30 rho + rho 45686 := by
    unfold seg52In0AccX31 seg52In0AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 30]

    ring

  have hnexty : seg52In0AccY31 rho = seg52In0AccY30 rho + rho 45687 := by
    unfold seg52In0AccY31 seg52In0AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 30]

    ring

  have ha0 : (rho 45678 + rho 45679) * (seg52In0AccX30 rho + seg52In0AccY30 rho) = rho 45680 := by
    unfold seg52In0AccX30 seg52In0AccY30
    linear_combination r1289
  have ha1 : rho 45679 * seg52In0AccX30 rho = rho 45681 := by
    unfold seg52In0AccX30
    linear_combination r1290
  have ha2 : rho 45678 * seg52In0AccY30 rho = rho 45682 := by
    unfold seg52In0AccY30
    linear_combination r1291
  have ha3 : 3021 * rho 45681 * rho 45682 = rho 45683 := by
    linear_combination r1292
  have ha4 : rho 45684 * (1 + rho 45683) = rho 45681 + rho 45682 := by
    linear_combination r1293
  have ha5 : rho 45685 * (1 - rho 45683) = rho 45680 - rho 45681 - rho 45682 := by
    linear_combination r1294
  have haddx :
      rho 45684 * (1 + 3021 * (rho 45679 * seg52In0AccX30 rho) * (rho 45678 * seg52In0AccY30 rho)) =
        rho 45679 * seg52In0AccX30 rho + rho 45678 * seg52In0AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45685 * (1 - 3021 * (rho 45679 * seg52In0AccX30 rho) * (rho 45678 * seg52In0AccY30 rho)) =
        (-1) * (rho 45679 * seg52In0AccX30 rho) - rho 45678 * seg52In0AccY30 rho +
          (seg52In0AccY30 rho - seg52In0AccX30 rho * (-1)) * (rho 45678 + rho 45679) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45685 * (1 - rho 45683) = rho 45680 - rho 45681 - rho 45682 := ha5
      _ = (-1) * rho 45681 - rho 45682 + (seg52In0AccY30 rho - seg52In0AccX30 rho * (-1)) *
          (rho 45678 + rho 45679) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX31 rho = seg52In0AccX30 rho - Bool.toZMod bit * (seg52In0AccX30 rho - rho 45684) := by
    have hd : rho 45686 = Bool.toZMod bit * (rho 45684 - seg52In0AccX30 rho) := by
      rw [← hbit]
      unfold seg52In0AccX30
      linear_combination -r1295
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY31 rho = seg52In0AccY30 rho - Bool.toZMod bit * (seg52In0AccY30 rho - rho 45685) := by
    have hd : rho 45687 = Bool.toZMod bit * (rho 45685 - seg52In0AccY30 rho) := by
      rw [← hbit]
      unfold seg52In0AccY30
      linear_combination -r1296
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45678 * rho 45679 = rho 45688 := by linear_combination r1297
  have hd1 : rho 45678 * rho 45678 = rho 45689 := by linear_combination r1298
  have hd2 : rho 45679 * rho 45679 = rho 45690 := by linear_combination r1299
  have hd3 : rho 45691 * (rho 45679 * rho 45679 + rho 45678 * rho 45678 * (-1)) =
      2 * (rho 45678 * rho 45679) := by
    rw [hd0, hd1, hd2]
    linear_combination r1300
  have hd4 : rho 45692 * (2 - (rho 45679 * rho 45679 + rho 45678 * rho 45678 * (-1))) =
      rho 45679 * rho 45679 - rho 45678 * rho 45678 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1301
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 45678, rho 45679⟩
    ⟨rho 45684, rho 45685⟩ ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 45691, rho 45692⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1302 rho ∧ Seg52.relationRow1303 rho ∧ Seg52.relationRow1304 rho ∧ Seg52.relationRow1305 rho ∧ Seg52.relationRow1306 rho ∧ Seg52.relationRow1307 rho ∧ Seg52.relationRow1308 rho ∧ Seg52.relationRow1309 rho ∧ Seg52.relationRow1310 rho ∧ Seg52.relationRow1311 rho ∧ Seg52.relationRow1312 rho ∧ Seg52.relationRow1313 rho ∧ Seg52.relationRow1314 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p16, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314⟩

theorem seg52In0_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45199 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45691, rho 45692⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 45691, rho 45692⟩
        ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 45704, rho 45705⟩ := by
  obtain ⟨r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314⟩ := seg52In0_rows31 rho h
  unfold Seg52.relationRow1302 at r1302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1302

  unfold Seg52.relationRow1303 at r1303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1303

  unfold Seg52.relationRow1304 at r1304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1304

  unfold Seg52.relationRow1305 at r1305

  unfold Seg52.relationRow1306 at r1306

  unfold Seg52.relationRow1307 at r1307

  unfold Seg52.relationRow1308 at r1308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1308

  unfold Seg52.relationRow1309 at r1309

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1309

  unfold Seg52.relationRow1310 at r1310

  unfold Seg52.relationRow1311 at r1311

  unfold Seg52.relationRow1312 at r1312

  unfold Seg52.relationRow1313 at r1313

  unfold Seg52.relationRow1314 at r1314

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX32 rho = seg52In0AccX31 rho + rho 45699 := by
    unfold seg52In0AccX32 seg52In0AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 31]

    ring

  have hnexty : seg52In0AccY32 rho = seg52In0AccY31 rho + rho 45700 := by
    unfold seg52In0AccY32 seg52In0AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 31]

    ring

  have ha0 : (rho 45691 + rho 45692) * (seg52In0AccX31 rho + seg52In0AccY31 rho) = rho 45693 := by
    unfold seg52In0AccX31 seg52In0AccY31
    linear_combination r1302
  have ha1 : rho 45692 * seg52In0AccX31 rho = rho 45694 := by
    unfold seg52In0AccX31
    linear_combination r1303
  have ha2 : rho 45691 * seg52In0AccY31 rho = rho 45695 := by
    unfold seg52In0AccY31
    linear_combination r1304
  have ha3 : 3021 * rho 45694 * rho 45695 = rho 45696 := by
    linear_combination r1305
  have ha4 : rho 45697 * (1 + rho 45696) = rho 45694 + rho 45695 := by
    linear_combination r1306
  have ha5 : rho 45698 * (1 - rho 45696) = rho 45693 - rho 45694 - rho 45695 := by
    linear_combination r1307
  have haddx :
      rho 45697 * (1 + 3021 * (rho 45692 * seg52In0AccX31 rho) * (rho 45691 * seg52In0AccY31 rho)) =
        rho 45692 * seg52In0AccX31 rho + rho 45691 * seg52In0AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45698 * (1 - 3021 * (rho 45692 * seg52In0AccX31 rho) * (rho 45691 * seg52In0AccY31 rho)) =
        (-1) * (rho 45692 * seg52In0AccX31 rho) - rho 45691 * seg52In0AccY31 rho +
          (seg52In0AccY31 rho - seg52In0AccX31 rho * (-1)) * (rho 45691 + rho 45692) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45698 * (1 - rho 45696) = rho 45693 - rho 45694 - rho 45695 := ha5
      _ = (-1) * rho 45694 - rho 45695 + (seg52In0AccY31 rho - seg52In0AccX31 rho * (-1)) *
          (rho 45691 + rho 45692) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX32 rho = seg52In0AccX31 rho - Bool.toZMod bit * (seg52In0AccX31 rho - rho 45697) := by
    have hd : rho 45699 = Bool.toZMod bit * (rho 45697 - seg52In0AccX31 rho) := by
      rw [← hbit]
      unfold seg52In0AccX31
      linear_combination -r1308
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY32 rho = seg52In0AccY31 rho - Bool.toZMod bit * (seg52In0AccY31 rho - rho 45698) := by
    have hd : rho 45700 = Bool.toZMod bit * (rho 45698 - seg52In0AccY31 rho) := by
      rw [← hbit]
      unfold seg52In0AccY31
      linear_combination -r1309
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45691 * rho 45692 = rho 45701 := by linear_combination r1310
  have hd1 : rho 45691 * rho 45691 = rho 45702 := by linear_combination r1311
  have hd2 : rho 45692 * rho 45692 = rho 45703 := by linear_combination r1312
  have hd3 : rho 45704 * (rho 45692 * rho 45692 + rho 45691 * rho 45691 * (-1)) =
      2 * (rho 45691 * rho 45692) := by
    rw [hd0, hd1, hd2]
    linear_combination r1313
  have hd4 : rho 45705 * (2 - (rho 45692 * rho 45692 + rho 45691 * rho 45691 * (-1))) =
      rho 45692 * rho 45692 - rho 45691 * rho 45691 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1314
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 45691, rho 45692⟩
    ⟨rho 45697, rho 45698⟩ ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 45704, rho 45705⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1315 rho ∧ Seg52.relationRow1316 rho ∧ Seg52.relationRow1317 rho ∧ Seg52.relationRow1318 rho ∧ Seg52.relationRow1319 rho ∧ Seg52.relationRow1320 rho ∧ Seg52.relationRow1321 rho ∧ Seg52.relationRow1322 rho ∧ Seg52.relationRow1323 rho ∧ Seg52.relationRow1324 rho ∧ Seg52.relationRow1325 rho ∧ Seg52.relationRow1326 rho ∧ Seg52.relationRow1327 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p16, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327⟩

theorem seg52In0_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45200 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45704, rho 45705⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 45704, rho 45705⟩
        ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 45717, rho 45718⟩ := by
  obtain ⟨r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327⟩ := seg52In0_rows32 rho h
  unfold Seg52.relationRow1315 at r1315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1315

  unfold Seg52.relationRow1316 at r1316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1316

  unfold Seg52.relationRow1317 at r1317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1317

  unfold Seg52.relationRow1318 at r1318

  unfold Seg52.relationRow1319 at r1319

  unfold Seg52.relationRow1320 at r1320

  unfold Seg52.relationRow1321 at r1321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1321

  unfold Seg52.relationRow1322 at r1322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1322

  unfold Seg52.relationRow1323 at r1323

  unfold Seg52.relationRow1324 at r1324

  unfold Seg52.relationRow1325 at r1325

  unfold Seg52.relationRow1326 at r1326

  unfold Seg52.relationRow1327 at r1327

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX33 rho = seg52In0AccX32 rho + rho 45712 := by
    unfold seg52In0AccX33 seg52In0AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 32]

    ring

  have hnexty : seg52In0AccY33 rho = seg52In0AccY32 rho + rho 45713 := by
    unfold seg52In0AccY33 seg52In0AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 32]

    ring

  have ha0 : (rho 45704 + rho 45705) * (seg52In0AccX32 rho + seg52In0AccY32 rho) = rho 45706 := by
    unfold seg52In0AccX32 seg52In0AccY32
    linear_combination r1315
  have ha1 : rho 45705 * seg52In0AccX32 rho = rho 45707 := by
    unfold seg52In0AccX32
    linear_combination r1316
  have ha2 : rho 45704 * seg52In0AccY32 rho = rho 45708 := by
    unfold seg52In0AccY32
    linear_combination r1317
  have ha3 : 3021 * rho 45707 * rho 45708 = rho 45709 := by
    linear_combination r1318
  have ha4 : rho 45710 * (1 + rho 45709) = rho 45707 + rho 45708 := by
    linear_combination r1319
  have ha5 : rho 45711 * (1 - rho 45709) = rho 45706 - rho 45707 - rho 45708 := by
    linear_combination r1320
  have haddx :
      rho 45710 * (1 + 3021 * (rho 45705 * seg52In0AccX32 rho) * (rho 45704 * seg52In0AccY32 rho)) =
        rho 45705 * seg52In0AccX32 rho + rho 45704 * seg52In0AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45711 * (1 - 3021 * (rho 45705 * seg52In0AccX32 rho) * (rho 45704 * seg52In0AccY32 rho)) =
        (-1) * (rho 45705 * seg52In0AccX32 rho) - rho 45704 * seg52In0AccY32 rho +
          (seg52In0AccY32 rho - seg52In0AccX32 rho * (-1)) * (rho 45704 + rho 45705) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45711 * (1 - rho 45709) = rho 45706 - rho 45707 - rho 45708 := ha5
      _ = (-1) * rho 45707 - rho 45708 + (seg52In0AccY32 rho - seg52In0AccX32 rho * (-1)) *
          (rho 45704 + rho 45705) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX33 rho = seg52In0AccX32 rho - Bool.toZMod bit * (seg52In0AccX32 rho - rho 45710) := by
    have hd : rho 45712 = Bool.toZMod bit * (rho 45710 - seg52In0AccX32 rho) := by
      rw [← hbit]
      unfold seg52In0AccX32
      linear_combination -r1321
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY33 rho = seg52In0AccY32 rho - Bool.toZMod bit * (seg52In0AccY32 rho - rho 45711) := by
    have hd : rho 45713 = Bool.toZMod bit * (rho 45711 - seg52In0AccY32 rho) := by
      rw [← hbit]
      unfold seg52In0AccY32
      linear_combination -r1322
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45704 * rho 45705 = rho 45714 := by linear_combination r1323
  have hd1 : rho 45704 * rho 45704 = rho 45715 := by linear_combination r1324
  have hd2 : rho 45705 * rho 45705 = rho 45716 := by linear_combination r1325
  have hd3 : rho 45717 * (rho 45705 * rho 45705 + rho 45704 * rho 45704 * (-1)) =
      2 * (rho 45704 * rho 45705) := by
    rw [hd0, hd1, hd2]
    linear_combination r1326
  have hd4 : rho 45718 * (2 - (rho 45705 * rho 45705 + rho 45704 * rho 45704 * (-1))) =
      rho 45705 * rho 45705 - rho 45704 * rho 45704 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1327
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 45704, rho 45705⟩
    ⟨rho 45710, rho 45711⟩ ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 45717, rho 45718⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg52In0_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg52In0_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg52In0_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg52In0_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg52In0_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg52In0_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg52In0_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg52In0_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg52In0_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg52In0_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
