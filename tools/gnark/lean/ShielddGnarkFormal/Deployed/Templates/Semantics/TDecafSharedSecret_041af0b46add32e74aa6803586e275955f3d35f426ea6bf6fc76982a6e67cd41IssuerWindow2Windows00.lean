import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4583 at r4583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4584 at r4584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4585 at r4585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4586 at r4586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4587 at r4587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4588 at r4588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4589 at r4589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4590 at r4590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4591 at r4591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4592 at r4592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4593 at r4593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4594 at r4594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4595 at r4595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4596 at r4596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4597 at r4597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4598 at r4598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4599 at r4599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4600 at r4600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4601 at r4601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4602 at r4602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4603 at r4603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4604 at r4604
  have hshift1 : EdwardsBridge.doubleSpec (acc0 rho) (shiftOnce0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4586 + rho 4587) ((1 : F) + rho 4589 + rho 4590) (rho 4591) (rho 4592) (rho 4593) (rho 4594) (rho 4595)
      (by simpa [acc0] using hacc)
      (by linear_combination r4583)
      (by linear_combination r4584)
      (by linear_combination r4585)
      (by linear_combination r4586)
      (by linear_combination r4587)
    simpa [acc0, shiftOnce0] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc0 rho) (shiftOnce0 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc0 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce0 rho) (shifted0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4594) (rho 4595) (rho 4596) (rho 4597) (rho 4598) (rho 4599) (rho 4600)
      (by simpa [shiftOnce0] using hshift1On)
      (by linear_combination r4588)
      (by linear_combination r4589)
      (by linear_combination r4590)
      (by linear_combination r4591)
      (by linear_combination r4592)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4602 + rho 4603, (1 : F) + rho 4605 + rho 4606⟩ := by
      constructor
      · refine ⟨(rho 4601 + (rho 4577) - (0)), rho 4602, ?_, ?_, ?_⟩
        · linear_combination r4593 - (rho 248) * order_cast_zero
        · linear_combination r4594
        · linear_combination r4595
      · refine ⟨(rho 4604 + (rho 4578) - ((1 : F))), rho 4605, ?_, ?_, ?_⟩
        · linear_combination r4596 - (rho 248) * order_cast_zero
        · linear_combination r4597
        · linear_combination r4598
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
      (rho 4599) (rho 4600) (rho 4602 + rho 4603) ((1 : F) + rho 4605 + rho 4606)
      (rho 4607) (rho 4608) (rho 4609) (rho 4610) (rho 4611) (rho 4612)
      (by simpa [shifted0] using hshift2On)
      (by simpa [digit0] using hdigitOn)
      (by linear_combination r4599)
      (by linear_combination r4600)
      (by linear_combination r4601)
      (by linear_combination r4602)
      (by linear_combination r4603)
      (by linear_combination r4604)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4605 at r4605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4606 at r4606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4607 at r4607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4608 at r4608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4609 at r4609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4610 at r4610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4611 at r4611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4612 at r4612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4613 at r4613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4614 at r4614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4615 at r4615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4616 at r4616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4617 at r4617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4618 at r4618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4619 at r4619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4620 at r4620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4621 at r4621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4622 at r4622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4623 at r4623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4624 at r4624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4625 at r4625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4626 at r4626
  have hshift1 : EdwardsBridge.doubleSpec (acc1 rho) (shiftOnce1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4611) (rho 4612) (rho 4613) (rho 4614) (rho 4615) (rho 4616) (rho 4617)
      (by simpa [acc1] using hacc)
      (by linear_combination r4605)
      (by linear_combination r4606)
      (by linear_combination r4607)
      (by linear_combination r4608)
      (by linear_combination r4609)
    simpa [acc1, shiftOnce1] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc1 rho) (shiftOnce1 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc1 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce1 rho) (shifted1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4616) (rho 4617) (rho 4618) (rho 4619) (rho 4620) (rho 4621) (rho 4622)
      (by simpa [shiftOnce1] using hshift1On)
      (by linear_combination r4610)
      (by linear_combination r4611)
      (by linear_combination r4612)
      (by linear_combination r4613)
      (by linear_combination r4614)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4624 + rho 4625, (1 : F) + rho 4627 + rho 4628⟩ := by
      constructor
      · refine ⟨(rho 4623 + (rho 4577) - (0)), rho 4624, ?_, ?_, ?_⟩
        · linear_combination r4615 - (rho 246) * order_cast_zero
        · linear_combination r4616
        · linear_combination r4617
      · refine ⟨(rho 4626 + (rho 4578) - ((1 : F))), rho 4627, ?_, ?_, ?_⟩
        · linear_combination r4618 - (rho 246) * order_cast_zero
        · linear_combination r4619
        · linear_combination r4620
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
      (rho 4621) (rho 4622) (rho 4624 + rho 4625) ((1 : F) + rho 4627 + rho 4628)
      (rho 4629) (rho 4630) (rho 4631) (rho 4632) (rho 4633) (rho 4634)
      (by simpa [shifted1] using hshift2On)
      (by simpa [digit1] using hdigitOn)
      (by linear_combination r4621)
      (by linear_combination r4622)
      (by linear_combination r4623)
      (by linear_combination r4624)
      (by linear_combination r4625)
      (by linear_combination r4626)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart57 at p57
  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4627 at r4627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4628 at r4628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4629 at r4629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4630 at r4630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4631 at r4631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4632 at r4632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4633 at r4633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4634 at r4634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4635 at r4635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4636 at r4636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4637 at r4637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4638 at r4638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4639 at r4639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4640 at r4640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4641 at r4641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4642 at r4642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4643 at r4643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4644 at r4644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4645 at r4645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4646 at r4646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4647 at r4647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4648 at r4648
  have hshift1 : EdwardsBridge.doubleSpec (acc2 rho) (shiftOnce2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4633) (rho 4634) (rho 4635) (rho 4636) (rho 4637) (rho 4638) (rho 4639)
      (by simpa [acc2] using hacc)
      (by linear_combination r4627)
      (by linear_combination r4628)
      (by linear_combination r4629)
      (by linear_combination r4630)
      (by linear_combination r4631)
    simpa [acc2, shiftOnce2] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc2 rho) (shiftOnce2 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc2 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce2 rho) (shifted2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4638) (rho 4639) (rho 4640) (rho 4641) (rho 4642) (rho 4643) (rho 4644)
      (by simpa [shiftOnce2] using hshift1On)
      (by linear_combination r4632)
      (by linear_combination r4633)
      (by linear_combination r4634)
      (by linear_combination r4635)
      (by linear_combination r4636)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4646 + rho 4647, (1 : F) + rho 4649 + rho 4650⟩ := by
      constructor
      · refine ⟨(rho 4645 + (rho 4577) - (0)), rho 4646, ?_, ?_, ?_⟩
        · linear_combination r4637 - (rho 244) * order_cast_zero
        · linear_combination r4638
        · linear_combination r4639
      · refine ⟨(rho 4648 + (rho 4578) - ((1 : F))), rho 4649, ?_, ?_, ?_⟩
        · linear_combination r4640 - (rho 244) * order_cast_zero
        · linear_combination r4641
        · linear_combination r4642
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
      (rho 4643) (rho 4644) (rho 4646 + rho 4647) ((1 : F) + rho 4649 + rho 4650)
      (rho 4651) (rho 4652) (rho 4653) (rho 4654) (rho 4655) (rho 4656)
      (by simpa [shifted2] using hshift2On)
      (by simpa [digit2] using hdigitOn)
      (by linear_combination r4643)
      (by linear_combination r4644)
      (by linear_combination r4645)
      (by linear_combination r4646)
      (by linear_combination r4647)
      (by linear_combination r4648)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4649 at r4649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4650 at r4650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4651 at r4651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4652 at r4652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4653 at r4653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4654 at r4654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4655 at r4655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4656 at r4656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4657 at r4657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4658 at r4658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4659 at r4659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4660 at r4660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4661 at r4661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4662 at r4662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4663 at r4663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4664 at r4664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4665 at r4665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4666 at r4666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4667 at r4667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4668 at r4668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4669 at r4669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4670 at r4670
  have hshift1 : EdwardsBridge.doubleSpec (acc3 rho) (shiftOnce3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4655) (rho 4656) (rho 4657) (rho 4658) (rho 4659) (rho 4660) (rho 4661)
      (by simpa [acc3] using hacc)
      (by linear_combination r4649)
      (by linear_combination r4650)
      (by linear_combination r4651)
      (by linear_combination r4652)
      (by linear_combination r4653)
    simpa [acc3, shiftOnce3] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc3 rho) (shiftOnce3 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc3 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce3 rho) (shifted3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4660) (rho 4661) (rho 4662) (rho 4663) (rho 4664) (rho 4665) (rho 4666)
      (by simpa [shiftOnce3] using hshift1On)
      (by linear_combination r4654)
      (by linear_combination r4655)
      (by linear_combination r4656)
      (by linear_combination r4657)
      (by linear_combination r4658)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4668 + rho 4669, (1 : F) + rho 4671 + rho 4672⟩ := by
      constructor
      · refine ⟨(rho 4667 + (rho 4577) - (0)), rho 4668, ?_, ?_, ?_⟩
        · linear_combination r4659 - (rho 242) * order_cast_zero
        · linear_combination r4660
        · linear_combination r4661
      · refine ⟨(rho 4670 + (rho 4578) - ((1 : F))), rho 4671, ?_, ?_, ?_⟩
        · linear_combination r4662 - (rho 242) * order_cast_zero
        · linear_combination r4663
        · linear_combination r4664
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
      (rho 4665) (rho 4666) (rho 4668 + rho 4669) ((1 : F) + rho 4671 + rho 4672)
      (rho 4673) (rho 4674) (rho 4675) (rho 4676) (rho 4677) (rho 4678)
      (by simpa [shifted3] using hshift2On)
      (by simpa [digit3] using hdigitOn)
      (by linear_combination r4665)
      (by linear_combination r4666)
      (by linear_combination r4667)
      (by linear_combination r4668)
      (by linear_combination r4669)
      (by linear_combination r4670)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4671 at r4671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4672 at r4672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4673 at r4673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4674 at r4674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4675 at r4675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4676 at r4676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4677 at r4677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4678 at r4678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4679 at r4679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4680 at r4680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4681 at r4681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4682 at r4682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4683 at r4683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4684 at r4684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4685 at r4685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4686 at r4686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4687 at r4687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4688 at r4688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4689 at r4689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4690 at r4690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4691 at r4691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4692 at r4692
  have hshift1 : EdwardsBridge.doubleSpec (acc4 rho) (shiftOnce4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4677) (rho 4678) (rho 4679) (rho 4680) (rho 4681) (rho 4682) (rho 4683)
      (by simpa [acc4] using hacc)
      (by linear_combination r4671)
      (by linear_combination r4672)
      (by linear_combination r4673)
      (by linear_combination r4674)
      (by linear_combination r4675)
    simpa [acc4, shiftOnce4] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc4 rho) (shiftOnce4 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc4 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce4 rho) (shifted4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4682) (rho 4683) (rho 4684) (rho 4685) (rho 4686) (rho 4687) (rho 4688)
      (by simpa [shiftOnce4] using hshift1On)
      (by linear_combination r4676)
      (by linear_combination r4677)
      (by linear_combination r4678)
      (by linear_combination r4679)
      (by linear_combination r4680)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4690 + rho 4691, (1 : F) + rho 4693 + rho 4694⟩ := by
      constructor
      · refine ⟨(rho 4689 + (rho 4577) - (0)), rho 4690, ?_, ?_, ?_⟩
        · linear_combination r4681 - (rho 240) * order_cast_zero
        · linear_combination r4682
        · linear_combination r4683
      · refine ⟨(rho 4692 + (rho 4578) - ((1 : F))), rho 4693, ?_, ?_, ?_⟩
        · linear_combination r4684 - (rho 240) * order_cast_zero
        · linear_combination r4685
        · linear_combination r4686
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
      (rho 4687) (rho 4688) (rho 4690 + rho 4691) ((1 : F) + rho 4693 + rho 4694)
      (rho 4695) (rho 4696) (rho 4697) (rho 4698) (rho 4699) (rho 4700)
      (by simpa [shifted4] using hshift2On)
      (by simpa [digit4] using hdigitOn)
      (by linear_combination r4687)
      (by linear_combination r4688)
      (by linear_combination r4689)
      (by linear_combination r4690)
      (by linear_combination r4691)
      (by linear_combination r4692)
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4693 at r4693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4694 at r4694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4695 at r4695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4696 at r4696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4697 at r4697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4698 at r4698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4699 at r4699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4700 at r4700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4701 at r4701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4702 at r4702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4703 at r4703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4704 at r4704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4705 at r4705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4706 at r4706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4707 at r4707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4708 at r4708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4709 at r4709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4710 at r4710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4711 at r4711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4712 at r4712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4713 at r4713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4714 at r4714
  have hshift1 : EdwardsBridge.doubleSpec (acc5 rho) (shiftOnce5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4699) (rho 4700) (rho 4701) (rho 4702) (rho 4703) (rho 4704) (rho 4705)
      (by simpa [acc5] using hacc)
      (by linear_combination r4693)
      (by linear_combination r4694)
      (by linear_combination r4695)
      (by linear_combination r4696)
      (by linear_combination r4697)
    simpa [acc5, shiftOnce5] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc5 rho) (shiftOnce5 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc5 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce5 rho) (shifted5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4704) (rho 4705) (rho 4706) (rho 4707) (rho 4708) (rho 4709) (rho 4710)
      (by simpa [shiftOnce5] using hshift1On)
      (by linear_combination r4698)
      (by linear_combination r4699)
      (by linear_combination r4700)
      (by linear_combination r4701)
      (by linear_combination r4702)
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
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 4712 + rho 4713, (1 : F) + rho 4715 + rho 4716⟩ := by
      constructor
      · refine ⟨(rho 4711 + (rho 4577) - (0)), rho 4712, ?_, ?_, ?_⟩
        · linear_combination r4703 - (rho 238) * order_cast_zero
        · linear_combination r4704
        · linear_combination r4705
      · refine ⟨(rho 4714 + (rho 4578) - ((1 : F))), rho 4715, ?_, ?_, ?_⟩
        · linear_combination r4706 - (rho 238) * order_cast_zero
        · linear_combination r4707
        · linear_combination r4708
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
      (rho 4709) (rho 4710) (rho 4712 + rho 4713) ((1 : F) + rho 4715 + rho 4716)
      (rho 4717) (rho 4718) (rho 4719) (rho 4720) (rho 4721) (rho 4722)
      (by simpa [shifted5] using hshift2On)
      (by simpa [digit5] using hdigitOn)
      (by linear_combination r4709)
      (by linear_combination r4710)
      (by linear_combination r4711)
      (by linear_combination r4712)
      (by linear_combination r4713)
      (by linear_combination r4714)
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


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
