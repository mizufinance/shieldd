import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window102 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc102 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[44]! (scalarBits rho)[43]!
        (base rho) (twice rho) (triple rho) (acc102 rho)
        (acc103 rho) ∧
      EdwardsBridge.onCurve (acc103 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2513, r2514, r2515, r2516, r2517, r2518, r2519, r2520, r2521, r2522, r2523, r2524, r2525, r2526, r2527, r2528, r2529, r2530, r2531, r2532, r2533, r2534, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2513 at r2513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2514 at r2514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2515 at r2515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2516 at r2516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2517 at r2517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2518 at r2518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2519 at r2519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2520 at r2520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2521 at r2521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2522 at r2522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2523 at r2523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2524 at r2524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2525 at r2525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2526 at r2526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2527 at r2527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2528 at r2528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2529 at r2529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2530 at r2530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2531 at r2531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2532 at r2532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2533 at r2533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2534 at r2534
  have hshift1 : EdwardsBridge.doubleSpec (acc102 rho) (shiftOnce102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2514) (rho 2515) (rho 2516) (rho 2517) (rho 2518) (rho 2519) (rho 2520)
      (by simpa [acc102] using hacc)
      (by linear_combination r2513)
      (by linear_combination r2514)
      (by linear_combination r2515)
      (by linear_combination r2516)
      (by linear_combination r2517)
    simpa [acc102, shiftOnce102] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc102 rho) (shiftOnce102 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc102 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce102 rho) (shifted102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2519) (rho 2520) (rho 2521) (rho 2522) (rho 2523) (rho 2524) (rho 2525)
      (by simpa [shiftOnce102] using hshift1On)
      (by linear_combination r2518)
      (by linear_combination r2519)
      (by linear_combination r2520)
      (by linear_combination r2521)
      (by linear_combination r2522)
    simpa [shiftOnce102, shifted102] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce102 rho) (shifted102 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce102 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 45) (rho 44)
      (base rho) (twice rho) (triple rho) (digit102 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 45) (rho 44)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2527 + rho 2528, (1 : F) + rho 2530 + rho 2531⟩ := by
      constructor
      · refine ⟨(rho 2526 + (rho 258) - (0)), rho 2527, ?_, ?_, ?_⟩
        · linear_combination r2523 - (rho 44) * order_cast_zero
        · linear_combination r2524
        · linear_combination r2525
      · refine ⟨(rho 2529 + (rho 259) - ((1 : F))), rho 2530, ?_, ?_, ?_⟩
        · linear_combination r2526 - (rho 44) * order_cast_zero
        · linear_combination r2527
        · linear_combination r2528
    simpa [base, twice, triple, digit102] using hraw
  have hhigh : rho 45 =
      Bool.toZMod bits[44]! := by
    simpa only using rho_bit_of_map rho bits hbits 44 (by decide +kernel)
  have hlow : rho 44 =
      Bool.toZMod bits[43]! := by
    simpa only using rho_bit_of_map rho bits hbits 43 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[44]! bits[43]! (base rho) (twice rho) (triple rho)
    (digit102 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit102 rho) := by
    rw [hdigit]
    cases bits[44]! <;> cases bits[43]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted102 rho) (digit102 rho) (acc103 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2524) (rho 2525) (rho 2527 + rho 2528) ((1 : F) + rho 2530 + rho 2531)
      (rho 2532) (rho 2533) (rho 2534) (rho 2535) (rho 2536) (rho 2537)
      (by simpa [shifted102] using hshift2On)
      (by simpa [digit102] using hdigitOn)
      (by linear_combination r2529)
      (by linear_combination r2530)
      (by linear_combination r2531)
      (by linear_combination r2532)
      (by linear_combination r2533)
      (by linear_combination r2534)
    simpa [shifted102, digit102, acc103] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc103 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted102 rho) (digit102 rho) (acc103 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted102 rho) (digit102 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 45) (rho 44)
      (base rho) (twice rho) (triple rho) (acc102 rho)
      (acc103 rho) :=
    ⟨shiftOnce102 rho, shifted102 rho, digit102 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window103 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc103 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[42]! (scalarBits rho)[41]!
        (base rho) (twice rho) (triple rho) (acc103 rho)
        (acc104 rho) ∧
      EdwardsBridge.onCurve (acc104 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2535, r2536, r2537, r2538, r2539, r2540, r2541, r2542, r2543, r2544, r2545, r2546, r2547, r2548, r2549, r2550, r2551, r2552, r2553, r2554, r2555, r2556, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2535 at r2535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2536 at r2536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2537 at r2537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2538 at r2538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2539 at r2539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2540 at r2540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2541 at r2541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2542 at r2542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2543 at r2543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2544 at r2544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2545 at r2545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2546 at r2546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2547 at r2547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2548 at r2548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2549 at r2549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2550 at r2550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2551 at r2551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2552 at r2552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2553 at r2553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2554 at r2554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2555 at r2555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2556 at r2556
  have hshift1 : EdwardsBridge.doubleSpec (acc103 rho) (shiftOnce103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2536) (rho 2537) (rho 2538) (rho 2539) (rho 2540) (rho 2541) (rho 2542)
      (by simpa [acc103] using hacc)
      (by linear_combination r2535)
      (by linear_combination r2536)
      (by linear_combination r2537)
      (by linear_combination r2538)
      (by linear_combination r2539)
    simpa [acc103, shiftOnce103] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc103 rho) (shiftOnce103 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc103 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce103 rho) (shifted103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2541) (rho 2542) (rho 2543) (rho 2544) (rho 2545) (rho 2546) (rho 2547)
      (by simpa [shiftOnce103] using hshift1On)
      (by linear_combination r2540)
      (by linear_combination r2541)
      (by linear_combination r2542)
      (by linear_combination r2543)
      (by linear_combination r2544)
    simpa [shiftOnce103, shifted103] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce103 rho) (shifted103 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce103 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 43) (rho 42)
      (base rho) (twice rho) (triple rho) (digit103 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 43) (rho 42)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2549 + rho 2550, (1 : F) + rho 2552 + rho 2553⟩ := by
      constructor
      · refine ⟨(rho 2548 + (rho 258) - (0)), rho 2549, ?_, ?_, ?_⟩
        · linear_combination r2545 - (rho 42) * order_cast_zero
        · linear_combination r2546
        · linear_combination r2547
      · refine ⟨(rho 2551 + (rho 259) - ((1 : F))), rho 2552, ?_, ?_, ?_⟩
        · linear_combination r2548 - (rho 42) * order_cast_zero
        · linear_combination r2549
        · linear_combination r2550
    simpa [base, twice, triple, digit103] using hraw
  have hhigh : rho 43 =
      Bool.toZMod bits[42]! := by
    simpa only using rho_bit_of_map rho bits hbits 42 (by decide +kernel)
  have hlow : rho 42 =
      Bool.toZMod bits[41]! := by
    simpa only using rho_bit_of_map rho bits hbits 41 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[42]! bits[41]! (base rho) (twice rho) (triple rho)
    (digit103 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit103 rho) := by
    rw [hdigit]
    cases bits[42]! <;> cases bits[41]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted103 rho) (digit103 rho) (acc104 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2546) (rho 2547) (rho 2549 + rho 2550) ((1 : F) + rho 2552 + rho 2553)
      (rho 2554) (rho 2555) (rho 2556) (rho 2557) (rho 2558) (rho 2559)
      (by simpa [shifted103] using hshift2On)
      (by simpa [digit103] using hdigitOn)
      (by linear_combination r2551)
      (by linear_combination r2552)
      (by linear_combination r2553)
      (by linear_combination r2554)
      (by linear_combination r2555)
      (by linear_combination r2556)
    simpa [shifted103, digit103, acc104] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc104 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted103 rho) (digit103 rho) (acc104 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted103 rho) (digit103 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 43) (rho 42)
      (base rho) (twice rho) (triple rho) (acc103 rho)
      (acc104 rho) :=
    ⟨shiftOnce103 rho, shifted103 rho, digit103 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window104 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc104 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[40]! (scalarBits rho)[39]!
        (base rho) (twice rho) (triple rho) (acc104 rho)
        (acc105 rho) ∧
      EdwardsBridge.onCurve (acc105 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, p32, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2557, r2558, r2559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart32 at p32
  rcases p32 with ⟨r2560, r2561, r2562, r2563, r2564, r2565, r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2557 at r2557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2558 at r2558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2559 at r2559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2560 at r2560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2561 at r2561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2562 at r2562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2563 at r2563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2564 at r2564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2565 at r2565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2566 at r2566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2567 at r2567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2568 at r2568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2569 at r2569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2570 at r2570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2571 at r2571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2572 at r2572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2573 at r2573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2574 at r2574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2575 at r2575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2576 at r2576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2577 at r2577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2578 at r2578
  have hshift1 : EdwardsBridge.doubleSpec (acc104 rho) (shiftOnce104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2558) (rho 2559) (rho 2560) (rho 2561) (rho 2562) (rho 2563) (rho 2564)
      (by simpa [acc104] using hacc)
      (by linear_combination r2557)
      (by linear_combination r2558)
      (by linear_combination r2559)
      (by linear_combination r2560)
      (by linear_combination r2561)
    simpa [acc104, shiftOnce104] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc104 rho) (shiftOnce104 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc104 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce104 rho) (shifted104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2563) (rho 2564) (rho 2565) (rho 2566) (rho 2567) (rho 2568) (rho 2569)
      (by simpa [shiftOnce104] using hshift1On)
      (by linear_combination r2562)
      (by linear_combination r2563)
      (by linear_combination r2564)
      (by linear_combination r2565)
      (by linear_combination r2566)
    simpa [shiftOnce104, shifted104] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce104 rho) (shifted104 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce104 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 41) (rho 40)
      (base rho) (twice rho) (triple rho) (digit104 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 41) (rho 40)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2571 + rho 2572, (1 : F) + rho 2574 + rho 2575⟩ := by
      constructor
      · refine ⟨(rho 2570 + (rho 258) - (0)), rho 2571, ?_, ?_, ?_⟩
        · linear_combination r2567 - (rho 40) * order_cast_zero
        · linear_combination r2568
        · linear_combination r2569
      · refine ⟨(rho 2573 + (rho 259) - ((1 : F))), rho 2574, ?_, ?_, ?_⟩
        · linear_combination r2570 - (rho 40) * order_cast_zero
        · linear_combination r2571
        · linear_combination r2572
    simpa [base, twice, triple, digit104] using hraw
  have hhigh : rho 41 =
      Bool.toZMod bits[40]! := by
    simpa only using rho_bit_of_map rho bits hbits 40 (by decide +kernel)
  have hlow : rho 40 =
      Bool.toZMod bits[39]! := by
    simpa only using rho_bit_of_map rho bits hbits 39 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[40]! bits[39]! (base rho) (twice rho) (triple rho)
    (digit104 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit104 rho) := by
    rw [hdigit]
    cases bits[40]! <;> cases bits[39]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted104 rho) (digit104 rho) (acc105 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2568) (rho 2569) (rho 2571 + rho 2572) ((1 : F) + rho 2574 + rho 2575)
      (rho 2576) (rho 2577) (rho 2578) (rho 2579) (rho 2580) (rho 2581)
      (by simpa [shifted104] using hshift2On)
      (by simpa [digit104] using hdigitOn)
      (by linear_combination r2573)
      (by linear_combination r2574)
      (by linear_combination r2575)
      (by linear_combination r2576)
      (by linear_combination r2577)
      (by linear_combination r2578)
    simpa [shifted104, digit104, acc105] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc105 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted104 rho) (digit104 rho) (acc105 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted104 rho) (digit104 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 41) (rho 40)
      (base rho) (twice rho) (triple rho) (acc104 rho)
      (acc105 rho) :=
    ⟨shiftOnce104 rho, shifted104 rho, digit104 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window105 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc105 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[38]! (scalarBits rho)[37]!
        (base rho) (twice rho) (triple rho) (acc105 rho)
        (acc106 rho) ∧
      EdwardsBridge.onCurve (acc106 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2579, r2580, r2581, r2582, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591, r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2579 at r2579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2580 at r2580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2581 at r2581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2582 at r2582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2583 at r2583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2584 at r2584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2585 at r2585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2586 at r2586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2587 at r2587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2588 at r2588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2589 at r2589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2590 at r2590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2591 at r2591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2592 at r2592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2593 at r2593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2594 at r2594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2595 at r2595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2596 at r2596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2597 at r2597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2598 at r2598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2599 at r2599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2600 at r2600
  have hshift1 : EdwardsBridge.doubleSpec (acc105 rho) (shiftOnce105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2580) (rho 2581) (rho 2582) (rho 2583) (rho 2584) (rho 2585) (rho 2586)
      (by simpa [acc105] using hacc)
      (by linear_combination r2579)
      (by linear_combination r2580)
      (by linear_combination r2581)
      (by linear_combination r2582)
      (by linear_combination r2583)
    simpa [acc105, shiftOnce105] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc105 rho) (shiftOnce105 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc105 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce105 rho) (shifted105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2585) (rho 2586) (rho 2587) (rho 2588) (rho 2589) (rho 2590) (rho 2591)
      (by simpa [shiftOnce105] using hshift1On)
      (by linear_combination r2584)
      (by linear_combination r2585)
      (by linear_combination r2586)
      (by linear_combination r2587)
      (by linear_combination r2588)
    simpa [shiftOnce105, shifted105] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce105 rho) (shifted105 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce105 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 39) (rho 38)
      (base rho) (twice rho) (triple rho) (digit105 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 39) (rho 38)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2593 + rho 2594, (1 : F) + rho 2596 + rho 2597⟩ := by
      constructor
      · refine ⟨(rho 2592 + (rho 258) - (0)), rho 2593, ?_, ?_, ?_⟩
        · linear_combination r2589 - (rho 38) * order_cast_zero
        · linear_combination r2590
        · linear_combination r2591
      · refine ⟨(rho 2595 + (rho 259) - ((1 : F))), rho 2596, ?_, ?_, ?_⟩
        · linear_combination r2592 - (rho 38) * order_cast_zero
        · linear_combination r2593
        · linear_combination r2594
    simpa [base, twice, triple, digit105] using hraw
  have hhigh : rho 39 =
      Bool.toZMod bits[38]! := by
    simpa only using rho_bit_of_map rho bits hbits 38 (by decide +kernel)
  have hlow : rho 38 =
      Bool.toZMod bits[37]! := by
    simpa only using rho_bit_of_map rho bits hbits 37 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[38]! bits[37]! (base rho) (twice rho) (triple rho)
    (digit105 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit105 rho) := by
    rw [hdigit]
    cases bits[38]! <;> cases bits[37]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted105 rho) (digit105 rho) (acc106 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2590) (rho 2591) (rho 2593 + rho 2594) ((1 : F) + rho 2596 + rho 2597)
      (rho 2598) (rho 2599) (rho 2600) (rho 2601) (rho 2602) (rho 2603)
      (by simpa [shifted105] using hshift2On)
      (by simpa [digit105] using hdigitOn)
      (by linear_combination r2595)
      (by linear_combination r2596)
      (by linear_combination r2597)
      (by linear_combination r2598)
      (by linear_combination r2599)
      (by linear_combination r2600)
    simpa [shifted105, digit105, acc106] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc106 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted105 rho) (digit105 rho) (acc106 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted105 rho) (digit105 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 39) (rho 38)
      (base rho) (twice rho) (triple rho) (acc105 rho)
      (acc106 rho) :=
    ⟨shiftOnce105 rho, shifted105 rho, digit105 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window106 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc106 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[36]! (scalarBits rho)[35]!
        (base rho) (twice rho) (triple rho) (acc106 rho)
        (acc107 rho) ∧
      EdwardsBridge.onCurve (acc107 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2601, r2602, r2603, r2604, r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617, r2618, r2619, r2620, r2621, r2622, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2601 at r2601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2602 at r2602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2603 at r2603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2604 at r2604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2605 at r2605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2606 at r2606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2607 at r2607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2608 at r2608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2609 at r2609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2610 at r2610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2611 at r2611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2612 at r2612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2613 at r2613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2614 at r2614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2615 at r2615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2616 at r2616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2617 at r2617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2618 at r2618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2619 at r2619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2620 at r2620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2621 at r2621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2622 at r2622
  have hshift1 : EdwardsBridge.doubleSpec (acc106 rho) (shiftOnce106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2602) (rho 2603) (rho 2604) (rho 2605) (rho 2606) (rho 2607) (rho 2608)
      (by simpa [acc106] using hacc)
      (by linear_combination r2601)
      (by linear_combination r2602)
      (by linear_combination r2603)
      (by linear_combination r2604)
      (by linear_combination r2605)
    simpa [acc106, shiftOnce106] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc106 rho) (shiftOnce106 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc106 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce106 rho) (shifted106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2607) (rho 2608) (rho 2609) (rho 2610) (rho 2611) (rho 2612) (rho 2613)
      (by simpa [shiftOnce106] using hshift1On)
      (by linear_combination r2606)
      (by linear_combination r2607)
      (by linear_combination r2608)
      (by linear_combination r2609)
      (by linear_combination r2610)
    simpa [shiftOnce106, shifted106] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce106 rho) (shifted106 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce106 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 37) (rho 36)
      (base rho) (twice rho) (triple rho) (digit106 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 37) (rho 36)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2615 + rho 2616, (1 : F) + rho 2618 + rho 2619⟩ := by
      constructor
      · refine ⟨(rho 2614 + (rho 258) - (0)), rho 2615, ?_, ?_, ?_⟩
        · linear_combination r2611 - (rho 36) * order_cast_zero
        · linear_combination r2612
        · linear_combination r2613
      · refine ⟨(rho 2617 + (rho 259) - ((1 : F))), rho 2618, ?_, ?_, ?_⟩
        · linear_combination r2614 - (rho 36) * order_cast_zero
        · linear_combination r2615
        · linear_combination r2616
    simpa [base, twice, triple, digit106] using hraw
  have hhigh : rho 37 =
      Bool.toZMod bits[36]! := by
    simpa only using rho_bit_of_map rho bits hbits 36 (by decide +kernel)
  have hlow : rho 36 =
      Bool.toZMod bits[35]! := by
    simpa only using rho_bit_of_map rho bits hbits 35 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[36]! bits[35]! (base rho) (twice rho) (triple rho)
    (digit106 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit106 rho) := by
    rw [hdigit]
    cases bits[36]! <;> cases bits[35]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted106 rho) (digit106 rho) (acc107 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2612) (rho 2613) (rho 2615 + rho 2616) ((1 : F) + rho 2618 + rho 2619)
      (rho 2620) (rho 2621) (rho 2622) (rho 2623) (rho 2624) (rho 2625)
      (by simpa [shifted106] using hshift2On)
      (by simpa [digit106] using hdigitOn)
      (by linear_combination r2617)
      (by linear_combination r2618)
      (by linear_combination r2619)
      (by linear_combination r2620)
      (by linear_combination r2621)
      (by linear_combination r2622)
    simpa [shifted106, digit106, acc107] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc107 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted106 rho) (digit106 rho) (acc107 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted106 rho) (digit106 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 37) (rho 36)
      (base rho) (twice rho) (triple rho) (acc106 rho)
      (acc107 rho) :=
    ⟨shiftOnce106 rho, shifted106 rho, digit106 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window107 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc107 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[34]! (scalarBits rho)[33]!
        (base rho) (twice rho) (triple rho) (acc107 rho)
        (acc108 rho) ∧
      EdwardsBridge.onCurve (acc108 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, p33, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630, r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, r2643, r2644, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2623 at r2623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2624 at r2624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2625 at r2625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2626 at r2626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2627 at r2627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2628 at r2628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2629 at r2629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2630 at r2630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2631 at r2631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2632 at r2632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2633 at r2633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2634 at r2634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2635 at r2635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2636 at r2636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2637 at r2637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2638 at r2638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2639 at r2639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2640 at r2640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2641 at r2641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2642 at r2642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2643 at r2643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2644 at r2644
  have hshift1 : EdwardsBridge.doubleSpec (acc107 rho) (shiftOnce107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2624) (rho 2625) (rho 2626) (rho 2627) (rho 2628) (rho 2629) (rho 2630)
      (by simpa [acc107] using hacc)
      (by linear_combination r2623)
      (by linear_combination r2624)
      (by linear_combination r2625)
      (by linear_combination r2626)
      (by linear_combination r2627)
    simpa [acc107, shiftOnce107] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc107 rho) (shiftOnce107 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc107 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce107 rho) (shifted107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2629) (rho 2630) (rho 2631) (rho 2632) (rho 2633) (rho 2634) (rho 2635)
      (by simpa [shiftOnce107] using hshift1On)
      (by linear_combination r2628)
      (by linear_combination r2629)
      (by linear_combination r2630)
      (by linear_combination r2631)
      (by linear_combination r2632)
    simpa [shiftOnce107, shifted107] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce107 rho) (shifted107 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce107 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 35) (rho 34)
      (base rho) (twice rho) (triple rho) (digit107 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 35) (rho 34)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2637 + rho 2638, (1 : F) + rho 2640 + rho 2641⟩ := by
      constructor
      · refine ⟨(rho 2636 + (rho 258) - (0)), rho 2637, ?_, ?_, ?_⟩
        · linear_combination r2633 - (rho 34) * order_cast_zero
        · linear_combination r2634
        · linear_combination r2635
      · refine ⟨(rho 2639 + (rho 259) - ((1 : F))), rho 2640, ?_, ?_, ?_⟩
        · linear_combination r2636 - (rho 34) * order_cast_zero
        · linear_combination r2637
        · linear_combination r2638
    simpa [base, twice, triple, digit107] using hraw
  have hhigh : rho 35 =
      Bool.toZMod bits[34]! := by
    simpa only using rho_bit_of_map rho bits hbits 34 (by decide +kernel)
  have hlow : rho 34 =
      Bool.toZMod bits[33]! := by
    simpa only using rho_bit_of_map rho bits hbits 33 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[34]! bits[33]! (base rho) (twice rho) (triple rho)
    (digit107 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit107 rho) := by
    rw [hdigit]
    cases bits[34]! <;> cases bits[33]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted107 rho) (digit107 rho) (acc108 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2634) (rho 2635) (rho 2637 + rho 2638) ((1 : F) + rho 2640 + rho 2641)
      (rho 2642) (rho 2643) (rho 2644) (rho 2645) (rho 2646) (rho 2647)
      (by simpa [shifted107] using hshift2On)
      (by simpa [digit107] using hdigitOn)
      (by linear_combination r2639)
      (by linear_combination r2640)
      (by linear_combination r2641)
      (by linear_combination r2642)
      (by linear_combination r2643)
      (by linear_combination r2644)
    simpa [shifted107, digit107, acc108] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc108 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted107 rho) (digit107 rho) (acc108 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted107 rho) (digit107 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 35) (rho 34)
      (base rho) (twice rho) (triple rho) (acc107 rho)
      (acc108 rho) :=
    ⟨shiftOnce107 rho, shifted107 rho, digit107 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
