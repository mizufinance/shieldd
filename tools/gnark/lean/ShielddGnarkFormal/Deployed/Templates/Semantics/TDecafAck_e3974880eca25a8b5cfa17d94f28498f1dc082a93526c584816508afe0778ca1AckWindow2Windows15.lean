import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window90 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc90 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[68]! (scalarBits rho)[67]!
        (base rho) (twice rho) (triple rho) (acc90 rho)
        (acc91 rho) ∧
      EdwardsBridge.onCurve (acc91 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, r2249, r2250, r2251, r2252, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266, r2267, r2268, r2269, r2270, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2249 at r2249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2250 at r2250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2251 at r2251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2252 at r2252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2253 at r2253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2254 at r2254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2255 at r2255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2256 at r2256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2257 at r2257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2258 at r2258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2259 at r2259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2260 at r2260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2261 at r2261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2262 at r2262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2263 at r2263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2264 at r2264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2265 at r2265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2266 at r2266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2267 at r2267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2268 at r2268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2269 at r2269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2270 at r2270
  have hshift1 : EdwardsBridge.doubleSpec (acc90 rho) (shiftOnce90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2250) (rho 2251) (rho 2252) (rho 2253) (rho 2254) (rho 2255) (rho 2256)
      (by simpa [acc90] using hacc)
      (by linear_combination r2249)
      (by linear_combination r2250)
      (by linear_combination r2251)
      (by linear_combination r2252)
      (by linear_combination r2253)
    simpa [acc90, shiftOnce90] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc90 rho) (shiftOnce90 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc90 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce90 rho) (shifted90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2255) (rho 2256) (rho 2257) (rho 2258) (rho 2259) (rho 2260) (rho 2261)
      (by simpa [shiftOnce90] using hshift1On)
      (by linear_combination r2254)
      (by linear_combination r2255)
      (by linear_combination r2256)
      (by linear_combination r2257)
      (by linear_combination r2258)
    simpa [shiftOnce90, shifted90] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce90 rho) (shifted90 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce90 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 69) (rho 68)
      (base rho) (twice rho) (triple rho) (digit90 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 69) (rho 68)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2263 + rho 2264, (1 : F) + rho 2266 + rho 2267⟩ := by
      constructor
      · refine ⟨(rho 2262 + (rho 258) - (0)), rho 2263, ?_, ?_, ?_⟩
        · linear_combination r2259 - (rho 68) * order_cast_zero
        · linear_combination r2260
        · linear_combination r2261
      · refine ⟨(rho 2265 + (rho 259) - ((1 : F))), rho 2266, ?_, ?_, ?_⟩
        · linear_combination r2262 - (rho 68) * order_cast_zero
        · linear_combination r2263
        · linear_combination r2264
    simpa [base, twice, triple, digit90] using hraw
  have hhigh : rho 69 =
      Bool.toZMod bits[68]! := by
    simpa only using rho_bit_of_map rho bits hbits 68 (by decide +kernel)
  have hlow : rho 68 =
      Bool.toZMod bits[67]! := by
    simpa only using rho_bit_of_map rho bits hbits 67 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[68]! bits[67]! (base rho) (twice rho) (triple rho)
    (digit90 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit90 rho) := by
    rw [hdigit]
    cases bits[68]! <;> cases bits[67]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted90 rho) (digit90 rho) (acc91 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2260) (rho 2261) (rho 2263 + rho 2264) ((1 : F) + rho 2266 + rho 2267)
      (rho 2268) (rho 2269) (rho 2270) (rho 2271) (rho 2272) (rho 2273)
      (by simpa [shifted90] using hshift2On)
      (by simpa [digit90] using hdigitOn)
      (by linear_combination r2265)
      (by linear_combination r2266)
      (by linear_combination r2267)
      (by linear_combination r2268)
      (by linear_combination r2269)
      (by linear_combination r2270)
    simpa [shifted90, digit90, acc91] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc91 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted90 rho) (digit90 rho) (acc91 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted90 rho) (digit90 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 69) (rho 68)
      (base rho) (twice rho) (triple rho) (acc90 rho)
      (acc91 rho) :=
    ⟨shiftOnce90 rho, shifted90 rho, digit90 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window91 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc91 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[66]! (scalarBits rho)[65]!
        (base rho) (twice rho) (triple rho) (acc91 rho)
        (acc92 rho) ∧
      EdwardsBridge.onCurve (acc92 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2271, r2272, r2273, r2274, r2275, r2276, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2271 at r2271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2272 at r2272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2273 at r2273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2274 at r2274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2275 at r2275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2276 at r2276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2277 at r2277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2278 at r2278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2279 at r2279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2280 at r2280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2281 at r2281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2282 at r2282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2283 at r2283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2284 at r2284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2285 at r2285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2286 at r2286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2287 at r2287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2288 at r2288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2289 at r2289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2290 at r2290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2291 at r2291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2292 at r2292
  have hshift1 : EdwardsBridge.doubleSpec (acc91 rho) (shiftOnce91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2272) (rho 2273) (rho 2274) (rho 2275) (rho 2276) (rho 2277) (rho 2278)
      (by simpa [acc91] using hacc)
      (by linear_combination r2271)
      (by linear_combination r2272)
      (by linear_combination r2273)
      (by linear_combination r2274)
      (by linear_combination r2275)
    simpa [acc91, shiftOnce91] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc91 rho) (shiftOnce91 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc91 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce91 rho) (shifted91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2277) (rho 2278) (rho 2279) (rho 2280) (rho 2281) (rho 2282) (rho 2283)
      (by simpa [shiftOnce91] using hshift1On)
      (by linear_combination r2276)
      (by linear_combination r2277)
      (by linear_combination r2278)
      (by linear_combination r2279)
      (by linear_combination r2280)
    simpa [shiftOnce91, shifted91] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce91 rho) (shifted91 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce91 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 67) (rho 66)
      (base rho) (twice rho) (triple rho) (digit91 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 67) (rho 66)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2285 + rho 2286, (1 : F) + rho 2288 + rho 2289⟩ := by
      constructor
      · refine ⟨(rho 2284 + (rho 258) - (0)), rho 2285, ?_, ?_, ?_⟩
        · linear_combination r2281 - (rho 66) * order_cast_zero
        · linear_combination r2282
        · linear_combination r2283
      · refine ⟨(rho 2287 + (rho 259) - ((1 : F))), rho 2288, ?_, ?_, ?_⟩
        · linear_combination r2284 - (rho 66) * order_cast_zero
        · linear_combination r2285
        · linear_combination r2286
    simpa [base, twice, triple, digit91] using hraw
  have hhigh : rho 67 =
      Bool.toZMod bits[66]! := by
    simpa only using rho_bit_of_map rho bits hbits 66 (by decide +kernel)
  have hlow : rho 66 =
      Bool.toZMod bits[65]! := by
    simpa only using rho_bit_of_map rho bits hbits 65 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[66]! bits[65]! (base rho) (twice rho) (triple rho)
    (digit91 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit91 rho) := by
    rw [hdigit]
    cases bits[66]! <;> cases bits[65]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted91 rho) (digit91 rho) (acc92 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2282) (rho 2283) (rho 2285 + rho 2286) ((1 : F) + rho 2288 + rho 2289)
      (rho 2290) (rho 2291) (rho 2292) (rho 2293) (rho 2294) (rho 2295)
      (by simpa [shifted91] using hshift2On)
      (by simpa [digit91] using hdigitOn)
      (by linear_combination r2287)
      (by linear_combination r2288)
      (by linear_combination r2289)
      (by linear_combination r2290)
      (by linear_combination r2291)
      (by linear_combination r2292)
    simpa [shifted91, digit91, acc92] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc92 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted91 rho) (digit91 rho) (acc92 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted91 rho) (digit91 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 67) (rho 66)
      (base rho) (twice rho) (triple rho) (acc91 rho)
      (acc92 rho) :=
    ⟨shiftOnce91 rho, shifted91 rho, digit91 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window92 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc92 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[64]! (scalarBits rho)[63]!
        (base rho) (twice rho) (triple rho) (acc92 rho)
        (acc93 rho) ∧
      EdwardsBridge.onCurve (acc93 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2293, r2294, r2295, r2296, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2293 at r2293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2294 at r2294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2295 at r2295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2296 at r2296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2297 at r2297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2298 at r2298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2299 at r2299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2300 at r2300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2301 at r2301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2302 at r2302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2303 at r2303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2304 at r2304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2305 at r2305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2306 at r2306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2307 at r2307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2308 at r2308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2309 at r2309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2310 at r2310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2311 at r2311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2312 at r2312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2313 at r2313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2314 at r2314
  have hshift1 : EdwardsBridge.doubleSpec (acc92 rho) (shiftOnce92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2294) (rho 2295) (rho 2296) (rho 2297) (rho 2298) (rho 2299) (rho 2300)
      (by simpa [acc92] using hacc)
      (by linear_combination r2293)
      (by linear_combination r2294)
      (by linear_combination r2295)
      (by linear_combination r2296)
      (by linear_combination r2297)
    simpa [acc92, shiftOnce92] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc92 rho) (shiftOnce92 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc92 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce92 rho) (shifted92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2299) (rho 2300) (rho 2301) (rho 2302) (rho 2303) (rho 2304) (rho 2305)
      (by simpa [shiftOnce92] using hshift1On)
      (by linear_combination r2298)
      (by linear_combination r2299)
      (by linear_combination r2300)
      (by linear_combination r2301)
      (by linear_combination r2302)
    simpa [shiftOnce92, shifted92] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce92 rho) (shifted92 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce92 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 65) (rho 64)
      (base rho) (twice rho) (triple rho) (digit92 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 65) (rho 64)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2307 + rho 2308, (1 : F) + rho 2310 + rho 2311⟩ := by
      constructor
      · refine ⟨(rho 2306 + (rho 258) - (0)), rho 2307, ?_, ?_, ?_⟩
        · linear_combination r2303 - (rho 64) * order_cast_zero
        · linear_combination r2304
        · linear_combination r2305
      · refine ⟨(rho 2309 + (rho 259) - ((1 : F))), rho 2310, ?_, ?_, ?_⟩
        · linear_combination r2306 - (rho 64) * order_cast_zero
        · linear_combination r2307
        · linear_combination r2308
    simpa [base, twice, triple, digit92] using hraw
  have hhigh : rho 65 =
      Bool.toZMod bits[64]! := by
    simpa only using rho_bit_of_map rho bits hbits 64 (by decide +kernel)
  have hlow : rho 64 =
      Bool.toZMod bits[63]! := by
    simpa only using rho_bit_of_map rho bits hbits 63 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[64]! bits[63]! (base rho) (twice rho) (triple rho)
    (digit92 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit92 rho) := by
    rw [hdigit]
    cases bits[64]! <;> cases bits[63]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted92 rho) (digit92 rho) (acc93 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2304) (rho 2305) (rho 2307 + rho 2308) ((1 : F) + rho 2310 + rho 2311)
      (rho 2312) (rho 2313) (rho 2314) (rho 2315) (rho 2316) (rho 2317)
      (by simpa [shifted92] using hshift2On)
      (by simpa [digit92] using hdigitOn)
      (by linear_combination r2309)
      (by linear_combination r2310)
      (by linear_combination r2311)
      (by linear_combination r2312)
      (by linear_combination r2313)
      (by linear_combination r2314)
    simpa [shifted92, digit92, acc93] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc93 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted92 rho) (digit92 rho) (acc93 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted92 rho) (digit92 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 65) (rho 64)
      (base rho) (twice rho) (triple rho) (acc92 rho)
      (acc93 rho) :=
    ⟨shiftOnce92 rho, shifted92 rho, digit92 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window93 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc93 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[62]! (scalarBits rho)[61]!
        (base rho) (twice rho) (triple rho) (acc93 rho)
        (acc94 rho) ∧
      EdwardsBridge.onCurve (acc94 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, p29,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2315, r2316, r2317, r2318, r2319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart29 at p29
  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2315 at r2315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2316 at r2316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2317 at r2317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2318 at r2318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2319 at r2319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2320 at r2320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2321 at r2321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2322 at r2322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2323 at r2323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2324 at r2324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2325 at r2325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2326 at r2326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2327 at r2327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2328 at r2328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2329 at r2329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2330 at r2330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2331 at r2331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2332 at r2332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2333 at r2333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2334 at r2334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2335 at r2335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2336 at r2336
  have hshift1 : EdwardsBridge.doubleSpec (acc93 rho) (shiftOnce93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2316) (rho 2317) (rho 2318) (rho 2319) (rho 2320) (rho 2321) (rho 2322)
      (by simpa [acc93] using hacc)
      (by linear_combination r2315)
      (by linear_combination r2316)
      (by linear_combination r2317)
      (by linear_combination r2318)
      (by linear_combination r2319)
    simpa [acc93, shiftOnce93] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc93 rho) (shiftOnce93 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc93 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce93 rho) (shifted93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2321) (rho 2322) (rho 2323) (rho 2324) (rho 2325) (rho 2326) (rho 2327)
      (by simpa [shiftOnce93] using hshift1On)
      (by linear_combination r2320)
      (by linear_combination r2321)
      (by linear_combination r2322)
      (by linear_combination r2323)
      (by linear_combination r2324)
    simpa [shiftOnce93, shifted93] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce93 rho) (shifted93 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce93 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 63) (rho 62)
      (base rho) (twice rho) (triple rho) (digit93 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 63) (rho 62)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2329 + rho 2330, (1 : F) + rho 2332 + rho 2333⟩ := by
      constructor
      · refine ⟨(rho 2328 + (rho 258) - (0)), rho 2329, ?_, ?_, ?_⟩
        · linear_combination r2325 - (rho 62) * order_cast_zero
        · linear_combination r2326
        · linear_combination r2327
      · refine ⟨(rho 2331 + (rho 259) - ((1 : F))), rho 2332, ?_, ?_, ?_⟩
        · linear_combination r2328 - (rho 62) * order_cast_zero
        · linear_combination r2329
        · linear_combination r2330
    simpa [base, twice, triple, digit93] using hraw
  have hhigh : rho 63 =
      Bool.toZMod bits[62]! := by
    simpa only using rho_bit_of_map rho bits hbits 62 (by decide +kernel)
  have hlow : rho 62 =
      Bool.toZMod bits[61]! := by
    simpa only using rho_bit_of_map rho bits hbits 61 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[62]! bits[61]! (base rho) (twice rho) (triple rho)
    (digit93 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit93 rho) := by
    rw [hdigit]
    cases bits[62]! <;> cases bits[61]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted93 rho) (digit93 rho) (acc94 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2326) (rho 2327) (rho 2329 + rho 2330) ((1 : F) + rho 2332 + rho 2333)
      (rho 2334) (rho 2335) (rho 2336) (rho 2337) (rho 2338) (rho 2339)
      (by simpa [shifted93] using hshift2On)
      (by simpa [digit93] using hdigitOn)
      (by linear_combination r2331)
      (by linear_combination r2332)
      (by linear_combination r2333)
      (by linear_combination r2334)
      (by linear_combination r2335)
      (by linear_combination r2336)
    simpa [shifted93, digit93, acc94] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc94 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted93 rho) (digit93 rho) (acc94 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted93 rho) (digit93 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 63) (rho 62)
      (base rho) (twice rho) (triple rho) (acc93 rho)
      (acc94 rho) :=
    ⟨shiftOnce93 rho, shifted93 rho, digit93 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window94 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc94 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[60]! (scalarBits rho)[59]!
        (base rho) (twice rho) (triple rho) (acc94 rho)
        (acc95 rho) ∧
      EdwardsBridge.onCurve (acc95 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2337, r2338, r2339, r2340, r2341, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357, r2358, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2337 at r2337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2338 at r2338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2339 at r2339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2340 at r2340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2341 at r2341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2342 at r2342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2343 at r2343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2344 at r2344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2345 at r2345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2346 at r2346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2347 at r2347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2348 at r2348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2349 at r2349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2350 at r2350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2351 at r2351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2352 at r2352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2353 at r2353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2354 at r2354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2355 at r2355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2356 at r2356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2357 at r2357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2358 at r2358
  have hshift1 : EdwardsBridge.doubleSpec (acc94 rho) (shiftOnce94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2338) (rho 2339) (rho 2340) (rho 2341) (rho 2342) (rho 2343) (rho 2344)
      (by simpa [acc94] using hacc)
      (by linear_combination r2337)
      (by linear_combination r2338)
      (by linear_combination r2339)
      (by linear_combination r2340)
      (by linear_combination r2341)
    simpa [acc94, shiftOnce94] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc94 rho) (shiftOnce94 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc94 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce94 rho) (shifted94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2343) (rho 2344) (rho 2345) (rho 2346) (rho 2347) (rho 2348) (rho 2349)
      (by simpa [shiftOnce94] using hshift1On)
      (by linear_combination r2342)
      (by linear_combination r2343)
      (by linear_combination r2344)
      (by linear_combination r2345)
      (by linear_combination r2346)
    simpa [shiftOnce94, shifted94] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce94 rho) (shifted94 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce94 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 61) (rho 60)
      (base rho) (twice rho) (triple rho) (digit94 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 61) (rho 60)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2351 + rho 2352, (1 : F) + rho 2354 + rho 2355⟩ := by
      constructor
      · refine ⟨(rho 2350 + (rho 258) - (0)), rho 2351, ?_, ?_, ?_⟩
        · linear_combination r2347 - (rho 60) * order_cast_zero
        · linear_combination r2348
        · linear_combination r2349
      · refine ⟨(rho 2353 + (rho 259) - ((1 : F))), rho 2354, ?_, ?_, ?_⟩
        · linear_combination r2350 - (rho 60) * order_cast_zero
        · linear_combination r2351
        · linear_combination r2352
    simpa [base, twice, triple, digit94] using hraw
  have hhigh : rho 61 =
      Bool.toZMod bits[60]! := by
    simpa only using rho_bit_of_map rho bits hbits 60 (by decide +kernel)
  have hlow : rho 60 =
      Bool.toZMod bits[59]! := by
    simpa only using rho_bit_of_map rho bits hbits 59 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[60]! bits[59]! (base rho) (twice rho) (triple rho)
    (digit94 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit94 rho) := by
    rw [hdigit]
    cases bits[60]! <;> cases bits[59]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted94 rho) (digit94 rho) (acc95 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2348) (rho 2349) (rho 2351 + rho 2352) ((1 : F) + rho 2354 + rho 2355)
      (rho 2356) (rho 2357) (rho 2358) (rho 2359) (rho 2360) (rho 2361)
      (by simpa [shifted94] using hshift2On)
      (by simpa [digit94] using hdigitOn)
      (by linear_combination r2353)
      (by linear_combination r2354)
      (by linear_combination r2355)
      (by linear_combination r2356)
      (by linear_combination r2357)
      (by linear_combination r2358)
    simpa [shifted94, digit94, acc95] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc95 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted94 rho) (digit94 rho) (acc95 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted94 rho) (digit94 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 61) (rho 60)
      (base rho) (twice rho) (triple rho) (acc94 rho)
      (acc95 rho) :=
    ⟨shiftOnce94 rho, shifted94 rho, digit94 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window95 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc95 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[58]! (scalarBits rho)[57]!
        (base rho) (twice rho) (triple rho) (acc95 rho)
        (acc96 rho) ∧
      EdwardsBridge.onCurve (acc96 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2359, r2360, r2361, r2362, r2363, r2364, r2365, r2366, r2367, r2368, r2369, r2370, r2371, r2372, r2373, r2374, r2375, r2376, r2377, r2378, r2379, r2380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2359 at r2359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2360 at r2360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2361 at r2361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2362 at r2362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2363 at r2363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2364 at r2364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2365 at r2365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2366 at r2366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2367 at r2367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2368 at r2368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2369 at r2369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2370 at r2370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2371 at r2371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2372 at r2372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2373 at r2373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2374 at r2374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2375 at r2375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2376 at r2376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2377 at r2377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2378 at r2378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2379 at r2379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2380 at r2380
  have hshift1 : EdwardsBridge.doubleSpec (acc95 rho) (shiftOnce95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2360) (rho 2361) (rho 2362) (rho 2363) (rho 2364) (rho 2365) (rho 2366)
      (by simpa [acc95] using hacc)
      (by linear_combination r2359)
      (by linear_combination r2360)
      (by linear_combination r2361)
      (by linear_combination r2362)
      (by linear_combination r2363)
    simpa [acc95, shiftOnce95] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc95 rho) (shiftOnce95 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc95 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce95 rho) (shifted95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2365) (rho 2366) (rho 2367) (rho 2368) (rho 2369) (rho 2370) (rho 2371)
      (by simpa [shiftOnce95] using hshift1On)
      (by linear_combination r2364)
      (by linear_combination r2365)
      (by linear_combination r2366)
      (by linear_combination r2367)
      (by linear_combination r2368)
    simpa [shiftOnce95, shifted95] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce95 rho) (shifted95 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce95 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 59) (rho 58)
      (base rho) (twice rho) (triple rho) (digit95 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 59) (rho 58)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2373 + rho 2374, (1 : F) + rho 2376 + rho 2377⟩ := by
      constructor
      · refine ⟨(rho 2372 + (rho 258) - (0)), rho 2373, ?_, ?_, ?_⟩
        · linear_combination r2369 - (rho 58) * order_cast_zero
        · linear_combination r2370
        · linear_combination r2371
      · refine ⟨(rho 2375 + (rho 259) - ((1 : F))), rho 2376, ?_, ?_, ?_⟩
        · linear_combination r2372 - (rho 58) * order_cast_zero
        · linear_combination r2373
        · linear_combination r2374
    simpa [base, twice, triple, digit95] using hraw
  have hhigh : rho 59 =
      Bool.toZMod bits[58]! := by
    simpa only using rho_bit_of_map rho bits hbits 58 (by decide +kernel)
  have hlow : rho 58 =
      Bool.toZMod bits[57]! := by
    simpa only using rho_bit_of_map rho bits hbits 57 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[58]! bits[57]! (base rho) (twice rho) (triple rho)
    (digit95 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit95 rho) := by
    rw [hdigit]
    cases bits[58]! <;> cases bits[57]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted95 rho) (digit95 rho) (acc96 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2370) (rho 2371) (rho 2373 + rho 2374) ((1 : F) + rho 2376 + rho 2377)
      (rho 2378) (rho 2379) (rho 2380) (rho 2381) (rho 2382) (rho 2383)
      (by simpa [shifted95] using hshift2On)
      (by simpa [digit95] using hdigitOn)
      (by linear_combination r2375)
      (by linear_combination r2376)
      (by linear_combination r2377)
      (by linear_combination r2378)
      (by linear_combination r2379)
      (by linear_combination r2380)
    simpa [shifted95, digit95, acc96] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc96 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted95 rho) (digit95 rho) (acc96 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted95 rho) (digit95 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 59) (rho 58)
      (base rho) (twice rho) (triple rho) (acc95 rho)
      (acc96 rho) :=
    ⟨shiftOnce95 rho, shifted95 rho, digit95 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
