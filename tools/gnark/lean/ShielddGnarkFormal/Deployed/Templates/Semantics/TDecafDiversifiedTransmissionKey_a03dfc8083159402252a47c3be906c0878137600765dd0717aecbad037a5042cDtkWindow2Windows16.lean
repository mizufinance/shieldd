import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window96 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4848 at r4848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4849 at r4849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4850 at r4850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4851 at r4851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4852 at r4852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4853 at r4853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4854 at r4854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4855 at r4855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4856 at r4856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4857 at r4857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4858 at r4858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4859 at r4859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4860 at r4860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4861 at r4861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4862 at r4862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4863 at r4863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4864 at r4864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4865 at r4865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4866 at r4866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4867 at r4867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4868 at r4868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4869 at r4869
  have hshift1 : EdwardsBridge.doubleSpec (acc96 rho) (shiftOnce96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4340) (rho 4341) (rho 4342) (rho 4343) (rho 4344) (rho 4345) (rho 4346)
      (by simpa [acc96] using hacc)
      (by linear_combination r4848)
      (by linear_combination r4849)
      (by linear_combination r4850)
      (by linear_combination r4851)
      (by linear_combination r4852)
    simpa [acc96, shiftOnce96] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc96 rho) (shiftOnce96 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc96 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce96 rho) (shifted96 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4345) (rho 4346) (rho 4347) (rho 4348) (rho 4349) (rho 4350) (rho 4351)
      (by simpa [shiftOnce96] using hshift1On)
      (by linear_combination r4853)
      (by linear_combination r4854)
      (by linear_combination r4855)
      (by linear_combination r4856)
      (by linear_combination r4857)
    simpa [shiftOnce96, shifted96] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted96 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce96 rho) (shifted96 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce96 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1039) (rho 1038)
      (base rho) (twice rho) (triple rho) (digit96 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1039) (rho 1038)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4353 + rho 4354, (1 : F) + rho 4356 + rho 4357⟩ := by
      constructor
      · refine ⟨(rho 4352 + (rho 2216) - (0)), rho 4353, ?_, ?_, ?_⟩
        · linear_combination r4858
        · linear_combination r4859
        · linear_combination r4860
      · refine ⟨(rho 4355 + (rho 2217) - ((1 : F))), rho 4356, ?_, ?_, ?_⟩
        · linear_combination r4861
        · linear_combination r4862
        · linear_combination r4863
    simpa [base, twice, triple, digit96] using hraw
  have hhigh : rho 1039 =
      Bool.toZMod bits[56]! := by
    simpa only using rho_bit_of_map rho bits hbits 56 (by decide +kernel)
  have hlow : rho 1038 =
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
      (rho 4350) (rho 4351) (rho 4353 + rho 4354) ((1 : F) + rho 4356 + rho 4357)
      (rho 4358) (rho 4359) (rho 4360) (rho 4361) (rho 4362) (rho 4363)
      (by simpa [shifted96] using hshift2On)
      (by simpa [digit96] using hdigitOn)
      (by linear_combination r4864)
      (by linear_combination r4865)
      (by linear_combination r4866)
      (by linear_combination r4867)
      (by linear_combination r4868)
      (by linear_combination r4869)
    simpa [shifted96, digit96, acc97] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc97 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted96 rho) (digit96 rho) (acc97 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted96 rho) (digit96 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1039) (rho 1038)
      (base rho) (twice rho) (triple rho) (acc96 rho)
      (acc97 rho) :=
    ⟨shiftOnce96 rho, shifted96 rho, digit96 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window97 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4870 at r4870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4871 at r4871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4872 at r4872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4873 at r4873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4874 at r4874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4875 at r4875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4876 at r4876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4877 at r4877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4878 at r4878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4879 at r4879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4880 at r4880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4881 at r4881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4882 at r4882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4883 at r4883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4884 at r4884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4885 at r4885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4886 at r4886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4887 at r4887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4888 at r4888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4889 at r4889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4890 at r4890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4891 at r4891
  have hshift1 : EdwardsBridge.doubleSpec (acc97 rho) (shiftOnce97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4362) (rho 4363) (rho 4364) (rho 4365) (rho 4366) (rho 4367) (rho 4368)
      (by simpa [acc97] using hacc)
      (by linear_combination r4870)
      (by linear_combination r4871)
      (by linear_combination r4872)
      (by linear_combination r4873)
      (by linear_combination r4874)
    simpa [acc97, shiftOnce97] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc97 rho) (shiftOnce97 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc97 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce97 rho) (shifted97 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4367) (rho 4368) (rho 4369) (rho 4370) (rho 4371) (rho 4372) (rho 4373)
      (by simpa [shiftOnce97] using hshift1On)
      (by linear_combination r4875)
      (by linear_combination r4876)
      (by linear_combination r4877)
      (by linear_combination r4878)
      (by linear_combination r4879)
    simpa [shiftOnce97, shifted97] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted97 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce97 rho) (shifted97 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce97 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1037) (rho 1036)
      (base rho) (twice rho) (triple rho) (digit97 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1037) (rho 1036)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4375 + rho 4376, (1 : F) + rho 4378 + rho 4379⟩ := by
      constructor
      · refine ⟨(rho 4374 + (rho 2216) - (0)), rho 4375, ?_, ?_, ?_⟩
        · linear_combination r4880
        · linear_combination r4881
        · linear_combination r4882
      · refine ⟨(rho 4377 + (rho 2217) - ((1 : F))), rho 4378, ?_, ?_, ?_⟩
        · linear_combination r4883
        · linear_combination r4884
        · linear_combination r4885
    simpa [base, twice, triple, digit97] using hraw
  have hhigh : rho 1037 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 1036 =
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
      (rho 4372) (rho 4373) (rho 4375 + rho 4376) ((1 : F) + rho 4378 + rho 4379)
      (rho 4380) (rho 4381) (rho 4382) (rho 4383) (rho 4384) (rho 4385)
      (by simpa [shifted97] using hshift2On)
      (by simpa [digit97] using hdigitOn)
      (by linear_combination r4886)
      (by linear_combination r4887)
      (by linear_combination r4888)
      (by linear_combination r4889)
      (by linear_combination r4890)
      (by linear_combination r4891)
    simpa [shifted97, digit97, acc98] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc98 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted97 rho) (digit97 rho) (acc98 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted97 rho) (digit97 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1037) (rho 1036)
      (base rho) (twice rho) (triple rho) (acc97 rho)
      (acc98 rho) :=
    ⟨shiftOnce97 rho, shifted97 rho, digit97 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window98 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4892 at r4892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4893 at r4893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4894 at r4894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4895 at r4895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4896 at r4896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4897 at r4897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4898 at r4898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4899 at r4899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4900 at r4900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4901 at r4901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4902 at r4902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4903 at r4903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4904 at r4904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4905 at r4905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4906 at r4906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4907 at r4907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4908 at r4908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4909 at r4909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4910 at r4910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4911 at r4911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4912 at r4912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4913 at r4913
  have hshift1 : EdwardsBridge.doubleSpec (acc98 rho) (shiftOnce98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4384) (rho 4385) (rho 4386) (rho 4387) (rho 4388) (rho 4389) (rho 4390)
      (by simpa [acc98] using hacc)
      (by linear_combination r4892)
      (by linear_combination r4893)
      (by linear_combination r4894)
      (by linear_combination r4895)
      (by linear_combination r4896)
    simpa [acc98, shiftOnce98] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc98 rho) (shiftOnce98 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc98 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce98 rho) (shifted98 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4389) (rho 4390) (rho 4391) (rho 4392) (rho 4393) (rho 4394) (rho 4395)
      (by simpa [shiftOnce98] using hshift1On)
      (by linear_combination r4897)
      (by linear_combination r4898)
      (by linear_combination r4899)
      (by linear_combination r4900)
      (by linear_combination r4901)
    simpa [shiftOnce98, shifted98] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted98 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce98 rho) (shifted98 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce98 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1035) (rho 1034)
      (base rho) (twice rho) (triple rho) (digit98 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1035) (rho 1034)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4397 + rho 4398, (1 : F) + rho 4400 + rho 4401⟩ := by
      constructor
      · refine ⟨(rho 4396 + (rho 2216) - (0)), rho 4397, ?_, ?_, ?_⟩
        · linear_combination r4902
        · linear_combination r4903
        · linear_combination r4904
      · refine ⟨(rho 4399 + (rho 2217) - ((1 : F))), rho 4400, ?_, ?_, ?_⟩
        · linear_combination r4905
        · linear_combination r4906
        · linear_combination r4907
    simpa [base, twice, triple, digit98] using hraw
  have hhigh : rho 1035 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 1034 =
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
      (rho 4394) (rho 4395) (rho 4397 + rho 4398) ((1 : F) + rho 4400 + rho 4401)
      (rho 4402) (rho 4403) (rho 4404) (rho 4405) (rho 4406) (rho 4407)
      (by simpa [shifted98] using hshift2On)
      (by simpa [digit98] using hdigitOn)
      (by linear_combination r4908)
      (by linear_combination r4909)
      (by linear_combination r4910)
      (by linear_combination r4911)
      (by linear_combination r4912)
      (by linear_combination r4913)
    simpa [shifted98, digit98, acc99] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc99 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted98 rho) (digit98 rho) (acc99 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted98 rho) (digit98 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1035) (rho 1034)
      (base rho) (twice rho) (triple rho) (acc98 rho)
      (acc99 rho) :=
    ⟨shiftOnce98 rho, shifted98 rho, digit98 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window99 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4914 at r4914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4915 at r4915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4916 at r4916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4917 at r4917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4918 at r4918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4919 at r4919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4920 at r4920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4921 at r4921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4922 at r4922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4923 at r4923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4924 at r4924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4925 at r4925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4926 at r4926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4927 at r4927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4928 at r4928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4929 at r4929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4930 at r4930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4931 at r4931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4932 at r4932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4933 at r4933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4934 at r4934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4935 at r4935
  have hshift1 : EdwardsBridge.doubleSpec (acc99 rho) (shiftOnce99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4406) (rho 4407) (rho 4408) (rho 4409) (rho 4410) (rho 4411) (rho 4412)
      (by simpa [acc99] using hacc)
      (by linear_combination r4914)
      (by linear_combination r4915)
      (by linear_combination r4916)
      (by linear_combination r4917)
      (by linear_combination r4918)
    simpa [acc99, shiftOnce99] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc99 rho) (shiftOnce99 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc99 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce99 rho) (shifted99 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4411) (rho 4412) (rho 4413) (rho 4414) (rho 4415) (rho 4416) (rho 4417)
      (by simpa [shiftOnce99] using hshift1On)
      (by linear_combination r4919)
      (by linear_combination r4920)
      (by linear_combination r4921)
      (by linear_combination r4922)
      (by linear_combination r4923)
    simpa [shiftOnce99, shifted99] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted99 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce99 rho) (shifted99 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce99 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1033) (rho 1032)
      (base rho) (twice rho) (triple rho) (digit99 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1033) (rho 1032)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4419 + rho 4420, (1 : F) + rho 4422 + rho 4423⟩ := by
      constructor
      · refine ⟨(rho 4418 + (rho 2216) - (0)), rho 4419, ?_, ?_, ?_⟩
        · linear_combination r4924
        · linear_combination r4925
        · linear_combination r4926
      · refine ⟨(rho 4421 + (rho 2217) - ((1 : F))), rho 4422, ?_, ?_, ?_⟩
        · linear_combination r4927
        · linear_combination r4928
        · linear_combination r4929
    simpa [base, twice, triple, digit99] using hraw
  have hhigh : rho 1033 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 1032 =
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
      (rho 4416) (rho 4417) (rho 4419 + rho 4420) ((1 : F) + rho 4422 + rho 4423)
      (rho 4424) (rho 4425) (rho 4426) (rho 4427) (rho 4428) (rho 4429)
      (by simpa [shifted99] using hshift2On)
      (by simpa [digit99] using hdigitOn)
      (by linear_combination r4930)
      (by linear_combination r4931)
      (by linear_combination r4932)
      (by linear_combination r4933)
      (by linear_combination r4934)
      (by linear_combination r4935)
    simpa [shifted99, digit99, acc100] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc100 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted99 rho) (digit99 rho) (acc100 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted99 rho) (digit99 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1033) (rho 1032)
      (base rho) (twice rho) (triple rho) (acc99 rho)
      (acc100 rho) :=
    ⟨shiftOnce99 rho, shifted99 rho, digit99 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window100 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4936 at r4936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4937 at r4937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4938 at r4938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4939 at r4939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4940 at r4940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4941 at r4941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4942 at r4942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4943 at r4943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4944 at r4944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4945 at r4945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4946 at r4946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4947 at r4947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4948 at r4948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4949 at r4949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4950 at r4950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4951 at r4951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4952 at r4952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4953 at r4953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4954 at r4954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4955 at r4955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4956 at r4956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4957 at r4957
  have hshift1 : EdwardsBridge.doubleSpec (acc100 rho) (shiftOnce100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4428) (rho 4429) (rho 4430) (rho 4431) (rho 4432) (rho 4433) (rho 4434)
      (by simpa [acc100] using hacc)
      (by linear_combination r4936)
      (by linear_combination r4937)
      (by linear_combination r4938)
      (by linear_combination r4939)
      (by linear_combination r4940)
    simpa [acc100, shiftOnce100] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc100 rho) (shiftOnce100 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc100 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce100 rho) (shifted100 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4433) (rho 4434) (rho 4435) (rho 4436) (rho 4437) (rho 4438) (rho 4439)
      (by simpa [shiftOnce100] using hshift1On)
      (by linear_combination r4941)
      (by linear_combination r4942)
      (by linear_combination r4943)
      (by linear_combination r4944)
      (by linear_combination r4945)
    simpa [shiftOnce100, shifted100] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted100 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce100 rho) (shifted100 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce100 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1031) (rho 1030)
      (base rho) (twice rho) (triple rho) (digit100 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1031) (rho 1030)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4441 + rho 4442, (1 : F) + rho 4444 + rho 4445⟩ := by
      constructor
      · refine ⟨(rho 4440 + (rho 2216) - (0)), rho 4441, ?_, ?_, ?_⟩
        · linear_combination r4946
        · linear_combination r4947
        · linear_combination r4948
      · refine ⟨(rho 4443 + (rho 2217) - ((1 : F))), rho 4444, ?_, ?_, ?_⟩
        · linear_combination r4949
        · linear_combination r4950
        · linear_combination r4951
    simpa [base, twice, triple, digit100] using hraw
  have hhigh : rho 1031 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 1030 =
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
      (rho 4438) (rho 4439) (rho 4441 + rho 4442) ((1 : F) + rho 4444 + rho 4445)
      (rho 4446) (rho 4447) (rho 4448) (rho 4449) (rho 4450) (rho 4451)
      (by simpa [shifted100] using hshift2On)
      (by simpa [digit100] using hdigitOn)
      (by linear_combination r4952)
      (by linear_combination r4953)
      (by linear_combination r4954)
      (by linear_combination r4955)
      (by linear_combination r4956)
      (by linear_combination r4957)
    simpa [shifted100, digit100, acc101] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc101 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted100 rho) (digit100 rho) (acc101 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted100 rho) (digit100 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1031) (rho 1030)
      (base rho) (twice rho) (triple rho) (acc100 rho)
      (acc101 rho) :=
    ⟨shiftOnce100 rho, shifted100 rho, digit100 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window101 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4958, r4959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4958 at r4958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4959 at r4959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4960 at r4960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4961 at r4961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4962 at r4962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4963 at r4963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4964 at r4964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4965 at r4965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4966 at r4966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4967 at r4967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4968 at r4968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4969 at r4969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4970 at r4970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4971 at r4971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4972 at r4972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4973 at r4973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4974 at r4974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4975 at r4975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4976 at r4976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4977 at r4977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4978 at r4978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4979 at r4979
  have hshift1 : EdwardsBridge.doubleSpec (acc101 rho) (shiftOnce101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4450) (rho 4451) (rho 4452) (rho 4453) (rho 4454) (rho 4455) (rho 4456)
      (by simpa [acc101] using hacc)
      (by linear_combination r4958)
      (by linear_combination r4959)
      (by linear_combination r4960)
      (by linear_combination r4961)
      (by linear_combination r4962)
    simpa [acc101, shiftOnce101] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc101 rho) (shiftOnce101 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc101 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce101 rho) (shifted101 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4455) (rho 4456) (rho 4457) (rho 4458) (rho 4459) (rho 4460) (rho 4461)
      (by simpa [shiftOnce101] using hshift1On)
      (by linear_combination r4963)
      (by linear_combination r4964)
      (by linear_combination r4965)
      (by linear_combination r4966)
      (by linear_combination r4967)
    simpa [shiftOnce101, shifted101] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted101 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce101 rho) (shifted101 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce101 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1029) (rho 1028)
      (base rho) (twice rho) (triple rho) (digit101 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1029) (rho 1028)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4463 + rho 4464, (1 : F) + rho 4466 + rho 4467⟩ := by
      constructor
      · refine ⟨(rho 4462 + (rho 2216) - (0)), rho 4463, ?_, ?_, ?_⟩
        · linear_combination r4968
        · linear_combination r4969
        · linear_combination r4970
      · refine ⟨(rho 4465 + (rho 2217) - ((1 : F))), rho 4466, ?_, ?_, ?_⟩
        · linear_combination r4971
        · linear_combination r4972
        · linear_combination r4973
    simpa [base, twice, triple, digit101] using hraw
  have hhigh : rho 1029 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 1028 =
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
      (rho 4460) (rho 4461) (rho 4463 + rho 4464) ((1 : F) + rho 4466 + rho 4467)
      (rho 4468) (rho 4469) (rho 4470) (rho 4471) (rho 4472) (rho 4473)
      (by simpa [shifted101] using hshift2On)
      (by simpa [digit101] using hdigitOn)
      (by linear_combination r4974)
      (by linear_combination r4975)
      (by linear_combination r4976)
      (by linear_combination r4977)
      (by linear_combination r4978)
      (by linear_combination r4979)
    simpa [shifted101, digit101, acc102] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc102 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted101 rho) (digit101 rho) (acc102 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted101 rho) (digit101 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1029) (rho 1028)
      (base rho) (twice rho) (triple rho) (acc101 rho)
      (acc102 rho) :=
    ⟨shiftOnce101 rho, shifted101 rho, digit101 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
