import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc0 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[248]! (scalarBits rho)[247]!
        (base rho) (twice rho) (triple rho) (acc0 rho)
        (acc1 rho) ∧
      EdwardsBridge.onCurve (acc1 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r269, r270, r271, r272, r273, r274, r275, r276, r277, r278, r279, r280, r281, r282, r283, r284, r285, r286, r287, r288, r289, r290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow269 at r269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow270 at r270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow271 at r271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow272 at r272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow273 at r273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow274 at r274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow275 at r275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow276 at r276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow277 at r277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow278 at r278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow279 at r279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow280 at r280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow281 at r281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow282 at r282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow283 at r283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow284 at r284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow285 at r285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow286 at r286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow287 at r287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow288 at r288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow289 at r289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow290 at r290
  have hshift1 : EdwardsBridge.doubleSpec (acc0 rho) (shiftOnce0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 267 + rho 268) ((1 : F) + rho 270 + rho 271) (rho 272) (rho 273) (rho 274) (rho 275) (rho 276)
      (by simpa [acc0] using hacc)
      (by linear_combination r269)
      (by linear_combination r270)
      (by linear_combination r271)
      (by linear_combination r272)
      (by linear_combination r273)
    simpa [acc0, shiftOnce0] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc0 rho) (shiftOnce0 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc0 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce0 rho) (shifted0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 275) (rho 276) (rho 277) (rho 278) (rho 279) (rho 280) (rho 281)
      (by simpa [shiftOnce0] using hshift1On)
      (by linear_combination r274)
      (by linear_combination r275)
      (by linear_combination r276)
      (by linear_combination r277)
      (by linear_combination r278)
    simpa [shiftOnce0, shifted0] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce0 rho) (shifted0 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce0 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 249) (rho 248)
      (base rho) (twice rho) (triple rho) (digit0 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 249) (rho 248)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 283 + rho 284, (1 : F) + rho 286 + rho 287⟩ := by
      constructor
      · refine ⟨(rho 282 + (rho 258) - (0)), rho 283, ?_, ?_, ?_⟩
        · linear_combination r279 - (rho 248) * order_cast_zero
        · linear_combination r280
        · linear_combination r281
      · refine ⟨(rho 285 + (rho 259) - ((1 : F))), rho 286, ?_, ?_, ?_⟩
        · linear_combination r282 - (rho 248) * order_cast_zero
        · linear_combination r283
        · linear_combination r284
    simpa [base, twice, triple, digit0] using hraw
  have hhigh : rho 249 =
      Bool.toZMod bits[248]! := by
    simpa only using rho_bit_of_map rho bits hbits 248 (by decide +kernel)
  have hlow : rho 248 =
      Bool.toZMod bits[247]! := by
    simpa only using rho_bit_of_map rho bits hbits 247 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[248]! bits[247]! (base rho) (twice rho) (triple rho)
    (digit0 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit0 rho) := by
    rw [hdigit]
    cases bits[248]! <;> cases bits[247]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted0 rho) (digit0 rho) (acc1 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 280) (rho 281) (rho 283 + rho 284) ((1 : F) + rho 286 + rho 287)
      (rho 288) (rho 289) (rho 290) (rho 291) (rho 292) (rho 293)
      (by simpa [shifted0] using hshift2On)
      (by simpa [digit0] using hdigitOn)
      (by linear_combination r285)
      (by linear_combination r286)
      (by linear_combination r287)
      (by linear_combination r288)
      (by linear_combination r289)
      (by linear_combination r290)
    simpa [shifted0, digit0, acc1] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc1 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted0 rho) (digit0 rho) (acc1 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted0 rho) (digit0 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 249) (rho 248)
      (base rho) (twice rho) (triple rho) (acc0 rho)
      (acc1 rho) :=
    ⟨shiftOnce0 rho, shifted0 rho, digit0 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window1 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc1 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[246]! (scalarBits rho)[245]!
        (base rho) (twice rho) (triple rho) (acc1 rho)
        (acc2 rho) ∧
      EdwardsBridge.onCurve (acc2 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r291, r292, r293, r294, r295, r296, r297, r298, r299, r300, r301, r302, r303, r304, r305, r306, r307, r308, r309, r310, r311, r312, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow291 at r291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow292 at r292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow293 at r293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow294 at r294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow295 at r295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow296 at r296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow297 at r297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow298 at r298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow299 at r299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow300 at r300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow301 at r301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow302 at r302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow303 at r303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow304 at r304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow305 at r305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow306 at r306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow307 at r307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow308 at r308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow309 at r309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow310 at r310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow311 at r311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow312 at r312
  have hshift1 : EdwardsBridge.doubleSpec (acc1 rho) (shiftOnce1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 292) (rho 293) (rho 294) (rho 295) (rho 296) (rho 297) (rho 298)
      (by simpa [acc1] using hacc)
      (by linear_combination r291)
      (by linear_combination r292)
      (by linear_combination r293)
      (by linear_combination r294)
      (by linear_combination r295)
    simpa [acc1, shiftOnce1] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc1 rho) (shiftOnce1 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc1 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce1 rho) (shifted1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 297) (rho 298) (rho 299) (rho 300) (rho 301) (rho 302) (rho 303)
      (by simpa [shiftOnce1] using hshift1On)
      (by linear_combination r296)
      (by linear_combination r297)
      (by linear_combination r298)
      (by linear_combination r299)
      (by linear_combination r300)
    simpa [shiftOnce1, shifted1] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce1 rho) (shifted1 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce1 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 247) (rho 246)
      (base rho) (twice rho) (triple rho) (digit1 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 247) (rho 246)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 305 + rho 306, (1 : F) + rho 308 + rho 309⟩ := by
      constructor
      · refine ⟨(rho 304 + (rho 258) - (0)), rho 305, ?_, ?_, ?_⟩
        · linear_combination r301 - (rho 246) * order_cast_zero
        · linear_combination r302
        · linear_combination r303
      · refine ⟨(rho 307 + (rho 259) - ((1 : F))), rho 308, ?_, ?_, ?_⟩
        · linear_combination r304 - (rho 246) * order_cast_zero
        · linear_combination r305
        · linear_combination r306
    simpa [base, twice, triple, digit1] using hraw
  have hhigh : rho 247 =
      Bool.toZMod bits[246]! := by
    simpa only using rho_bit_of_map rho bits hbits 246 (by decide +kernel)
  have hlow : rho 246 =
      Bool.toZMod bits[245]! := by
    simpa only using rho_bit_of_map rho bits hbits 245 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[246]! bits[245]! (base rho) (twice rho) (triple rho)
    (digit1 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit1 rho) := by
    rw [hdigit]
    cases bits[246]! <;> cases bits[245]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted1 rho) (digit1 rho) (acc2 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 302) (rho 303) (rho 305 + rho 306) ((1 : F) + rho 308 + rho 309)
      (rho 310) (rho 311) (rho 312) (rho 313) (rho 314) (rho 315)
      (by simpa [shifted1] using hshift2On)
      (by simpa [digit1] using hdigitOn)
      (by linear_combination r307)
      (by linear_combination r308)
      (by linear_combination r309)
      (by linear_combination r310)
      (by linear_combination r311)
      (by linear_combination r312)
    simpa [shifted1, digit1, acc2] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc2 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted1 rho) (digit1 rho) (acc2 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted1 rho) (digit1 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 247) (rho 246)
      (base rho) (twice rho) (triple rho) (acc1 rho)
      (acc2 rho) :=
    ⟨shiftOnce1 rho, shifted1 rho, digit1 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window2 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc2 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[244]! (scalarBits rho)[243]!
        (base rho) (twice rho) (triple rho) (acc2 rho)
        (acc3 rho) ∧
      EdwardsBridge.onCurve (acc3 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, p3, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r313, r314, r315, r316, r317, r318, r319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, r326, r327, r328, r329, r330, r331, r332, r333, r334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow313 at r313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow314 at r314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow315 at r315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow316 at r316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow317 at r317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow318 at r318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow319 at r319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow320 at r320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow321 at r321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow322 at r322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow323 at r323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow324 at r324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow325 at r325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow326 at r326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow327 at r327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow328 at r328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow329 at r329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow330 at r330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow331 at r331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow332 at r332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow333 at r333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow334 at r334
  have hshift1 : EdwardsBridge.doubleSpec (acc2 rho) (shiftOnce2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 314) (rho 315) (rho 316) (rho 317) (rho 318) (rho 319) (rho 320)
      (by simpa [acc2] using hacc)
      (by linear_combination r313)
      (by linear_combination r314)
      (by linear_combination r315)
      (by linear_combination r316)
      (by linear_combination r317)
    simpa [acc2, shiftOnce2] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc2 rho) (shiftOnce2 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc2 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce2 rho) (shifted2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 319) (rho 320) (rho 321) (rho 322) (rho 323) (rho 324) (rho 325)
      (by simpa [shiftOnce2] using hshift1On)
      (by linear_combination r318)
      (by linear_combination r319)
      (by linear_combination r320)
      (by linear_combination r321)
      (by linear_combination r322)
    simpa [shiftOnce2, shifted2] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce2 rho) (shifted2 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce2 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 245) (rho 244)
      (base rho) (twice rho) (triple rho) (digit2 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 245) (rho 244)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 327 + rho 328, (1 : F) + rho 330 + rho 331⟩ := by
      constructor
      · refine ⟨(rho 326 + (rho 258) - (0)), rho 327, ?_, ?_, ?_⟩
        · linear_combination r323 - (rho 244) * order_cast_zero
        · linear_combination r324
        · linear_combination r325
      · refine ⟨(rho 329 + (rho 259) - ((1 : F))), rho 330, ?_, ?_, ?_⟩
        · linear_combination r326 - (rho 244) * order_cast_zero
        · linear_combination r327
        · linear_combination r328
    simpa [base, twice, triple, digit2] using hraw
  have hhigh : rho 245 =
      Bool.toZMod bits[244]! := by
    simpa only using rho_bit_of_map rho bits hbits 244 (by decide +kernel)
  have hlow : rho 244 =
      Bool.toZMod bits[243]! := by
    simpa only using rho_bit_of_map rho bits hbits 243 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[244]! bits[243]! (base rho) (twice rho) (triple rho)
    (digit2 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit2 rho) := by
    rw [hdigit]
    cases bits[244]! <;> cases bits[243]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted2 rho) (digit2 rho) (acc3 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 324) (rho 325) (rho 327 + rho 328) ((1 : F) + rho 330 + rho 331)
      (rho 332) (rho 333) (rho 334) (rho 335) (rho 336) (rho 337)
      (by simpa [shifted2] using hshift2On)
      (by simpa [digit2] using hdigitOn)
      (by linear_combination r329)
      (by linear_combination r330)
      (by linear_combination r331)
      (by linear_combination r332)
      (by linear_combination r333)
      (by linear_combination r334)
    simpa [shifted2, digit2, acc3] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc3 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted2 rho) (digit2 rho) (acc3 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted2 rho) (digit2 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 245) (rho 244)
      (base rho) (twice rho) (triple rho) (acc2 rho)
      (acc3 rho) :=
    ⟨shiftOnce2 rho, shifted2 rho, digit2 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window3 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc3 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[242]! (scalarBits rho)[241]!
        (base rho) (twice rho) (triple rho) (acc3 rho)
        (acc4 rho) ∧
      EdwardsBridge.onCurve (acc4 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r335, r336, r337, r338, r339, r340, r341, r342, r343, r344, r345, r346, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow335 at r335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow336 at r336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow337 at r337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow338 at r338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow339 at r339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow340 at r340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow341 at r341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow342 at r342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow343 at r343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow344 at r344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow345 at r345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow346 at r346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow347 at r347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow348 at r348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow349 at r349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow350 at r350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow351 at r351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow352 at r352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow353 at r353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow354 at r354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow355 at r355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow356 at r356
  have hshift1 : EdwardsBridge.doubleSpec (acc3 rho) (shiftOnce3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 336) (rho 337) (rho 338) (rho 339) (rho 340) (rho 341) (rho 342)
      (by simpa [acc3] using hacc)
      (by linear_combination r335)
      (by linear_combination r336)
      (by linear_combination r337)
      (by linear_combination r338)
      (by linear_combination r339)
    simpa [acc3, shiftOnce3] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc3 rho) (shiftOnce3 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc3 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce3 rho) (shifted3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 341) (rho 342) (rho 343) (rho 344) (rho 345) (rho 346) (rho 347)
      (by simpa [shiftOnce3] using hshift1On)
      (by linear_combination r340)
      (by linear_combination r341)
      (by linear_combination r342)
      (by linear_combination r343)
      (by linear_combination r344)
    simpa [shiftOnce3, shifted3] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce3 rho) (shifted3 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce3 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 243) (rho 242)
      (base rho) (twice rho) (triple rho) (digit3 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 243) (rho 242)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 349 + rho 350, (1 : F) + rho 352 + rho 353⟩ := by
      constructor
      · refine ⟨(rho 348 + (rho 258) - (0)), rho 349, ?_, ?_, ?_⟩
        · linear_combination r345 - (rho 242) * order_cast_zero
        · linear_combination r346
        · linear_combination r347
      · refine ⟨(rho 351 + (rho 259) - ((1 : F))), rho 352, ?_, ?_, ?_⟩
        · linear_combination r348 - (rho 242) * order_cast_zero
        · linear_combination r349
        · linear_combination r350
    simpa [base, twice, triple, digit3] using hraw
  have hhigh : rho 243 =
      Bool.toZMod bits[242]! := by
    simpa only using rho_bit_of_map rho bits hbits 242 (by decide +kernel)
  have hlow : rho 242 =
      Bool.toZMod bits[241]! := by
    simpa only using rho_bit_of_map rho bits hbits 241 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[242]! bits[241]! (base rho) (twice rho) (triple rho)
    (digit3 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit3 rho) := by
    rw [hdigit]
    cases bits[242]! <;> cases bits[241]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted3 rho) (digit3 rho) (acc4 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 346) (rho 347) (rho 349 + rho 350) ((1 : F) + rho 352 + rho 353)
      (rho 354) (rho 355) (rho 356) (rho 357) (rho 358) (rho 359)
      (by simpa [shifted3] using hshift2On)
      (by simpa [digit3] using hdigitOn)
      (by linear_combination r351)
      (by linear_combination r352)
      (by linear_combination r353)
      (by linear_combination r354)
      (by linear_combination r355)
      (by linear_combination r356)
    simpa [shifted3, digit3, acc4] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc4 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted3 rho) (digit3 rho) (acc4 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted3 rho) (digit3 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 243) (rho 242)
      (base rho) (twice rho) (triple rho) (acc3 rho)
      (acc4 rho) :=
    ⟨shiftOnce3 rho, shifted3 rho, digit3 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window4 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc4 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[240]! (scalarBits rho)[239]!
        (base rho) (twice rho) (triple rho) (acc4 rho)
        (acc5 rho) ∧
      EdwardsBridge.onCurve (acc5 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r357, r358, r359, r360, r361, r362, r363, r364, r365, r366, r367, r368, r369, r370, r371, r372, r373, r374, r375, r376, r377, r378, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow357 at r357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow358 at r358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow359 at r359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow360 at r360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow361 at r361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow362 at r362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow363 at r363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow364 at r364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow365 at r365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow366 at r366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow367 at r367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow368 at r368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow369 at r369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow370 at r370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow371 at r371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow372 at r372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow373 at r373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow374 at r374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow375 at r375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow376 at r376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow377 at r377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow378 at r378
  have hshift1 : EdwardsBridge.doubleSpec (acc4 rho) (shiftOnce4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 358) (rho 359) (rho 360) (rho 361) (rho 362) (rho 363) (rho 364)
      (by simpa [acc4] using hacc)
      (by linear_combination r357)
      (by linear_combination r358)
      (by linear_combination r359)
      (by linear_combination r360)
      (by linear_combination r361)
    simpa [acc4, shiftOnce4] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc4 rho) (shiftOnce4 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc4 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce4 rho) (shifted4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 363) (rho 364) (rho 365) (rho 366) (rho 367) (rho 368) (rho 369)
      (by simpa [shiftOnce4] using hshift1On)
      (by linear_combination r362)
      (by linear_combination r363)
      (by linear_combination r364)
      (by linear_combination r365)
      (by linear_combination r366)
    simpa [shiftOnce4, shifted4] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce4 rho) (shifted4 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce4 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 241) (rho 240)
      (base rho) (twice rho) (triple rho) (digit4 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 241) (rho 240)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 371 + rho 372, (1 : F) + rho 374 + rho 375⟩ := by
      constructor
      · refine ⟨(rho 370 + (rho 258) - (0)), rho 371, ?_, ?_, ?_⟩
        · linear_combination r367 - (rho 240) * order_cast_zero
        · linear_combination r368
        · linear_combination r369
      · refine ⟨(rho 373 + (rho 259) - ((1 : F))), rho 374, ?_, ?_, ?_⟩
        · linear_combination r370 - (rho 240) * order_cast_zero
        · linear_combination r371
        · linear_combination r372
    simpa [base, twice, triple, digit4] using hraw
  have hhigh : rho 241 =
      Bool.toZMod bits[240]! := by
    simpa only using rho_bit_of_map rho bits hbits 240 (by decide +kernel)
  have hlow : rho 240 =
      Bool.toZMod bits[239]! := by
    simpa only using rho_bit_of_map rho bits hbits 239 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[240]! bits[239]! (base rho) (twice rho) (triple rho)
    (digit4 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit4 rho) := by
    rw [hdigit]
    cases bits[240]! <;> cases bits[239]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted4 rho) (digit4 rho) (acc5 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 368) (rho 369) (rho 371 + rho 372) ((1 : F) + rho 374 + rho 375)
      (rho 376) (rho 377) (rho 378) (rho 379) (rho 380) (rho 381)
      (by simpa [shifted4] using hshift2On)
      (by simpa [digit4] using hdigitOn)
      (by linear_combination r373)
      (by linear_combination r374)
      (by linear_combination r375)
      (by linear_combination r376)
      (by linear_combination r377)
      (by linear_combination r378)
    simpa [shifted4, digit4, acc5] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc5 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted4 rho) (digit4 rho) (acc5 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted4 rho) (digit4 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 241) (rho 240)
      (base rho) (twice rho) (triple rho) (acc4 rho)
      (acc5 rho) :=
    ⟨shiftOnce4 rho, shifted4 rho, digit4 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window5 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc5 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[238]! (scalarBits rho)[237]!
        (base rho) (twice rho) (triple rho) (acc5 rho)
        (acc6 rho) ∧
      EdwardsBridge.onCurve (acc6 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, p4, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r379, r380, r381, r382, r383, r384, r385, r386, r387, r388, r389, r390, r391, r392, r393, r394, r395, r396, r397, r398, r399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart5 at p5
  rcases p5 with ⟨r400, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow379 at r379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow380 at r380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow381 at r381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow382 at r382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow383 at r383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow384 at r384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow385 at r385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow386 at r386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow387 at r387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow388 at r388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow389 at r389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow390 at r390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow391 at r391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow392 at r392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow393 at r393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow394 at r394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow395 at r395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow396 at r396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow397 at r397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow398 at r398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow399 at r399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow400 at r400
  have hshift1 : EdwardsBridge.doubleSpec (acc5 rho) (shiftOnce5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 380) (rho 381) (rho 382) (rho 383) (rho 384) (rho 385) (rho 386)
      (by simpa [acc5] using hacc)
      (by linear_combination r379)
      (by linear_combination r380)
      (by linear_combination r381)
      (by linear_combination r382)
      (by linear_combination r383)
    simpa [acc5, shiftOnce5] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc5 rho) (shiftOnce5 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc5 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce5 rho) (shifted5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 385) (rho 386) (rho 387) (rho 388) (rho 389) (rho 390) (rho 391)
      (by simpa [shiftOnce5] using hshift1On)
      (by linear_combination r384)
      (by linear_combination r385)
      (by linear_combination r386)
      (by linear_combination r387)
      (by linear_combination r388)
    simpa [shiftOnce5, shifted5] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce5 rho) (shifted5 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce5 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 239) (rho 238)
      (base rho) (twice rho) (triple rho) (digit5 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 239) (rho 238)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 393 + rho 394, (1 : F) + rho 396 + rho 397⟩ := by
      constructor
      · refine ⟨(rho 392 + (rho 258) - (0)), rho 393, ?_, ?_, ?_⟩
        · linear_combination r389 - (rho 238) * order_cast_zero
        · linear_combination r390
        · linear_combination r391
      · refine ⟨(rho 395 + (rho 259) - ((1 : F))), rho 396, ?_, ?_, ?_⟩
        · linear_combination r392 - (rho 238) * order_cast_zero
        · linear_combination r393
        · linear_combination r394
    simpa [base, twice, triple, digit5] using hraw
  have hhigh : rho 239 =
      Bool.toZMod bits[238]! := by
    simpa only using rho_bit_of_map rho bits hbits 238 (by decide +kernel)
  have hlow : rho 238 =
      Bool.toZMod bits[237]! := by
    simpa only using rho_bit_of_map rho bits hbits 237 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[238]! bits[237]! (base rho) (twice rho) (triple rho)
    (digit5 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit5 rho) := by
    rw [hdigit]
    cases bits[238]! <;> cases bits[237]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted5 rho) (digit5 rho) (acc6 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 390) (rho 391) (rho 393 + rho 394) ((1 : F) + rho 396 + rho 397)
      (rho 398) (rho 399) (rho 400) (rho 401) (rho 402) (rho 403)
      (by simpa [shifted5] using hshift2On)
      (by simpa [digit5] using hdigitOn)
      (by linear_combination r395)
      (by linear_combination r396)
      (by linear_combination r397)
      (by linear_combination r398)
      (by linear_combination r399)
      (by linear_combination r400)
    simpa [shifted5, digit5, acc6] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc6 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted5 rho) (digit5 rho) (acc6 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted5 rho) (digit5 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 239) (rho 238)
      (base rho) (twice rho) (triple rho) (acc5 rho)
      (acc6 rho) :=
    ⟨shiftOnce5 rho, shifted5 rho, digit5 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
