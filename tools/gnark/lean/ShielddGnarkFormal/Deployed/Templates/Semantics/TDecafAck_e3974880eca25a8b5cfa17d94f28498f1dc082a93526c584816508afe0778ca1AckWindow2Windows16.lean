import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window96 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc96 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[56]! (scalarBits rho)[55]!
        (base rho) (twice rho) (triple rho) (acc96 rho)
        (acc97 rho) ∧
      EdwardsBridge.onCurve (acc97 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    p30, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2381, r2382, r2383, r2384, r2385, r2386, r2387, r2388, r2389, r2390, r2391, r2392, r2393, r2394, r2395, r2396, r2397, r2398, r2399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart30 at p30
  rcases p30 with ⟨r2400, r2401, r2402, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2381 at r2381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2382 at r2382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2383 at r2383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2384 at r2384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2385 at r2385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2386 at r2386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2387 at r2387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2388 at r2388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2389 at r2389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2390 at r2390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2391 at r2391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2392 at r2392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2393 at r2393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2394 at r2394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2395 at r2395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2396 at r2396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2397 at r2397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2398 at r2398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2399 at r2399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2400 at r2400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2401 at r2401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2402 at r2402
  have hshift1 : EdwardsBridge.doubleSpec (acc96 rho) (shiftOnce96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2382) (rho 2383) (rho 2384) (rho 2385) (rho 2386) (rho 2387) (rho 2388)
      (by simpa [acc96] using hacc)
      (by linear_combination r2381)
      (by linear_combination r2382)
      (by linear_combination r2383)
      (by linear_combination r2384)
      (by linear_combination r2385)
    simpa [acc96, shiftOnce96] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc96 rho) (shiftOnce96 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc96 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce96 rho) (shifted96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2387) (rho 2388) (rho 2389) (rho 2390) (rho 2391) (rho 2392) (rho 2393)
      (by simpa [shiftOnce96] using hshift1On)
      (by linear_combination r2386)
      (by linear_combination r2387)
      (by linear_combination r2388)
      (by linear_combination r2389)
      (by linear_combination r2390)
    simpa [shiftOnce96, shifted96] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce96 rho) (shifted96 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce96 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 57) (rho 56)
      (base rho) (twice rho) (triple rho) (digit96 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 57) (rho 56)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2395 + rho 2396, (1 : F) + rho 2398 + rho 2399⟩ := by
      constructor
      · refine ⟨(rho 2394 + (rho 258) - (0)), rho 2395, ?_, ?_, ?_⟩
        · linear_combination r2391 - (rho 56) * order_cast_zero
        · linear_combination r2392
        · linear_combination r2393
      · refine ⟨(rho 2397 + (rho 259) - ((1 : F))), rho 2398, ?_, ?_, ?_⟩
        · linear_combination r2394 - (rho 56) * order_cast_zero
        · linear_combination r2395
        · linear_combination r2396
    simpa [base, twice, triple, digit96] using hraw
  have hhigh : rho 57 =
      Bool.toZMod bits[56]! := by
    simpa only using rho_bit_of_map rho bits hbits 56 (by decide +kernel)
  have hlow : rho 56 =
      Bool.toZMod bits[55]! := by
    simpa only using rho_bit_of_map rho bits hbits 55 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[56]! bits[55]! (base rho) (twice rho) (triple rho)
    (digit96 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit96 rho) := by
    rw [hdigit]
    cases bits[56]! <;> cases bits[55]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted96 rho) (digit96 rho) (acc97 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2392) (rho 2393) (rho 2395 + rho 2396) ((1 : F) + rho 2398 + rho 2399)
      (rho 2400) (rho 2401) (rho 2402) (rho 2403) (rho 2404) (rho 2405)
      (by simpa [shifted96] using hshift2On)
      (by simpa [digit96] using hdigitOn)
      (by linear_combination r2397)
      (by linear_combination r2398)
      (by linear_combination r2399)
      (by linear_combination r2400)
      (by linear_combination r2401)
      (by linear_combination r2402)
    simpa [shifted96, digit96, acc97] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc97 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted96 rho) (digit96 rho) (acc97 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted96 rho) (digit96 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 57) (rho 56)
      (base rho) (twice rho) (triple rho) (acc96 rho)
      (acc97 rho) :=
    ⟨shiftOnce96 rho, shifted96 rho, digit96 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window97 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc97 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[54]! (scalarBits rho)[53]!
        (base rho) (twice rho) (triple rho) (acc97 rho)
        (acc98 rho) ∧
      EdwardsBridge.onCurve (acc98 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart30 at p30
  rcases p30 with ⟨_, _, _, r2403, r2404, r2405, r2406, r2407, r2408, r2409, r2410, r2411, r2412, r2413, r2414, r2415, r2416, r2417, r2418, r2419, r2420, r2421, r2422, r2423, r2424, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2403 at r2403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2404 at r2404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2405 at r2405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2406 at r2406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2407 at r2407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2408 at r2408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2409 at r2409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2410 at r2410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2411 at r2411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2412 at r2412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2413 at r2413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2414 at r2414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2415 at r2415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2416 at r2416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2417 at r2417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2418 at r2418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2419 at r2419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2420 at r2420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2421 at r2421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2422 at r2422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2423 at r2423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2424 at r2424
  have hshift1 : EdwardsBridge.doubleSpec (acc97 rho) (shiftOnce97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2404) (rho 2405) (rho 2406) (rho 2407) (rho 2408) (rho 2409) (rho 2410)
      (by simpa [acc97] using hacc)
      (by linear_combination r2403)
      (by linear_combination r2404)
      (by linear_combination r2405)
      (by linear_combination r2406)
      (by linear_combination r2407)
    simpa [acc97, shiftOnce97] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc97 rho) (shiftOnce97 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc97 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce97 rho) (shifted97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2409) (rho 2410) (rho 2411) (rho 2412) (rho 2413) (rho 2414) (rho 2415)
      (by simpa [shiftOnce97] using hshift1On)
      (by linear_combination r2408)
      (by linear_combination r2409)
      (by linear_combination r2410)
      (by linear_combination r2411)
      (by linear_combination r2412)
    simpa [shiftOnce97, shifted97] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce97 rho) (shifted97 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce97 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 55) (rho 54)
      (base rho) (twice rho) (triple rho) (digit97 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 55) (rho 54)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2417 + rho 2418, (1 : F) + rho 2420 + rho 2421⟩ := by
      constructor
      · refine ⟨(rho 2416 + (rho 258) - (0)), rho 2417, ?_, ?_, ?_⟩
        · linear_combination r2413 - (rho 54) * order_cast_zero
        · linear_combination r2414
        · linear_combination r2415
      · refine ⟨(rho 2419 + (rho 259) - ((1 : F))), rho 2420, ?_, ?_, ?_⟩
        · linear_combination r2416 - (rho 54) * order_cast_zero
        · linear_combination r2417
        · linear_combination r2418
    simpa [base, twice, triple, digit97] using hraw
  have hhigh : rho 55 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 54 =
      Bool.toZMod bits[53]! := by
    simpa only using rho_bit_of_map rho bits hbits 53 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[54]! bits[53]! (base rho) (twice rho) (triple rho)
    (digit97 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit97 rho) := by
    rw [hdigit]
    cases bits[54]! <;> cases bits[53]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted97 rho) (digit97 rho) (acc98 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2414) (rho 2415) (rho 2417 + rho 2418) ((1 : F) + rho 2420 + rho 2421)
      (rho 2422) (rho 2423) (rho 2424) (rho 2425) (rho 2426) (rho 2427)
      (by simpa [shifted97] using hshift2On)
      (by simpa [digit97] using hdigitOn)
      (by linear_combination r2419)
      (by linear_combination r2420)
      (by linear_combination r2421)
      (by linear_combination r2422)
      (by linear_combination r2423)
      (by linear_combination r2424)
    simpa [shifted97, digit97, acc98] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc98 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted97 rho) (digit97 rho) (acc98 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted97 rho) (digit97 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 55) (rho 54)
      (base rho) (twice rho) (triple rho) (acc97 rho)
      (acc98 rho) :=
    ⟨shiftOnce97 rho, shifted97 rho, digit97 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window98 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc98 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[52]! (scalarBits rho)[51]!
        (base rho) (twice rho) (triple rho) (acc98 rho)
        (acc99 rho) ∧
      EdwardsBridge.onCurve (acc99 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2425, r2426, r2427, r2428, r2429, r2430, r2431, r2432, r2433, r2434, r2435, r2436, r2437, r2438, r2439, r2440, r2441, r2442, r2443, r2444, r2445, r2446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2425 at r2425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2426 at r2426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2427 at r2427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2428 at r2428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2429 at r2429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2430 at r2430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2431 at r2431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2432 at r2432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2433 at r2433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2434 at r2434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2435 at r2435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2436 at r2436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2437 at r2437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2438 at r2438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2439 at r2439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2440 at r2440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2441 at r2441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2442 at r2442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2443 at r2443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2444 at r2444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2445 at r2445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2446 at r2446
  have hshift1 : EdwardsBridge.doubleSpec (acc98 rho) (shiftOnce98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2426) (rho 2427) (rho 2428) (rho 2429) (rho 2430) (rho 2431) (rho 2432)
      (by simpa [acc98] using hacc)
      (by linear_combination r2425)
      (by linear_combination r2426)
      (by linear_combination r2427)
      (by linear_combination r2428)
      (by linear_combination r2429)
    simpa [acc98, shiftOnce98] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc98 rho) (shiftOnce98 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc98 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce98 rho) (shifted98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2431) (rho 2432) (rho 2433) (rho 2434) (rho 2435) (rho 2436) (rho 2437)
      (by simpa [shiftOnce98] using hshift1On)
      (by linear_combination r2430)
      (by linear_combination r2431)
      (by linear_combination r2432)
      (by linear_combination r2433)
      (by linear_combination r2434)
    simpa [shiftOnce98, shifted98] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce98 rho) (shifted98 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce98 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 53) (rho 52)
      (base rho) (twice rho) (triple rho) (digit98 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 53) (rho 52)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2439 + rho 2440, (1 : F) + rho 2442 + rho 2443⟩ := by
      constructor
      · refine ⟨(rho 2438 + (rho 258) - (0)), rho 2439, ?_, ?_, ?_⟩
        · linear_combination r2435 - (rho 52) * order_cast_zero
        · linear_combination r2436
        · linear_combination r2437
      · refine ⟨(rho 2441 + (rho 259) - ((1 : F))), rho 2442, ?_, ?_, ?_⟩
        · linear_combination r2438 - (rho 52) * order_cast_zero
        · linear_combination r2439
        · linear_combination r2440
    simpa [base, twice, triple, digit98] using hraw
  have hhigh : rho 53 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 52 =
      Bool.toZMod bits[51]! := by
    simpa only using rho_bit_of_map rho bits hbits 51 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[52]! bits[51]! (base rho) (twice rho) (triple rho)
    (digit98 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit98 rho) := by
    rw [hdigit]
    cases bits[52]! <;> cases bits[51]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted98 rho) (digit98 rho) (acc99 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2436) (rho 2437) (rho 2439 + rho 2440) ((1 : F) + rho 2442 + rho 2443)
      (rho 2444) (rho 2445) (rho 2446) (rho 2447) (rho 2448) (rho 2449)
      (by simpa [shifted98] using hshift2On)
      (by simpa [digit98] using hdigitOn)
      (by linear_combination r2441)
      (by linear_combination r2442)
      (by linear_combination r2443)
      (by linear_combination r2444)
      (by linear_combination r2445)
      (by linear_combination r2446)
    simpa [shifted98, digit98, acc99] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc99 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted98 rho) (digit98 rho) (acc99 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted98 rho) (digit98 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 53) (rho 52)
      (base rho) (twice rho) (triple rho) (acc98 rho)
      (acc99 rho) :=
    ⟨shiftOnce98 rho, shifted98 rho, digit98 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window99 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc99 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[50]! (scalarBits rho)[49]!
        (base rho) (twice rho) (triple rho) (acc99 rho)
        (acc100 rho) ∧
      EdwardsBridge.onCurve (acc100 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2447, r2448, r2449, r2450, r2451, r2452, r2453, r2454, r2455, r2456, r2457, r2458, r2459, r2460, r2461, r2462, r2463, r2464, r2465, r2466, r2467, r2468, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2447 at r2447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2448 at r2448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2449 at r2449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2450 at r2450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2451 at r2451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2452 at r2452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2453 at r2453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2454 at r2454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2455 at r2455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2456 at r2456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2457 at r2457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2458 at r2458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2459 at r2459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2460 at r2460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2461 at r2461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2462 at r2462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2463 at r2463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2464 at r2464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2465 at r2465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2466 at r2466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2467 at r2467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2468 at r2468
  have hshift1 : EdwardsBridge.doubleSpec (acc99 rho) (shiftOnce99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2448) (rho 2449) (rho 2450) (rho 2451) (rho 2452) (rho 2453) (rho 2454)
      (by simpa [acc99] using hacc)
      (by linear_combination r2447)
      (by linear_combination r2448)
      (by linear_combination r2449)
      (by linear_combination r2450)
      (by linear_combination r2451)
    simpa [acc99, shiftOnce99] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc99 rho) (shiftOnce99 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc99 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce99 rho) (shifted99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2453) (rho 2454) (rho 2455) (rho 2456) (rho 2457) (rho 2458) (rho 2459)
      (by simpa [shiftOnce99] using hshift1On)
      (by linear_combination r2452)
      (by linear_combination r2453)
      (by linear_combination r2454)
      (by linear_combination r2455)
      (by linear_combination r2456)
    simpa [shiftOnce99, shifted99] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce99 rho) (shifted99 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce99 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 51) (rho 50)
      (base rho) (twice rho) (triple rho) (digit99 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 51) (rho 50)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2461 + rho 2462, (1 : F) + rho 2464 + rho 2465⟩ := by
      constructor
      · refine ⟨(rho 2460 + (rho 258) - (0)), rho 2461, ?_, ?_, ?_⟩
        · linear_combination r2457 - (rho 50) * order_cast_zero
        · linear_combination r2458
        · linear_combination r2459
      · refine ⟨(rho 2463 + (rho 259) - ((1 : F))), rho 2464, ?_, ?_, ?_⟩
        · linear_combination r2460 - (rho 50) * order_cast_zero
        · linear_combination r2461
        · linear_combination r2462
    simpa [base, twice, triple, digit99] using hraw
  have hhigh : rho 51 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 50 =
      Bool.toZMod bits[49]! := by
    simpa only using rho_bit_of_map rho bits hbits 49 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[50]! bits[49]! (base rho) (twice rho) (triple rho)
    (digit99 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit99 rho) := by
    rw [hdigit]
    cases bits[50]! <;> cases bits[49]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted99 rho) (digit99 rho) (acc100 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2458) (rho 2459) (rho 2461 + rho 2462) ((1 : F) + rho 2464 + rho 2465)
      (rho 2466) (rho 2467) (rho 2468) (rho 2469) (rho 2470) (rho 2471)
      (by simpa [shifted99] using hshift2On)
      (by simpa [digit99] using hdigitOn)
      (by linear_combination r2463)
      (by linear_combination r2464)
      (by linear_combination r2465)
      (by linear_combination r2466)
      (by linear_combination r2467)
      (by linear_combination r2468)
    simpa [shifted99, digit99, acc100] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc100 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted99 rho) (digit99 rho) (acc100 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted99 rho) (digit99 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 51) (rho 50)
      (base rho) (twice rho) (triple rho) (acc99 rho)
      (acc100 rho) :=
    ⟨shiftOnce99 rho, shifted99 rho, digit99 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window100 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc100 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[48]! (scalarBits rho)[47]!
        (base rho) (twice rho) (triple rho) (acc100 rho)
        (acc101 rho) ∧
      EdwardsBridge.onCurve (acc101 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, p31, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2469, r2470, r2471, r2472, r2473, r2474, r2475, r2476, r2477, r2478, r2479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart31 at p31
  rcases p31 with ⟨r2480, r2481, r2482, r2483, r2484, r2485, r2486, r2487, r2488, r2489, r2490, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2469 at r2469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2470 at r2470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2471 at r2471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2472 at r2472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2473 at r2473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2474 at r2474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2475 at r2475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2476 at r2476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2477 at r2477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2478 at r2478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2479 at r2479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2480 at r2480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2481 at r2481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2482 at r2482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2483 at r2483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2484 at r2484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2485 at r2485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2486 at r2486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2487 at r2487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2488 at r2488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2489 at r2489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2490 at r2490
  have hshift1 : EdwardsBridge.doubleSpec (acc100 rho) (shiftOnce100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2470) (rho 2471) (rho 2472) (rho 2473) (rho 2474) (rho 2475) (rho 2476)
      (by simpa [acc100] using hacc)
      (by linear_combination r2469)
      (by linear_combination r2470)
      (by linear_combination r2471)
      (by linear_combination r2472)
      (by linear_combination r2473)
    simpa [acc100, shiftOnce100] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc100 rho) (shiftOnce100 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc100 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce100 rho) (shifted100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2475) (rho 2476) (rho 2477) (rho 2478) (rho 2479) (rho 2480) (rho 2481)
      (by simpa [shiftOnce100] using hshift1On)
      (by linear_combination r2474)
      (by linear_combination r2475)
      (by linear_combination r2476)
      (by linear_combination r2477)
      (by linear_combination r2478)
    simpa [shiftOnce100, shifted100] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce100 rho) (shifted100 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce100 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 49) (rho 48)
      (base rho) (twice rho) (triple rho) (digit100 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 49) (rho 48)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2483 + rho 2484, (1 : F) + rho 2486 + rho 2487⟩ := by
      constructor
      · refine ⟨(rho 2482 + (rho 258) - (0)), rho 2483, ?_, ?_, ?_⟩
        · linear_combination r2479 - (rho 48) * order_cast_zero
        · linear_combination r2480
        · linear_combination r2481
      · refine ⟨(rho 2485 + (rho 259) - ((1 : F))), rho 2486, ?_, ?_, ?_⟩
        · linear_combination r2482 - (rho 48) * order_cast_zero
        · linear_combination r2483
        · linear_combination r2484
    simpa [base, twice, triple, digit100] using hraw
  have hhigh : rho 49 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 48 =
      Bool.toZMod bits[47]! := by
    simpa only using rho_bit_of_map rho bits hbits 47 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[48]! bits[47]! (base rho) (twice rho) (triple rho)
    (digit100 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit100 rho) := by
    rw [hdigit]
    cases bits[48]! <;> cases bits[47]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted100 rho) (digit100 rho) (acc101 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2480) (rho 2481) (rho 2483 + rho 2484) ((1 : F) + rho 2486 + rho 2487)
      (rho 2488) (rho 2489) (rho 2490) (rho 2491) (rho 2492) (rho 2493)
      (by simpa [shifted100] using hshift2On)
      (by simpa [digit100] using hdigitOn)
      (by linear_combination r2485)
      (by linear_combination r2486)
      (by linear_combination r2487)
      (by linear_combination r2488)
      (by linear_combination r2489)
      (by linear_combination r2490)
    simpa [shifted100, digit100, acc101] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc101 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted100 rho) (digit100 rho) (acc101 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted100 rho) (digit100 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 49) (rho 48)
      (base rho) (twice rho) (triple rho) (acc100 rho)
      (acc101 rho) :=
    ⟨shiftOnce100 rho, shifted100 rho, digit100 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window101 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc101 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[46]! (scalarBits rho)[45]!
        (base rho) (twice rho) (triple rho) (acc101 rho)
        (acc102 rho) ∧
      EdwardsBridge.onCurve (acc102 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2491, r2492, r2493, r2494, r2495, r2496, r2497, r2498, r2499, r2500, r2501, r2502, r2503, r2504, r2505, r2506, r2507, r2508, r2509, r2510, r2511, r2512, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2491 at r2491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2492 at r2492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2493 at r2493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2494 at r2494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2495 at r2495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2496 at r2496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2497 at r2497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2498 at r2498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2499 at r2499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2500 at r2500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2501 at r2501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2502 at r2502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2503 at r2503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2504 at r2504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2505 at r2505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2506 at r2506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2507 at r2507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2508 at r2508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2509 at r2509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2510 at r2510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2511 at r2511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2512 at r2512
  have hshift1 : EdwardsBridge.doubleSpec (acc101 rho) (shiftOnce101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2492) (rho 2493) (rho 2494) (rho 2495) (rho 2496) (rho 2497) (rho 2498)
      (by simpa [acc101] using hacc)
      (by linear_combination r2491)
      (by linear_combination r2492)
      (by linear_combination r2493)
      (by linear_combination r2494)
      (by linear_combination r2495)
    simpa [acc101, shiftOnce101] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc101 rho) (shiftOnce101 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc101 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce101 rho) (shifted101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2497) (rho 2498) (rho 2499) (rho 2500) (rho 2501) (rho 2502) (rho 2503)
      (by simpa [shiftOnce101] using hshift1On)
      (by linear_combination r2496)
      (by linear_combination r2497)
      (by linear_combination r2498)
      (by linear_combination r2499)
      (by linear_combination r2500)
    simpa [shiftOnce101, shifted101] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce101 rho) (shifted101 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce101 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 47) (rho 46)
      (base rho) (twice rho) (triple rho) (digit101 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 47) (rho 46)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2505 + rho 2506, (1 : F) + rho 2508 + rho 2509⟩ := by
      constructor
      · refine ⟨(rho 2504 + (rho 258) - (0)), rho 2505, ?_, ?_, ?_⟩
        · linear_combination r2501 - (rho 46) * order_cast_zero
        · linear_combination r2502
        · linear_combination r2503
      · refine ⟨(rho 2507 + (rho 259) - ((1 : F))), rho 2508, ?_, ?_, ?_⟩
        · linear_combination r2504 - (rho 46) * order_cast_zero
        · linear_combination r2505
        · linear_combination r2506
    simpa [base, twice, triple, digit101] using hraw
  have hhigh : rho 47 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 46 =
      Bool.toZMod bits[45]! := by
    simpa only using rho_bit_of_map rho bits hbits 45 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[46]! bits[45]! (base rho) (twice rho) (triple rho)
    (digit101 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit101 rho) := by
    rw [hdigit]
    cases bits[46]! <;> cases bits[45]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted101 rho) (digit101 rho) (acc102 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2502) (rho 2503) (rho 2505 + rho 2506) ((1 : F) + rho 2508 + rho 2509)
      (rho 2510) (rho 2511) (rho 2512) (rho 2513) (rho 2514) (rho 2515)
      (by simpa [shifted101] using hshift2On)
      (by simpa [digit101] using hdigitOn)
      (by linear_combination r2507)
      (by linear_combination r2508)
      (by linear_combination r2509)
      (by linear_combination r2510)
      (by linear_combination r2511)
      (by linear_combination r2512)
    simpa [shifted101, digit101, acc102] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc102 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted101 rho) (digit101 rho) (acc102 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted101 rho) (digit101 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 47) (rho 46)
      (base rho) (twice rho) (triple rho) (acc101 rho)
      (acc102 rho) :=
    ⟨shiftOnce101 rho, shifted101 rho, digit101 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
