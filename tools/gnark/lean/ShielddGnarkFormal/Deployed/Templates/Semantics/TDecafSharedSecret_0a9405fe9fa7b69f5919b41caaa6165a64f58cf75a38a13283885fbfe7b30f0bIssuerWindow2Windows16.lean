import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window96 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc96 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[56]! (scalarBits rho)[55]!
        (base rho) (twice rho) (triple rho) (acc96 rho)
        (acc97 rho) ∧
      EdwardsBridge.onCurve (acc97 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart83 at p83
  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6696, r6697, r6698, r6699, r6700, r6701, r6702, r6703, r6704, r6705, r6706, r6707, r6708, r6709, r6710, r6711, r6712, r6713, r6714, r6715, r6716, r6717, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6696 at r6696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6697 at r6697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6698 at r6698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6699 at r6699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6700 at r6700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6701 at r6701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6702 at r6702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6703 at r6703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6704 at r6704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6705 at r6705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6706 at r6706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6707 at r6707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6708 at r6708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6709 at r6709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6710 at r6710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6711 at r6711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6712 at r6712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6713 at r6713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6714 at r6714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6715 at r6715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6716 at r6716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6717 at r6717
  have hshift1 : EdwardsBridge.doubleSpec (acc96 rho) (shiftOnce96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6702) (rho 6703) (rho 6704) (rho 6705) (rho 6706) (rho 6707) (rho 6708)
      (by simpa [acc96] using hacc)
      (by linear_combination r6696)
      (by linear_combination r6697)
      (by linear_combination r6698)
      (by linear_combination r6699)
      (by linear_combination r6700)
    simpa [acc96, shiftOnce96] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc96 rho) (shiftOnce96 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc96 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce96 rho) (shifted96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6707) (rho 6708) (rho 6709) (rho 6710) (rho 6711) (rho 6712) (rho 6713)
      (by simpa [shiftOnce96] using hshift1On)
      (by linear_combination r6701)
      (by linear_combination r6702)
      (by linear_combination r6703)
      (by linear_combination r6704)
      (by linear_combination r6705)
    simpa [shiftOnce96, shifted96] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce96 rho) (shifted96 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce96 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 58) (rho 57)
      (base rho) (twice rho) (triple rho) (digit96 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 58) (rho 57)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6715 + rho 6716, (1 : F) + rho 6718 + rho 6719⟩ := by
      constructor
      · refine ⟨(rho 6714 + (rho 4578) - (0)), rho 6715, ?_, ?_, ?_⟩
        · linear_combination r6706 - (rho 57) * order_cast_zero
        · linear_combination r6707
        · linear_combination r6708
      · refine ⟨(rho 6717 + (rho 4579) - ((1 : F))), rho 6718, ?_, ?_, ?_⟩
        · linear_combination r6709 - (rho 57) * order_cast_zero
        · linear_combination r6710
        · linear_combination r6711
    simpa [base, twice, triple, digit96] using hraw
  have hhigh : rho 58 =
      Bool.toZMod bits[56]! := by
    simpa only using rho_bit_of_map rho bits hbits 56 (by decide +kernel)
  have hlow : rho 57 =
      Bool.toZMod bits[55]! := by
    simpa only using rho_bit_of_map rho bits hbits 55 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[56]! bits[55]! (base rho) (twice rho) (triple rho)
    (digit96 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit96 rho) := by
    rw [hdigit]
    cases bits[56]! <;> cases bits[55]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted96 rho) (digit96 rho) (acc97 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6712) (rho 6713) (rho 6715 + rho 6716) ((1 : F) + rho 6718 + rho 6719)
      (rho 6720) (rho 6721) (rho 6722) (rho 6723) (rho 6724) (rho 6725)
      (by simpa [shifted96] using hshift2On)
      (by simpa [digit96] using hdigitOn)
      (by linear_combination r6712)
      (by linear_combination r6713)
      (by linear_combination r6714)
      (by linear_combination r6715)
      (by linear_combination r6716)
      (by linear_combination r6717)
    simpa [shifted96, digit96, acc97] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc97 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted96 rho) (digit96 rho) (acc97 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted96 rho) (digit96 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 58) (rho 57)
      (base rho) (twice rho) (triple rho) (acc96 rho)
      (acc97 rho) :=
    ⟨shiftOnce96 rho, shifted96 rho, digit96 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window97 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc97 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[54]! (scalarBits rho)[53]!
        (base rho) (twice rho) (triple rho) (acc97 rho)
        (acc98 rho) ∧
      EdwardsBridge.onCurve (acc98 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p83, p84, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart83 at p83
  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6718, r6719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart84 at p84
  rcases p84 with ⟨r6720, r6721, r6722, r6723, r6724, r6725, r6726, r6727, r6728, r6729, r6730, r6731, r6732, r6733, r6734, r6735, r6736, r6737, r6738, r6739, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6718 at r6718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6719 at r6719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6720 at r6720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6721 at r6721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6722 at r6722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6723 at r6723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6724 at r6724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6725 at r6725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6726 at r6726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6727 at r6727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6728 at r6728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6729 at r6729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6730 at r6730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6731 at r6731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6732 at r6732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6733 at r6733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6734 at r6734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6735 at r6735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6736 at r6736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6737 at r6737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6738 at r6738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6739 at r6739
  have hshift1 : EdwardsBridge.doubleSpec (acc97 rho) (shiftOnce97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6724) (rho 6725) (rho 6726) (rho 6727) (rho 6728) (rho 6729) (rho 6730)
      (by simpa [acc97] using hacc)
      (by linear_combination r6718)
      (by linear_combination r6719)
      (by linear_combination r6720)
      (by linear_combination r6721)
      (by linear_combination r6722)
    simpa [acc97, shiftOnce97] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc97 rho) (shiftOnce97 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc97 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce97 rho) (shifted97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6729) (rho 6730) (rho 6731) (rho 6732) (rho 6733) (rho 6734) (rho 6735)
      (by simpa [shiftOnce97] using hshift1On)
      (by linear_combination r6723)
      (by linear_combination r6724)
      (by linear_combination r6725)
      (by linear_combination r6726)
      (by linear_combination r6727)
    simpa [shiftOnce97, shifted97] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce97 rho) (shifted97 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce97 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 56) (rho 55)
      (base rho) (twice rho) (triple rho) (digit97 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 56) (rho 55)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6737 + rho 6738, (1 : F) + rho 6740 + rho 6741⟩ := by
      constructor
      · refine ⟨(rho 6736 + (rho 4578) - (0)), rho 6737, ?_, ?_, ?_⟩
        · linear_combination r6728 - (rho 55) * order_cast_zero
        · linear_combination r6729
        · linear_combination r6730
      · refine ⟨(rho 6739 + (rho 4579) - ((1 : F))), rho 6740, ?_, ?_, ?_⟩
        · linear_combination r6731 - (rho 55) * order_cast_zero
        · linear_combination r6732
        · linear_combination r6733
    simpa [base, twice, triple, digit97] using hraw
  have hhigh : rho 56 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 55 =
      Bool.toZMod bits[53]! := by
    simpa only using rho_bit_of_map rho bits hbits 53 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[54]! bits[53]! (base rho) (twice rho) (triple rho)
    (digit97 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit97 rho) := by
    rw [hdigit]
    cases bits[54]! <;> cases bits[53]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted97 rho) (digit97 rho) (acc98 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6734) (rho 6735) (rho 6737 + rho 6738) ((1 : F) + rho 6740 + rho 6741)
      (rho 6742) (rho 6743) (rho 6744) (rho 6745) (rho 6746) (rho 6747)
      (by simpa [shifted97] using hshift2On)
      (by simpa [digit97] using hdigitOn)
      (by linear_combination r6734)
      (by linear_combination r6735)
      (by linear_combination r6736)
      (by linear_combination r6737)
      (by linear_combination r6738)
      (by linear_combination r6739)
    simpa [shifted97, digit97, acc98] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc98 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted97 rho) (digit97 rho) (acc98 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted97 rho) (digit97 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 56) (rho 55)
      (base rho) (twice rho) (triple rho) (acc97 rho)
      (acc98 rho) :=
    ⟨shiftOnce97 rho, shifted97 rho, digit97 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window98 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc98 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[52]! (scalarBits rho)[51]!
        (base rho) (twice rho) (triple rho) (acc98 rho)
        (acc99 rho) ∧
      EdwardsBridge.onCurve (acc99 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p84, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart84 at p84
  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6740, r6741, r6742, r6743, r6744, r6745, r6746, r6747, r6748, r6749, r6750, r6751, r6752, r6753, r6754, r6755, r6756, r6757, r6758, r6759, r6760, r6761, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6740 at r6740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6741 at r6741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6742 at r6742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6743 at r6743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6744 at r6744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6745 at r6745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6746 at r6746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6747 at r6747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6748 at r6748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6749 at r6749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6750 at r6750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6751 at r6751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6752 at r6752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6753 at r6753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6754 at r6754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6755 at r6755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6756 at r6756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6757 at r6757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6758 at r6758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6759 at r6759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6760 at r6760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6761 at r6761
  have hshift1 : EdwardsBridge.doubleSpec (acc98 rho) (shiftOnce98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6746) (rho 6747) (rho 6748) (rho 6749) (rho 6750) (rho 6751) (rho 6752)
      (by simpa [acc98] using hacc)
      (by linear_combination r6740)
      (by linear_combination r6741)
      (by linear_combination r6742)
      (by linear_combination r6743)
      (by linear_combination r6744)
    simpa [acc98, shiftOnce98] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc98 rho) (shiftOnce98 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc98 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce98 rho) (shifted98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6751) (rho 6752) (rho 6753) (rho 6754) (rho 6755) (rho 6756) (rho 6757)
      (by simpa [shiftOnce98] using hshift1On)
      (by linear_combination r6745)
      (by linear_combination r6746)
      (by linear_combination r6747)
      (by linear_combination r6748)
      (by linear_combination r6749)
    simpa [shiftOnce98, shifted98] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce98 rho) (shifted98 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce98 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 54) (rho 53)
      (base rho) (twice rho) (triple rho) (digit98 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 54) (rho 53)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6759 + rho 6760, (1 : F) + rho 6762 + rho 6763⟩ := by
      constructor
      · refine ⟨(rho 6758 + (rho 4578) - (0)), rho 6759, ?_, ?_, ?_⟩
        · linear_combination r6750 - (rho 53) * order_cast_zero
        · linear_combination r6751
        · linear_combination r6752
      · refine ⟨(rho 6761 + (rho 4579) - ((1 : F))), rho 6762, ?_, ?_, ?_⟩
        · linear_combination r6753 - (rho 53) * order_cast_zero
        · linear_combination r6754
        · linear_combination r6755
    simpa [base, twice, triple, digit98] using hraw
  have hhigh : rho 54 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 53 =
      Bool.toZMod bits[51]! := by
    simpa only using rho_bit_of_map rho bits hbits 51 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[52]! bits[51]! (base rho) (twice rho) (triple rho)
    (digit98 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit98 rho) := by
    rw [hdigit]
    cases bits[52]! <;> cases bits[51]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted98 rho) (digit98 rho) (acc99 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6756) (rho 6757) (rho 6759 + rho 6760) ((1 : F) + rho 6762 + rho 6763)
      (rho 6764) (rho 6765) (rho 6766) (rho 6767) (rho 6768) (rho 6769)
      (by simpa [shifted98] using hshift2On)
      (by simpa [digit98] using hdigitOn)
      (by linear_combination r6756)
      (by linear_combination r6757)
      (by linear_combination r6758)
      (by linear_combination r6759)
      (by linear_combination r6760)
      (by linear_combination r6761)
    simpa [shifted98, digit98, acc99] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc99 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted98 rho) (digit98 rho) (acc99 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted98 rho) (digit98 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 54) (rho 53)
      (base rho) (twice rho) (triple rho) (acc98 rho)
      (acc99 rho) :=
    ⟨shiftOnce98 rho, shifted98 rho, digit98 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window99 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc99 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[50]! (scalarBits rho)[49]!
        (base rho) (twice rho) (triple rho) (acc99 rho)
        (acc100 rho) ∧
      EdwardsBridge.onCurve (acc100 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p84, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart84 at p84
  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6762, r6763, r6764, r6765, r6766, r6767, r6768, r6769, r6770, r6771, r6772, r6773, r6774, r6775, r6776, r6777, r6778, r6779, r6780, r6781, r6782, r6783, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6762 at r6762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6763 at r6763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6764 at r6764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6765 at r6765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6766 at r6766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6767 at r6767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6768 at r6768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6769 at r6769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6770 at r6770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6771 at r6771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6772 at r6772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6773 at r6773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6774 at r6774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6775 at r6775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6776 at r6776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6777 at r6777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6778 at r6778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6779 at r6779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6780 at r6780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6781 at r6781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6782 at r6782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6783 at r6783
  have hshift1 : EdwardsBridge.doubleSpec (acc99 rho) (shiftOnce99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6768) (rho 6769) (rho 6770) (rho 6771) (rho 6772) (rho 6773) (rho 6774)
      (by simpa [acc99] using hacc)
      (by linear_combination r6762)
      (by linear_combination r6763)
      (by linear_combination r6764)
      (by linear_combination r6765)
      (by linear_combination r6766)
    simpa [acc99, shiftOnce99] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc99 rho) (shiftOnce99 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc99 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce99 rho) (shifted99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6773) (rho 6774) (rho 6775) (rho 6776) (rho 6777) (rho 6778) (rho 6779)
      (by simpa [shiftOnce99] using hshift1On)
      (by linear_combination r6767)
      (by linear_combination r6768)
      (by linear_combination r6769)
      (by linear_combination r6770)
      (by linear_combination r6771)
    simpa [shiftOnce99, shifted99] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce99 rho) (shifted99 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce99 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 52) (rho 51)
      (base rho) (twice rho) (triple rho) (digit99 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 52) (rho 51)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6781 + rho 6782, (1 : F) + rho 6784 + rho 6785⟩ := by
      constructor
      · refine ⟨(rho 6780 + (rho 4578) - (0)), rho 6781, ?_, ?_, ?_⟩
        · linear_combination r6772 - (rho 51) * order_cast_zero
        · linear_combination r6773
        · linear_combination r6774
      · refine ⟨(rho 6783 + (rho 4579) - ((1 : F))), rho 6784, ?_, ?_, ?_⟩
        · linear_combination r6775 - (rho 51) * order_cast_zero
        · linear_combination r6776
        · linear_combination r6777
    simpa [base, twice, triple, digit99] using hraw
  have hhigh : rho 52 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 51 =
      Bool.toZMod bits[49]! := by
    simpa only using rho_bit_of_map rho bits hbits 49 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[50]! bits[49]! (base rho) (twice rho) (triple rho)
    (digit99 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit99 rho) := by
    rw [hdigit]
    cases bits[50]! <;> cases bits[49]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted99 rho) (digit99 rho) (acc100 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6778) (rho 6779) (rho 6781 + rho 6782) ((1 : F) + rho 6784 + rho 6785)
      (rho 6786) (rho 6787) (rho 6788) (rho 6789) (rho 6790) (rho 6791)
      (by simpa [shifted99] using hshift2On)
      (by simpa [digit99] using hdigitOn)
      (by linear_combination r6778)
      (by linear_combination r6779)
      (by linear_combination r6780)
      (by linear_combination r6781)
      (by linear_combination r6782)
      (by linear_combination r6783)
    simpa [shifted99, digit99, acc100] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc100 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted99 rho) (digit99 rho) (acc100 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted99 rho) (digit99 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 52) (rho 51)
      (base rho) (twice rho) (triple rho) (acc99 rho)
      (acc100 rho) :=
    ⟨shiftOnce99 rho, shifted99 rho, digit99 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window100 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc100 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[48]! (scalarBits rho)[47]!
        (base rho) (twice rho) (triple rho) (acc100 rho)
        (acc101 rho) ∧
      EdwardsBridge.onCurve (acc101 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p84, p85, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart84 at p84
  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6784, r6785, r6786, r6787, r6788, r6789, r6790, r6791, r6792, r6793, r6794, r6795, r6796, r6797, r6798, r6799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart85 at p85
  rcases p85 with ⟨r6800, r6801, r6802, r6803, r6804, r6805, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6784 at r6784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6785 at r6785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6786 at r6786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6787 at r6787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6788 at r6788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6789 at r6789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6790 at r6790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6791 at r6791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6792 at r6792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6793 at r6793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6794 at r6794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6795 at r6795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6796 at r6796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6797 at r6797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6798 at r6798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6799 at r6799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6800 at r6800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6801 at r6801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6802 at r6802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6803 at r6803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6804 at r6804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6805 at r6805
  have hshift1 : EdwardsBridge.doubleSpec (acc100 rho) (shiftOnce100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6790) (rho 6791) (rho 6792) (rho 6793) (rho 6794) (rho 6795) (rho 6796)
      (by simpa [acc100] using hacc)
      (by linear_combination r6784)
      (by linear_combination r6785)
      (by linear_combination r6786)
      (by linear_combination r6787)
      (by linear_combination r6788)
    simpa [acc100, shiftOnce100] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc100 rho) (shiftOnce100 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc100 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce100 rho) (shifted100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6795) (rho 6796) (rho 6797) (rho 6798) (rho 6799) (rho 6800) (rho 6801)
      (by simpa [shiftOnce100] using hshift1On)
      (by linear_combination r6789)
      (by linear_combination r6790)
      (by linear_combination r6791)
      (by linear_combination r6792)
      (by linear_combination r6793)
    simpa [shiftOnce100, shifted100] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce100 rho) (shifted100 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce100 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 50) (rho 49)
      (base rho) (twice rho) (triple rho) (digit100 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 50) (rho 49)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6803 + rho 6804, (1 : F) + rho 6806 + rho 6807⟩ := by
      constructor
      · refine ⟨(rho 6802 + (rho 4578) - (0)), rho 6803, ?_, ?_, ?_⟩
        · linear_combination r6794 - (rho 49) * order_cast_zero
        · linear_combination r6795
        · linear_combination r6796
      · refine ⟨(rho 6805 + (rho 4579) - ((1 : F))), rho 6806, ?_, ?_, ?_⟩
        · linear_combination r6797 - (rho 49) * order_cast_zero
        · linear_combination r6798
        · linear_combination r6799
    simpa [base, twice, triple, digit100] using hraw
  have hhigh : rho 50 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 49 =
      Bool.toZMod bits[47]! := by
    simpa only using rho_bit_of_map rho bits hbits 47 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[48]! bits[47]! (base rho) (twice rho) (triple rho)
    (digit100 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit100 rho) := by
    rw [hdigit]
    cases bits[48]! <;> cases bits[47]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted100 rho) (digit100 rho) (acc101 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6800) (rho 6801) (rho 6803 + rho 6804) ((1 : F) + rho 6806 + rho 6807)
      (rho 6808) (rho 6809) (rho 6810) (rho 6811) (rho 6812) (rho 6813)
      (by simpa [shifted100] using hshift2On)
      (by simpa [digit100] using hdigitOn)
      (by linear_combination r6800)
      (by linear_combination r6801)
      (by linear_combination r6802)
      (by linear_combination r6803)
      (by linear_combination r6804)
      (by linear_combination r6805)
    simpa [shifted100, digit100, acc101] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc101 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted100 rho) (digit100 rho) (acc101 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted100 rho) (digit100 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 50) (rho 49)
      (base rho) (twice rho) (triple rho) (acc100 rho)
      (acc101 rho) :=
    ⟨shiftOnce100 rho, shifted100 rho, digit100 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window101 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc101 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[46]! (scalarBits rho)[45]!
        (base rho) (twice rho) (triple rho) (acc101 rho)
        (acc102 rho) ∧
      EdwardsBridge.onCurve (acc102 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p85, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, r6806, r6807, r6808, r6809, r6810, r6811, r6812, r6813, r6814, r6815, r6816, r6817, r6818, r6819, r6820, r6821, r6822, r6823, r6824, r6825, r6826, r6827, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6806 at r6806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6807 at r6807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6808 at r6808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6809 at r6809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6810 at r6810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6811 at r6811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6812 at r6812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6813 at r6813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6814 at r6814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6815 at r6815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6816 at r6816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6817 at r6817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6818 at r6818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6819 at r6819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6820 at r6820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6821 at r6821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6822 at r6822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6823 at r6823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6824 at r6824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6825 at r6825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6826 at r6826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6827 at r6827
  have hshift1 : EdwardsBridge.doubleSpec (acc101 rho) (shiftOnce101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6812) (rho 6813) (rho 6814) (rho 6815) (rho 6816) (rho 6817) (rho 6818)
      (by simpa [acc101] using hacc)
      (by linear_combination r6806)
      (by linear_combination r6807)
      (by linear_combination r6808)
      (by linear_combination r6809)
      (by linear_combination r6810)
    simpa [acc101, shiftOnce101] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc101 rho) (shiftOnce101 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc101 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce101 rho) (shifted101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6817) (rho 6818) (rho 6819) (rho 6820) (rho 6821) (rho 6822) (rho 6823)
      (by simpa [shiftOnce101] using hshift1On)
      (by linear_combination r6811)
      (by linear_combination r6812)
      (by linear_combination r6813)
      (by linear_combination r6814)
      (by linear_combination r6815)
    simpa [shiftOnce101, shifted101] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce101 rho) (shifted101 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce101 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 48) (rho 47)
      (base rho) (twice rho) (triple rho) (digit101 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 48) (rho 47)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6825 + rho 6826, (1 : F) + rho 6828 + rho 6829⟩ := by
      constructor
      · refine ⟨(rho 6824 + (rho 4578) - (0)), rho 6825, ?_, ?_, ?_⟩
        · linear_combination r6816 - (rho 47) * order_cast_zero
        · linear_combination r6817
        · linear_combination r6818
      · refine ⟨(rho 6827 + (rho 4579) - ((1 : F))), rho 6828, ?_, ?_, ?_⟩
        · linear_combination r6819 - (rho 47) * order_cast_zero
        · linear_combination r6820
        · linear_combination r6821
    simpa [base, twice, triple, digit101] using hraw
  have hhigh : rho 48 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 47 =
      Bool.toZMod bits[45]! := by
    simpa only using rho_bit_of_map rho bits hbits 45 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[46]! bits[45]! (base rho) (twice rho) (triple rho)
    (digit101 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit101 rho) := by
    rw [hdigit]
    cases bits[46]! <;> cases bits[45]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted101 rho) (digit101 rho) (acc102 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6822) (rho 6823) (rho 6825 + rho 6826) ((1 : F) + rho 6828 + rho 6829)
      (rho 6830) (rho 6831) (rho 6832) (rho 6833) (rho 6834) (rho 6835)
      (by simpa [shifted101] using hshift2On)
      (by simpa [digit101] using hdigitOn)
      (by linear_combination r6822)
      (by linear_combination r6823)
      (by linear_combination r6824)
      (by linear_combination r6825)
      (by linear_combination r6826)
      (by linear_combination r6827)
    simpa [shifted101, digit101, acc102] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc102 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted101 rho) (digit101 rho) (acc102 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted101 rho) (digit101 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 48) (rho 47)
      (base rho) (twice rho) (triple rho) (acc101 rho)
      (acc102 rho) :=
    ⟨shiftOnce101 rho, shifted101 rho, digit101 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
