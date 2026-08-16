import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window108 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc108 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[32]! (scalarBits rho)[31]!
        (base rho) (twice rho) (triple rho) (acc108 rho)
        (acc109 rho) ∧
      EdwardsBridge.onCurve (acc109 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656, r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2645 at r2645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2646 at r2646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2647 at r2647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2648 at r2648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2649 at r2649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2650 at r2650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2651 at r2651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2652 at r2652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2653 at r2653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2654 at r2654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2655 at r2655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2656 at r2656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2657 at r2657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2658 at r2658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2659 at r2659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2660 at r2660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2661 at r2661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2662 at r2662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2663 at r2663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2664 at r2664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2665 at r2665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2666 at r2666
  have hshift1 : EdwardsBridge.doubleSpec (acc108 rho) (shiftOnce108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2646) (rho 2647) (rho 2648) (rho 2649) (rho 2650) (rho 2651) (rho 2652)
      (by simpa [acc108] using hacc)
      (by linear_combination r2645)
      (by linear_combination r2646)
      (by linear_combination r2647)
      (by linear_combination r2648)
      (by linear_combination r2649)
    simpa [acc108, shiftOnce108] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc108 rho) (shiftOnce108 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc108 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce108 rho) (shifted108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2651) (rho 2652) (rho 2653) (rho 2654) (rho 2655) (rho 2656) (rho 2657)
      (by simpa [shiftOnce108] using hshift1On)
      (by linear_combination r2650)
      (by linear_combination r2651)
      (by linear_combination r2652)
      (by linear_combination r2653)
      (by linear_combination r2654)
    simpa [shiftOnce108, shifted108] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce108 rho) (shifted108 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce108 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 33) (rho 32)
      (base rho) (twice rho) (triple rho) (digit108 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 33) (rho 32)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2659 + rho 2660, (1 : F) + rho 2662 + rho 2663⟩ := by
      constructor
      · refine ⟨(rho 2658 + (rho 258) - (0)), rho 2659, ?_, ?_, ?_⟩
        · linear_combination r2655 - (rho 32) * order_cast_zero
        · linear_combination r2656
        · linear_combination r2657
      · refine ⟨(rho 2661 + (rho 259) - ((1 : F))), rho 2662, ?_, ?_, ?_⟩
        · linear_combination r2658 - (rho 32) * order_cast_zero
        · linear_combination r2659
        · linear_combination r2660
    simpa [base, twice, triple, digit108] using hraw
  have hhigh : rho 33 =
      Bool.toZMod bits[32]! := by
    simpa only using rho_bit_of_map rho bits hbits 32 (by decide +kernel)
  have hlow : rho 32 =
      Bool.toZMod bits[31]! := by
    simpa only using rho_bit_of_map rho bits hbits 31 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[32]! bits[31]! (base rho) (twice rho) (triple rho)
    (digit108 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit108 rho) := by
    rw [hdigit]
    cases bits[32]! <;> cases bits[31]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted108 rho) (digit108 rho) (acc109 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2656) (rho 2657) (rho 2659 + rho 2660) ((1 : F) + rho 2662 + rho 2663)
      (rho 2664) (rho 2665) (rho 2666) (rho 2667) (rho 2668) (rho 2669)
      (by simpa [shifted108] using hshift2On)
      (by simpa [digit108] using hdigitOn)
      (by linear_combination r2661)
      (by linear_combination r2662)
      (by linear_combination r2663)
      (by linear_combination r2664)
      (by linear_combination r2665)
      (by linear_combination r2666)
    simpa [shifted108, digit108, acc109] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc109 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted108 rho) (digit108 rho) (acc109 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted108 rho) (digit108 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 33) (rho 32)
      (base rho) (twice rho) (triple rho) (acc108 rho)
      (acc109 rho) :=
    ⟨shiftOnce108 rho, shifted108 rho, digit108 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window109 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc109 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[30]! (scalarBits rho)[29]!
        (base rho) (twice rho) (triple rho) (acc109 rho)
        (acc110 rho) ∧
      EdwardsBridge.onCurve (acc110 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2667, r2668, r2669, r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682, r2683, r2684, r2685, r2686, r2687, r2688, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2667 at r2667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2668 at r2668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2669 at r2669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2670 at r2670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2671 at r2671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2672 at r2672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2673 at r2673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2674 at r2674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2675 at r2675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2676 at r2676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2677 at r2677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2678 at r2678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2679 at r2679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2680 at r2680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2681 at r2681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2682 at r2682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2683 at r2683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2684 at r2684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2685 at r2685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2686 at r2686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2687 at r2687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2688 at r2688
  have hshift1 : EdwardsBridge.doubleSpec (acc109 rho) (shiftOnce109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2668) (rho 2669) (rho 2670) (rho 2671) (rho 2672) (rho 2673) (rho 2674)
      (by simpa [acc109] using hacc)
      (by linear_combination r2667)
      (by linear_combination r2668)
      (by linear_combination r2669)
      (by linear_combination r2670)
      (by linear_combination r2671)
    simpa [acc109, shiftOnce109] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc109 rho) (shiftOnce109 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc109 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce109 rho) (shifted109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2673) (rho 2674) (rho 2675) (rho 2676) (rho 2677) (rho 2678) (rho 2679)
      (by simpa [shiftOnce109] using hshift1On)
      (by linear_combination r2672)
      (by linear_combination r2673)
      (by linear_combination r2674)
      (by linear_combination r2675)
      (by linear_combination r2676)
    simpa [shiftOnce109, shifted109] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce109 rho) (shifted109 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce109 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 31) (rho 30)
      (base rho) (twice rho) (triple rho) (digit109 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 31) (rho 30)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2681 + rho 2682, (1 : F) + rho 2684 + rho 2685⟩ := by
      constructor
      · refine ⟨(rho 2680 + (rho 258) - (0)), rho 2681, ?_, ?_, ?_⟩
        · linear_combination r2677 - (rho 30) * order_cast_zero
        · linear_combination r2678
        · linear_combination r2679
      · refine ⟨(rho 2683 + (rho 259) - ((1 : F))), rho 2684, ?_, ?_, ?_⟩
        · linear_combination r2680 - (rho 30) * order_cast_zero
        · linear_combination r2681
        · linear_combination r2682
    simpa [base, twice, triple, digit109] using hraw
  have hhigh : rho 31 =
      Bool.toZMod bits[30]! := by
    simpa only using rho_bit_of_map rho bits hbits 30 (by decide +kernel)
  have hlow : rho 30 =
      Bool.toZMod bits[29]! := by
    simpa only using rho_bit_of_map rho bits hbits 29 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[30]! bits[29]! (base rho) (twice rho) (triple rho)
    (digit109 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit109 rho) := by
    rw [hdigit]
    cases bits[30]! <;> cases bits[29]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted109 rho) (digit109 rho) (acc110 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2678) (rho 2679) (rho 2681 + rho 2682) ((1 : F) + rho 2684 + rho 2685)
      (rho 2686) (rho 2687) (rho 2688) (rho 2689) (rho 2690) (rho 2691)
      (by simpa [shifted109] using hshift2On)
      (by simpa [digit109] using hdigitOn)
      (by linear_combination r2683)
      (by linear_combination r2684)
      (by linear_combination r2685)
      (by linear_combination r2686)
      (by linear_combination r2687)
      (by linear_combination r2688)
    simpa [shifted109, digit109, acc110] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc110 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted109 rho) (digit109 rho) (acc110 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted109 rho) (digit109 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 31) (rho 30)
      (base rho) (twice rho) (triple rho) (acc109 rho)
      (acc110 rho) :=
    ⟨shiftOnce109 rho, shifted109 rho, digit109 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window110 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc110 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[28]! (scalarBits rho)[27]!
        (base rho) (twice rho) (triple rho) (acc110 rho)
        (acc111 rho) ∧
      EdwardsBridge.onCurve (acc111 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2689, r2690, r2691, r2692, r2693, r2694, r2695, r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, r2706, r2707, r2708, r2709, r2710, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2689 at r2689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2690 at r2690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2691 at r2691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2692 at r2692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2693 at r2693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2694 at r2694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2695 at r2695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2696 at r2696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2697 at r2697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2698 at r2698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2699 at r2699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2700 at r2700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2701 at r2701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2702 at r2702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2703 at r2703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2704 at r2704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2705 at r2705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2706 at r2706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2707 at r2707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2708 at r2708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2709 at r2709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2710 at r2710
  have hshift1 : EdwardsBridge.doubleSpec (acc110 rho) (shiftOnce110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2690) (rho 2691) (rho 2692) (rho 2693) (rho 2694) (rho 2695) (rho 2696)
      (by simpa [acc110] using hacc)
      (by linear_combination r2689)
      (by linear_combination r2690)
      (by linear_combination r2691)
      (by linear_combination r2692)
      (by linear_combination r2693)
    simpa [acc110, shiftOnce110] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc110 rho) (shiftOnce110 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc110 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce110 rho) (shifted110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2695) (rho 2696) (rho 2697) (rho 2698) (rho 2699) (rho 2700) (rho 2701)
      (by simpa [shiftOnce110] using hshift1On)
      (by linear_combination r2694)
      (by linear_combination r2695)
      (by linear_combination r2696)
      (by linear_combination r2697)
      (by linear_combination r2698)
    simpa [shiftOnce110, shifted110] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce110 rho) (shifted110 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce110 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 29) (rho 28)
      (base rho) (twice rho) (triple rho) (digit110 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 29) (rho 28)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2703 + rho 2704, (1 : F) + rho 2706 + rho 2707⟩ := by
      constructor
      · refine ⟨(rho 2702 + (rho 258) - (0)), rho 2703, ?_, ?_, ?_⟩
        · linear_combination r2699 - (rho 28) * order_cast_zero
        · linear_combination r2700
        · linear_combination r2701
      · refine ⟨(rho 2705 + (rho 259) - ((1 : F))), rho 2706, ?_, ?_, ?_⟩
        · linear_combination r2702 - (rho 28) * order_cast_zero
        · linear_combination r2703
        · linear_combination r2704
    simpa [base, twice, triple, digit110] using hraw
  have hhigh : rho 29 =
      Bool.toZMod bits[28]! := by
    simpa only using rho_bit_of_map rho bits hbits 28 (by decide +kernel)
  have hlow : rho 28 =
      Bool.toZMod bits[27]! := by
    simpa only using rho_bit_of_map rho bits hbits 27 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[28]! bits[27]! (base rho) (twice rho) (triple rho)
    (digit110 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit110 rho) := by
    rw [hdigit]
    cases bits[28]! <;> cases bits[27]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted110 rho) (digit110 rho) (acc111 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2700) (rho 2701) (rho 2703 + rho 2704) ((1 : F) + rho 2706 + rho 2707)
      (rho 2708) (rho 2709) (rho 2710) (rho 2711) (rho 2712) (rho 2713)
      (by simpa [shifted110] using hshift2On)
      (by simpa [digit110] using hdigitOn)
      (by linear_combination r2705)
      (by linear_combination r2706)
      (by linear_combination r2707)
      (by linear_combination r2708)
      (by linear_combination r2709)
      (by linear_combination r2710)
    simpa [shifted110, digit110, acc111] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc111 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted110 rho) (digit110 rho) (acc111 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted110 rho) (digit110 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 29) (rho 28)
      (base rho) (twice rho) (triple rho) (acc110 rho)
      (acc111 rho) :=
    ⟨shiftOnce110 rho, shifted110 rho, digit110 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window111 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc111 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[26]! (scalarBits rho)[25]!
        (base rho) (twice rho) (triple rho) (acc111 rho)
        (acc112 rho) ∧
      EdwardsBridge.onCurve (acc112 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, p34, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, r2726, r2727, r2728, r2729, r2730, r2731, r2732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2711 at r2711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2712 at r2712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2713 at r2713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2714 at r2714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2715 at r2715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2716 at r2716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2717 at r2717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2718 at r2718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2719 at r2719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2720 at r2720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2721 at r2721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2722 at r2722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2723 at r2723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2724 at r2724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2725 at r2725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2726 at r2726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2727 at r2727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2728 at r2728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2729 at r2729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2730 at r2730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2731 at r2731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2732 at r2732
  have hshift1 : EdwardsBridge.doubleSpec (acc111 rho) (shiftOnce111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2712) (rho 2713) (rho 2714) (rho 2715) (rho 2716) (rho 2717) (rho 2718)
      (by simpa [acc111] using hacc)
      (by linear_combination r2711)
      (by linear_combination r2712)
      (by linear_combination r2713)
      (by linear_combination r2714)
      (by linear_combination r2715)
    simpa [acc111, shiftOnce111] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc111 rho) (shiftOnce111 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc111 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce111 rho) (shifted111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2717) (rho 2718) (rho 2719) (rho 2720) (rho 2721) (rho 2722) (rho 2723)
      (by simpa [shiftOnce111] using hshift1On)
      (by linear_combination r2716)
      (by linear_combination r2717)
      (by linear_combination r2718)
      (by linear_combination r2719)
      (by linear_combination r2720)
    simpa [shiftOnce111, shifted111] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce111 rho) (shifted111 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce111 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 27) (rho 26)
      (base rho) (twice rho) (triple rho) (digit111 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 27) (rho 26)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2725 + rho 2726, (1 : F) + rho 2728 + rho 2729⟩ := by
      constructor
      · refine ⟨(rho 2724 + (rho 258) - (0)), rho 2725, ?_, ?_, ?_⟩
        · linear_combination r2721 - (rho 26) * order_cast_zero
        · linear_combination r2722
        · linear_combination r2723
      · refine ⟨(rho 2727 + (rho 259) - ((1 : F))), rho 2728, ?_, ?_, ?_⟩
        · linear_combination r2724 - (rho 26) * order_cast_zero
        · linear_combination r2725
        · linear_combination r2726
    simpa [base, twice, triple, digit111] using hraw
  have hhigh : rho 27 =
      Bool.toZMod bits[26]! := by
    simpa only using rho_bit_of_map rho bits hbits 26 (by decide +kernel)
  have hlow : rho 26 =
      Bool.toZMod bits[25]! := by
    simpa only using rho_bit_of_map rho bits hbits 25 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[26]! bits[25]! (base rho) (twice rho) (triple rho)
    (digit111 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit111 rho) := by
    rw [hdigit]
    cases bits[26]! <;> cases bits[25]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted111 rho) (digit111 rho) (acc112 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2722) (rho 2723) (rho 2725 + rho 2726) ((1 : F) + rho 2728 + rho 2729)
      (rho 2730) (rho 2731) (rho 2732) (rho 2733) (rho 2734) (rho 2735)
      (by simpa [shifted111] using hshift2On)
      (by simpa [digit111] using hdigitOn)
      (by linear_combination r2727)
      (by linear_combination r2728)
      (by linear_combination r2729)
      (by linear_combination r2730)
      (by linear_combination r2731)
      (by linear_combination r2732)
    simpa [shifted111, digit111, acc112] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc112 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted111 rho) (digit111 rho) (acc112 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted111 rho) (digit111 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 27) (rho 26)
      (base rho) (twice rho) (triple rho) (acc111 rho)
      (acc112 rho) :=
    ⟨shiftOnce111 rho, shifted111 rho, digit111 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window112 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc112 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[24]! (scalarBits rho)[23]!
        (base rho) (twice rho) (triple rho) (acc112 rho)
        (acc113 rho) ∧
      EdwardsBridge.onCurve (acc113 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2733, r2734, r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, r2750, r2751, r2752, r2753, r2754, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2733 at r2733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2734 at r2734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2735 at r2735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2736 at r2736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2737 at r2737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2738 at r2738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2739 at r2739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2740 at r2740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2741 at r2741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2742 at r2742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2743 at r2743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2744 at r2744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2745 at r2745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2746 at r2746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2747 at r2747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2748 at r2748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2749 at r2749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2750 at r2750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2751 at r2751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2752 at r2752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2753 at r2753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2754 at r2754
  have hshift1 : EdwardsBridge.doubleSpec (acc112 rho) (shiftOnce112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2734) (rho 2735) (rho 2736) (rho 2737) (rho 2738) (rho 2739) (rho 2740)
      (by simpa [acc112] using hacc)
      (by linear_combination r2733)
      (by linear_combination r2734)
      (by linear_combination r2735)
      (by linear_combination r2736)
      (by linear_combination r2737)
    simpa [acc112, shiftOnce112] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc112 rho) (shiftOnce112 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc112 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce112 rho) (shifted112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2739) (rho 2740) (rho 2741) (rho 2742) (rho 2743) (rho 2744) (rho 2745)
      (by simpa [shiftOnce112] using hshift1On)
      (by linear_combination r2738)
      (by linear_combination r2739)
      (by linear_combination r2740)
      (by linear_combination r2741)
      (by linear_combination r2742)
    simpa [shiftOnce112, shifted112] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce112 rho) (shifted112 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce112 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 25) (rho 24)
      (base rho) (twice rho) (triple rho) (digit112 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 25) (rho 24)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2747 + rho 2748, (1 : F) + rho 2750 + rho 2751⟩ := by
      constructor
      · refine ⟨(rho 2746 + (rho 258) - (0)), rho 2747, ?_, ?_, ?_⟩
        · linear_combination r2743 - (rho 24) * order_cast_zero
        · linear_combination r2744
        · linear_combination r2745
      · refine ⟨(rho 2749 + (rho 259) - ((1 : F))), rho 2750, ?_, ?_, ?_⟩
        · linear_combination r2746 - (rho 24) * order_cast_zero
        · linear_combination r2747
        · linear_combination r2748
    simpa [base, twice, triple, digit112] using hraw
  have hhigh : rho 25 =
      Bool.toZMod bits[24]! := by
    simpa only using rho_bit_of_map rho bits hbits 24 (by decide +kernel)
  have hlow : rho 24 =
      Bool.toZMod bits[23]! := by
    simpa only using rho_bit_of_map rho bits hbits 23 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[24]! bits[23]! (base rho) (twice rho) (triple rho)
    (digit112 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit112 rho) := by
    rw [hdigit]
    cases bits[24]! <;> cases bits[23]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted112 rho) (digit112 rho) (acc113 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2744) (rho 2745) (rho 2747 + rho 2748) ((1 : F) + rho 2750 + rho 2751)
      (rho 2752) (rho 2753) (rho 2754) (rho 2755) (rho 2756) (rho 2757)
      (by simpa [shifted112] using hshift2On)
      (by simpa [digit112] using hdigitOn)
      (by linear_combination r2749)
      (by linear_combination r2750)
      (by linear_combination r2751)
      (by linear_combination r2752)
      (by linear_combination r2753)
      (by linear_combination r2754)
    simpa [shifted112, digit112, acc113] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc113 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted112 rho) (digit112 rho) (acc113 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted112 rho) (digit112 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 25) (rho 24)
      (base rho) (twice rho) (triple rho) (acc112 rho)
      (acc113 rho) :=
    ⟨shiftOnce112 rho, shifted112 rho, digit112 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window113 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc113 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[22]! (scalarBits rho)[21]!
        (base rho) (twice rho) (triple rho) (acc113 rho)
        (acc114 rho) ∧
      EdwardsBridge.onCurve (acc114 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2755, r2756, r2757, r2758, r2759, r2760, r2761, r2762, r2763, r2764, r2765, r2766, r2767, r2768, r2769, r2770, r2771, r2772, r2773, r2774, r2775, r2776, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2755 at r2755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2756 at r2756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2757 at r2757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2758 at r2758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2759 at r2759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2760 at r2760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2761 at r2761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2762 at r2762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2763 at r2763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2764 at r2764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2765 at r2765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2766 at r2766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2767 at r2767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2768 at r2768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2769 at r2769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2770 at r2770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2771 at r2771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2772 at r2772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2773 at r2773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2774 at r2774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2775 at r2775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2776 at r2776
  have hshift1 : EdwardsBridge.doubleSpec (acc113 rho) (shiftOnce113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2756) (rho 2757) (rho 2758) (rho 2759) (rho 2760) (rho 2761) (rho 2762)
      (by simpa [acc113] using hacc)
      (by linear_combination r2755)
      (by linear_combination r2756)
      (by linear_combination r2757)
      (by linear_combination r2758)
      (by linear_combination r2759)
    simpa [acc113, shiftOnce113] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc113 rho) (shiftOnce113 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc113 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce113 rho) (shifted113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2761) (rho 2762) (rho 2763) (rho 2764) (rho 2765) (rho 2766) (rho 2767)
      (by simpa [shiftOnce113] using hshift1On)
      (by linear_combination r2760)
      (by linear_combination r2761)
      (by linear_combination r2762)
      (by linear_combination r2763)
      (by linear_combination r2764)
    simpa [shiftOnce113, shifted113] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce113 rho) (shifted113 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce113 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 23) (rho 22)
      (base rho) (twice rho) (triple rho) (digit113 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 23) (rho 22)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2769 + rho 2770, (1 : F) + rho 2772 + rho 2773⟩ := by
      constructor
      · refine ⟨(rho 2768 + (rho 258) - (0)), rho 2769, ?_, ?_, ?_⟩
        · linear_combination r2765 - (rho 22) * order_cast_zero
        · linear_combination r2766
        · linear_combination r2767
      · refine ⟨(rho 2771 + (rho 259) - ((1 : F))), rho 2772, ?_, ?_, ?_⟩
        · linear_combination r2768 - (rho 22) * order_cast_zero
        · linear_combination r2769
        · linear_combination r2770
    simpa [base, twice, triple, digit113] using hraw
  have hhigh : rho 23 =
      Bool.toZMod bits[22]! := by
    simpa only using rho_bit_of_map rho bits hbits 22 (by decide +kernel)
  have hlow : rho 22 =
      Bool.toZMod bits[21]! := by
    simpa only using rho_bit_of_map rho bits hbits 21 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[22]! bits[21]! (base rho) (twice rho) (triple rho)
    (digit113 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit113 rho) := by
    rw [hdigit]
    cases bits[22]! <;> cases bits[21]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted113 rho) (digit113 rho) (acc114 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2766) (rho 2767) (rho 2769 + rho 2770) ((1 : F) + rho 2772 + rho 2773)
      (rho 2774) (rho 2775) (rho 2776) (rho 2777) (rho 2778) (rho 2779)
      (by simpa [shifted113] using hshift2On)
      (by simpa [digit113] using hdigitOn)
      (by linear_combination r2771)
      (by linear_combination r2772)
      (by linear_combination r2773)
      (by linear_combination r2774)
      (by linear_combination r2775)
      (by linear_combination r2776)
    simpa [shifted113, digit113, acc114] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc114 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted113 rho) (digit113 rho) (acc114 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted113 rho) (digit113 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 23) (rho 22)
      (base rho) (twice rho) (triple rho) (acc113 rho)
      (acc114 rho) :=
    ⟨shiftOnce113 rho, shifted113 rho, digit113 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
