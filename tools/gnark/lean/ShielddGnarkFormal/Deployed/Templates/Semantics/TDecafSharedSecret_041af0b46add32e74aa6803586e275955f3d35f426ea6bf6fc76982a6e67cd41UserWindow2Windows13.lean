import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window78 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc78 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[92]! (scalarBits rho)[91]!
        (base rho) (twice rho) (triple rho) (acc78 rho)
        (acc79 rho) ∧
      EdwardsBridge.onCurve (acc79 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3541 at r3541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3542 at r3542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3543 at r3543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3544 at r3544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3545 at r3545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3546 at r3546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3547 at r3547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3548 at r3548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3549 at r3549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3550 at r3550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3551 at r3551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3552 at r3552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3553 at r3553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3554 at r3554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3555 at r3555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3556 at r3556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3557 at r3557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3558 at r3558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3559 at r3559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3560 at r3560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3561 at r3561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3562 at r3562
  have hshift1 : EdwardsBridge.doubleSpec (acc78 rho) (shiftOnce78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3545) (rho 3546) (rho 3547) (rho 3548) (rho 3549) (rho 3550) (rho 3551)
      (by simpa [acc78] using hacc)
      (by linear_combination r3541)
      (by linear_combination r3542)
      (by linear_combination r3543)
      (by linear_combination r3544)
      (by linear_combination r3545)
    simpa [acc78, shiftOnce78] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc78 rho) (shiftOnce78 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc78 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce78 rho) (shifted78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3550) (rho 3551) (rho 3552) (rho 3553) (rho 3554) (rho 3555) (rho 3556)
      (by simpa [shiftOnce78] using hshift1On)
      (by linear_combination r3546)
      (by linear_combination r3547)
      (by linear_combination r3548)
      (by linear_combination r3549)
      (by linear_combination r3550)
    simpa [shiftOnce78, shifted78] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce78 rho) (shifted78 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce78 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 93) (rho 92)
      (base rho) (twice rho) (triple rho) (digit78 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 93) (rho 92)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3558 + rho 3559, (1 : F) + rho 3561 + rho 3562⟩ := by
      constructor
      · refine ⟨(rho 3557 + (rho 1817) - (0)), rho 3558, ?_, ?_, ?_⟩
        · linear_combination r3551
        · linear_combination r3552
        · linear_combination r3553
      · refine ⟨(rho 3560 + (rho 1818) - ((1 : F))), rho 3561, ?_, ?_, ?_⟩
        · linear_combination r3554
        · linear_combination r3555
        · linear_combination r3556
    simpa [base, twice, triple, digit78] using hraw
  have hhigh : rho 93 =
      Bool.toZMod bits[92]! := by
    simpa only using rho_bit_of_map rho bits hbits 92 (by decide +kernel)
  have hlow : rho 92 =
      Bool.toZMod bits[91]! := by
    simpa only using rho_bit_of_map rho bits hbits 91 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[92]! bits[91]! (base rho) (twice rho) (triple rho)
    (digit78 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit78 rho) := by
    rw [hdigit]
    cases bits[92]! <;> cases bits[91]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted78 rho) (digit78 rho) (acc79 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3555) (rho 3556) (rho 3558 + rho 3559) ((1 : F) + rho 3561 + rho 3562)
      (rho 3563) (rho 3564) (rho 3565) (rho 3566) (rho 3567) (rho 3568)
      (by simpa [shifted78] using hshift2On)
      (by simpa [digit78] using hdigitOn)
      (by linear_combination r3557)
      (by linear_combination r3558)
      (by linear_combination r3559)
      (by linear_combination r3560)
      (by linear_combination r3561)
      (by linear_combination r3562)
    simpa [shifted78, digit78, acc79] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc79 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted78 rho) (digit78 rho) (acc79 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted78 rho) (digit78 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 93) (rho 92)
      (base rho) (twice rho) (triple rho) (acc78 rho)
      (acc79 rho) :=
    ⟨shiftOnce78 rho, shifted78 rho, digit78 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window79 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc79 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[90]! (scalarBits rho)[89]!
        (base rho) (twice rho) (triple rho) (acc79 rho)
        (acc80 rho) ∧
      EdwardsBridge.onCurve (acc80 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3563 at r3563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3564 at r3564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3565 at r3565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3566 at r3566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3567 at r3567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3568 at r3568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3569 at r3569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3570 at r3570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3571 at r3571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3572 at r3572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3573 at r3573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3574 at r3574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3575 at r3575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3576 at r3576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3577 at r3577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3578 at r3578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3579 at r3579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3580 at r3580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3581 at r3581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3582 at r3582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3583 at r3583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3584 at r3584
  have hshift1 : EdwardsBridge.doubleSpec (acc79 rho) (shiftOnce79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3567) (rho 3568) (rho 3569) (rho 3570) (rho 3571) (rho 3572) (rho 3573)
      (by simpa [acc79] using hacc)
      (by linear_combination r3563)
      (by linear_combination r3564)
      (by linear_combination r3565)
      (by linear_combination r3566)
      (by linear_combination r3567)
    simpa [acc79, shiftOnce79] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc79 rho) (shiftOnce79 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc79 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce79 rho) (shifted79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3572) (rho 3573) (rho 3574) (rho 3575) (rho 3576) (rho 3577) (rho 3578)
      (by simpa [shiftOnce79] using hshift1On)
      (by linear_combination r3568)
      (by linear_combination r3569)
      (by linear_combination r3570)
      (by linear_combination r3571)
      (by linear_combination r3572)
    simpa [shiftOnce79, shifted79] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce79 rho) (shifted79 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce79 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 91) (rho 90)
      (base rho) (twice rho) (triple rho) (digit79 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 91) (rho 90)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3580 + rho 3581, (1 : F) + rho 3583 + rho 3584⟩ := by
      constructor
      · refine ⟨(rho 3579 + (rho 1817) - (0)), rho 3580, ?_, ?_, ?_⟩
        · linear_combination r3573
        · linear_combination r3574
        · linear_combination r3575
      · refine ⟨(rho 3582 + (rho 1818) - ((1 : F))), rho 3583, ?_, ?_, ?_⟩
        · linear_combination r3576
        · linear_combination r3577
        · linear_combination r3578
    simpa [base, twice, triple, digit79] using hraw
  have hhigh : rho 91 =
      Bool.toZMod bits[90]! := by
    simpa only using rho_bit_of_map rho bits hbits 90 (by decide +kernel)
  have hlow : rho 90 =
      Bool.toZMod bits[89]! := by
    simpa only using rho_bit_of_map rho bits hbits 89 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[90]! bits[89]! (base rho) (twice rho) (triple rho)
    (digit79 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit79 rho) := by
    rw [hdigit]
    cases bits[90]! <;> cases bits[89]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted79 rho) (digit79 rho) (acc80 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3577) (rho 3578) (rho 3580 + rho 3581) ((1 : F) + rho 3583 + rho 3584)
      (rho 3585) (rho 3586) (rho 3587) (rho 3588) (rho 3589) (rho 3590)
      (by simpa [shifted79] using hshift2On)
      (by simpa [digit79] using hdigitOn)
      (by linear_combination r3579)
      (by linear_combination r3580)
      (by linear_combination r3581)
      (by linear_combination r3582)
      (by linear_combination r3583)
      (by linear_combination r3584)
    simpa [shifted79, digit79, acc80] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc80 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted79 rho) (digit79 rho) (acc80 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted79 rho) (digit79 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 91) (rho 90)
      (base rho) (twice rho) (triple rho) (acc79 rho)
      (acc80 rho) :=
    ⟨shiftOnce79 rho, shifted79 rho, digit79 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window80 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc80 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[88]! (scalarBits rho)[87]!
        (base rho) (twice rho) (triple rho) (acc80 rho)
        (acc81 rho) ∧
      EdwardsBridge.onCurve (acc81 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3585 at r3585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3586 at r3586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3587 at r3587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3588 at r3588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3589 at r3589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3590 at r3590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3591 at r3591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3592 at r3592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3593 at r3593
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3594 at r3594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3595 at r3595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3596 at r3596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3597 at r3597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3598 at r3598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3599 at r3599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3600 at r3600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3601 at r3601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3602 at r3602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3603 at r3603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3604 at r3604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3605 at r3605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3606 at r3606
  have hshift1 : EdwardsBridge.doubleSpec (acc80 rho) (shiftOnce80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3589) (rho 3590) (rho 3591) (rho 3592) (rho 3593) (rho 3594) (rho 3595)
      (by simpa [acc80] using hacc)
      (by linear_combination r3585)
      (by linear_combination r3586)
      (by linear_combination r3587)
      (by linear_combination r3588)
      (by linear_combination r3589)
    simpa [acc80, shiftOnce80] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc80 rho) (shiftOnce80 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc80 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce80 rho) (shifted80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3594) (rho 3595) (rho 3596) (rho 3597) (rho 3598) (rho 3599) (rho 3600)
      (by simpa [shiftOnce80] using hshift1On)
      (by linear_combination r3590)
      (by linear_combination r3591)
      (by linear_combination r3592)
      (by linear_combination r3593)
      (by linear_combination r3594)
    simpa [shiftOnce80, shifted80] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce80 rho) (shifted80 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce80 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 89) (rho 88)
      (base rho) (twice rho) (triple rho) (digit80 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 89) (rho 88)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3602 + rho 3603, (1 : F) + rho 3605 + rho 3606⟩ := by
      constructor
      · refine ⟨(rho 3601 + (rho 1817) - (0)), rho 3602, ?_, ?_, ?_⟩
        · linear_combination r3595
        · linear_combination r3596
        · linear_combination r3597
      · refine ⟨(rho 3604 + (rho 1818) - ((1 : F))), rho 3605, ?_, ?_, ?_⟩
        · linear_combination r3598
        · linear_combination r3599
        · linear_combination r3600
    simpa [base, twice, triple, digit80] using hraw
  have hhigh : rho 89 =
      Bool.toZMod bits[88]! := by
    simpa only using rho_bit_of_map rho bits hbits 88 (by decide +kernel)
  have hlow : rho 88 =
      Bool.toZMod bits[87]! := by
    simpa only using rho_bit_of_map rho bits hbits 87 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[88]! bits[87]! (base rho) (twice rho) (triple rho)
    (digit80 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit80 rho) := by
    rw [hdigit]
    cases bits[88]! <;> cases bits[87]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted80 rho) (digit80 rho) (acc81 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3599) (rho 3600) (rho 3602 + rho 3603) ((1 : F) + rho 3605 + rho 3606)
      (rho 3607) (rho 3608) (rho 3609) (rho 3610) (rho 3611) (rho 3612)
      (by simpa [shifted80] using hshift2On)
      (by simpa [digit80] using hdigitOn)
      (by linear_combination r3601)
      (by linear_combination r3602)
      (by linear_combination r3603)
      (by linear_combination r3604)
      (by linear_combination r3605)
      (by linear_combination r3606)
    simpa [shifted80, digit80, acc81] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc81 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted80 rho) (digit80 rho) (acc81 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted80 rho) (digit80 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 89) (rho 88)
      (base rho) (twice rho) (triple rho) (acc80 rho)
      (acc81 rho) :=
    ⟨shiftOnce80 rho, shifted80 rho, digit80 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window81 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc81 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[86]! (scalarBits rho)[85]!
        (base rho) (twice rho) (triple rho) (acc81 rho)
        (acc82 rho) ∧
      EdwardsBridge.onCurve (acc82 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, r3628, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3607 at r3607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3608 at r3608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3609 at r3609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3610 at r3610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3611 at r3611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3612 at r3612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3613 at r3613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3614 at r3614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3615 at r3615
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3616 at r3616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3617 at r3617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3618 at r3618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3619 at r3619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3620 at r3620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3621 at r3621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3622 at r3622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3623 at r3623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3624 at r3624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3625 at r3625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3626 at r3626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3627 at r3627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3628 at r3628
  have hshift1 : EdwardsBridge.doubleSpec (acc81 rho) (shiftOnce81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3611) (rho 3612) (rho 3613) (rho 3614) (rho 3615) (rho 3616) (rho 3617)
      (by simpa [acc81] using hacc)
      (by linear_combination r3607)
      (by linear_combination r3608)
      (by linear_combination r3609)
      (by linear_combination r3610)
      (by linear_combination r3611)
    simpa [acc81, shiftOnce81] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc81 rho) (shiftOnce81 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc81 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce81 rho) (shifted81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3616) (rho 3617) (rho 3618) (rho 3619) (rho 3620) (rho 3621) (rho 3622)
      (by simpa [shiftOnce81] using hshift1On)
      (by linear_combination r3612)
      (by linear_combination r3613)
      (by linear_combination r3614)
      (by linear_combination r3615)
      (by linear_combination r3616)
    simpa [shiftOnce81, shifted81] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce81 rho) (shifted81 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce81 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 87) (rho 86)
      (base rho) (twice rho) (triple rho) (digit81 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 87) (rho 86)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3624 + rho 3625, (1 : F) + rho 3627 + rho 3628⟩ := by
      constructor
      · refine ⟨(rho 3623 + (rho 1817) - (0)), rho 3624, ?_, ?_, ?_⟩
        · linear_combination r3617
        · linear_combination r3618
        · linear_combination r3619
      · refine ⟨(rho 3626 + (rho 1818) - ((1 : F))), rho 3627, ?_, ?_, ?_⟩
        · linear_combination r3620
        · linear_combination r3621
        · linear_combination r3622
    simpa [base, twice, triple, digit81] using hraw
  have hhigh : rho 87 =
      Bool.toZMod bits[86]! := by
    simpa only using rho_bit_of_map rho bits hbits 86 (by decide +kernel)
  have hlow : rho 86 =
      Bool.toZMod bits[85]! := by
    simpa only using rho_bit_of_map rho bits hbits 85 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[86]! bits[85]! (base rho) (twice rho) (triple rho)
    (digit81 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit81 rho) := by
    rw [hdigit]
    cases bits[86]! <;> cases bits[85]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted81 rho) (digit81 rho) (acc82 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3621) (rho 3622) (rho 3624 + rho 3625) ((1 : F) + rho 3627 + rho 3628)
      (rho 3629) (rho 3630) (rho 3631) (rho 3632) (rho 3633) (rho 3634)
      (by simpa [shifted81] using hshift2On)
      (by simpa [digit81] using hdigitOn)
      (by linear_combination r3623)
      (by linear_combination r3624)
      (by linear_combination r3625)
      (by linear_combination r3626)
      (by linear_combination r3627)
      (by linear_combination r3628)
    simpa [shifted81, digit81, acc82] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc82 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted81 rho) (digit81 rho) (acc82 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted81 rho) (digit81 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 87) (rho 86)
      (base rho) (twice rho) (triple rho) (acc81 rho)
      (acc82 rho) :=
    ⟨shiftOnce81 rho, shifted81 rho, digit81 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window82 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc82 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[84]! (scalarBits rho)[83]!
        (base rho) (twice rho) (triple rho) (acc82 rho)
        (acc83 rho) ∧
      EdwardsBridge.onCurve (acc83 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3629 at r3629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3630 at r3630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3631 at r3631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3632 at r3632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3633 at r3633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3634 at r3634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3635 at r3635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3636 at r3636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3637 at r3637
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3638 at r3638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3639 at r3639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3640 at r3640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3641 at r3641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3642 at r3642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3643 at r3643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3644 at r3644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3645 at r3645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3646 at r3646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3647 at r3647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3648 at r3648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3649 at r3649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3650 at r3650
  have hshift1 : EdwardsBridge.doubleSpec (acc82 rho) (shiftOnce82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3633) (rho 3634) (rho 3635) (rho 3636) (rho 3637) (rho 3638) (rho 3639)
      (by simpa [acc82] using hacc)
      (by linear_combination r3629)
      (by linear_combination r3630)
      (by linear_combination r3631)
      (by linear_combination r3632)
      (by linear_combination r3633)
    simpa [acc82, shiftOnce82] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc82 rho) (shiftOnce82 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc82 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce82 rho) (shifted82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3638) (rho 3639) (rho 3640) (rho 3641) (rho 3642) (rho 3643) (rho 3644)
      (by simpa [shiftOnce82] using hshift1On)
      (by linear_combination r3634)
      (by linear_combination r3635)
      (by linear_combination r3636)
      (by linear_combination r3637)
      (by linear_combination r3638)
    simpa [shiftOnce82, shifted82] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce82 rho) (shifted82 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce82 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 85) (rho 84)
      (base rho) (twice rho) (triple rho) (digit82 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 85) (rho 84)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3646 + rho 3647, (1 : F) + rho 3649 + rho 3650⟩ := by
      constructor
      · refine ⟨(rho 3645 + (rho 1817) - (0)), rho 3646, ?_, ?_, ?_⟩
        · linear_combination r3639
        · linear_combination r3640
        · linear_combination r3641
      · refine ⟨(rho 3648 + (rho 1818) - ((1 : F))), rho 3649, ?_, ?_, ?_⟩
        · linear_combination r3642
        · linear_combination r3643
        · linear_combination r3644
    simpa [base, twice, triple, digit82] using hraw
  have hhigh : rho 85 =
      Bool.toZMod bits[84]! := by
    simpa only using rho_bit_of_map rho bits hbits 84 (by decide +kernel)
  have hlow : rho 84 =
      Bool.toZMod bits[83]! := by
    simpa only using rho_bit_of_map rho bits hbits 83 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[84]! bits[83]! (base rho) (twice rho) (triple rho)
    (digit82 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit82 rho) := by
    rw [hdigit]
    cases bits[84]! <;> cases bits[83]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted82 rho) (digit82 rho) (acc83 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3643) (rho 3644) (rho 3646 + rho 3647) ((1 : F) + rho 3649 + rho 3650)
      (rho 3651) (rho 3652) (rho 3653) (rho 3654) (rho 3655) (rho 3656)
      (by simpa [shifted82] using hshift2On)
      (by simpa [digit82] using hdigitOn)
      (by linear_combination r3645)
      (by linear_combination r3646)
      (by linear_combination r3647)
      (by linear_combination r3648)
      (by linear_combination r3649)
      (by linear_combination r3650)
    simpa [shifted82, digit82, acc83] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc83 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted82 rho) (digit82 rho) (acc83 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted82 rho) (digit82 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 85) (rho 84)
      (base rho) (twice rho) (triple rho) (acc82 rho)
      (acc83 rho) :=
    ⟨shiftOnce82 rho, shifted82 rho, digit82 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window83 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc83 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[82]! (scalarBits rho)[81]!
        (base rho) (twice rho) (triple rho) (acc83 rho)
        (acc84 rho) ∧
      EdwardsBridge.onCurve (acc84 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3651 at r3651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3652 at r3652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3653 at r3653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3654 at r3654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3655 at r3655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3656 at r3656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3657 at r3657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3658 at r3658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3659 at r3659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3660 at r3660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3661 at r3661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3662 at r3662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3663 at r3663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3664 at r3664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3665 at r3665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3666 at r3666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3667 at r3667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3668 at r3668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3669 at r3669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3670 at r3670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3671 at r3671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3672 at r3672
  have hshift1 : EdwardsBridge.doubleSpec (acc83 rho) (shiftOnce83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3655) (rho 3656) (rho 3657) (rho 3658) (rho 3659) (rho 3660) (rho 3661)
      (by simpa [acc83] using hacc)
      (by linear_combination r3651)
      (by linear_combination r3652)
      (by linear_combination r3653)
      (by linear_combination r3654)
      (by linear_combination r3655)
    simpa [acc83, shiftOnce83] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc83 rho) (shiftOnce83 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc83 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce83 rho) (shifted83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3660) (rho 3661) (rho 3662) (rho 3663) (rho 3664) (rho 3665) (rho 3666)
      (by simpa [shiftOnce83] using hshift1On)
      (by linear_combination r3656)
      (by linear_combination r3657)
      (by linear_combination r3658)
      (by linear_combination r3659)
      (by linear_combination r3660)
    simpa [shiftOnce83, shifted83] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce83 rho) (shifted83 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce83 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 83) (rho 82)
      (base rho) (twice rho) (triple rho) (digit83 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 83) (rho 82)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3668 + rho 3669, (1 : F) + rho 3671 + rho 3672⟩ := by
      constructor
      · refine ⟨(rho 3667 + (rho 1817) - (0)), rho 3668, ?_, ?_, ?_⟩
        · linear_combination r3661
        · linear_combination r3662
        · linear_combination r3663
      · refine ⟨(rho 3670 + (rho 1818) - ((1 : F))), rho 3671, ?_, ?_, ?_⟩
        · linear_combination r3664
        · linear_combination r3665
        · linear_combination r3666
    simpa [base, twice, triple, digit83] using hraw
  have hhigh : rho 83 =
      Bool.toZMod bits[82]! := by
    simpa only using rho_bit_of_map rho bits hbits 82 (by decide +kernel)
  have hlow : rho 82 =
      Bool.toZMod bits[81]! := by
    simpa only using rho_bit_of_map rho bits hbits 81 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[82]! bits[81]! (base rho) (twice rho) (triple rho)
    (digit83 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit83 rho) := by
    rw [hdigit]
    cases bits[82]! <;> cases bits[81]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted83 rho) (digit83 rho) (acc84 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3665) (rho 3666) (rho 3668 + rho 3669) ((1 : F) + rho 3671 + rho 3672)
      (rho 3673) (rho 3674) (rho 3675) (rho 3676) (rho 3677) (rho 3678)
      (by simpa [shifted83] using hshift2On)
      (by simpa [digit83] using hdigitOn)
      (by linear_combination r3667)
      (by linear_combination r3668)
      (by linear_combination r3669)
      (by linear_combination r3670)
      (by linear_combination r3671)
      (by linear_combination r3672)
    simpa [shifted83, digit83, acc84] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc84 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted83 rho) (digit83 rho) (acc84 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted83 rho) (digit83 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 83) (rho 82)
      (base rho) (twice rho) (triple rho) (acc83 rho)
      (acc84 rho) :=
    ⟨shiftOnce83 rho, shifted83 rho, digit83 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
