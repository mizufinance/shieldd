import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bIssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window12 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc12 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[224]! (scalarBits rho)[223]!
        (base rho) (twice rho) (triple rho) (acc12 rho)
        (acc13 rho) ∧
      EdwardsBridge.onCurve (acc13 rho) := by
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
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4848 at r4848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4849 at r4849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4850 at r4850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4851 at r4851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4852 at r4852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4853 at r4853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4854 at r4854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4855 at r4855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4856 at r4856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4857 at r4857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4858 at r4858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4859 at r4859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4860 at r4860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4861 at r4861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4862 at r4862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4863 at r4863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4864 at r4864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4865 at r4865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4866 at r4866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4867 at r4867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4868 at r4868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4869 at r4869
  have hshift1 : EdwardsBridge.doubleSpec (acc12 rho) (shiftOnce12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4854) (rho 4855) (rho 4856) (rho 4857) (rho 4858) (rho 4859) (rho 4860)
      (by simpa [acc12] using hacc)
      (by linear_combination r4848)
      (by linear_combination r4849)
      (by linear_combination r4850)
      (by linear_combination r4851)
      (by linear_combination r4852)
    simpa [acc12, shiftOnce12] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc12 rho) (shiftOnce12 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc12 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce12 rho) (shifted12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4859) (rho 4860) (rho 4861) (rho 4862) (rho 4863) (rho 4864) (rho 4865)
      (by simpa [shiftOnce12] using hshift1On)
      (by linear_combination r4853)
      (by linear_combination r4854)
      (by linear_combination r4855)
      (by linear_combination r4856)
      (by linear_combination r4857)
    simpa [shiftOnce12, shifted12] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce12 rho) (shifted12 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce12 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 226) (rho 225)
      (base rho) (twice rho) (triple rho) (digit12 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 226) (rho 225)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4867 + rho 4868, (1 : F) + rho 4870 + rho 4871⟩ := by
      constructor
      · refine ⟨(rho 4866 + (rho 4578) - (0)), rho 4867, ?_, ?_, ?_⟩
        · linear_combination r4858 - (rho 225) * order_cast_zero
        · linear_combination r4859
        · linear_combination r4860
      · refine ⟨(rho 4869 + (rho 4579) - ((1 : F))), rho 4870, ?_, ?_, ?_⟩
        · linear_combination r4861 - (rho 225) * order_cast_zero
        · linear_combination r4862
        · linear_combination r4863
    simpa [base, twice, triple, digit12] using hraw
  have hhigh : rho 226 =
      Bool.toZMod bits[224]! := by
    simpa only using rho_bit_of_map rho bits hbits 224 (by decide +kernel)
  have hlow : rho 225 =
      Bool.toZMod bits[223]! := by
    simpa only using rho_bit_of_map rho bits hbits 223 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[224]! bits[223]! (base rho) (twice rho) (triple rho)
    (digit12 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit12 rho) := by
    rw [hdigit]
    cases bits[224]! <;> cases bits[223]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted12 rho) (digit12 rho) (acc13 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4864) (rho 4865) (rho 4867 + rho 4868) ((1 : F) + rho 4870 + rho 4871)
      (rho 4872) (rho 4873) (rho 4874) (rho 4875) (rho 4876) (rho 4877)
      (by simpa [shifted12] using hshift2On)
      (by simpa [digit12] using hdigitOn)
      (by linear_combination r4864)
      (by linear_combination r4865)
      (by linear_combination r4866)
      (by linear_combination r4867)
      (by linear_combination r4868)
      (by linear_combination r4869)
    simpa [shifted12, digit12, acc13] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc13 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted12 rho) (digit12 rho) (acc13 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted12 rho) (digit12 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 226) (rho 225)
      (base rho) (twice rho) (triple rho) (acc12 rho)
      (acc13 rho) :=
    ⟨shiftOnce12 rho, shifted12 rho, digit12 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window13 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc13 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[222]! (scalarBits rho)[221]!
        (base rho) (twice rho) (triple rho) (acc13 rho)
        (acc14 rho) ∧
      EdwardsBridge.onCurve (acc14 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4870 at r4870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4871 at r4871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4872 at r4872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4873 at r4873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4874 at r4874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4875 at r4875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4876 at r4876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4877 at r4877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4878 at r4878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4879 at r4879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4880 at r4880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4881 at r4881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4882 at r4882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4883 at r4883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4884 at r4884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4885 at r4885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4886 at r4886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4887 at r4887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4888 at r4888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4889 at r4889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4890 at r4890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4891 at r4891
  have hshift1 : EdwardsBridge.doubleSpec (acc13 rho) (shiftOnce13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4876) (rho 4877) (rho 4878) (rho 4879) (rho 4880) (rho 4881) (rho 4882)
      (by simpa [acc13] using hacc)
      (by linear_combination r4870)
      (by linear_combination r4871)
      (by linear_combination r4872)
      (by linear_combination r4873)
      (by linear_combination r4874)
    simpa [acc13, shiftOnce13] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc13 rho) (shiftOnce13 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc13 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce13 rho) (shifted13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4881) (rho 4882) (rho 4883) (rho 4884) (rho 4885) (rho 4886) (rho 4887)
      (by simpa [shiftOnce13] using hshift1On)
      (by linear_combination r4875)
      (by linear_combination r4876)
      (by linear_combination r4877)
      (by linear_combination r4878)
      (by linear_combination r4879)
    simpa [shiftOnce13, shifted13] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce13 rho) (shifted13 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce13 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 224) (rho 223)
      (base rho) (twice rho) (triple rho) (digit13 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 224) (rho 223)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4889 + rho 4890, (1 : F) + rho 4892 + rho 4893⟩ := by
      constructor
      · refine ⟨(rho 4888 + (rho 4578) - (0)), rho 4889, ?_, ?_, ?_⟩
        · linear_combination r4880 - (rho 223) * order_cast_zero
        · linear_combination r4881
        · linear_combination r4882
      · refine ⟨(rho 4891 + (rho 4579) - ((1 : F))), rho 4892, ?_, ?_, ?_⟩
        · linear_combination r4883 - (rho 223) * order_cast_zero
        · linear_combination r4884
        · linear_combination r4885
    simpa [base, twice, triple, digit13] using hraw
  have hhigh : rho 224 =
      Bool.toZMod bits[222]! := by
    simpa only using rho_bit_of_map rho bits hbits 222 (by decide +kernel)
  have hlow : rho 223 =
      Bool.toZMod bits[221]! := by
    simpa only using rho_bit_of_map rho bits hbits 221 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[222]! bits[221]! (base rho) (twice rho) (triple rho)
    (digit13 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit13 rho) := by
    rw [hdigit]
    cases bits[222]! <;> cases bits[221]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted13 rho) (digit13 rho) (acc14 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4886) (rho 4887) (rho 4889 + rho 4890) ((1 : F) + rho 4892 + rho 4893)
      (rho 4894) (rho 4895) (rho 4896) (rho 4897) (rho 4898) (rho 4899)
      (by simpa [shifted13] using hshift2On)
      (by simpa [digit13] using hdigitOn)
      (by linear_combination r4886)
      (by linear_combination r4887)
      (by linear_combination r4888)
      (by linear_combination r4889)
      (by linear_combination r4890)
      (by linear_combination r4891)
    simpa [shifted13, digit13, acc14] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc14 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted13 rho) (digit13 rho) (acc14 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted13 rho) (digit13 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 224) (rho 223)
      (base rho) (twice rho) (triple rho) (acc13 rho)
      (acc14 rho) :=
    ⟨shiftOnce13 rho, shifted13 rho, digit13 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc14 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[220]! (scalarBits rho)[219]!
        (base rho) (twice rho) (triple rho) (acc14 rho)
        (acc15 rho) ∧
      EdwardsBridge.onCurve (acc15 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4892 at r4892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4893 at r4893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4894 at r4894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4895 at r4895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4896 at r4896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4897 at r4897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4898 at r4898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4899 at r4899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4900 at r4900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4901 at r4901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4902 at r4902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4903 at r4903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4904 at r4904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4905 at r4905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4906 at r4906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4907 at r4907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4908 at r4908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4909 at r4909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4910 at r4910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4911 at r4911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4912 at r4912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4913 at r4913
  have hshift1 : EdwardsBridge.doubleSpec (acc14 rho) (shiftOnce14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4898) (rho 4899) (rho 4900) (rho 4901) (rho 4902) (rho 4903) (rho 4904)
      (by simpa [acc14] using hacc)
      (by linear_combination r4892)
      (by linear_combination r4893)
      (by linear_combination r4894)
      (by linear_combination r4895)
      (by linear_combination r4896)
    simpa [acc14, shiftOnce14] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc14 rho) (shiftOnce14 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc14 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce14 rho) (shifted14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4903) (rho 4904) (rho 4905) (rho 4906) (rho 4907) (rho 4908) (rho 4909)
      (by simpa [shiftOnce14] using hshift1On)
      (by linear_combination r4897)
      (by linear_combination r4898)
      (by linear_combination r4899)
      (by linear_combination r4900)
      (by linear_combination r4901)
    simpa [shiftOnce14, shifted14] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce14 rho) (shifted14 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce14 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 222) (rho 221)
      (base rho) (twice rho) (triple rho) (digit14 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 222) (rho 221)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4911 + rho 4912, (1 : F) + rho 4914 + rho 4915⟩ := by
      constructor
      · refine ⟨(rho 4910 + (rho 4578) - (0)), rho 4911, ?_, ?_, ?_⟩
        · linear_combination r4902 - (rho 221) * order_cast_zero
        · linear_combination r4903
        · linear_combination r4904
      · refine ⟨(rho 4913 + (rho 4579) - ((1 : F))), rho 4914, ?_, ?_, ?_⟩
        · linear_combination r4905 - (rho 221) * order_cast_zero
        · linear_combination r4906
        · linear_combination r4907
    simpa [base, twice, triple, digit14] using hraw
  have hhigh : rho 222 =
      Bool.toZMod bits[220]! := by
    simpa only using rho_bit_of_map rho bits hbits 220 (by decide +kernel)
  have hlow : rho 221 =
      Bool.toZMod bits[219]! := by
    simpa only using rho_bit_of_map rho bits hbits 219 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[220]! bits[219]! (base rho) (twice rho) (triple rho)
    (digit14 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit14 rho) := by
    rw [hdigit]
    cases bits[220]! <;> cases bits[219]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted14 rho) (digit14 rho) (acc15 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4908) (rho 4909) (rho 4911 + rho 4912) ((1 : F) + rho 4914 + rho 4915)
      (rho 4916) (rho 4917) (rho 4918) (rho 4919) (rho 4920) (rho 4921)
      (by simpa [shifted14] using hshift2On)
      (by simpa [digit14] using hdigitOn)
      (by linear_combination r4908)
      (by linear_combination r4909)
      (by linear_combination r4910)
      (by linear_combination r4911)
      (by linear_combination r4912)
      (by linear_combination r4913)
    simpa [shifted14, digit14, acc15] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc15 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted14 rho) (digit14 rho) (acc15 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted14 rho) (digit14 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 222) (rho 221)
      (base rho) (twice rho) (triple rho) (acc14 rho)
      (acc15 rho) :=
    ⟨shiftOnce14 rho, shifted14 rho, digit14 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window15 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc15 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[218]! (scalarBits rho)[217]!
        (base rho) (twice rho) (triple rho) (acc15 rho)
        (acc16 rho) ∧
      EdwardsBridge.onCurve (acc16 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4914 at r4914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4915 at r4915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4916 at r4916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4917 at r4917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4918 at r4918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4919 at r4919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4920 at r4920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4921 at r4921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4922 at r4922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4923 at r4923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4924 at r4924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4925 at r4925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4926 at r4926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4927 at r4927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4928 at r4928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4929 at r4929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4930 at r4930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4931 at r4931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4932 at r4932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4933 at r4933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4934 at r4934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4935 at r4935
  have hshift1 : EdwardsBridge.doubleSpec (acc15 rho) (shiftOnce15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4920) (rho 4921) (rho 4922) (rho 4923) (rho 4924) (rho 4925) (rho 4926)
      (by simpa [acc15] using hacc)
      (by linear_combination r4914)
      (by linear_combination r4915)
      (by linear_combination r4916)
      (by linear_combination r4917)
      (by linear_combination r4918)
    simpa [acc15, shiftOnce15] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc15 rho) (shiftOnce15 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc15 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce15 rho) (shifted15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4925) (rho 4926) (rho 4927) (rho 4928) (rho 4929) (rho 4930) (rho 4931)
      (by simpa [shiftOnce15] using hshift1On)
      (by linear_combination r4919)
      (by linear_combination r4920)
      (by linear_combination r4921)
      (by linear_combination r4922)
      (by linear_combination r4923)
    simpa [shiftOnce15, shifted15] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce15 rho) (shifted15 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce15 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 220) (rho 219)
      (base rho) (twice rho) (triple rho) (digit15 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 220) (rho 219)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4933 + rho 4934, (1 : F) + rho 4936 + rho 4937⟩ := by
      constructor
      · refine ⟨(rho 4932 + (rho 4578) - (0)), rho 4933, ?_, ?_, ?_⟩
        · linear_combination r4924 - (rho 219) * order_cast_zero
        · linear_combination r4925
        · linear_combination r4926
      · refine ⟨(rho 4935 + (rho 4579) - ((1 : F))), rho 4936, ?_, ?_, ?_⟩
        · linear_combination r4927 - (rho 219) * order_cast_zero
        · linear_combination r4928
        · linear_combination r4929
    simpa [base, twice, triple, digit15] using hraw
  have hhigh : rho 220 =
      Bool.toZMod bits[218]! := by
    simpa only using rho_bit_of_map rho bits hbits 218 (by decide +kernel)
  have hlow : rho 219 =
      Bool.toZMod bits[217]! := by
    simpa only using rho_bit_of_map rho bits hbits 217 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[218]! bits[217]! (base rho) (twice rho) (triple rho)
    (digit15 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit15 rho) := by
    rw [hdigit]
    cases bits[218]! <;> cases bits[217]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted15 rho) (digit15 rho) (acc16 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4930) (rho 4931) (rho 4933 + rho 4934) ((1 : F) + rho 4936 + rho 4937)
      (rho 4938) (rho 4939) (rho 4940) (rho 4941) (rho 4942) (rho 4943)
      (by simpa [shifted15] using hshift2On)
      (by simpa [digit15] using hdigitOn)
      (by linear_combination r4930)
      (by linear_combination r4931)
      (by linear_combination r4932)
      (by linear_combination r4933)
      (by linear_combination r4934)
      (by linear_combination r4935)
    simpa [shifted15, digit15, acc16] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc16 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted15 rho) (digit15 rho) (acc16 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted15 rho) (digit15 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 220) (rho 219)
      (base rho) (twice rho) (triple rho) (acc15 rho)
      (acc16 rho) :=
    ⟨shiftOnce15 rho, shifted15 rho, digit15 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window16 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc16 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[216]! (scalarBits rho)[215]!
        (base rho) (twice rho) (triple rho) (acc16 rho)
        (acc17 rho) ∧
      EdwardsBridge.onCurve (acc17 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4936 at r4936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4937 at r4937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4938 at r4938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4939 at r4939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4940 at r4940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4941 at r4941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4942 at r4942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4943 at r4943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4944 at r4944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4945 at r4945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4946 at r4946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4947 at r4947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4948 at r4948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4949 at r4949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4950 at r4950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4951 at r4951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4952 at r4952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4953 at r4953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4954 at r4954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4955 at r4955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4956 at r4956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4957 at r4957
  have hshift1 : EdwardsBridge.doubleSpec (acc16 rho) (shiftOnce16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4942) (rho 4943) (rho 4944) (rho 4945) (rho 4946) (rho 4947) (rho 4948)
      (by simpa [acc16] using hacc)
      (by linear_combination r4936)
      (by linear_combination r4937)
      (by linear_combination r4938)
      (by linear_combination r4939)
      (by linear_combination r4940)
    simpa [acc16, shiftOnce16] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc16 rho) (shiftOnce16 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc16 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce16 rho) (shifted16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4947) (rho 4948) (rho 4949) (rho 4950) (rho 4951) (rho 4952) (rho 4953)
      (by simpa [shiftOnce16] using hshift1On)
      (by linear_combination r4941)
      (by linear_combination r4942)
      (by linear_combination r4943)
      (by linear_combination r4944)
      (by linear_combination r4945)
    simpa [shiftOnce16, shifted16] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce16 rho) (shifted16 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce16 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 218) (rho 217)
      (base rho) (twice rho) (triple rho) (digit16 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 218) (rho 217)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4955 + rho 4956, (1 : F) + rho 4958 + rho 4959⟩ := by
      constructor
      · refine ⟨(rho 4954 + (rho 4578) - (0)), rho 4955, ?_, ?_, ?_⟩
        · linear_combination r4946 - (rho 217) * order_cast_zero
        · linear_combination r4947
        · linear_combination r4948
      · refine ⟨(rho 4957 + (rho 4579) - ((1 : F))), rho 4958, ?_, ?_, ?_⟩
        · linear_combination r4949 - (rho 217) * order_cast_zero
        · linear_combination r4950
        · linear_combination r4951
    simpa [base, twice, triple, digit16] using hraw
  have hhigh : rho 218 =
      Bool.toZMod bits[216]! := by
    simpa only using rho_bit_of_map rho bits hbits 216 (by decide +kernel)
  have hlow : rho 217 =
      Bool.toZMod bits[215]! := by
    simpa only using rho_bit_of_map rho bits hbits 215 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[216]! bits[215]! (base rho) (twice rho) (triple rho)
    (digit16 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit16 rho) := by
    rw [hdigit]
    cases bits[216]! <;> cases bits[215]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted16 rho) (digit16 rho) (acc17 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4952) (rho 4953) (rho 4955 + rho 4956) ((1 : F) + rho 4958 + rho 4959)
      (rho 4960) (rho 4961) (rho 4962) (rho 4963) (rho 4964) (rho 4965)
      (by simpa [shifted16] using hshift2On)
      (by simpa [digit16] using hdigitOn)
      (by linear_combination r4952)
      (by linear_combination r4953)
      (by linear_combination r4954)
      (by linear_combination r4955)
      (by linear_combination r4956)
      (by linear_combination r4957)
    simpa [shifted16, digit16, acc17] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc17 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted16 rho) (digit16 rho) (acc17 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted16 rho) (digit16 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 218) (rho 217)
      (base rho) (twice rho) (triple rho) (acc16 rho)
      (acc17 rho) :=
    ⟨shiftOnce16 rho, shifted16 rho, digit16 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window17 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc17 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[214]! (scalarBits rho)[213]!
        (base rho) (twice rho) (triple rho) (acc17 rho)
        (acc18 rho) ∧
      EdwardsBridge.onCurve (acc18 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4958, r4959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4958 at r4958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4959 at r4959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4960 at r4960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4961 at r4961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4962 at r4962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4963 at r4963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4964 at r4964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4965 at r4965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4966 at r4966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4967 at r4967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4968 at r4968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4969 at r4969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4970 at r4970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4971 at r4971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4972 at r4972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4973 at r4973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4974 at r4974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4975 at r4975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4976 at r4976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4977 at r4977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4978 at r4978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow4979 at r4979
  have hshift1 : EdwardsBridge.doubleSpec (acc17 rho) (shiftOnce17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4964) (rho 4965) (rho 4966) (rho 4967) (rho 4968) (rho 4969) (rho 4970)
      (by simpa [acc17] using hacc)
      (by linear_combination r4958)
      (by linear_combination r4959)
      (by linear_combination r4960)
      (by linear_combination r4961)
      (by linear_combination r4962)
    simpa [acc17, shiftOnce17] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc17 rho) (shiftOnce17 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc17 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce17 rho) (shifted17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4969) (rho 4970) (rho 4971) (rho 4972) (rho 4973) (rho 4974) (rho 4975)
      (by simpa [shiftOnce17] using hshift1On)
      (by linear_combination r4963)
      (by linear_combination r4964)
      (by linear_combination r4965)
      (by linear_combination r4966)
      (by linear_combination r4967)
    simpa [shiftOnce17, shifted17] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce17 rho) (shifted17 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce17 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 216) (rho 215)
      (base rho) (twice rho) (triple rho) (digit17 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 216) (rho 215)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4573, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4574⟩ ⟨rho 4578, rho 4579⟩
        ⟨rho 4584, rho 4585⟩ ⟨rho 4977 + rho 4978, (1 : F) + rho 4980 + rho 4981⟩ := by
      constructor
      · refine ⟨(rho 4976 + (rho 4578) - (0)), rho 4977, ?_, ?_, ?_⟩
        · linear_combination r4968 - (rho 215) * order_cast_zero
        · linear_combination r4969
        · linear_combination r4970
      · refine ⟨(rho 4979 + (rho 4579) - ((1 : F))), rho 4980, ?_, ?_, ?_⟩
        · linear_combination r4971 - (rho 215) * order_cast_zero
        · linear_combination r4972
        · linear_combination r4973
    simpa [base, twice, triple, digit17] using hraw
  have hhigh : rho 216 =
      Bool.toZMod bits[214]! := by
    simpa only using rho_bit_of_map rho bits hbits 214 (by decide +kernel)
  have hlow : rho 215 =
      Bool.toZMod bits[213]! := by
    simpa only using rho_bit_of_map rho bits hbits 213 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[214]! bits[213]! (base rho) (twice rho) (triple rho)
    (digit17 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit17 rho) := by
    rw [hdigit]
    cases bits[214]! <;> cases bits[213]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted17 rho) (digit17 rho) (acc18 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4974) (rho 4975) (rho 4977 + rho 4978) ((1 : F) + rho 4980 + rho 4981)
      (rho 4982) (rho 4983) (rho 4984) (rho 4985) (rho 4986) (rho 4987)
      (by simpa [shifted17] using hshift2On)
      (by simpa [digit17] using hdigitOn)
      (by linear_combination r4974)
      (by linear_combination r4975)
      (by linear_combination r4976)
      (by linear_combination r4977)
      (by linear_combination r4978)
      (by linear_combination r4979)
    simpa [shifted17, digit17, acc18] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc18 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted17 rho) (digit17 rho) (acc18 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted17 rho) (digit17 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 216) (rho 215)
      (base rho) (twice rho) (triple rho) (acc17 rho)
      (acc18 rho) :=
    ⟨shiftOnce17 rho, shifted17 rho, digit17 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.IssuerWindowSupport
