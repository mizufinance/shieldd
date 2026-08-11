import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window42 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc42 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[164]! (scalarBits rho)[163]!
        (base rho) (twice rho) (triple rho) (acc42 rho)
        (acc43 rho) ∧
      EdwardsBridge.onCurve (acc43 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p14, p15, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart14 at p14
  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1193 at r1193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1194 at r1194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1195 at r1195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1196 at r1196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1197 at r1197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1198 at r1198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1199 at r1199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1200 at r1200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1201 at r1201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1202 at r1202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1203 at r1203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1204 at r1204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1205 at r1205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1206 at r1206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1207 at r1207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1208 at r1208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1209 at r1209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1210 at r1210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1211 at r1211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1212 at r1212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1213 at r1213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1214 at r1214
  have hshift1 : EdwardsBridge.doubleSpec (acc42 rho) (shiftOnce42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1194) (rho 1195) (rho 1196) (rho 1197) (rho 1198) (rho 1199) (rho 1200)
      (by simpa [acc42] using hacc)
      (by linear_combination r1193)
      (by linear_combination r1194)
      (by linear_combination r1195)
      (by linear_combination r1196)
      (by linear_combination r1197)
    simpa [acc42, shiftOnce42] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc42 rho) (shiftOnce42 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc42 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce42 rho) (shifted42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1199) (rho 1200) (rho 1201) (rho 1202) (rho 1203) (rho 1204) (rho 1205)
      (by simpa [shiftOnce42] using hshift1On)
      (by linear_combination r1198)
      (by linear_combination r1199)
      (by linear_combination r1200)
      (by linear_combination r1201)
      (by linear_combination r1202)
    simpa [shiftOnce42, shifted42] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce42 rho) (shifted42 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce42 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 165) (rho 164)
      (base rho) (twice rho) (triple rho) (digit42 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 165) (rho 164)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1207 + rho 1208, (1 : F) + rho 1210 + rho 1211⟩ := by
      constructor
      · refine ⟨(rho 1206 + (rho 258) - (0)), rho 1207, ?_, ?_, ?_⟩
        · linear_combination r1203 - (rho 164) * order_cast_zero
        · linear_combination r1204
        · linear_combination r1205
      · refine ⟨(rho 1209 + (rho 259) - ((1 : F))), rho 1210, ?_, ?_, ?_⟩
        · linear_combination r1206 - (rho 164) * order_cast_zero
        · linear_combination r1207
        · linear_combination r1208
    simpa [base, twice, triple, digit42] using hraw
  have hhigh : rho 165 =
      Bool.toZMod bits[164]! := by
    simpa only using rho_bit_of_map rho bits hbits 164 (by decide +kernel)
  have hlow : rho 164 =
      Bool.toZMod bits[163]! := by
    simpa only using rho_bit_of_map rho bits hbits 163 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[164]! bits[163]! (base rho) (twice rho) (triple rho)
    (digit42 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit42 rho) := by
    rw [hdigit]
    cases bits[164]! <;> cases bits[163]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted42 rho) (digit42 rho) (acc43 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1204) (rho 1205) (rho 1207 + rho 1208) ((1 : F) + rho 1210 + rho 1211)
      (rho 1212) (rho 1213) (rho 1214) (rho 1215) (rho 1216) (rho 1217)
      (by simpa [shifted42] using hshift2On)
      (by simpa [digit42] using hdigitOn)
      (by linear_combination r1209)
      (by linear_combination r1210)
      (by linear_combination r1211)
      (by linear_combination r1212)
      (by linear_combination r1213)
      (by linear_combination r1214)
    simpa [shifted42, digit42, acc43] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc43 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted42 rho) (digit42 rho) (acc43 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted42 rho) (digit42 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 165) (rho 164)
      (base rho) (twice rho) (triple rho) (acc42 rho)
      (acc43 rho) :=
    ⟨shiftOnce42 rho, shifted42 rho, digit42 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window43 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc43 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[162]! (scalarBits rho)[161]!
        (base rho) (twice rho) (triple rho) (acc43 rho)
        (acc44 rho) ∧
      EdwardsBridge.onCurve (acc44 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p15, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart15 at p15
  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1215 at r1215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1216 at r1216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1217 at r1217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1218 at r1218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1219 at r1219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1220 at r1220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1221 at r1221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1222 at r1222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1223 at r1223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1224 at r1224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1225 at r1225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1226 at r1226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1227 at r1227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1228 at r1228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1229 at r1229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1230 at r1230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1231 at r1231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1232 at r1232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1233 at r1233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1234 at r1234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1235 at r1235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1236 at r1236
  have hshift1 : EdwardsBridge.doubleSpec (acc43 rho) (shiftOnce43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1216) (rho 1217) (rho 1218) (rho 1219) (rho 1220) (rho 1221) (rho 1222)
      (by simpa [acc43] using hacc)
      (by linear_combination r1215)
      (by linear_combination r1216)
      (by linear_combination r1217)
      (by linear_combination r1218)
      (by linear_combination r1219)
    simpa [acc43, shiftOnce43] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc43 rho) (shiftOnce43 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc43 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce43 rho) (shifted43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1221) (rho 1222) (rho 1223) (rho 1224) (rho 1225) (rho 1226) (rho 1227)
      (by simpa [shiftOnce43] using hshift1On)
      (by linear_combination r1220)
      (by linear_combination r1221)
      (by linear_combination r1222)
      (by linear_combination r1223)
      (by linear_combination r1224)
    simpa [shiftOnce43, shifted43] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce43 rho) (shifted43 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce43 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 163) (rho 162)
      (base rho) (twice rho) (triple rho) (digit43 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 163) (rho 162)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1229 + rho 1230, (1 : F) + rho 1232 + rho 1233⟩ := by
      constructor
      · refine ⟨(rho 1228 + (rho 258) - (0)), rho 1229, ?_, ?_, ?_⟩
        · linear_combination r1225 - (rho 162) * order_cast_zero
        · linear_combination r1226
        · linear_combination r1227
      · refine ⟨(rho 1231 + (rho 259) - ((1 : F))), rho 1232, ?_, ?_, ?_⟩
        · linear_combination r1228 - (rho 162) * order_cast_zero
        · linear_combination r1229
        · linear_combination r1230
    simpa [base, twice, triple, digit43] using hraw
  have hhigh : rho 163 =
      Bool.toZMod bits[162]! := by
    simpa only using rho_bit_of_map rho bits hbits 162 (by decide +kernel)
  have hlow : rho 162 =
      Bool.toZMod bits[161]! := by
    simpa only using rho_bit_of_map rho bits hbits 161 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[162]! bits[161]! (base rho) (twice rho) (triple rho)
    (digit43 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit43 rho) := by
    rw [hdigit]
    cases bits[162]! <;> cases bits[161]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted43 rho) (digit43 rho) (acc44 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1226) (rho 1227) (rho 1229 + rho 1230) ((1 : F) + rho 1232 + rho 1233)
      (rho 1234) (rho 1235) (rho 1236) (rho 1237) (rho 1238) (rho 1239)
      (by simpa [shifted43] using hshift2On)
      (by simpa [digit43] using hdigitOn)
      (by linear_combination r1231)
      (by linear_combination r1232)
      (by linear_combination r1233)
      (by linear_combination r1234)
      (by linear_combination r1235)
      (by linear_combination r1236)
    simpa [shifted43, digit43, acc44] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc44 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted43 rho) (digit43 rho) (acc44 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted43 rho) (digit43 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 163) (rho 162)
      (base rho) (twice rho) (triple rho) (acc43 rho)
      (acc44 rho) :=
    ⟨shiftOnce43 rho, shifted43 rho, digit43 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window44 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc44 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[160]! (scalarBits rho)[159]!
        (base rho) (twice rho) (triple rho) (acc44 rho)
        (acc45 rho) ∧
      EdwardsBridge.onCurve (acc45 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p15, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart15 at p15
  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1237 at r1237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1238 at r1238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1239 at r1239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1240 at r1240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1241 at r1241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1242 at r1242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1243 at r1243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1244 at r1244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1245 at r1245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1246 at r1246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1247 at r1247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1248 at r1248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1249 at r1249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1250 at r1250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1251 at r1251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1252 at r1252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1253 at r1253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1254 at r1254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1255 at r1255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1256 at r1256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1257 at r1257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1258 at r1258
  have hshift1 : EdwardsBridge.doubleSpec (acc44 rho) (shiftOnce44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1238) (rho 1239) (rho 1240) (rho 1241) (rho 1242) (rho 1243) (rho 1244)
      (by simpa [acc44] using hacc)
      (by linear_combination r1237)
      (by linear_combination r1238)
      (by linear_combination r1239)
      (by linear_combination r1240)
      (by linear_combination r1241)
    simpa [acc44, shiftOnce44] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc44 rho) (shiftOnce44 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc44 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce44 rho) (shifted44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1243) (rho 1244) (rho 1245) (rho 1246) (rho 1247) (rho 1248) (rho 1249)
      (by simpa [shiftOnce44] using hshift1On)
      (by linear_combination r1242)
      (by linear_combination r1243)
      (by linear_combination r1244)
      (by linear_combination r1245)
      (by linear_combination r1246)
    simpa [shiftOnce44, shifted44] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce44 rho) (shifted44 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce44 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 161) (rho 160)
      (base rho) (twice rho) (triple rho) (digit44 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 161) (rho 160)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1251 + rho 1252, (1 : F) + rho 1254 + rho 1255⟩ := by
      constructor
      · refine ⟨(rho 1250 + (rho 258) - (0)), rho 1251, ?_, ?_, ?_⟩
        · linear_combination r1247 - (rho 160) * order_cast_zero
        · linear_combination r1248
        · linear_combination r1249
      · refine ⟨(rho 1253 + (rho 259) - ((1 : F))), rho 1254, ?_, ?_, ?_⟩
        · linear_combination r1250 - (rho 160) * order_cast_zero
        · linear_combination r1251
        · linear_combination r1252
    simpa [base, twice, triple, digit44] using hraw
  have hhigh : rho 161 =
      Bool.toZMod bits[160]! := by
    simpa only using rho_bit_of_map rho bits hbits 160 (by decide +kernel)
  have hlow : rho 160 =
      Bool.toZMod bits[159]! := by
    simpa only using rho_bit_of_map rho bits hbits 159 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[160]! bits[159]! (base rho) (twice rho) (triple rho)
    (digit44 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit44 rho) := by
    rw [hdigit]
    cases bits[160]! <;> cases bits[159]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted44 rho) (digit44 rho) (acc45 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1248) (rho 1249) (rho 1251 + rho 1252) ((1 : F) + rho 1254 + rho 1255)
      (rho 1256) (rho 1257) (rho 1258) (rho 1259) (rho 1260) (rho 1261)
      (by simpa [shifted44] using hshift2On)
      (by simpa [digit44] using hdigitOn)
      (by linear_combination r1253)
      (by linear_combination r1254)
      (by linear_combination r1255)
      (by linear_combination r1256)
      (by linear_combination r1257)
      (by linear_combination r1258)
    simpa [shifted44, digit44, acc45] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc45 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted44 rho) (digit44 rho) (acc45 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted44 rho) (digit44 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 161) (rho 160)
      (base rho) (twice rho) (triple rho) (acc44 rho)
      (acc45 rho) :=
    ⟨shiftOnce44 rho, shifted44 rho, digit44 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window45 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc45 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[158]! (scalarBits rho)[157]!
        (base rho) (twice rho) (triple rho) (acc45 rho)
        (acc46 rho) ∧
      EdwardsBridge.onCurve (acc46 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p15, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart15 at p15
  rcases p15 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart16 at p16
  rcases p16 with ⟨r1280, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1259 at r1259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1260 at r1260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1261 at r1261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1262 at r1262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1263 at r1263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1264 at r1264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1265 at r1265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1266 at r1266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1267 at r1267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1268 at r1268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1269 at r1269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1270 at r1270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1271 at r1271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1272 at r1272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1273 at r1273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1274 at r1274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1275 at r1275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1276 at r1276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1277 at r1277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1278 at r1278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1279 at r1279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1280 at r1280
  have hshift1 : EdwardsBridge.doubleSpec (acc45 rho) (shiftOnce45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1260) (rho 1261) (rho 1262) (rho 1263) (rho 1264) (rho 1265) (rho 1266)
      (by simpa [acc45] using hacc)
      (by linear_combination r1259)
      (by linear_combination r1260)
      (by linear_combination r1261)
      (by linear_combination r1262)
      (by linear_combination r1263)
    simpa [acc45, shiftOnce45] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc45 rho) (shiftOnce45 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc45 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce45 rho) (shifted45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1265) (rho 1266) (rho 1267) (rho 1268) (rho 1269) (rho 1270) (rho 1271)
      (by simpa [shiftOnce45] using hshift1On)
      (by linear_combination r1264)
      (by linear_combination r1265)
      (by linear_combination r1266)
      (by linear_combination r1267)
      (by linear_combination r1268)
    simpa [shiftOnce45, shifted45] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce45 rho) (shifted45 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce45 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 159) (rho 158)
      (base rho) (twice rho) (triple rho) (digit45 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 159) (rho 158)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1273 + rho 1274, (1 : F) + rho 1276 + rho 1277⟩ := by
      constructor
      · refine ⟨(rho 1272 + (rho 258) - (0)), rho 1273, ?_, ?_, ?_⟩
        · linear_combination r1269 - (rho 158) * order_cast_zero
        · linear_combination r1270
        · linear_combination r1271
      · refine ⟨(rho 1275 + (rho 259) - ((1 : F))), rho 1276, ?_, ?_, ?_⟩
        · linear_combination r1272 - (rho 158) * order_cast_zero
        · linear_combination r1273
        · linear_combination r1274
    simpa [base, twice, triple, digit45] using hraw
  have hhigh : rho 159 =
      Bool.toZMod bits[158]! := by
    simpa only using rho_bit_of_map rho bits hbits 158 (by decide +kernel)
  have hlow : rho 158 =
      Bool.toZMod bits[157]! := by
    simpa only using rho_bit_of_map rho bits hbits 157 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[158]! bits[157]! (base rho) (twice rho) (triple rho)
    (digit45 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit45 rho) := by
    rw [hdigit]
    cases bits[158]! <;> cases bits[157]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted45 rho) (digit45 rho) (acc46 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1270) (rho 1271) (rho 1273 + rho 1274) ((1 : F) + rho 1276 + rho 1277)
      (rho 1278) (rho 1279) (rho 1280) (rho 1281) (rho 1282) (rho 1283)
      (by simpa [shifted45] using hshift2On)
      (by simpa [digit45] using hdigitOn)
      (by linear_combination r1275)
      (by linear_combination r1276)
      (by linear_combination r1277)
      (by linear_combination r1278)
      (by linear_combination r1279)
      (by linear_combination r1280)
    simpa [shifted45, digit45, acc46] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc46 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted45 rho) (digit45 rho) (acc46 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted45 rho) (digit45 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 159) (rho 158)
      (base rho) (twice rho) (triple rho) (acc45 rho)
      (acc46 rho) :=
    ⟨shiftOnce45 rho, shifted45 rho, digit45 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window46 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc46 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[156]! (scalarBits rho)[155]!
        (base rho) (twice rho) (triple rho) (acc46 rho)
        (acc47 rho) ∧
      EdwardsBridge.onCurve (acc47 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart16 at p16
  rcases p16 with ⟨_, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1281 at r1281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1282 at r1282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1283 at r1283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1284 at r1284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1285 at r1285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1286 at r1286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1287 at r1287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1288 at r1288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1289 at r1289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1290 at r1290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1291 at r1291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1292 at r1292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1293 at r1293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1294 at r1294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1295 at r1295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1296 at r1296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1297 at r1297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1298 at r1298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1299 at r1299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1300 at r1300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1301 at r1301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1302 at r1302
  have hshift1 : EdwardsBridge.doubleSpec (acc46 rho) (shiftOnce46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1282) (rho 1283) (rho 1284) (rho 1285) (rho 1286) (rho 1287) (rho 1288)
      (by simpa [acc46] using hacc)
      (by linear_combination r1281)
      (by linear_combination r1282)
      (by linear_combination r1283)
      (by linear_combination r1284)
      (by linear_combination r1285)
    simpa [acc46, shiftOnce46] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc46 rho) (shiftOnce46 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc46 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce46 rho) (shifted46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1287) (rho 1288) (rho 1289) (rho 1290) (rho 1291) (rho 1292) (rho 1293)
      (by simpa [shiftOnce46] using hshift1On)
      (by linear_combination r1286)
      (by linear_combination r1287)
      (by linear_combination r1288)
      (by linear_combination r1289)
      (by linear_combination r1290)
    simpa [shiftOnce46, shifted46] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce46 rho) (shifted46 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce46 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 157) (rho 156)
      (base rho) (twice rho) (triple rho) (digit46 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 157) (rho 156)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1295 + rho 1296, (1 : F) + rho 1298 + rho 1299⟩ := by
      constructor
      · refine ⟨(rho 1294 + (rho 258) - (0)), rho 1295, ?_, ?_, ?_⟩
        · linear_combination r1291 - (rho 156) * order_cast_zero
        · linear_combination r1292
        · linear_combination r1293
      · refine ⟨(rho 1297 + (rho 259) - ((1 : F))), rho 1298, ?_, ?_, ?_⟩
        · linear_combination r1294 - (rho 156) * order_cast_zero
        · linear_combination r1295
        · linear_combination r1296
    simpa [base, twice, triple, digit46] using hraw
  have hhigh : rho 157 =
      Bool.toZMod bits[156]! := by
    simpa only using rho_bit_of_map rho bits hbits 156 (by decide +kernel)
  have hlow : rho 156 =
      Bool.toZMod bits[155]! := by
    simpa only using rho_bit_of_map rho bits hbits 155 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[156]! bits[155]! (base rho) (twice rho) (triple rho)
    (digit46 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit46 rho) := by
    rw [hdigit]
    cases bits[156]! <;> cases bits[155]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted46 rho) (digit46 rho) (acc47 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1292) (rho 1293) (rho 1295 + rho 1296) ((1 : F) + rho 1298 + rho 1299)
      (rho 1300) (rho 1301) (rho 1302) (rho 1303) (rho 1304) (rho 1305)
      (by simpa [shifted46] using hshift2On)
      (by simpa [digit46] using hdigitOn)
      (by linear_combination r1297)
      (by linear_combination r1298)
      (by linear_combination r1299)
      (by linear_combination r1300)
      (by linear_combination r1301)
      (by linear_combination r1302)
    simpa [shifted46, digit46, acc47] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc47 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted46 rho) (digit46 rho) (acc47 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted46 rho) (digit46 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 157) (rho 156)
      (base rho) (twice rho) (triple rho) (acc46 rho)
      (acc47 rho) :=
    ⟨shiftOnce46 rho, shifted46 rho, digit46 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window47 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc47 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[154]! (scalarBits rho)[153]!
        (base rho) (twice rho) (triple rho) (acc47 rho)
        (acc48 rho) ∧
      EdwardsBridge.onCurve (acc48 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, r1317, r1318, r1319, r1320, r1321, r1322, r1323, r1324, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1303 at r1303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1304 at r1304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1305 at r1305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1306 at r1306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1307 at r1307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1308 at r1308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1309 at r1309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1310 at r1310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1311 at r1311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1312 at r1312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1313 at r1313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1314 at r1314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1315 at r1315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1316 at r1316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1317 at r1317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1318 at r1318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1319 at r1319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1320 at r1320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1321 at r1321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1322 at r1322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1323 at r1323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1324 at r1324
  have hshift1 : EdwardsBridge.doubleSpec (acc47 rho) (shiftOnce47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1304) (rho 1305) (rho 1306) (rho 1307) (rho 1308) (rho 1309) (rho 1310)
      (by simpa [acc47] using hacc)
      (by linear_combination r1303)
      (by linear_combination r1304)
      (by linear_combination r1305)
      (by linear_combination r1306)
      (by linear_combination r1307)
    simpa [acc47, shiftOnce47] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc47 rho) (shiftOnce47 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc47 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce47 rho) (shifted47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1309) (rho 1310) (rho 1311) (rho 1312) (rho 1313) (rho 1314) (rho 1315)
      (by simpa [shiftOnce47] using hshift1On)
      (by linear_combination r1308)
      (by linear_combination r1309)
      (by linear_combination r1310)
      (by linear_combination r1311)
      (by linear_combination r1312)
    simpa [shiftOnce47, shifted47] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce47 rho) (shifted47 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce47 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 155) (rho 154)
      (base rho) (twice rho) (triple rho) (digit47 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 155) (rho 154)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1317 + rho 1318, (1 : F) + rho 1320 + rho 1321⟩ := by
      constructor
      · refine ⟨(rho 1316 + (rho 258) - (0)), rho 1317, ?_, ?_, ?_⟩
        · linear_combination r1313 - (rho 154) * order_cast_zero
        · linear_combination r1314
        · linear_combination r1315
      · refine ⟨(rho 1319 + (rho 259) - ((1 : F))), rho 1320, ?_, ?_, ?_⟩
        · linear_combination r1316 - (rho 154) * order_cast_zero
        · linear_combination r1317
        · linear_combination r1318
    simpa [base, twice, triple, digit47] using hraw
  have hhigh : rho 155 =
      Bool.toZMod bits[154]! := by
    simpa only using rho_bit_of_map rho bits hbits 154 (by decide +kernel)
  have hlow : rho 154 =
      Bool.toZMod bits[153]! := by
    simpa only using rho_bit_of_map rho bits hbits 153 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[154]! bits[153]! (base rho) (twice rho) (triple rho)
    (digit47 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit47 rho) := by
    rw [hdigit]
    cases bits[154]! <;> cases bits[153]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted47 rho) (digit47 rho) (acc48 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1314) (rho 1315) (rho 1317 + rho 1318) ((1 : F) + rho 1320 + rho 1321)
      (rho 1322) (rho 1323) (rho 1324) (rho 1325) (rho 1326) (rho 1327)
      (by simpa [shifted47] using hshift2On)
      (by simpa [digit47] using hdigitOn)
      (by linear_combination r1319)
      (by linear_combination r1320)
      (by linear_combination r1321)
      (by linear_combination r1322)
      (by linear_combination r1323)
      (by linear_combination r1324)
    simpa [shifted47, digit47, acc48] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc48 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted47 rho) (digit47 rho) (acc48 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted47 rho) (digit47 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 155) (rho 154)
      (base rho) (twice rho) (triple rho) (acc47 rho)
      (acc48 rho) :=
    ⟨shiftOnce47 rho, shifted47 rho, digit47 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
