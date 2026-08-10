import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc0 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[126]! (scalarBits rho)[125]!
        (base rho) (twice rho) (triple rho) (acc0 rho)
        (acc1 rho) ∧
      EdwardsBridge.onCurve (acc1 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart18 at p18
  rcases p18 with ⟨r1440, r1441, r1442, r1443, r1444, r1445, r1446, r1447, r1448, r1449, r1450, r1451, r1452, r1453, r1454, r1455, r1456, r1457, r1458, r1459, r1460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1439 at r1439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1440 at r1440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1441 at r1441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1442 at r1442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1443 at r1443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1444 at r1444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1445 at r1445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1446 at r1446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1447 at r1447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1448 at r1448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1449 at r1449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1450 at r1450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1451 at r1451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1452 at r1452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1453 at r1453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1454 at r1454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1455 at r1455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1456 at r1456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1457 at r1457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1458 at r1458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1459 at r1459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1460 at r1460
  have hshift1 : EdwardsBridge.doubleSpec (acc0 rho) (shiftOnce0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1261 + rho 1262) ((1 : F) + rho 1264 + rho 1265) (rho 1266) (rho 1267) (rho 1268) (rho 1269) (rho 1270)
      (by simpa [acc0] using hacc)
      (by linear_combination r1439)
      (by linear_combination r1440)
      (by linear_combination r1441)
      (by linear_combination r1442)
      (by linear_combination r1443)
    simpa [acc0, shiftOnce0] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc0 rho) (shiftOnce0 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc0 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce0 rho) (shifted0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1269) (rho 1270) (rho 1271) (rho 1272) (rho 1273) (rho 1274) (rho 1275)
      (by simpa [shiftOnce0] using hshift1On)
      (by linear_combination r1444)
      (by linear_combination r1445)
      (by linear_combination r1446)
      (by linear_combination r1447)
      (by linear_combination r1448)
    simpa [shiftOnce0, shifted0] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce0 rho) (shifted0 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce0 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1246) (rho 1245)
      (base rho) (twice rho) (triple rho) (digit0 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1246) (rho 1245)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1277 + rho 1278, (1 : F) + rho 1280 + rho 1281⟩ := by
      constructor
      · refine ⟨(rho 1276 + (rho 1252) - (0)), rho 1277, ?_, ?_, ?_⟩
        · linear_combination r1449
        · linear_combination r1450
        · linear_combination r1451
      · refine ⟨(rho 1279 + (rho 1253) - ((1 : F))), rho 1280, ?_, ?_, ?_⟩
        · linear_combination r1452
        · linear_combination r1453
        · linear_combination r1454
    simpa [base, twice, triple, digit0] using hraw
  have hhigh : rho 1246 =
      Bool.toZMod bits[126]! := by
    simpa only using rho_bit_of_map rho bits hbits 126 (by decide +kernel)
  have hlow : rho 1245 =
      Bool.toZMod bits[125]! := by
    simpa only using rho_bit_of_map rho bits hbits 125 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[126]! bits[125]! (base rho) (twice rho) (triple rho)
    (digit0 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit0 rho) := by
    rw [hdigit]
    cases bits[126]! <;> cases bits[125]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted0 rho) (digit0 rho) (acc1 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1274) (rho 1275) (rho 1277 + rho 1278) ((1 : F) + rho 1280 + rho 1281)
      (rho 1282) (rho 1283) (rho 1284) (rho 1285) (rho 1286) (rho 1287)
      (by simpa [shifted0] using hshift2On)
      (by simpa [digit0] using hdigitOn)
      (by linear_combination r1455)
      (by linear_combination r1456)
      (by linear_combination r1457)
      (by linear_combination r1458)
      (by linear_combination r1459)
      (by linear_combination r1460)
    simpa [shifted0, digit0, acc1] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc1 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted0 rho) (digit0 rho) (acc1 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted0 rho) (digit0 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1246) (rho 1245)
      (base rho) (twice rho) (triple rho) (acc0 rho)
      (acc1 rho) :=
    ⟨shiftOnce0 rho, shifted0 rho, digit0 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window1 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc1 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[124]! (scalarBits rho)[123]!
        (base rho) (twice rho) (triple rho) (acc1 rho)
        (acc2 rho) ∧
      EdwardsBridge.onCurve (acc2 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1461, r1462, r1463, r1464, r1465, r1466, r1467, r1468, r1469, r1470, r1471, r1472, r1473, r1474, r1475, r1476, r1477, r1478, r1479, r1480, r1481, r1482, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1461 at r1461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1462 at r1462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1463 at r1463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1464 at r1464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1465 at r1465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1466 at r1466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1467 at r1467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1468 at r1468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1469 at r1469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1470 at r1470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1471 at r1471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1472 at r1472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1473 at r1473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1474 at r1474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1475 at r1475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1476 at r1476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1477 at r1477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1478 at r1478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1479 at r1479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1480 at r1480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1481 at r1481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1482 at r1482
  have hshift1 : EdwardsBridge.doubleSpec (acc1 rho) (shiftOnce1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1286) (rho 1287) (rho 1288) (rho 1289) (rho 1290) (rho 1291) (rho 1292)
      (by simpa [acc1] using hacc)
      (by linear_combination r1461)
      (by linear_combination r1462)
      (by linear_combination r1463)
      (by linear_combination r1464)
      (by linear_combination r1465)
    simpa [acc1, shiftOnce1] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc1 rho) (shiftOnce1 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc1 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce1 rho) (shifted1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1291) (rho 1292) (rho 1293) (rho 1294) (rho 1295) (rho 1296) (rho 1297)
      (by simpa [shiftOnce1] using hshift1On)
      (by linear_combination r1466)
      (by linear_combination r1467)
      (by linear_combination r1468)
      (by linear_combination r1469)
      (by linear_combination r1470)
    simpa [shiftOnce1, shifted1] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce1 rho) (shifted1 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce1 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1244) (rho 1243)
      (base rho) (twice rho) (triple rho) (digit1 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1244) (rho 1243)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1299 + rho 1300, (1 : F) + rho 1302 + rho 1303⟩ := by
      constructor
      · refine ⟨(rho 1298 + (rho 1252) - (0)), rho 1299, ?_, ?_, ?_⟩
        · linear_combination r1471
        · linear_combination r1472
        · linear_combination r1473
      · refine ⟨(rho 1301 + (rho 1253) - ((1 : F))), rho 1302, ?_, ?_, ?_⟩
        · linear_combination r1474
        · linear_combination r1475
        · linear_combination r1476
    simpa [base, twice, triple, digit1] using hraw
  have hhigh : rho 1244 =
      Bool.toZMod bits[124]! := by
    simpa only using rho_bit_of_map rho bits hbits 124 (by decide +kernel)
  have hlow : rho 1243 =
      Bool.toZMod bits[123]! := by
    simpa only using rho_bit_of_map rho bits hbits 123 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[124]! bits[123]! (base rho) (twice rho) (triple rho)
    (digit1 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit1 rho) := by
    rw [hdigit]
    cases bits[124]! <;> cases bits[123]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted1 rho) (digit1 rho) (acc2 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1296) (rho 1297) (rho 1299 + rho 1300) ((1 : F) + rho 1302 + rho 1303)
      (rho 1304) (rho 1305) (rho 1306) (rho 1307) (rho 1308) (rho 1309)
      (by simpa [shifted1] using hshift2On)
      (by simpa [digit1] using hdigitOn)
      (by linear_combination r1477)
      (by linear_combination r1478)
      (by linear_combination r1479)
      (by linear_combination r1480)
      (by linear_combination r1481)
      (by linear_combination r1482)
    simpa [shifted1, digit1, acc2] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc2 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted1 rho) (digit1 rho) (acc2 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted1 rho) (digit1 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1244) (rho 1243)
      (base rho) (twice rho) (triple rho) (acc1 rho)
      (acc2 rho) :=
    ⟨shiftOnce1 rho, shifted1 rho, digit1 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window2 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc2 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[122]! (scalarBits rho)[121]!
        (base rho) (twice rho) (triple rho) (acc2 rho)
        (acc3 rho) ∧
      EdwardsBridge.onCurve (acc3 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1483, r1484, r1485, r1486, r1487, r1488, r1489, r1490, r1491, r1492, r1493, r1494, r1495, r1496, r1497, r1498, r1499, r1500, r1501, r1502, r1503, r1504, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1483 at r1483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1484 at r1484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1485 at r1485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1486 at r1486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1487 at r1487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1488 at r1488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1489 at r1489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1490 at r1490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1491 at r1491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1492 at r1492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1493 at r1493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1494 at r1494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1495 at r1495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1496 at r1496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1497 at r1497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1498 at r1498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1499 at r1499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1500 at r1500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1501 at r1501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1502 at r1502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1503 at r1503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1504 at r1504
  have hshift1 : EdwardsBridge.doubleSpec (acc2 rho) (shiftOnce2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1308) (rho 1309) (rho 1310) (rho 1311) (rho 1312) (rho 1313) (rho 1314)
      (by simpa [acc2] using hacc)
      (by linear_combination r1483)
      (by linear_combination r1484)
      (by linear_combination r1485)
      (by linear_combination r1486)
      (by linear_combination r1487)
    simpa [acc2, shiftOnce2] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc2 rho) (shiftOnce2 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc2 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce2 rho) (shifted2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1313) (rho 1314) (rho 1315) (rho 1316) (rho 1317) (rho 1318) (rho 1319)
      (by simpa [shiftOnce2] using hshift1On)
      (by linear_combination r1488)
      (by linear_combination r1489)
      (by linear_combination r1490)
      (by linear_combination r1491)
      (by linear_combination r1492)
    simpa [shiftOnce2, shifted2] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce2 rho) (shifted2 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce2 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1242) (rho 1241)
      (base rho) (twice rho) (triple rho) (digit2 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1242) (rho 1241)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1321 + rho 1322, (1 : F) + rho 1324 + rho 1325⟩ := by
      constructor
      · refine ⟨(rho 1320 + (rho 1252) - (0)), rho 1321, ?_, ?_, ?_⟩
        · linear_combination r1493
        · linear_combination r1494
        · linear_combination r1495
      · refine ⟨(rho 1323 + (rho 1253) - ((1 : F))), rho 1324, ?_, ?_, ?_⟩
        · linear_combination r1496
        · linear_combination r1497
        · linear_combination r1498
    simpa [base, twice, triple, digit2] using hraw
  have hhigh : rho 1242 =
      Bool.toZMod bits[122]! := by
    simpa only using rho_bit_of_map rho bits hbits 122 (by decide +kernel)
  have hlow : rho 1241 =
      Bool.toZMod bits[121]! := by
    simpa only using rho_bit_of_map rho bits hbits 121 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[122]! bits[121]! (base rho) (twice rho) (triple rho)
    (digit2 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit2 rho) := by
    rw [hdigit]
    cases bits[122]! <;> cases bits[121]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted2 rho) (digit2 rho) (acc3 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1318) (rho 1319) (rho 1321 + rho 1322) ((1 : F) + rho 1324 + rho 1325)
      (rho 1326) (rho 1327) (rho 1328) (rho 1329) (rho 1330) (rho 1331)
      (by simpa [shifted2] using hshift2On)
      (by simpa [digit2] using hdigitOn)
      (by linear_combination r1499)
      (by linear_combination r1500)
      (by linear_combination r1501)
      (by linear_combination r1502)
      (by linear_combination r1503)
      (by linear_combination r1504)
    simpa [shifted2, digit2, acc3] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc3 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted2 rho) (digit2 rho) (acc3 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted2 rho) (digit2 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1242) (rho 1241)
      (base rho) (twice rho) (triple rho) (acc2 rho)
      (acc3 rho) :=
    ⟨shiftOnce2 rho, shifted2 rho, digit2 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window3 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc3 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[120]! (scalarBits rho)[119]!
        (base rho) (twice rho) (triple rho) (acc3 rho)
        (acc4 rho) ∧
      EdwardsBridge.onCurve (acc4 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p18, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart18 at p18
  rcases p18 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1505, r1506, r1507, r1508, r1509, r1510, r1511, r1512, r1513, r1514, r1515, r1516, r1517, r1518, r1519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart19 at p19
  rcases p19 with ⟨r1520, r1521, r1522, r1523, r1524, r1525, r1526, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1505 at r1505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1506 at r1506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1507 at r1507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1508 at r1508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1509 at r1509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1510 at r1510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1511 at r1511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1512 at r1512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1513 at r1513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1514 at r1514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1515 at r1515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1516 at r1516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1517 at r1517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1518 at r1518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1519 at r1519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1520 at r1520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1521 at r1521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1522 at r1522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1523 at r1523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1524 at r1524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1525 at r1525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1526 at r1526
  have hshift1 : EdwardsBridge.doubleSpec (acc3 rho) (shiftOnce3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1330) (rho 1331) (rho 1332) (rho 1333) (rho 1334) (rho 1335) (rho 1336)
      (by simpa [acc3] using hacc)
      (by linear_combination r1505)
      (by linear_combination r1506)
      (by linear_combination r1507)
      (by linear_combination r1508)
      (by linear_combination r1509)
    simpa [acc3, shiftOnce3] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc3 rho) (shiftOnce3 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc3 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce3 rho) (shifted3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1335) (rho 1336) (rho 1337) (rho 1338) (rho 1339) (rho 1340) (rho 1341)
      (by simpa [shiftOnce3] using hshift1On)
      (by linear_combination r1510)
      (by linear_combination r1511)
      (by linear_combination r1512)
      (by linear_combination r1513)
      (by linear_combination r1514)
    simpa [shiftOnce3, shifted3] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce3 rho) (shifted3 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce3 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1240) (rho 1239)
      (base rho) (twice rho) (triple rho) (digit3 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1240) (rho 1239)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1343 + rho 1344, (1 : F) + rho 1346 + rho 1347⟩ := by
      constructor
      · refine ⟨(rho 1342 + (rho 1252) - (0)), rho 1343, ?_, ?_, ?_⟩
        · linear_combination r1515
        · linear_combination r1516
        · linear_combination r1517
      · refine ⟨(rho 1345 + (rho 1253) - ((1 : F))), rho 1346, ?_, ?_, ?_⟩
        · linear_combination r1518
        · linear_combination r1519
        · linear_combination r1520
    simpa [base, twice, triple, digit3] using hraw
  have hhigh : rho 1240 =
      Bool.toZMod bits[120]! := by
    simpa only using rho_bit_of_map rho bits hbits 120 (by decide +kernel)
  have hlow : rho 1239 =
      Bool.toZMod bits[119]! := by
    simpa only using rho_bit_of_map rho bits hbits 119 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[120]! bits[119]! (base rho) (twice rho) (triple rho)
    (digit3 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit3 rho) := by
    rw [hdigit]
    cases bits[120]! <;> cases bits[119]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted3 rho) (digit3 rho) (acc4 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1340) (rho 1341) (rho 1343 + rho 1344) ((1 : F) + rho 1346 + rho 1347)
      (rho 1348) (rho 1349) (rho 1350) (rho 1351) (rho 1352) (rho 1353)
      (by simpa [shifted3] using hshift2On)
      (by simpa [digit3] using hdigitOn)
      (by linear_combination r1521)
      (by linear_combination r1522)
      (by linear_combination r1523)
      (by linear_combination r1524)
      (by linear_combination r1525)
      (by linear_combination r1526)
    simpa [shifted3, digit3, acc4] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc4 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted3 rho) (digit3 rho) (acc4 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted3 rho) (digit3 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1240) (rho 1239)
      (base rho) (twice rho) (triple rho) (acc3 rho)
      (acc4 rho) :=
    ⟨shiftOnce3 rho, shifted3 rho, digit3 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window4 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc4 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[118]! (scalarBits rho)[117]!
        (base rho) (twice rho) (triple rho) (acc4 rho)
        (acc5 rho) ∧
      EdwardsBridge.onCurve (acc5 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart19 at p19
  rcases p19 with ⟨_, _, _, _, _, _, _, r1527, r1528, r1529, r1530, r1531, r1532, r1533, r1534, r1535, r1536, r1537, r1538, r1539, r1540, r1541, r1542, r1543, r1544, r1545, r1546, r1547, r1548, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1527 at r1527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1528 at r1528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1529 at r1529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1530 at r1530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1531 at r1531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1532 at r1532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1533 at r1533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1534 at r1534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1535 at r1535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1536 at r1536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1537 at r1537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1538 at r1538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1539 at r1539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1540 at r1540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1541 at r1541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1542 at r1542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1543 at r1543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1544 at r1544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1545 at r1545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1546 at r1546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1547 at r1547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1548 at r1548
  have hshift1 : EdwardsBridge.doubleSpec (acc4 rho) (shiftOnce4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1352) (rho 1353) (rho 1354) (rho 1355) (rho 1356) (rho 1357) (rho 1358)
      (by simpa [acc4] using hacc)
      (by linear_combination r1527)
      (by linear_combination r1528)
      (by linear_combination r1529)
      (by linear_combination r1530)
      (by linear_combination r1531)
    simpa [acc4, shiftOnce4] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc4 rho) (shiftOnce4 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc4 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce4 rho) (shifted4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1357) (rho 1358) (rho 1359) (rho 1360) (rho 1361) (rho 1362) (rho 1363)
      (by simpa [shiftOnce4] using hshift1On)
      (by linear_combination r1532)
      (by linear_combination r1533)
      (by linear_combination r1534)
      (by linear_combination r1535)
      (by linear_combination r1536)
    simpa [shiftOnce4, shifted4] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce4 rho) (shifted4 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce4 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1238) (rho 1237)
      (base rho) (twice rho) (triple rho) (digit4 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1238) (rho 1237)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1365 + rho 1366, (1 : F) + rho 1368 + rho 1369⟩ := by
      constructor
      · refine ⟨(rho 1364 + (rho 1252) - (0)), rho 1365, ?_, ?_, ?_⟩
        · linear_combination r1537
        · linear_combination r1538
        · linear_combination r1539
      · refine ⟨(rho 1367 + (rho 1253) - ((1 : F))), rho 1368, ?_, ?_, ?_⟩
        · linear_combination r1540
        · linear_combination r1541
        · linear_combination r1542
    simpa [base, twice, triple, digit4] using hraw
  have hhigh : rho 1238 =
      Bool.toZMod bits[118]! := by
    simpa only using rho_bit_of_map rho bits hbits 118 (by decide +kernel)
  have hlow : rho 1237 =
      Bool.toZMod bits[117]! := by
    simpa only using rho_bit_of_map rho bits hbits 117 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[118]! bits[117]! (base rho) (twice rho) (triple rho)
    (digit4 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit4 rho) := by
    rw [hdigit]
    cases bits[118]! <;> cases bits[117]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted4 rho) (digit4 rho) (acc5 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1362) (rho 1363) (rho 1365 + rho 1366) ((1 : F) + rho 1368 + rho 1369)
      (rho 1370) (rho 1371) (rho 1372) (rho 1373) (rho 1374) (rho 1375)
      (by simpa [shifted4] using hshift2On)
      (by simpa [digit4] using hdigitOn)
      (by linear_combination r1543)
      (by linear_combination r1544)
      (by linear_combination r1545)
      (by linear_combination r1546)
      (by linear_combination r1547)
      (by linear_combination r1548)
    simpa [shifted4, digit4, acc5] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc5 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted4 rho) (digit4 rho) (acc5 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted4 rho) (digit4 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1238) (rho 1237)
      (base rho) (twice rho) (triple rho) (acc4 rho)
      (acc5 rho) :=
    ⟨shiftOnce4 rho, shifted4 rho, digit4 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window5 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc5 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[116]! (scalarBits rho)[115]!
        (base rho) (twice rho) (triple rho) (acc5 rho)
        (acc6 rho) ∧
      EdwardsBridge.onCurve (acc6 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p19,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart19 at p19
  rcases p19 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1549, r1550, r1551, r1552, r1553, r1554, r1555, r1556, r1557, r1558, r1559, r1560, r1561, r1562, r1563, r1564, r1565, r1566, r1567, r1568, r1569, r1570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1549 at r1549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1550 at r1550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1551 at r1551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1552 at r1552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1553 at r1553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1554 at r1554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1555 at r1555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1556 at r1556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1557 at r1557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1558 at r1558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1559 at r1559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1560 at r1560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1561 at r1561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1562 at r1562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1563 at r1563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1564 at r1564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1565 at r1565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1566 at r1566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1567 at r1567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1568 at r1568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1569 at r1569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1570 at r1570
  have hshift1 : EdwardsBridge.doubleSpec (acc5 rho) (shiftOnce5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1374) (rho 1375) (rho 1376) (rho 1377) (rho 1378) (rho 1379) (rho 1380)
      (by simpa [acc5] using hacc)
      (by linear_combination r1549)
      (by linear_combination r1550)
      (by linear_combination r1551)
      (by linear_combination r1552)
      (by linear_combination r1553)
    simpa [acc5, shiftOnce5] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc5 rho) (shiftOnce5 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc5 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce5 rho) (shifted5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1379) (rho 1380) (rho 1381) (rho 1382) (rho 1383) (rho 1384) (rho 1385)
      (by simpa [shiftOnce5] using hshift1On)
      (by linear_combination r1554)
      (by linear_combination r1555)
      (by linear_combination r1556)
      (by linear_combination r1557)
      (by linear_combination r1558)
    simpa [shiftOnce5, shifted5] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce5 rho) (shifted5 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce5 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1236) (rho 1235)
      (base rho) (twice rho) (triple rho) (digit5 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1236) (rho 1235)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1387 + rho 1388, (1 : F) + rho 1390 + rho 1391⟩ := by
      constructor
      · refine ⟨(rho 1386 + (rho 1252) - (0)), rho 1387, ?_, ?_, ?_⟩
        · linear_combination r1559
        · linear_combination r1560
        · linear_combination r1561
      · refine ⟨(rho 1389 + (rho 1253) - ((1 : F))), rho 1390, ?_, ?_, ?_⟩
        · linear_combination r1562
        · linear_combination r1563
        · linear_combination r1564
    simpa [base, twice, triple, digit5] using hraw
  have hhigh : rho 1236 =
      Bool.toZMod bits[116]! := by
    simpa only using rho_bit_of_map rho bits hbits 116 (by decide +kernel)
  have hlow : rho 1235 =
      Bool.toZMod bits[115]! := by
    simpa only using rho_bit_of_map rho bits hbits 115 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[116]! bits[115]! (base rho) (twice rho) (triple rho)
    (digit5 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit5 rho) := by
    rw [hdigit]
    cases bits[116]! <;> cases bits[115]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted5 rho) (digit5 rho) (acc6 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1384) (rho 1385) (rho 1387 + rho 1388) ((1 : F) + rho 1390 + rho 1391)
      (rho 1392) (rho 1393) (rho 1394) (rho 1395) (rho 1396) (rho 1397)
      (by simpa [shifted5] using hshift2On)
      (by simpa [digit5] using hdigitOn)
      (by linear_combination r1565)
      (by linear_combination r1566)
      (by linear_combination r1567)
      (by linear_combination r1568)
      (by linear_combination r1569)
      (by linear_combination r1570)
    simpa [shifted5, digit5, acc6] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc6 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted5 rho) (digit5 rho) (acc6 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted5 rho) (digit5 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1236) (rho 1235)
      (base rho) (twice rho) (triple rho) (acc5 rho)
      (acc6 rho) :=
    ⟨shiftOnce5 rho, shifted5 rho, digit5 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
