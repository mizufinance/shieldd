import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window90 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p82, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart82 at p82
  rcases p82 with ⟨_, _, _, r6563, r6564, r6565, r6566, r6567, r6568, r6569, r6570, r6571, r6572, r6573, r6574, r6575, r6576, r6577, r6578, r6579, r6580, r6581, r6582, r6583, r6584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6563 at r6563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6564 at r6564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6565 at r6565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6566 at r6566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6567 at r6567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6568 at r6568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6569 at r6569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6570 at r6570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6571 at r6571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6572 at r6572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6573 at r6573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6574 at r6574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6575 at r6575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6576 at r6576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6577 at r6577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6578 at r6578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6579 at r6579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6580 at r6580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6581 at r6581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6582 at r6582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6583 at r6583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6584 at r6584
  have hshift1 : EdwardsBridge.doubleSpec (acc90 rho) (shiftOnce90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6569) (rho 6570) (rho 6571) (rho 6572) (rho 6573) (rho 6574) (rho 6575)
      (by simpa [acc90] using hacc)
      (by linear_combination r6563)
      (by linear_combination r6564)
      (by linear_combination r6565)
      (by linear_combination r6566)
      (by linear_combination r6567)
    simpa [acc90, shiftOnce90] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc90 rho) (shiftOnce90 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc90 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce90 rho) (shifted90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6574) (rho 6575) (rho 6576) (rho 6577) (rho 6578) (rho 6579) (rho 6580)
      (by simpa [shiftOnce90] using hshift1On)
      (by linear_combination r6568)
      (by linear_combination r6569)
      (by linear_combination r6570)
      (by linear_combination r6571)
      (by linear_combination r6572)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6582 + rho 6583, (1 : F) + rho 6585 + rho 6586⟩ := by
      constructor
      · refine ⟨(rho 6581 + (rho 4577) - (0)), rho 6582, ?_, ?_, ?_⟩
        · linear_combination r6573 - (rho 68) * order_cast_zero
        · linear_combination r6574
        · linear_combination r6575
      · refine ⟨(rho 6584 + (rho 4578) - ((1 : F))), rho 6585, ?_, ?_, ?_⟩
        · linear_combination r6576 - (rho 68) * order_cast_zero
        · linear_combination r6577
        · linear_combination r6578
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
      (rho 6579) (rho 6580) (rho 6582 + rho 6583) ((1 : F) + rho 6585 + rho 6586)
      (rho 6587) (rho 6588) (rho 6589) (rho 6590) (rho 6591) (rho 6592)
      (by simpa [shifted90] using hshift2On)
      (by simpa [digit90] using hdigitOn)
      (by linear_combination r6579)
      (by linear_combination r6580)
      (by linear_combination r6581)
      (by linear_combination r6582)
      (by linear_combination r6583)
      (by linear_combination r6584)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p82, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart82 at p82
  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6585, r6586, r6587, r6588, r6589, r6590, r6591, r6592, r6593, r6594, r6595, r6596, r6597, r6598, r6599, r6600, r6601, r6602, r6603, r6604, r6605, r6606, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6585 at r6585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6586 at r6586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6587 at r6587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6588 at r6588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6589 at r6589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6590 at r6590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6591 at r6591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6592 at r6592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6593 at r6593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6594 at r6594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6595 at r6595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6596 at r6596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6597 at r6597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6598 at r6598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6599 at r6599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6600 at r6600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6601 at r6601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6602 at r6602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6603 at r6603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6604 at r6604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6605 at r6605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6606 at r6606
  have hshift1 : EdwardsBridge.doubleSpec (acc91 rho) (shiftOnce91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6591) (rho 6592) (rho 6593) (rho 6594) (rho 6595) (rho 6596) (rho 6597)
      (by simpa [acc91] using hacc)
      (by linear_combination r6585)
      (by linear_combination r6586)
      (by linear_combination r6587)
      (by linear_combination r6588)
      (by linear_combination r6589)
    simpa [acc91, shiftOnce91] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc91 rho) (shiftOnce91 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc91 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce91 rho) (shifted91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6596) (rho 6597) (rho 6598) (rho 6599) (rho 6600) (rho 6601) (rho 6602)
      (by simpa [shiftOnce91] using hshift1On)
      (by linear_combination r6590)
      (by linear_combination r6591)
      (by linear_combination r6592)
      (by linear_combination r6593)
      (by linear_combination r6594)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6604 + rho 6605, (1 : F) + rho 6607 + rho 6608⟩ := by
      constructor
      · refine ⟨(rho 6603 + (rho 4577) - (0)), rho 6604, ?_, ?_, ?_⟩
        · linear_combination r6595 - (rho 66) * order_cast_zero
        · linear_combination r6596
        · linear_combination r6597
      · refine ⟨(rho 6606 + (rho 4578) - ((1 : F))), rho 6607, ?_, ?_, ?_⟩
        · linear_combination r6598 - (rho 66) * order_cast_zero
        · linear_combination r6599
        · linear_combination r6600
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
      (rho 6601) (rho 6602) (rho 6604 + rho 6605) ((1 : F) + rho 6607 + rho 6608)
      (rho 6609) (rho 6610) (rho 6611) (rho 6612) (rho 6613) (rho 6614)
      (by simpa [shifted91] using hshift2On)
      (by simpa [digit91] using hdigitOn)
      (by linear_combination r6601)
      (by linear_combination r6602)
      (by linear_combination r6603)
      (by linear_combination r6604)
      (by linear_combination r6605)
      (by linear_combination r6606)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p82, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart82 at p82
  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6607, r6608, r6609, r6610, r6611, r6612, r6613, r6614, r6615, r6616, r6617, r6618, r6619, r6620, r6621, r6622, r6623, r6624, r6625, r6626, r6627, r6628, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6607 at r6607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6608 at r6608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6609 at r6609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6610 at r6610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6611 at r6611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6612 at r6612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6613 at r6613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6614 at r6614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6615 at r6615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6616 at r6616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6617 at r6617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6618 at r6618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6619 at r6619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6620 at r6620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6621 at r6621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6622 at r6622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6623 at r6623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6624 at r6624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6625 at r6625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6626 at r6626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6627 at r6627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6628 at r6628
  have hshift1 : EdwardsBridge.doubleSpec (acc92 rho) (shiftOnce92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6613) (rho 6614) (rho 6615) (rho 6616) (rho 6617) (rho 6618) (rho 6619)
      (by simpa [acc92] using hacc)
      (by linear_combination r6607)
      (by linear_combination r6608)
      (by linear_combination r6609)
      (by linear_combination r6610)
      (by linear_combination r6611)
    simpa [acc92, shiftOnce92] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc92 rho) (shiftOnce92 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc92 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce92 rho) (shifted92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6618) (rho 6619) (rho 6620) (rho 6621) (rho 6622) (rho 6623) (rho 6624)
      (by simpa [shiftOnce92] using hshift1On)
      (by linear_combination r6612)
      (by linear_combination r6613)
      (by linear_combination r6614)
      (by linear_combination r6615)
      (by linear_combination r6616)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6626 + rho 6627, (1 : F) + rho 6629 + rho 6630⟩ := by
      constructor
      · refine ⟨(rho 6625 + (rho 4577) - (0)), rho 6626, ?_, ?_, ?_⟩
        · linear_combination r6617 - (rho 64) * order_cast_zero
        · linear_combination r6618
        · linear_combination r6619
      · refine ⟨(rho 6628 + (rho 4578) - ((1 : F))), rho 6629, ?_, ?_, ?_⟩
        · linear_combination r6620 - (rho 64) * order_cast_zero
        · linear_combination r6621
        · linear_combination r6622
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
      (rho 6623) (rho 6624) (rho 6626 + rho 6627) ((1 : F) + rho 6629 + rho 6630)
      (rho 6631) (rho 6632) (rho 6633) (rho 6634) (rho 6635) (rho 6636)
      (by simpa [shifted92] using hshift2On)
      (by simpa [digit92] using hdigitOn)
      (by linear_combination r6623)
      (by linear_combination r6624)
      (by linear_combination r6625)
      (by linear_combination r6626)
      (by linear_combination r6627)
      (by linear_combination r6628)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p82, p83, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart82 at p82
  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6629, r6630, r6631, r6632, r6633, r6634, r6635, r6636, r6637, r6638, r6639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart83 at p83
  rcases p83 with ⟨r6640, r6641, r6642, r6643, r6644, r6645, r6646, r6647, r6648, r6649, r6650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6629 at r6629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6630 at r6630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6631 at r6631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6632 at r6632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6633 at r6633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6634 at r6634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6635 at r6635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6636 at r6636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6637 at r6637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6638 at r6638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6639 at r6639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6640 at r6640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6641 at r6641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6642 at r6642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6643 at r6643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6644 at r6644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6645 at r6645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6646 at r6646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6647 at r6647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6648 at r6648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6649 at r6649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6650 at r6650
  have hshift1 : EdwardsBridge.doubleSpec (acc93 rho) (shiftOnce93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6635) (rho 6636) (rho 6637) (rho 6638) (rho 6639) (rho 6640) (rho 6641)
      (by simpa [acc93] using hacc)
      (by linear_combination r6629)
      (by linear_combination r6630)
      (by linear_combination r6631)
      (by linear_combination r6632)
      (by linear_combination r6633)
    simpa [acc93, shiftOnce93] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc93 rho) (shiftOnce93 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc93 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce93 rho) (shifted93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6640) (rho 6641) (rho 6642) (rho 6643) (rho 6644) (rho 6645) (rho 6646)
      (by simpa [shiftOnce93] using hshift1On)
      (by linear_combination r6634)
      (by linear_combination r6635)
      (by linear_combination r6636)
      (by linear_combination r6637)
      (by linear_combination r6638)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6648 + rho 6649, (1 : F) + rho 6651 + rho 6652⟩ := by
      constructor
      · refine ⟨(rho 6647 + (rho 4577) - (0)), rho 6648, ?_, ?_, ?_⟩
        · linear_combination r6639 - (rho 62) * order_cast_zero
        · linear_combination r6640
        · linear_combination r6641
      · refine ⟨(rho 6650 + (rho 4578) - ((1 : F))), rho 6651, ?_, ?_, ?_⟩
        · linear_combination r6642 - (rho 62) * order_cast_zero
        · linear_combination r6643
        · linear_combination r6644
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
      (rho 6645) (rho 6646) (rho 6648 + rho 6649) ((1 : F) + rho 6651 + rho 6652)
      (rho 6653) (rho 6654) (rho 6655) (rho 6656) (rho 6657) (rho 6658)
      (by simpa [shifted93] using hshift2On)
      (by simpa [digit93] using hdigitOn)
      (by linear_combination r6645)
      (by linear_combination r6646)
      (by linear_combination r6647)
      (by linear_combination r6648)
      (by linear_combination r6649)
      (by linear_combination r6650)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p83, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart83 at p83
  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6651, r6652, r6653, r6654, r6655, r6656, r6657, r6658, r6659, r6660, r6661, r6662, r6663, r6664, r6665, r6666, r6667, r6668, r6669, r6670, r6671, r6672, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6651 at r6651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6652 at r6652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6653 at r6653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6654 at r6654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6655 at r6655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6656 at r6656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6657 at r6657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6658 at r6658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6659 at r6659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6660 at r6660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6661 at r6661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6662 at r6662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6663 at r6663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6664 at r6664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6665 at r6665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6666 at r6666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6667 at r6667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6668 at r6668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6669 at r6669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6670 at r6670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6671 at r6671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6672 at r6672
  have hshift1 : EdwardsBridge.doubleSpec (acc94 rho) (shiftOnce94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6657) (rho 6658) (rho 6659) (rho 6660) (rho 6661) (rho 6662) (rho 6663)
      (by simpa [acc94] using hacc)
      (by linear_combination r6651)
      (by linear_combination r6652)
      (by linear_combination r6653)
      (by linear_combination r6654)
      (by linear_combination r6655)
    simpa [acc94, shiftOnce94] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc94 rho) (shiftOnce94 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc94 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce94 rho) (shifted94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6662) (rho 6663) (rho 6664) (rho 6665) (rho 6666) (rho 6667) (rho 6668)
      (by simpa [shiftOnce94] using hshift1On)
      (by linear_combination r6656)
      (by linear_combination r6657)
      (by linear_combination r6658)
      (by linear_combination r6659)
      (by linear_combination r6660)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6670 + rho 6671, (1 : F) + rho 6673 + rho 6674⟩ := by
      constructor
      · refine ⟨(rho 6669 + (rho 4577) - (0)), rho 6670, ?_, ?_, ?_⟩
        · linear_combination r6661 - (rho 60) * order_cast_zero
        · linear_combination r6662
        · linear_combination r6663
      · refine ⟨(rho 6672 + (rho 4578) - ((1 : F))), rho 6673, ?_, ?_, ?_⟩
        · linear_combination r6664 - (rho 60) * order_cast_zero
        · linear_combination r6665
        · linear_combination r6666
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
      (rho 6667) (rho 6668) (rho 6670 + rho 6671) ((1 : F) + rho 6673 + rho 6674)
      (rho 6675) (rho 6676) (rho 6677) (rho 6678) (rho 6679) (rho 6680)
      (by simpa [shifted94] using hshift2On)
      (by simpa [digit94] using hdigitOn)
      (by linear_combination r6667)
      (by linear_combination r6668)
      (by linear_combination r6669)
      (by linear_combination r6670)
      (by linear_combination r6671)
      (by linear_combination r6672)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p83, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart83 at p83
  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6673, r6674, r6675, r6676, r6677, r6678, r6679, r6680, r6681, r6682, r6683, r6684, r6685, r6686, r6687, r6688, r6689, r6690, r6691, r6692, r6693, r6694, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6673 at r6673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6674 at r6674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6675 at r6675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6676 at r6676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6677 at r6677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6678 at r6678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6679 at r6679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6680 at r6680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6681 at r6681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6682 at r6682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6683 at r6683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6684 at r6684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6685 at r6685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6686 at r6686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6687 at r6687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6688 at r6688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6689 at r6689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6690 at r6690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6691 at r6691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6692 at r6692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6693 at r6693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow6694 at r6694
  have hshift1 : EdwardsBridge.doubleSpec (acc95 rho) (shiftOnce95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6679) (rho 6680) (rho 6681) (rho 6682) (rho 6683) (rho 6684) (rho 6685)
      (by simpa [acc95] using hacc)
      (by linear_combination r6673)
      (by linear_combination r6674)
      (by linear_combination r6675)
      (by linear_combination r6676)
      (by linear_combination r6677)
    simpa [acc95, shiftOnce95] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc95 rho) (shiftOnce95 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc95 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce95 rho) (shifted95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6684) (rho 6685) (rho 6686) (rho 6687) (rho 6688) (rho 6689) (rho 6690)
      (by simpa [shiftOnce95] using hshift1On)
      (by linear_combination r6678)
      (by linear_combination r6679)
      (by linear_combination r6680)
      (by linear_combination r6681)
      (by linear_combination r6682)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 6692 + rho 6693, (1 : F) + rho 6695 + rho 6696⟩ := by
      constructor
      · refine ⟨(rho 6691 + (rho 4577) - (0)), rho 6692, ?_, ?_, ?_⟩
        · linear_combination r6683 - (rho 58) * order_cast_zero
        · linear_combination r6684
        · linear_combination r6685
      · refine ⟨(rho 6694 + (rho 4578) - ((1 : F))), rho 6695, ?_, ?_, ?_⟩
        · linear_combination r6686 - (rho 58) * order_cast_zero
        · linear_combination r6687
        · linear_combination r6688
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
      (rho 6689) (rho 6690) (rho 6692 + rho 6693) ((1 : F) + rho 6695 + rho 6696)
      (rho 6697) (rho 6698) (rho 6699) (rho 6700) (rho 6701) (rho 6702)
      (by simpa [shifted95] using hshift2On)
      (by simpa [digit95] using hdigitOn)
      (by linear_combination r6689)
      (by linear_combination r6690)
      (by linear_combination r6691)
      (by linear_combination r6692)
      (by linear_combination r6693)
      (by linear_combination r6694)
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


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
