import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window6 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc6 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[236]! (scalarBits rho)[235]!
        (base rho) (twice rho) (triple rho) (acc6 rho)
        (acc7 rho) ∧
      EdwardsBridge.onCurve (acc7 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4716, r4717, r4718, r4719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4716 at r4716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4717 at r4717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4718 at r4718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4719 at r4719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4720 at r4720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4721 at r4721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4722 at r4722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4723 at r4723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4724 at r4724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4725 at r4725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4726 at r4726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4727 at r4727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4728 at r4728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4729 at r4729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4730 at r4730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4731 at r4731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4732 at r4732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4733 at r4733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4734 at r4734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4735 at r4735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4736 at r4736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4737 at r4737
  have hshift1 : EdwardsBridge.doubleSpec (acc6 rho) (shiftOnce6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4722) (rho 4723) (rho 4724) (rho 4725) (rho 4726) (rho 4727) (rho 4728)
      (by simpa [acc6] using hacc)
      (by linear_combination r4716)
      (by linear_combination r4717)
      (by linear_combination r4718)
      (by linear_combination r4719)
      (by linear_combination r4720)
    simpa [acc6, shiftOnce6] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc6 rho) (shiftOnce6 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc6 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce6 rho) (shifted6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4727) (rho 4728) (rho 4729) (rho 4730) (rho 4731) (rho 4732) (rho 4733)
      (by simpa [shiftOnce6] using hshift1On)
      (by linear_combination r4721)
      (by linear_combination r4722)
      (by linear_combination r4723)
      (by linear_combination r4724)
      (by linear_combination r4725)
    simpa [shiftOnce6, shifted6] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce6 rho) (shifted6 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce6 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 238) (rho 237)
      (base rho) (twice rho) (triple rho) (digit6 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 238) (rho 237)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4735 + rho 4736, (1 : F) + rho 4738 + rho 4739⟩ := by
      constructor
      · refine ⟨(rho 4734 + (rho 4578) - (0)), rho 4735, ?_, ?_, ?_⟩
        · linear_combination r4726 - (rho 237) * order_cast_zero
        · linear_combination r4727
        · linear_combination r4728
      · refine ⟨(rho 4737 + (rho 4579) - ((1 : F))), rho 4738, ?_, ?_, ?_⟩
        · linear_combination r4729 - (rho 237) * order_cast_zero
        · linear_combination r4730
        · linear_combination r4731
    simpa [base, twice, triple, digit6] using hraw
  have hhigh : rho 238 =
      Bool.toZMod bits[236]! := by
    simpa only using rho_bit_of_map rho bits hbits 236 (by decide +kernel)
  have hlow : rho 237 =
      Bool.toZMod bits[235]! := by
    simpa only using rho_bit_of_map rho bits hbits 235 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[236]! bits[235]! (base rho) (twice rho) (triple rho)
    (digit6 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit6 rho) := by
    rw [hdigit]
    cases bits[236]! <;> cases bits[235]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted6 rho) (digit6 rho) (acc7 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4732) (rho 4733) (rho 4735 + rho 4736) ((1 : F) + rho 4738 + rho 4739)
      (rho 4740) (rho 4741) (rho 4742) (rho 4743) (rho 4744) (rho 4745)
      (by simpa [shifted6] using hshift2On)
      (by simpa [digit6] using hdigitOn)
      (by linear_combination r4732)
      (by linear_combination r4733)
      (by linear_combination r4734)
      (by linear_combination r4735)
      (by linear_combination r4736)
      (by linear_combination r4737)
    simpa [shifted6, digit6, acc7] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc7 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted6 rho) (digit6 rho) (acc7 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted6 rho) (digit6 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 238) (rho 237)
      (base rho) (twice rho) (triple rho) (acc6 rho)
      (acc7 rho) :=
    ⟨shiftOnce6 rho, shifted6 rho, digit6 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window7 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc7 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[234]! (scalarBits rho)[233]!
        (base rho) (twice rho) (triple rho) (acc7 rho)
        (acc8 rho) ∧
      EdwardsBridge.onCurve (acc8 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4738 at r4738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4739 at r4739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4740 at r4740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4741 at r4741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4742 at r4742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4743 at r4743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4744 at r4744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4745 at r4745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4746 at r4746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4747 at r4747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4748 at r4748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4749 at r4749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4750 at r4750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4751 at r4751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4752 at r4752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4753 at r4753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4754 at r4754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4755 at r4755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4756 at r4756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4757 at r4757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4758 at r4758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4759 at r4759
  have hshift1 : EdwardsBridge.doubleSpec (acc7 rho) (shiftOnce7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4744) (rho 4745) (rho 4746) (rho 4747) (rho 4748) (rho 4749) (rho 4750)
      (by simpa [acc7] using hacc)
      (by linear_combination r4738)
      (by linear_combination r4739)
      (by linear_combination r4740)
      (by linear_combination r4741)
      (by linear_combination r4742)
    simpa [acc7, shiftOnce7] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc7 rho) (shiftOnce7 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc7 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce7 rho) (shifted7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4749) (rho 4750) (rho 4751) (rho 4752) (rho 4753) (rho 4754) (rho 4755)
      (by simpa [shiftOnce7] using hshift1On)
      (by linear_combination r4743)
      (by linear_combination r4744)
      (by linear_combination r4745)
      (by linear_combination r4746)
      (by linear_combination r4747)
    simpa [shiftOnce7, shifted7] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce7 rho) (shifted7 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce7 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 236) (rho 235)
      (base rho) (twice rho) (triple rho) (digit7 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 236) (rho 235)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4757 + rho 4758, (1 : F) + rho 4760 + rho 4761⟩ := by
      constructor
      · refine ⟨(rho 4756 + (rho 4578) - (0)), rho 4757, ?_, ?_, ?_⟩
        · linear_combination r4748 - (rho 235) * order_cast_zero
        · linear_combination r4749
        · linear_combination r4750
      · refine ⟨(rho 4759 + (rho 4579) - ((1 : F))), rho 4760, ?_, ?_, ?_⟩
        · linear_combination r4751 - (rho 235) * order_cast_zero
        · linear_combination r4752
        · linear_combination r4753
    simpa [base, twice, triple, digit7] using hraw
  have hhigh : rho 236 =
      Bool.toZMod bits[234]! := by
    simpa only using rho_bit_of_map rho bits hbits 234 (by decide +kernel)
  have hlow : rho 235 =
      Bool.toZMod bits[233]! := by
    simpa only using rho_bit_of_map rho bits hbits 233 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[234]! bits[233]! (base rho) (twice rho) (triple rho)
    (digit7 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit7 rho) := by
    rw [hdigit]
    cases bits[234]! <;> cases bits[233]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted7 rho) (digit7 rho) (acc8 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4754) (rho 4755) (rho 4757 + rho 4758) ((1 : F) + rho 4760 + rho 4761)
      (rho 4762) (rho 4763) (rho 4764) (rho 4765) (rho 4766) (rho 4767)
      (by simpa [shifted7] using hshift2On)
      (by simpa [digit7] using hdigitOn)
      (by linear_combination r4754)
      (by linear_combination r4755)
      (by linear_combination r4756)
      (by linear_combination r4757)
      (by linear_combination r4758)
      (by linear_combination r4759)
    simpa [shifted7, digit7, acc8] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc8 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted7 rho) (digit7 rho) (acc8 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted7 rho) (digit7 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 236) (rho 235)
      (base rho) (twice rho) (triple rho) (acc7 rho)
      (acc8 rho) :=
    ⟨shiftOnce7 rho, shifted7 rho, digit7 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window8 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc8 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[232]! (scalarBits rho)[231]!
        (base rho) (twice rho) (triple rho) (acc8 rho)
        (acc9 rho) ∧
      EdwardsBridge.onCurve (acc9 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4760 at r4760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4761 at r4761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4762 at r4762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4763 at r4763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4764 at r4764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4765 at r4765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4766 at r4766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4767 at r4767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4768 at r4768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4769 at r4769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4770 at r4770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4771 at r4771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4772 at r4772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4773 at r4773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4774 at r4774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4775 at r4775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4776 at r4776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4777 at r4777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4778 at r4778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4779 at r4779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4780 at r4780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4781 at r4781
  have hshift1 : EdwardsBridge.doubleSpec (acc8 rho) (shiftOnce8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4766) (rho 4767) (rho 4768) (rho 4769) (rho 4770) (rho 4771) (rho 4772)
      (by simpa [acc8] using hacc)
      (by linear_combination r4760)
      (by linear_combination r4761)
      (by linear_combination r4762)
      (by linear_combination r4763)
      (by linear_combination r4764)
    simpa [acc8, shiftOnce8] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc8 rho) (shiftOnce8 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc8 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce8 rho) (shifted8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4771) (rho 4772) (rho 4773) (rho 4774) (rho 4775) (rho 4776) (rho 4777)
      (by simpa [shiftOnce8] using hshift1On)
      (by linear_combination r4765)
      (by linear_combination r4766)
      (by linear_combination r4767)
      (by linear_combination r4768)
      (by linear_combination r4769)
    simpa [shiftOnce8, shifted8] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce8 rho) (shifted8 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce8 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 234) (rho 233)
      (base rho) (twice rho) (triple rho) (digit8 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 234) (rho 233)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4779 + rho 4780, (1 : F) + rho 4782 + rho 4783⟩ := by
      constructor
      · refine ⟨(rho 4778 + (rho 4578) - (0)), rho 4779, ?_, ?_, ?_⟩
        · linear_combination r4770 - (rho 233) * order_cast_zero
        · linear_combination r4771
        · linear_combination r4772
      · refine ⟨(rho 4781 + (rho 4579) - ((1 : F))), rho 4782, ?_, ?_, ?_⟩
        · linear_combination r4773 - (rho 233) * order_cast_zero
        · linear_combination r4774
        · linear_combination r4775
    simpa [base, twice, triple, digit8] using hraw
  have hhigh : rho 234 =
      Bool.toZMod bits[232]! := by
    simpa only using rho_bit_of_map rho bits hbits 232 (by decide +kernel)
  have hlow : rho 233 =
      Bool.toZMod bits[231]! := by
    simpa only using rho_bit_of_map rho bits hbits 231 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[232]! bits[231]! (base rho) (twice rho) (triple rho)
    (digit8 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit8 rho) := by
    rw [hdigit]
    cases bits[232]! <;> cases bits[231]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted8 rho) (digit8 rho) (acc9 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4776) (rho 4777) (rho 4779 + rho 4780) ((1 : F) + rho 4782 + rho 4783)
      (rho 4784) (rho 4785) (rho 4786) (rho 4787) (rho 4788) (rho 4789)
      (by simpa [shifted8] using hshift2On)
      (by simpa [digit8] using hdigitOn)
      (by linear_combination r4776)
      (by linear_combination r4777)
      (by linear_combination r4778)
      (by linear_combination r4779)
      (by linear_combination r4780)
      (by linear_combination r4781)
    simpa [shifted8, digit8, acc9] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc9 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted8 rho) (digit8 rho) (acc9 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted8 rho) (digit8 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 234) (rho 233)
      (base rho) (twice rho) (triple rho) (acc8 rho)
      (acc9 rho) :=
    ⟨shiftOnce8 rho, shifted8 rho, digit8 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window9 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc9 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[230]! (scalarBits rho)[229]!
        (base rho) (twice rho) (triple rho) (acc9 rho)
        (acc10 rho) ∧
      EdwardsBridge.onCurve (acc10 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4782 at r4782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4783 at r4783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4784 at r4784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4785 at r4785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4786 at r4786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4787 at r4787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4788 at r4788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4789 at r4789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4790 at r4790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4791 at r4791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4792 at r4792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4793 at r4793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4794 at r4794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4795 at r4795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4796 at r4796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4797 at r4797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4798 at r4798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4799 at r4799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4800 at r4800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4801 at r4801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4802 at r4802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4803 at r4803
  have hshift1 : EdwardsBridge.doubleSpec (acc9 rho) (shiftOnce9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4788) (rho 4789) (rho 4790) (rho 4791) (rho 4792) (rho 4793) (rho 4794)
      (by simpa [acc9] using hacc)
      (by linear_combination r4782)
      (by linear_combination r4783)
      (by linear_combination r4784)
      (by linear_combination r4785)
      (by linear_combination r4786)
    simpa [acc9, shiftOnce9] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc9 rho) (shiftOnce9 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc9 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce9 rho) (shifted9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4793) (rho 4794) (rho 4795) (rho 4796) (rho 4797) (rho 4798) (rho 4799)
      (by simpa [shiftOnce9] using hshift1On)
      (by linear_combination r4787)
      (by linear_combination r4788)
      (by linear_combination r4789)
      (by linear_combination r4790)
      (by linear_combination r4791)
    simpa [shiftOnce9, shifted9] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce9 rho) (shifted9 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce9 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 232) (rho 231)
      (base rho) (twice rho) (triple rho) (digit9 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 232) (rho 231)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4801 + rho 4802, (1 : F) + rho 4804 + rho 4805⟩ := by
      constructor
      · refine ⟨(rho 4800 + (rho 4578) - (0)), rho 4801, ?_, ?_, ?_⟩
        · linear_combination r4792 - (rho 231) * order_cast_zero
        · linear_combination r4793
        · linear_combination r4794
      · refine ⟨(rho 4803 + (rho 4579) - ((1 : F))), rho 4804, ?_, ?_, ?_⟩
        · linear_combination r4795 - (rho 231) * order_cast_zero
        · linear_combination r4796
        · linear_combination r4797
    simpa [base, twice, triple, digit9] using hraw
  have hhigh : rho 232 =
      Bool.toZMod bits[230]! := by
    simpa only using rho_bit_of_map rho bits hbits 230 (by decide +kernel)
  have hlow : rho 231 =
      Bool.toZMod bits[229]! := by
    simpa only using rho_bit_of_map rho bits hbits 229 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[230]! bits[229]! (base rho) (twice rho) (triple rho)
    (digit9 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit9 rho) := by
    rw [hdigit]
    cases bits[230]! <;> cases bits[229]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted9 rho) (digit9 rho) (acc10 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4798) (rho 4799) (rho 4801 + rho 4802) ((1 : F) + rho 4804 + rho 4805)
      (rho 4806) (rho 4807) (rho 4808) (rho 4809) (rho 4810) (rho 4811)
      (by simpa [shifted9] using hshift2On)
      (by simpa [digit9] using hdigitOn)
      (by linear_combination r4798)
      (by linear_combination r4799)
      (by linear_combination r4800)
      (by linear_combination r4801)
      (by linear_combination r4802)
      (by linear_combination r4803)
    simpa [shifted9, digit9, acc10] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc10 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted9 rho) (digit9 rho) (acc10 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted9 rho) (digit9 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 232) (rho 231)
      (base rho) (twice rho) (triple rho) (acc9 rho)
      (acc10 rho) :=
    ⟨shiftOnce9 rho, shifted9 rho, digit9 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window10 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc10 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[228]! (scalarBits rho)[227]!
        (base rho) (twice rho) (triple rho) (acc10 rho)
        (acc11 rho) ∧
      EdwardsBridge.onCurve (acc11 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4804 at r4804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4805 at r4805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4806 at r4806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4807 at r4807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4808 at r4808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4809 at r4809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4810 at r4810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4811 at r4811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4812 at r4812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4813 at r4813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4814 at r4814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4815 at r4815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4816 at r4816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4817 at r4817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4818 at r4818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4819 at r4819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4820 at r4820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4821 at r4821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4822 at r4822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4823 at r4823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4824 at r4824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4825 at r4825
  have hshift1 : EdwardsBridge.doubleSpec (acc10 rho) (shiftOnce10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4810) (rho 4811) (rho 4812) (rho 4813) (rho 4814) (rho 4815) (rho 4816)
      (by simpa [acc10] using hacc)
      (by linear_combination r4804)
      (by linear_combination r4805)
      (by linear_combination r4806)
      (by linear_combination r4807)
      (by linear_combination r4808)
    simpa [acc10, shiftOnce10] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc10 rho) (shiftOnce10 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc10 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce10 rho) (shifted10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4815) (rho 4816) (rho 4817) (rho 4818) (rho 4819) (rho 4820) (rho 4821)
      (by simpa [shiftOnce10] using hshift1On)
      (by linear_combination r4809)
      (by linear_combination r4810)
      (by linear_combination r4811)
      (by linear_combination r4812)
      (by linear_combination r4813)
    simpa [shiftOnce10, shifted10] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce10 rho) (shifted10 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce10 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 230) (rho 229)
      (base rho) (twice rho) (triple rho) (digit10 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 230) (rho 229)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4823 + rho 4824, (1 : F) + rho 4826 + rho 4827⟩ := by
      constructor
      · refine ⟨(rho 4822 + (rho 4578) - (0)), rho 4823, ?_, ?_, ?_⟩
        · linear_combination r4814 - (rho 229) * order_cast_zero
        · linear_combination r4815
        · linear_combination r4816
      · refine ⟨(rho 4825 + (rho 4579) - ((1 : F))), rho 4826, ?_, ?_, ?_⟩
        · linear_combination r4817 - (rho 229) * order_cast_zero
        · linear_combination r4818
        · linear_combination r4819
    simpa [base, twice, triple, digit10] using hraw
  have hhigh : rho 230 =
      Bool.toZMod bits[228]! := by
    simpa only using rho_bit_of_map rho bits hbits 228 (by decide +kernel)
  have hlow : rho 229 =
      Bool.toZMod bits[227]! := by
    simpa only using rho_bit_of_map rho bits hbits 227 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[228]! bits[227]! (base rho) (twice rho) (triple rho)
    (digit10 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit10 rho) := by
    rw [hdigit]
    cases bits[228]! <;> cases bits[227]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted10 rho) (digit10 rho) (acc11 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4820) (rho 4821) (rho 4823 + rho 4824) ((1 : F) + rho 4826 + rho 4827)
      (rho 4828) (rho 4829) (rho 4830) (rho 4831) (rho 4832) (rho 4833)
      (by simpa [shifted10] using hshift2On)
      (by simpa [digit10] using hdigitOn)
      (by linear_combination r4820)
      (by linear_combination r4821)
      (by linear_combination r4822)
      (by linear_combination r4823)
      (by linear_combination r4824)
      (by linear_combination r4825)
    simpa [shifted10, digit10, acc11] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc11 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted10 rho) (digit10 rho) (acc11 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted10 rho) (digit10 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 230) (rho 229)
      (base rho) (twice rho) (triple rho) (acc10 rho)
      (acc11 rho) :=
    ⟨shiftOnce10 rho, shifted10 rho, digit10 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc11 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[226]! (scalarBits rho)[225]!
        (base rho) (twice rho) (triple rho) (acc11 rho)
        (acc12 rho) ∧
      EdwardsBridge.onCurve (acc12 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4826 at r4826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4827 at r4827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4828 at r4828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4829 at r4829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4830 at r4830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4831 at r4831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4832 at r4832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4833 at r4833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4834 at r4834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4835 at r4835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4836 at r4836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4837 at r4837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4838 at r4838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4839 at r4839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4840 at r4840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4841 at r4841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4842 at r4842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4843 at r4843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4844 at r4844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4845 at r4845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4846 at r4846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4847 at r4847
  have hshift1 : EdwardsBridge.doubleSpec (acc11 rho) (shiftOnce11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4832) (rho 4833) (rho 4834) (rho 4835) (rho 4836) (rho 4837) (rho 4838)
      (by simpa [acc11] using hacc)
      (by linear_combination r4826)
      (by linear_combination r4827)
      (by linear_combination r4828)
      (by linear_combination r4829)
      (by linear_combination r4830)
    simpa [acc11, shiftOnce11] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc11 rho) (shiftOnce11 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc11 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce11 rho) (shifted11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4837) (rho 4838) (rho 4839) (rho 4840) (rho 4841) (rho 4842) (rho 4843)
      (by simpa [shiftOnce11] using hshift1On)
      (by linear_combination r4831)
      (by linear_combination r4832)
      (by linear_combination r4833)
      (by linear_combination r4834)
      (by linear_combination r4835)
    simpa [shiftOnce11, shifted11] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce11 rho) (shifted11 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce11 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 228) (rho 227)
      (base rho) (twice rho) (triple rho) (digit11 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 228) (rho 227)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4845 + rho 4846, (1 : F) + rho 4848 + rho 4849⟩ := by
      constructor
      · refine ⟨(rho 4844 + (rho 4578) - (0)), rho 4845, ?_, ?_, ?_⟩
        · linear_combination r4836 - (rho 227) * order_cast_zero
        · linear_combination r4837
        · linear_combination r4838
      · refine ⟨(rho 4847 + (rho 4579) - ((1 : F))), rho 4848, ?_, ?_, ?_⟩
        · linear_combination r4839 - (rho 227) * order_cast_zero
        · linear_combination r4840
        · linear_combination r4841
    simpa [base, twice, triple, digit11] using hraw
  have hhigh : rho 228 =
      Bool.toZMod bits[226]! := by
    simpa only using rho_bit_of_map rho bits hbits 226 (by decide +kernel)
  have hlow : rho 227 =
      Bool.toZMod bits[225]! := by
    simpa only using rho_bit_of_map rho bits hbits 225 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[226]! bits[225]! (base rho) (twice rho) (triple rho)
    (digit11 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit11 rho) := by
    rw [hdigit]
    cases bits[226]! <;> cases bits[225]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted11 rho) (digit11 rho) (acc12 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4842) (rho 4843) (rho 4845 + rho 4846) ((1 : F) + rho 4848 + rho 4849)
      (rho 4850) (rho 4851) (rho 4852) (rho 4853) (rho 4854) (rho 4855)
      (by simpa [shifted11] using hshift2On)
      (by simpa [digit11] using hdigitOn)
      (by linear_combination r4842)
      (by linear_combination r4843)
      (by linear_combination r4844)
      (by linear_combination r4845)
      (by linear_combination r4846)
      (by linear_combination r4847)
    simpa [shifted11, digit11, acc12] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc12 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted11 rho) (digit11 rho) (acc12 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted11 rho) (digit11 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 228) (rho 227)
      (base rho) (twice rho) (triple rho) (acc11 rho)
      (acc12 rho) :=
    ⟨shiftOnce11 rho, shifted11 rho, digit11 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
