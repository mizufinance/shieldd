import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window48 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc48 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[152]! (scalarBits rho)[151]!
        (base rho) (twice rho) (triple rho) (acc48 rho)
        (acc49 rho) ∧
      EdwardsBridge.onCurve (acc49 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5640 at r5640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5641 at r5641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5642 at r5642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5643 at r5643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5644 at r5644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5645 at r5645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5646 at r5646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5647 at r5647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5648 at r5648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5649 at r5649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5650 at r5650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5651 at r5651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5652 at r5652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5653 at r5653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5654 at r5654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5655 at r5655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5656 at r5656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5657 at r5657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5658 at r5658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5659 at r5659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5660 at r5660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5661 at r5661
  have hshift1 : EdwardsBridge.doubleSpec (acc48 rho) (shiftOnce48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5646) (rho 5647) (rho 5648) (rho 5649) (rho 5650) (rho 5651) (rho 5652)
      (by simpa [acc48] using hacc)
      (by linear_combination r5640)
      (by linear_combination r5641)
      (by linear_combination r5642)
      (by linear_combination r5643)
      (by linear_combination r5644)
    simpa [acc48, shiftOnce48] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc48 rho) (shiftOnce48 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc48 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce48 rho) (shifted48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5651) (rho 5652) (rho 5653) (rho 5654) (rho 5655) (rho 5656) (rho 5657)
      (by simpa [shiftOnce48] using hshift1On)
      (by linear_combination r5645)
      (by linear_combination r5646)
      (by linear_combination r5647)
      (by linear_combination r5648)
      (by linear_combination r5649)
    simpa [shiftOnce48, shifted48] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce48 rho) (shifted48 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce48 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 154) (rho 153)
      (base rho) (twice rho) (triple rho) (digit48 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 154) (rho 153)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5659 + rho 5660, (1 : F) + rho 5662 + rho 5663⟩ := by
      constructor
      · refine ⟨(rho 5658 + (rho 4578) - (0)), rho 5659, ?_, ?_, ?_⟩
        · linear_combination r5650 - (rho 153) * order_cast_zero
        · linear_combination r5651
        · linear_combination r5652
      · refine ⟨(rho 5661 + (rho 4579) - ((1 : F))), rho 5662, ?_, ?_, ?_⟩
        · linear_combination r5653 - (rho 153) * order_cast_zero
        · linear_combination r5654
        · linear_combination r5655
    simpa [base, twice, triple, digit48] using hraw
  have hhigh : rho 154 =
      Bool.toZMod bits[152]! := by
    simpa only using rho_bit_of_map rho bits hbits 152 (by decide +kernel)
  have hlow : rho 153 =
      Bool.toZMod bits[151]! := by
    simpa only using rho_bit_of_map rho bits hbits 151 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[152]! bits[151]! (base rho) (twice rho) (triple rho)
    (digit48 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit48 rho) := by
    rw [hdigit]
    cases bits[152]! <;> cases bits[151]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted48 rho) (digit48 rho) (acc49 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5656) (rho 5657) (rho 5659 + rho 5660) ((1 : F) + rho 5662 + rho 5663)
      (rho 5664) (rho 5665) (rho 5666) (rho 5667) (rho 5668) (rho 5669)
      (by simpa [shifted48] using hshift2On)
      (by simpa [digit48] using hdigitOn)
      (by linear_combination r5656)
      (by linear_combination r5657)
      (by linear_combination r5658)
      (by linear_combination r5659)
      (by linear_combination r5660)
      (by linear_combination r5661)
    simpa [shifted48, digit48, acc49] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc49 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted48 rho) (digit48 rho) (acc49 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted48 rho) (digit48 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 154) (rho 153)
      (base rho) (twice rho) (triple rho) (acc48 rho)
      (acc49 rho) :=
    ⟨shiftOnce48 rho, shifted48 rho, digit48 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window49 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc49 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[150]! (scalarBits rho)[149]!
        (base rho) (twice rho) (triple rho) (acc49 rho)
        (acc50 rho) ∧
      EdwardsBridge.onCurve (acc50 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p70, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart70 at p70
  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5662 at r5662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5663 at r5663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5664 at r5664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5665 at r5665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5666 at r5666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5667 at r5667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5668 at r5668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5669 at r5669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5670 at r5670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5671 at r5671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5672 at r5672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5673 at r5673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5674 at r5674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5675 at r5675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5676 at r5676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5677 at r5677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5678 at r5678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5679 at r5679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5680 at r5680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5681 at r5681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5682 at r5682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5683 at r5683
  have hshift1 : EdwardsBridge.doubleSpec (acc49 rho) (shiftOnce49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5668) (rho 5669) (rho 5670) (rho 5671) (rho 5672) (rho 5673) (rho 5674)
      (by simpa [acc49] using hacc)
      (by linear_combination r5662)
      (by linear_combination r5663)
      (by linear_combination r5664)
      (by linear_combination r5665)
      (by linear_combination r5666)
    simpa [acc49, shiftOnce49] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc49 rho) (shiftOnce49 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc49 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce49 rho) (shifted49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5673) (rho 5674) (rho 5675) (rho 5676) (rho 5677) (rho 5678) (rho 5679)
      (by simpa [shiftOnce49] using hshift1On)
      (by linear_combination r5667)
      (by linear_combination r5668)
      (by linear_combination r5669)
      (by linear_combination r5670)
      (by linear_combination r5671)
    simpa [shiftOnce49, shifted49] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce49 rho) (shifted49 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce49 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 152) (rho 151)
      (base rho) (twice rho) (triple rho) (digit49 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 152) (rho 151)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5681 + rho 5682, (1 : F) + rho 5684 + rho 5685⟩ := by
      constructor
      · refine ⟨(rho 5680 + (rho 4578) - (0)), rho 5681, ?_, ?_, ?_⟩
        · linear_combination r5672 - (rho 151) * order_cast_zero
        · linear_combination r5673
        · linear_combination r5674
      · refine ⟨(rho 5683 + (rho 4579) - ((1 : F))), rho 5684, ?_, ?_, ?_⟩
        · linear_combination r5675 - (rho 151) * order_cast_zero
        · linear_combination r5676
        · linear_combination r5677
    simpa [base, twice, triple, digit49] using hraw
  have hhigh : rho 152 =
      Bool.toZMod bits[150]! := by
    simpa only using rho_bit_of_map rho bits hbits 150 (by decide +kernel)
  have hlow : rho 151 =
      Bool.toZMod bits[149]! := by
    simpa only using rho_bit_of_map rho bits hbits 149 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[150]! bits[149]! (base rho) (twice rho) (triple rho)
    (digit49 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit49 rho) := by
    rw [hdigit]
    cases bits[150]! <;> cases bits[149]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted49 rho) (digit49 rho) (acc50 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5678) (rho 5679) (rho 5681 + rho 5682) ((1 : F) + rho 5684 + rho 5685)
      (rho 5686) (rho 5687) (rho 5688) (rho 5689) (rho 5690) (rho 5691)
      (by simpa [shifted49] using hshift2On)
      (by simpa [digit49] using hdigitOn)
      (by linear_combination r5678)
      (by linear_combination r5679)
      (by linear_combination r5680)
      (by linear_combination r5681)
      (by linear_combination r5682)
      (by linear_combination r5683)
    simpa [shifted49, digit49, acc50] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc50 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted49 rho) (digit49 rho) (acc50 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted49 rho) (digit49 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 152) (rho 151)
      (base rho) (twice rho) (triple rho) (acc49 rho)
      (acc50 rho) :=
    ⟨shiftOnce49 rho, shifted49 rho, digit49 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window50 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc50 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[148]! (scalarBits rho)[147]!
        (base rho) (twice rho) (triple rho) (acc50 rho)
        (acc51 rho) ∧
      EdwardsBridge.onCurve (acc51 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, r5684, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703, r5704, r5705, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5684 at r5684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5685 at r5685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5686 at r5686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5687 at r5687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5688 at r5688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5689 at r5689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5690 at r5690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5691 at r5691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5692 at r5692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5693 at r5693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5694 at r5694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5695 at r5695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5696 at r5696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5697 at r5697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5698 at r5698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5699 at r5699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5700 at r5700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5701 at r5701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5702 at r5702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5703 at r5703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5704 at r5704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5705 at r5705
  have hshift1 : EdwardsBridge.doubleSpec (acc50 rho) (shiftOnce50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5690) (rho 5691) (rho 5692) (rho 5693) (rho 5694) (rho 5695) (rho 5696)
      (by simpa [acc50] using hacc)
      (by linear_combination r5684)
      (by linear_combination r5685)
      (by linear_combination r5686)
      (by linear_combination r5687)
      (by linear_combination r5688)
    simpa [acc50, shiftOnce50] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc50 rho) (shiftOnce50 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc50 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce50 rho) (shifted50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5695) (rho 5696) (rho 5697) (rho 5698) (rho 5699) (rho 5700) (rho 5701)
      (by simpa [shiftOnce50] using hshift1On)
      (by linear_combination r5689)
      (by linear_combination r5690)
      (by linear_combination r5691)
      (by linear_combination r5692)
      (by linear_combination r5693)
    simpa [shiftOnce50, shifted50] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce50 rho) (shifted50 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce50 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 150) (rho 149)
      (base rho) (twice rho) (triple rho) (digit50 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 150) (rho 149)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5703 + rho 5704, (1 : F) + rho 5706 + rho 5707⟩ := by
      constructor
      · refine ⟨(rho 5702 + (rho 4578) - (0)), rho 5703, ?_, ?_, ?_⟩
        · linear_combination r5694 - (rho 149) * order_cast_zero
        · linear_combination r5695
        · linear_combination r5696
      · refine ⟨(rho 5705 + (rho 4579) - ((1 : F))), rho 5706, ?_, ?_, ?_⟩
        · linear_combination r5697 - (rho 149) * order_cast_zero
        · linear_combination r5698
        · linear_combination r5699
    simpa [base, twice, triple, digit50] using hraw
  have hhigh : rho 150 =
      Bool.toZMod bits[148]! := by
    simpa only using rho_bit_of_map rho bits hbits 148 (by decide +kernel)
  have hlow : rho 149 =
      Bool.toZMod bits[147]! := by
    simpa only using rho_bit_of_map rho bits hbits 147 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[148]! bits[147]! (base rho) (twice rho) (triple rho)
    (digit50 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit50 rho) := by
    rw [hdigit]
    cases bits[148]! <;> cases bits[147]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted50 rho) (digit50 rho) (acc51 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5700) (rho 5701) (rho 5703 + rho 5704) ((1 : F) + rho 5706 + rho 5707)
      (rho 5708) (rho 5709) (rho 5710) (rho 5711) (rho 5712) (rho 5713)
      (by simpa [shifted50] using hshift2On)
      (by simpa [digit50] using hdigitOn)
      (by linear_combination r5700)
      (by linear_combination r5701)
      (by linear_combination r5702)
      (by linear_combination r5703)
      (by linear_combination r5704)
      (by linear_combination r5705)
    simpa [shifted50, digit50, acc51] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc51 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted50 rho) (digit50 rho) (acc51 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted50 rho) (digit50 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 150) (rho 149)
      (base rho) (twice rho) (triple rho) (acc50 rho)
      (acc51 rho) :=
    ⟨shiftOnce50 rho, shifted50 rho, digit50 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window51 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc51 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[146]! (scalarBits rho)[145]!
        (base rho) (twice rho) (triple rho) (acc51 rho)
        (acc52 rho) ∧
      EdwardsBridge.onCurve (acc52 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5706 at r5706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5707 at r5707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5708 at r5708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5709 at r5709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5710 at r5710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5711 at r5711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5712 at r5712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5713 at r5713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5714 at r5714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5715 at r5715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5716 at r5716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5717 at r5717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5718 at r5718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5719 at r5719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5720 at r5720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5721 at r5721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5722 at r5722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5723 at r5723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5724 at r5724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5725 at r5725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5726 at r5726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5727 at r5727
  have hshift1 : EdwardsBridge.doubleSpec (acc51 rho) (shiftOnce51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5712) (rho 5713) (rho 5714) (rho 5715) (rho 5716) (rho 5717) (rho 5718)
      (by simpa [acc51] using hacc)
      (by linear_combination r5706)
      (by linear_combination r5707)
      (by linear_combination r5708)
      (by linear_combination r5709)
      (by linear_combination r5710)
    simpa [acc51, shiftOnce51] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc51 rho) (shiftOnce51 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc51 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce51 rho) (shifted51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5717) (rho 5718) (rho 5719) (rho 5720) (rho 5721) (rho 5722) (rho 5723)
      (by simpa [shiftOnce51] using hshift1On)
      (by linear_combination r5711)
      (by linear_combination r5712)
      (by linear_combination r5713)
      (by linear_combination r5714)
      (by linear_combination r5715)
    simpa [shiftOnce51, shifted51] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce51 rho) (shifted51 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce51 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 148) (rho 147)
      (base rho) (twice rho) (triple rho) (digit51 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 148) (rho 147)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5725 + rho 5726, (1 : F) + rho 5728 + rho 5729⟩ := by
      constructor
      · refine ⟨(rho 5724 + (rho 4578) - (0)), rho 5725, ?_, ?_, ?_⟩
        · linear_combination r5716 - (rho 147) * order_cast_zero
        · linear_combination r5717
        · linear_combination r5718
      · refine ⟨(rho 5727 + (rho 4579) - ((1 : F))), rho 5728, ?_, ?_, ?_⟩
        · linear_combination r5719 - (rho 147) * order_cast_zero
        · linear_combination r5720
        · linear_combination r5721
    simpa [base, twice, triple, digit51] using hraw
  have hhigh : rho 148 =
      Bool.toZMod bits[146]! := by
    simpa only using rho_bit_of_map rho bits hbits 146 (by decide +kernel)
  have hlow : rho 147 =
      Bool.toZMod bits[145]! := by
    simpa only using rho_bit_of_map rho bits hbits 145 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[146]! bits[145]! (base rho) (twice rho) (triple rho)
    (digit51 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit51 rho) := by
    rw [hdigit]
    cases bits[146]! <;> cases bits[145]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted51 rho) (digit51 rho) (acc52 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5722) (rho 5723) (rho 5725 + rho 5726) ((1 : F) + rho 5728 + rho 5729)
      (rho 5730) (rho 5731) (rho 5732) (rho 5733) (rho 5734) (rho 5735)
      (by simpa [shifted51] using hshift2On)
      (by simpa [digit51] using hdigitOn)
      (by linear_combination r5722)
      (by linear_combination r5723)
      (by linear_combination r5724)
      (by linear_combination r5725)
      (by linear_combination r5726)
      (by linear_combination r5727)
    simpa [shifted51, digit51, acc52] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc52 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted51 rho) (digit51 rho) (acc52 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted51 rho) (digit51 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 148) (rho 147)
      (base rho) (twice rho) (triple rho) (acc51 rho)
      (acc52 rho) :=
    ⟨shiftOnce51 rho, shifted51 rho, digit51 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window52 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc52 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[144]! (scalarBits rho)[143]!
        (base rho) (twice rho) (triple rho) (acc52 rho)
        (acc53 rho) ∧
      EdwardsBridge.onCurve (acc53 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5728 at r5728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5729 at r5729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5730 at r5730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5731 at r5731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5732 at r5732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5733 at r5733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5734 at r5734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5735 at r5735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5736 at r5736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5737 at r5737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5738 at r5738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5739 at r5739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5740 at r5740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5741 at r5741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5742 at r5742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5743 at r5743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5744 at r5744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5745 at r5745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5746 at r5746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5747 at r5747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5748 at r5748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5749 at r5749
  have hshift1 : EdwardsBridge.doubleSpec (acc52 rho) (shiftOnce52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5734) (rho 5735) (rho 5736) (rho 5737) (rho 5738) (rho 5739) (rho 5740)
      (by simpa [acc52] using hacc)
      (by linear_combination r5728)
      (by linear_combination r5729)
      (by linear_combination r5730)
      (by linear_combination r5731)
      (by linear_combination r5732)
    simpa [acc52, shiftOnce52] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc52 rho) (shiftOnce52 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc52 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce52 rho) (shifted52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5739) (rho 5740) (rho 5741) (rho 5742) (rho 5743) (rho 5744) (rho 5745)
      (by simpa [shiftOnce52] using hshift1On)
      (by linear_combination r5733)
      (by linear_combination r5734)
      (by linear_combination r5735)
      (by linear_combination r5736)
      (by linear_combination r5737)
    simpa [shiftOnce52, shifted52] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce52 rho) (shifted52 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce52 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 146) (rho 145)
      (base rho) (twice rho) (triple rho) (digit52 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 146) (rho 145)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5747 + rho 5748, (1 : F) + rho 5750 + rho 5751⟩ := by
      constructor
      · refine ⟨(rho 5746 + (rho 4578) - (0)), rho 5747, ?_, ?_, ?_⟩
        · linear_combination r5738 - (rho 145) * order_cast_zero
        · linear_combination r5739
        · linear_combination r5740
      · refine ⟨(rho 5749 + (rho 4579) - ((1 : F))), rho 5750, ?_, ?_, ?_⟩
        · linear_combination r5741 - (rho 145) * order_cast_zero
        · linear_combination r5742
        · linear_combination r5743
    simpa [base, twice, triple, digit52] using hraw
  have hhigh : rho 146 =
      Bool.toZMod bits[144]! := by
    simpa only using rho_bit_of_map rho bits hbits 144 (by decide +kernel)
  have hlow : rho 145 =
      Bool.toZMod bits[143]! := by
    simpa only using rho_bit_of_map rho bits hbits 143 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[144]! bits[143]! (base rho) (twice rho) (triple rho)
    (digit52 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit52 rho) := by
    rw [hdigit]
    cases bits[144]! <;> cases bits[143]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted52 rho) (digit52 rho) (acc53 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5744) (rho 5745) (rho 5747 + rho 5748) ((1 : F) + rho 5750 + rho 5751)
      (rho 5752) (rho 5753) (rho 5754) (rho 5755) (rho 5756) (rho 5757)
      (by simpa [shifted52] using hshift2On)
      (by simpa [digit52] using hdigitOn)
      (by linear_combination r5744)
      (by linear_combination r5745)
      (by linear_combination r5746)
      (by linear_combination r5747)
      (by linear_combination r5748)
      (by linear_combination r5749)
    simpa [shifted52, digit52, acc53] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc53 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted52 rho) (digit52 rho) (acc53 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted52 rho) (digit52 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 146) (rho 145)
      (base rho) (twice rho) (triple rho) (acc52 rho)
      (acc53 rho) :=
    ⟨shiftOnce52 rho, shifted52 rho, digit52 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window53 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc53 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[142]! (scalarBits rho)[141]!
        (base rho) (twice rho) (triple rho) (acc53 rho)
        (acc54 rho) ∧
      EdwardsBridge.onCurve (acc54 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, p72, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5750, r5751, r5752, r5753, r5754, r5755, r5756, r5757, r5758, r5759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, r5769, r5770, r5771, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5750 at r5750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5751 at r5751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5752 at r5752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5753 at r5753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5754 at r5754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5755 at r5755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5756 at r5756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5757 at r5757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5758 at r5758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5759 at r5759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5760 at r5760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5761 at r5761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5762 at r5762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5763 at r5763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5764 at r5764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5765 at r5765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5766 at r5766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5767 at r5767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5768 at r5768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5769 at r5769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5770 at r5770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow5771 at r5771
  have hshift1 : EdwardsBridge.doubleSpec (acc53 rho) (shiftOnce53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5756) (rho 5757) (rho 5758) (rho 5759) (rho 5760) (rho 5761) (rho 5762)
      (by simpa [acc53] using hacc)
      (by linear_combination r5750)
      (by linear_combination r5751)
      (by linear_combination r5752)
      (by linear_combination r5753)
      (by linear_combination r5754)
    simpa [acc53, shiftOnce53] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc53 rho) (shiftOnce53 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc53 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce53 rho) (shifted53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5761) (rho 5762) (rho 5763) (rho 5764) (rho 5765) (rho 5766) (rho 5767)
      (by simpa [shiftOnce53] using hshift1On)
      (by linear_combination r5755)
      (by linear_combination r5756)
      (by linear_combination r5757)
      (by linear_combination r5758)
      (by linear_combination r5759)
    simpa [shiftOnce53, shifted53] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce53 rho) (shifted53 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce53 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 144) (rho 143)
      (base rho) (twice rho) (triple rho) (digit53 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 144) (rho 143)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 5769 + rho 5770, (1 : F) + rho 5772 + rho 5773⟩ := by
      constructor
      · refine ⟨(rho 5768 + (rho 4578) - (0)), rho 5769, ?_, ?_, ?_⟩
        · linear_combination r5760 - (rho 143) * order_cast_zero
        · linear_combination r5761
        · linear_combination r5762
      · refine ⟨(rho 5771 + (rho 4579) - ((1 : F))), rho 5772, ?_, ?_, ?_⟩
        · linear_combination r5763 - (rho 143) * order_cast_zero
        · linear_combination r5764
        · linear_combination r5765
    simpa [base, twice, triple, digit53] using hraw
  have hhigh : rho 144 =
      Bool.toZMod bits[142]! := by
    simpa only using rho_bit_of_map rho bits hbits 142 (by decide +kernel)
  have hlow : rho 143 =
      Bool.toZMod bits[141]! := by
    simpa only using rho_bit_of_map rho bits hbits 141 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[142]! bits[141]! (base rho) (twice rho) (triple rho)
    (digit53 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit53 rho) := by
    rw [hdigit]
    cases bits[142]! <;> cases bits[141]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted53 rho) (digit53 rho) (acc54 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5766) (rho 5767) (rho 5769 + rho 5770) ((1 : F) + rho 5772 + rho 5773)
      (rho 5774) (rho 5775) (rho 5776) (rho 5777) (rho 5778) (rho 5779)
      (by simpa [shifted53] using hshift2On)
      (by simpa [digit53] using hdigitOn)
      (by linear_combination r5766)
      (by linear_combination r5767)
      (by linear_combination r5768)
      (by linear_combination r5769)
      (by linear_combination r5770)
      (by linear_combination r5771)
    simpa [shifted53, digit53, acc54] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc54 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted53 rho) (digit53 rho) (acc54 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted53 rho) (digit53 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 144) (rho 143)
      (base rho) (twice rho) (triple rho) (acc53 rho)
      (acc54 rho) :=
    ⟨shiftOnce53 rho, shifted53 rho, digit53 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
