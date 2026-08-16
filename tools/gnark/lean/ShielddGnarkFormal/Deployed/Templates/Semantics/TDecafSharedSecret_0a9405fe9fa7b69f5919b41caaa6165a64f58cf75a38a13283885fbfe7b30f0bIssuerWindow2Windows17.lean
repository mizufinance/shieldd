import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window102 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc102 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[44]! (scalarBits rho)[43]!
        (base rho) (twice rho) (triple rho) (acc102 rho)
        (acc103 rho) ∧
      EdwardsBridge.onCurve (acc103 rho) := by
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
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6828, r6829, r6830, r6831, r6832, r6833, r6834, r6835, r6836, r6837, r6838, r6839, r6840, r6841, r6842, r6843, r6844, r6845, r6846, r6847, r6848, r6849, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6828 at r6828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6829 at r6829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6830 at r6830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6831 at r6831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6832 at r6832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6833 at r6833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6834 at r6834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6835 at r6835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6836 at r6836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6837 at r6837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6838 at r6838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6839 at r6839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6840 at r6840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6841 at r6841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6842 at r6842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6843 at r6843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6844 at r6844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6845 at r6845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6846 at r6846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6847 at r6847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6848 at r6848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6849 at r6849
  have hshift1 : EdwardsBridge.doubleSpec (acc102 rho) (shiftOnce102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6834) (rho 6835) (rho 6836) (rho 6837) (rho 6838) (rho 6839) (rho 6840)
      (by simpa [acc102] using hacc)
      (by linear_combination r6828)
      (by linear_combination r6829)
      (by linear_combination r6830)
      (by linear_combination r6831)
      (by linear_combination r6832)
    simpa [acc102, shiftOnce102] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc102 rho) (shiftOnce102 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc102 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce102 rho) (shifted102 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6839) (rho 6840) (rho 6841) (rho 6842) (rho 6843) (rho 6844) (rho 6845)
      (by simpa [shiftOnce102] using hshift1On)
      (by linear_combination r6833)
      (by linear_combination r6834)
      (by linear_combination r6835)
      (by linear_combination r6836)
      (by linear_combination r6837)
    simpa [shiftOnce102, shifted102] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted102 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce102 rho) (shifted102 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce102 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 46) (rho 45)
      (base rho) (twice rho) (triple rho) (digit102 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 46) (rho 45)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6847 + rho 6848, (1 : F) + rho 6850 + rho 6851⟩ := by
      constructor
      · refine ⟨(rho 6846 + (rho 4578) - (0)), rho 6847, ?_, ?_, ?_⟩
        · linear_combination r6838 - (rho 45) * order_cast_zero
        · linear_combination r6839
        · linear_combination r6840
      · refine ⟨(rho 6849 + (rho 4579) - ((1 : F))), rho 6850, ?_, ?_, ?_⟩
        · linear_combination r6841 - (rho 45) * order_cast_zero
        · linear_combination r6842
        · linear_combination r6843
    simpa [base, twice, triple, digit102] using hraw
  have hhigh : rho 46 =
      Bool.toZMod bits[44]! := by
    simpa only using rho_bit_of_map rho bits hbits 44 (by decide +kernel)
  have hlow : rho 45 =
      Bool.toZMod bits[43]! := by
    simpa only using rho_bit_of_map rho bits hbits 43 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[44]! bits[43]! (base rho) (twice rho) (triple rho)
    (digit102 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit102 rho) := by
    rw [hdigit]
    cases bits[44]! <;> cases bits[43]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted102 rho) (digit102 rho) (acc103 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6844) (rho 6845) (rho 6847 + rho 6848) ((1 : F) + rho 6850 + rho 6851)
      (rho 6852) (rho 6853) (rho 6854) (rho 6855) (rho 6856) (rho 6857)
      (by simpa [shifted102] using hshift2On)
      (by simpa [digit102] using hdigitOn)
      (by linear_combination r6844)
      (by linear_combination r6845)
      (by linear_combination r6846)
      (by linear_combination r6847)
      (by linear_combination r6848)
      (by linear_combination r6849)
    simpa [shifted102, digit102, acc103] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc103 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted102 rho) (digit102 rho) (acc103 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted102 rho) (digit102 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 46) (rho 45)
      (base rho) (twice rho) (triple rho) (acc102 rho)
      (acc103 rho) :=
    ⟨shiftOnce102 rho, shifted102 rho, digit102 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window103 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc103 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[42]! (scalarBits rho)[41]!
        (base rho) (twice rho) (triple rho) (acc103 rho)
        (acc104 rho) ∧
      EdwardsBridge.onCurve (acc104 rho) := by
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
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6850, r6851, r6852, r6853, r6854, r6855, r6856, r6857, r6858, r6859, r6860, r6861, r6862, r6863, r6864, r6865, r6866, r6867, r6868, r6869, r6870, r6871, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6850 at r6850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6851 at r6851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6852 at r6852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6853 at r6853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6854 at r6854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6855 at r6855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6856 at r6856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6857 at r6857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6858 at r6858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6859 at r6859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6860 at r6860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6861 at r6861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6862 at r6862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6863 at r6863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6864 at r6864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6865 at r6865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6866 at r6866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6867 at r6867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6868 at r6868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6869 at r6869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6870 at r6870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6871 at r6871
  have hshift1 : EdwardsBridge.doubleSpec (acc103 rho) (shiftOnce103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6856) (rho 6857) (rho 6858) (rho 6859) (rho 6860) (rho 6861) (rho 6862)
      (by simpa [acc103] using hacc)
      (by linear_combination r6850)
      (by linear_combination r6851)
      (by linear_combination r6852)
      (by linear_combination r6853)
      (by linear_combination r6854)
    simpa [acc103, shiftOnce103] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc103 rho) (shiftOnce103 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc103 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce103 rho) (shifted103 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6861) (rho 6862) (rho 6863) (rho 6864) (rho 6865) (rho 6866) (rho 6867)
      (by simpa [shiftOnce103] using hshift1On)
      (by linear_combination r6855)
      (by linear_combination r6856)
      (by linear_combination r6857)
      (by linear_combination r6858)
      (by linear_combination r6859)
    simpa [shiftOnce103, shifted103] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted103 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce103 rho) (shifted103 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce103 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 44) (rho 43)
      (base rho) (twice rho) (triple rho) (digit103 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 44) (rho 43)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6869 + rho 6870, (1 : F) + rho 6872 + rho 6873⟩ := by
      constructor
      · refine ⟨(rho 6868 + (rho 4578) - (0)), rho 6869, ?_, ?_, ?_⟩
        · linear_combination r6860 - (rho 43) * order_cast_zero
        · linear_combination r6861
        · linear_combination r6862
      · refine ⟨(rho 6871 + (rho 4579) - ((1 : F))), rho 6872, ?_, ?_, ?_⟩
        · linear_combination r6863 - (rho 43) * order_cast_zero
        · linear_combination r6864
        · linear_combination r6865
    simpa [base, twice, triple, digit103] using hraw
  have hhigh : rho 44 =
      Bool.toZMod bits[42]! := by
    simpa only using rho_bit_of_map rho bits hbits 42 (by decide +kernel)
  have hlow : rho 43 =
      Bool.toZMod bits[41]! := by
    simpa only using rho_bit_of_map rho bits hbits 41 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[42]! bits[41]! (base rho) (twice rho) (triple rho)
    (digit103 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit103 rho) := by
    rw [hdigit]
    cases bits[42]! <;> cases bits[41]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted103 rho) (digit103 rho) (acc104 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6866) (rho 6867) (rho 6869 + rho 6870) ((1 : F) + rho 6872 + rho 6873)
      (rho 6874) (rho 6875) (rho 6876) (rho 6877) (rho 6878) (rho 6879)
      (by simpa [shifted103] using hshift2On)
      (by simpa [digit103] using hdigitOn)
      (by linear_combination r6866)
      (by linear_combination r6867)
      (by linear_combination r6868)
      (by linear_combination r6869)
      (by linear_combination r6870)
      (by linear_combination r6871)
    simpa [shifted103, digit103, acc104] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc104 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted103 rho) (digit103 rho) (acc104 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted103 rho) (digit103 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 44) (rho 43)
      (base rho) (twice rho) (triple rho) (acc103 rho)
      (acc104 rho) :=
    ⟨shiftOnce103 rho, shifted103 rho, digit103 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window104 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc104 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[40]! (scalarBits rho)[39]!
        (base rho) (twice rho) (triple rho) (acc104 rho)
        (acc105 rho) ∧
      EdwardsBridge.onCurve (acc105 rho) := by
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
    _, _, _, _, _, p85, p86, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6872, r6873, r6874, r6875, r6876, r6877, r6878, r6879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart86 at p86
  rcases p86 with ⟨r6880, r6881, r6882, r6883, r6884, r6885, r6886, r6887, r6888, r6889, r6890, r6891, r6892, r6893, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6872 at r6872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6873 at r6873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6874 at r6874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6875 at r6875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6876 at r6876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6877 at r6877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6878 at r6878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6879 at r6879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6880 at r6880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6881 at r6881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6882 at r6882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6883 at r6883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6884 at r6884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6885 at r6885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6886 at r6886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6887 at r6887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6888 at r6888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6889 at r6889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6890 at r6890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6891 at r6891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6892 at r6892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6893 at r6893
  have hshift1 : EdwardsBridge.doubleSpec (acc104 rho) (shiftOnce104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6878) (rho 6879) (rho 6880) (rho 6881) (rho 6882) (rho 6883) (rho 6884)
      (by simpa [acc104] using hacc)
      (by linear_combination r6872)
      (by linear_combination r6873)
      (by linear_combination r6874)
      (by linear_combination r6875)
      (by linear_combination r6876)
    simpa [acc104, shiftOnce104] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc104 rho) (shiftOnce104 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc104 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce104 rho) (shifted104 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6883) (rho 6884) (rho 6885) (rho 6886) (rho 6887) (rho 6888) (rho 6889)
      (by simpa [shiftOnce104] using hshift1On)
      (by linear_combination r6877)
      (by linear_combination r6878)
      (by linear_combination r6879)
      (by linear_combination r6880)
      (by linear_combination r6881)
    simpa [shiftOnce104, shifted104] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted104 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce104 rho) (shifted104 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce104 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 42) (rho 41)
      (base rho) (twice rho) (triple rho) (digit104 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 42) (rho 41)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6891 + rho 6892, (1 : F) + rho 6894 + rho 6895⟩ := by
      constructor
      · refine ⟨(rho 6890 + (rho 4578) - (0)), rho 6891, ?_, ?_, ?_⟩
        · linear_combination r6882 - (rho 41) * order_cast_zero
        · linear_combination r6883
        · linear_combination r6884
      · refine ⟨(rho 6893 + (rho 4579) - ((1 : F))), rho 6894, ?_, ?_, ?_⟩
        · linear_combination r6885 - (rho 41) * order_cast_zero
        · linear_combination r6886
        · linear_combination r6887
    simpa [base, twice, triple, digit104] using hraw
  have hhigh : rho 42 =
      Bool.toZMod bits[40]! := by
    simpa only using rho_bit_of_map rho bits hbits 40 (by decide +kernel)
  have hlow : rho 41 =
      Bool.toZMod bits[39]! := by
    simpa only using rho_bit_of_map rho bits hbits 39 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[40]! bits[39]! (base rho) (twice rho) (triple rho)
    (digit104 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit104 rho) := by
    rw [hdigit]
    cases bits[40]! <;> cases bits[39]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted104 rho) (digit104 rho) (acc105 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6888) (rho 6889) (rho 6891 + rho 6892) ((1 : F) + rho 6894 + rho 6895)
      (rho 6896) (rho 6897) (rho 6898) (rho 6899) (rho 6900) (rho 6901)
      (by simpa [shifted104] using hshift2On)
      (by simpa [digit104] using hdigitOn)
      (by linear_combination r6888)
      (by linear_combination r6889)
      (by linear_combination r6890)
      (by linear_combination r6891)
      (by linear_combination r6892)
      (by linear_combination r6893)
    simpa [shifted104, digit104, acc105] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc105 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted104 rho) (digit104 rho) (acc105 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted104 rho) (digit104 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 42) (rho 41)
      (base rho) (twice rho) (triple rho) (acc104 rho)
      (acc105 rho) :=
    ⟨shiftOnce104 rho, shifted104 rho, digit104 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window105 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc105 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[38]! (scalarBits rho)[37]!
        (base rho) (twice rho) (triple rho) (acc105 rho)
        (acc106 rho) ∧
      EdwardsBridge.onCurve (acc106 rho) := by
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
    _, _, _, _, _, _, p86, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart86 at p86
  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r6894, r6895, r6896, r6897, r6898, r6899, r6900, r6901, r6902, r6903, r6904, r6905, r6906, r6907, r6908, r6909, r6910, r6911, r6912, r6913, r6914, r6915, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6894 at r6894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6895 at r6895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6896 at r6896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6897 at r6897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6898 at r6898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6899 at r6899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6900 at r6900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6901 at r6901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6902 at r6902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6903 at r6903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6904 at r6904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6905 at r6905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6906 at r6906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6907 at r6907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6908 at r6908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6909 at r6909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6910 at r6910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6911 at r6911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6912 at r6912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6913 at r6913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6914 at r6914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6915 at r6915
  have hshift1 : EdwardsBridge.doubleSpec (acc105 rho) (shiftOnce105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6900) (rho 6901) (rho 6902) (rho 6903) (rho 6904) (rho 6905) (rho 6906)
      (by simpa [acc105] using hacc)
      (by linear_combination r6894)
      (by linear_combination r6895)
      (by linear_combination r6896)
      (by linear_combination r6897)
      (by linear_combination r6898)
    simpa [acc105, shiftOnce105] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc105 rho) (shiftOnce105 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc105 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce105 rho) (shifted105 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6905) (rho 6906) (rho 6907) (rho 6908) (rho 6909) (rho 6910) (rho 6911)
      (by simpa [shiftOnce105] using hshift1On)
      (by linear_combination r6899)
      (by linear_combination r6900)
      (by linear_combination r6901)
      (by linear_combination r6902)
      (by linear_combination r6903)
    simpa [shiftOnce105, shifted105] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted105 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce105 rho) (shifted105 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce105 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 40) (rho 39)
      (base rho) (twice rho) (triple rho) (digit105 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 40) (rho 39)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6913 + rho 6914, (1 : F) + rho 6916 + rho 6917⟩ := by
      constructor
      · refine ⟨(rho 6912 + (rho 4578) - (0)), rho 6913, ?_, ?_, ?_⟩
        · linear_combination r6904 - (rho 39) * order_cast_zero
        · linear_combination r6905
        · linear_combination r6906
      · refine ⟨(rho 6915 + (rho 4579) - ((1 : F))), rho 6916, ?_, ?_, ?_⟩
        · linear_combination r6907 - (rho 39) * order_cast_zero
        · linear_combination r6908
        · linear_combination r6909
    simpa [base, twice, triple, digit105] using hraw
  have hhigh : rho 40 =
      Bool.toZMod bits[38]! := by
    simpa only using rho_bit_of_map rho bits hbits 38 (by decide +kernel)
  have hlow : rho 39 =
      Bool.toZMod bits[37]! := by
    simpa only using rho_bit_of_map rho bits hbits 37 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[38]! bits[37]! (base rho) (twice rho) (triple rho)
    (digit105 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit105 rho) := by
    rw [hdigit]
    cases bits[38]! <;> cases bits[37]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted105 rho) (digit105 rho) (acc106 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6910) (rho 6911) (rho 6913 + rho 6914) ((1 : F) + rho 6916 + rho 6917)
      (rho 6918) (rho 6919) (rho 6920) (rho 6921) (rho 6922) (rho 6923)
      (by simpa [shifted105] using hshift2On)
      (by simpa [digit105] using hdigitOn)
      (by linear_combination r6910)
      (by linear_combination r6911)
      (by linear_combination r6912)
      (by linear_combination r6913)
      (by linear_combination r6914)
      (by linear_combination r6915)
    simpa [shifted105, digit105, acc106] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc106 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted105 rho) (digit105 rho) (acc106 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted105 rho) (digit105 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 40) (rho 39)
      (base rho) (twice rho) (triple rho) (acc105 rho)
      (acc106 rho) :=
    ⟨shiftOnce105 rho, shifted105 rho, digit105 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window106 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc106 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[36]! (scalarBits rho)[35]!
        (base rho) (twice rho) (triple rho) (acc106 rho)
        (acc107 rho) ∧
      EdwardsBridge.onCurve (acc107 rho) := by
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
    _, _, _, _, _, _, p86, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart86 at p86
  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6916, r6917, r6918, r6919, r6920, r6921, r6922, r6923, r6924, r6925, r6926, r6927, r6928, r6929, r6930, r6931, r6932, r6933, r6934, r6935, r6936, r6937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6916 at r6916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6917 at r6917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6918 at r6918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6919 at r6919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6920 at r6920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6921 at r6921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6922 at r6922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6923 at r6923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6924 at r6924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6925 at r6925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6926 at r6926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6927 at r6927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6928 at r6928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6929 at r6929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6930 at r6930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6931 at r6931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6932 at r6932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6933 at r6933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6934 at r6934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6935 at r6935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6936 at r6936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6937 at r6937
  have hshift1 : EdwardsBridge.doubleSpec (acc106 rho) (shiftOnce106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6922) (rho 6923) (rho 6924) (rho 6925) (rho 6926) (rho 6927) (rho 6928)
      (by simpa [acc106] using hacc)
      (by linear_combination r6916)
      (by linear_combination r6917)
      (by linear_combination r6918)
      (by linear_combination r6919)
      (by linear_combination r6920)
    simpa [acc106, shiftOnce106] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc106 rho) (shiftOnce106 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc106 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce106 rho) (shifted106 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6927) (rho 6928) (rho 6929) (rho 6930) (rho 6931) (rho 6932) (rho 6933)
      (by simpa [shiftOnce106] using hshift1On)
      (by linear_combination r6921)
      (by linear_combination r6922)
      (by linear_combination r6923)
      (by linear_combination r6924)
      (by linear_combination r6925)
    simpa [shiftOnce106, shifted106] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted106 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce106 rho) (shifted106 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce106 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 38) (rho 37)
      (base rho) (twice rho) (triple rho) (digit106 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 38) (rho 37)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6935 + rho 6936, (1 : F) + rho 6938 + rho 6939⟩ := by
      constructor
      · refine ⟨(rho 6934 + (rho 4578) - (0)), rho 6935, ?_, ?_, ?_⟩
        · linear_combination r6926 - (rho 37) * order_cast_zero
        · linear_combination r6927
        · linear_combination r6928
      · refine ⟨(rho 6937 + (rho 4579) - ((1 : F))), rho 6938, ?_, ?_, ?_⟩
        · linear_combination r6929 - (rho 37) * order_cast_zero
        · linear_combination r6930
        · linear_combination r6931
    simpa [base, twice, triple, digit106] using hraw
  have hhigh : rho 38 =
      Bool.toZMod bits[36]! := by
    simpa only using rho_bit_of_map rho bits hbits 36 (by decide +kernel)
  have hlow : rho 37 =
      Bool.toZMod bits[35]! := by
    simpa only using rho_bit_of_map rho bits hbits 35 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[36]! bits[35]! (base rho) (twice rho) (triple rho)
    (digit106 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit106 rho) := by
    rw [hdigit]
    cases bits[36]! <;> cases bits[35]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted106 rho) (digit106 rho) (acc107 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6932) (rho 6933) (rho 6935 + rho 6936) ((1 : F) + rho 6938 + rho 6939)
      (rho 6940) (rho 6941) (rho 6942) (rho 6943) (rho 6944) (rho 6945)
      (by simpa [shifted106] using hshift2On)
      (by simpa [digit106] using hdigitOn)
      (by linear_combination r6932)
      (by linear_combination r6933)
      (by linear_combination r6934)
      (by linear_combination r6935)
      (by linear_combination r6936)
      (by linear_combination r6937)
    simpa [shifted106, digit106, acc107] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc107 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted106 rho) (digit106 rho) (acc107 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted106 rho) (digit106 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 38) (rho 37)
      (base rho) (twice rho) (triple rho) (acc106 rho)
      (acc107 rho) :=
    ⟨shiftOnce106 rho, shifted106 rho, digit106 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window107 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc107 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[34]! (scalarBits rho)[33]!
        (base rho) (twice rho) (triple rho) (acc107 rho)
        (acc108 rho) ∧
      EdwardsBridge.onCurve (acc108 rho) := by
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
    _, _, _, _, _, _, p86, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart86 at p86
  rcases p86 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6938, r6939, r6940, r6941, r6942, r6943, r6944, r6945, r6946, r6947, r6948, r6949, r6950, r6951, r6952, r6953, r6954, r6955, r6956, r6957, r6958, r6959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6938 at r6938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6939 at r6939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6940 at r6940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6941 at r6941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6942 at r6942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6943 at r6943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6944 at r6944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6945 at r6945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6946 at r6946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6947 at r6947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6948 at r6948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6949 at r6949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6950 at r6950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6951 at r6951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6952 at r6952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6953 at r6953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6954 at r6954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6955 at r6955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6956 at r6956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6957 at r6957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6958 at r6958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow6959 at r6959
  have hshift1 : EdwardsBridge.doubleSpec (acc107 rho) (shiftOnce107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6944) (rho 6945) (rho 6946) (rho 6947) (rho 6948) (rho 6949) (rho 6950)
      (by simpa [acc107] using hacc)
      (by linear_combination r6938)
      (by linear_combination r6939)
      (by linear_combination r6940)
      (by linear_combination r6941)
      (by linear_combination r6942)
    simpa [acc107, shiftOnce107] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc107 rho) (shiftOnce107 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc107 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce107 rho) (shifted107 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 6949) (rho 6950) (rho 6951) (rho 6952) (rho 6953) (rho 6954) (rho 6955)
      (by simpa [shiftOnce107] using hshift1On)
      (by linear_combination r6943)
      (by linear_combination r6944)
      (by linear_combination r6945)
      (by linear_combination r6946)
      (by linear_combination r6947)
    simpa [shiftOnce107, shifted107] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted107 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce107 rho) (shifted107 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce107 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 36) (rho 35)
      (base rho) (twice rho) (triple rho) (digit107 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 36) (rho 35)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 6957 + rho 6958, (1 : F) + rho 6960 + rho 6961⟩ := by
      constructor
      · refine ⟨(rho 6956 + (rho 4578) - (0)), rho 6957, ?_, ?_, ?_⟩
        · linear_combination r6948 - (rho 35) * order_cast_zero
        · linear_combination r6949
        · linear_combination r6950
      · refine ⟨(rho 6959 + (rho 4579) - ((1 : F))), rho 6960, ?_, ?_, ?_⟩
        · linear_combination r6951 - (rho 35) * order_cast_zero
        · linear_combination r6952
        · linear_combination r6953
    simpa [base, twice, triple, digit107] using hraw
  have hhigh : rho 36 =
      Bool.toZMod bits[34]! := by
    simpa only using rho_bit_of_map rho bits hbits 34 (by decide +kernel)
  have hlow : rho 35 =
      Bool.toZMod bits[33]! := by
    simpa only using rho_bit_of_map rho bits hbits 33 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[34]! bits[33]! (base rho) (twice rho) (triple rho)
    (digit107 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit107 rho) := by
    rw [hdigit]
    cases bits[34]! <;> cases bits[33]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted107 rho) (digit107 rho) (acc108 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 6954) (rho 6955) (rho 6957 + rho 6958) ((1 : F) + rho 6960 + rho 6961)
      (rho 6962) (rho 6963) (rho 6964) (rho 6965) (rho 6966) (rho 6967)
      (by simpa [shifted107] using hshift2On)
      (by simpa [digit107] using hdigitOn)
      (by linear_combination r6954)
      (by linear_combination r6955)
      (by linear_combination r6956)
      (by linear_combination r6957)
      (by linear_combination r6958)
      (by linear_combination r6959)
    simpa [shifted107, digit107, acc108] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc108 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted107 rho) (digit107 rho) (acc108 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted107 rho) (digit107 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 36) (rho 35)
      (base rho) (twice rho) (triple rho) (acc107 rho)
      (acc108 rho) :=
    ⟨shiftOnce107 rho, shifted107 rho, digit107 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
