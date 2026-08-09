import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window84 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc84 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[80]! (scalarBits rho)[79]!
        (base rho) (twice rho) (triple rho) (acc84 rho)
        (acc85 rho) ∧
      EdwardsBridge.onCurve (acc85 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3673 at r3673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3674 at r3674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3675 at r3675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3676 at r3676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3677 at r3677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3678 at r3678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3679 at r3679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3680 at r3680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3681 at r3681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3682 at r3682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3683 at r3683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3684 at r3684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3685 at r3685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3686 at r3686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3687 at r3687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3688 at r3688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3689 at r3689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3690 at r3690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3691 at r3691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3692 at r3692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3693 at r3693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3694 at r3694
  have hshift1 : EdwardsBridge.doubleSpec (acc84 rho) (shiftOnce84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3677) (rho 3678) (rho 3679) (rho 3680) (rho 3681) (rho 3682) (rho 3683)
      (by simpa [acc84] using hacc)
      (by linear_combination r3673)
      (by linear_combination r3674)
      (by linear_combination r3675)
      (by linear_combination r3676)
      (by linear_combination r3677)
    simpa [acc84, shiftOnce84] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc84 rho) (shiftOnce84 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc84 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce84 rho) (shifted84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3682) (rho 3683) (rho 3684) (rho 3685) (rho 3686) (rho 3687) (rho 3688)
      (by simpa [shiftOnce84] using hshift1On)
      (by linear_combination r3678)
      (by linear_combination r3679)
      (by linear_combination r3680)
      (by linear_combination r3681)
      (by linear_combination r3682)
    simpa [shiftOnce84, shifted84] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce84 rho) (shifted84 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce84 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 81) (rho 80)
      (base rho) (twice rho) (triple rho) (digit84 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 81) (rho 80)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3690 + rho 3691, (1 : F) + rho 3693 + rho 3694⟩ := by
      constructor
      · refine ⟨(rho 3689 + (rho 1817) - (0)), rho 3690, ?_, ?_, ?_⟩
        · linear_combination r3683
        · linear_combination r3684
        · linear_combination r3685
      · refine ⟨(rho 3692 + (rho 1818) - ((1 : F))), rho 3693, ?_, ?_, ?_⟩
        · linear_combination r3686
        · linear_combination r3687
        · linear_combination r3688
    simpa [base, twice, triple, digit84] using hraw
  have hhigh : rho 81 =
      Bool.toZMod bits[80]! := by
    simpa only using rho_bit_of_map rho bits hbits 80 (by decide +kernel)
  have hlow : rho 80 =
      Bool.toZMod bits[79]! := by
    simpa only using rho_bit_of_map rho bits hbits 79 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[80]! bits[79]! (base rho) (twice rho) (triple rho)
    (digit84 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit84 rho) := by
    rw [hdigit]
    cases bits[80]! <;> cases bits[79]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted84 rho) (digit84 rho) (acc85 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3687) (rho 3688) (rho 3690 + rho 3691) ((1 : F) + rho 3693 + rho 3694)
      (rho 3695) (rho 3696) (rho 3697) (rho 3698) (rho 3699) (rho 3700)
      (by simpa [shifted84] using hshift2On)
      (by simpa [digit84] using hdigitOn)
      (by linear_combination r3689)
      (by linear_combination r3690)
      (by linear_combination r3691)
      (by linear_combination r3692)
      (by linear_combination r3693)
      (by linear_combination r3694)
    simpa [shifted84, digit84, acc85] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc85 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted84 rho) (digit84 rho) (acc85 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted84 rho) (digit84 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 81) (rho 80)
      (base rho) (twice rho) (triple rho) (acc84 rho)
      (acc85 rho) :=
    ⟨shiftOnce84 rho, shifted84 rho, digit84 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window85 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc85 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[78]! (scalarBits rho)[77]!
        (base rho) (twice rho) (triple rho) (acc85 rho)
        (acc86 rho) ∧
      EdwardsBridge.onCurve (acc86 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3695 at r3695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3696 at r3696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3697 at r3697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3698 at r3698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3699 at r3699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3700 at r3700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3701 at r3701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3702 at r3702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3703 at r3703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3704 at r3704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3705 at r3705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3706 at r3706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3707 at r3707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3708 at r3708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3709 at r3709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3710 at r3710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3711 at r3711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3712 at r3712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3713 at r3713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3714 at r3714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3715 at r3715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3716 at r3716
  have hshift1 : EdwardsBridge.doubleSpec (acc85 rho) (shiftOnce85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3699) (rho 3700) (rho 3701) (rho 3702) (rho 3703) (rho 3704) (rho 3705)
      (by simpa [acc85] using hacc)
      (by linear_combination r3695)
      (by linear_combination r3696)
      (by linear_combination r3697)
      (by linear_combination r3698)
      (by linear_combination r3699)
    simpa [acc85, shiftOnce85] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc85 rho) (shiftOnce85 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc85 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce85 rho) (shifted85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3704) (rho 3705) (rho 3706) (rho 3707) (rho 3708) (rho 3709) (rho 3710)
      (by simpa [shiftOnce85] using hshift1On)
      (by linear_combination r3700)
      (by linear_combination r3701)
      (by linear_combination r3702)
      (by linear_combination r3703)
      (by linear_combination r3704)
    simpa [shiftOnce85, shifted85] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce85 rho) (shifted85 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce85 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 79) (rho 78)
      (base rho) (twice rho) (triple rho) (digit85 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 79) (rho 78)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3712 + rho 3713, (1 : F) + rho 3715 + rho 3716⟩ := by
      constructor
      · refine ⟨(rho 3711 + (rho 1817) - (0)), rho 3712, ?_, ?_, ?_⟩
        · linear_combination r3705
        · linear_combination r3706
        · linear_combination r3707
      · refine ⟨(rho 3714 + (rho 1818) - ((1 : F))), rho 3715, ?_, ?_, ?_⟩
        · linear_combination r3708
        · linear_combination r3709
        · linear_combination r3710
    simpa [base, twice, triple, digit85] using hraw
  have hhigh : rho 79 =
      Bool.toZMod bits[78]! := by
    simpa only using rho_bit_of_map rho bits hbits 78 (by decide +kernel)
  have hlow : rho 78 =
      Bool.toZMod bits[77]! := by
    simpa only using rho_bit_of_map rho bits hbits 77 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[78]! bits[77]! (base rho) (twice rho) (triple rho)
    (digit85 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit85 rho) := by
    rw [hdigit]
    cases bits[78]! <;> cases bits[77]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted85 rho) (digit85 rho) (acc86 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3709) (rho 3710) (rho 3712 + rho 3713) ((1 : F) + rho 3715 + rho 3716)
      (rho 3717) (rho 3718) (rho 3719) (rho 3720) (rho 3721) (rho 3722)
      (by simpa [shifted85] using hshift2On)
      (by simpa [digit85] using hdigitOn)
      (by linear_combination r3711)
      (by linear_combination r3712)
      (by linear_combination r3713)
      (by linear_combination r3714)
      (by linear_combination r3715)
      (by linear_combination r3716)
    simpa [shifted85, digit85, acc86] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc86 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted85 rho) (digit85 rho) (acc86 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted85 rho) (digit85 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 79) (rho 78)
      (base rho) (twice rho) (triple rho) (acc85 rho)
      (acc86 rho) :=
    ⟨shiftOnce85 rho, shifted85 rho, digit85 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window86 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc86 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[76]! (scalarBits rho)[75]!
        (base rho) (twice rho) (triple rho) (acc86 rho)
        (acc87 rho) ∧
      EdwardsBridge.onCurve (acc87 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3717 at r3717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3718 at r3718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3719 at r3719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3720 at r3720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3721 at r3721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3722 at r3722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3723 at r3723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3724 at r3724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3725 at r3725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3726 at r3726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3727 at r3727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3728 at r3728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3729 at r3729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3730 at r3730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3731 at r3731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3732 at r3732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3733 at r3733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3734 at r3734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3735 at r3735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3736 at r3736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3737 at r3737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3738 at r3738
  have hshift1 : EdwardsBridge.doubleSpec (acc86 rho) (shiftOnce86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3721) (rho 3722) (rho 3723) (rho 3724) (rho 3725) (rho 3726) (rho 3727)
      (by simpa [acc86] using hacc)
      (by linear_combination r3717)
      (by linear_combination r3718)
      (by linear_combination r3719)
      (by linear_combination r3720)
      (by linear_combination r3721)
    simpa [acc86, shiftOnce86] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc86 rho) (shiftOnce86 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc86 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce86 rho) (shifted86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3726) (rho 3727) (rho 3728) (rho 3729) (rho 3730) (rho 3731) (rho 3732)
      (by simpa [shiftOnce86] using hshift1On)
      (by linear_combination r3722)
      (by linear_combination r3723)
      (by linear_combination r3724)
      (by linear_combination r3725)
      (by linear_combination r3726)
    simpa [shiftOnce86, shifted86] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce86 rho) (shifted86 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce86 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 77) (rho 76)
      (base rho) (twice rho) (triple rho) (digit86 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 77) (rho 76)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3734 + rho 3735, (1 : F) + rho 3737 + rho 3738⟩ := by
      constructor
      · refine ⟨(rho 3733 + (rho 1817) - (0)), rho 3734, ?_, ?_, ?_⟩
        · linear_combination r3727
        · linear_combination r3728
        · linear_combination r3729
      · refine ⟨(rho 3736 + (rho 1818) - ((1 : F))), rho 3737, ?_, ?_, ?_⟩
        · linear_combination r3730
        · linear_combination r3731
        · linear_combination r3732
    simpa [base, twice, triple, digit86] using hraw
  have hhigh : rho 77 =
      Bool.toZMod bits[76]! := by
    simpa only using rho_bit_of_map rho bits hbits 76 (by decide +kernel)
  have hlow : rho 76 =
      Bool.toZMod bits[75]! := by
    simpa only using rho_bit_of_map rho bits hbits 75 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[76]! bits[75]! (base rho) (twice rho) (triple rho)
    (digit86 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit86 rho) := by
    rw [hdigit]
    cases bits[76]! <;> cases bits[75]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted86 rho) (digit86 rho) (acc87 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3731) (rho 3732) (rho 3734 + rho 3735) ((1 : F) + rho 3737 + rho 3738)
      (rho 3739) (rho 3740) (rho 3741) (rho 3742) (rho 3743) (rho 3744)
      (by simpa [shifted86] using hshift2On)
      (by simpa [digit86] using hdigitOn)
      (by linear_combination r3733)
      (by linear_combination r3734)
      (by linear_combination r3735)
      (by linear_combination r3736)
      (by linear_combination r3737)
      (by linear_combination r3738)
    simpa [shifted86, digit86, acc87] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc87 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted86 rho) (digit86 rho) (acc87 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted86 rho) (digit86 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 77) (rho 76)
      (base rho) (twice rho) (triple rho) (acc86 rho)
      (acc87 rho) :=
    ⟨shiftOnce86 rho, shifted86 rho, digit86 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window87 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc87 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[74]! (scalarBits rho)[73]!
        (base rho) (twice rho) (triple rho) (acc87 rho)
        (acc88 rho) ∧
      EdwardsBridge.onCurve (acc88 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart47 at p47
  rcases p47 with ⟨r3760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3739 at r3739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3740 at r3740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3741 at r3741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3742 at r3742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3743 at r3743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3744 at r3744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3745 at r3745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3746 at r3746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3747 at r3747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3748 at r3748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3749 at r3749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3750 at r3750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3751 at r3751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3752 at r3752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3753 at r3753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3754 at r3754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3755 at r3755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3756 at r3756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3757 at r3757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3758 at r3758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3759 at r3759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3760 at r3760
  have hshift1 : EdwardsBridge.doubleSpec (acc87 rho) (shiftOnce87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3743) (rho 3744) (rho 3745) (rho 3746) (rho 3747) (rho 3748) (rho 3749)
      (by simpa [acc87] using hacc)
      (by linear_combination r3739)
      (by linear_combination r3740)
      (by linear_combination r3741)
      (by linear_combination r3742)
      (by linear_combination r3743)
    simpa [acc87, shiftOnce87] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc87 rho) (shiftOnce87 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc87 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce87 rho) (shifted87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3748) (rho 3749) (rho 3750) (rho 3751) (rho 3752) (rho 3753) (rho 3754)
      (by simpa [shiftOnce87] using hshift1On)
      (by linear_combination r3744)
      (by linear_combination r3745)
      (by linear_combination r3746)
      (by linear_combination r3747)
      (by linear_combination r3748)
    simpa [shiftOnce87, shifted87] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce87 rho) (shifted87 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce87 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 75) (rho 74)
      (base rho) (twice rho) (triple rho) (digit87 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 75) (rho 74)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3756 + rho 3757, (1 : F) + rho 3759 + rho 3760⟩ := by
      constructor
      · refine ⟨(rho 3755 + (rho 1817) - (0)), rho 3756, ?_, ?_, ?_⟩
        · linear_combination r3749
        · linear_combination r3750
        · linear_combination r3751
      · refine ⟨(rho 3758 + (rho 1818) - ((1 : F))), rho 3759, ?_, ?_, ?_⟩
        · linear_combination r3752
        · linear_combination r3753
        · linear_combination r3754
    simpa [base, twice, triple, digit87] using hraw
  have hhigh : rho 75 =
      Bool.toZMod bits[74]! := by
    simpa only using rho_bit_of_map rho bits hbits 74 (by decide +kernel)
  have hlow : rho 74 =
      Bool.toZMod bits[73]! := by
    simpa only using rho_bit_of_map rho bits hbits 73 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[74]! bits[73]! (base rho) (twice rho) (triple rho)
    (digit87 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit87 rho) := by
    rw [hdigit]
    cases bits[74]! <;> cases bits[73]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted87 rho) (digit87 rho) (acc88 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3753) (rho 3754) (rho 3756 + rho 3757) ((1 : F) + rho 3759 + rho 3760)
      (rho 3761) (rho 3762) (rho 3763) (rho 3764) (rho 3765) (rho 3766)
      (by simpa [shifted87] using hshift2On)
      (by simpa [digit87] using hdigitOn)
      (by linear_combination r3755)
      (by linear_combination r3756)
      (by linear_combination r3757)
      (by linear_combination r3758)
      (by linear_combination r3759)
      (by linear_combination r3760)
    simpa [shifted87, digit87, acc88] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc88 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted87 rho) (digit87 rho) (acc88 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted87 rho) (digit87 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 75) (rho 74)
      (base rho) (twice rho) (triple rho) (acc87 rho)
      (acc88 rho) :=
    ⟨shiftOnce87 rho, shifted87 rho, digit87 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window88 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc88 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[72]! (scalarBits rho)[71]!
        (base rho) (twice rho) (triple rho) (acc88 rho)
        (acc89 rho) ∧
      EdwardsBridge.onCurve (acc89 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart47 at p47
  rcases p47 with ⟨_, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3761 at r3761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3762 at r3762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3763 at r3763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3764 at r3764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3765 at r3765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3766 at r3766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3767 at r3767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3768 at r3768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3769 at r3769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3770 at r3770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3771 at r3771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3772 at r3772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3773 at r3773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3774 at r3774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3775 at r3775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3776 at r3776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3777 at r3777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3778 at r3778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3779 at r3779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3780 at r3780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3781 at r3781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3782 at r3782
  have hshift1 : EdwardsBridge.doubleSpec (acc88 rho) (shiftOnce88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3765) (rho 3766) (rho 3767) (rho 3768) (rho 3769) (rho 3770) (rho 3771)
      (by simpa [acc88] using hacc)
      (by linear_combination r3761)
      (by linear_combination r3762)
      (by linear_combination r3763)
      (by linear_combination r3764)
      (by linear_combination r3765)
    simpa [acc88, shiftOnce88] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc88 rho) (shiftOnce88 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc88 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce88 rho) (shifted88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3770) (rho 3771) (rho 3772) (rho 3773) (rho 3774) (rho 3775) (rho 3776)
      (by simpa [shiftOnce88] using hshift1On)
      (by linear_combination r3766)
      (by linear_combination r3767)
      (by linear_combination r3768)
      (by linear_combination r3769)
      (by linear_combination r3770)
    simpa [shiftOnce88, shifted88] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce88 rho) (shifted88 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce88 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 73) (rho 72)
      (base rho) (twice rho) (triple rho) (digit88 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 73) (rho 72)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3778 + rho 3779, (1 : F) + rho 3781 + rho 3782⟩ := by
      constructor
      · refine ⟨(rho 3777 + (rho 1817) - (0)), rho 3778, ?_, ?_, ?_⟩
        · linear_combination r3771
        · linear_combination r3772
        · linear_combination r3773
      · refine ⟨(rho 3780 + (rho 1818) - ((1 : F))), rho 3781, ?_, ?_, ?_⟩
        · linear_combination r3774
        · linear_combination r3775
        · linear_combination r3776
    simpa [base, twice, triple, digit88] using hraw
  have hhigh : rho 73 =
      Bool.toZMod bits[72]! := by
    simpa only using rho_bit_of_map rho bits hbits 72 (by decide +kernel)
  have hlow : rho 72 =
      Bool.toZMod bits[71]! := by
    simpa only using rho_bit_of_map rho bits hbits 71 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[72]! bits[71]! (base rho) (twice rho) (triple rho)
    (digit88 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit88 rho) := by
    rw [hdigit]
    cases bits[72]! <;> cases bits[71]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted88 rho) (digit88 rho) (acc89 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3775) (rho 3776) (rho 3778 + rho 3779) ((1 : F) + rho 3781 + rho 3782)
      (rho 3783) (rho 3784) (rho 3785) (rho 3786) (rho 3787) (rho 3788)
      (by simpa [shifted88] using hshift2On)
      (by simpa [digit88] using hdigitOn)
      (by linear_combination r3777)
      (by linear_combination r3778)
      (by linear_combination r3779)
      (by linear_combination r3780)
      (by linear_combination r3781)
      (by linear_combination r3782)
    simpa [shifted88, digit88, acc89] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc89 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted88 rho) (digit88 rho) (acc89 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted88 rho) (digit88 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 73) (rho 72)
      (base rho) (twice rho) (triple rho) (acc88 rho)
      (acc89 rho) :=
    ⟨shiftOnce88 rho, shifted88 rho, digit88 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window89 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc89 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[70]! (scalarBits rho)[69]!
        (base rho) (twice rho) (triple rho) (acc89 rho)
        (acc90 rho) ∧
      EdwardsBridge.onCurve (acc90 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, r3799, r3800, r3801, r3802, r3803, r3804, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3783 at r3783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3784 at r3784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3785 at r3785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3786 at r3786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3787 at r3787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3788 at r3788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3789 at r3789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3790 at r3790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3791 at r3791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3792 at r3792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3793 at r3793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3794 at r3794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3795 at r3795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3796 at r3796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3797 at r3797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3798 at r3798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3799 at r3799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3800 at r3800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3801 at r3801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3802 at r3802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3803 at r3803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow3804 at r3804
  have hshift1 : EdwardsBridge.doubleSpec (acc89 rho) (shiftOnce89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3787) (rho 3788) (rho 3789) (rho 3790) (rho 3791) (rho 3792) (rho 3793)
      (by simpa [acc89] using hacc)
      (by linear_combination r3783)
      (by linear_combination r3784)
      (by linear_combination r3785)
      (by linear_combination r3786)
      (by linear_combination r3787)
    simpa [acc89, shiftOnce89] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc89 rho) (shiftOnce89 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc89 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce89 rho) (shifted89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3792) (rho 3793) (rho 3794) (rho 3795) (rho 3796) (rho 3797) (rho 3798)
      (by simpa [shiftOnce89] using hshift1On)
      (by linear_combination r3788)
      (by linear_combination r3789)
      (by linear_combination r3790)
      (by linear_combination r3791)
      (by linear_combination r3792)
    simpa [shiftOnce89, shifted89] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce89 rho) (shifted89 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce89 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 71) (rho 70)
      (base rho) (twice rho) (triple rho) (digit89 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 71) (rho 70)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 3800 + rho 3801, (1 : F) + rho 3803 + rho 3804⟩ := by
      constructor
      · refine ⟨(rho 3799 + (rho 1817) - (0)), rho 3800, ?_, ?_, ?_⟩
        · linear_combination r3793
        · linear_combination r3794
        · linear_combination r3795
      · refine ⟨(rho 3802 + (rho 1818) - ((1 : F))), rho 3803, ?_, ?_, ?_⟩
        · linear_combination r3796
        · linear_combination r3797
        · linear_combination r3798
    simpa [base, twice, triple, digit89] using hraw
  have hhigh : rho 71 =
      Bool.toZMod bits[70]! := by
    simpa only using rho_bit_of_map rho bits hbits 70 (by decide +kernel)
  have hlow : rho 70 =
      Bool.toZMod bits[69]! := by
    simpa only using rho_bit_of_map rho bits hbits 69 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[70]! bits[69]! (base rho) (twice rho) (triple rho)
    (digit89 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit89 rho) := by
    rw [hdigit]
    cases bits[70]! <;> cases bits[69]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted89 rho) (digit89 rho) (acc90 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3797) (rho 3798) (rho 3800 + rho 3801) ((1 : F) + rho 3803 + rho 3804)
      (rho 3805) (rho 3806) (rho 3807) (rho 3808) (rho 3809) (rho 3810)
      (by simpa [shifted89] using hshift2On)
      (by simpa [digit89] using hdigitOn)
      (by linear_combination r3799)
      (by linear_combination r3800)
      (by linear_combination r3801)
      (by linear_combination r3802)
      (by linear_combination r3803)
      (by linear_combination r3804)
    simpa [shifted89, digit89, acc90] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc90 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted89 rho) (digit89 rho) (acc90 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted89 rho) (digit89 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 71) (rho 70)
      (base rho) (twice rho) (triple rho) (acc89 rho)
      (acc90 rho) :=
    ⟨shiftOnce89 rho, shifted89 rho, digit89 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
