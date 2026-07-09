import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1185 rho ∧ Seg48.relationRow1186 rho ∧ Seg48.relationRow1187 rho ∧ Seg48.relationRow1188 rho ∧ Seg48.relationRow1189 rho ∧ Seg48.relationRow1190 rho ∧ Seg48.relationRow1191 rho ∧ Seg48.relationRow1192 rho ∧ Seg48.relationRow1193 rho ∧ Seg48.relationRow1194 rho ∧ Seg48.relationRow1195 rho ∧ Seg48.relationRow1196 rho ∧ Seg48.relationRow1197 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, _, _⟩

  exact ⟨r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197⟩

theorem seg48In0_rung22 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33558 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX22 rho, seg48In0AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33942, rho 33943⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX22 rho, seg48In0AccY22 rho⟩ ⟨rho 33942, rho 33943⟩
        ⟨seg48In0AccX23 rho, seg48In0AccY23 rho⟩ ⟨rho 33955, rho 33956⟩ := by
  obtain ⟨r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197⟩ := seg48In0_rows22 rho h
  unfold Seg48.relationRow1185 at r1185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1185

  unfold Seg48.relationRow1186 at r1186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1186

  unfold Seg48.relationRow1187 at r1187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1187

  unfold Seg48.relationRow1188 at r1188

  unfold Seg48.relationRow1189 at r1189

  unfold Seg48.relationRow1190 at r1190

  unfold Seg48.relationRow1191 at r1191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1191

  unfold Seg48.relationRow1192 at r1192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1192

  unfold Seg48.relationRow1193 at r1193

  unfold Seg48.relationRow1194 at r1194

  unfold Seg48.relationRow1195 at r1195

  unfold Seg48.relationRow1196 at r1196

  unfold Seg48.relationRow1197 at r1197

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX23 rho = seg48In0AccX22 rho + rho 33950 := by
    unfold seg48In0AccX23 seg48In0AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 22]

    ring

  have hnexty : seg48In0AccY23 rho = seg48In0AccY22 rho + rho 33951 := by
    unfold seg48In0AccY23 seg48In0AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 22]

    ring

  have ha0 : (rho 33942 + rho 33943) * (seg48In0AccX22 rho + seg48In0AccY22 rho) = rho 33944 := by
    unfold seg48In0AccX22 seg48In0AccY22
    linear_combination r1185
  have ha1 : rho 33943 * seg48In0AccX22 rho = rho 33945 := by
    unfold seg48In0AccX22
    linear_combination r1186
  have ha2 : rho 33942 * seg48In0AccY22 rho = rho 33946 := by
    unfold seg48In0AccY22
    linear_combination r1187
  have ha3 : 3021 * rho 33945 * rho 33946 = rho 33947 := by
    linear_combination r1188
  have ha4 : rho 33948 * (1 + rho 33947) = rho 33945 + rho 33946 := by
    linear_combination r1189
  have ha5 : rho 33949 * (1 - rho 33947) = rho 33944 - rho 33945 - rho 33946 := by
    linear_combination r1190
  have haddx :
      rho 33948 * (1 + 3021 * (rho 33943 * seg48In0AccX22 rho) * (rho 33942 * seg48In0AccY22 rho)) =
        rho 33943 * seg48In0AccX22 rho + rho 33942 * seg48In0AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33949 * (1 - 3021 * (rho 33943 * seg48In0AccX22 rho) * (rho 33942 * seg48In0AccY22 rho)) =
        (-1) * (rho 33943 * seg48In0AccX22 rho) - rho 33942 * seg48In0AccY22 rho +
          (seg48In0AccY22 rho - seg48In0AccX22 rho * (-1)) * (rho 33942 + rho 33943) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33949 * (1 - rho 33947) = rho 33944 - rho 33945 - rho 33946 := ha5
      _ = (-1) * rho 33945 - rho 33946 + (seg48In0AccY22 rho - seg48In0AccX22 rho * (-1)) *
          (rho 33942 + rho 33943) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX23 rho = seg48In0AccX22 rho - Bool.toZMod bit * (seg48In0AccX22 rho - rho 33948) := by
    have hd : rho 33950 = Bool.toZMod bit * (rho 33948 - seg48In0AccX22 rho) := by
      rw [← hbit]
      unfold seg48In0AccX22
      linear_combination -r1191
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY23 rho = seg48In0AccY22 rho - Bool.toZMod bit * (seg48In0AccY22 rho - rho 33949) := by
    have hd : rho 33951 = Bool.toZMod bit * (rho 33949 - seg48In0AccY22 rho) := by
      rw [← hbit]
      unfold seg48In0AccY22
      linear_combination -r1192
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33942 * rho 33943 = rho 33952 := by linear_combination r1193
  have hd1 : rho 33942 * rho 33942 = rho 33953 := by linear_combination r1194
  have hd2 : rho 33943 * rho 33943 = rho 33954 := by linear_combination r1195
  have hd3 : rho 33955 * (rho 33943 * rho 33943 + rho 33942 * rho 33942 * (-1)) =
      2 * (rho 33942 * rho 33943) := by
    rw [hd0, hd1, hd2]
    linear_combination r1196
  have hd4 : rho 33956 * (2 - (rho 33943 * rho 33943 + rho 33942 * rho 33942 * (-1))) =
      rho 33943 * rho 33943 - rho 33942 * rho 33942 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1197
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX22 rho, seg48In0AccY22 rho⟩ ⟨rho 33942, rho 33943⟩
    ⟨rho 33948, rho 33949⟩ ⟨seg48In0AccX23 rho, seg48In0AccY23 rho⟩ ⟨rho 33955, rho 33956⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1198 rho ∧ Seg48.relationRow1199 rho ∧ Seg48.relationRow1200 rho ∧ Seg48.relationRow1201 rho ∧ Seg48.relationRow1202 rho ∧ Seg48.relationRow1203 rho ∧ Seg48.relationRow1204 rho ∧ Seg48.relationRow1205 rho ∧ Seg48.relationRow1206 rho ∧ Seg48.relationRow1207 rho ∧ Seg48.relationRow1208 rho ∧ Seg48.relationRow1209 rho ∧ Seg48.relationRow1210 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1198, r1199⟩

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1198, r1199, r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210⟩

theorem seg48In0_rung23 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33559 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX23 rho, seg48In0AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33955, rho 33956⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX23 rho, seg48In0AccY23 rho⟩ ⟨rho 33955, rho 33956⟩
        ⟨seg48In0AccX24 rho, seg48In0AccY24 rho⟩ ⟨rho 33968, rho 33969⟩ := by
  obtain ⟨r1198, r1199, r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210⟩ := seg48In0_rows23 rho h
  unfold Seg48.relationRow1198 at r1198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1198

  unfold Seg48.relationRow1199 at r1199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1199

  unfold Seg48.relationRow1200 at r1200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1200

  unfold Seg48.relationRow1201 at r1201

  unfold Seg48.relationRow1202 at r1202

  unfold Seg48.relationRow1203 at r1203

  unfold Seg48.relationRow1204 at r1204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1204

  unfold Seg48.relationRow1205 at r1205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1205

  unfold Seg48.relationRow1206 at r1206

  unfold Seg48.relationRow1207 at r1207

  unfold Seg48.relationRow1208 at r1208

  unfold Seg48.relationRow1209 at r1209

  unfold Seg48.relationRow1210 at r1210

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX24 rho = seg48In0AccX23 rho + rho 33963 := by
    unfold seg48In0AccX24 seg48In0AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 23]

    ring

  have hnexty : seg48In0AccY24 rho = seg48In0AccY23 rho + rho 33964 := by
    unfold seg48In0AccY24 seg48In0AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 23]

    ring

  have ha0 : (rho 33955 + rho 33956) * (seg48In0AccX23 rho + seg48In0AccY23 rho) = rho 33957 := by
    unfold seg48In0AccX23 seg48In0AccY23
    linear_combination r1198
  have ha1 : rho 33956 * seg48In0AccX23 rho = rho 33958 := by
    unfold seg48In0AccX23
    linear_combination r1199
  have ha2 : rho 33955 * seg48In0AccY23 rho = rho 33959 := by
    unfold seg48In0AccY23
    linear_combination r1200
  have ha3 : 3021 * rho 33958 * rho 33959 = rho 33960 := by
    linear_combination r1201
  have ha4 : rho 33961 * (1 + rho 33960) = rho 33958 + rho 33959 := by
    linear_combination r1202
  have ha5 : rho 33962 * (1 - rho 33960) = rho 33957 - rho 33958 - rho 33959 := by
    linear_combination r1203
  have haddx :
      rho 33961 * (1 + 3021 * (rho 33956 * seg48In0AccX23 rho) * (rho 33955 * seg48In0AccY23 rho)) =
        rho 33956 * seg48In0AccX23 rho + rho 33955 * seg48In0AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33962 * (1 - 3021 * (rho 33956 * seg48In0AccX23 rho) * (rho 33955 * seg48In0AccY23 rho)) =
        (-1) * (rho 33956 * seg48In0AccX23 rho) - rho 33955 * seg48In0AccY23 rho +
          (seg48In0AccY23 rho - seg48In0AccX23 rho * (-1)) * (rho 33955 + rho 33956) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33962 * (1 - rho 33960) = rho 33957 - rho 33958 - rho 33959 := ha5
      _ = (-1) * rho 33958 - rho 33959 + (seg48In0AccY23 rho - seg48In0AccX23 rho * (-1)) *
          (rho 33955 + rho 33956) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX24 rho = seg48In0AccX23 rho - Bool.toZMod bit * (seg48In0AccX23 rho - rho 33961) := by
    have hd : rho 33963 = Bool.toZMod bit * (rho 33961 - seg48In0AccX23 rho) := by
      rw [← hbit]
      unfold seg48In0AccX23
      linear_combination -r1204
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY24 rho = seg48In0AccY23 rho - Bool.toZMod bit * (seg48In0AccY23 rho - rho 33962) := by
    have hd : rho 33964 = Bool.toZMod bit * (rho 33962 - seg48In0AccY23 rho) := by
      rw [← hbit]
      unfold seg48In0AccY23
      linear_combination -r1205
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33955 * rho 33956 = rho 33965 := by linear_combination r1206
  have hd1 : rho 33955 * rho 33955 = rho 33966 := by linear_combination r1207
  have hd2 : rho 33956 * rho 33956 = rho 33967 := by linear_combination r1208
  have hd3 : rho 33968 * (rho 33956 * rho 33956 + rho 33955 * rho 33955 * (-1)) =
      2 * (rho 33955 * rho 33956) := by
    rw [hd0, hd1, hd2]
    linear_combination r1209
  have hd4 : rho 33969 * (2 - (rho 33956 * rho 33956 + rho 33955 * rho 33955 * (-1))) =
      rho 33956 * rho 33956 - rho 33955 * rho 33955 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1210
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX23 rho, seg48In0AccY23 rho⟩ ⟨rho 33955, rho 33956⟩
    ⟨rho 33961, rho 33962⟩ ⟨seg48In0AccX24 rho, seg48In0AccY24 rho⟩ ⟨rho 33968, rho 33969⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1211 rho ∧ Seg48.relationRow1212 rho ∧ Seg48.relationRow1213 rho ∧ Seg48.relationRow1214 rho ∧ Seg48.relationRow1215 rho ∧ Seg48.relationRow1216 rho ∧ Seg48.relationRow1217 rho ∧ Seg48.relationRow1218 rho ∧ Seg48.relationRow1219 rho ∧ Seg48.relationRow1220 rho ∧ Seg48.relationRow1221 rho ∧ Seg48.relationRow1222 rho ∧ Seg48.relationRow1223 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223⟩

theorem seg48In0_rung24 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33560 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX24 rho, seg48In0AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33968, rho 33969⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX24 rho, seg48In0AccY24 rho⟩ ⟨rho 33968, rho 33969⟩
        ⟨seg48In0AccX25 rho, seg48In0AccY25 rho⟩ ⟨rho 33981, rho 33982⟩ := by
  obtain ⟨r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223⟩ := seg48In0_rows24 rho h
  unfold Seg48.relationRow1211 at r1211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1211

  unfold Seg48.relationRow1212 at r1212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1212

  unfold Seg48.relationRow1213 at r1213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1213

  unfold Seg48.relationRow1214 at r1214

  unfold Seg48.relationRow1215 at r1215

  unfold Seg48.relationRow1216 at r1216

  unfold Seg48.relationRow1217 at r1217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1217

  unfold Seg48.relationRow1218 at r1218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1218

  unfold Seg48.relationRow1219 at r1219

  unfold Seg48.relationRow1220 at r1220

  unfold Seg48.relationRow1221 at r1221

  unfold Seg48.relationRow1222 at r1222

  unfold Seg48.relationRow1223 at r1223

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX25 rho = seg48In0AccX24 rho + rho 33976 := by
    unfold seg48In0AccX25 seg48In0AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 24]

    ring

  have hnexty : seg48In0AccY25 rho = seg48In0AccY24 rho + rho 33977 := by
    unfold seg48In0AccY25 seg48In0AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 24]

    ring

  have ha0 : (rho 33968 + rho 33969) * (seg48In0AccX24 rho + seg48In0AccY24 rho) = rho 33970 := by
    unfold seg48In0AccX24 seg48In0AccY24
    linear_combination r1211
  have ha1 : rho 33969 * seg48In0AccX24 rho = rho 33971 := by
    unfold seg48In0AccX24
    linear_combination r1212
  have ha2 : rho 33968 * seg48In0AccY24 rho = rho 33972 := by
    unfold seg48In0AccY24
    linear_combination r1213
  have ha3 : 3021 * rho 33971 * rho 33972 = rho 33973 := by
    linear_combination r1214
  have ha4 : rho 33974 * (1 + rho 33973) = rho 33971 + rho 33972 := by
    linear_combination r1215
  have ha5 : rho 33975 * (1 - rho 33973) = rho 33970 - rho 33971 - rho 33972 := by
    linear_combination r1216
  have haddx :
      rho 33974 * (1 + 3021 * (rho 33969 * seg48In0AccX24 rho) * (rho 33968 * seg48In0AccY24 rho)) =
        rho 33969 * seg48In0AccX24 rho + rho 33968 * seg48In0AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33975 * (1 - 3021 * (rho 33969 * seg48In0AccX24 rho) * (rho 33968 * seg48In0AccY24 rho)) =
        (-1) * (rho 33969 * seg48In0AccX24 rho) - rho 33968 * seg48In0AccY24 rho +
          (seg48In0AccY24 rho - seg48In0AccX24 rho * (-1)) * (rho 33968 + rho 33969) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33975 * (1 - rho 33973) = rho 33970 - rho 33971 - rho 33972 := ha5
      _ = (-1) * rho 33971 - rho 33972 + (seg48In0AccY24 rho - seg48In0AccX24 rho * (-1)) *
          (rho 33968 + rho 33969) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX25 rho = seg48In0AccX24 rho - Bool.toZMod bit * (seg48In0AccX24 rho - rho 33974) := by
    have hd : rho 33976 = Bool.toZMod bit * (rho 33974 - seg48In0AccX24 rho) := by
      rw [← hbit]
      unfold seg48In0AccX24
      linear_combination -r1217
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY25 rho = seg48In0AccY24 rho - Bool.toZMod bit * (seg48In0AccY24 rho - rho 33975) := by
    have hd : rho 33977 = Bool.toZMod bit * (rho 33975 - seg48In0AccY24 rho) := by
      rw [← hbit]
      unfold seg48In0AccY24
      linear_combination -r1218
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33968 * rho 33969 = rho 33978 := by linear_combination r1219
  have hd1 : rho 33968 * rho 33968 = rho 33979 := by linear_combination r1220
  have hd2 : rho 33969 * rho 33969 = rho 33980 := by linear_combination r1221
  have hd3 : rho 33981 * (rho 33969 * rho 33969 + rho 33968 * rho 33968 * (-1)) =
      2 * (rho 33968 * rho 33969) := by
    rw [hd0, hd1, hd2]
    linear_combination r1222
  have hd4 : rho 33982 * (2 - (rho 33969 * rho 33969 + rho 33968 * rho 33968 * (-1))) =
      rho 33969 * rho 33969 - rho 33968 * rho 33968 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1223
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX24 rho, seg48In0AccY24 rho⟩ ⟨rho 33968, rho 33969⟩
    ⟨rho 33974, rho 33975⟩ ⟨seg48In0AccX25 rho, seg48In0AccY25 rho⟩ ⟨rho 33981, rho 33982⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1224 rho ∧ Seg48.relationRow1225 rho ∧ Seg48.relationRow1226 rho ∧ Seg48.relationRow1227 rho ∧ Seg48.relationRow1228 rho ∧ Seg48.relationRow1229 rho ∧ Seg48.relationRow1230 rho ∧ Seg48.relationRow1231 rho ∧ Seg48.relationRow1232 rho ∧ Seg48.relationRow1233 rho ∧ Seg48.relationRow1234 rho ∧ Seg48.relationRow1235 rho ∧ Seg48.relationRow1236 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236⟩

theorem seg48In0_rung25 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33561 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX25 rho, seg48In0AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33981, rho 33982⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX25 rho, seg48In0AccY25 rho⟩ ⟨rho 33981, rho 33982⟩
        ⟨seg48In0AccX26 rho, seg48In0AccY26 rho⟩ ⟨rho 33994, rho 33995⟩ := by
  obtain ⟨r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236⟩ := seg48In0_rows25 rho h
  unfold Seg48.relationRow1224 at r1224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1224

  unfold Seg48.relationRow1225 at r1225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1225

  unfold Seg48.relationRow1226 at r1226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1226

  unfold Seg48.relationRow1227 at r1227

  unfold Seg48.relationRow1228 at r1228

  unfold Seg48.relationRow1229 at r1229

  unfold Seg48.relationRow1230 at r1230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1230

  unfold Seg48.relationRow1231 at r1231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1231

  unfold Seg48.relationRow1232 at r1232

  unfold Seg48.relationRow1233 at r1233

  unfold Seg48.relationRow1234 at r1234

  unfold Seg48.relationRow1235 at r1235

  unfold Seg48.relationRow1236 at r1236

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX26 rho = seg48In0AccX25 rho + rho 33989 := by
    unfold seg48In0AccX26 seg48In0AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 25]

    ring

  have hnexty : seg48In0AccY26 rho = seg48In0AccY25 rho + rho 33990 := by
    unfold seg48In0AccY26 seg48In0AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 25]

    ring

  have ha0 : (rho 33981 + rho 33982) * (seg48In0AccX25 rho + seg48In0AccY25 rho) = rho 33983 := by
    unfold seg48In0AccX25 seg48In0AccY25
    linear_combination r1224
  have ha1 : rho 33982 * seg48In0AccX25 rho = rho 33984 := by
    unfold seg48In0AccX25
    linear_combination r1225
  have ha2 : rho 33981 * seg48In0AccY25 rho = rho 33985 := by
    unfold seg48In0AccY25
    linear_combination r1226
  have ha3 : 3021 * rho 33984 * rho 33985 = rho 33986 := by
    linear_combination r1227
  have ha4 : rho 33987 * (1 + rho 33986) = rho 33984 + rho 33985 := by
    linear_combination r1228
  have ha5 : rho 33988 * (1 - rho 33986) = rho 33983 - rho 33984 - rho 33985 := by
    linear_combination r1229
  have haddx :
      rho 33987 * (1 + 3021 * (rho 33982 * seg48In0AccX25 rho) * (rho 33981 * seg48In0AccY25 rho)) =
        rho 33982 * seg48In0AccX25 rho + rho 33981 * seg48In0AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33988 * (1 - 3021 * (rho 33982 * seg48In0AccX25 rho) * (rho 33981 * seg48In0AccY25 rho)) =
        (-1) * (rho 33982 * seg48In0AccX25 rho) - rho 33981 * seg48In0AccY25 rho +
          (seg48In0AccY25 rho - seg48In0AccX25 rho * (-1)) * (rho 33981 + rho 33982) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33988 * (1 - rho 33986) = rho 33983 - rho 33984 - rho 33985 := ha5
      _ = (-1) * rho 33984 - rho 33985 + (seg48In0AccY25 rho - seg48In0AccX25 rho * (-1)) *
          (rho 33981 + rho 33982) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX26 rho = seg48In0AccX25 rho - Bool.toZMod bit * (seg48In0AccX25 rho - rho 33987) := by
    have hd : rho 33989 = Bool.toZMod bit * (rho 33987 - seg48In0AccX25 rho) := by
      rw [← hbit]
      unfold seg48In0AccX25
      linear_combination -r1230
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY26 rho = seg48In0AccY25 rho - Bool.toZMod bit * (seg48In0AccY25 rho - rho 33988) := by
    have hd : rho 33990 = Bool.toZMod bit * (rho 33988 - seg48In0AccY25 rho) := by
      rw [← hbit]
      unfold seg48In0AccY25
      linear_combination -r1231
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33981 * rho 33982 = rho 33991 := by linear_combination r1232
  have hd1 : rho 33981 * rho 33981 = rho 33992 := by linear_combination r1233
  have hd2 : rho 33982 * rho 33982 = rho 33993 := by linear_combination r1234
  have hd3 : rho 33994 * (rho 33982 * rho 33982 + rho 33981 * rho 33981 * (-1)) =
      2 * (rho 33981 * rho 33982) := by
    rw [hd0, hd1, hd2]
    linear_combination r1235
  have hd4 : rho 33995 * (2 - (rho 33982 * rho 33982 + rho 33981 * rho 33981 * (-1))) =
      rho 33982 * rho 33982 - rho 33981 * rho 33981 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1236
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX25 rho, seg48In0AccY25 rho⟩ ⟨rho 33981, rho 33982⟩
    ⟨rho 33987, rho 33988⟩ ⟨seg48In0AccX26 rho, seg48In0AccY26 rho⟩ ⟨rho 33994, rho 33995⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1237 rho ∧ Seg48.relationRow1238 rho ∧ Seg48.relationRow1239 rho ∧ Seg48.relationRow1240 rho ∧ Seg48.relationRow1241 rho ∧ Seg48.relationRow1242 rho ∧ Seg48.relationRow1243 rho ∧ Seg48.relationRow1244 rho ∧ Seg48.relationRow1245 rho ∧ Seg48.relationRow1246 rho ∧ Seg48.relationRow1247 rho ∧ Seg48.relationRow1248 rho ∧ Seg48.relationRow1249 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249⟩

theorem seg48In0_rung26 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33562 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX26 rho, seg48In0AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33994, rho 33995⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX26 rho, seg48In0AccY26 rho⟩ ⟨rho 33994, rho 33995⟩
        ⟨seg48In0AccX27 rho, seg48In0AccY27 rho⟩ ⟨rho 34007, rho 34008⟩ := by
  obtain ⟨r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249⟩ := seg48In0_rows26 rho h
  unfold Seg48.relationRow1237 at r1237

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1237

  unfold Seg48.relationRow1238 at r1238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1238

  unfold Seg48.relationRow1239 at r1239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1239

  unfold Seg48.relationRow1240 at r1240

  unfold Seg48.relationRow1241 at r1241

  unfold Seg48.relationRow1242 at r1242

  unfold Seg48.relationRow1243 at r1243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1243

  unfold Seg48.relationRow1244 at r1244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1244

  unfold Seg48.relationRow1245 at r1245

  unfold Seg48.relationRow1246 at r1246

  unfold Seg48.relationRow1247 at r1247

  unfold Seg48.relationRow1248 at r1248

  unfold Seg48.relationRow1249 at r1249

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX27 rho = seg48In0AccX26 rho + rho 34002 := by
    unfold seg48In0AccX27 seg48In0AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 26]

    ring

  have hnexty : seg48In0AccY27 rho = seg48In0AccY26 rho + rho 34003 := by
    unfold seg48In0AccY27 seg48In0AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 26]

    ring

  have ha0 : (rho 33994 + rho 33995) * (seg48In0AccX26 rho + seg48In0AccY26 rho) = rho 33996 := by
    unfold seg48In0AccX26 seg48In0AccY26
    linear_combination r1237
  have ha1 : rho 33995 * seg48In0AccX26 rho = rho 33997 := by
    unfold seg48In0AccX26
    linear_combination r1238
  have ha2 : rho 33994 * seg48In0AccY26 rho = rho 33998 := by
    unfold seg48In0AccY26
    linear_combination r1239
  have ha3 : 3021 * rho 33997 * rho 33998 = rho 33999 := by
    linear_combination r1240
  have ha4 : rho 34000 * (1 + rho 33999) = rho 33997 + rho 33998 := by
    linear_combination r1241
  have ha5 : rho 34001 * (1 - rho 33999) = rho 33996 - rho 33997 - rho 33998 := by
    linear_combination r1242
  have haddx :
      rho 34000 * (1 + 3021 * (rho 33995 * seg48In0AccX26 rho) * (rho 33994 * seg48In0AccY26 rho)) =
        rho 33995 * seg48In0AccX26 rho + rho 33994 * seg48In0AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34001 * (1 - 3021 * (rho 33995 * seg48In0AccX26 rho) * (rho 33994 * seg48In0AccY26 rho)) =
        (-1) * (rho 33995 * seg48In0AccX26 rho) - rho 33994 * seg48In0AccY26 rho +
          (seg48In0AccY26 rho - seg48In0AccX26 rho * (-1)) * (rho 33994 + rho 33995) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34001 * (1 - rho 33999) = rho 33996 - rho 33997 - rho 33998 := ha5
      _ = (-1) * rho 33997 - rho 33998 + (seg48In0AccY26 rho - seg48In0AccX26 rho * (-1)) *
          (rho 33994 + rho 33995) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX27 rho = seg48In0AccX26 rho - Bool.toZMod bit * (seg48In0AccX26 rho - rho 34000) := by
    have hd : rho 34002 = Bool.toZMod bit * (rho 34000 - seg48In0AccX26 rho) := by
      rw [← hbit]
      unfold seg48In0AccX26
      linear_combination -r1243
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY27 rho = seg48In0AccY26 rho - Bool.toZMod bit * (seg48In0AccY26 rho - rho 34001) := by
    have hd : rho 34003 = Bool.toZMod bit * (rho 34001 - seg48In0AccY26 rho) := by
      rw [← hbit]
      unfold seg48In0AccY26
      linear_combination -r1244
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33994 * rho 33995 = rho 34004 := by linear_combination r1245
  have hd1 : rho 33994 * rho 33994 = rho 34005 := by linear_combination r1246
  have hd2 : rho 33995 * rho 33995 = rho 34006 := by linear_combination r1247
  have hd3 : rho 34007 * (rho 33995 * rho 33995 + rho 33994 * rho 33994 * (-1)) =
      2 * (rho 33994 * rho 33995) := by
    rw [hd0, hd1, hd2]
    linear_combination r1248
  have hd4 : rho 34008 * (2 - (rho 33995 * rho 33995 + rho 33994 * rho 33994 * (-1))) =
      rho 33995 * rho 33995 - rho 33994 * rho 33994 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1249
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX26 rho, seg48In0AccY26 rho⟩ ⟨rho 33994, rho 33995⟩
    ⟨rho 34000, rho 34001⟩ ⟨seg48In0AccX27 rho, seg48In0AccY27 rho⟩ ⟨rho 34007, rho 34008⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1250 rho ∧ Seg48.relationRow1251 rho ∧ Seg48.relationRow1252 rho ∧ Seg48.relationRow1253 rho ∧ Seg48.relationRow1254 rho ∧ Seg48.relationRow1255 rho ∧ Seg48.relationRow1256 rho ∧ Seg48.relationRow1257 rho ∧ Seg48.relationRow1258 rho ∧ Seg48.relationRow1259 rho ∧ Seg48.relationRow1260 rho ∧ Seg48.relationRow1261 rho ∧ Seg48.relationRow1262 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262⟩

theorem seg48In0_rung27 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33563 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX27 rho, seg48In0AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34007, rho 34008⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX27 rho, seg48In0AccY27 rho⟩ ⟨rho 34007, rho 34008⟩
        ⟨seg48In0AccX28 rho, seg48In0AccY28 rho⟩ ⟨rho 34020, rho 34021⟩ := by
  obtain ⟨r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262⟩ := seg48In0_rows27 rho h
  unfold Seg48.relationRow1250 at r1250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1250

  unfold Seg48.relationRow1251 at r1251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1251

  unfold Seg48.relationRow1252 at r1252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1252

  unfold Seg48.relationRow1253 at r1253

  unfold Seg48.relationRow1254 at r1254

  unfold Seg48.relationRow1255 at r1255

  unfold Seg48.relationRow1256 at r1256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1256

  unfold Seg48.relationRow1257 at r1257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1257

  unfold Seg48.relationRow1258 at r1258

  unfold Seg48.relationRow1259 at r1259

  unfold Seg48.relationRow1260 at r1260

  unfold Seg48.relationRow1261 at r1261

  unfold Seg48.relationRow1262 at r1262

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX28 rho = seg48In0AccX27 rho + rho 34015 := by
    unfold seg48In0AccX28 seg48In0AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 27]

    ring

  have hnexty : seg48In0AccY28 rho = seg48In0AccY27 rho + rho 34016 := by
    unfold seg48In0AccY28 seg48In0AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 27]

    ring

  have ha0 : (rho 34007 + rho 34008) * (seg48In0AccX27 rho + seg48In0AccY27 rho) = rho 34009 := by
    unfold seg48In0AccX27 seg48In0AccY27
    linear_combination r1250
  have ha1 : rho 34008 * seg48In0AccX27 rho = rho 34010 := by
    unfold seg48In0AccX27
    linear_combination r1251
  have ha2 : rho 34007 * seg48In0AccY27 rho = rho 34011 := by
    unfold seg48In0AccY27
    linear_combination r1252
  have ha3 : 3021 * rho 34010 * rho 34011 = rho 34012 := by
    linear_combination r1253
  have ha4 : rho 34013 * (1 + rho 34012) = rho 34010 + rho 34011 := by
    linear_combination r1254
  have ha5 : rho 34014 * (1 - rho 34012) = rho 34009 - rho 34010 - rho 34011 := by
    linear_combination r1255
  have haddx :
      rho 34013 * (1 + 3021 * (rho 34008 * seg48In0AccX27 rho) * (rho 34007 * seg48In0AccY27 rho)) =
        rho 34008 * seg48In0AccX27 rho + rho 34007 * seg48In0AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34014 * (1 - 3021 * (rho 34008 * seg48In0AccX27 rho) * (rho 34007 * seg48In0AccY27 rho)) =
        (-1) * (rho 34008 * seg48In0AccX27 rho) - rho 34007 * seg48In0AccY27 rho +
          (seg48In0AccY27 rho - seg48In0AccX27 rho * (-1)) * (rho 34007 + rho 34008) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34014 * (1 - rho 34012) = rho 34009 - rho 34010 - rho 34011 := ha5
      _ = (-1) * rho 34010 - rho 34011 + (seg48In0AccY27 rho - seg48In0AccX27 rho * (-1)) *
          (rho 34007 + rho 34008) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX28 rho = seg48In0AccX27 rho - Bool.toZMod bit * (seg48In0AccX27 rho - rho 34013) := by
    have hd : rho 34015 = Bool.toZMod bit * (rho 34013 - seg48In0AccX27 rho) := by
      rw [← hbit]
      unfold seg48In0AccX27
      linear_combination -r1256
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY28 rho = seg48In0AccY27 rho - Bool.toZMod bit * (seg48In0AccY27 rho - rho 34014) := by
    have hd : rho 34016 = Bool.toZMod bit * (rho 34014 - seg48In0AccY27 rho) := by
      rw [← hbit]
      unfold seg48In0AccY27
      linear_combination -r1257
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34007 * rho 34008 = rho 34017 := by linear_combination r1258
  have hd1 : rho 34007 * rho 34007 = rho 34018 := by linear_combination r1259
  have hd2 : rho 34008 * rho 34008 = rho 34019 := by linear_combination r1260
  have hd3 : rho 34020 * (rho 34008 * rho 34008 + rho 34007 * rho 34007 * (-1)) =
      2 * (rho 34007 * rho 34008) := by
    rw [hd0, hd1, hd2]
    linear_combination r1261
  have hd4 : rho 34021 * (2 - (rho 34008 * rho 34008 + rho 34007 * rho 34007 * (-1))) =
      rho 34008 * rho 34008 - rho 34007 * rho 34007 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1262
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX27 rho, seg48In0AccY27 rho⟩ ⟨rho 34007, rho 34008⟩
    ⟨rho 34013, rho 34014⟩ ⟨seg48In0AccX28 rho, seg48In0AccY28 rho⟩ ⟨rho 34020, rho 34021⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1263 rho ∧ Seg48.relationRow1264 rho ∧ Seg48.relationRow1265 rho ∧ Seg48.relationRow1266 rho ∧ Seg48.relationRow1267 rho ∧ Seg48.relationRow1268 rho ∧ Seg48.relationRow1269 rho ∧ Seg48.relationRow1270 rho ∧ Seg48.relationRow1271 rho ∧ Seg48.relationRow1272 rho ∧ Seg48.relationRow1273 rho ∧ Seg48.relationRow1274 rho ∧ Seg48.relationRow1275 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, _, _, _, _⟩

  exact ⟨r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275⟩

theorem seg48In0_rung28 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33564 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX28 rho, seg48In0AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34020, rho 34021⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX28 rho, seg48In0AccY28 rho⟩ ⟨rho 34020, rho 34021⟩
        ⟨seg48In0AccX29 rho, seg48In0AccY29 rho⟩ ⟨rho 34033, rho 34034⟩ := by
  obtain ⟨r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275⟩ := seg48In0_rows28 rho h
  unfold Seg48.relationRow1263 at r1263

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1263

  unfold Seg48.relationRow1264 at r1264

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1264

  unfold Seg48.relationRow1265 at r1265

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1265

  unfold Seg48.relationRow1266 at r1266

  unfold Seg48.relationRow1267 at r1267

  unfold Seg48.relationRow1268 at r1268

  unfold Seg48.relationRow1269 at r1269

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1269

  unfold Seg48.relationRow1270 at r1270

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1270

  unfold Seg48.relationRow1271 at r1271

  unfold Seg48.relationRow1272 at r1272

  unfold Seg48.relationRow1273 at r1273

  unfold Seg48.relationRow1274 at r1274

  unfold Seg48.relationRow1275 at r1275

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX29 rho = seg48In0AccX28 rho + rho 34028 := by
    unfold seg48In0AccX29 seg48In0AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 28]

    ring

  have hnexty : seg48In0AccY29 rho = seg48In0AccY28 rho + rho 34029 := by
    unfold seg48In0AccY29 seg48In0AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 28]

    ring

  have ha0 : (rho 34020 + rho 34021) * (seg48In0AccX28 rho + seg48In0AccY28 rho) = rho 34022 := by
    unfold seg48In0AccX28 seg48In0AccY28
    linear_combination r1263
  have ha1 : rho 34021 * seg48In0AccX28 rho = rho 34023 := by
    unfold seg48In0AccX28
    linear_combination r1264
  have ha2 : rho 34020 * seg48In0AccY28 rho = rho 34024 := by
    unfold seg48In0AccY28
    linear_combination r1265
  have ha3 : 3021 * rho 34023 * rho 34024 = rho 34025 := by
    linear_combination r1266
  have ha4 : rho 34026 * (1 + rho 34025) = rho 34023 + rho 34024 := by
    linear_combination r1267
  have ha5 : rho 34027 * (1 - rho 34025) = rho 34022 - rho 34023 - rho 34024 := by
    linear_combination r1268
  have haddx :
      rho 34026 * (1 + 3021 * (rho 34021 * seg48In0AccX28 rho) * (rho 34020 * seg48In0AccY28 rho)) =
        rho 34021 * seg48In0AccX28 rho + rho 34020 * seg48In0AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34027 * (1 - 3021 * (rho 34021 * seg48In0AccX28 rho) * (rho 34020 * seg48In0AccY28 rho)) =
        (-1) * (rho 34021 * seg48In0AccX28 rho) - rho 34020 * seg48In0AccY28 rho +
          (seg48In0AccY28 rho - seg48In0AccX28 rho * (-1)) * (rho 34020 + rho 34021) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34027 * (1 - rho 34025) = rho 34022 - rho 34023 - rho 34024 := ha5
      _ = (-1) * rho 34023 - rho 34024 + (seg48In0AccY28 rho - seg48In0AccX28 rho * (-1)) *
          (rho 34020 + rho 34021) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX29 rho = seg48In0AccX28 rho - Bool.toZMod bit * (seg48In0AccX28 rho - rho 34026) := by
    have hd : rho 34028 = Bool.toZMod bit * (rho 34026 - seg48In0AccX28 rho) := by
      rw [← hbit]
      unfold seg48In0AccX28
      linear_combination -r1269
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY29 rho = seg48In0AccY28 rho - Bool.toZMod bit * (seg48In0AccY28 rho - rho 34027) := by
    have hd : rho 34029 = Bool.toZMod bit * (rho 34027 - seg48In0AccY28 rho) := by
      rw [← hbit]
      unfold seg48In0AccY28
      linear_combination -r1270
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34020 * rho 34021 = rho 34030 := by linear_combination r1271
  have hd1 : rho 34020 * rho 34020 = rho 34031 := by linear_combination r1272
  have hd2 : rho 34021 * rho 34021 = rho 34032 := by linear_combination r1273
  have hd3 : rho 34033 * (rho 34021 * rho 34021 + rho 34020 * rho 34020 * (-1)) =
      2 * (rho 34020 * rho 34021) := by
    rw [hd0, hd1, hd2]
    linear_combination r1274
  have hd4 : rho 34034 * (2 - (rho 34021 * rho 34021 + rho 34020 * rho 34020 * (-1))) =
      rho 34021 * rho 34021 - rho 34020 * rho 34020 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1275
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX28 rho, seg48In0AccY28 rho⟩ ⟨rho 34020, rho 34021⟩
    ⟨rho 34026, rho 34027⟩ ⟨seg48In0AccX29 rho, seg48In0AccY29 rho⟩ ⟨rho 34033, rho 34034⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1276 rho ∧ Seg48.relationRow1277 rho ∧ Seg48.relationRow1278 rho ∧ Seg48.relationRow1279 rho ∧ Seg48.relationRow1280 rho ∧ Seg48.relationRow1281 rho ∧ Seg48.relationRow1282 rho ∧ Seg48.relationRow1283 rho ∧ Seg48.relationRow1284 rho ∧ Seg48.relationRow1285 rho ∧ Seg48.relationRow1286 rho ∧ Seg48.relationRow1287 rho ∧ Seg48.relationRow1288 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart15 at p15

  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1276, r1277, r1278, r1279⟩

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1276, r1277, r1278, r1279, r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288⟩

theorem seg48In0_rung29 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33565 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX29 rho, seg48In0AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34033, rho 34034⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX29 rho, seg48In0AccY29 rho⟩ ⟨rho 34033, rho 34034⟩
        ⟨seg48In0AccX30 rho, seg48In0AccY30 rho⟩ ⟨rho 34046, rho 34047⟩ := by
  obtain ⟨r1276, r1277, r1278, r1279, r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288⟩ := seg48In0_rows29 rho h
  unfold Seg48.relationRow1276 at r1276

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1276

  unfold Seg48.relationRow1277 at r1277

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1277

  unfold Seg48.relationRow1278 at r1278

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1278

  unfold Seg48.relationRow1279 at r1279

  unfold Seg48.relationRow1280 at r1280

  unfold Seg48.relationRow1281 at r1281

  unfold Seg48.relationRow1282 at r1282

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1282

  unfold Seg48.relationRow1283 at r1283

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1283

  unfold Seg48.relationRow1284 at r1284

  unfold Seg48.relationRow1285 at r1285

  unfold Seg48.relationRow1286 at r1286

  unfold Seg48.relationRow1287 at r1287

  unfold Seg48.relationRow1288 at r1288

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX30 rho = seg48In0AccX29 rho + rho 34041 := by
    unfold seg48In0AccX30 seg48In0AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 29]

    ring

  have hnexty : seg48In0AccY30 rho = seg48In0AccY29 rho + rho 34042 := by
    unfold seg48In0AccY30 seg48In0AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 29]

    ring

  have ha0 : (rho 34033 + rho 34034) * (seg48In0AccX29 rho + seg48In0AccY29 rho) = rho 34035 := by
    unfold seg48In0AccX29 seg48In0AccY29
    linear_combination r1276
  have ha1 : rho 34034 * seg48In0AccX29 rho = rho 34036 := by
    unfold seg48In0AccX29
    linear_combination r1277
  have ha2 : rho 34033 * seg48In0AccY29 rho = rho 34037 := by
    unfold seg48In0AccY29
    linear_combination r1278
  have ha3 : 3021 * rho 34036 * rho 34037 = rho 34038 := by
    linear_combination r1279
  have ha4 : rho 34039 * (1 + rho 34038) = rho 34036 + rho 34037 := by
    linear_combination r1280
  have ha5 : rho 34040 * (1 - rho 34038) = rho 34035 - rho 34036 - rho 34037 := by
    linear_combination r1281
  have haddx :
      rho 34039 * (1 + 3021 * (rho 34034 * seg48In0AccX29 rho) * (rho 34033 * seg48In0AccY29 rho)) =
        rho 34034 * seg48In0AccX29 rho + rho 34033 * seg48In0AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34040 * (1 - 3021 * (rho 34034 * seg48In0AccX29 rho) * (rho 34033 * seg48In0AccY29 rho)) =
        (-1) * (rho 34034 * seg48In0AccX29 rho) - rho 34033 * seg48In0AccY29 rho +
          (seg48In0AccY29 rho - seg48In0AccX29 rho * (-1)) * (rho 34033 + rho 34034) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34040 * (1 - rho 34038) = rho 34035 - rho 34036 - rho 34037 := ha5
      _ = (-1) * rho 34036 - rho 34037 + (seg48In0AccY29 rho - seg48In0AccX29 rho * (-1)) *
          (rho 34033 + rho 34034) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX30 rho = seg48In0AccX29 rho - Bool.toZMod bit * (seg48In0AccX29 rho - rho 34039) := by
    have hd : rho 34041 = Bool.toZMod bit * (rho 34039 - seg48In0AccX29 rho) := by
      rw [← hbit]
      unfold seg48In0AccX29
      linear_combination -r1282
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY30 rho = seg48In0AccY29 rho - Bool.toZMod bit * (seg48In0AccY29 rho - rho 34040) := by
    have hd : rho 34042 = Bool.toZMod bit * (rho 34040 - seg48In0AccY29 rho) := by
      rw [← hbit]
      unfold seg48In0AccY29
      linear_combination -r1283
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34033 * rho 34034 = rho 34043 := by linear_combination r1284
  have hd1 : rho 34033 * rho 34033 = rho 34044 := by linear_combination r1285
  have hd2 : rho 34034 * rho 34034 = rho 34045 := by linear_combination r1286
  have hd3 : rho 34046 * (rho 34034 * rho 34034 + rho 34033 * rho 34033 * (-1)) =
      2 * (rho 34033 * rho 34034) := by
    rw [hd0, hd1, hd2]
    linear_combination r1287
  have hd4 : rho 34047 * (2 - (rho 34034 * rho 34034 + rho 34033 * rho 34033 * (-1))) =
      rho 34034 * rho 34034 - rho 34033 * rho 34033 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1288
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX29 rho, seg48In0AccY29 rho⟩ ⟨rho 34033, rho 34034⟩
    ⟨rho 34039, rho 34040⟩ ⟨seg48In0AccX30 rho, seg48In0AccY30 rho⟩ ⟨rho 34046, rho 34047⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1289 rho ∧ Seg48.relationRow1290 rho ∧ Seg48.relationRow1291 rho ∧ Seg48.relationRow1292 rho ∧ Seg48.relationRow1293 rho ∧ Seg48.relationRow1294 rho ∧ Seg48.relationRow1295 rho ∧ Seg48.relationRow1296 rho ∧ Seg48.relationRow1297 rho ∧ Seg48.relationRow1298 rho ∧ Seg48.relationRow1299 rho ∧ Seg48.relationRow1300 rho ∧ Seg48.relationRow1301 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301⟩

theorem seg48In0_rung30 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33566 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX30 rho, seg48In0AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34046, rho 34047⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX30 rho, seg48In0AccY30 rho⟩ ⟨rho 34046, rho 34047⟩
        ⟨seg48In0AccX31 rho, seg48In0AccY31 rho⟩ ⟨rho 34059, rho 34060⟩ := by
  obtain ⟨r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301⟩ := seg48In0_rows30 rho h
  unfold Seg48.relationRow1289 at r1289

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1289

  unfold Seg48.relationRow1290 at r1290

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1290

  unfold Seg48.relationRow1291 at r1291

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1291

  unfold Seg48.relationRow1292 at r1292

  unfold Seg48.relationRow1293 at r1293

  unfold Seg48.relationRow1294 at r1294

  unfold Seg48.relationRow1295 at r1295

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1295

  unfold Seg48.relationRow1296 at r1296

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1296

  unfold Seg48.relationRow1297 at r1297

  unfold Seg48.relationRow1298 at r1298

  unfold Seg48.relationRow1299 at r1299

  unfold Seg48.relationRow1300 at r1300

  unfold Seg48.relationRow1301 at r1301

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX31 rho = seg48In0AccX30 rho + rho 34054 := by
    unfold seg48In0AccX31 seg48In0AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 30]

    ring

  have hnexty : seg48In0AccY31 rho = seg48In0AccY30 rho + rho 34055 := by
    unfold seg48In0AccY31 seg48In0AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 30]

    ring

  have ha0 : (rho 34046 + rho 34047) * (seg48In0AccX30 rho + seg48In0AccY30 rho) = rho 34048 := by
    unfold seg48In0AccX30 seg48In0AccY30
    linear_combination r1289
  have ha1 : rho 34047 * seg48In0AccX30 rho = rho 34049 := by
    unfold seg48In0AccX30
    linear_combination r1290
  have ha2 : rho 34046 * seg48In0AccY30 rho = rho 34050 := by
    unfold seg48In0AccY30
    linear_combination r1291
  have ha3 : 3021 * rho 34049 * rho 34050 = rho 34051 := by
    linear_combination r1292
  have ha4 : rho 34052 * (1 + rho 34051) = rho 34049 + rho 34050 := by
    linear_combination r1293
  have ha5 : rho 34053 * (1 - rho 34051) = rho 34048 - rho 34049 - rho 34050 := by
    linear_combination r1294
  have haddx :
      rho 34052 * (1 + 3021 * (rho 34047 * seg48In0AccX30 rho) * (rho 34046 * seg48In0AccY30 rho)) =
        rho 34047 * seg48In0AccX30 rho + rho 34046 * seg48In0AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34053 * (1 - 3021 * (rho 34047 * seg48In0AccX30 rho) * (rho 34046 * seg48In0AccY30 rho)) =
        (-1) * (rho 34047 * seg48In0AccX30 rho) - rho 34046 * seg48In0AccY30 rho +
          (seg48In0AccY30 rho - seg48In0AccX30 rho * (-1)) * (rho 34046 + rho 34047) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34053 * (1 - rho 34051) = rho 34048 - rho 34049 - rho 34050 := ha5
      _ = (-1) * rho 34049 - rho 34050 + (seg48In0AccY30 rho - seg48In0AccX30 rho * (-1)) *
          (rho 34046 + rho 34047) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX31 rho = seg48In0AccX30 rho - Bool.toZMod bit * (seg48In0AccX30 rho - rho 34052) := by
    have hd : rho 34054 = Bool.toZMod bit * (rho 34052 - seg48In0AccX30 rho) := by
      rw [← hbit]
      unfold seg48In0AccX30
      linear_combination -r1295
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY31 rho = seg48In0AccY30 rho - Bool.toZMod bit * (seg48In0AccY30 rho - rho 34053) := by
    have hd : rho 34055 = Bool.toZMod bit * (rho 34053 - seg48In0AccY30 rho) := by
      rw [← hbit]
      unfold seg48In0AccY30
      linear_combination -r1296
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34046 * rho 34047 = rho 34056 := by linear_combination r1297
  have hd1 : rho 34046 * rho 34046 = rho 34057 := by linear_combination r1298
  have hd2 : rho 34047 * rho 34047 = rho 34058 := by linear_combination r1299
  have hd3 : rho 34059 * (rho 34047 * rho 34047 + rho 34046 * rho 34046 * (-1)) =
      2 * (rho 34046 * rho 34047) := by
    rw [hd0, hd1, hd2]
    linear_combination r1300
  have hd4 : rho 34060 * (2 - (rho 34047 * rho 34047 + rho 34046 * rho 34046 * (-1))) =
      rho 34047 * rho 34047 - rho 34046 * rho 34046 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1301
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX30 rho, seg48In0AccY30 rho⟩ ⟨rho 34046, rho 34047⟩
    ⟨rho 34052, rho 34053⟩ ⟨seg48In0AccX31 rho, seg48In0AccY31 rho⟩ ⟨rho 34059, rho 34060⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1302 rho ∧ Seg48.relationRow1303 rho ∧ Seg48.relationRow1304 rho ∧ Seg48.relationRow1305 rho ∧ Seg48.relationRow1306 rho ∧ Seg48.relationRow1307 rho ∧ Seg48.relationRow1308 rho ∧ Seg48.relationRow1309 rho ∧ Seg48.relationRow1310 rho ∧ Seg48.relationRow1311 rho ∧ Seg48.relationRow1312 rho ∧ Seg48.relationRow1313 rho ∧ Seg48.relationRow1314 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314⟩

theorem seg48In0_rung31 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33567 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX31 rho, seg48In0AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34059, rho 34060⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX31 rho, seg48In0AccY31 rho⟩ ⟨rho 34059, rho 34060⟩
        ⟨seg48In0AccX32 rho, seg48In0AccY32 rho⟩ ⟨rho 34072, rho 34073⟩ := by
  obtain ⟨r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314⟩ := seg48In0_rows31 rho h
  unfold Seg48.relationRow1302 at r1302

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1302

  unfold Seg48.relationRow1303 at r1303

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1303

  unfold Seg48.relationRow1304 at r1304

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1304

  unfold Seg48.relationRow1305 at r1305

  unfold Seg48.relationRow1306 at r1306

  unfold Seg48.relationRow1307 at r1307

  unfold Seg48.relationRow1308 at r1308

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1308

  unfold Seg48.relationRow1309 at r1309

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1309

  unfold Seg48.relationRow1310 at r1310

  unfold Seg48.relationRow1311 at r1311

  unfold Seg48.relationRow1312 at r1312

  unfold Seg48.relationRow1313 at r1313

  unfold Seg48.relationRow1314 at r1314

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX32 rho = seg48In0AccX31 rho + rho 34067 := by
    unfold seg48In0AccX32 seg48In0AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 31]

    ring

  have hnexty : seg48In0AccY32 rho = seg48In0AccY31 rho + rho 34068 := by
    unfold seg48In0AccY32 seg48In0AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 31]

    ring

  have ha0 : (rho 34059 + rho 34060) * (seg48In0AccX31 rho + seg48In0AccY31 rho) = rho 34061 := by
    unfold seg48In0AccX31 seg48In0AccY31
    linear_combination r1302
  have ha1 : rho 34060 * seg48In0AccX31 rho = rho 34062 := by
    unfold seg48In0AccX31
    linear_combination r1303
  have ha2 : rho 34059 * seg48In0AccY31 rho = rho 34063 := by
    unfold seg48In0AccY31
    linear_combination r1304
  have ha3 : 3021 * rho 34062 * rho 34063 = rho 34064 := by
    linear_combination r1305
  have ha4 : rho 34065 * (1 + rho 34064) = rho 34062 + rho 34063 := by
    linear_combination r1306
  have ha5 : rho 34066 * (1 - rho 34064) = rho 34061 - rho 34062 - rho 34063 := by
    linear_combination r1307
  have haddx :
      rho 34065 * (1 + 3021 * (rho 34060 * seg48In0AccX31 rho) * (rho 34059 * seg48In0AccY31 rho)) =
        rho 34060 * seg48In0AccX31 rho + rho 34059 * seg48In0AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34066 * (1 - 3021 * (rho 34060 * seg48In0AccX31 rho) * (rho 34059 * seg48In0AccY31 rho)) =
        (-1) * (rho 34060 * seg48In0AccX31 rho) - rho 34059 * seg48In0AccY31 rho +
          (seg48In0AccY31 rho - seg48In0AccX31 rho * (-1)) * (rho 34059 + rho 34060) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34066 * (1 - rho 34064) = rho 34061 - rho 34062 - rho 34063 := ha5
      _ = (-1) * rho 34062 - rho 34063 + (seg48In0AccY31 rho - seg48In0AccX31 rho * (-1)) *
          (rho 34059 + rho 34060) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX32 rho = seg48In0AccX31 rho - Bool.toZMod bit * (seg48In0AccX31 rho - rho 34065) := by
    have hd : rho 34067 = Bool.toZMod bit * (rho 34065 - seg48In0AccX31 rho) := by
      rw [← hbit]
      unfold seg48In0AccX31
      linear_combination -r1308
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY32 rho = seg48In0AccY31 rho - Bool.toZMod bit * (seg48In0AccY31 rho - rho 34066) := by
    have hd : rho 34068 = Bool.toZMod bit * (rho 34066 - seg48In0AccY31 rho) := by
      rw [← hbit]
      unfold seg48In0AccY31
      linear_combination -r1309
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34059 * rho 34060 = rho 34069 := by linear_combination r1310
  have hd1 : rho 34059 * rho 34059 = rho 34070 := by linear_combination r1311
  have hd2 : rho 34060 * rho 34060 = rho 34071 := by linear_combination r1312
  have hd3 : rho 34072 * (rho 34060 * rho 34060 + rho 34059 * rho 34059 * (-1)) =
      2 * (rho 34059 * rho 34060) := by
    rw [hd0, hd1, hd2]
    linear_combination r1313
  have hd4 : rho 34073 * (2 - (rho 34060 * rho 34060 + rho 34059 * rho 34059 * (-1))) =
      rho 34060 * rho 34060 - rho 34059 * rho 34059 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1314
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX31 rho, seg48In0AccY31 rho⟩ ⟨rho 34059, rho 34060⟩
    ⟨rho 34065, rho 34066⟩ ⟨seg48In0AccX32 rho, seg48In0AccY32 rho⟩ ⟨rho 34072, rho 34073⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1315 rho ∧ Seg48.relationRow1316 rho ∧ Seg48.relationRow1317 rho ∧ Seg48.relationRow1318 rho ∧ Seg48.relationRow1319 rho ∧ Seg48.relationRow1320 rho ∧ Seg48.relationRow1321 rho ∧ Seg48.relationRow1322 rho ∧ Seg48.relationRow1323 rho ∧ Seg48.relationRow1324 rho ∧ Seg48.relationRow1325 rho ∧ Seg48.relationRow1326 rho ∧ Seg48.relationRow1327 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart16 at p16

  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327⟩

theorem seg48In0_rung32 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33568 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX32 rho, seg48In0AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34072, rho 34073⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX32 rho, seg48In0AccY32 rho⟩ ⟨rho 34072, rho 34073⟩
        ⟨seg48In0AccX33 rho, seg48In0AccY33 rho⟩ ⟨rho 34085, rho 34086⟩ := by
  obtain ⟨r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, r1325, r1326, r1327⟩ := seg48In0_rows32 rho h
  unfold Seg48.relationRow1315 at r1315

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1315

  unfold Seg48.relationRow1316 at r1316

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1316

  unfold Seg48.relationRow1317 at r1317

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1317

  unfold Seg48.relationRow1318 at r1318

  unfold Seg48.relationRow1319 at r1319

  unfold Seg48.relationRow1320 at r1320

  unfold Seg48.relationRow1321 at r1321

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1321

  unfold Seg48.relationRow1322 at r1322

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1322

  unfold Seg48.relationRow1323 at r1323

  unfold Seg48.relationRow1324 at r1324

  unfold Seg48.relationRow1325 at r1325

  unfold Seg48.relationRow1326 at r1326

  unfold Seg48.relationRow1327 at r1327

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX33 rho = seg48In0AccX32 rho + rho 34080 := by
    unfold seg48In0AccX33 seg48In0AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 32]

    ring

  have hnexty : seg48In0AccY33 rho = seg48In0AccY32 rho + rho 34081 := by
    unfold seg48In0AccY33 seg48In0AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 32]

    ring

  have ha0 : (rho 34072 + rho 34073) * (seg48In0AccX32 rho + seg48In0AccY32 rho) = rho 34074 := by
    unfold seg48In0AccX32 seg48In0AccY32
    linear_combination r1315
  have ha1 : rho 34073 * seg48In0AccX32 rho = rho 34075 := by
    unfold seg48In0AccX32
    linear_combination r1316
  have ha2 : rho 34072 * seg48In0AccY32 rho = rho 34076 := by
    unfold seg48In0AccY32
    linear_combination r1317
  have ha3 : 3021 * rho 34075 * rho 34076 = rho 34077 := by
    linear_combination r1318
  have ha4 : rho 34078 * (1 + rho 34077) = rho 34075 + rho 34076 := by
    linear_combination r1319
  have ha5 : rho 34079 * (1 - rho 34077) = rho 34074 - rho 34075 - rho 34076 := by
    linear_combination r1320
  have haddx :
      rho 34078 * (1 + 3021 * (rho 34073 * seg48In0AccX32 rho) * (rho 34072 * seg48In0AccY32 rho)) =
        rho 34073 * seg48In0AccX32 rho + rho 34072 * seg48In0AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34079 * (1 - 3021 * (rho 34073 * seg48In0AccX32 rho) * (rho 34072 * seg48In0AccY32 rho)) =
        (-1) * (rho 34073 * seg48In0AccX32 rho) - rho 34072 * seg48In0AccY32 rho +
          (seg48In0AccY32 rho - seg48In0AccX32 rho * (-1)) * (rho 34072 + rho 34073) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34079 * (1 - rho 34077) = rho 34074 - rho 34075 - rho 34076 := ha5
      _ = (-1) * rho 34075 - rho 34076 + (seg48In0AccY32 rho - seg48In0AccX32 rho * (-1)) *
          (rho 34072 + rho 34073) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX33 rho = seg48In0AccX32 rho - Bool.toZMod bit * (seg48In0AccX32 rho - rho 34078) := by
    have hd : rho 34080 = Bool.toZMod bit * (rho 34078 - seg48In0AccX32 rho) := by
      rw [← hbit]
      unfold seg48In0AccX32
      linear_combination -r1321
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY33 rho = seg48In0AccY32 rho - Bool.toZMod bit * (seg48In0AccY32 rho - rho 34079) := by
    have hd : rho 34081 = Bool.toZMod bit * (rho 34079 - seg48In0AccY32 rho) := by
      rw [← hbit]
      unfold seg48In0AccY32
      linear_combination -r1322
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34072 * rho 34073 = rho 34082 := by linear_combination r1323
  have hd1 : rho 34072 * rho 34072 = rho 34083 := by linear_combination r1324
  have hd2 : rho 34073 * rho 34073 = rho 34084 := by linear_combination r1325
  have hd3 : rho 34085 * (rho 34073 * rho 34073 + rho 34072 * rho 34072 * (-1)) =
      2 * (rho 34072 * rho 34073) := by
    rw [hd0, hd1, hd2]
    linear_combination r1326
  have hd4 : rho 34086 * (2 - (rho 34073 * rho 34073 + rho 34072 * rho 34072 * (-1))) =
      rho 34073 * rho 34073 - rho 34072 * rho 34072 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1327
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX32 rho, seg48In0AccY32 rho⟩ ⟨rho 34072, rho 34073⟩
    ⟨rho 34078, rho 34079⟩ ⟨seg48In0AccX33 rho, seg48In0AccY33 rho⟩ ⟨rho 34085, rho 34086⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c2 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg48In0_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg48In0_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg48In0_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg48In0_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg48In0_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg48In0_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg48In0_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg48In0_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg48In0_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg48In0_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
