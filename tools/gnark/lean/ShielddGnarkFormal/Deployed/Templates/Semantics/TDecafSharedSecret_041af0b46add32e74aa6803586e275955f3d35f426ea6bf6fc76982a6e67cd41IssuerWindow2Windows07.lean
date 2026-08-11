import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window42 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc42 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[164]! (scalarBits rho)[163]!
        (base rho) (twice rho) (triple rho) (acc42 rho)
        (acc43 rho) ∧
      EdwardsBridge.onCurve (acc43 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, p69,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5507 at r5507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5508 at r5508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5509 at r5509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5510 at r5510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5511 at r5511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5512 at r5512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5513 at r5513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5514 at r5514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5515 at r5515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5516 at r5516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5517 at r5517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5518 at r5518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5519 at r5519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5520 at r5520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5521 at r5521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5522 at r5522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5523 at r5523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5524 at r5524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5525 at r5525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5526 at r5526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5527 at r5527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5528 at r5528
  have hshift1 : EdwardsBridge.doubleSpec (acc42 rho) (shiftOnce42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5513) (rho 5514) (rho 5515) (rho 5516) (rho 5517) (rho 5518) (rho 5519)
      (by simpa [acc42] using hacc)
      (by linear_combination r5507)
      (by linear_combination r5508)
      (by linear_combination r5509)
      (by linear_combination r5510)
      (by linear_combination r5511)
    simpa [acc42, shiftOnce42] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc42 rho) (shiftOnce42 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc42 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce42 rho) (shifted42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5518) (rho 5519) (rho 5520) (rho 5521) (rho 5522) (rho 5523) (rho 5524)
      (by simpa [shiftOnce42] using hshift1On)
      (by linear_combination r5512)
      (by linear_combination r5513)
      (by linear_combination r5514)
      (by linear_combination r5515)
      (by linear_combination r5516)
    simpa [shiftOnce42, shifted42] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce42 rho) (shifted42 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce42 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 165) (rho 164)
      (base rho) (twice rho) (triple rho) (digit42 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 165) (rho 164)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5526 + rho 5527, (1 : F) + rho 5529 + rho 5530⟩ := by
      constructor
      · refine ⟨(rho 5525 + (rho 4577) - (0)), rho 5526, ?_, ?_, ?_⟩
        · linear_combination r5517 - (rho 164) * order_cast_zero
        · linear_combination r5518
        · linear_combination r5519
      · refine ⟨(rho 5528 + (rho 4578) - ((1 : F))), rho 5529, ?_, ?_, ?_⟩
        · linear_combination r5520 - (rho 164) * order_cast_zero
        · linear_combination r5521
        · linear_combination r5522
    simpa [base, twice, triple, digit42] using hraw
  have hhigh : rho 165 =
      Bool.toZMod bits[164]! := by
    simpa only using rho_bit_of_map rho bits hbits 164 (by decide +kernel)
  have hlow : rho 164 =
      Bool.toZMod bits[163]! := by
    simpa only using rho_bit_of_map rho bits hbits 163 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[164]! bits[163]! (base rho) (twice rho) (triple rho)
    (digit42 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit42 rho) := by
    rw [hdigit]
    cases bits[164]! <;> cases bits[163]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted42 rho) (digit42 rho) (acc43 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5523) (rho 5524) (rho 5526 + rho 5527) ((1 : F) + rho 5529 + rho 5530)
      (rho 5531) (rho 5532) (rho 5533) (rho 5534) (rho 5535) (rho 5536)
      (by simpa [shifted42] using hshift2On)
      (by simpa [digit42] using hdigitOn)
      (by linear_combination r5523)
      (by linear_combination r5524)
      (by linear_combination r5525)
      (by linear_combination r5526)
      (by linear_combination r5527)
      (by linear_combination r5528)
    simpa [shifted42, digit42, acc43] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc43 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted42 rho) (digit42 rho) (acc43 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted42 rho) (digit42 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 165) (rho 164)
      (base rho) (twice rho) (triple rho) (acc42 rho)
      (acc43 rho) :=
    ⟨shiftOnce42 rho, shifted42 rho, digit42 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window43 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc43 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[162]! (scalarBits rho)[161]!
        (base rho) (twice rho) (triple rho) (acc43 rho)
        (acc44 rho) ∧
      EdwardsBridge.onCurve (acc44 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, r5529, r5530, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547, r5548, r5549, r5550, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5529 at r5529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5530 at r5530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5531 at r5531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5532 at r5532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5533 at r5533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5534 at r5534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5535 at r5535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5536 at r5536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5537 at r5537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5538 at r5538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5539 at r5539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5540 at r5540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5541 at r5541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5542 at r5542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5543 at r5543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5544 at r5544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5545 at r5545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5546 at r5546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5547 at r5547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5548 at r5548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5549 at r5549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5550 at r5550
  have hshift1 : EdwardsBridge.doubleSpec (acc43 rho) (shiftOnce43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5535) (rho 5536) (rho 5537) (rho 5538) (rho 5539) (rho 5540) (rho 5541)
      (by simpa [acc43] using hacc)
      (by linear_combination r5529)
      (by linear_combination r5530)
      (by linear_combination r5531)
      (by linear_combination r5532)
      (by linear_combination r5533)
    simpa [acc43, shiftOnce43] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc43 rho) (shiftOnce43 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc43 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce43 rho) (shifted43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5540) (rho 5541) (rho 5542) (rho 5543) (rho 5544) (rho 5545) (rho 5546)
      (by simpa [shiftOnce43] using hshift1On)
      (by linear_combination r5534)
      (by linear_combination r5535)
      (by linear_combination r5536)
      (by linear_combination r5537)
      (by linear_combination r5538)
    simpa [shiftOnce43, shifted43] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce43 rho) (shifted43 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce43 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 163) (rho 162)
      (base rho) (twice rho) (triple rho) (digit43 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 163) (rho 162)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5548 + rho 5549, (1 : F) + rho 5551 + rho 5552⟩ := by
      constructor
      · refine ⟨(rho 5547 + (rho 4577) - (0)), rho 5548, ?_, ?_, ?_⟩
        · linear_combination r5539 - (rho 162) * order_cast_zero
        · linear_combination r5540
        · linear_combination r5541
      · refine ⟨(rho 5550 + (rho 4578) - ((1 : F))), rho 5551, ?_, ?_, ?_⟩
        · linear_combination r5542 - (rho 162) * order_cast_zero
        · linear_combination r5543
        · linear_combination r5544
    simpa [base, twice, triple, digit43] using hraw
  have hhigh : rho 163 =
      Bool.toZMod bits[162]! := by
    simpa only using rho_bit_of_map rho bits hbits 162 (by decide +kernel)
  have hlow : rho 162 =
      Bool.toZMod bits[161]! := by
    simpa only using rho_bit_of_map rho bits hbits 161 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[162]! bits[161]! (base rho) (twice rho) (triple rho)
    (digit43 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit43 rho) := by
    rw [hdigit]
    cases bits[162]! <;> cases bits[161]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted43 rho) (digit43 rho) (acc44 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5545) (rho 5546) (rho 5548 + rho 5549) ((1 : F) + rho 5551 + rho 5552)
      (rho 5553) (rho 5554) (rho 5555) (rho 5556) (rho 5557) (rho 5558)
      (by simpa [shifted43] using hshift2On)
      (by simpa [digit43] using hdigitOn)
      (by linear_combination r5545)
      (by linear_combination r5546)
      (by linear_combination r5547)
      (by linear_combination r5548)
      (by linear_combination r5549)
      (by linear_combination r5550)
    simpa [shifted43, digit43, acc44] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc44 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted43 rho) (digit43 rho) (acc44 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted43 rho) (digit43 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 163) (rho 162)
      (base rho) (twice rho) (triple rho) (acc43 rho)
      (acc44 rho) :=
    ⟨shiftOnce43 rho, shifted43 rho, digit43 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window44 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc44 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[160]! (scalarBits rho)[159]!
        (base rho) (twice rho) (triple rho) (acc44 rho)
        (acc45 rho) ∧
      EdwardsBridge.onCurve (acc45 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5551 at r5551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5552 at r5552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5553 at r5553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5554 at r5554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5555 at r5555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5556 at r5556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5557 at r5557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5558 at r5558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5559 at r5559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5560 at r5560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5561 at r5561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5562 at r5562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5563 at r5563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5564 at r5564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5565 at r5565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5566 at r5566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5567 at r5567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5568 at r5568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5569 at r5569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5570 at r5570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5571 at r5571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5572 at r5572
  have hshift1 : EdwardsBridge.doubleSpec (acc44 rho) (shiftOnce44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5557) (rho 5558) (rho 5559) (rho 5560) (rho 5561) (rho 5562) (rho 5563)
      (by simpa [acc44] using hacc)
      (by linear_combination r5551)
      (by linear_combination r5552)
      (by linear_combination r5553)
      (by linear_combination r5554)
      (by linear_combination r5555)
    simpa [acc44, shiftOnce44] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc44 rho) (shiftOnce44 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc44 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce44 rho) (shifted44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5562) (rho 5563) (rho 5564) (rho 5565) (rho 5566) (rho 5567) (rho 5568)
      (by simpa [shiftOnce44] using hshift1On)
      (by linear_combination r5556)
      (by linear_combination r5557)
      (by linear_combination r5558)
      (by linear_combination r5559)
      (by linear_combination r5560)
    simpa [shiftOnce44, shifted44] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce44 rho) (shifted44 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce44 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 161) (rho 160)
      (base rho) (twice rho) (triple rho) (digit44 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 161) (rho 160)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5570 + rho 5571, (1 : F) + rho 5573 + rho 5574⟩ := by
      constructor
      · refine ⟨(rho 5569 + (rho 4577) - (0)), rho 5570, ?_, ?_, ?_⟩
        · linear_combination r5561 - (rho 160) * order_cast_zero
        · linear_combination r5562
        · linear_combination r5563
      · refine ⟨(rho 5572 + (rho 4578) - ((1 : F))), rho 5573, ?_, ?_, ?_⟩
        · linear_combination r5564 - (rho 160) * order_cast_zero
        · linear_combination r5565
        · linear_combination r5566
    simpa [base, twice, triple, digit44] using hraw
  have hhigh : rho 161 =
      Bool.toZMod bits[160]! := by
    simpa only using rho_bit_of_map rho bits hbits 160 (by decide +kernel)
  have hlow : rho 160 =
      Bool.toZMod bits[159]! := by
    simpa only using rho_bit_of_map rho bits hbits 159 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[160]! bits[159]! (base rho) (twice rho) (triple rho)
    (digit44 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit44 rho) := by
    rw [hdigit]
    cases bits[160]! <;> cases bits[159]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted44 rho) (digit44 rho) (acc45 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5567) (rho 5568) (rho 5570 + rho 5571) ((1 : F) + rho 5573 + rho 5574)
      (rho 5575) (rho 5576) (rho 5577) (rho 5578) (rho 5579) (rho 5580)
      (by simpa [shifted44] using hshift2On)
      (by simpa [digit44] using hdigitOn)
      (by linear_combination r5567)
      (by linear_combination r5568)
      (by linear_combination r5569)
      (by linear_combination r5570)
      (by linear_combination r5571)
      (by linear_combination r5572)
    simpa [shifted44, digit44, acc45] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc45 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted44 rho) (digit44 rho) (acc45 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted44 rho) (digit44 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 161) (rho 160)
      (base rho) (twice rho) (triple rho) (acc44 rho)
      (acc45 rho) :=
    ⟨shiftOnce44 rho, shifted44 rho, digit44 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window45 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc45 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[158]! (scalarBits rho)[157]!
        (base rho) (twice rho) (triple rho) (acc45 rho)
        (acc46 rho) ∧
      EdwardsBridge.onCurve (acc46 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5573 at r5573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5574 at r5574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5575 at r5575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5576 at r5576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5577 at r5577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5578 at r5578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5579 at r5579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5580 at r5580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5581 at r5581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5582 at r5582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5583 at r5583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5584 at r5584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5585 at r5585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5586 at r5586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5587 at r5587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5588 at r5588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5589 at r5589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5590 at r5590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5591 at r5591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5592 at r5592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5593 at r5593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5594 at r5594
  have hshift1 : EdwardsBridge.doubleSpec (acc45 rho) (shiftOnce45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5579) (rho 5580) (rho 5581) (rho 5582) (rho 5583) (rho 5584) (rho 5585)
      (by simpa [acc45] using hacc)
      (by linear_combination r5573)
      (by linear_combination r5574)
      (by linear_combination r5575)
      (by linear_combination r5576)
      (by linear_combination r5577)
    simpa [acc45, shiftOnce45] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc45 rho) (shiftOnce45 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc45 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce45 rho) (shifted45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5584) (rho 5585) (rho 5586) (rho 5587) (rho 5588) (rho 5589) (rho 5590)
      (by simpa [shiftOnce45] using hshift1On)
      (by linear_combination r5578)
      (by linear_combination r5579)
      (by linear_combination r5580)
      (by linear_combination r5581)
      (by linear_combination r5582)
    simpa [shiftOnce45, shifted45] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce45 rho) (shifted45 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce45 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 159) (rho 158)
      (base rho) (twice rho) (triple rho) (digit45 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 159) (rho 158)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5592 + rho 5593, (1 : F) + rho 5595 + rho 5596⟩ := by
      constructor
      · refine ⟨(rho 5591 + (rho 4577) - (0)), rho 5592, ?_, ?_, ?_⟩
        · linear_combination r5583 - (rho 158) * order_cast_zero
        · linear_combination r5584
        · linear_combination r5585
      · refine ⟨(rho 5594 + (rho 4578) - ((1 : F))), rho 5595, ?_, ?_, ?_⟩
        · linear_combination r5586 - (rho 158) * order_cast_zero
        · linear_combination r5587
        · linear_combination r5588
    simpa [base, twice, triple, digit45] using hraw
  have hhigh : rho 159 =
      Bool.toZMod bits[158]! := by
    simpa only using rho_bit_of_map rho bits hbits 158 (by decide +kernel)
  have hlow : rho 158 =
      Bool.toZMod bits[157]! := by
    simpa only using rho_bit_of_map rho bits hbits 157 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[158]! bits[157]! (base rho) (twice rho) (triple rho)
    (digit45 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit45 rho) := by
    rw [hdigit]
    cases bits[158]! <;> cases bits[157]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted45 rho) (digit45 rho) (acc46 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5589) (rho 5590) (rho 5592 + rho 5593) ((1 : F) + rho 5595 + rho 5596)
      (rho 5597) (rho 5598) (rho 5599) (rho 5600) (rho 5601) (rho 5602)
      (by simpa [shifted45] using hshift2On)
      (by simpa [digit45] using hdigitOn)
      (by linear_combination r5589)
      (by linear_combination r5590)
      (by linear_combination r5591)
      (by linear_combination r5592)
      (by linear_combination r5593)
      (by linear_combination r5594)
    simpa [shifted45, digit45, acc46] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc46 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted45 rho) (digit45 rho) (acc46 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted45 rho) (digit45 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 159) (rho 158)
      (base rho) (twice rho) (triple rho) (acc45 rho)
      (acc46 rho) :=
    ⟨shiftOnce45 rho, shifted45 rho, digit45 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window46 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc46 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[156]! (scalarBits rho)[155]!
        (base rho) (twice rho) (triple rho) (acc46 rho)
        (acc47 rho) ∧
      EdwardsBridge.onCurve (acc47 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    p70, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5595, r5596, r5597, r5598, r5599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart70 at p70
  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, r5615, r5616, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5595 at r5595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5596 at r5596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5597 at r5597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5598 at r5598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5599 at r5599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5600 at r5600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5601 at r5601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5602 at r5602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5603 at r5603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5604 at r5604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5605 at r5605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5606 at r5606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5607 at r5607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5608 at r5608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5609 at r5609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5610 at r5610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5611 at r5611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5612 at r5612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5613 at r5613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5614 at r5614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5615 at r5615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5616 at r5616
  have hshift1 : EdwardsBridge.doubleSpec (acc46 rho) (shiftOnce46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5601) (rho 5602) (rho 5603) (rho 5604) (rho 5605) (rho 5606) (rho 5607)
      (by simpa [acc46] using hacc)
      (by linear_combination r5595)
      (by linear_combination r5596)
      (by linear_combination r5597)
      (by linear_combination r5598)
      (by linear_combination r5599)
    simpa [acc46, shiftOnce46] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc46 rho) (shiftOnce46 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc46 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce46 rho) (shifted46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5606) (rho 5607) (rho 5608) (rho 5609) (rho 5610) (rho 5611) (rho 5612)
      (by simpa [shiftOnce46] using hshift1On)
      (by linear_combination r5600)
      (by linear_combination r5601)
      (by linear_combination r5602)
      (by linear_combination r5603)
      (by linear_combination r5604)
    simpa [shiftOnce46, shifted46] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce46 rho) (shifted46 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce46 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 157) (rho 156)
      (base rho) (twice rho) (triple rho) (digit46 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 157) (rho 156)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5614 + rho 5615, (1 : F) + rho 5617 + rho 5618⟩ := by
      constructor
      · refine ⟨(rho 5613 + (rho 4577) - (0)), rho 5614, ?_, ?_, ?_⟩
        · linear_combination r5605 - (rho 156) * order_cast_zero
        · linear_combination r5606
        · linear_combination r5607
      · refine ⟨(rho 5616 + (rho 4578) - ((1 : F))), rho 5617, ?_, ?_, ?_⟩
        · linear_combination r5608 - (rho 156) * order_cast_zero
        · linear_combination r5609
        · linear_combination r5610
    simpa [base, twice, triple, digit46] using hraw
  have hhigh : rho 157 =
      Bool.toZMod bits[156]! := by
    simpa only using rho_bit_of_map rho bits hbits 156 (by decide +kernel)
  have hlow : rho 156 =
      Bool.toZMod bits[155]! := by
    simpa only using rho_bit_of_map rho bits hbits 155 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[156]! bits[155]! (base rho) (twice rho) (triple rho)
    (digit46 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit46 rho) := by
    rw [hdigit]
    cases bits[156]! <;> cases bits[155]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted46 rho) (digit46 rho) (acc47 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5611) (rho 5612) (rho 5614 + rho 5615) ((1 : F) + rho 5617 + rho 5618)
      (rho 5619) (rho 5620) (rho 5621) (rho 5622) (rho 5623) (rho 5624)
      (by simpa [shifted46] using hshift2On)
      (by simpa [digit46] using hdigitOn)
      (by linear_combination r5611)
      (by linear_combination r5612)
      (by linear_combination r5613)
      (by linear_combination r5614)
      (by linear_combination r5615)
      (by linear_combination r5616)
    simpa [shifted46, digit46, acc47] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc47 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted46 rho) (digit46 rho) (acc47 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted46 rho) (digit46 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 157) (rho 156)
      (base rho) (twice rho) (triple rho) (acc46 rho)
      (acc47 rho) :=
    ⟨shiftOnce46 rho, shifted46 rho, digit46 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window47 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc47 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[154]! (scalarBits rho)[153]!
        (base rho) (twice rho) (triple rho) (acc47 rho)
        (acc48 rho) ∧
      EdwardsBridge.onCurve (acc48 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5617 at r5617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5618 at r5618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5619 at r5619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5620 at r5620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5621 at r5621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5622 at r5622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5623 at r5623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5624 at r5624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5625 at r5625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5626 at r5626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5627 at r5627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5628 at r5628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5629 at r5629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5630 at r5630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5631 at r5631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5632 at r5632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5633 at r5633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5634 at r5634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5635 at r5635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5636 at r5636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5637 at r5637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5638 at r5638
  have hshift1 : EdwardsBridge.doubleSpec (acc47 rho) (shiftOnce47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5623) (rho 5624) (rho 5625) (rho 5626) (rho 5627) (rho 5628) (rho 5629)
      (by simpa [acc47] using hacc)
      (by linear_combination r5617)
      (by linear_combination r5618)
      (by linear_combination r5619)
      (by linear_combination r5620)
      (by linear_combination r5621)
    simpa [acc47, shiftOnce47] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc47 rho) (shiftOnce47 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc47 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce47 rho) (shifted47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5628) (rho 5629) (rho 5630) (rho 5631) (rho 5632) (rho 5633) (rho 5634)
      (by simpa [shiftOnce47] using hshift1On)
      (by linear_combination r5622)
      (by linear_combination r5623)
      (by linear_combination r5624)
      (by linear_combination r5625)
      (by linear_combination r5626)
    simpa [shiftOnce47, shifted47] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce47 rho) (shifted47 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce47 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 155) (rho 154)
      (base rho) (twice rho) (triple rho) (digit47 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 155) (rho 154)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5636 + rho 5637, (1 : F) + rho 5639 + rho 5640⟩ := by
      constructor
      · refine ⟨(rho 5635 + (rho 4577) - (0)), rho 5636, ?_, ?_, ?_⟩
        · linear_combination r5627 - (rho 154) * order_cast_zero
        · linear_combination r5628
        · linear_combination r5629
      · refine ⟨(rho 5638 + (rho 4578) - ((1 : F))), rho 5639, ?_, ?_, ?_⟩
        · linear_combination r5630 - (rho 154) * order_cast_zero
        · linear_combination r5631
        · linear_combination r5632
    simpa [base, twice, triple, digit47] using hraw
  have hhigh : rho 155 =
      Bool.toZMod bits[154]! := by
    simpa only using rho_bit_of_map rho bits hbits 154 (by decide +kernel)
  have hlow : rho 154 =
      Bool.toZMod bits[153]! := by
    simpa only using rho_bit_of_map rho bits hbits 153 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[154]! bits[153]! (base rho) (twice rho) (triple rho)
    (digit47 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit47 rho) := by
    rw [hdigit]
    cases bits[154]! <;> cases bits[153]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted47 rho) (digit47 rho) (acc48 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5633) (rho 5634) (rho 5636 + rho 5637) ((1 : F) + rho 5639 + rho 5640)
      (rho 5641) (rho 5642) (rho 5643) (rho 5644) (rho 5645) (rho 5646)
      (by simpa [shifted47] using hshift2On)
      (by simpa [digit47] using hdigitOn)
      (by linear_combination r5633)
      (by linear_combination r5634)
      (by linear_combination r5635)
      (by linear_combination r5636)
      (by linear_combination r5637)
      (by linear_combination r5638)
    simpa [shifted47, digit47, acc48] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc48 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted47 rho) (digit47 rho) (acc48 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted47 rho) (digit47 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 155) (rho 154)
      (base rho) (twice rho) (triple rho) (acc47 rho)
      (acc48 rho) :=
    ⟨shiftOnce47 rho, shifted47 rho, digit47 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
