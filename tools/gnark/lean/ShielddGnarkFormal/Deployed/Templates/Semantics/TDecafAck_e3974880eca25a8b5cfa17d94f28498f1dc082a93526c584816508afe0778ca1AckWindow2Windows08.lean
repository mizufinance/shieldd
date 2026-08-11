import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window48 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc48 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[152]! (scalarBits rho)[151]!
        (base rho) (twice rho) (triple rho) (acc48 rho)
        (acc49 rho) ∧
      EdwardsBridge.onCurve (acc49 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1325, r1326, r1327, r1328, r1329, r1330, r1331, r1332, r1333, r1334, r1335, r1336, r1337, r1338, r1339, r1340, r1341, r1342, r1343, r1344, r1345, r1346, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1325 at r1325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1326 at r1326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1327 at r1327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1328 at r1328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1329 at r1329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1330 at r1330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1331 at r1331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1332 at r1332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1333 at r1333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1334 at r1334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1335 at r1335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1336 at r1336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1337 at r1337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1338 at r1338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1339 at r1339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1340 at r1340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1341 at r1341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1342 at r1342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1343 at r1343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1344 at r1344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1345 at r1345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1346 at r1346
  have hshift1 : EdwardsBridge.doubleSpec (acc48 rho) (shiftOnce48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1326) (rho 1327) (rho 1328) (rho 1329) (rho 1330) (rho 1331) (rho 1332)
      (by simpa [acc48] using hacc)
      (by linear_combination r1325)
      (by linear_combination r1326)
      (by linear_combination r1327)
      (by linear_combination r1328)
      (by linear_combination r1329)
    simpa [acc48, shiftOnce48] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc48 rho) (shiftOnce48 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc48 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce48 rho) (shifted48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1331) (rho 1332) (rho 1333) (rho 1334) (rho 1335) (rho 1336) (rho 1337)
      (by simpa [shiftOnce48] using hshift1On)
      (by linear_combination r1330)
      (by linear_combination r1331)
      (by linear_combination r1332)
      (by linear_combination r1333)
      (by linear_combination r1334)
    simpa [shiftOnce48, shifted48] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce48 rho) (shifted48 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce48 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 153) (rho 152)
      (base rho) (twice rho) (triple rho) (digit48 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 153) (rho 152)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1339 + rho 1340, (1 : F) + rho 1342 + rho 1343⟩ := by
      constructor
      · refine ⟨(rho 1338 + (rho 258) - (0)), rho 1339, ?_, ?_, ?_⟩
        · linear_combination r1335 - (rho 152) * order_cast_zero
        · linear_combination r1336
        · linear_combination r1337
      · refine ⟨(rho 1341 + (rho 259) - ((1 : F))), rho 1342, ?_, ?_, ?_⟩
        · linear_combination r1338 - (rho 152) * order_cast_zero
        · linear_combination r1339
        · linear_combination r1340
    simpa [base, twice, triple, digit48] using hraw
  have hhigh : rho 153 =
      Bool.toZMod bits[152]! := by
    simpa only using rho_bit_of_map rho bits hbits 152 (by decide +kernel)
  have hlow : rho 152 =
      Bool.toZMod bits[151]! := by
    simpa only using rho_bit_of_map rho bits hbits 151 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[152]! bits[151]! (base rho) (twice rho) (triple rho)
    (digit48 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit48 rho) := by
    rw [hdigit]
    cases bits[152]! <;> cases bits[151]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted48 rho) (digit48 rho) (acc49 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1336) (rho 1337) (rho 1339 + rho 1340) ((1 : F) + rho 1342 + rho 1343)
      (rho 1344) (rho 1345) (rho 1346) (rho 1347) (rho 1348) (rho 1349)
      (by simpa [shifted48] using hshift2On)
      (by simpa [digit48] using hdigitOn)
      (by linear_combination r1341)
      (by linear_combination r1342)
      (by linear_combination r1343)
      (by linear_combination r1344)
      (by linear_combination r1345)
      (by linear_combination r1346)
    simpa [shifted48, digit48, acc49] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc49 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted48 rho) (digit48 rho) (acc49 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted48 rho) (digit48 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 153) (rho 152)
      (base rho) (twice rho) (triple rho) (acc48 rho)
      (acc49 rho) :=
    ⟨shiftOnce48 rho, shifted48 rho, digit48 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window49 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc49 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[150]! (scalarBits rho)[149]!
        (base rho) (twice rho) (triple rho) (acc49 rho)
        (acc50 rho) ∧
      EdwardsBridge.onCurve (acc50 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p16, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart16 at p16
  rcases p16 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1347, r1348, r1349, r1350, r1351, r1352, r1353, r1354, r1355, r1356, r1357, r1358, r1359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart17 at p17
  rcases p17 with ⟨r1360, r1361, r1362, r1363, r1364, r1365, r1366, r1367, r1368, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1347 at r1347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1348 at r1348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1349 at r1349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1350 at r1350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1351 at r1351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1352 at r1352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1353 at r1353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1354 at r1354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1355 at r1355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1356 at r1356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1357 at r1357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1358 at r1358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1359 at r1359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1360 at r1360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1361 at r1361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1362 at r1362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1363 at r1363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1364 at r1364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1365 at r1365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1366 at r1366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1367 at r1367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1368 at r1368
  have hshift1 : EdwardsBridge.doubleSpec (acc49 rho) (shiftOnce49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1348) (rho 1349) (rho 1350) (rho 1351) (rho 1352) (rho 1353) (rho 1354)
      (by simpa [acc49] using hacc)
      (by linear_combination r1347)
      (by linear_combination r1348)
      (by linear_combination r1349)
      (by linear_combination r1350)
      (by linear_combination r1351)
    simpa [acc49, shiftOnce49] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc49 rho) (shiftOnce49 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc49 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce49 rho) (shifted49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1353) (rho 1354) (rho 1355) (rho 1356) (rho 1357) (rho 1358) (rho 1359)
      (by simpa [shiftOnce49] using hshift1On)
      (by linear_combination r1352)
      (by linear_combination r1353)
      (by linear_combination r1354)
      (by linear_combination r1355)
      (by linear_combination r1356)
    simpa [shiftOnce49, shifted49] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce49 rho) (shifted49 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce49 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 151) (rho 150)
      (base rho) (twice rho) (triple rho) (digit49 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 151) (rho 150)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1361 + rho 1362, (1 : F) + rho 1364 + rho 1365⟩ := by
      constructor
      · refine ⟨(rho 1360 + (rho 258) - (0)), rho 1361, ?_, ?_, ?_⟩
        · linear_combination r1357 - (rho 150) * order_cast_zero
        · linear_combination r1358
        · linear_combination r1359
      · refine ⟨(rho 1363 + (rho 259) - ((1 : F))), rho 1364, ?_, ?_, ?_⟩
        · linear_combination r1360 - (rho 150) * order_cast_zero
        · linear_combination r1361
        · linear_combination r1362
    simpa [base, twice, triple, digit49] using hraw
  have hhigh : rho 151 =
      Bool.toZMod bits[150]! := by
    simpa only using rho_bit_of_map rho bits hbits 150 (by decide +kernel)
  have hlow : rho 150 =
      Bool.toZMod bits[149]! := by
    simpa only using rho_bit_of_map rho bits hbits 149 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[150]! bits[149]! (base rho) (twice rho) (triple rho)
    (digit49 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit49 rho) := by
    rw [hdigit]
    cases bits[150]! <;> cases bits[149]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted49 rho) (digit49 rho) (acc50 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1358) (rho 1359) (rho 1361 + rho 1362) ((1 : F) + rho 1364 + rho 1365)
      (rho 1366) (rho 1367) (rho 1368) (rho 1369) (rho 1370) (rho 1371)
      (by simpa [shifted49] using hshift2On)
      (by simpa [digit49] using hdigitOn)
      (by linear_combination r1363)
      (by linear_combination r1364)
      (by linear_combination r1365)
      (by linear_combination r1366)
      (by linear_combination r1367)
      (by linear_combination r1368)
    simpa [shifted49, digit49, acc50] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc50 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted49 rho) (digit49 rho) (acc50 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted49 rho) (digit49 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 151) (rho 150)
      (base rho) (twice rho) (triple rho) (acc49 rho)
      (acc50 rho) :=
    ⟨shiftOnce49 rho, shifted49 rho, digit49 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window50 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc50 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[148]! (scalarBits rho)[147]!
        (base rho) (twice rho) (triple rho) (acc50 rho)
        (acc51 rho) ∧
      EdwardsBridge.onCurve (acc51 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, r1369, r1370, r1371, r1372, r1373, r1374, r1375, r1376, r1377, r1378, r1379, r1380, r1381, r1382, r1383, r1384, r1385, r1386, r1387, r1388, r1389, r1390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1369 at r1369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1370 at r1370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1371 at r1371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1372 at r1372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1373 at r1373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1374 at r1374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1375 at r1375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1376 at r1376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1377 at r1377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1378 at r1378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1379 at r1379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1380 at r1380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1381 at r1381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1382 at r1382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1383 at r1383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1384 at r1384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1385 at r1385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1386 at r1386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1387 at r1387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1388 at r1388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1389 at r1389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1390 at r1390
  have hshift1 : EdwardsBridge.doubleSpec (acc50 rho) (shiftOnce50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1370) (rho 1371) (rho 1372) (rho 1373) (rho 1374) (rho 1375) (rho 1376)
      (by simpa [acc50] using hacc)
      (by linear_combination r1369)
      (by linear_combination r1370)
      (by linear_combination r1371)
      (by linear_combination r1372)
      (by linear_combination r1373)
    simpa [acc50, shiftOnce50] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc50 rho) (shiftOnce50 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc50 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce50 rho) (shifted50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1375) (rho 1376) (rho 1377) (rho 1378) (rho 1379) (rho 1380) (rho 1381)
      (by simpa [shiftOnce50] using hshift1On)
      (by linear_combination r1374)
      (by linear_combination r1375)
      (by linear_combination r1376)
      (by linear_combination r1377)
      (by linear_combination r1378)
    simpa [shiftOnce50, shifted50] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce50 rho) (shifted50 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce50 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 149) (rho 148)
      (base rho) (twice rho) (triple rho) (digit50 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 149) (rho 148)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1383 + rho 1384, (1 : F) + rho 1386 + rho 1387⟩ := by
      constructor
      · refine ⟨(rho 1382 + (rho 258) - (0)), rho 1383, ?_, ?_, ?_⟩
        · linear_combination r1379 - (rho 148) * order_cast_zero
        · linear_combination r1380
        · linear_combination r1381
      · refine ⟨(rho 1385 + (rho 259) - ((1 : F))), rho 1386, ?_, ?_, ?_⟩
        · linear_combination r1382 - (rho 148) * order_cast_zero
        · linear_combination r1383
        · linear_combination r1384
    simpa [base, twice, triple, digit50] using hraw
  have hhigh : rho 149 =
      Bool.toZMod bits[148]! := by
    simpa only using rho_bit_of_map rho bits hbits 148 (by decide +kernel)
  have hlow : rho 148 =
      Bool.toZMod bits[147]! := by
    simpa only using rho_bit_of_map rho bits hbits 147 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[148]! bits[147]! (base rho) (twice rho) (triple rho)
    (digit50 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit50 rho) := by
    rw [hdigit]
    cases bits[148]! <;> cases bits[147]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted50 rho) (digit50 rho) (acc51 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1380) (rho 1381) (rho 1383 + rho 1384) ((1 : F) + rho 1386 + rho 1387)
      (rho 1388) (rho 1389) (rho 1390) (rho 1391) (rho 1392) (rho 1393)
      (by simpa [shifted50] using hshift2On)
      (by simpa [digit50] using hdigitOn)
      (by linear_combination r1385)
      (by linear_combination r1386)
      (by linear_combination r1387)
      (by linear_combination r1388)
      (by linear_combination r1389)
      (by linear_combination r1390)
    simpa [shifted50, digit50, acc51] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc51 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted50 rho) (digit50 rho) (acc51 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted50 rho) (digit50 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 149) (rho 148)
      (base rho) (twice rho) (triple rho) (acc50 rho)
      (acc51 rho) :=
    ⟨shiftOnce50 rho, shifted50 rho, digit50 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window51 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc51 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[146]! (scalarBits rho)[145]!
        (base rho) (twice rho) (triple rho) (acc51 rho)
        (acc52 rho) ∧
      EdwardsBridge.onCurve (acc52 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1391, r1392, r1393, r1394, r1395, r1396, r1397, r1398, r1399, r1400, r1401, r1402, r1403, r1404, r1405, r1406, r1407, r1408, r1409, r1410, r1411, r1412, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1391 at r1391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1392 at r1392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1393 at r1393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1394 at r1394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1395 at r1395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1396 at r1396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1397 at r1397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1398 at r1398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1399 at r1399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1400 at r1400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1401 at r1401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1402 at r1402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1403 at r1403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1404 at r1404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1405 at r1405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1406 at r1406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1407 at r1407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1408 at r1408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1409 at r1409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1410 at r1410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1411 at r1411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1412 at r1412
  have hshift1 : EdwardsBridge.doubleSpec (acc51 rho) (shiftOnce51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1392) (rho 1393) (rho 1394) (rho 1395) (rho 1396) (rho 1397) (rho 1398)
      (by simpa [acc51] using hacc)
      (by linear_combination r1391)
      (by linear_combination r1392)
      (by linear_combination r1393)
      (by linear_combination r1394)
      (by linear_combination r1395)
    simpa [acc51, shiftOnce51] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc51 rho) (shiftOnce51 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc51 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce51 rho) (shifted51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1397) (rho 1398) (rho 1399) (rho 1400) (rho 1401) (rho 1402) (rho 1403)
      (by simpa [shiftOnce51] using hshift1On)
      (by linear_combination r1396)
      (by linear_combination r1397)
      (by linear_combination r1398)
      (by linear_combination r1399)
      (by linear_combination r1400)
    simpa [shiftOnce51, shifted51] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce51 rho) (shifted51 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce51 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 147) (rho 146)
      (base rho) (twice rho) (triple rho) (digit51 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 147) (rho 146)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1405 + rho 1406, (1 : F) + rho 1408 + rho 1409⟩ := by
      constructor
      · refine ⟨(rho 1404 + (rho 258) - (0)), rho 1405, ?_, ?_, ?_⟩
        · linear_combination r1401 - (rho 146) * order_cast_zero
        · linear_combination r1402
        · linear_combination r1403
      · refine ⟨(rho 1407 + (rho 259) - ((1 : F))), rho 1408, ?_, ?_, ?_⟩
        · linear_combination r1404 - (rho 146) * order_cast_zero
        · linear_combination r1405
        · linear_combination r1406
    simpa [base, twice, triple, digit51] using hraw
  have hhigh : rho 147 =
      Bool.toZMod bits[146]! := by
    simpa only using rho_bit_of_map rho bits hbits 146 (by decide +kernel)
  have hlow : rho 146 =
      Bool.toZMod bits[145]! := by
    simpa only using rho_bit_of_map rho bits hbits 145 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[146]! bits[145]! (base rho) (twice rho) (triple rho)
    (digit51 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit51 rho) := by
    rw [hdigit]
    cases bits[146]! <;> cases bits[145]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted51 rho) (digit51 rho) (acc52 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1402) (rho 1403) (rho 1405 + rho 1406) ((1 : F) + rho 1408 + rho 1409)
      (rho 1410) (rho 1411) (rho 1412) (rho 1413) (rho 1414) (rho 1415)
      (by simpa [shifted51] using hshift2On)
      (by simpa [digit51] using hdigitOn)
      (by linear_combination r1407)
      (by linear_combination r1408)
      (by linear_combination r1409)
      (by linear_combination r1410)
      (by linear_combination r1411)
      (by linear_combination r1412)
    simpa [shifted51, digit51, acc52] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc52 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted51 rho) (digit51 rho) (acc52 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted51 rho) (digit51 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 147) (rho 146)
      (base rho) (twice rho) (triple rho) (acc51 rho)
      (acc52 rho) :=
    ⟨shiftOnce51 rho, shifted51 rho, digit51 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window52 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc52 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[144]! (scalarBits rho)[143]!
        (base rho) (twice rho) (triple rho) (acc52 rho)
        (acc53 rho) ∧
      EdwardsBridge.onCurve (acc53 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1413, r1414, r1415, r1416, r1417, r1418, r1419, r1420, r1421, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1413 at r1413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1414 at r1414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1415 at r1415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1416 at r1416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1417 at r1417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1418 at r1418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1419 at r1419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1420 at r1420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1421 at r1421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1422 at r1422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1423 at r1423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1424 at r1424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1425 at r1425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1426 at r1426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1427 at r1427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1428 at r1428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1429 at r1429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1430 at r1430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1431 at r1431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1432 at r1432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1433 at r1433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1434 at r1434
  have hshift1 : EdwardsBridge.doubleSpec (acc52 rho) (shiftOnce52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1414) (rho 1415) (rho 1416) (rho 1417) (rho 1418) (rho 1419) (rho 1420)
      (by simpa [acc52] using hacc)
      (by linear_combination r1413)
      (by linear_combination r1414)
      (by linear_combination r1415)
      (by linear_combination r1416)
      (by linear_combination r1417)
    simpa [acc52, shiftOnce52] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc52 rho) (shiftOnce52 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc52 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce52 rho) (shifted52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1419) (rho 1420) (rho 1421) (rho 1422) (rho 1423) (rho 1424) (rho 1425)
      (by simpa [shiftOnce52] using hshift1On)
      (by linear_combination r1418)
      (by linear_combination r1419)
      (by linear_combination r1420)
      (by linear_combination r1421)
      (by linear_combination r1422)
    simpa [shiftOnce52, shifted52] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce52 rho) (shifted52 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce52 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 145) (rho 144)
      (base rho) (twice rho) (triple rho) (digit52 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 145) (rho 144)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1427 + rho 1428, (1 : F) + rho 1430 + rho 1431⟩ := by
      constructor
      · refine ⟨(rho 1426 + (rho 258) - (0)), rho 1427, ?_, ?_, ?_⟩
        · linear_combination r1423 - (rho 144) * order_cast_zero
        · linear_combination r1424
        · linear_combination r1425
      · refine ⟨(rho 1429 + (rho 259) - ((1 : F))), rho 1430, ?_, ?_, ?_⟩
        · linear_combination r1426 - (rho 144) * order_cast_zero
        · linear_combination r1427
        · linear_combination r1428
    simpa [base, twice, triple, digit52] using hraw
  have hhigh : rho 145 =
      Bool.toZMod bits[144]! := by
    simpa only using rho_bit_of_map rho bits hbits 144 (by decide +kernel)
  have hlow : rho 144 =
      Bool.toZMod bits[143]! := by
    simpa only using rho_bit_of_map rho bits hbits 143 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[144]! bits[143]! (base rho) (twice rho) (triple rho)
    (digit52 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit52 rho) := by
    rw [hdigit]
    cases bits[144]! <;> cases bits[143]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted52 rho) (digit52 rho) (acc53 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1424) (rho 1425) (rho 1427 + rho 1428) ((1 : F) + rho 1430 + rho 1431)
      (rho 1432) (rho 1433) (rho 1434) (rho 1435) (rho 1436) (rho 1437)
      (by simpa [shifted52] using hshift2On)
      (by simpa [digit52] using hdigitOn)
      (by linear_combination r1429)
      (by linear_combination r1430)
      (by linear_combination r1431)
      (by linear_combination r1432)
      (by linear_combination r1433)
      (by linear_combination r1434)
    simpa [shifted52, digit52, acc53] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc53 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted52 rho) (digit52 rho) (acc53 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted52 rho) (digit52 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 145) (rho 144)
      (base rho) (twice rho) (triple rho) (acc52 rho)
      (acc53 rho) :=
    ⟨shiftOnce52 rho, shifted52 rho, digit52 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window53 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc53 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[142]! (scalarBits rho)[141]!
        (base rho) (twice rho) (triple rho) (acc53 rho)
        (acc54 rho) ∧
      EdwardsBridge.onCurve (acc54 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1435, r1436, r1437, r1438, r1439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1435 at r1435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1436 at r1436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1437 at r1437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1438 at r1438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1439 at r1439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1440 at r1440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1441 at r1441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1442 at r1442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1443 at r1443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1444 at r1444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1445 at r1445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1446 at r1446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1447 at r1447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1448 at r1448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1449 at r1449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1450 at r1450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1451 at r1451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1452 at r1452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1453 at r1453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1454 at r1454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1455 at r1455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1456 at r1456
  have hshift1 : EdwardsBridge.doubleSpec (acc53 rho) (shiftOnce53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1436) (rho 1437) (rho 1438) (rho 1439) (rho 1440) (rho 1441) (rho 1442)
      (by simpa [acc53] using hacc)
      (by linear_combination r1435)
      (by linear_combination r1436)
      (by linear_combination r1437)
      (by linear_combination r1438)
      (by linear_combination r1439)
    simpa [acc53, shiftOnce53] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc53 rho) (shiftOnce53 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc53 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce53 rho) (shifted53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1441) (rho 1442) (rho 1443) (rho 1444) (rho 1445) (rho 1446) (rho 1447)
      (by simpa [shiftOnce53] using hshift1On)
      (by linear_combination r1440)
      (by linear_combination r1441)
      (by linear_combination r1442)
      (by linear_combination r1443)
      (by linear_combination r1444)
    simpa [shiftOnce53, shifted53] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce53 rho) (shifted53 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce53 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 143) (rho 142)
      (base rho) (twice rho) (triple rho) (digit53 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 143) (rho 142)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1449 + rho 1450, (1 : F) + rho 1452 + rho 1453⟩ := by
      constructor
      · refine ⟨(rho 1448 + (rho 258) - (0)), rho 1449, ?_, ?_, ?_⟩
        · linear_combination r1445 - (rho 142) * order_cast_zero
        · linear_combination r1446
        · linear_combination r1447
      · refine ⟨(rho 1451 + (rho 259) - ((1 : F))), rho 1452, ?_, ?_, ?_⟩
        · linear_combination r1448 - (rho 142) * order_cast_zero
        · linear_combination r1449
        · linear_combination r1450
    simpa [base, twice, triple, digit53] using hraw
  have hhigh : rho 143 =
      Bool.toZMod bits[142]! := by
    simpa only using rho_bit_of_map rho bits hbits 142 (by decide +kernel)
  have hlow : rho 142 =
      Bool.toZMod bits[141]! := by
    simpa only using rho_bit_of_map rho bits hbits 141 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[142]! bits[141]! (base rho) (twice rho) (triple rho)
    (digit53 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit53 rho) := by
    rw [hdigit]
    cases bits[142]! <;> cases bits[141]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted53 rho) (digit53 rho) (acc54 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1446) (rho 1447) (rho 1449 + rho 1450) ((1 : F) + rho 1452 + rho 1453)
      (rho 1454) (rho 1455) (rho 1456) (rho 1457) (rho 1458) (rho 1459)
      (by simpa [shifted53] using hshift2On)
      (by simpa [digit53] using hdigitOn)
      (by linear_combination r1451)
      (by linear_combination r1452)
      (by linear_combination r1453)
      (by linear_combination r1454)
      (by linear_combination r1455)
      (by linear_combination r1456)
    simpa [shifted53, digit53, acc54] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc54 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted53 rho) (digit53 rho) (acc54 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted53 rho) (digit53 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 143) (rho 142)
      (base rho) (twice rho) (triple rho) (acc53 rho)
      (acc54 rho) :=
    ⟨shiftOnce53 rho, shifted53 rho, digit53 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
