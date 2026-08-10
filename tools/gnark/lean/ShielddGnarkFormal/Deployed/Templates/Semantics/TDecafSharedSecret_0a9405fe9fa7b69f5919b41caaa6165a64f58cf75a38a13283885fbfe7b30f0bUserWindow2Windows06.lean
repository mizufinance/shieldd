import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window36 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc36 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[176]! (scalarBits rho)[175]!
        (base rho) (twice rho) (triple rho) (acc36 rho)
        (acc37 rho) ∧
      EdwardsBridge.onCurve (acc37 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630, r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2618 at r2618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2619 at r2619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2620 at r2620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2621 at r2621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2622 at r2622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2623 at r2623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2624 at r2624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2625 at r2625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2626 at r2626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2627 at r2627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2628 at r2628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2629 at r2629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2630 at r2630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2631 at r2631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2632 at r2632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2633 at r2633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2634 at r2634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2635 at r2635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2636 at r2636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2637 at r2637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2638 at r2638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2639 at r2639
  have hshift1 : EdwardsBridge.doubleSpec (acc36 rho) (shiftOnce36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2622) (rho 2623) (rho 2624) (rho 2625) (rho 2626) (rho 2627) (rho 2628)
      (by simpa [acc36] using hacc)
      (by linear_combination r2618)
      (by linear_combination r2619)
      (by linear_combination r2620)
      (by linear_combination r2621)
      (by linear_combination r2622)
    simpa [acc36, shiftOnce36] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc36 rho) (shiftOnce36 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc36 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce36 rho) (shifted36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2627) (rho 2628) (rho 2629) (rho 2630) (rho 2631) (rho 2632) (rho 2633)
      (by simpa [shiftOnce36] using hshift1On)
      (by linear_combination r2623)
      (by linear_combination r2624)
      (by linear_combination r2625)
      (by linear_combination r2626)
      (by linear_combination r2627)
    simpa [shiftOnce36, shifted36] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce36 rho) (shifted36 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce36 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 178) (rho 177)
      (base rho) (twice rho) (triple rho) (digit36 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 178) (rho 177)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2635 + rho 2636, (1 : F) + rho 2638 + rho 2639⟩ := by
      constructor
      · refine ⟨(rho 2634 + (rho 1818) - (0)), rho 2635, ?_, ?_, ?_⟩
        · linear_combination r2628
        · linear_combination r2629
        · linear_combination r2630
      · refine ⟨(rho 2637 + (rho 1819) - ((1 : F))), rho 2638, ?_, ?_, ?_⟩
        · linear_combination r2631
        · linear_combination r2632
        · linear_combination r2633
    simpa [base, twice, triple, digit36] using hraw
  have hhigh : rho 178 =
      Bool.toZMod bits[176]! := by
    simpa only using rho_bit_of_map rho bits hbits 176 (by decide +kernel)
  have hlow : rho 177 =
      Bool.toZMod bits[175]! := by
    simpa only using rho_bit_of_map rho bits hbits 175 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[176]! bits[175]! (base rho) (twice rho) (triple rho)
    (digit36 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit36 rho) := by
    rw [hdigit]
    cases bits[176]! <;> cases bits[175]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted36 rho) (digit36 rho) (acc37 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2632) (rho 2633) (rho 2635 + rho 2636) ((1 : F) + rho 2638 + rho 2639)
      (rho 2640) (rho 2641) (rho 2642) (rho 2643) (rho 2644) (rho 2645)
      (by simpa [shifted36] using hshift2On)
      (by simpa [digit36] using hdigitOn)
      (by linear_combination r2634)
      (by linear_combination r2635)
      (by linear_combination r2636)
      (by linear_combination r2637)
      (by linear_combination r2638)
      (by linear_combination r2639)
    simpa [shifted36, digit36, acc37] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc37 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted36 rho) (digit36 rho) (acc37 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted36 rho) (digit36 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 178) (rho 177)
      (base rho) (twice rho) (triple rho) (acc36 rho)
      (acc37 rho) :=
    ⟨shiftOnce36 rho, shifted36 rho, digit36 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window37 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc37 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[174]! (scalarBits rho)[173]!
        (base rho) (twice rho) (triple rho) (acc37 rho)
        (acc38 rho) ∧
      EdwardsBridge.onCurve (acc38 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, r2643, r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656, r2657, r2658, r2659, r2660, r2661, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2640 at r2640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2641 at r2641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2642 at r2642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2643 at r2643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2644 at r2644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2645 at r2645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2646 at r2646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2647 at r2647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2648 at r2648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2649 at r2649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2650 at r2650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2651 at r2651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2652 at r2652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2653 at r2653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2654 at r2654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2655 at r2655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2656 at r2656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2657 at r2657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2658 at r2658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2659 at r2659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2660 at r2660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2661 at r2661
  have hshift1 : EdwardsBridge.doubleSpec (acc37 rho) (shiftOnce37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2644) (rho 2645) (rho 2646) (rho 2647) (rho 2648) (rho 2649) (rho 2650)
      (by simpa [acc37] using hacc)
      (by linear_combination r2640)
      (by linear_combination r2641)
      (by linear_combination r2642)
      (by linear_combination r2643)
      (by linear_combination r2644)
    simpa [acc37, shiftOnce37] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc37 rho) (shiftOnce37 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc37 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce37 rho) (shifted37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2649) (rho 2650) (rho 2651) (rho 2652) (rho 2653) (rho 2654) (rho 2655)
      (by simpa [shiftOnce37] using hshift1On)
      (by linear_combination r2645)
      (by linear_combination r2646)
      (by linear_combination r2647)
      (by linear_combination r2648)
      (by linear_combination r2649)
    simpa [shiftOnce37, shifted37] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce37 rho) (shifted37 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce37 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 176) (rho 175)
      (base rho) (twice rho) (triple rho) (digit37 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 176) (rho 175)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2657 + rho 2658, (1 : F) + rho 2660 + rho 2661⟩ := by
      constructor
      · refine ⟨(rho 2656 + (rho 1818) - (0)), rho 2657, ?_, ?_, ?_⟩
        · linear_combination r2650
        · linear_combination r2651
        · linear_combination r2652
      · refine ⟨(rho 2659 + (rho 1819) - ((1 : F))), rho 2660, ?_, ?_, ?_⟩
        · linear_combination r2653
        · linear_combination r2654
        · linear_combination r2655
    simpa [base, twice, triple, digit37] using hraw
  have hhigh : rho 176 =
      Bool.toZMod bits[174]! := by
    simpa only using rho_bit_of_map rho bits hbits 174 (by decide +kernel)
  have hlow : rho 175 =
      Bool.toZMod bits[173]! := by
    simpa only using rho_bit_of_map rho bits hbits 173 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[174]! bits[173]! (base rho) (twice rho) (triple rho)
    (digit37 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit37 rho) := by
    rw [hdigit]
    cases bits[174]! <;> cases bits[173]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted37 rho) (digit37 rho) (acc38 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2654) (rho 2655) (rho 2657 + rho 2658) ((1 : F) + rho 2660 + rho 2661)
      (rho 2662) (rho 2663) (rho 2664) (rho 2665) (rho 2666) (rho 2667)
      (by simpa [shifted37] using hshift2On)
      (by simpa [digit37] using hdigitOn)
      (by linear_combination r2656)
      (by linear_combination r2657)
      (by linear_combination r2658)
      (by linear_combination r2659)
      (by linear_combination r2660)
      (by linear_combination r2661)
    simpa [shifted37, digit37, acc38] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc38 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted37 rho) (digit37 rho) (acc38 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted37 rho) (digit37 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 176) (rho 175)
      (base rho) (twice rho) (triple rho) (acc37 rho)
      (acc38 rho) :=
    ⟨shiftOnce37 rho, shifted37 rho, digit37 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window38 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc38 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[172]! (scalarBits rho)[171]!
        (base rho) (twice rho) (triple rho) (acc38 rho)
        (acc39 rho) ∧
      EdwardsBridge.onCurve (acc39 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669, r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682, r2683, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2662 at r2662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2663 at r2663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2664 at r2664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2665 at r2665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2666 at r2666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2667 at r2667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2668 at r2668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2669 at r2669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2670 at r2670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2671 at r2671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2672 at r2672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2673 at r2673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2674 at r2674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2675 at r2675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2676 at r2676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2677 at r2677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2678 at r2678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2679 at r2679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2680 at r2680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2681 at r2681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2682 at r2682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2683 at r2683
  have hshift1 : EdwardsBridge.doubleSpec (acc38 rho) (shiftOnce38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2666) (rho 2667) (rho 2668) (rho 2669) (rho 2670) (rho 2671) (rho 2672)
      (by simpa [acc38] using hacc)
      (by linear_combination r2662)
      (by linear_combination r2663)
      (by linear_combination r2664)
      (by linear_combination r2665)
      (by linear_combination r2666)
    simpa [acc38, shiftOnce38] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc38 rho) (shiftOnce38 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc38 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce38 rho) (shifted38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2671) (rho 2672) (rho 2673) (rho 2674) (rho 2675) (rho 2676) (rho 2677)
      (by simpa [shiftOnce38] using hshift1On)
      (by linear_combination r2667)
      (by linear_combination r2668)
      (by linear_combination r2669)
      (by linear_combination r2670)
      (by linear_combination r2671)
    simpa [shiftOnce38, shifted38] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce38 rho) (shifted38 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce38 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 174) (rho 173)
      (base rho) (twice rho) (triple rho) (digit38 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 174) (rho 173)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2679 + rho 2680, (1 : F) + rho 2682 + rho 2683⟩ := by
      constructor
      · refine ⟨(rho 2678 + (rho 1818) - (0)), rho 2679, ?_, ?_, ?_⟩
        · linear_combination r2672
        · linear_combination r2673
        · linear_combination r2674
      · refine ⟨(rho 2681 + (rho 1819) - ((1 : F))), rho 2682, ?_, ?_, ?_⟩
        · linear_combination r2675
        · linear_combination r2676
        · linear_combination r2677
    simpa [base, twice, triple, digit38] using hraw
  have hhigh : rho 174 =
      Bool.toZMod bits[172]! := by
    simpa only using rho_bit_of_map rho bits hbits 172 (by decide +kernel)
  have hlow : rho 173 =
      Bool.toZMod bits[171]! := by
    simpa only using rho_bit_of_map rho bits hbits 171 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[172]! bits[171]! (base rho) (twice rho) (triple rho)
    (digit38 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit38 rho) := by
    rw [hdigit]
    cases bits[172]! <;> cases bits[171]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted38 rho) (digit38 rho) (acc39 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2676) (rho 2677) (rho 2679 + rho 2680) ((1 : F) + rho 2682 + rho 2683)
      (rho 2684) (rho 2685) (rho 2686) (rho 2687) (rho 2688) (rho 2689)
      (by simpa [shifted38] using hshift2On)
      (by simpa [digit38] using hdigitOn)
      (by linear_combination r2678)
      (by linear_combination r2679)
      (by linear_combination r2680)
      (by linear_combination r2681)
      (by linear_combination r2682)
      (by linear_combination r2683)
    simpa [shifted38, digit38, acc39] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc39 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted38 rho) (digit38 rho) (acc39 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted38 rho) (digit38 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 174) (rho 173)
      (base rho) (twice rho) (triple rho) (acc38 rho)
      (acc39 rho) :=
    ⟨shiftOnce38 rho, shifted38 rho, digit38 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window39 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc39 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[170]! (scalarBits rho)[169]!
        (base rho) (twice rho) (triple rho) (acc39 rho)
        (acc40 rho) ∧
      EdwardsBridge.onCurve (acc40 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, r2692, r2693, r2694, r2695, r2696, r2697, r2698, r2699, r2700, r2701, r2702, r2703, r2704, r2705, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2684 at r2684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2685 at r2685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2686 at r2686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2687 at r2687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2688 at r2688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2689 at r2689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2690 at r2690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2691 at r2691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2692 at r2692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2693 at r2693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2694 at r2694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2695 at r2695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2696 at r2696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2697 at r2697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2698 at r2698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2699 at r2699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2700 at r2700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2701 at r2701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2702 at r2702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2703 at r2703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2704 at r2704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2705 at r2705
  have hshift1 : EdwardsBridge.doubleSpec (acc39 rho) (shiftOnce39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2688) (rho 2689) (rho 2690) (rho 2691) (rho 2692) (rho 2693) (rho 2694)
      (by simpa [acc39] using hacc)
      (by linear_combination r2684)
      (by linear_combination r2685)
      (by linear_combination r2686)
      (by linear_combination r2687)
      (by linear_combination r2688)
    simpa [acc39, shiftOnce39] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc39 rho) (shiftOnce39 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc39 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce39 rho) (shifted39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2693) (rho 2694) (rho 2695) (rho 2696) (rho 2697) (rho 2698) (rho 2699)
      (by simpa [shiftOnce39] using hshift1On)
      (by linear_combination r2689)
      (by linear_combination r2690)
      (by linear_combination r2691)
      (by linear_combination r2692)
      (by linear_combination r2693)
    simpa [shiftOnce39, shifted39] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce39 rho) (shifted39 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce39 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 172) (rho 171)
      (base rho) (twice rho) (triple rho) (digit39 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 172) (rho 171)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2701 + rho 2702, (1 : F) + rho 2704 + rho 2705⟩ := by
      constructor
      · refine ⟨(rho 2700 + (rho 1818) - (0)), rho 2701, ?_, ?_, ?_⟩
        · linear_combination r2694
        · linear_combination r2695
        · linear_combination r2696
      · refine ⟨(rho 2703 + (rho 1819) - ((1 : F))), rho 2704, ?_, ?_, ?_⟩
        · linear_combination r2697
        · linear_combination r2698
        · linear_combination r2699
    simpa [base, twice, triple, digit39] using hraw
  have hhigh : rho 172 =
      Bool.toZMod bits[170]! := by
    simpa only using rho_bit_of_map rho bits hbits 170 (by decide +kernel)
  have hlow : rho 171 =
      Bool.toZMod bits[169]! := by
    simpa only using rho_bit_of_map rho bits hbits 169 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[170]! bits[169]! (base rho) (twice rho) (triple rho)
    (digit39 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit39 rho) := by
    rw [hdigit]
    cases bits[170]! <;> cases bits[169]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted39 rho) (digit39 rho) (acc40 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2698) (rho 2699) (rho 2701 + rho 2702) ((1 : F) + rho 2704 + rho 2705)
      (rho 2706) (rho 2707) (rho 2708) (rho 2709) (rho 2710) (rho 2711)
      (by simpa [shifted39] using hshift2On)
      (by simpa [digit39] using hdigitOn)
      (by linear_combination r2700)
      (by linear_combination r2701)
      (by linear_combination r2702)
      (by linear_combination r2703)
      (by linear_combination r2704)
      (by linear_combination r2705)
    simpa [shifted39, digit39, acc40] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc40 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted39 rho) (digit39 rho) (acc40 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted39 rho) (digit39 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 172) (rho 171)
      (base rho) (twice rho) (triple rho) (acc39 rho)
      (acc40 rho) :=
    ⟨shiftOnce39 rho, shifted39 rho, digit39 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window40 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc40 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[168]! (scalarBits rho)[167]!
        (base rho) (twice rho) (triple rho) (acc40 rho)
        (acc41 rho) ∧
      EdwardsBridge.onCurve (acc41 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2706, r2707, r2708, r2709, r2710, r2711, r2712, r2713, r2714, r2715, r2716, r2717, r2718, r2719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart34 at p34
  rcases p34 with ⟨r2720, r2721, r2722, r2723, r2724, r2725, r2726, r2727, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2706 at r2706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2707 at r2707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2708 at r2708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2709 at r2709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2710 at r2710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2711 at r2711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2712 at r2712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2713 at r2713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2714 at r2714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2715 at r2715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2716 at r2716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2717 at r2717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2718 at r2718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2719 at r2719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2720 at r2720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2721 at r2721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2722 at r2722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2723 at r2723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2724 at r2724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2725 at r2725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2726 at r2726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2727 at r2727
  have hshift1 : EdwardsBridge.doubleSpec (acc40 rho) (shiftOnce40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2710) (rho 2711) (rho 2712) (rho 2713) (rho 2714) (rho 2715) (rho 2716)
      (by simpa [acc40] using hacc)
      (by linear_combination r2706)
      (by linear_combination r2707)
      (by linear_combination r2708)
      (by linear_combination r2709)
      (by linear_combination r2710)
    simpa [acc40, shiftOnce40] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc40 rho) (shiftOnce40 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc40 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce40 rho) (shifted40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2715) (rho 2716) (rho 2717) (rho 2718) (rho 2719) (rho 2720) (rho 2721)
      (by simpa [shiftOnce40] using hshift1On)
      (by linear_combination r2711)
      (by linear_combination r2712)
      (by linear_combination r2713)
      (by linear_combination r2714)
      (by linear_combination r2715)
    simpa [shiftOnce40, shifted40] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce40 rho) (shifted40 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce40 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 170) (rho 169)
      (base rho) (twice rho) (triple rho) (digit40 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 170) (rho 169)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2723 + rho 2724, (1 : F) + rho 2726 + rho 2727⟩ := by
      constructor
      · refine ⟨(rho 2722 + (rho 1818) - (0)), rho 2723, ?_, ?_, ?_⟩
        · linear_combination r2716
        · linear_combination r2717
        · linear_combination r2718
      · refine ⟨(rho 2725 + (rho 1819) - ((1 : F))), rho 2726, ?_, ?_, ?_⟩
        · linear_combination r2719
        · linear_combination r2720
        · linear_combination r2721
    simpa [base, twice, triple, digit40] using hraw
  have hhigh : rho 170 =
      Bool.toZMod bits[168]! := by
    simpa only using rho_bit_of_map rho bits hbits 168 (by decide +kernel)
  have hlow : rho 169 =
      Bool.toZMod bits[167]! := by
    simpa only using rho_bit_of_map rho bits hbits 167 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[168]! bits[167]! (base rho) (twice rho) (triple rho)
    (digit40 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit40 rho) := by
    rw [hdigit]
    cases bits[168]! <;> cases bits[167]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted40 rho) (digit40 rho) (acc41 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2720) (rho 2721) (rho 2723 + rho 2724) ((1 : F) + rho 2726 + rho 2727)
      (rho 2728) (rho 2729) (rho 2730) (rho 2731) (rho 2732) (rho 2733)
      (by simpa [shifted40] using hshift2On)
      (by simpa [digit40] using hdigitOn)
      (by linear_combination r2722)
      (by linear_combination r2723)
      (by linear_combination r2724)
      (by linear_combination r2725)
      (by linear_combination r2726)
      (by linear_combination r2727)
    simpa [shifted40, digit40, acc41] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc41 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted40 rho) (digit40 rho) (acc41 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted40 rho) (digit40 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 170) (rho 169)
      (base rho) (twice rho) (triple rho) (acc40 rho)
      (acc41 rho) :=
    ⟨shiftOnce40 rho, shifted40 rho, digit40 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window41 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc41 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[166]! (scalarBits rho)[165]!
        (base rho) (twice rho) (triple rho) (acc41 rho)
        (acc42 rho) ∧
      EdwardsBridge.onCurve (acc42 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p34, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart34 at p34
  rcases p34 with ⟨_, _, _, _, _, _, _, _, r2728, r2729, r2730, r2731, r2732, r2733, r2734, r2735, r2736, r2737, r2738, r2739, r2740, r2741, r2742, r2743, r2744, r2745, r2746, r2747, r2748, r2749, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2728 at r2728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2729 at r2729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2730 at r2730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2731 at r2731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2732 at r2732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2733 at r2733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2734 at r2734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2735 at r2735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2736 at r2736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2737 at r2737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2738 at r2738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2739 at r2739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2740 at r2740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2741 at r2741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2742 at r2742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2743 at r2743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2744 at r2744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2745 at r2745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2746 at r2746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2747 at r2747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2748 at r2748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2749 at r2749
  have hshift1 : EdwardsBridge.doubleSpec (acc41 rho) (shiftOnce41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2732) (rho 2733) (rho 2734) (rho 2735) (rho 2736) (rho 2737) (rho 2738)
      (by simpa [acc41] using hacc)
      (by linear_combination r2728)
      (by linear_combination r2729)
      (by linear_combination r2730)
      (by linear_combination r2731)
      (by linear_combination r2732)
    simpa [acc41, shiftOnce41] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc41 rho) (shiftOnce41 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc41 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce41 rho) (shifted41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2737) (rho 2738) (rho 2739) (rho 2740) (rho 2741) (rho 2742) (rho 2743)
      (by simpa [shiftOnce41] using hshift1On)
      (by linear_combination r2733)
      (by linear_combination r2734)
      (by linear_combination r2735)
      (by linear_combination r2736)
      (by linear_combination r2737)
    simpa [shiftOnce41, shifted41] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce41 rho) (shifted41 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce41 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 168) (rho 167)
      (base rho) (twice rho) (triple rho) (digit41 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 168) (rho 167)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2745 + rho 2746, (1 : F) + rho 2748 + rho 2749⟩ := by
      constructor
      · refine ⟨(rho 2744 + (rho 1818) - (0)), rho 2745, ?_, ?_, ?_⟩
        · linear_combination r2738
        · linear_combination r2739
        · linear_combination r2740
      · refine ⟨(rho 2747 + (rho 1819) - ((1 : F))), rho 2748, ?_, ?_, ?_⟩
        · linear_combination r2741
        · linear_combination r2742
        · linear_combination r2743
    simpa [base, twice, triple, digit41] using hraw
  have hhigh : rho 168 =
      Bool.toZMod bits[166]! := by
    simpa only using rho_bit_of_map rho bits hbits 166 (by decide +kernel)
  have hlow : rho 167 =
      Bool.toZMod bits[165]! := by
    simpa only using rho_bit_of_map rho bits hbits 165 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[166]! bits[165]! (base rho) (twice rho) (triple rho)
    (digit41 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit41 rho) := by
    rw [hdigit]
    cases bits[166]! <;> cases bits[165]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted41 rho) (digit41 rho) (acc42 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2742) (rho 2743) (rho 2745 + rho 2746) ((1 : F) + rho 2748 + rho 2749)
      (rho 2750) (rho 2751) (rho 2752) (rho 2753) (rho 2754) (rho 2755)
      (by simpa [shifted41] using hshift2On)
      (by simpa [digit41] using hdigitOn)
      (by linear_combination r2744)
      (by linear_combination r2745)
      (by linear_combination r2746)
      (by linear_combination r2747)
      (by linear_combination r2748)
      (by linear_combination r2749)
    simpa [shifted41, digit41, acc42] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc42 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted41 rho) (digit41 rho) (acc42 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted41 rho) (digit41 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 168) (rho 167)
      (base rho) (twice rho) (triple rho) (acc41 rho)
      (acc42 rho) :=
    ⟨shiftOnce41 rho, shifted41 rho, digit41 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
